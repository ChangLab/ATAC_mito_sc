#!/usr/bin/env python
"""
scATAC_mtSMC  pipeline
# Change the mapping step according to Jason's pipeline 
	1. Add RG-id for each sample
	2. Filter mapping results with q 30, PE 
	3. Filter Genome reads before realigment.
# Report numbers during processing 
	1. Total number of reads
	2. Number of alignment reads 
	3. Percentage of alignment 
	4. Number of reads after rmdup and filter by mapping quality  
	5. Number of reads on chrM
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
pm = pypiper.PipelineManager(name = "scATAC_mtSMC", outfolder = os.path.abspath(os.path.join(args.output_parent, "sc_output",args.sample_name)), args = args)
# Convenience alias 
tools = pm.config.tools
param = pm.config.parameters
res = pm.config.resources
# Set up reference resouce according to genome prefix.
res.ref_genome_fasta = pm.config.resources.ref_pref
res.ref_chrMT_fasta = pm.config.resources.chrM
output = os.path.join(args.output_parent,"sc_output")
output = os.path.join(output, args.sample_name + "/")
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
ngstk.make_dir(fastq_folder)

# clear the stats.tsv
stat_file = output + "stats.tsv"
cmd = " rm -f  " +  stat_file 
pm.run(cmd,output) 

pm.report_result("File_MB", ngstk.get_file_size(local_input_files))
#pm.report_result("Read_type", args.single_or_paired)
pm.report_result("GenomeV", args.genome_assembly)
# Adaptor trimming with trimmatic 
#pm.timestamp("### Adapter trimming: ")
#trimmed_fastq= fastq_folder + args.sample_name + "_R1_trimmed.fq"
#trimmed_fastq_R2= fastq_folder + args.sample_name + "_R2_trimmed.fq"
#cmd = tools.java +" -Xmx" + str(pm.mem) +" -jar " + tools.trimmo + " PE " + " -threads " + str(pm.cores) + " "
#cmd += local_input_files[0] + " "
#cmd += local_input_files[1] + " " 
#cmd += trimmed_fastq + " "
#cmd += fastq_folder + args.sample_name + "_R1_unpaired.fq "
#cmd += trimmed_fastq_R2 + " "
#cmd += fastq_folder +args.sample_name + "_R2_unpaired.fq "
#cmd +=  "ILLUMINACLIP:"+ res.adaptor + ":2:30:10" 
#pm.run(cmd, trimmed_fastq)

# Adaotir trimming with in house script by Jason 
pm.timestamp("### Adapter trimming: in-house script")
#trimmed_fastq= raw_folder + args.sample_name + "_R1.trim.fastq"
#trimmed_fastq_R2= raw_folder + args.sample_name + "_R2.trim.fastq"

trimmed_fastq= local_input_files[0].replace("fastq.gz","trim.fastq")
trimmed_fastq_R2= local_input_files[1].replace("fastq.gz","trim.fastq")
cmd = tools.trim + " "
cmd += local_input_files[0] + " "
cmd += local_input_files[1] 
pm.run(cmd,trimmed_fastq)

n_raw = int(ngstk.count_reads(local_input_files[0],args.paired_end))
pm.report_result("Raw_reads",n_raw)


pm.clean_add(output + args.sample_name + "*.fq", conditional=True)
# report raw reads and trimmed reads
n_trim = float(ngstk.count_reads(trimmed_fastq, args.paired_end))
rr = float(pm.get_stat("Raw_reads"))
pm.report_result("Trimmed_reads", n_trim)
if rr != 0: 
	pm.report_result("Trim_loss_rate", round((rr - n_trim) / rr, 2))
else:
	pm.report_result("Trim_loss_rate","0")
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

#tag = "@RG\\tID:" + param.bwa.group + "\\tSM:" + args.sample_name + "\\tPL:" + param.bwa.platform
#Using sample name as group id
tag = "@RG\\tID:" + args.sample_name + "\\tSM:" + param.bwa.group + "\\tPL:" + param.bwa.platform
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

#  count Aligment
ar = ngstk.count_mapped_reads(map_bam, args.paired_end)
pm.report_result("Aligned_reads", ar)
tr = float(pm.get_stat("Trimmed_reads"))
if tr != 0: 
	pm.report_result("Alignment_rate", round(float(ar) / float(tr), 2))
else:
	
	pm.report_result("Alignment_rate", "0")

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
# count after rmdup
ar = ngstk.count_mapped_reads(rmdup_bam, args.paired_end)
pm.report_result("rmdup_reads", ar)
#        try:
                # wrapped in try block in case Trimmed_reads is not reported in this pipeline.
tr = float(pm.get_stat("Aligned_reads"))
if tr != 0: 
	pm.report_result("dup_rate" , round( 1 - float(ar) / float(tr), 2))
else:
	pm.report_result("dup_rate" , "0")
	
#        except:

 #               pass


# --step 4
# make genomeQ30PE.bam for peak calling 
# Filter genome reads, q >30,PE for peak calling  
#Added  a list of chr name. Make it in the DB resource  fold and added that to yaml 
#chrs=`samtools view -H $out3.bam | grep chr | cut -f2 | sed 's/SN://g' | grep -v chrM | grep -v Y | awk '{if(length($0)<6)print}'`
genome_bam = os.path.join(map_folder, args.sample_name + ".genomeQ30PE.bam")
cmd = tools.samtools + " view -b -q  30 " + " "
cmd += " -f 0x2 " + rmdup_bam + " "
cmd += " -o " + genome_bam + " "
cmd += res.chrs
pm.run(cmd,genome_bam)

count_steps += 1
if count_steps == args.stopN:
        print("pipeline stop at step")
        print(args.stopN)
        pm.stop_pipeline()
        exit()

# count Q30PE
ar = ngstk.count_mapped_reads(genome_bam, args.paired_end)
pm.report_result("genomeQ30PE_reads", ar)
#        try:
                # wrapped in try block in case Trimmed_reads is not reported in this pipeline.
tr = float(pm.get_stat("Aligned_reads"))
if tr != 0: 
	pm.report_result("genomeQ30PE_rate", round(float(ar) / float(tr), 2))
else:
	pm.report_result("genomeQ30PE_rate", "0")
#        except:

#                pass
# count reads in TSS
TSS_count = os.path.join(map_folder, args.sample_name + ".RefTSSCount")
cmd = tools.bedtools + " coverage " 
cmd += " -abam " + genome_bam 
cmd += " -b "  + res.ref_TSS 
cmd += " -counts "
cmd += " > " 
cmd += TSS_count 
pm.run(cmd, TSS_count)

# Count total number of reads within TSS
cmd = " awk 'BEGIN{sum=0}''{sum+=$6;}''END{print sum}' " + TSS_count
Total_reads_TSS = pm.checkprint(cmd)
pm.report_result("Total_TSS_reads", Total_reads_TSS)
tr = float(pm.get_stat("genomeQ30PE_reads"))
if tr != 0: 
	pm.report_result("TSS_rate", round(float(Total_reads_TSS) /(2 * float(tr)), 2))
else:
	
	pm.report_result("TSS_rate", "0")
# step 5 
# count number of reads on mt q30 PE
mt_bam = os.path.join(map_folder, args.sample_name + ".mtQ30PE.bam")
cmd = tools.samtools + " view -b -q  30 " + " "
cmd += " -f 0x2 " + rmdup_bam + " "
cmd += " -o " + mt_bam + " "
cmd += " chrMT "
pm.run(cmd,mt_bam)

# count mt Q30PE
ar = ngstk.count_mapped_reads(mt_bam, args.paired_end)
pm.report_result("mtQ30PE_reads", ar)
#        try:
                # wrapped in try block in case Trimmed_reads is not reported in this pipeline.
tr = float(pm.get_stat("Aligned_reads"))
if tr!= 0: 
	pm.report_result("mtQ30PE_rate", round(float(ar) / float(tr), 2))
else:
	
	pm.report_result("mtQ30PE_rate", "0")
#        except:

#                pass

#  make re-align target regions  --step 5
#  Need to make genome wide re-align 
target_interval = os.path.join(map_folder, args.sample_name + ".target.intervals")
#Indel_vcf_s = os.path.join(args.output_parent, "mergeAll.mt.vcf")
#Indel_vcf_a = res.MTIndel           
cmd = "java -Xmx8g -jar " + tools.GATK + " "
cmd += " -R " + res.ref_genome_fasta + " " 
cmd += " -T RealignerTargetCreator "
#cmd += " -known " + Indel_vcf_s + " " 
cmd += " -known " + res.MTIndel + " "
cmd += " -known " + res.GIndel + " "
cmd += " -nt " + pm.cores + " " 
cmd += " -I " + rmdup_bam + " "
cmd += " -o " + target_interval
pm.run(cmd,target_interval)

# ReAlignment  --step 5 
realigned_bam = os.path.join(map_folder, args.sample_name + ".rmdup.realigned.bam")
cmd = "java -Xmx10g -jar " + tools.GATK + " "
cmd += "-R " + res.ref_genome_fasta + " " 
cmd += "-T IndelRealigner "
#cmd += " -known " + Indel_vcf_s + " "
#cmd += " -known " + Indel_vcf_a + " "
cmd += " -known " + res.GIndel + " "
cmd += " -known " + res.MTIndel + " "
#cmd += " -nt " + pm.cores + " "
cmd += " -I " + rmdup_bam + " "
cmd += " -targetIntervals " + target_interval
cmd += " -o " + realigned_bam
pm.run(cmd, realigned_bam)

count_steps += 1
if count_steps == args.stopN:
        print("pipeline stop at step")
        print(args.stopN)
        pm.stop


# mpileup 
#samtools mpileup  -l ../../chrM -f /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta -q 20 -Q 20 13-TAAGGCGA-GCGATCTA.rmdup.realigned.recali.bam
mpileup = os.path.join(map_folder, args.sample_name + ".mpileup")
#chrMT =  res.chrM_len
cmd = tools.samtools + " mpileup " 
cmd += " -l " +  res.chrM_len + " "
cmd += " -f " + res.ref_genome_fasta + " "
cmd += " -q " + str(param.mpileup.q) + " "
cmd += " -Q " + str(param.mpileup.Q) + " "
cmd += param.mpileup.overlap + " "
cmd += realigned_bam
cmd += " > " + mpileup
pm.run(cmd,mpileup) 

# make count table for each allele 
count = os.path.join(map_folder, args.sample_name + ".counts")
cmd = tools.pileup_rj + " "
cmd += mpileup + " > "
cmd += count
pm.run(cmd,count)
#
# caculate average depth 
# awk 'BEGIN{sum=0;num=0}''{sum+=$4;num++}''END{print sum/num}'  count  
cmd = " awk 'BEGIN{sum=0;}''{sum+=$4;}''END{print sum}' " + count	
mt_total_depth = pm.checkprint(cmd)
cmd = " awk 'BEGIN{num=0;}''{num++;}''END{print num}' " + count	
mt_total_site =pm.checkprint(cmd)
#print(int(mt_total_site))
if int(mt_total_site)==0:
	pm.report_result("mt_aver_depth", "0")
	print(mt_total_site)
else:
	pm.report_result("mt_aver_depth", round(float(mt_total_depth) / float(mt_total_site), 2))
# call somatic mutation for each one  --step7
# java -jar /home/jinxu/software/VarScan.v2.3.7.jar   pileup2snp   13-TAAGGCGA-GCGATCTA.mpileup  --min-var-freq 0.001 --min-reads2 4
if int(mt_total_site) != 0:
	snv = os.path.join(map_folder, args.sample_name + ".snv")
	cmd = "java -Xmx4g  -jar " + tools.VarScan + " "
	cmd += " pileup2snp " +  mpileup + " "
	cmd += " --min-var-freq " + str(param.varscan.min_freq) + " " 
	cmd += " --min-reads2 " + str(param.varscan.min_r2) + " "
	cmd += " > " + snv
	pm.run(cmd,snv)
else:

	snv = os.path.join(map_folder, args.sample_name + ".snv")
# filter somatic mutation  --step6
# summarINPUT=test.samy using outside script.   --step7
pm.stop_pipeline()
