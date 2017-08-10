cd /storage/jinxu/.local/lib/python2.7/site-packages/pypiper; git rev-parse --verify HEAD 2>/dev/null
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `/storage/jinxu/develop/ATAC_mito_sc/src/scATACseq_mtSMC_3.py -P 2 -M 100 -O /home/jinxu/develop/ATAC_mito_sc/example/output -R -S 15-AGGCAGAA-GCGATCTA -s 0 -G hg19 -Q paired -I /home/jinxu/scATAC/pipeline/ATAC_mito/pipelines/ATAC_mito_sc/example/test_data//15-AGGCAGAA-GCGATCTA_S3_001_R1.fastq.gz -I2 /home/jinxu/scATAC/pipeline/ATAC_mito/pipelines/ATAC_mito_sc/example/test_data//15-AGGCAGAA-GCGATCTA_S3_001_R2.fastq.gz`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/jinxu/develop/ATAC_mito_sc/example
*            Outfolder:  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/
*  Pipeline started at:   (08-09 15:33:28) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/jinxu/.local/lib/python2.7/site-packages/pypiper`
*         Pipeline dir:  `/storage/jinxu/develop/ATAC_mito_sc/src`

##### [Arguments passed to pipeline:]
*             `input2`:  `['/home/jinxu/scATAC/pipeline/ATAC_mito/pipelines/ATAC_mito_sc/example/test_data//15-AGGCAGAA-GCGATCTA_S3_001_R2.fastq.gz']`
*   `single_or_paired`:  `paired`
*         `paired_end`:  `True`
*        `config_file`:  `scATACseq_mtSMC_3.yaml`
*              `input`:  `['/home/jinxu/scATAC/pipeline/ATAC_mito/pipelines/ATAC_mito_sc/example/test_data//15-AGGCAGAA-GCGATCTA_S3_001_R1.fastq.gz']`
*                `mem`:  `100`
*        `sample_name`:  `15-AGGCAGAA-GCGATCTA`
*      `output_parent`:  `/home/jinxu/develop/ATAC_mito_sc/example/output`
*    `genome_assembly`:  `hg19`
*              `cores`:  `2`
*              `stopN`:  `0`
*       `force_follow`:  `False`
*              `fresh`:  `False`
*            `recover`:  `True`
*       `manual_clean`:  `False`

----------------------------------------


Change status from initializing to running
Local input file: /home/jinxu/scATAC/pipeline/ATAC_mito/pipelines/ATAC_mito_sc/example/test_data//15-AGGCAGAA-GCGATCTA_S3_001_R1.fastq.gz
Local input file: /home/jinxu/scATAC/pipeline/ATAC_mito/pipelines/ATAC_mito_sc/example/test_data//15-AGGCAGAA-GCGATCTA_S3_001_R2.fastq.gz

### Merge/link and fastq conversion:  (08-09 15:33:28) elapsed:0:00:00 _TIME_

Number of input file sets:		2

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz`
> `ln -sf /home/jinxu/scATAC/pipeline/ATAC_mito/pipelines/ATAC_mito_sc/example/test_data//15-AGGCAGAA-GCGATCTA_S3_001_R1.fastq.gz /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz`

<pre>
</pre>
Process 44104 returned: (0). Elapsed: 0:00:00.
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz`
> `ln -sf /home/jinxu/scATAC/pipeline/ATAC_mito/pipelines/ATAC_mito_sc/example/test_data//15-AGGCAGAA-GCGATCTA_S3_001_R2.fastq.gz /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz`

<pre>
</pre>
Process 44105 returned: (0). Elapsed: 0:00:00.
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz
['/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz', '/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz']

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/`
> ` rm -f  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/stats.tsv`

<pre>
</pre>
Process 44106 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `File_MB`	4.5997	scATAC_mtSMC	_RES_
> `GenomeV`	hg19	scATAC_mtSMC	_RES_

### Adapter trimming:  (08-09 15:33:29) elapsed:0:00:01 _TIME_

> `Raw_reads`	159978	scATAC_mtSMC	_RES_

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R1_trimmed.fq`
> `/usr/bin/java -Xmx100m -jar /home/jinxu/software/Trimmomatic-0.36/trimmomatic-0.36.jar PE  -threads 2 /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R1_trimmed.fq /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R1_unpaired.fq /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R2_trimmed.fq /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R2_unpaired.fq ILLUMINACLIP:/home/jinxu/software/Trimmomatic-0.36/adapters/NexteraPE-PE.fa:2:30:10`

