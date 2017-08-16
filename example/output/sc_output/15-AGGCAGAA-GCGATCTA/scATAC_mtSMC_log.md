cd /storage/jinxu/.local/lib/python2.7/site-packages/pypiper; git rev-parse --verify HEAD 2>/dev/null
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `/storage/jinxu/develop/ATAC_mito_sc/src/scATACseq_mtSMC_3.py -P 8 -M 100 -O /home/jinxu/develop/ATAC_mito_sc/example/output -R -S 15-AGGCAGAA-GCGATCTA -s 0 -G hg19 -Q paired -I /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R1.fastq.gz -I2 /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R2.fastq.gz`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/jinxu/develop/ATAC_mito_sc/example
*            Outfolder:  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/
*  Pipeline started at:   (08-16 11:21:31) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/jinxu/.local/lib/python2.7/site-packages/pypiper`
*         Pipeline dir:  `/storage/jinxu/develop/ATAC_mito_sc/src`
*     Pipeline version:  1f3415359de21444b193ffff6fa835aebf46fbe1
*      Pipeline branch:  * develop
*        Pipeline date:  2017-08-14 14:05:38 -0700
*        Pipeline diff:  14 files changed, 191 insertions(+), 634 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R2.fastq.gz']`
*   `single_or_paired`:  `paired`
*         `paired_end`:  `True`
*        `config_file`:  `scATACseq_mtSMC_3.yaml`
*              `input`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R1.fastq.gz']`
*                `mem`:  `100`
*        `sample_name`:  `15-AGGCAGAA-GCGATCTA`
*      `output_parent`:  `/home/jinxu/develop/ATAC_mito_sc/example/output`
*    `genome_assembly`:  `hg19`
*              `cores`:  `8`
*              `stopN`:  `0`
*       `force_follow`:  `False`
*              `fresh`:  `False`
*            `recover`:  `True`
*       `manual_clean`:  `False`

----------------------------------------


Change status from initializing to running
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R1.fastq.gz
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R2.fastq.gz

### Merge/link and fastq conversion:  (08-16 11:21:31) elapsed:0:00:00 _TIME_

Number of input file sets:		2

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz`
> `ln -sf /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R1.fastq.gz /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz`

<pre>
</pre>
Process 35662 returned: (0). Elapsed: 0:00:00.
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz`
> `ln -sf /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R2.fastq.gz /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz`

<pre>
</pre>
Process 35663 returned: (0). Elapsed: 0:00:00.
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz
['/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz', '/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz']

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/`
> ` rm -f  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/stats.tsv`

<pre>
</pre>
Process 35664 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `File_MB`	0.0004	scATAC_mtSMC	_RES_
> `GenomeV`	hg19	scATAC_mtSMC	_RES_

### Adapter trimming:  (08-16 11:21:32) elapsed:0:00:01 _TIME_

> `Raw_reads`	2	scATAC_mtSMC	_RES_

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R1_trimmed.fq`
> `/usr/bin/java -Xmx100m -jar /home/jinxu/software/Trimmomatic-0.36/trimmomatic-0.36.jar PE  -threads 8 /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R1_trimmed.fq /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R1_unpaired.fq /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R2_trimmed.fq /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R2_unpaired.fq ILLUMINACLIP:/home/jinxu/software/Trimmomatic-0.36/adapters/NexteraPE-PE.fa:2:30:10`

<pre>
TrimmomaticPE: Started with arguments:
 -threads 8 /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R1_trimmed.fq /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R1_unpaired.fq /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R2_trimmed.fq /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R2_unpaired.fq ILLUMINACLIP:/home/jinxu/software/Trimmomatic-0.36/adapters/NexteraPE-PE.fa:2:30:10
Using PrefixPair: 'AGATGTGTATAAGAGACAG' and 'AGATGTGTATAAGAGACAG'
Using Long Clipping Sequence: 'GTCTCGTGGGCTCGGAGATGTGTATAAGAGACAG'
Using Long Clipping Sequence: 'TCGTCGGCAGCGTCAGATGTGTATAAGAGACAG'
Using Long Clipping Sequence: 'CTGTCTCTTATACACATCTCCGAGCCCACGAGAC'
Using Long Clipping Sequence: 'CTGTCTCTTATACACATCTGACGCTGCCGACGA'
ILLUMINACLIP: Using 1 prefix pairs, 4 forward/reverse sequences, 0 forward only sequences, 0 reverse only sequences
Quality encoding detected as phred33
Input Read Pairs: 1 Both Surviving: 1 (100.00%) Forward Only Surviving: 0 (0.00%) Reverse Only Surviving: 0 (0.00%) Dropped: 0 (0.00%)
TrimmomaticPE: Completed successfully
</pre>
Process 35669 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `Trimmed_reads`	2.0	scATAC_mtSMC	_RES_
> `Trim_loss_rate`	0.0	scATAC_mtSMC	_RES_

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R1.sai`
> `/home/jinxu/software/bwa-0.7.15/bwa aln  -t  8 /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R1_trimmed.fq -f /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R1.sai`

<pre>
[bwa_aln] 17bp reads: max_diff = 2
[bwa_aln] 38bp reads: max_diff = 3
[bwa_aln] 64bp reads: max_diff = 4
[bwa_aln] 93bp reads: max_diff = 5
[bwa_aln] 124bp reads: max_diff = 6
[bwa_aln] 157bp reads: max_diff = 7
[bwa_aln] 190bp reads: max_diff = 8
[bwa_aln] 225bp reads: max_diff = 9
[bwa_aln_core] calculate SA coordinate... 0.00 sec
[bwa_aln_core] write to the disk... 0.00 sec
[bwa_aln_core] 1 sequences have been processed.
[main] Version: 0.7.15-r1140
[main] CMD: /home/jinxu/software/bwa-0.7.15/bwa aln -t 8 -f /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R1.sai /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R1_trimmed.fq
[main] Real time: 2.103 sec; CPU: 2.098 sec
</pre>
Process 35750 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.432GB; Pipeline: 0.0GB)

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R2.sai`
> `/home/jinxu/software/bwa-0.7.15/bwa aln  -t 8 /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R2_trimmed.fq -f /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R2.sai`

<pre>
[bwa_aln] 17bp reads: max_diff = 2
[bwa_aln] 38bp reads: max_diff = 3
[bwa_aln] 64bp reads: max_diff = 4
[bwa_aln] 93bp reads: max_diff = 5
[bwa_aln] 124bp reads: max_diff = 6
[bwa_aln] 157bp reads: max_diff = 7
[bwa_aln] 190bp reads: max_diff = 8
[bwa_aln] 225bp reads: max_diff = 9
[bwa_aln_core] calculate SA coordinate... 0.00 sec
[bwa_aln_core] write to the disk... 0.00 sec
[bwa_aln_core] 1 sequences have been processed.
[main] Version: 0.7.15-r1140
[main] CMD: /home/jinxu/software/bwa-0.7.15/bwa aln -t 8 -f /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R2.sai /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R2_trimmed.fq
[main] Real time: 2.118 sec; CPU: 2.123 sec
</pre>
Process 35759 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.434GB; Pipeline: 0.432GB)

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.sam`
> `/home/jinxu/software/bwa-0.7.15/bwa sampe -r "@RG\tID:15-AGGCAGAA-GCGATCTA\tSM:MT\tPL:ILLUMINA" /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R1.sai /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R2.sai /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R1_trimmed.fq /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R2_trimmed.fq -f /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.sam`

<pre>
[bwa_sai2sam_pe_core] convert to sequence coordinate... 
[infer_isize] fail to infer insert size: too few good pairs
[bwa_sai2sam_pe_core] time elapses: 4.51 sec
[bwa_sai2sam_pe_core] changing coordinates of 0 alignments.
[bwa_sai2sam_pe_core] align unmapped mate...
[bwa_sai2sam_pe_core] time elapses: 0.45 sec
[bwa_sai2sam_pe_core] refine gapped alignments... 0.00 sec
[bwa_sai2sam_pe_core] print alignments... 0.00 sec
[bwa_sai2sam_pe_core] 1 sequences have been processed.
[main] Version: 0.7.15-r1140
[main] CMD: /home/jinxu/software/bwa-0.7.15/bwa sampe -r @RG\tID:15-AGGCAGAA-GCGATCTA\tSM:MT\tPL:ILLUMINA -f /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.sam /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R1.sai /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R2.sai /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R1_trimmed.fq /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R2_trimmed.fq
[main] Real time: 4.961 sec; CPU: 4.968 sec
</pre>
Process 35768 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.431GB; Pipeline: 0.434GB)

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.bam`
> `java -Xmx4g -jar /home/jinxu/software/picard-tools-2.4.1/picard.jar SortSam SORT_ORDER=coordinate CREATE_INDEX=true VALIDATION_STRINGENCY=SILENT INPUT=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.sam OUTPUT=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.bam`

