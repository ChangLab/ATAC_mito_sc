# Pipeline started at 08-09 15:33:28

ln -sf /home/jinxu/scATAC/pipeline/ATAC_mito/pipelines/ATAC_mito_sc/example/test_data//15-AGGCAGAA-GCGATCTA_S3_001_R1.fastq.gz /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz

ln -sf /home/jinxu/scATAC/pipeline/ATAC_mito/pipelines/ATAC_mito_sc/example/test_data//15-AGGCAGAA-GCGATCTA_S3_001_R2.fastq.gz /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz

 rm -f  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/stats.tsv

/usr/bin/java -Xmx100m -jar /home/jinxu/software/Trimmomatic-0.36/trimmomatic-0.36.jar PE  -threads 2 /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R1_trimmed.fq /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R1_unpaired.fq /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R2_trimmed.fq /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R2_unpaired.fq ILLUMINACLIP:/home/jinxu/software/Trimmomatic-0.36/adapters/NexteraPE-PE.fa:2:30:10

/home/jinxu/software/bwa-0.7.15/bwa aln  -t  2 /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R1_trimmed.fq -f /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R1.sai

/home/jinxu/software/bwa-0.7.15/bwa aln  -t 2 /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R2_trimmed.fq -f /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R2.sai

/home/jinxu/software/bwa-0.7.15/bwa sampe -r "@RG\tID:15-AGGCAGAA-GCGATCTA\tSM:MT\tPL:ILLUMINA" /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R1.sai /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R2.sai /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R1_trimmed.fq /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R2_trimmed.fq -f /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.sam

java -Xmx4g -jar /home/jinxu/software/picard-tools-2.4.1/picard.jar SortSam SORT_ORDER=coordinate CREATE_INDEX=true VALIDATION_STRINGENCY=SILENT INPUT=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.sam OUTPUT=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.bam

java -Xmx4g -jar /home/jinxu/software/picard-tools-2.4.1/picard.jar MarkDuplicates CREATE_INDEX=true ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT REMOVE_DUPLICATES=true INPUT=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.bam OUTPUT=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.bam METRICS_FILE=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.metrics

/usr/local/bin/samtools view -b -q  30   -f 0x2 /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.bam  -o /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.genomeQ30PE.bam chr1 chr2 chr3 chr4 chr5 chr6 chr7 chr8 chr9 chr10 chr11 chr12 chr13 chr14 chr15 chr16 chr17 chr18 chr19 chr20 chr21 chr22 chrX

/seq/bedtools-master/bin/bedtools coverage  -abam /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.genomeQ30PE.bam -b /home/jinxu/DB/hg19/annotation/hg19_refGene_TSSRound2kb.bed -counts  > /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.RefTSSCount

 awk 'BEGIN{sum=0}''{sum+=$6;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.RefTSSCount

/usr/local/bin/samtools view -b -q  30   -f 0x2 /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.bam  -o /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.mtQ30PE.bam  chrMT 

java -Xmx8g -jar /home/jinxu/software/GenomeAnalysisTK.jar  -R /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta  -T RealignerTargetCreator  -known /home/jinxu/DB/hg19_g1k_v37/ALL.chrMT.phase3_callmom-v0_4.20130502.genotypes.Indel.vcf  -known /home/jinxu/DB/hg19_g1k_v37/Mills_and_1000G_gold_standard.indels.hg19.sites.vcf  -nt 2  -I /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.bam  -o /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.target.intervals

java -Xmx10g -jar /home/jinxu/software/GenomeAnalysisTK.jar -R /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta -T IndelRealigner  -known /home/jinxu/DB/hg19_g1k_v37/Mills_and_1000G_gold_standard.indels.hg19.sites.vcf  -known /home/jinxu/DB/hg19_g1k_v37/ALL.chrMT.phase3_callmom-v0_4.20130502.genotypes.Indel.vcf  -I /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.bam  -targetIntervals /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.target.intervals -o /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.realigned.bam

/usr/local/bin/samtools mpileup  -l /home/jinxu/DB/hg19_g1k_v37/chrM.len  -f /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta  -q 20  -Q 20 -x /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.realigned.bam > /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.mpileup

/home/jinxu/bin/pileup_inf_rj.pl /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.mpileup > /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.counts

 awk 'BEGIN{sum=0;num=0}''{sum+=$4;num++}''END{print sum/num}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.counts

java -Xmx4g  -jar /home/jinxu/software/VarScan.v2.3.7.jar  pileup2snp /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.mpileup  --min-var-freq 0.01  --min-reads2 2  > /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.snv

