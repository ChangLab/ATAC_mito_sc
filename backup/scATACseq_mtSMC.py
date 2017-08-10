#!/usr/bin/env python
"""
scATAC_mtSMC  pipeline
"""
__author__="Jin Xu"
__email__="xujin937@gmail.com"

from argparse import ArgumentParser
import os,re
import sys
import os.path
import subprocess
import pypiper
import yaml 
from datetime import datetime

# Argument Parsing from yaml file 
# #######################################################################################
parser = ArgumentParser(description='Pipeline')
parser = pypiper.add_pypiper_args(parser, all_args=True)

#Add any pipeline-specific arguments / No additional parameters 
#parser.add_argument('-gs', '--genome-size', default="hs", dest='genomeS',type=str, help='genome size for Macs2')
parser.add_argument('-s', '--stop-at', default="0", dest='stopN',type=int, help='Run the first N commadlines')
args = parser.parse_args()
count_steps = 0 
 # it always paired seqencung for ATACseq
if args.single_or_paired == "paired":
	args.paired_end = True
else:
	args.paired_end = False

# Initialize
pm = pypiper.PipelineManager(name = "scATAC_mtSMC", outfolder = os.path.abspath(os.path.join(args.output_parent, args.sample_name)), args = args)
# Convenience alias 
tools = pm.config.tools
param = pm.config.parameters
res = pm.config.resources

# Set up reference resouce according to genome prefix.
res.ref_genome_fasta = pm.config.resources.ref_pref
res.ref_chrMT_fasta = pm.config.resources.chrM
output = os.path.join(args.output_parent, args.sample_name + "/")
param.outfolder = output

################################################################################
print("Local input file: " + args.input[0]) 
print("Local input file: " + args.input2[0]) 
#ATACseq pipeline

ngstk = pypiper.NGSTk(pm=pm)
raw_folder = os.path.join(param.outfolder, "raw/")
fastq_folder = os.path.join(param.outfolder, "fastq/")

pm.timestamp("### Merge/link and fastq conversion: ")

local_input_files = ngstk.merge_or_link([args.input, args.input2], raw_folder, args.sample_name)
#cmd, out_fastq_pre, unaligned_fastq = ngstk.input_to_fastq(local_input_files, args.sample_name, args.paired_end, fastq_folder)
#pm.run(cmd, unaligned_fastq, 
#	follow=ngstk.check_fastq(local_input_files, unaligned_fastq, args.paired_end))
#pm.clean_add(out_fastq_pre + "*.fastq", conditional=True)
print(local_input_files)

pm.report_result("File_mb", ngstk.get_file_size(local_input_files))
pm.report_result("Read_type", args.single_or_paired)
pm.report_result("Genome", args.genome_assembly)


# Adaptor trimming
pm.timestamp("### Adapter trimming: ")
trimmed_fastq= output + args.sample_name + "_R1_trimmed.fq"
trimmed_fastq_R2= output + args.sample_name + "_R2_trimmed.fq"
cmd = tools.java +" -Xmx" + str(pm.mem) +" -jar " + tools.trimmo + " PE " + " -threads " + str(pm.cores) + " "
cmd += local_input_files[0] + " "
cmd += local_input_files[1] + " " 
cmd += trimmed_fastq + " "
cmd += output + args.sample_name + "_R1_unpaired.fq "
cmd += trimmed_fastq_R2 + " "
cmd += output +args.sample_name + "_R2_unpaired.fq "
#cmd +=  "ILLUMINACLIP:"+ paths.adaptor + ":2:30:10:LEADING:3TRAILING:3SLIDINGWINDOW:4:15MINLEN:36" 
cmd +=  "ILLUMINACLIP:"+ res.adaptor + ":2:30:10" 
#def check_trim():
#n_trim = float(myngstk.count_reads(trimmed_fastq, args.paired_end))
#        rr = float(pm.get_stat("Raw_reads"))
#        pm.report_result("Trimmed_reads", n_trim)
#        pm.report_result("Trim_loss_rate", round((rr - n_trim) * 100 / rr, 2))
pm.run(cmd, trimmed_fastq)
pm.clean_add(output + args.sample_name + "*.fq", conditional=True)

# End of Adaptor trimming 