<pre>
[Wed Aug 16 11:21:49 PDT 2017] picard.sam.SortSam INPUT=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.sam OUTPUT=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT CREATE_INDEX=true    VERBOSITY=INFO QUIET=false COMPRESSION_LEVEL=5 MAX_RECORDS_IN_RAM=500000 CREATE_MD5_FILE=false GA4GH_CLIENT_SECRETS=client_secrets.json
[Wed Aug 16 11:21:49 PDT 2017] Executing as jinxu@changrila2.stanford.edu on Linux 3.10.0-327.22.2.el7.x86_64 amd64; OpenJDK 64-Bit Server VM 1.8.0_101-b13; Picard version: 2.4.1(7c4d36e011df1aec4689b51efcada44e92d1817f_1464389670) JdkDeflater
INFO	2017-08-16 11:21:49	SortSam	Finished reading inputs, merging and writing to output now.
[Wed Aug 16 11:21:49 PDT 2017] picard.sam.SortSam done. Elapsed time: 0.00 minutes.
Runtime.totalMemory()=2058354688
</pre>
Process 35769 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.059GB; Pipeline: 0.434GB)
> `Aligned_reads`	0	scATAC_mtSMC	_RES_
> `Alignment_rate`	0.0	scATAC_mtSMC	_RES_

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.bam`
> `java -Xmx4g -jar /home/jinxu/software/picard-tools-2.4.1/picard.jar MarkDuplicates CREATE_INDEX=true ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT REMOVE_DUPLICATES=true INPUT=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.bam OUTPUT=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.bam METRICS_FILE=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.metrics`

<pre>
[Wed Aug 16 11:21:55 PDT 2017] picard.sam.markduplicates.MarkDuplicates INPUT=[/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.bam] OUTPUT=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.bam METRICS_FILE=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.metrics REMOVE_DUPLICATES=true ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT CREATE_INDEX=true    MAX_SEQUENCES_FOR_DISK_READ_ENDS_MAP=50000 MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=8000 SORTING_COLLECTION_SIZE_RATIO=0.25 REMOVE_SEQUENCING_DUPLICATES=false TAGGING_POLICY=DontTag DUPLICATE_SCORING_STRATEGY=SUM_OF_BASE_QUALITIES PROGRAM_RECORD_ID=MarkDuplicates PROGRAM_GROUP_NAME=MarkDuplicates READ_NAME_REGEX=<optimized capture of last three ':' separated fields as numeric values> OPTICAL_DUPLICATE_PIXEL_DISTANCE=100 VERBOSITY=INFO QUIET=false COMPRESSION_LEVEL=5 MAX_RECORDS_IN_RAM=500000 CREATE_MD5_FILE=false GA4GH_CLIENT_SECRETS=client_secrets.json
[Wed Aug 16 11:21:55 PDT 2017] Executing as jinxu@changrila2.stanford.edu on Linux 3.10.0-327.22.2.el7.x86_64 amd64; OpenJDK 64-Bit Server VM 1.8.0_101-b13; Picard version: 2.4.1(7c4d36e011df1aec4689b51efcada44e92d1817f_1464389670) JdkDeflater
INFO	2017-08-16 11:21:55	MarkDuplicates	Start of doWork freeMemory: 2046000760; totalMemory: 2058354688; maxMemory: 3817865216
INFO	2017-08-16 11:21:55	MarkDuplicates	Reading input file and constructing read end information.
INFO	2017-08-16 11:21:55	MarkDuplicates	Will retain up to 14684096 data points before spilling to disk.
INFO	2017-08-16 11:21:55	MarkDuplicates	Read 0 records. 0 pairs never matched.
INFO	2017-08-16 11:21:55	MarkDuplicates	After buildSortedReadEndLists freeMemory: 1928107424; totalMemory: 2058354688; maxMemory: 3817865216
INFO	2017-08-16 11:21:55	MarkDuplicates	Will retain up to 119308288 duplicate indices before spilling to disk.
INFO	2017-08-16 11:21:56	MarkDuplicates	Traversing read pair information and detecting duplicates.
INFO	2017-08-16 11:21:56	MarkDuplicates	Traversing fragment information and detecting duplicates.
INFO	2017-08-16 11:21:56	MarkDuplicates	Sorting list of duplicate records.
INFO	2017-08-16 11:21:56	MarkDuplicates	After generateDuplicateIndexes freeMemory: 1091250992; totalMemory: 2058354688; maxMemory: 3817865216
INFO	2017-08-16 11:21:56	MarkDuplicates	Marking 0 records as duplicates.
INFO	2017-08-16 11:21:56	MarkDuplicates	Found 0 optical duplicate clusters.
INFO	2017-08-16 11:21:56	MarkDuplicates	Reads are assumed to be ordered by: coordinate
INFO	2017-08-16 11:21:56	MarkDuplicates	Before output close freeMemory: 2044578024; totalMemory: 2058354688; maxMemory: 3817865216
INFO	2017-08-16 11:21:56	MarkDuplicates	After output close freeMemory: 2044705304; totalMemory: 2058354688; maxMemory: 3817865216
[Wed Aug 16 11:21:56 PDT 2017] picard.sam.markduplicates.MarkDuplicates done. Elapsed time: 0.03 minutes.
Runtime.totalMemory()=2058354688
</pre>
Process 35839 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.061GB; Pipeline: 0.434GB)
> `rmdup_reads`	0	scATAC_mtSMC	_RES_
Traceback (most recent call last):
  File "/storage/jinxu/develop/ATAC_mito_sc/src/scATACseq_mtSMC_3.py", line 188, in <module>
    pm.report_result("dup_rate" , round( 1 - float(ar) / float(tr), 2))
ZeroDivisionError: float division by zero

Pypiper terminating spawned child process 35648

Change status from running to failed

### Pipeline failed at:  (08-16 11:22:00) elapsed:0:00:28 _TIME_

('Total time: ', '0:00:29')
Error in atexit._run_exitfuncs:
Traceback (most recent call last):
  File "/usr/lib64/python2.7/atexit.py", line 24, in _run_exitfuncs
    func(*targs, **kargs)
  File "/home/jinxu/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 976, in _exit_handler
    self.fail_pipeline(Exception("Unknown exit failure"))
  File "/home/jinxu/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 932, in fail_pipeline
    raise e
Exception: Unknown exit failure
Error in sys.exitfunc:
Traceback (most recent call last):
  File "/usr/lib64/python2.7/atexit.py", line 24, in _run_exitfuncs
    func(*targs, **kargs)
  File "/home/jinxu/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 976, in _exit_handler
    self.fail_pipeline(Exception("Unknown exit failure"))
  File "/home/jinxu/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 932, in fail_pipeline
    raise e
Exception: Unknown exit failure
cd /storage/jinxu/.local/lib/python2.7/site-packages/pypiper; git rev-parse --verify HEAD 2>/dev/null
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `/storage/jinxu/develop/ATAC_mito_sc/src/scATACseq_mtSMC_3.py -P 8 -M 100 -O /home/jinxu/develop/ATAC_mito_sc/example/output -R -S 15-AGGCAGAA-GCGATCTA -s 0 -G hg19 -Q paired -I /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R1.fastq.gz -I2 /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R2.fastq.gz`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/jinxu/develop/ATAC_mito_sc/example
*            Outfolder:  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/
*  Pipeline started at:   (08-16 13:25:59) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/jinxu/.local/lib/python2.7/site-packages/pypiper`
*         Pipeline dir:  `/storage/jinxu/develop/ATAC_mito_sc/src`
*     Pipeline version:  1f3415359de21444b193ffff6fa835aebf46fbe1
*      Pipeline branch:  * develop
*        Pipeline date:  2017-08-14 14:05:38 -0700
*        Pipeline diff:  15 files changed, 477 insertions(+), 506 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R2.fastq.gz']`
*   `single_or_paired`:  `paired`
*         `paired_end`:  `True`
*        `config_file`:  `scATACseq_mtSMC_3.yaml`
*              `input`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R1.fastq.gz']`
*                `mem`:  `100`
*        `sample_name`:  `15-AGGCAGAA-GCGATCTA`
*      `output_parent`:  `/home/jinxu/develop/ATAC_mito_sc/example/output`
*    `genome_assembly`:  `hg19`
*              `cores`:  `8`
*              `stopN`:  `0`
*       `force_follow`:  `False`
*              `fresh`:  `False`
*            `recover`:  `True`
*       `manual_clean`:  `False`

----------------------------------------


Change status from initializing to running
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R1.fastq.gz
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R2.fastq.gz

### Merge/link and fastq conversion:  (08-16 13:25:59) elapsed:0:00:00 _TIME_