<pre>
TrimmomaticPE: Started with arguments:
 -threads 2 /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R1_trimmed.fq /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R1_unpaired.fq /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R2_trimmed.fq /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R2_unpaired.fq ILLUMINACLIP:/home/jinxu/software/Trimmomatic-0.36/adapters/NexteraPE-PE.fa:2:30:10
Using PrefixPair: 'AGATGTGTATAAGAGACAG' and 'AGATGTGTATAAGAGACAG'
Using Long Clipping Sequence: 'GTCTCGTGGGCTCGGAGATGTGTATAAGAGACAG'
Using Long Clipping Sequence: 'TCGTCGGCAGCGTCAGATGTGTATAAGAGACAG'
Using Long Clipping Sequence: 'CTGTCTCTTATACACATCTCCGAGCCCACGAGAC'
Using Long Clipping Sequence: 'CTGTCTCTTATACACATCTGACGCTGCCGACGA'
ILLUMINACLIP: Using 1 prefix pairs, 4 forward/reverse sequences, 0 forward only sequences, 0 reverse only sequences
Quality encoding detected as phred33
Input Read Pairs: 79989 Both Surviving: 79747 (99.70%) Forward Only Surviving: 242 (0.30%) Reverse Only Surviving: 0 (0.00%) Dropped: 0 (0.00%)
TrimmomaticPE: Completed successfully
</pre>
Process 44112 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.068GB; Pipeline: 0.0GB)
> `Trimmed_reads`	159494.0	scATAC_mtSMC	_RES_
> `Trim_loss_rate`	0.0	scATAC_mtSMC	_RES_

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R1.sai`
> `/home/jinxu/software/bwa-0.7.15/bwa aln  -t  2 /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R1_trimmed.fq -f /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R1.sai`

<pre>
[bwa_aln] 17bp reads: max_diff = 2
[bwa_aln] 38bp reads: max_diff = 3
[bwa_aln] 64bp reads: max_diff = 4
[bwa_aln] 93bp reads: max_diff = 5
[bwa_aln] 124bp reads: max_diff = 6
[bwa_aln] 157bp reads: max_diff = 7
[bwa_aln] 190bp reads: max_diff = 8
[bwa_aln] 225bp reads: max_diff = 9
[bwa_aln_core] calculate SA coordinate... 21.16 sec
[bwa_aln_core] write to the disk... 0.03 sec
[bwa_aln_core] 79747 sequences have been processed.
[main] Version: 0.7.15-r1140
[main] CMD: /home/jinxu/software/bwa-0.7.15/bwa aln -t 2 -f /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R1.sai /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R1_trimmed.fq
[main] Real time: 12.716 sec; CPU: 23.218 sec
</pre>
Process 44193 returned: (0). Elapsed: 0:00:16. Peak memory: (Process: 3.074GB; Pipeline: 0.068GB)

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R2.sai`
> `/home/jinxu/software/bwa-0.7.15/bwa aln  -t 2 /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R2_trimmed.fq -f /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R2.sai`