# bwa mapping to whole genome --step1 
map_folder = os.path.join(param.outfolder, "Mapping_" + args.genome_assembly)
ngstk.make_dir(map_folder)
sai_R1 = os.path.join(map_folder , args.sample_name +  "_R1.sai")
sai_R2 = os.path.join(map_folder ,  args.sample_name + "_R2.sai")
map_sam = os.path.join(map_folder , args.sample_name + ".sam" )
cmd = tools.bwa + " aln " + " -t  " + str(pm.cores) + " "
cmd += res.ref_genome_fasta + " "
cmd += trimmed_fastq + " "
cmd += "-f " + sai_R1
pm.run(cmd,sai_R1)
cmd2 = tools.bwa + " aln " + " -t " + str(pm.cores) + " " 
cmd2 += res.ref_genome_fasta + " "
cmd2 += trimmed_fastq_R2 + " "
cmd2 += "-f " + sai_R2
pm.run(cmd2,sai_R2)

tag = "@RG\\tID:" + param.bwa.group + "\\tSM:" + args.sample_name + "\\tPL:" + param.bwa.platform
cmd3 = tools.bwa + " sampe -r " + "\"" + tag + "\" " + res.ref_genome_fasta + " " 
cmd3 += sai_R1 + " " +sai_R2 + " "
cmd3 += trimmed_fastq + " " + trimmed_fastq_R2 + " "
cmd3 += "-f " +  map_sam 
pm.run(cmd3,map_sam) 

count_steps += 1
if count_steps == args.stopN:
        print("pipeline stop at step")
        print(args.stopN)
        pm.stop_pipeline()
	exit()

# sort bam --step2
map_bam = os.path.join(map_folder ,  args.sample_name + ".bam" )
cmd = "java -Xmx4g -jar " + tools.picard  + " SortSam " + "SORT_ORDER=coordinate " 
cmd += "CREATE_INDEX=true" + " "
cmd += "VALIDATION_STRINGENCY=SILENT"  + " "
cmd += "INPUT=" + map_sam + " "
cmd += "OUTPUT=" + map_bam 
pm.run(cmd,map_bam)

count_steps += 1
if count_steps == args.stopN:
        print("pipeline stop at step")
        print(args.stopN)
        pm.stop_pipeline()
	exit()

# rmdup --step3
rmdup_bam = os.path.join(map_folder , args.sample_name + ".rmdup.bam")
metrics = os.path.join(map_folder, args.sample_name + ".metrics")
cmd = "java -Xmx4g -jar " + tools.picard + " MarkDuplicates" + " "
cmd += "CREATE_INDEX=true" + " "
cmd += "ASSUME_SORTED=true" + " "
cmd += "VALIDATION_STRINGENCY=SILENT" + " "
cmd += "REMOVE_DUPLICATES=true" + " "
cmd += "INPUT=" + map_bam + " "
cmd += "OUTPUT=" + rmdup_bam + " "
cmd += "METRICS_FILE="  + metrics
pm.run(cmd, rmdup_bam) 

count_steps += 1
if count_steps == args.stopN:
        print("pipeline stop at step")
        print(args.stopN)
        pm.stop_pipeline()
	exit()
# merge and call indel together using outside script. -step 4 , this step finished outside the pipeline

# using indel file to realigne and recal Quality  --step4
print("The next step after stop")

# make target interval
# realig Indel regions 
#	call Indel first 
# make new head for bam file, in order to process only on chrMT 
#new_head = os.path.join(map_folder, args.sample_name + ".new_head")
#cmd = tools.samtools  + " view -H "
#cmd += rmdup_bam + " | " 
#cmd += "sed \'2,25d\' " + " | "
#cmd += "sed \'3,61d\' " + ">" + new_head
#pm.run(cmd,new_hed) 
#new_bam = os.path.join(map_folder, args.sample_name + ".rmdup_newhead.bam")
#cmd2 = tools.samtools + " reheader  "
#cmd2 += new_head + " " + rmdup_bam + " "
#cmd2 += "> " + new_bam 
#cmd3 = tools.samtools + " index " + new_bam 
#pm.run([cmd,cmd2,cmd3], new_bam)


#  make re-align target regions for chrMT  --step 5
target_interval = os.path.join(map_folder, args.sample_name + ".target.intervals")
Indel_vcf_s = os.path.join(args.output_parent, "mergeAll.mt.vcf")
Indel_vcf_a = res.MTIndel           
cmd = "java -Xmx8g -jar " + tools.GATK + " "
cmd += " -R " + res.ref_genome_fasta + " " 
cmd += " -T RealignerTargetCreator "
cmd += " -known " + Indel_vcf_s + " " 
cmd += " -known " + Indel_vcf_a + " "
cmd += " -nt " + pm.cores + " " 
cmd += " -I " + rmdup_bam + " "
cmd += " -o " + target_interval
pm.run(cmd,target_interval)