Number of input file sets:		2

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz`
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz`
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz
['/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz', '/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz']

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/`
> ` rm -f  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/stats.tsv`

<pre>
</pre>
Process 42769 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `File_MB`	0.0004	scATAC_mtSMC	_RES_
> `GenomeV`	hg19	scATAC_mtSMC	_RES_

### Adapter trimming:  (08-16 13:25:59) elapsed:0:00:00 _TIME_

> `Raw_reads`	2	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R1_trimmed.fq`
> `Trimmed_reads`	2.0	scATAC_mtSMC	_RES_
> `Trim_loss_rate`	0.0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R1.sai`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R2.sai`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.sam`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.bam`
> `Aligned_reads`	0	scATAC_mtSMC	_RES_
> `Alignment_rate`	0.0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.bam`
> `rmdup_reads`	0	scATAC_mtSMC	_RES_
> `dup_rate`	0	scATAC_mtSMC	_RES_

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.genomeQ30PE.bam`
> `/usr/local/bin/samtools view -b -q  30   -f 0x2 /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.bam  -o /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.genomeQ30PE.bam chr1 chr2 chr3 chr4 chr5 chr6 chr7 chr8 chr9 chr10 chr11 chr12 chr13 chr14 chr15 chr16 chr17 chr18 chr19 chr20 chr21 chr22 chrX`

<pre>
</pre>
Process 42779 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `genomeQ30PE_reads`	0	scATAC_mtSMC	_RES_
> `genomeQ30PE_rate`	0	scATAC_mtSMC	_RES_

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.RefTSSCount`
> `/seq/bedtools-master/bin/bedtools coverage  -abam /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.genomeQ30PE.bam -b /home/jinxu/DB/hg19/annotation/hg19_refGene_TSSRound2kb.bed -counts  > /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.RefTSSCount`

<pre>
</pre>
Process 42782 returned: (0). Elapsed: 0:00:00.
> ` awk 'BEGIN{sum=0}''{sum+=$6;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.RefTSSCount`

> `Total_TSS_reads`	0	scATAC_mtSMC	_RES_
> `TSS_rate`	0	scATAC_mtSMC	_RES_

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.mtQ30PE.bam`
> `/usr/local/bin/samtools view -b -q  30   -f 0x2 /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.bam  -o /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.mtQ30PE.bam  chrMT `

<pre>
</pre>
Process 42785 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `mtQ30PE_reads`	0	scATAC_mtSMC	_RES_
> `mtQ30PE_rate`	0	scATAC_mtSMC	_RES_

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.target.intervals`
> `java -Xmx8g -jar /home/jinxu/software/GenomeAnalysisTK.jar  -R /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta  -T RealignerTargetCreator  -known /home/jinxu/DB/hg19_g1k_v37/ALL.chrMT.phase3_callmom-v0_4.20130502.genotypes.Indel.vcf  -known /home/jinxu/DB/hg19_g1k_v37/Mills_and_1000G_gold_standard.indels.hg19.sites.vcf  -nt 8  -I /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.bam  -o /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.target.intervals`

<pre>
INFO  13:26:01,918 HelpFormatter - -------------------------------------------------------------------------------- 
INFO  13:26:01,921 HelpFormatter - The Genome Analysis Toolkit (GATK) v3.5-0-g36282e4, Compiled 2015/11/25 04:03:56 
INFO  13:26:01,921 HelpFormatter - Copyright (c) 2010 The Broad Institute 
INFO  13:26:01,921 HelpFormatter - For support and documentation go to http://www.broadinstitute.org/gatk 
INFO  13:26:01,925 HelpFormatter - Program Args: -R /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta -T RealignerTargetCreator -known /home/jinxu/DB/hg19_g1k_v37/ALL.chrMT.phase3_callmom-v0_4.20130502.genotypes.Indel.vcf -known /home/jinxu/DB/hg19_g1k_v37/Mills_and_1000G_gold_standard.indels.hg19.sites.vcf -nt 8 -I /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.bam -o /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.target.intervals 
INFO  13:26:01,936 HelpFormatter - Executing as jinxu@changrila2.stanford.edu on Linux 3.10.0-327.22.2.el7.x86_64 amd64; OpenJDK 64-Bit Server VM 1.8.0_101-b13. 
INFO  13:26:01,936 HelpFormatter - Date/Time: 2017/08/16 13:26:01 
INFO  13:26:01,937 HelpFormatter - -------------------------------------------------------------------------------- 
INFO  13:26:01,937 HelpFormatter - -------------------------------------------------------------------------------- 
INFO  13:26:02,006 GenomeAnalysisEngine - Strictness is SILENT 
INFO  13:26:02,116 GenomeAnalysisEngine - Downsampling Settings: Method: BY_SAMPLE, Target Coverage: 1000 
INFO  13:26:02,122 SAMDataSource$SAMReaders - Initializing SAMRecords in serial 
INFO  13:26:02,155 SAMDataSource$SAMReaders - Done initializing BAM readers: total time 0.03 
INFO  13:26:02,277 MicroScheduler - Running the GATK in parallel mode with 8 total threads, 1 CPU thread(s) for each of 8 data thread(s), of 64 processors available on this machine 
INFO  13:26:02,363 GenomeAnalysisEngine - Preparing for traversal over 1 BAM files 
INFO  13:26:02,498 GenomeAnalysisEngine - Done preparing for traversal 
INFO  13:26:02,503 ProgressMeter - [INITIALIZATION COMPLETE; STARTING PROCESSING] 
INFO  13:26:02,504 ProgressMeter -                 | processed |    time |    per 1M |           |   total | remaining 
INFO  13:26:02,504 ProgressMeter -        Location |     sites | elapsed |     sites | completed | runtime |   runtime 
INFO  13:26:02,525 SAMDataSource$SAMReaders - Initializing SAMRecords in serial 
INFO  13:26:02,539 SAMDataSource$SAMReaders - Done initializing BAM readers: total time 0.01 
INFO  13:26:02,540 SAMDataSource$SAMReaders - Initializing SAMRecords in serial 
INFO  13:26:02,548 SAMDataSource$SAMReaders - Done initializing BAM readers: total time 0.01 
INFO  13:26:02,549 SAMDataSource$SAMReaders - Initializing SAMRecords in serial 
INFO  13:26:02,556 SAMDataSource$SAMReaders - Done initializing BAM readers: total time 0.01 
INFO  13:26:02,556 SAMDataSource$SAMReaders - Initializing SAMRecords in serial 
INFO  13:26:02,563 SAMDataSource$SAMReaders - Done initializing BAM readers: total time 0.01 
INFO  13:26:02,563 SAMDataSource$SAMReaders - Initializing SAMRecords in serial 
INFO  13:26:02,569 SAMDataSource$SAMReaders - Done initializing BAM readers: total time 0.01 
INFO  13:26:02,569 SAMDataSource$SAMReaders - Initializing SAMRecords in serial 
INFO  13:26:02,577 SAMDataSource$SAMReaders - Done initializing BAM readers: total time 0.01 
INFO  13:26:02,578 SAMDataSource$SAMReaders - Initializing SAMRecords in serial 
INFO  13:26:02,584 SAMDataSource$SAMReaders - Done initializing BAM readers: total time 0.01 
INFO  13:26:32,510 ProgressMeter -   chr8:24272701         0.0    30.0 s      49.6 w       45.7%    65.0 s      35.0 s 
INFO  13:27:02,513 ProgressMeter -   chr8:53158101         0.0    60.0 s      99.2 w       46.6%     2.1 m      68.0 s 
INFO  13:27:32,516 ProgressMeter -   chr8:81604201         0.0    90.0 s     148.8 w       47.5%     3.2 m      99.0 s 
INFO  13:28:02,519 ProgressMeter -  chr8:110145001         0.0   120.0 s     198.4 w       48.5%     4.1 m       2.1 m 
INFO  13:28:32,521 ProgressMeter -  chr8:142866601         0.0     2.5 m     248.1 w       49.5%     5.0 m       2.5 m 
INFO  13:29:02,524 ProgressMeter -  chr10:20330301   3.44386452E8     3.0 m       0.0 s       54.8%     5.5 m       2.5 m 
INFO  13:29:32,527 ProgressMeter -  chr10:70486901   3.44386452E8     3.5 m       0.0 s       56.4%     6.2 m       2.7 m 
INFO  13:30:02,529 ProgressMeter - chr10:120415201   4.85599883E8     4.0 m       0.0 s       58.1%     6.9 m       2.9 m 
INFO  13:30:32,532 ProgressMeter -  chr13:14074201   8.70385251E8     4.5 m       0.0 s       67.7%     6.7 m       2.2 m 
INFO  13:31:02,535 ProgressMeter -  chr13:57855501   8.70385251E8     5.0 m       0.0 s       69.1%     7.2 m       2.2 m 
INFO  13:31:32,540 ProgressMeter -   chr18:8289001   1.81590789E9     5.5 m       0.0 s       83.5%     6.6 m      65.0 s 
INFO  13:32:02,542 ProgressMeter -  chr21:17026101   2.199936179E9     6.0 m       0.0 s       90.2%     6.6 m      38.0 s 
INFO  13:32:32,548 ProgressMeter -    chrX:8741301   2.33714241E9     6.5 m       0.0 s       93.2%     7.0 m      28.0 s 
INFO  13:33:02,550 ProgressMeter - chrGL000192.1:547401   2.835856047E9     7.0 m       0.0 s      100.0%     7.0 m       0.0 s 
INFO  13:33:32,553 ProgressMeter - chrGL000192.1:547401   2.946534179E9     7.5 m       0.0 s      100.0%     7.5 m       0.0 s 
INFO  13:34:02,555 ProgressMeter - chrGL000192.1:547401   2.946534179E9     8.0 m       0.0 s      100.0%     8.0 m       0.0 s 
INFO  13:34:11,557 ProgressMeter -            done   3.101804739E9     8.2 m       0.0 s      100.0%     8.2 m       0.0 s 
INFO  13:34:11,557 ProgressMeter - Total runtime 489.06 secs, 8.15 min, 0.14 hours 
INFO  13:34:12,834 GATKRunReport - Uploaded run statistics report to AWS S3 
</pre>
Process 42787 returned: (0). Elapsed: 0:08:33. Peak memory: (Process: 6.09GB; Pipeline: 0.0GB)

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.realigned.bam`
> `java -Xmx10g -jar /home/jinxu/software/GenomeAnalysisTK.jar -R /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta -T IndelRealigner  -known /home/jinxu/DB/hg19_g1k_v37/Mills_and_1000G_gold_standard.indels.hg19.sites.vcf  -known /home/jinxu/DB/hg19_g1k_v37/ALL.chrMT.phase3_callmom-v0_4.20130502.genotypes.Indel.vcf  -I /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.bam  -targetIntervals /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.target.intervals -o /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.realigned.bam`

<pre>
INFO  13:34:35,398 HelpFormatter - -------------------------------------------------------------------------------- 
INFO  13:34:35,401 HelpFormatter - The Genome Analysis Toolkit (GATK) v3.5-0-g36282e4, Compiled 2015/11/25 04:03:56 
INFO  13:34:35,401 HelpFormatter - Copyright (c) 2010 The Broad Institute 
INFO  13:34:35,401 HelpFormatter - For support and documentation go to http://www.broadinstitute.org/gatk 
INFO  13:34:35,406 HelpFormatter - Program Args: -R /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta -T IndelRealigner -known /home/jinxu/DB/hg19_g1k_v37/Mills_and_1000G_gold_standard.indels.hg19.sites.vcf -known /home/jinxu/DB/hg19_g1k_v37/ALL.chrMT.phase3_callmom-v0_4.20130502.genotypes.Indel.vcf -I /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.bam -targetIntervals /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.target.intervals -o /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.realigned.bam 
INFO  13:34:35,415 HelpFormatter - Executing as jinxu@changrila2.stanford.edu on Linux 3.10.0-327.22.2.el7.x86_64 amd64; OpenJDK 64-Bit Server VM 1.8.0_101-b13. 
INFO  13:34:35,416 HelpFormatter - Date/Time: 2017/08/16 13:34:35 
INFO  13:34:35,416 HelpFormatter - -------------------------------------------------------------------------------- 
INFO  13:34:35,417 HelpFormatter - -------------------------------------------------------------------------------- 
INFO  13:34:35,544 GenomeAnalysisEngine - Strictness is SILENT 
INFO  13:34:35,617 GenomeAnalysisEngine - Downsampling Settings: No downsampling 
INFO  13:34:35,623 SAMDataSource$SAMReaders - Initializing SAMRecords in serial 
INFO  13:34:35,655 SAMDataSource$SAMReaders - Done initializing BAM readers: total time 0.03 
INFO  13:34:35,947 GenomeAnalysisEngine - Preparing for traversal over 1 BAM files 
INFO  13:34:35,953 GenomeAnalysisEngine - Done preparing for traversal 
INFO  13:34:35,953 ProgressMeter - [INITIALIZATION COMPLETE; STARTING PROCESSING] 
INFO  13:34:35,954 ProgressMeter -                 | processed |    time |    per 1M |           |   total | remaining 
INFO  13:34:35,954 ProgressMeter -        Location |     reads | elapsed |     reads | completed | runtime |   runtime 
INFO  13:34:36,655 ReadShardBalancer$1 - Loading BAM index data 
INFO  13:34:36,658 ReadShardBalancer$1 - Done loading BAM index data 
INFO  13:34:36,779 ProgressMeter -            done         2.0     0.0 s       4.8 d      100.0%     0.0 s       0.0 s 
INFO  13:34:36,781 ProgressMeter - Total runtime 0.83 secs, 0.01 min, 0.00 hours 
INFO  13:34:36,787 MicroScheduler - 0 reads were filtered out during the traversal out of approximately 2 total reads (0.00%) 
INFO  13:34:36,787 MicroScheduler -   -> 0 reads (0.00% of total) failing BadCigarFilter 
INFO  13:34:36,787 MicroScheduler -   -> 0 reads (0.00% of total) failing MalformedReadFilter 
INFO  13:34:40,721 GATKRunReport - Uploaded run statistics report to AWS S3 
</pre>
Process 43362 returned: (0). Elapsed: 0:00:16. Peak memory: (Process: 0.864GB; Pipeline: 6.09GB)

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.mpileup`
> `/usr/local/bin/samtools mpileup  -l /home/jinxu/DB/hg19_g1k_v37/chrM.len  -f /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta  -q 20  -Q 20 -x /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.realigned.bam > /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.mpileup`