<pre>
[bwa_aln] 17bp reads: max_diff = 2
[bwa_aln] 38bp reads: max_diff = 3
[bwa_aln] 64bp reads: max_diff = 4
[bwa_aln] 93bp reads: max_diff = 5
[bwa_aln] 124bp reads: max_diff = 6
[bwa_aln] 157bp reads: max_diff = 7
[bwa_aln] 190bp reads: max_diff = 8
[bwa_aln] 225bp reads: max_diff = 9
[bwa_aln_core] calculate SA coordinate... 23.94 sec
[bwa_aln_core] write to the disk... 0.02 sec
[bwa_aln_core] 79747 sequences have been processed.
[main] Version: 0.7.15-r1140
[main] CMD: /home/jinxu/software/bwa-0.7.15/bwa aln -t 2 -f /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R2.sai /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R2_trimmed.fq
[main] Real time: 14.126 sec; CPU: 26.003 sec
</pre>
Process 44196 returned: (0). Elapsed: 0:00:16. Peak memory: (Process: 3.074GB; Pipeline: 3.074GB)

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.sam`
> `/home/jinxu/software/bwa-0.7.15/bwa sampe -r "@RG\tID:15-AGGCAGAA-GCGATCTA\tSM:MT\tPL:ILLUMINA" /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R1.sai /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R2.sai /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R1_trimmed.fq /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R2_trimmed.fq -f /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.sam`

<pre>
[bwa_sai2sam_pe_core] convert to sequence coordinate... 
[infer_isize] (25, 50, 75) percentile: (49, 66, 88)
[infer_isize] low and high boundaries: 76 and 166 for estimating avg and std
[infer_isize] inferred external isize from 21599 pairs: 99.240 +/- 19.670
[infer_isize] skewness: 1.076; kurtosis: 0.622; ap_prior: 9.49e-05
[infer_isize] inferred maximum insert size: 239 (7.08 sigma)
[bwa_sai2sam_pe_core] time elapses: 4.04 sec
[bwa_sai2sam_pe_core] changing coordinates of 1820 alignments.
[bwa_sai2sam_pe_core] align unmapped mate...
[bwa_paired_sw] 1234 out of 4861 Q17 singletons are mated.
[bwa_paired_sw] 2 out of 926 Q17 discordant pairs are fixed.
[bwa_sai2sam_pe_core] time elapses: 0.49 sec
[bwa_sai2sam_pe_core] refine gapped alignments... 0.17 sec
[bwa_sai2sam_pe_core] print alignments... 0.52 sec
[bwa_sai2sam_pe_core] 79747 sequences have been processed.
[main] Version: 0.7.15-r1140
[main] CMD: /home/jinxu/software/bwa-0.7.15/bwa sampe -r @RG\tID:15-AGGCAGAA-GCGATCTA\tSM:MT\tPL:ILLUMINA -f /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.sam /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R1.sai /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R2.sai /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R1_trimmed.fq /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R2_trimmed.fq
[main] Real time: 5.541 sec; CPU: 5.495 sec
</pre>
Process 44199 returned: (0). Elapsed: 0:00:16. Peak memory: (Process: 4.643GB; Pipeline: 3.074GB)

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.bam`
> `java -Xmx4g -jar /home/jinxu/software/picard-tools-2.4.1/picard.jar SortSam SORT_ORDER=coordinate CREATE_INDEX=true VALIDATION_STRINGENCY=SILENT INPUT=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.sam OUTPUT=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.bam`

