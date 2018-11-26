# Pipeline started at 07-30 15:20:47

ln -sf /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz

ln -sf /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz

# Pipeline started at 07-30 15:23:26

/home/jinxu/pipeline_pypiper/ATAC_mito_sc/src/adapterTrimming /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz

/home/jinxu/software/bwa-0.7.15/bwa aln  -t  8 /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.trim.fastq -f /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R1.sai

/home/jinxu/software/bwa-0.7.15/bwa aln  -t 8 /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.trim.fastq -f /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R2.sai

/home/jinxu/software/bwa-0.7.15/bwa sampe -r "@RG\tID:13-TAAGGCGA-GCGATCTA\tSM:MT\tPL:ILLUMINA" /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R1.sai /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R2.sai /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.trim.fastq /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.trim.fastq -f /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.sam

java -Xmx4g -jar /home/jinxu/software/picard-tools-2.4.1/picard.jar SortSam SORT_ORDER=coordinate CREATE_INDEX=true VALIDATION_STRINGENCY=SILENT INPUT=/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.sam OUTPUT=/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.bam

java -Xmx4g -jar /home/jinxu/software/picard-tools-2.4.1/picard.jar MarkDuplicates CREATE_INDEX=true ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT REMOVE_DUPLICATES=true INPUT=/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.bam OUTPUT=/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam METRICS_FILE=/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.metrics

/usr/local/bin/samtools view -b -q  30   -f 0x2 /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam  -o /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.genomeQ30PE.bam chr1 chr2 chr3 chr4 chr5 chr6 chr7 chr8 chr9 chr10 chr11 chr12 chr13 chr14 chr15 chr16 chr17 chr18 chr19 chr20 chr21 chr22 chrX

/seq/bedtools-master/bin/bedtools coverage  -abam /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.genomeQ30PE.bam -b /home/jinxu/DB/hg19/annotation/hg19_refGene_TSSRound2kb.bed -counts  > /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.RefTSSCount

 awk 'BEGIN{sum=0}''{sum+=$6;}''END{print sum}' /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.RefTSSCount

/usr/local/bin/samtools view -b -q  30   -f 0x2 /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam  -o /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mtQ30PE.bam  chrMT 

java -Xmx8g -jar /home/jinxu/software/GenomeAnalysisTK.jar  -R /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta  -T RealignerTargetCreator  -known /home/jinxu/DB/hg19_g1k_v37/ALL.chrMT.phase3_callmom-v0_4.20130502.genotypes.Indel.vcf  -known /home/jinxu/DB/hg19_g1k_v37/Mills_and_1000G_gold_standard.indels.hg19.sites.vcf  -nt 8  -I /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam  -o /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.target.intervals

java -Xmx10g -jar /home/jinxu/software/GenomeAnalysisTK.jar -R /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta -T IndelRealigner  -known /home/jinxu/DB/hg19_g1k_v37/Mills_and_1000G_gold_standard.indels.hg19.sites.vcf  -known /home/jinxu/DB/hg19_g1k_v37/ALL.chrMT.phase3_callmom-v0_4.20130502.genotypes.Indel.vcf  -I /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam  -targetIntervals /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.target.intervals -o /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.realigned.bam

/usr/local/bin/samtools mpileup  -l /home/jinxu/DB/hg19_g1k_v37/chrM.len  -f /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta  -q 20  -Q 20 -x /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.realigned.bam > /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mpileup

/home/jinxu/bin/pileup_inf_rj.pl /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mpileup > /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.counts

 awk 'BEGIN{sum=0;}''{sum+=$4;}''END{print sum}' /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.counts

 awk 'BEGIN{num=0;}''{num++;}''END{print num}' /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.counts

java -Xmx4g  -jar /home/jinxu/software/VarScan.v2.3.7.jar  pileup2snp /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mpileup  --min-var-freq 0.01  --min-reads2 2  > /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output2/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.snv