<pre>
[mpileup] 1 samples in 1 input files
<mpileup> Set max per-file depth to 8000
</pre>
Process 43437 returned: (0). Elapsed: 0:00:00.

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.counts`
> `/home/jinxu/bin/pileup_inf_rj.pl /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.mpileup > /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.counts`

<pre>
</pre>
Process 43439 returned: (0). Elapsed: 0:00:00.
> ` awk 'BEGIN{sum=0;num=0}''{sum+=$4;num++}''END{print sum/num}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.counts`

awk: cmd. line:1: fatal: division by zero attempted

Change status from running to failed

### Pipeline failed at:  (08-16 13:34:49) elapsed:0:08:51 _TIME_

('Total time: ', '0:08:51')
Traceback (most recent call last):
  File "/storage/jinxu/develop/ATAC_mito_sc/src/scATACseq_mtSMC_3.py", line 342, in <module>
    mt_aver_depth = pm.checkprint(cmd)
  File "/home/jinxu/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 503, in checkprint
    self.fail_pipeline(e)
  File "/home/jinxu/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 932, in fail_pipeline
    raise e
subprocess.CalledProcessError: Command '['awk', 'BEGIN{sum=0;num=0}{sum+=$4;num++}END{print sum/num}', '/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.counts']' returned non-zero exit status 2

Pypiper terminating spawned child process 42755
cd /storage/jinxu/.local/lib/python2.7/site-packages/pypiper; git rev-parse --verify HEAD 2>/dev/null
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `/storage/jinxu/develop/ATAC_mito_sc/src/scATACseq_mtSMC_3.py -P 8 -M 100 -O /home/jinxu/develop/ATAC_mito_sc/example/output -R -S 15-AGGCAGAA-GCGATCTA -s 0 -G hg19 -Q paired -I /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R1.fastq.gz -I2 /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R2.fastq.gz`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/jinxu/develop/ATAC_mito_sc/example
*            Outfolder:  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/
*  Pipeline started at:   (08-16 13:42:32) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/jinxu/.local/lib/python2.7/site-packages/pypiper`
*         Pipeline dir:  `/storage/jinxu/develop/ATAC_mito_sc/src`
*     Pipeline version:  1f3415359de21444b193ffff6fa835aebf46fbe1
*      Pipeline branch:  * develop
*        Pipeline date:  2017-08-14 14:05:38 -0700
*        Pipeline diff:  15 files changed, 827 insertions(+), 441 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R2.fastq.gz']`
*   `single_or_paired`:  `paired`
*         `paired_end`:  `True`
*        `config_file`:  `scATACseq_mtSMC_3.yaml`
*              `input`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R1.fastq.gz']`
*                `mem`:  `100`
*        `sample_name`:  `15-AGGCAGAA-GCGATCTA`
*      `output_parent`:  `/home/jinxu/develop/ATAC_mito_sc/example/output`
*    `genome_assembly`:  `hg19`
*              `cores`:  `8`
*              `stopN`:  `0`
*       `force_follow`:  `False`
*              `fresh`:  `False`
*            `recover`:  `True`
*       `manual_clean`:  `False`

----------------------------------------


Change status from initializing to running
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R1.fastq.gz
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R2.fastq.gz

### Merge/link and fastq conversion:  (08-16 13:42:32) elapsed:0:00:00 _TIME_

Number of input file sets:		2

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz`
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz`
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz
['/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz', '/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz']

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/`
> ` rm -f  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/stats.tsv`

<pre>
</pre>
Process 44088 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `File_MB`	0.0004	scATAC_mtSMC	_RES_
> `GenomeV`	hg19	scATAC_mtSMC	_RES_

### Adapter trimming:  (08-16 13:42:32) elapsed:0:00:00 _TIME_

> `Raw_reads`	2	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R1_trimmed.fq`
> `Trimmed_reads`	2.0	scATAC_mtSMC	_RES_
> `Trim_loss_rate`	0.0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R1.sai`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R2.sai`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.sam`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.bam`
> `Aligned_reads`	0	scATAC_mtSMC	_RES_
> `Alignment_rate`	0.0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.bam`
> `rmdup_reads`	0	scATAC_mtSMC	_RES_
> `dup_rate`	0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.genomeQ30PE.bam`
> `genomeQ30PE_reads`	0	scATAC_mtSMC	_RES_
> `genomeQ30PE_rate`	0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.RefTSSCount`
> ` awk 'BEGIN{sum=0}''{sum+=$6;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.RefTSSCount`