<pre>
[Wed Aug 09 15:34:22 PDT 2017] picard.sam.SortSam INPUT=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.sam OUTPUT=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT CREATE_INDEX=true    VERBOSITY=INFO QUIET=false COMPRESSION_LEVEL=5 MAX_RECORDS_IN_RAM=500000 CREATE_MD5_FILE=false GA4GH_CLIENT_SECRETS=client_secrets.json
[Wed Aug 09 15:34:22 PDT 2017] Executing as jinxu@changrila2.stanford.edu on Linux 3.10.0-327.22.2.el7.x86_64 amd64; OpenJDK 64-Bit Server VM 1.8.0_101-b13; Picard version: 2.4.1(7c4d36e011df1aec4689b51efcada44e92d1817f_1464389670) JdkDeflater
INFO	2017-08-09 15:34:23	SortSam	Finished reading inputs, merging and writing to output now.
[Wed Aug 09 15:34:25 PDT 2017] picard.sam.SortSam done. Elapsed time: 0.05 minutes.
Runtime.totalMemory()=2058354688
</pre>
Process 44208 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.062GB; Pipeline: 4.643GB)
> `Aligned_reads`	153910	scATAC_mtSMC	_RES_
> `Alignment_rate`	0.96	scATAC_mtSMC	_RES_

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.bam`
> `java -Xmx4g -jar /home/jinxu/software/picard-tools-2.4.1/picard.jar MarkDuplicates CREATE_INDEX=true ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT REMOVE_DUPLICATES=true INPUT=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.bam OUTPUT=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.bam METRICS_FILE=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.metrics`

<pre>
[Wed Aug 09 15:34:28 PDT 2017] picard.sam.markduplicates.MarkDuplicates INPUT=[/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.bam] OUTPUT=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.bam METRICS_FILE=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.metrics REMOVE_DUPLICATES=true ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT CREATE_INDEX=true    MAX_SEQUENCES_FOR_DISK_READ_ENDS_MAP=50000 MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=8000 SORTING_COLLECTION_SIZE_RATIO=0.25 REMOVE_SEQUENCING_DUPLICATES=false TAGGING_POLICY=DontTag DUPLICATE_SCORING_STRATEGY=SUM_OF_BASE_QUALITIES PROGRAM_RECORD_ID=MarkDuplicates PROGRAM_GROUP_NAME=MarkDuplicates READ_NAME_REGEX=<optimized capture of last three ':' separated fields as numeric values> OPTICAL_DUPLICATE_PIXEL_DISTANCE=100 VERBOSITY=INFO QUIET=false COMPRESSION_LEVEL=5 MAX_RECORDS_IN_RAM=500000 CREATE_MD5_FILE=false GA4GH_CLIENT_SECRETS=client_secrets.json
[Wed Aug 09 15:34:28 PDT 2017] Executing as jinxu@changrila2.stanford.edu on Linux 3.10.0-327.22.2.el7.x86_64 amd64; OpenJDK 64-Bit Server VM 1.8.0_101-b13; Picard version: 2.4.1(7c4d36e011df1aec4689b51efcada44e92d1817f_1464389670) JdkDeflater
INFO	2017-08-09 15:34:28	MarkDuplicates	Start of doWork freeMemory: 2046000616; totalMemory: 2058354688; maxMemory: 3817865216
INFO	2017-08-09 15:34:28	MarkDuplicates	Reading input file and constructing read end information.
INFO	2017-08-09 15:34:28	MarkDuplicates	Will retain up to 14684096 data points before spilling to disk.
INFO	2017-08-09 15:34:29	MarkDuplicates	Read 158170 records. 18 pairs never matched.
INFO	2017-08-09 15:34:30	MarkDuplicates	After buildSortedReadEndLists freeMemory: 1912418400; totalMemory: 2058354688; maxMemory: 3817865216
INFO	2017-08-09 15:34:30	MarkDuplicates	Will retain up to 119308288 duplicate indices before spilling to disk.
INFO	2017-08-09 15:34:30	MarkDuplicates	Traversing read pair information and detecting duplicates.
INFO	2017-08-09 15:34:30	MarkDuplicates	Traversing fragment information and detecting duplicates.
INFO	2017-08-09 15:34:31	MarkDuplicates	Sorting list of duplicate records.
INFO	2017-08-09 15:34:31	MarkDuplicates	After generateDuplicateIndexes freeMemory: 1619358344; totalMemory: 2595749888; maxMemory: 3817865216
INFO	2017-08-09 15:34:31	MarkDuplicates	Marking 99714 records as duplicates.
INFO	2017-08-09 15:34:31	MarkDuplicates	Found 26 optical duplicate clusters.
INFO	2017-08-09 15:34:31	MarkDuplicates	Reads are assumed to be ordered by: coordinate
INFO	2017-08-09 15:34:32	MarkDuplicates	Before output close freeMemory: 2572747288; totalMemory: 2595749888; maxMemory: 3817865216
INFO	2017-08-09 15:34:32	MarkDuplicates	After output close freeMemory: 2572814928; totalMemory: 2595749888; maxMemory: 3817865216
[Wed Aug 09 15:34:32 PDT 2017] picard.sam.markduplicates.MarkDuplicates done. Elapsed time: 0.08 minutes.
Runtime.totalMemory()=2595749888
</pre>
Process 44278 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.056GB; Pipeline: 4.643GB)
> `rmdup_reads`	54196	scATAC_mtSMC	_RES_
> `dup_rate`	0.65	scATAC_mtSMC	_RES_

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.genomeQ30PE.bam`
> `/usr/local/bin/samtools view -b -q  30   -f 0x2 /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.bam  -o /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.genomeQ30PE.bam chr1 chr2 chr3 chr4 chr5 chr6 chr7 chr8 chr9 chr10 chr11 chr12 chr13 chr14 chr15 chr16 chr17 chr18 chr19 chr20 chr21 chr22 chrX`

<pre>
</pre>
Process 44348 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 4.643GB)
> `genomeQ30PE_reads`	204	scATAC_mtSMC	_RES_
> `genomeQ30PE_rate`	0.0	scATAC_mtSMC	_RES_

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.RefTSSCount`
> `/seq/bedtools-master/bin/bedtools coverage  -abam /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.genomeQ30PE.bam -b /home/jinxu/DB/hg19/annotation/hg19_refGene_TSSRound2kb.bed -counts  > /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.RefTSSCount`

<pre>
</pre>
Process 44350 returned: (0). Elapsed: 0:00:00.
> ` awk 'BEGIN{sum=0}''{sum+=$6;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.RefTSSCount`