#  re-align
# before re-align , filter chrM only. 
realigned_bam = os.path.join(map_folder, args.sample_name + ".rmdup.realigned.bam")
cmd = "java -Xmx10g -jar " + tools.GATK + " "
cmd += "-R " + res.ref_genome_fasta + " " 
cmd += "-T IndelRealigner "
cmd += " -known " + Indel_vcf_s + " "
cmd += " -known " + Indel_vcf_a + " "
#cmd += " -nt " + pm.cores + " "
cmd += " -I " + rmdup_bam + " "
cmd += " -targetIntervals " + target_interval
cmd += " -o " + realigned_bam
pm.run(cmd, realigned_bam)
#java -Xmx10g -jar /home/jinxu/software/GenomeAnalysisTK.jar  -R /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37_chrM.fasta  -T IndelRealigner -targetIntervals 16-TCCTGAGC-GCGATCTA.targetIntervals  -known /home/jinxu/DB/hg19_g1k_v37/ALL.chrMT.phase3_callmom-v0_4.20130502.genotypes.Indel.vcf -known ../../mergeAll.mt.vcf  -I 16-TCCTGAGC-GCGATCTA.rmdup_newhead.bam  -o 16-TCCTGAGC-GCGATCTA.rmdup_newhead.realigned.bam


# recalibrator 
recal = os.path.join(map_folder, args.sample_name + ".recalibration")
cmd = "java -Xmx10g -jar " + tools.GATK + " "
cmd += " -R " + res.ref_genome_fasta + " "
cmd += " -T BaseRecalibrator "
cmd += " -knownSites " + Indel_vcf_s + " "
cmd += " -I " + realigned_bam + " "
cmd += " -o " + recal
pm.run(cmd,recal) 
#java -Xmx10g  -jar /home/jinxu/software/GenomeAnalysisTK.jar  -R /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta  -T BaseRecalibrator  -knownSites /home/jinxu/DB/hg19_g1k_v37/ALL.chrMT.phase3_callmom-v0_4.20130502.genotypes.Indel.vcf  -I 13-TAAGGCGA-GCGATCTA.rmdup.realigned.bam  -o 13-TAAGGCGA-GCGATCTA.recalibration
recal_bam = os.path.join(map_folder, args.sample_name + ".rmdup.realigned.recal.bam")
cmd =  "java -Xmx10g -jar " + tools.GATK + " "
cmd += " -R " + res.ref_genome_fasta + " "
cmd += " -T PrintReads "
cmd += " -BQSR " + recal + " "
cmd += " -I " + realigned_bam + " "
cmd += " -o " +  recal_bam
pm.run(cmd, recal_bam) 

#java -Xmx10g  -jar /home/jinxu/software/GenomeAnalysisTK.jar  -R /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta  -T PrintReads -BQSR 13-TAAGGCGA-GCGATCTA.recalibration  -I 13-TAAGGCGA-GCGATCTA.rmdup.realigned.bam  -o 13-TAAGGCGA-GCGATCTA.rmdup.realigned.recali.bam
# mpileup 
#samtools mpileup  -l ../../chrM -f /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta -q 20 -Q 20 13-TAAGGCGA-GCGATCTA.rmdup.realigned.recali.bam
mpileup = os.path.join(map_folder, args.sample_name + ".mpileup")
chrMT =  os.path.join(args.output_parent, "chrM")
cmd = tools.samtools + " mpileup " 
cmd += " -l " +  chrMT
cmd += " -f " + res.ref_genome_fasta + " "
cmd += " -q " + str(param.mpileup.q) + " "
cmd += " -Q " + str(param.mpileup.Q) + " "
cmd += param.mpileup.overlap + " "
cmd += recal_bam  + " "
cmd += " > " + mpileup
pm.run(cmd,mpileup) 


# call somatic mutation for each one  --step6
# java -jar /home/jinxu/software/VarScan.v2.3.7.jar   pileup2snp   13-TAAGGCGA-GCGATCTA.mpileup  --min-var-freq 0.001 --min-reads2 4
snv = os.path.join(map_folder, args.sample_name + ".snv")
cmd = "java -Xmx4g  -jar " + tools.VarScan + " "
cmd += " pileup2snp " +  mpileup + " "
cmd += " --min-var-freq " + str(param.varscan.min_freq) + " " 
cmd += " --min-reads2 " + str(param.varscan.min_r2) + " "
cmd += " > " + snv
pm.run(cmd,snv)
# filter somatic mutation  --step6
# summarINPUT=test.samy using outside script.   --step7
pm.stop_pipeline()