> `Total_TSS_reads`	0	scATAC_mtSMC	_RES_
> `TSS_rate`	0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.mtQ30PE.bam`
> `mtQ30PE_reads`	0	scATAC_mtSMC	_RES_
> `mtQ30PE_rate`	0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.target.intervals`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.realigned.bam`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.mpileup`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.counts`
> ` awk 'BEGIN{sum=0;}''{sum+=$4;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.counts`

> ` awk 'BEGIN{num=0;}''{num++;}''END{print num}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.counts`

Traceback (most recent call last):
  File "/storage/jinxu/develop/ATAC_mito_sc/src/scATACseq_mtSMC_3.py", line 346, in <module>
    pm.report_result("mt_aver_depth", round(float(mt_total_depth) / float(mt_total_site), 2))
ZeroDivisionError: float division by zero

Pypiper terminating spawned child process 44074

Change status from running to failed

### Pipeline failed at:  (08-16 13:42:33) elapsed:0:00:00 _TIME_

('Total time: ', '0:00:01')
Error in atexit._run_exitfuncs:
Traceback (most recent call last):
  File "/usr/lib64/python2.7/atexit.py", line 24, in _run_exitfuncs
    func(*targs, **kargs)
  File "/home/jinxu/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 976, in _exit_handler
    self.fail_pipeline(Exception("Unknown exit failure"))
  File "/home/jinxu/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 932, in fail_pipeline
    raise e
Exception: Unknown exit failure
Error in sys.exitfunc:
Traceback (most recent call last):
  File "/usr/lib64/python2.7/atexit.py", line 24, in _run_exitfuncs
    func(*targs, **kargs)
  File "/home/jinxu/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 976, in _exit_handler
    self.fail_pipeline(Exception("Unknown exit failure"))
  File "/home/jinxu/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 932, in fail_pipeline
    raise e
Exception: Unknown exit failure
cd /storage/jinxu/.local/lib/python2.7/site-packages/pypiper; git rev-parse --verify HEAD 2>/dev/null
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `/storage/jinxu/develop/ATAC_mito_sc/src/scATACseq_mtSMC_3.py -P 8 -M 100 -O /home/jinxu/develop/ATAC_mito_sc/example/output -R -S 15-AGGCAGAA-GCGATCTA -s 0 -G hg19 -Q paired -I /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R1.fastq.gz -I2 /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R2.fastq.gz`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/jinxu/develop/ATAC_mito_sc/example
*            Outfolder:  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/
*  Pipeline started at:   (08-16 13:45:27) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/jinxu/.local/lib/python2.7/site-packages/pypiper`
*         Pipeline dir:  `/storage/jinxu/develop/ATAC_mito_sc/src`
*     Pipeline version:  1f3415359de21444b193ffff6fa835aebf46fbe1
*      Pipeline branch:  * develop
*        Pipeline date:  2017-08-14 14:05:38 -0700
*        Pipeline diff:  15 files changed, 1113 insertions(+), 434 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R2.fastq.gz']`
*   `single_or_paired`:  `paired`
*         `paired_end`:  `True`
*        `config_file`:  `scATACseq_mtSMC_3.yaml`
*              `input`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R1.fastq.gz']`
*                `mem`:  `100`
*        `sample_name`:  `15-AGGCAGAA-GCGATCTA`
*      `output_parent`:  `/home/jinxu/develop/ATAC_mito_sc/example/output`
*    `genome_assembly`:  `hg19`
*              `cores`:  `8`
*              `stopN`:  `0`
*       `force_follow`:  `False`
*              `fresh`:  `False`
*            `recover`:  `True`
*       `manual_clean`:  `False`

----------------------------------------


Change status from initializing to running
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R1.fastq.gz
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R2.fastq.gz

### Merge/link and fastq conversion:  (08-16 13:45:27) elapsed:0:00:00 _TIME_

Number of input file sets:		2

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz`
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz`
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz
['/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz', '/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz']

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/`
> ` rm -f  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/stats.tsv`

<pre>
</pre>
Process 44306 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `File_MB`	0.0004	scATAC_mtSMC	_RES_
> `GenomeV`	hg19	scATAC_mtSMC	_RES_

### Adapter trimming:  (08-16 13:45:27) elapsed:0:00:00 _TIME_

> `Raw_reads`	2	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R1_trimmed.fq`
> `Trimmed_reads`	2.0	scATAC_mtSMC	_RES_
> `Trim_loss_rate`	0.0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R1.sai`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R2.sai`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.sam`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.bam`
> `Aligned_reads`	0	scATAC_mtSMC	_RES_
> `Alignment_rate`	0.0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.bam`
> `rmdup_reads`	0	scATAC_mtSMC	_RES_
> `dup_rate`	0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.genomeQ30PE.bam`
> `genomeQ30PE_reads`	0	scATAC_mtSMC	_RES_
> `genomeQ30PE_rate`	0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.RefTSSCount`
> ` awk 'BEGIN{sum=0}''{sum+=$6;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.RefTSSCount`

> `Total_TSS_reads`	0	scATAC_mtSMC	_RES_
> `TSS_rate`	0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.mtQ30PE.bam`
> `mtQ30PE_reads`	0	scATAC_mtSMC	_RES_
> `mtQ30PE_rate`	0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.target.intervals`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.realigned.bam`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.mpileup`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.counts`
> ` awk 'BEGIN{sum=0;}''{sum+=$4;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.counts`

> ` awk 'BEGIN{num=0;}''{num++;}''END{print num}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.counts`

Traceback (most recent call last):
  File "/storage/jinxu/develop/ATAC_mito_sc/src/scATACseq_mtSMC_3.py", line 347, in <module>
    pm.report_result("mt_aver_depth", round(float(mt_total_depth) / float(mt_total_site), 2))
ZeroDivisionError: float division by zero

Pypiper terminating spawned child process 44290

Change status from running to failed

### Pipeline failed at:  (08-16 13:45:28) elapsed:0:00:00 _TIME_

('Total time: ', '0:00:01')
Error in atexit._run_exitfuncs:
Traceback (most recent call last):
  File "/usr/lib64/python2.7/atexit.py", line 24, in _run_exitfuncs
    func(*targs, **kargs)
  File "/home/jinxu/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 976, in _exit_handler
    self.fail_pipeline(Exception("Unknown exit failure"))
  File "/home/jinxu/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 932, in fail_pipeline
    raise e
Exception: Unknown exit failure
Error in sys.exitfunc:
Traceback (most recent call last):
  File "/usr/lib64/python2.7/atexit.py", line 24, in _run_exitfuncs
    func(*targs, **kargs)
  File "/home/jinxu/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 976, in _exit_handler
    self.fail_pipeline(Exception("Unknown exit failure"))
  File "/home/jinxu/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 932, in fail_pipeline
    raise e
Exception: Unknown exit failure
cd /storage/jinxu/.local/lib/python2.7/site-packages/pypiper; git rev-parse --verify HEAD 2>/dev/null
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `/storage/jinxu/develop/ATAC_mito_sc/src/scATACseq_mtSMC_3.py -P 8 -M 100 -O /home/jinxu/develop/ATAC_mito_sc/example/output -R -S 15-AGGCAGAA-GCGATCTA -s 0 -G hg19 -Q paired -I /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R1.fastq.gz -I2 /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R2.fastq.gz`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/jinxu/develop/ATAC_mito_sc/example
*            Outfolder:  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/
*  Pipeline started at:   (08-16 13:46:37) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/jinxu/.local/lib/python2.7/site-packages/pypiper`
*         Pipeline dir:  `/storage/jinxu/develop/ATAC_mito_sc/src`
*     Pipeline version:  1f3415359de21444b193ffff6fa835aebf46fbe1
*      Pipeline branch:  * develop
*        Pipeline date:  2017-08-14 14:05:38 -0700
*        Pipeline diff:  15 files changed, 1409 insertions(+), 435 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R2.fastq.gz']`
*   `single_or_paired`:  `paired`
*         `paired_end`:  `True`
*        `config_file`:  `scATACseq_mtSMC_3.yaml`
*              `input`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R1.fastq.gz']`
*                `mem`:  `100`
*        `sample_name`:  `15-AGGCAGAA-GCGATCTA`
*      `output_parent`:  `/home/jinxu/develop/ATAC_mito_sc/example/output`
*    `genome_assembly`:  `hg19`
*              `cores`:  `8`
*              `stopN`:  `0`
*       `force_follow`:  `False`
*              `fresh`:  `False`
*            `recover`:  `True`
*       `manual_clean`:  `False`

----------------------------------------


Change status from initializing to running
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R1.fastq.gz
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R2.fastq.gz