> `Total_TSS_reads`	169	scATAC_mtSMC	_RES_
> `TSS_rate`	0.41	scATAC_mtSMC	_RES_

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.mtQ30PE.bam`
> `/usr/local/bin/samtools view -b -q  30   -f 0x2 /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.bam  -o /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.mtQ30PE.bam  chrMT `

<pre>
</pre>
Process 44353 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.002GB; Pipeline: 4.643GB)
> `mtQ30PE_reads`	41399	scATAC_mtSMC	_RES_
> `mtQ30PE_rate`	0.27	scATAC_mtSMC	_RES_

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.target.intervals`
> `java -Xmx8g -jar /home/jinxu/software/GenomeAnalysisTK.jar  -R /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta  -T RealignerTargetCreator  -known /home/jinxu/DB/hg19_g1k_v37/ALL.chrMT.phase3_callmom-v0_4.20130502.genotypes.Indel.vcf  -known /home/jinxu/DB/hg19_g1k_v37/Mills_and_1000G_gold_standard.indels.hg19.sites.vcf  -nt 2  -I /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.bam  -o /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.target.intervals`

<pre>
INFO  15:34:41,162 HelpFormatter - -------------------------------------------------------------------------------- 
INFO  15:34:41,164 HelpFormatter - The Genome Analysis Toolkit (GATK) v3.5-0-g36282e4, Compiled 2015/11/25 04:03:56 
INFO  15:34:41,164 HelpFormatter - Copyright (c) 2010 The Broad Institute 
INFO  15:34:41,165 HelpFormatter - For support and documentation go to http://www.broadinstitute.org/gatk 
INFO  15:34:41,169 HelpFormatter - Program Args: -R /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta -T RealignerTargetCreator -known /home/jinxu/DB/hg19_g1k_v37/ALL.chrMT.phase3_callmom-v0_4.20130502.genotypes.Indel.vcf -known /home/jinxu/DB/hg19_g1k_v37/Mills_and_1000G_gold_standard.indels.hg19.sites.vcf -nt 2 -I /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.bam -o /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.target.intervals 
INFO  15:34:41,178 HelpFormatter - Executing as jinxu@changrila2.stanford.edu on Linux 3.10.0-327.22.2.el7.x86_64 amd64; OpenJDK 64-Bit Server VM 1.8.0_101-b13. 
INFO  15:34:41,179 HelpFormatter - Date/Time: 2017/08/09 15:34:41 
INFO  15:34:41,179 HelpFormatter - -------------------------------------------------------------------------------- 
INFO  15:34:41,180 HelpFormatter - -------------------------------------------------------------------------------- 
INFO  15:34:41,242 GenomeAnalysisEngine - Strictness is SILENT 
INFO  15:34:41,343 GenomeAnalysisEngine - Downsampling Settings: Method: BY_SAMPLE, Target Coverage: 1000 
INFO  15:34:41,350 SAMDataSource$SAMReaders - Initializing SAMRecords in serial 
INFO  15:34:41,377 SAMDataSource$SAMReaders - Done initializing BAM readers: total time 0.03 
INFO  15:34:41,488 MicroScheduler - Running the GATK in parallel mode with 2 total threads, 1 CPU thread(s) for each of 2 data thread(s), of 64 processors available on this machine 
INFO  15:34:41,552 GenomeAnalysisEngine - Preparing for traversal over 1 BAM files 
INFO  15:34:41,610 GenomeAnalysisEngine - Done preparing for traversal 
INFO  15:34:41,612 ProgressMeter - [INITIALIZATION COMPLETE; STARTING PROCESSING] 
INFO  15:34:41,612 ProgressMeter -                 | processed |    time |    per 1M |           |   total | remaining 
INFO  15:34:41,613 ProgressMeter -        Location |     sites | elapsed |     sites | completed | runtime |   runtime 
INFO  15:34:41,825 SAMDataSource$SAMReaders - Initializing SAMRecords in serial 
INFO  15:34:41,835 SAMDataSource$SAMReaders - Done initializing BAM readers: total time 0.01 
INFO  15:35:11,617 ProgressMeter -  chr1:126800197   3.80928E7    30.0 s       0.0 s        4.1%    12.2 m      11.7 m 
INFO  15:35:41,620 ProgressMeter -    chr2:9743401   1.24010496E8    60.0 s       0.0 s        8.3%    12.0 m      11.0 m 
INFO  15:36:11,624 ProgressMeter -   chr2:58070697   1.73473792E8    90.0 s       0.0 s        9.9%    15.1 m      13.6 m 
INFO  15:36:41,626 ProgressMeter -  chr2:167050857   3.37380157E8   120.0 s       0.0 s       13.4%    14.9 m      12.9 m 
INFO  15:37:11,629 ProgressMeter -   chr3:12101701   4.14511306E8     2.5 m       0.0 s       16.3%    15.4 m      12.9 m 
INFO  15:37:41,632 ProgressMeter -  chr3:142081121   4.92449994E8     3.0 m       0.0 s       20.5%    14.7 m      11.7 m 
INFO  15:38:11,634 ProgressMeter -   chr4:20835401   6.53127882E8     3.5 m       0.0 s       22.9%    15.3 m      11.8 m 
INFO  15:38:41,637 ProgressMeter -  chr4:191154181   7.66053964E8     4.0 m       0.0 s       28.4%    14.1 m      10.1 m 
INFO  15:39:11,638 ProgressMeter -   chr5:54674501   7.66053964E8     4.5 m       0.0 s       30.2%    14.9 m      10.4 m 
INFO  15:39:41,640 ProgressMeter -  chr5:160263281   9.81028428E8     5.0 m       0.0 s       33.6%    14.9 m       9.9 m 
INFO  15:40:11,642 ProgressMeter -   chr6:93902669   1.06254196E9     5.5 m       0.0 s       37.3%    14.8 m       9.3 m 
INFO  15:40:41,645 ProgressMeter -   chr7:38041101   1.124833928E9     6.0 m       0.0 s       41.0%    14.6 m       8.6 m 
INFO  15:41:11,647 ProgressMeter -   chr8:14219801   1.29572049E9     6.5 m       0.0 s       45.4%    14.3 m       7.8 m 
INFO  15:41:41,650 ProgressMeter -    chr9:6021201   1.39279569E9     7.0 m       0.0 s       49.8%    14.1 m       7.1 m 
INFO  15:42:11,652 ProgressMeter -   chr9:58987021   1.42646481E9     7.5 m       0.0 s       51.5%    14.6 m       7.1 m 
INFO  15:42:41,654 ProgressMeter -  chr10:34714001   1.572828832E9     8.0 m       0.0 s       55.3%    14.5 m       6.5 m 
INFO  15:43:11,656 ProgressMeter -  chr11:25331913   1.690908055E9     8.5 m       0.0 s       59.4%    14.3 m       5.8 m 
INFO  15:43:41,658 ProgressMeter - chr11:111571917   1.89643525E9     9.0 m       0.0 s       62.1%    14.5 m       5.5 m 
INFO  15:44:11,660 ProgressMeter -  chr12:69538317   1.950914406E9     9.5 m       0.0 s       65.1%    14.6 m       5.1 m 
INFO  15:44:41,662 ProgressMeter -  chr13:45422601   1.992677222E9    10.0 m       0.0 s       68.7%    14.6 m       4.6 m 
INFO  15:45:11,664 ProgressMeter -  chr14:34296409   2.122816691E9    10.5 m       0.0 s       72.0%    14.6 m       4.1 m 
INFO  15:45:41,666 ProgressMeter -  chr15:45204101   2.232900787E9    11.0 m       0.0 s       75.8%    14.5 m       3.5 m 
INFO  15:46:11,668 ProgressMeter -  chr16:38279801   2.307285719E9    11.5 m       0.0 s       78.9%    14.6 m       3.1 m 
INFO  15:46:41,669 ProgressMeter -     chr18:73901   2.551371864E9    12.0 m       0.0 s       83.2%    14.4 m       2.4 m 
INFO  15:47:11,672 ProgressMeter -   chr19:9011601   2.626750754E9    12.5 m       0.0 s       86.0%    14.5 m       2.0 m 
INFO  15:47:41,673 ProgressMeter -  chr20:60646561   2.718573305E9    13.0 m       0.0 s       89.6%    14.5 m      90.0 s 
INFO  15:48:11,675 ProgressMeter -    chrX:8153101   2.82972872E9    13.5 m       0.0 s       93.1%    14.5 m      59.0 s 
INFO  15:48:41,677 ProgressMeter -  chrX:133171929   2.936247366E9    14.0 m       0.0 s       97.2%    14.4 m      24.0 s 
INFO  15:49:11,679 ProgressMeter - chrGL000192.1:547401   3.051425989E9    14.5 m       0.0 s      100.0%    14.5 m       0.0 s 
INFO  15:49:29,742 ProgressMeter -            done   3.101804739E9    14.8 m       0.0 s      100.0%    14.8 m       0.0 s 
INFO  15:49:29,743 ProgressMeter - Total runtime 888.13 secs, 14.80 min, 0.25 hours 
INFO  15:49:29,748 MicroScheduler - 11985 reads were filtered out during the traversal out of approximately 58710 total reads (20.41%) 
INFO  15:49:29,749 MicroScheduler -   -> 0 reads (0.00% of total) failing BadCigarFilter 
INFO  15:49:29,749 MicroScheduler -   -> 149 reads (0.25% of total) failing BadMateFilter 
INFO  15:49:29,749 MicroScheduler -   -> 0 reads (0.00% of total) failing DuplicateReadFilter 
INFO  15:49:29,749 MicroScheduler -   -> 0 reads (0.00% of total) failing FailsVendorQualityCheckFilter 
INFO  15:49:29,749 MicroScheduler -   -> 0 reads (0.00% of total) failing MalformedReadFilter 
INFO  15:49:29,750 MicroScheduler -   -> 0 reads (0.00% of total) failing MappingQualityUnavailableFilter 
INFO  15:49:29,750 MicroScheduler -   -> 11801 reads (20.10% of total) failing MappingQualityZeroFilter 
INFO  15:49:29,751 MicroScheduler -   -> 0 reads (0.00% of total) failing NotPrimaryAlignmentFilter 
INFO  15:49:29,771 MicroScheduler -   -> 0 reads (0.00% of total) failing Platform454Filter 
INFO  15:49:29,771 MicroScheduler -   -> 35 reads (0.06% of total) failing UnmappedReadFilter 
INFO  15:49:30,910 GATKRunReport - Uploaded run statistics report to AWS S3 
</pre>
Process 44355 returned: (0). Elapsed: 0:15:34. Peak memory: (Process: 4.384GB; Pipeline: 4.643GB)

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.realigned.bam`
> `java -Xmx10g -jar /home/jinxu/software/GenomeAnalysisTK.jar -R /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta -T IndelRealigner  -known /home/jinxu/DB/hg19_g1k_v37/Mills_and_1000G_gold_standard.indels.hg19.sites.vcf  -known /home/jinxu/DB/hg19_g1k_v37/ALL.chrMT.phase3_callmom-v0_4.20130502.genotypes.Indel.vcf  -I /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.bam  -targetIntervals /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.target.intervals -o /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.realigned.bam`

<pre>
INFO  15:50:15,058 HelpFormatter - -------------------------------------------------------------------------------- 
INFO  15:50:15,060 HelpFormatter - The Genome Analysis Toolkit (GATK) v3.5-0-g36282e4, Compiled 2015/11/25 04:03:56 
INFO  15:50:15,061 HelpFormatter - Copyright (c) 2010 The Broad Institute 
INFO  15:50:15,061 HelpFormatter - For support and documentation go to http://www.broadinstitute.org/gatk 
INFO  15:50:15,065 HelpFormatter - Program Args: -R /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta -T IndelRealigner -known /home/jinxu/DB/hg19_g1k_v37/Mills_and_1000G_gold_standard.indels.hg19.sites.vcf -known /home/jinxu/DB/hg19_g1k_v37/ALL.chrMT.phase3_callmom-v0_4.20130502.genotypes.Indel.vcf -I /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.bam -targetIntervals /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.target.intervals -o /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.realigned.bam 
INFO  15:50:15,076 HelpFormatter - Executing as jinxu@changrila2.stanford.edu on Linux 3.10.0-327.22.2.el7.x86_64 amd64; OpenJDK 64-Bit Server VM 1.8.0_101-b13. 
INFO  15:50:15,077 HelpFormatter - Date/Time: 2017/08/09 15:50:15 
INFO  15:50:15,077 HelpFormatter - -------------------------------------------------------------------------------- 
INFO  15:50:15,077 HelpFormatter - -------------------------------------------------------------------------------- 
INFO  15:50:15,198 GenomeAnalysisEngine - Strictness is SILENT 
INFO  15:50:15,266 GenomeAnalysisEngine - Downsampling Settings: No downsampling 
INFO  15:50:15,272 SAMDataSource$SAMReaders - Initializing SAMRecords in serial 
INFO  15:50:15,302 SAMDataSource$SAMReaders - Done initializing BAM readers: total time 0.03 
INFO  15:50:15,565 GenomeAnalysisEngine - Preparing for traversal over 1 BAM files 
INFO  15:50:15,569 GenomeAnalysisEngine - Done preparing for traversal 
INFO  15:50:15,570 ProgressMeter - [INITIALIZATION COMPLETE; STARTING PROCESSING] 
INFO  15:50:15,571 ProgressMeter -                 | processed |    time |    per 1M |           |   total | remaining 
INFO  15:50:15,571 ProgressMeter -        Location |     reads | elapsed |     reads | completed | runtime |   runtime 
INFO  15:50:16,240 ReadShardBalancer$1 - Loading BAM index data 
INFO  15:50:16,243 ReadShardBalancer$1 - Done loading BAM index data 
INFO  15:50:24,966 ProgressMeter -            done     59780.0     9.0 s       2.6 m       99.8%     9.0 s       0.0 s 
INFO  15:50:24,966 ProgressMeter - Total runtime 9.40 secs, 0.16 min, 0.00 hours 
INFO  15:50:24,970 MicroScheduler - 0 reads were filtered out during the traversal out of approximately 59780 total reads (0.00%) 
INFO  15:50:24,970 MicroScheduler -   -> 0 reads (0.00% of total) failing BadCigarFilter 
INFO  15:50:24,970 MicroScheduler -   -> 0 reads (0.00% of total) failing MalformedReadFilter 
INFO  15:50:26,409 GATKRunReport - Uploaded run statistics report to AWS S3 
</pre>
Process 44974 returned: (0). Elapsed: 0:00:16. Peak memory: (Process: 1.507GB; Pipeline: 4.643GB)

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.mpileup`
> `/usr/local/bin/samtools mpileup  -l /home/jinxu/DB/hg19_g1k_v37/chrM.len  -f /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta  -q 20  -Q 20 -x /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.realigned.bam > /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.mpileup`