### Merge/link and fastq conversion:  (08-16 13:46:37) elapsed:0:00:00 _TIME_

Number of input file sets:		2

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz`
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz`
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz
['/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz', '/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz']

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/`
> ` rm -f  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/stats.tsv`

<pre>
</pre>
Process 44426 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `File_MB`	0.0004	scATAC_mtSMC	_RES_
> `GenomeV`	hg19	scATAC_mtSMC	_RES_

### Adapter trimming:  (08-16 13:46:37) elapsed:0:00:00 _TIME_

> `Raw_reads`	2	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R1_trimmed.fq`
> `Trimmed_reads`	2.0	scATAC_mtSMC	_RES_
> `Trim_loss_rate`	0.0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R1.sai`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R2.sai`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.sam`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.bam`
> `Aligned_reads`	0	scATAC_mtSMC	_RES_
> `Alignment_rate`	0.0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.bam`
> `rmdup_reads`	0	scATAC_mtSMC	_RES_
> `dup_rate`	0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.genomeQ30PE.bam`
> `genomeQ30PE_reads`	0	scATAC_mtSMC	_RES_
> `genomeQ30PE_rate`	0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.RefTSSCount`
> ` awk 'BEGIN{sum=0}''{sum+=$6;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.RefTSSCount`

> `Total_TSS_reads`	0	scATAC_mtSMC	_RES_
> `TSS_rate`	0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.mtQ30PE.bam`
> `mtQ30PE_reads`	0	scATAC_mtSMC	_RES_
> `mtQ30PE_rate`	0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.target.intervals`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.realigned.bam`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.mpileup`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.counts`
> ` awk 'BEGIN{sum=0;}''{sum+=$4;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.counts`

> ` awk 'BEGIN{num=0;}''{num++;}''END{print num}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.counts`

Traceback (most recent call last):
  File "/storage/jinxu/develop/ATAC_mito_sc/src/scATACseq_mtSMC_3.py", line 347, in <module>
    pm.report_result("mt_aver_depth", round(float(mt_total_depth) / float(mt_total_site), 2))
ZeroDivisionError: float division by zero

Pypiper terminating spawned child process 44412

Change status from running to failed

### Pipeline failed at:  (08-16 13:46:37) elapsed:0:00:00 _TIME_

('Total time: ', '0:00:01')
Error in atexit._run_exitfuncs:
Traceback (most recent call last):
  File "/usr/lib64/python2.7/atexit.py", line 24, in _run_exitfuncs
    func(*targs, **kargs)
  File "/home/jinxu/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 976, in _exit_handler
    self.fail_pipeline(Exception("Unknown exit failure"))
  File "/home/jinxu/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 932, in fail_pipeline
    raise e
Exception: Unknown exit failure
Error in sys.exitfunc:
Traceback (most recent call last):
  File "/usr/lib64/python2.7/atexit.py", line 24, in _run_exitfuncs
    func(*targs, **kargs)
  File "/home/jinxu/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 976, in _exit_handler
    self.fail_pipeline(Exception("Unknown exit failure"))
  File "/home/jinxu/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 932, in fail_pipeline
    raise e
Exception: Unknown exit failure
cd /storage/jinxu/.local/lib/python2.7/site-packages/pypiper; git rev-parse --verify HEAD 2>/dev/null
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `/storage/jinxu/develop/ATAC_mito_sc/src/scATACseq_mtSMC_3.py -P 8 -M 100 -O /home/jinxu/develop/ATAC_mito_sc/example/output -R -S 15-AGGCAGAA-GCGATCTA -s 0 -G hg19 -Q paired -I /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R1.fastq.gz -I2 /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R2.fastq.gz`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/jinxu/develop/ATAC_mito_sc/example
*            Outfolder:  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/
*  Pipeline started at:   (08-16 13:47:05) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/jinxu/.local/lib/python2.7/site-packages/pypiper`
*         Pipeline dir:  `/storage/jinxu/develop/ATAC_mito_sc/src`
*     Pipeline version:  1f3415359de21444b193ffff6fa835aebf46fbe1
*      Pipeline branch:  * develop
*        Pipeline date:  2017-08-14 14:05:38 -0700
*        Pipeline diff:  15 files changed, 1705 insertions(+), 435 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R2.fastq.gz']`
*   `single_or_paired`:  `paired`
*         `paired_end`:  `True`
*        `config_file`:  `scATACseq_mtSMC_3.yaml`
*              `input`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R1.fastq.gz']`
*                `mem`:  `100`
*        `sample_name`:  `15-AGGCAGAA-GCGATCTA`
*      `output_parent`:  `/home/jinxu/develop/ATAC_mito_sc/example/output`
*    `genome_assembly`:  `hg19`
*              `cores`:  `8`
*              `stopN`:  `0`
*       `force_follow`:  `False`
*              `fresh`:  `False`
*            `recover`:  `True`
*       `manual_clean`:  `False`

----------------------------------------


Change status from initializing to running
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R1.fastq.gz
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R2.fastq.gz

### Merge/link and fastq conversion:  (08-16 13:47:05) elapsed:0:00:00 _TIME_

Number of input file sets:		2

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz`
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz`
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz
['/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz', '/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz']

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/`
> ` rm -f  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/stats.tsv`

<pre>
</pre>
Process 44520 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `File_MB`	0.0004	scATAC_mtSMC	_RES_
> `GenomeV`	hg19	scATAC_mtSMC	_RES_

### Adapter trimming:  (08-16 13:47:06) elapsed:0:00:00 _TIME_

> `Raw_reads`	2	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R1_trimmed.fq`
> `Trimmed_reads`	2.0	scATAC_mtSMC	_RES_
> `Trim_loss_rate`	0.0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R1.sai`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R2.sai`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.sam`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.bam`
> `Aligned_reads`	0	scATAC_mtSMC	_RES_
> `Alignment_rate`	0.0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.bam`
> `rmdup_reads`	0	scATAC_mtSMC	_RES_
> `dup_rate`	0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.genomeQ30PE.bam`
> `genomeQ30PE_reads`	0	scATAC_mtSMC	_RES_
> `genomeQ30PE_rate`	0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.RefTSSCount`
> ` awk 'BEGIN{sum=0}''{sum+=$6;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.RefTSSCount`

> `Total_TSS_reads`	0	scATAC_mtSMC	_RES_
> `TSS_rate`	0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.mtQ30PE.bam`
> `mtQ30PE_reads`	0	scATAC_mtSMC	_RES_
> `mtQ30PE_rate`	0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.target.intervals`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.realigned.bam`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.mpileup`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.counts`
> ` awk 'BEGIN{sum=0;}''{sum+=$4;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.counts`

> ` awk 'BEGIN{num=0;}''{num++;}''END{print num}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.counts`

0

Traceback (most recent call last):
  File "/storage/jinxu/develop/ATAC_mito_sc/src/scATACseq_mtSMC_3.py", line 347, in <module>
    pm.report_result("mt_aver_depth", round(float(mt_total_depth) / float(mt_total_site), 2))
ZeroDivisionError: float division by zero

Pypiper terminating spawned child process 44506

Change status from running to failed

### Pipeline failed at:  (08-16 13:47:06) elapsed:0:00:00 _TIME_

('Total time: ', '0:00:01')
Error in atexit._run_exitfuncs:
Traceback (most recent call last):
  File "/usr/lib64/python2.7/atexit.py", line 24, in _run_exitfuncs
    func(*targs, **kargs)
  File "/home/jinxu/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 976, in _exit_handler
    self.fail_pipeline(Exception("Unknown exit failure"))
  File "/home/jinxu/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 932, in fail_pipeline
    raise e
Exception: Unknown exit failure
Error in sys.exitfunc:
Traceback (most recent call last):
  File "/usr/lib64/python2.7/atexit.py", line 24, in _run_exitfuncs
    func(*targs, **kargs)
  File "/home/jinxu/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 976, in _exit_handler
    self.fail_pipeline(Exception("Unknown exit failure"))
  File "/home/jinxu/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 932, in fail_pipeline
    raise e
Exception: Unknown exit failure
cd /storage/jinxu/.local/lib/python2.7/site-packages/pypiper; git rev-parse --verify HEAD 2>/dev/null
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `/storage/jinxu/develop/ATAC_mito_sc/src/scATACseq_mtSMC_3.py -P 8 -M 100 -O /home/jinxu/develop/ATAC_mito_sc/example/output -R -S 15-AGGCAGAA-GCGATCTA -s 0 -G hg19 -Q paired -I /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R1.fastq.gz -I2 /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R2.fastq.gz`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/jinxu/develop/ATAC_mito_sc/example
*            Outfolder:  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/
*  Pipeline started at:   (08-16 13:51:27) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/jinxu/.local/lib/python2.7/site-packages/pypiper`
*         Pipeline dir:  `/storage/jinxu/develop/ATAC_mito_sc/src`
*     Pipeline version:  1f3415359de21444b193ffff6fa835aebf46fbe1
*      Pipeline branch:  * develop
*        Pipeline date:  2017-08-14 14:05:38 -0700
*        Pipeline diff:  15 files changed, 2003 insertions(+), 435 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R2.fastq.gz']`
*   `single_or_paired`:  `paired`
*         `paired_end`:  `True`
*        `config_file`:  `scATACseq_mtSMC_3.yaml`
*              `input`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R1.fastq.gz']`
*                `mem`:  `100`
*        `sample_name`:  `15-AGGCAGAA-GCGATCTA`
*      `output_parent`:  `/home/jinxu/develop/ATAC_mito_sc/example/output`
*    `genome_assembly`:  `hg19`
*              `cores`:  `8`
*              `stopN`:  `0`
*       `force_follow`:  `False`
*              `fresh`:  `False`
*            `recover`:  `True`
*       `manual_clean`:  `False`

----------------------------------------


Change status from initializing to running
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R1.fastq.gz
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R2.fastq.gz

### Merge/link and fastq conversion:  (08-16 13:51:27) elapsed:0:00:00 _TIME_

Number of input file sets:		2

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz`
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz`
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz
['/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz', '/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz']

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/`
> ` rm -f  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/stats.tsv`

<pre>
</pre>
Process 45041 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `File_MB`	0.0004	scATAC_mtSMC	_RES_
> `GenomeV`	hg19	scATAC_mtSMC	_RES_

### Adapter trimming:  (08-16 13:51:27) elapsed:0:00:00 _TIME_

> `Raw_reads`	2	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R1_trimmed.fq`
> `Trimmed_reads`	2.0	scATAC_mtSMC	_RES_
> `Trim_loss_rate`	0.0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R1.sai`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R2.sai`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.sam`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.bam`
> `Aligned_reads`	0	scATAC_mtSMC	_RES_
> `Alignment_rate`	0.0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.bam`
> `rmdup_reads`	0	scATAC_mtSMC	_RES_
> `dup_rate`	0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.genomeQ30PE.bam`
> `genomeQ30PE_reads`	0	scATAC_mtSMC	_RES_
> `genomeQ30PE_rate`	0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.RefTSSCount`
> ` awk 'BEGIN{sum=0}''{sum+=$6;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.RefTSSCount`

> `Total_TSS_reads`	0	scATAC_mtSMC	_RES_
> `TSS_rate`	0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.mtQ30PE.bam`
> `mtQ30PE_reads`	0	scATAC_mtSMC	_RES_
> `mtQ30PE_rate`	0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.target.intervals`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.realigned.bam`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.mpileup`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.counts`
> ` awk 'BEGIN{sum=0;}''{sum+=$4;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.counts`

> ` awk 'BEGIN{num=0;}''{num++;}''END{print num}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.counts`

0

Traceback (most recent call last):
  File "/storage/jinxu/develop/ATAC_mito_sc/src/scATACseq_mtSMC_3.py", line 347, in <module>
    pm.report_result("mt_aver_depth", round(float(mt_total_depth) / float(mt_total_site), 2))
ZeroDivisionError: float division by zero

Pypiper terminating spawned child process 45027

Change status from running to failed

### Pipeline failed at:  (08-16 13:51:27) elapsed:0:00:00 _TIME_

('Total time: ', '0:00:01')
Error in atexit._run_exitfuncs:
Traceback (most recent call last):
  File "/usr/lib64/python2.7/atexit.py", line 24, in _run_exitfuncs
    func(*targs, **kargs)
  File "/home/jinxu/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 976, in _exit_handler
    self.fail_pipeline(Exception("Unknown exit failure"))
  File "/home/jinxu/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 932, in fail_pipeline
    raise e
Exception: Unknown exit failure
Error in sys.exitfunc:
Traceback (most recent call last):
  File "/usr/lib64/python2.7/atexit.py", line 24, in _run_exitfuncs
    func(*targs, **kargs)
  File "/home/jinxu/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 976, in _exit_handler
    self.fail_pipeline(Exception("Unknown exit failure"))
  File "/home/jinxu/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 932, in fail_pipeline
    raise e
Exception: Unknown exit failure
cd /storage/jinxu/.local/lib/python2.7/site-packages/pypiper; git rev-parse --verify HEAD 2>/dev/null
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `/storage/jinxu/develop/ATAC_mito_sc/src/scATACseq_mtSMC_3.py -P 8 -M 100 -O /home/jinxu/develop/ATAC_mito_sc/example/output -R -S 15-AGGCAGAA-GCGATCTA -s 0 -G hg19 -Q paired -I /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R1.fastq.gz -I2 /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R2.fastq.gz`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/jinxu/develop/ATAC_mito_sc/example
*            Outfolder:  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/
*  Pipeline started at:   (08-16 13:52:23) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/jinxu/.local/lib/python2.7/site-packages/pypiper`
*         Pipeline dir:  `/storage/jinxu/develop/ATAC_mito_sc/src`
*     Pipeline version:  1f3415359de21444b193ffff6fa835aebf46fbe1
*      Pipeline branch:  * develop
*        Pipeline date:  2017-08-14 14:05:38 -0700
*        Pipeline diff:  15 files changed, 2299 insertions(+), 435 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R2.fastq.gz']`
*   `single_or_paired`:  `paired`
*         `paired_end`:  `True`
*        `config_file`:  `scATACseq_mtSMC_3.yaml`
*              `input`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R1.fastq.gz']`
*                `mem`:  `100`
*        `sample_name`:  `15-AGGCAGAA-GCGATCTA`
*      `output_parent`:  `/home/jinxu/develop/ATAC_mito_sc/example/output`
*    `genome_assembly`:  `hg19`
*              `cores`:  `8`
*              `stopN`:  `0`
*       `force_follow`:  `False`
*              `fresh`:  `False`
*            `recover`:  `True`
*       `manual_clean`:  `False`

----------------------------------------


Change status from initializing to running
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R1.fastq.gz
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R2.fastq.gz

### Merge/link and fastq conversion:  (08-16 13:52:23) elapsed:0:00:00 _TIME_

Number of input file sets:		2

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz`
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz`
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz
['/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz', '/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz']

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/`
> ` rm -f  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/stats.tsv`

<pre>
</pre>
Process 46399 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `File_MB`	0.0004	scATAC_mtSMC	_RES_
> `GenomeV`	hg19	scATAC_mtSMC	_RES_

### Adapter trimming:  (08-16 13:52:23) elapsed:0:00:00 _TIME_

> `Raw_reads`	2	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R1_trimmed.fq`
> `Trimmed_reads`	2.0	scATAC_mtSMC	_RES_
> `Trim_loss_rate`	0.0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R1.sai`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R2.sai`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.sam`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.bam`
> `Aligned_reads`	0	scATAC_mtSMC	_RES_
> `Alignment_rate`	0.0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.bam`
> `rmdup_reads`	0	scATAC_mtSMC	_RES_
> `dup_rate`	0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.genomeQ30PE.bam`
> `genomeQ30PE_reads`	0	scATAC_mtSMC	_RES_
> `genomeQ30PE_rate`	0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.RefTSSCount`
> ` awk 'BEGIN{sum=0}''{sum+=$6;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.RefTSSCount`

> `Total_TSS_reads`	0	scATAC_mtSMC	_RES_
> `TSS_rate`	0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.mtQ30PE.bam`
> `mtQ30PE_reads`	0	scATAC_mtSMC	_RES_
> `mtQ30PE_rate`	0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.target.intervals`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.realigned.bam`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.mpileup`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.counts`
> ` awk 'BEGIN{sum=0;}''{sum+=$4;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.counts`

> ` awk 'BEGIN{num=0;}''{num++;}''END{print num}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.counts`

0

Traceback (most recent call last):
  File "/storage/jinxu/develop/ATAC_mito_sc/src/scATACseq_mtSMC_3.py", line 350, in <module>
    pm.report_result("mt_aver_depth", round(float(mt_total_depth) / float(mt_total_site), 2))
ZeroDivisionError: float division by zero

Pypiper terminating spawned child process 46384

Change status from running to failed

### Pipeline failed at:  (08-16 13:52:24) elapsed:0:00:00 _TIME_

('Total time: ', '0:00:01')
Error in atexit._run_exitfuncs:
Traceback (most recent call last):
  File "/usr/lib64/python2.7/atexit.py", line 24, in _run_exitfuncs
    func(*targs, **kargs)
  File "/home/jinxu/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 976, in _exit_handler
    self.fail_pipeline(Exception("Unknown exit failure"))
  File "/home/jinxu/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 932, in fail_pipeline
    raise e
Exception: Unknown exit failure
Error in sys.exitfunc:
Traceback (most recent call last):
  File "/usr/lib64/python2.7/atexit.py", line 24, in _run_exitfuncs
    func(*targs, **kargs)
  File "/home/jinxu/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 976, in _exit_handler
    self.fail_pipeline(Exception("Unknown exit failure"))
  File "/home/jinxu/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 932, in fail_pipeline
    raise e