<pre>
[mpileup] 1 samples in 1 input files
<mpileup> Set max per-file depth to 8000
</pre>
Process 45068 returned: (0). Elapsed: 0:00:06.

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.counts`
> `/home/jinxu/bin/pileup_inf_rj.pl /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.mpileup > /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.counts`

<pre>
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 16550.
</pre>
Process 45075 returned: (0). Elapsed: 0:00:06.
> ` awk 'BEGIN{sum=0;num=0}''{sum+=$4;num++}''END{print sum/num}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.counts`

> `mt_aver_depth`	167.922	scATAC_mtSMC	_RES_

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.snv`
> `java -Xmx4g  -jar /home/jinxu/software/VarScan.v2.3.7.jar  pileup2snp /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.mpileup  --min-var-freq 0.01  --min-reads2 2  > /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.snv`

<pre>
Warning: No p-value threshold provided, so p-values will not be calculated
Min coverage:	8
Min reads2:	2
Min var freq:	0.01
Min avg qual:	15
P-value thresh:	0.99
Reading input from /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.mpileup
16550 bases in pileup file
16120 met minimum coverage of 8x
157 SNPs predicted
</pre>
Process 45083 returned: (0). Elapsed: 0:00:06.

Change status from running to completed

Cleaning up conditional list...

Removing glob: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/15-AGGCAGAA-GCGATCTA*.fq
> `Time`	0:17:17	scATAC_mtSMC	_RES_
> `Success`	08-09 15:50:45	scATAC_mtSMC	_RES_

##### [Epilogue:]
*   Total elapsed time:  0:17:17
*     Peak memory used:  4.64 GB
* Pipeline completed at:  (08-09 15:50:45) elapsed:0:17:16 _TIME_

Pypiper terminating spawned child process 44097