Exception: Unknown exit failure
cd /storage/jinxu/.local/lib/python2.7/site-packages/pypiper; git rev-parse --verify HEAD 2>/dev/null
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `/storage/jinxu/develop/ATAC_mito_sc/src/scATACseq_mtSMC_3.py -P 8 -M 100 -O /home/jinxu/develop/ATAC_mito_sc/example/output -R -S 15-AGGCAGAA-GCGATCTA -s 0 -G hg19 -Q paired -I /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R1.fastq.gz -I2 /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R2.fastq.gz`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/jinxu/develop/ATAC_mito_sc/example
*            Outfolder:  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/
*  Pipeline started at:   (08-16 13:53:57) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/jinxu/.local/lib/python2.7/site-packages/pypiper`
*         Pipeline dir:  `/storage/jinxu/develop/ATAC_mito_sc/src`
*     Pipeline version:  1f3415359de21444b193ffff6fa835aebf46fbe1
*      Pipeline branch:  * develop
*        Pipeline date:  2017-08-14 14:05:38 -0700
*        Pipeline diff:  15 files changed, 2593 insertions(+), 435 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R2.fastq.gz']`
*   `single_or_paired`:  `paired`
*         `paired_end`:  `True`
*        `config_file`:  `scATACseq_mtSMC_3.yaml`
*              `input`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R1.fastq.gz']`
*                `mem`:  `100`
*        `sample_name`:  `15-AGGCAGAA-GCGATCTA`
*      `output_parent`:  `/home/jinxu/develop/ATAC_mito_sc/example/output`
*    `genome_assembly`:  `hg19`
*              `cores`:  `8`
*              `stopN`:  `0`
*       `force_follow`:  `False`
*              `fresh`:  `False`
*            `recover`:  `True`
*       `manual_clean`:  `False`

----------------------------------------


Change status from initializing to running
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R1.fastq.gz
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R2.fastq.gz

### Merge/link and fastq conversion:  (08-16 13:53:57) elapsed:0:00:00 _TIME_

Number of input file sets:		2

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz`
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz`
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz
['/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz', '/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz']

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/`
> ` rm -f  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/stats.tsv`

<pre>
</pre>
Process 46539 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `File_MB`	0.0004	scATAC_mtSMC	_RES_
> `GenomeV`	hg19	scATAC_mtSMC	_RES_

### Adapter trimming:  (08-16 13:53:57) elapsed:0:00:00 _TIME_

> `Raw_reads`	2	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R1_trimmed.fq`
> `Trimmed_reads`	2.0	scATAC_mtSMC	_RES_
> `Trim_loss_rate`	0.0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R1.sai`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R2.sai`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.sam`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.bam`
> `Aligned_reads`	0	scATAC_mtSMC	_RES_
> `Alignment_rate`	0.0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.bam`
> `rmdup_reads`	0	scATAC_mtSMC	_RES_
> `dup_rate`	0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.genomeQ30PE.bam`
> `genomeQ30PE_reads`	0	scATAC_mtSMC	_RES_
> `genomeQ30PE_rate`	0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.RefTSSCount`
> ` awk 'BEGIN{sum=0}''{sum+=$6;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.RefTSSCount`

> `Total_TSS_reads`	0	scATAC_mtSMC	_RES_
> `TSS_rate`	0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.mtQ30PE.bam`
> `mtQ30PE_reads`	0	scATAC_mtSMC	_RES_
> `mtQ30PE_rate`	0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.target.intervals`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.realigned.bam`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.mpileup`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.counts`
> ` awk 'BEGIN{sum=0;}''{sum+=$4;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.counts`

> ` awk 'BEGIN{num=0;}''{num++;}''END{print num}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.counts`

> `mt_aver_depth`	0	scATAC_mtSMC	_RES_
0


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
Input file was not ready after 100 5-second cycles!
</pre>
Process 46554 returned: (10). Elapsed: 0:08:34.

Change status from running to failed

### Pipeline failed at:  (08-16 14:02:31) elapsed:0:08:34 _TIME_

('Total time: ', '0:08:34')
Traceback (most recent call last):
  File "/storage/jinxu/develop/ATAC_mito_sc/src/scATACseq_mtSMC_3.py", line 359, in <module>
    pm.run(cmd,snv)
  File "/home/jinxu/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 440, in run
    process_return_code, local_maxmem = self.callprint(cmd, shell, nofail)  # Run command
  File "/home/jinxu/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 605, in callprint
    self.fail_pipeline(e)
  File "/home/jinxu/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 932, in fail_pipeline
    raise e
Exception: Subprocess returned nonzero result.

Pypiper terminating spawned child process 46525
cd /storage/jinxu/.local/lib/python2.7/site-packages/pypiper; git rev-parse --verify HEAD 2>/dev/null
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `/storage/jinxu/develop/ATAC_mito_sc/src/scATACseq_mtSMC_3.py -P 8 -M 100 -O /home/jinxu/develop/ATAC_mito_sc/example/output -R -S 15-AGGCAGAA-GCGATCTA -s 0 -G hg19 -Q paired -I /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R1.fastq.gz -I2 /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R2.fastq.gz`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/jinxu/develop/ATAC_mito_sc/example
*            Outfolder:  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/
*  Pipeline started at:   (08-16 14:13:09) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/jinxu/.local/lib/python2.7/site-packages/pypiper`
*         Pipeline dir:  `/storage/jinxu/develop/ATAC_mito_sc/src`
*     Pipeline version:  1f3415359de21444b193ffff6fa835aebf46fbe1
*      Pipeline branch:  * develop
*        Pipeline date:  2017-08-14 14:05:38 -0700
*        Pipeline diff:  15 files changed, 2904 insertions(+), 441 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R2.fastq.gz']`
*   `single_or_paired`:  `paired`
*         `paired_end`:  `True`
*        `config_file`:  `scATACseq_mtSMC_3.yaml`
*              `input`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R1.fastq.gz']`
*                `mem`:  `100`
*        `sample_name`:  `15-AGGCAGAA-GCGATCTA`
*      `output_parent`:  `/home/jinxu/develop/ATAC_mito_sc/example/output`
*    `genome_assembly`:  `hg19`
*              `cores`:  `8`
*              `stopN`:  `0`
*       `force_follow`:  `False`
*              `fresh`:  `False`
*            `recover`:  `True`
*       `manual_clean`:  `False`

----------------------------------------


Change status from initializing to running
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R1.fastq.gz
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/15-AGGCAGAA-GCGATCTA_S3_001_R2.fastq.gz

### Merge/link and fastq conversion:  (08-16 14:13:09) elapsed:0:00:00 _TIME_

Number of input file sets:		2

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz`
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz`
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz
['/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R1.fastq.gz', '/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/raw/15-AGGCAGAA-GCGATCTA_R2.fastq.gz']

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/`
> ` rm -f  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/stats.tsv`

<pre>
</pre>
Process 48523 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `File_MB`	0.0004	scATAC_mtSMC	_RES_
> `GenomeV`	hg19	scATAC_mtSMC	_RES_

### Adapter trimming:  (08-16 14:13:09) elapsed:0:00:00 _TIME_

> `Raw_reads`	2	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/fastq/15-AGGCAGAA-GCGATCTA_R1_trimmed.fq`
> `Trimmed_reads`	2.0	scATAC_mtSMC	_RES_
> `Trim_loss_rate`	0.0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R1.sai`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA_R2.sai`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.sam`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.bam`
> `Aligned_reads`	0	scATAC_mtSMC	_RES_
> `Alignment_rate`	0.0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.bam`
> `rmdup_reads`	0	scATAC_mtSMC	_RES_
> `dup_rate`	0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.genomeQ30PE.bam`
> `genomeQ30PE_reads`	0	scATAC_mtSMC	_RES_
> `genomeQ30PE_rate`	0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.RefTSSCount`
> ` awk 'BEGIN{sum=0}''{sum+=$6;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.RefTSSCount`

> `Total_TSS_reads`	0	scATAC_mtSMC	_RES_
> `TSS_rate`	0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.mtQ30PE.bam`
> `mtQ30PE_reads`	0	scATAC_mtSMC	_RES_
> `mtQ30PE_rate`	0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.target.intervals`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.rmdup.realigned.bam`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.mpileup`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.counts`
> ` awk 'BEGIN{sum=0;}''{sum+=$4;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.counts`

> ` awk 'BEGIN{num=0;}''{num++;}''END{print num}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/Mapping_hg19/15-AGGCAGAA-GCGATCTA.counts`

> `mt_aver_depth`	0	scATAC_mtSMC	_RES_
0


Change status from running to completed

Conditional flag found: ['scATAC_mtSMC_failed.flag']

These conditional files were left in place:['/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/15-AGGCAGAA-GCGATCTA/15-AGGCAGAA-GCGATCTA*.fq']
> `Time`	0:00:00	scATAC_mtSMC	_RES_
> `Success`	08-16 14:13:09	scATAC_mtSMC	_RES_

##### [Epilogue:]
*   Total elapsed time:  0:00:00
*     Peak memory used:  0.0 GB
* Pipeline completed at:  (08-16 14:13:09) elapsed:0:00:00 _TIME_

Pypiper terminating spawned child process 48509
