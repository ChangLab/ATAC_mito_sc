cd /storage/jinxu/.local/lib/python2.7/site-packages/pypiper; git rev-parse --verify HEAD 2>/dev/null
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `/storage/jinxu/develop/ATAC_mito_sc/src/scATACseq_mtSMC_3.py -P 8 -M 100 -O /home/jinxu/develop/ATAC_mito_sc/example/output -R -S 13-TAAGGCGA-GCGATCTA -s 0 -G hg19 -Q paired -I /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz -I2 /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/jinxu/develop/ATAC_mito_sc/example
*            Outfolder:  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/
*  Pipeline started at:   (08-16 11:12:50) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/jinxu/.local/lib/python2.7/site-packages/pypiper`
*         Pipeline dir:  `/storage/jinxu/develop/ATAC_mito_sc/src`
*     Pipeline version:  1f3415359de21444b193ffff6fa835aebf46fbe1
*      Pipeline branch:  * develop
*        Pipeline date:  2017-08-14 14:05:38 -0700
*        Pipeline diff:  18 files changed, 5 insertions(+), 243847 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz']`
*   `single_or_paired`:  `paired`
*         `paired_end`:  `True`
*        `config_file`:  `scATACseq_mtSMC_3.yaml`
*              `input`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz']`
*                `mem`:  `100`
*        `sample_name`:  `13-TAAGGCGA-GCGATCTA`
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
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz

### Merge/link and fastq conversion:  (08-16 11:12:50) elapsed:0:00:00 _TIME_

Number of input file sets:		2

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz`
> `ln -sf /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz`

<pre>
</pre>
Process 32552 returned: (0). Elapsed: 0:00:00.
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz`
> `ln -sf /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz`

<pre>
</pre>
Process 32554 returned: (0). Elapsed: 0:00:00.
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz
['/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz', '/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz']

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/`
> ` rm -f  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/stats.tsv`

<pre>
</pre>
Process 32555 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `File_MB`	1.7355	scATAC_mtSMC	_RES_
> `GenomeV`	hg19	scATAC_mtSMC	_RES_

### Adapter trimming:  (08-16 11:12:51) elapsed:0:00:01 _TIME_

> `Raw_reads`	60782	scATAC_mtSMC	_RES_

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R1_trimmed.fq`
> `/usr/bin/java -Xmx100m -jar /home/jinxu/software/Trimmomatic-0.36/trimmomatic-0.36.jar PE  -threads 8 /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R1_trimmed.fq /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R1_unpaired.fq /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R2_trimmed.fq /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R2_unpaired.fq ILLUMINACLIP:/home/jinxu/software/Trimmomatic-0.36/adapters/NexteraPE-PE.fa:2:30:10`

<pre>
TrimmomaticPE: Started with arguments:
 -threads 8 /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R1_trimmed.fq /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R1_unpaired.fq /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R2_trimmed.fq /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R2_unpaired.fq ILLUMINACLIP:/home/jinxu/software/Trimmomatic-0.36/adapters/NexteraPE-PE.fa:2:30:10
Using PrefixPair: 'AGATGTGTATAAGAGACAG' and 'AGATGTGTATAAGAGACAG'
Using Long Clipping Sequence: 'GTCTCGTGGGCTCGGAGATGTGTATAAGAGACAG'
Using Long Clipping Sequence: 'TCGTCGGCAGCGTCAGATGTGTATAAGAGACAG'
Using Long Clipping Sequence: 'CTGTCTCTTATACACATCTCCGAGCCCACGAGAC'
Using Long Clipping Sequence: 'CTGTCTCTTATACACATCTGACGCTGCCGACGA'
ILLUMINACLIP: Using 1 prefix pairs, 4 forward/reverse sequences, 0 forward only sequences, 0 reverse only sequences
Quality encoding detected as phred33
Input Read Pairs: 30391 Both Surviving: 30341 (99.84%) Forward Only Surviving: 50 (0.16%) Reverse Only Surviving: 0 (0.00%) Dropped: 0 (0.00%)
TrimmomaticPE: Completed successfully
</pre>
Process 32561 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.068GB; Pipeline: 0.0GB)
> `Trimmed_reads`	60682.0	scATAC_mtSMC	_RES_
> `Trim_loss_rate`	0.0	scATAC_mtSMC	_RES_

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R1.sai`
> `/home/jinxu/software/bwa-0.7.15/bwa aln  -t  8 /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R1_trimmed.fq -f /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R1.sai`

<pre>
[bwa_aln] 17bp reads: max_diff = 2
[bwa_aln] 38bp reads: max_diff = 3
[bwa_aln] 64bp reads: max_diff = 4
[bwa_aln] 93bp reads: max_diff = 5
[bwa_aln] 124bp reads: max_diff = 6
[bwa_aln] 157bp reads: max_diff = 7
[bwa_aln] 190bp reads: max_diff = 8
[bwa_aln] 225bp reads: max_diff = 9
[bwa_aln_core] calculate SA coordinate... 6.50 sec
[bwa_aln_core] write to the disk... 0.00 sec
[bwa_aln_core] 30341 sequences have been processed.
[main] Version: 0.7.15-r1140
[main] CMD: /home/jinxu/software/bwa-0.7.15/bwa aln -t 8 -f /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R1.sai /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R1_trimmed.fq
[main] Real time: 3.102 sec; CPU: 8.566 sec
</pre>
Process 32651 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.329GB; Pipeline: 0.068GB)

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R2.sai`
> `/home/jinxu/software/bwa-0.7.15/bwa aln  -t 8 /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R2_trimmed.fq -f /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R2.sai`

<pre>
[bwa_aln] 17bp reads: max_diff = 2
[bwa_aln] 38bp reads: max_diff = 3
[bwa_aln] 64bp reads: max_diff = 4
[bwa_aln] 93bp reads: max_diff = 5
[bwa_aln] 124bp reads: max_diff = 6
[bwa_aln] 157bp reads: max_diff = 7
[bwa_aln] 190bp reads: max_diff = 8
[bwa_aln] 225bp reads: max_diff = 9
[bwa_aln_core] calculate SA coordinate... 7.61 sec
[bwa_aln_core] write to the disk... 0.02 sec
[bwa_aln_core] 30341 sequences have been processed.
[main] Version: 0.7.15-r1140
[main] CMD: /home/jinxu/software/bwa-0.7.15/bwa aln -t 8 -f /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R2.sai /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R2_trimmed.fq
[main] Real time: 3.256 sec; CPU: 9.853 sec
</pre>
Process 32707 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.42GB; Pipeline: 0.329GB)

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.sam`
> `/home/jinxu/software/bwa-0.7.15/bwa sampe -r "@RG\tID:13-TAAGGCGA-GCGATCTA\tSM:MT\tPL:ILLUMINA" /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R1.sai /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R2.sai /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R1_trimmed.fq /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R2_trimmed.fq -f /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.sam`

<pre>
[bwa_sai2sam_pe_core] convert to sequence coordinate... 
[infer_isize] (25, 50, 75) percentile: (45, 56, 72)
[infer_isize] low and high boundaries: 76 and 126 for estimating avg and std
[infer_isize] inferred external isize from 3566 pairs: 89.510 +/- 12.174
[infer_isize] skewness: 1.072; kurtosis: 0.301; ap_prior: 5.00e-04
[infer_isize] inferred maximum insert size: 176 (7.12 sigma)
[bwa_sai2sam_pe_core] time elapses: 4.08 sec
[bwa_sai2sam_pe_core] changing coordinates of 366 alignments.
[bwa_sai2sam_pe_core] align unmapped mate...
[bwa_paired_sw] 118 out of 1186 Q17 singletons are mated.
[bwa_paired_sw] 36 out of 1637 Q17 discordant pairs are fixed.
[bwa_sai2sam_pe_core] time elapses: 0.69 sec
[bwa_sai2sam_pe_core] refine gapped alignments... 0.06 sec
[bwa_sai2sam_pe_core] print alignments... 0.20 sec
[bwa_sai2sam_pe_core] 30341 sequences have been processed.
[main] Version: 0.7.15-r1140
[main] CMD: /home/jinxu/software/bwa-0.7.15/bwa sampe -r @RG\tID:13-TAAGGCGA-GCGATCTA\tSM:MT\tPL:ILLUMINA -f /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.sam /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R1.sai /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R2.sai /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R1_trimmed.fq /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R2_trimmed.fq
[main] Real time: 5.505 sec; CPU: 5.138 sec
</pre>
Process 32724 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.334GB; Pipeline: 0.42GB)

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.bam`
> `java -Xmx4g -jar /home/jinxu/software/picard-tools-2.4.1/picard.jar SortSam SORT_ORDER=coordinate CREATE_INDEX=true VALIDATION_STRINGENCY=SILENT INPUT=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.sam OUTPUT=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.bam`

<pre>
[Wed Aug 16 11:13:14 PDT 2017] picard.sam.SortSam INPUT=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.sam OUTPUT=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT CREATE_INDEX=true    VERBOSITY=INFO QUIET=false COMPRESSION_LEVEL=5 MAX_RECORDS_IN_RAM=500000 CREATE_MD5_FILE=false GA4GH_CLIENT_SECRETS=client_secrets.json
[Wed Aug 16 11:13:14 PDT 2017] Executing as jinxu@changrila2.stanford.edu on Linux 3.10.0-327.22.2.el7.x86_64 amd64; OpenJDK 64-Bit Server VM 1.8.0_101-b13; Picard version: 2.4.1(7c4d36e011df1aec4689b51efcada44e92d1817f_1464389670) JdkDeflater
INFO	2017-08-16 11:13:14	SortSam	Finished reading inputs, merging and writing to output now.
[Wed Aug 16 11:13:15 PDT 2017] picard.sam.SortSam done. Elapsed time: 0.02 minutes.
Runtime.totalMemory()=2058354688
</pre>
Process 32725 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.06GB; Pipeline: 0.42GB)
> `Aligned_reads`	59111	scATAC_mtSMC	_RES_
> `Alignment_rate`	0.97	scATAC_mtSMC	_RES_

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam`
> `java -Xmx4g -jar /home/jinxu/software/picard-tools-2.4.1/picard.jar MarkDuplicates CREATE_INDEX=true ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT REMOVE_DUPLICATES=true INPUT=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.bam OUTPUT=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam METRICS_FILE=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.metrics`

<pre>
[Wed Aug 16 11:13:19 PDT 2017] picard.sam.markduplicates.MarkDuplicates INPUT=[/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.bam] OUTPUT=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam METRICS_FILE=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.metrics REMOVE_DUPLICATES=true ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT CREATE_INDEX=true    MAX_SEQUENCES_FOR_DISK_READ_ENDS_MAP=50000 MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=8000 SORTING_COLLECTION_SIZE_RATIO=0.25 REMOVE_SEQUENCING_DUPLICATES=false TAGGING_POLICY=DontTag DUPLICATE_SCORING_STRATEGY=SUM_OF_BASE_QUALITIES PROGRAM_RECORD_ID=MarkDuplicates PROGRAM_GROUP_NAME=MarkDuplicates READ_NAME_REGEX=<optimized capture of last three ':' separated fields as numeric values> OPTICAL_DUPLICATE_PIXEL_DISTANCE=100 VERBOSITY=INFO QUIET=false COMPRESSION_LEVEL=5 MAX_RECORDS_IN_RAM=500000 CREATE_MD5_FILE=false GA4GH_CLIENT_SECRETS=client_secrets.json
[Wed Aug 16 11:13:19 PDT 2017] Executing as jinxu@changrila2.stanford.edu on Linux 3.10.0-327.22.2.el7.x86_64 amd64; OpenJDK 64-Bit Server VM 1.8.0_101-b13; Picard version: 2.4.1(7c4d36e011df1aec4689b51efcada44e92d1817f_1464389670) JdkDeflater
INFO	2017-08-16 11:13:19	MarkDuplicates	Start of doWork freeMemory: 2046000760; totalMemory: 2058354688; maxMemory: 3817865216
INFO	2017-08-16 11:13:19	MarkDuplicates	Reading input file and constructing read end information.
INFO	2017-08-16 11:13:19	MarkDuplicates	Will retain up to 14684096 data points before spilling to disk.
INFO	2017-08-16 11:13:20	MarkDuplicates	Read 60318 records. 3 pairs never matched.
INFO	2017-08-16 11:13:21	MarkDuplicates	After buildSortedReadEndLists freeMemory: 1923147056; totalMemory: 2058354688; maxMemory: 3817865216
INFO	2017-08-16 11:13:21	MarkDuplicates	Will retain up to 119308288 duplicate indices before spilling to disk.
INFO	2017-08-16 11:13:21	MarkDuplicates	Traversing read pair information and detecting duplicates.
INFO	2017-08-16 11:13:21	MarkDuplicates	Traversing fragment information and detecting duplicates.
INFO	2017-08-16 11:13:21	MarkDuplicates	Sorting list of duplicate records.
INFO	2017-08-16 11:13:22	MarkDuplicates	After generateDuplicateIndexes freeMemory: 1092633680; totalMemory: 2058354688; maxMemory: 3817865216
INFO	2017-08-16 11:13:22	MarkDuplicates	Marking 33297 records as duplicates.
INFO	2017-08-16 11:13:22	MarkDuplicates	Found 0 optical duplicate clusters.
INFO	2017-08-16 11:13:22	MarkDuplicates	Reads are assumed to be ordered by: coordinate
INFO	2017-08-16 11:13:23	MarkDuplicates	Before output close freeMemory: 2046022016; totalMemory: 2058354688; maxMemory: 3817865216
INFO	2017-08-16 11:13:23	MarkDuplicates	After output close freeMemory: 2046089656; totalMemory: 2058354688; maxMemory: 3817865216
[Wed Aug 16 11:13:23 PDT 2017] picard.sam.markduplicates.MarkDuplicates done. Elapsed time: 0.06 minutes.
Runtime.totalMemory()=2058354688
</pre>
Process 32849 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.059GB; Pipeline: 0.42GB)
> `rmdup_reads`	25814	scATAC_mtSMC	_RES_
> `dup_rate`	0.56	scATAC_mtSMC	_RES_

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.genomeQ30PE.bam`
> `/usr/local/bin/samtools view -b -q  30   -f 0x2 /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam  -o /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.genomeQ30PE.bam chr1 chr2 chr3 chr4 chr5 chr6 chr7 chr8 chr9 chr10 chr11 chr12 chr13 chr14 chr15 chr16 chr17 chr18 chr19 chr20 chr21 chr22 chrX`

<pre>
</pre>
Process 32919 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.42GB)
> `genomeQ30PE_reads`	88	scATAC_mtSMC	_RES_
> `genomeQ30PE_rate`	0.0	scATAC_mtSMC	_RES_

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.RefTSSCount`
> `/seq/bedtools-master/bin/bedtools coverage  -abam /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.genomeQ30PE.bam -b /home/jinxu/DB/hg19/annotation/hg19_refGene_TSSRound2kb.bed -counts  > /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.RefTSSCount`

<pre>
</pre>
Process 32921 returned: (0). Elapsed: 0:00:00.
> ` awk 'BEGIN{sum=0}''{sum+=$6;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.RefTSSCount`

> `Total_TSS_reads`	60	scATAC_mtSMC	_RES_
> `TSS_rate`	0.34	scATAC_mtSMC	_RES_

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mtQ30PE.bam`
> `/usr/local/bin/samtools view -b -q  30   -f 0x2 /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam  -o /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mtQ30PE.bam  chrMT `

<pre>
</pre>
Process 32924 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.42GB)
> `mtQ30PE_reads`	18695	scATAC_mtSMC	_RES_
> `mtQ30PE_rate`	0.32	scATAC_mtSMC	_RES_

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.target.intervals`
> `java -Xmx8g -jar /home/jinxu/software/GenomeAnalysisTK.jar  -R /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta  -T RealignerTargetCreator  -known /home/jinxu/DB/hg19_g1k_v37/ALL.chrMT.phase3_callmom-v0_4.20130502.genotypes.Indel.vcf  -known /home/jinxu/DB/hg19_g1k_v37/Mills_and_1000G_gold_standard.indels.hg19.sites.vcf  -nt 8  -I /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam  -o /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.target.intervals`

<pre>
INFO  11:13:27,321 HelpFormatter - -------------------------------------------------------------------------------- 
INFO  11:13:27,324 HelpFormatter - The Genome Analysis Toolkit (GATK) v3.5-0-g36282e4, Compiled 2015/11/25 04:03:56 
INFO  11:13:27,325 HelpFormatter - Copyright (c) 2010 The Broad Institute 
INFO  11:13:27,325 HelpFormatter - For support and documentation go to http://www.broadinstitute.org/gatk 
INFO  11:13:27,329 HelpFormatter - Program Args: -R /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta -T RealignerTargetCreator -known /home/jinxu/DB/hg19_g1k_v37/ALL.chrMT.phase3_callmom-v0_4.20130502.genotypes.Indel.vcf -known /home/jinxu/DB/hg19_g1k_v37/Mills_and_1000G_gold_standard.indels.hg19.sites.vcf -nt 8 -I /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam -o /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.target.intervals 
INFO  11:13:27,339 HelpFormatter - Executing as jinxu@changrila2.stanford.edu on Linux 3.10.0-327.22.2.el7.x86_64 amd64; OpenJDK 64-Bit Server VM 1.8.0_101-b13. 
INFO  11:13:27,340 HelpFormatter - Date/Time: 2017/08/16 11:13:27 
INFO  11:13:27,340 HelpFormatter - -------------------------------------------------------------------------------- 
INFO  11:13:27,341 HelpFormatter - -------------------------------------------------------------------------------- 
INFO  11:13:27,407 GenomeAnalysisEngine - Strictness is SILENT 
INFO  11:13:27,516 GenomeAnalysisEngine - Downsampling Settings: Method: BY_SAMPLE, Target Coverage: 1000 
INFO  11:13:27,523 SAMDataSource$SAMReaders - Initializing SAMRecords in serial 
INFO  11:13:27,555 SAMDataSource$SAMReaders - Done initializing BAM readers: total time 0.03 
INFO  11:13:27,691 MicroScheduler - Running the GATK in parallel mode with 8 total threads, 1 CPU thread(s) for each of 8 data thread(s), of 64 processors available on this machine 
INFO  11:13:27,770 GenomeAnalysisEngine - Preparing for traversal over 1 BAM files 
INFO  11:13:27,827 GenomeAnalysisEngine - Done preparing for traversal 
INFO  11:13:27,828 ProgressMeter - [INITIALIZATION COMPLETE; STARTING PROCESSING] 
INFO  11:13:27,829 ProgressMeter -                 | processed |    time |    per 1M |           |   total | remaining 
INFO  11:13:27,829 ProgressMeter -        Location |     sites | elapsed |     sites | completed | runtime |   runtime 
INFO  11:13:28,068 SAMDataSource$SAMReaders - Initializing SAMRecords in serial 
INFO  11:13:28,078 SAMDataSource$SAMReaders - Done initializing BAM readers: total time 0.01 
INFO  11:13:28,080 SAMDataSource$SAMReaders - Initializing SAMRecords in serial 
INFO  11:13:28,088 SAMDataSource$SAMReaders - Done initializing BAM readers: total time 0.01 
INFO  11:13:28,095 SAMDataSource$SAMReaders - Initializing SAMRecords in serial 
INFO  11:13:28,103 SAMDataSource$SAMReaders - Done initializing BAM readers: total time 0.01 
INFO  11:13:28,120 SAMDataSource$SAMReaders - Initializing SAMRecords in serial 
INFO  11:13:28,128 SAMDataSource$SAMReaders - Done initializing BAM readers: total time 0.01 
INFO  11:13:28,154 SAMDataSource$SAMReaders - Initializing SAMRecords in serial 
INFO  11:13:28,167 SAMDataSource$SAMReaders - Done initializing BAM readers: total time 0.01 
INFO  11:13:28,169 SAMDataSource$SAMReaders - Initializing SAMRecords in serial 
INFO  11:13:28,177 SAMDataSource$SAMReaders - Done initializing BAM readers: total time 0.01 
INFO  11:13:28,186 SAMDataSource$SAMReaders - Initializing SAMRecords in serial 
INFO  11:13:28,192 SAMDataSource$SAMReaders - Done initializing BAM readers: total time 0.01 
INFO  11:13:57,835 ProgressMeter -   chr3:32470301    573440.0    30.0 s      52.0 s       16.9%     3.0 m       2.5 m 
INFO  11:14:27,838 ProgressMeter -  chr3:108747321   5.5558144E7    60.0 s       1.0 s       19.4%     5.2 m       4.2 m 
INFO  11:14:57,841 ProgressMeter -  chr4:176032781   1.87744256E8    90.0 s       0.0 s       27.9%     5.4 m       3.9 m 
INFO  11:15:27,845 ProgressMeter -    chr6:4358801   4.99096962E8   120.0 s       0.0 s       34.4%     5.8 m       3.8 m 
INFO  11:15:57,848 ProgressMeter -    chr8:9641201   7.87877452E8     2.5 m       0.0 s       45.2%     5.5 m       3.0 m 
INFO  11:16:27,851 ProgressMeter -     chr11:30301   9.73217263E8     3.0 m       0.0 s       58.5%     5.1 m       2.1 m 
INFO  11:16:57,853 ProgressMeter -  chr11:78823381   1.052253679E9     3.5 m       0.0 s       61.1%     5.7 m       2.2 m 
INFO  11:17:27,856 ProgressMeter -  chr12:49127217   1.408627813E9     4.0 m       0.0 s       64.5%     6.2 m       2.2 m 
INFO  11:17:57,859 ProgressMeter -  chr15:18502101   1.549899759E9     4.5 m       0.0 s       75.0%     6.0 m      90.0 s 
INFO  11:18:27,861 ProgressMeter -   chr18:2921617   2.055614908E9     5.0 m       0.0 s       83.3%     6.0 m      60.0 s 
INFO  11:18:57,864 ProgressMeter -    chr22:811601   2.398422289E9     5.5 m       0.0 s       91.3%     6.0 m      31.0 s 
INFO  11:19:27,867 ProgressMeter - chrGL000192.1:547401   2.874505295E9     6.0 m       0.0 s      100.0%     6.0 m       0.0 s 
INFO  11:19:57,870 ProgressMeter - chrGL000192.1:547401   3.051425989E9     6.5 m       0.0 s      100.0%     6.5 m       0.0 s 
INFO  11:19:58,496 ProgressMeter -            done   3.101804739E9     6.5 m       0.0 s      100.0%     6.5 m       0.0 s 
INFO  11:19:58,497 ProgressMeter - Total runtime 390.67 secs, 6.51 min, 0.11 hours 
INFO  11:19:58,501 MicroScheduler - 5526 reads were filtered out during the traversal out of approximately 27176 total reads (20.33%) 
INFO  11:19:58,501 MicroScheduler -   -> 0 reads (0.00% of total) failing BadCigarFilter 
INFO  11:19:58,502 MicroScheduler -   -> 215 reads (0.79% of total) failing BadMateFilter 
INFO  11:19:58,502 MicroScheduler -   -> 0 reads (0.00% of total) failing DuplicateReadFilter 
INFO  11:19:58,502 MicroScheduler -   -> 0 reads (0.00% of total) failing FailsVendorQualityCheckFilter 
INFO  11:19:58,506 MicroScheduler -   -> 0 reads (0.00% of total) failing MalformedReadFilter 
INFO  11:19:58,507 MicroScheduler -   -> 0 reads (0.00% of total) failing MappingQualityUnavailableFilter 
INFO  11:19:58,507 MicroScheduler -   -> 5295 reads (19.48% of total) failing MappingQualityZeroFilter 
INFO  11:19:58,507 MicroScheduler -   -> 0 reads (0.00% of total) failing NotPrimaryAlignmentFilter 
INFO  11:19:58,508 MicroScheduler -   -> 0 reads (0.00% of total) failing Platform454Filter 
INFO  11:19:58,508 MicroScheduler -   -> 16 reads (0.06% of total) failing UnmappedReadFilter 
INFO  11:19:59,873 GATKRunReport - Uploaded run statistics report to AWS S3 
</pre>
Process 32926 returned: (0). Elapsed: 0:07:33. Peak memory: (Process: 4.671GB; Pipeline: 0.42GB)

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.realigned.bam`
> `java -Xmx10g -jar /home/jinxu/software/GenomeAnalysisTK.jar -R /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta -T IndelRealigner  -known /home/jinxu/DB/hg19_g1k_v37/Mills_and_1000G_gold_standard.indels.hg19.sites.vcf  -known /home/jinxu/DB/hg19_g1k_v37/ALL.chrMT.phase3_callmom-v0_4.20130502.genotypes.Indel.vcf  -I /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam  -targetIntervals /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.target.intervals -o /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.realigned.bam`

<pre>
INFO  11:21:00,934 HelpFormatter - -------------------------------------------------------------------------------- 
INFO  11:21:00,936 HelpFormatter - The Genome Analysis Toolkit (GATK) v3.5-0-g36282e4, Compiled 2015/11/25 04:03:56 
INFO  11:21:00,937 HelpFormatter - Copyright (c) 2010 The Broad Institute 
INFO  11:21:00,937 HelpFormatter - For support and documentation go to http://www.broadinstitute.org/gatk 
INFO  11:21:00,941 HelpFormatter - Program Args: -R /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta -T IndelRealigner -known /home/jinxu/DB/hg19_g1k_v37/Mills_and_1000G_gold_standard.indels.hg19.sites.vcf -known /home/jinxu/DB/hg19_g1k_v37/ALL.chrMT.phase3_callmom-v0_4.20130502.genotypes.Indel.vcf -I /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam -targetIntervals /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.target.intervals -o /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.realigned.bam 
INFO  11:21:00,951 HelpFormatter - Executing as jinxu@changrila2.stanford.edu on Linux 3.10.0-327.22.2.el7.x86_64 amd64; OpenJDK 64-Bit Server VM 1.8.0_101-b13. 
INFO  11:21:00,951 HelpFormatter - Date/Time: 2017/08/16 11:21:00 
INFO  11:21:00,951 HelpFormatter - -------------------------------------------------------------------------------- 
INFO  11:21:00,952 HelpFormatter - -------------------------------------------------------------------------------- 
INFO  11:21:01,080 GenomeAnalysisEngine - Strictness is SILENT 
INFO  11:21:01,161 GenomeAnalysisEngine - Downsampling Settings: No downsampling 
INFO  11:21:01,169 SAMDataSource$SAMReaders - Initializing SAMRecords in serial 
INFO  11:21:01,208 SAMDataSource$SAMReaders - Done initializing BAM readers: total time 0.04 
INFO  11:21:01,516 GenomeAnalysisEngine - Preparing for traversal over 1 BAM files 
INFO  11:21:01,521 GenomeAnalysisEngine - Done preparing for traversal 
INFO  11:21:01,522 ProgressMeter - [INITIALIZATION COMPLETE; STARTING PROCESSING] 
INFO  11:21:01,523 ProgressMeter -                 | processed |    time |    per 1M |           |   total | remaining 
INFO  11:21:01,523 ProgressMeter -        Location |     reads | elapsed |     reads | completed | runtime |   runtime 
INFO  11:21:02,229 ReadShardBalancer$1 - Loading BAM index data 
INFO  11:21:02,231 ReadShardBalancer$1 - Done loading BAM index data 
INFO  11:21:05,032 ProgressMeter -            done     27385.0     3.0 s       2.1 m       99.8%     3.0 s       0.0 s 
INFO  11:21:05,033 ProgressMeter - Total runtime 3.51 secs, 0.06 min, 0.00 hours 
INFO  11:21:05,037 MicroScheduler - 0 reads were filtered out during the traversal out of approximately 27385 total reads (0.00%) 
INFO  11:21:05,037 MicroScheduler -   -> 0 reads (0.00% of total) failing BadCigarFilter 
INFO  11:21:05,037 MicroScheduler -   -> 0 reads (0.00% of total) failing MalformedReadFilter 
INFO  11:21:06,444 GATKRunReport - Uploaded run statistics report to AWS S3 
</pre>
Process 34986 returned: (0). Elapsed: 0:00:16. Peak memory: (Process: 1.083GB; Pipeline: 4.671GB)

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mpileup`
> `/usr/local/bin/samtools mpileup  -l /home/jinxu/DB/hg19_g1k_v37/chrM.len  -f /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta  -q 20  -Q 20 -x /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.realigned.bam > /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mpileup`

<pre>
[mpileup] 1 samples in 1 input files
<mpileup> Set max per-file depth to 8000
</pre>
Process 35303 returned: (0). Elapsed: 0:00:06.

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.counts`
> `/home/jinxu/bin/pileup_inf_rj.pl /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mpileup > /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.counts`

<pre>
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 303.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 305.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 306.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 307.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 3075.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 7153.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 8584.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 16289.
</pre>
Process 35363 returned: (0). Elapsed: 0:00:06.
> ` awk 'BEGIN{sum=0;num=0}''{sum+=$4;num++}''END{print sum/num}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.counts`

> `mt_aver_depth`	68.8686	scATAC_mtSMC	_RES_

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.snv`
> `java -Xmx4g  -jar /home/jinxu/software/VarScan.v2.3.7.jar  pileup2snp /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mpileup  --min-var-freq 0.01  --min-reads2 2  > /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.snv`

<pre>
Warning: No p-value threshold provided, so p-values will not be calculated
Min coverage:	8
Min reads2:	2
Min var freq:	0.01
Min avg qual:	15
P-value thresh:	0.99
Reading input from /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mpileup
16289 bases in pileup file
15325 met minimum coverage of 8x
168 SNPs predicted
</pre>
Process 35450 returned: (0). Elapsed: 0:00:06.

Change status from running to completed

Cleaning up conditional list...

Removing glob: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/13-TAAGGCGA-GCGATCTA*.fq
> `Time`	0:08:41	scATAC_mtSMC	_RES_
> `Success`	08-16 11:21:31	scATAC_mtSMC	_RES_

##### [Epilogue:]
*   Total elapsed time:  0:08:41
*     Peak memory used:  4.67 GB
* Pipeline completed at:  (08-16 11:21:31) elapsed:0:08:40 _TIME_

Pypiper terminating spawned child process 32538
cd /storage/jinxu/.local/lib/python2.7/site-packages/pypiper; git rev-parse --verify HEAD 2>/dev/null
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `/storage/jinxu/develop/ATAC_mito_sc/src/scATACseq_mtSMC_3.py -P 8 -M 100 -O /home/jinxu/develop/ATAC_mito_sc/example/output -R -S 13-TAAGGCGA-GCGATCTA -s 0 -G hg19 -Q paired -I /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz -I2 /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/jinxu/develop/ATAC_mito_sc/example
*            Outfolder:  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/
*  Pipeline started at:   (08-16 13:25:58) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/jinxu/.local/lib/python2.7/site-packages/pypiper`
*         Pipeline dir:  `/storage/jinxu/develop/ATAC_mito_sc/src`
*     Pipeline version:  1f3415359de21444b193ffff6fa835aebf46fbe1
*      Pipeline branch:  * develop
*        Pipeline date:  2017-08-14 14:05:38 -0700
*        Pipeline diff:  15 files changed, 341 insertions(+), 506 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz']`
*   `single_or_paired`:  `paired`
*         `paired_end`:  `True`
*        `config_file`:  `scATACseq_mtSMC_3.yaml`
*              `input`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz']`
*                `mem`:  `100`
*        `sample_name`:  `13-TAAGGCGA-GCGATCTA`
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
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz

### Merge/link and fastq conversion:  (08-16 13:25:58) elapsed:0:00:00 _TIME_

Number of input file sets:		2

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz`
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz`
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz
['/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz', '/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz']

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/`
> ` rm -f  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/stats.tsv`

<pre>
</pre>
Process 42727 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `File_MB`	1.7355	scATAC_mtSMC	_RES_
> `GenomeV`	hg19	scATAC_mtSMC	_RES_

### Adapter trimming:  (08-16 13:25:58) elapsed:0:00:00 _TIME_

> `Raw_reads`	60782	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R1_trimmed.fq`
> `Trimmed_reads`	60682.0	scATAC_mtSMC	_RES_
> `Trim_loss_rate`	0.0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R1.sai`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R2.sai`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.sam`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.bam`
> `Aligned_reads`	59111	scATAC_mtSMC	_RES_
> `Alignment_rate`	0.97	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam`
> `rmdup_reads`	25814	scATAC_mtSMC	_RES_
> `dup_rate`	0.56	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.genomeQ30PE.bam`
> `genomeQ30PE_reads`	88	scATAC_mtSMC	_RES_
> `genomeQ30PE_rate`	0.0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.RefTSSCount`
> ` awk 'BEGIN{sum=0}''{sum+=$6;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.RefTSSCount`

> `Total_TSS_reads`	60	scATAC_mtSMC	_RES_
> `TSS_rate`	0.34	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mtQ30PE.bam`
> `mtQ30PE_reads`	18695	scATAC_mtSMC	_RES_
> `mtQ30PE_rate`	0.32	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.target.intervals`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.realigned.bam`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mpileup`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.counts`
> ` awk 'BEGIN{sum=0;num=0}''{sum+=$4;num++}''END{print sum/num}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.counts`

> `mt_aver_depth`	68.8686	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.snv`

Change status from running to completed

Cleaning up conditional list...

Removing glob: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/13-TAAGGCGA-GCGATCTA*.fq
> `Time`	0:00:01	scATAC_mtSMC	_RES_
> `Success`	08-16 13:25:59	scATAC_mtSMC	_RES_

##### [Epilogue:]
*   Total elapsed time:  0:00:01
*     Peak memory used:  0.0 GB
* Pipeline completed at:  (08-16 13:25:59) elapsed:0:00:00 _TIME_

Pypiper terminating spawned child process 42713
cd /storage/jinxu/.local/lib/python2.7/site-packages/pypiper; git rev-parse --verify HEAD 2>/dev/null
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `/storage/jinxu/develop/ATAC_mito_sc/src/scATACseq_mtSMC_3.py -P 8 -M 100 -O /home/jinxu/develop/ATAC_mito_sc/example/output -R -S 13-TAAGGCGA-GCGATCTA -s 0 -G hg19 -Q paired -I /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz -I2 /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/jinxu/develop/ATAC_mito_sc/example
*            Outfolder:  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/
*  Pipeline started at:   (08-16 13:42:32) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/jinxu/.local/lib/python2.7/site-packages/pypiper`
*         Pipeline dir:  `/storage/jinxu/develop/ATAC_mito_sc/src`
*     Pipeline version:  1f3415359de21444b193ffff6fa835aebf46fbe1
*      Pipeline branch:  * develop
*        Pipeline date:  2017-08-14 14:05:38 -0700
*        Pipeline diff:  15 files changed, 686 insertions(+), 440 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz']`
*   `single_or_paired`:  `paired`
*         `paired_end`:  `True`
*        `config_file`:  `scATACseq_mtSMC_3.yaml`
*              `input`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz']`
*                `mem`:  `100`
*        `sample_name`:  `13-TAAGGCGA-GCGATCTA`
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
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz

### Merge/link and fastq conversion:  (08-16 13:42:32) elapsed:0:00:00 _TIME_

Number of input file sets:		2

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz`
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz`
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz
['/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz', '/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz']

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/`
> ` rm -f  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/stats.tsv`

<pre>
</pre>
Process 44045 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `File_MB`	1.7355	scATAC_mtSMC	_RES_
> `GenomeV`	hg19	scATAC_mtSMC	_RES_

### Adapter trimming:  (08-16 13:42:32) elapsed:0:00:00 _TIME_

> `Raw_reads`	60782	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R1_trimmed.fq`
> `Trimmed_reads`	60682.0	scATAC_mtSMC	_RES_
> `Trim_loss_rate`	0.0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R1.sai`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R2.sai`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.sam`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.bam`
> `Aligned_reads`	59111	scATAC_mtSMC	_RES_
> `Alignment_rate`	0.97	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam`
> `rmdup_reads`	25814	scATAC_mtSMC	_RES_
> `dup_rate`	0.56	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.genomeQ30PE.bam`
> `genomeQ30PE_reads`	88	scATAC_mtSMC	_RES_
> `genomeQ30PE_rate`	0.0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.RefTSSCount`
> ` awk 'BEGIN{sum=0}''{sum+=$6;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.RefTSSCount`

> `Total_TSS_reads`	60	scATAC_mtSMC	_RES_
> `TSS_rate`	0.34	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mtQ30PE.bam`
> `mtQ30PE_reads`	18695	scATAC_mtSMC	_RES_
> `mtQ30PE_rate`	0.32	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.target.intervals`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.realigned.bam`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mpileup`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.counts`
> ` awk 'BEGIN{sum=0;}''{sum+=$4;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.counts`

> ` awk 'BEGIN{num=0;}''{num++;}''END{print num}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.counts`

> `mt_aver_depth`	68.87	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.snv`

Change status from running to completed

Cleaning up conditional list...

Removing glob: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/13-TAAGGCGA-GCGATCTA*.fq
> `Time`	0:00:01	scATAC_mtSMC	_RES_
> `Success`	08-16 13:42:32	scATAC_mtSMC	_RES_

##### [Epilogue:]
*   Total elapsed time:  0:00:01
*     Peak memory used:  0.0 GB
* Pipeline completed at:  (08-16 13:42:32) elapsed:0:00:00 _TIME_

Pypiper terminating spawned child process 44031
cd /storage/jinxu/.local/lib/python2.7/site-packages/pypiper; git rev-parse --verify HEAD 2>/dev/null
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `/storage/jinxu/develop/ATAC_mito_sc/src/scATACseq_mtSMC_3.py -P 8 -M 100 -O /home/jinxu/develop/ATAC_mito_sc/example/output -R -S 13-TAAGGCGA-GCGATCTA -s 0 -G hg19 -Q paired -I /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz -I2 /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/jinxu/develop/ATAC_mito_sc/example
*            Outfolder:  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/
*  Pipeline started at:   (08-16 13:45:26) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/jinxu/.local/lib/python2.7/site-packages/pypiper`
*         Pipeline dir:  `/storage/jinxu/develop/ATAC_mito_sc/src`
*     Pipeline version:  1f3415359de21444b193ffff6fa835aebf46fbe1
*      Pipeline branch:  * develop
*        Pipeline date:  2017-08-14 14:05:38 -0700
*        Pipeline diff:  15 files changed, 973 insertions(+), 434 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz']`
*   `single_or_paired`:  `paired`
*         `paired_end`:  `True`
*        `config_file`:  `scATACseq_mtSMC_3.yaml`
*              `input`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz']`
*                `mem`:  `100`
*        `sample_name`:  `13-TAAGGCGA-GCGATCTA`
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
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz

### Merge/link and fastq conversion:  (08-16 13:45:26) elapsed:0:00:00 _TIME_

Number of input file sets:		2

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz`
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz`
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz
['/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz', '/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz']

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/`
> ` rm -f  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/stats.tsv`

<pre>
</pre>
Process 44261 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `File_MB`	1.7355	scATAC_mtSMC	_RES_
> `GenomeV`	hg19	scATAC_mtSMC	_RES_

### Adapter trimming:  (08-16 13:45:27) elapsed:0:00:00 _TIME_

> `Raw_reads`	60782	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R1_trimmed.fq`
> `Trimmed_reads`	60682.0	scATAC_mtSMC	_RES_
> `Trim_loss_rate`	0.0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R1.sai`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R2.sai`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.sam`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.bam`
> `Aligned_reads`	59111	scATAC_mtSMC	_RES_
> `Alignment_rate`	0.97	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam`
> `rmdup_reads`	25814	scATAC_mtSMC	_RES_
> `dup_rate`	0.56	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.genomeQ30PE.bam`
> `genomeQ30PE_reads`	88	scATAC_mtSMC	_RES_
> `genomeQ30PE_rate`	0.0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.RefTSSCount`
> ` awk 'BEGIN{sum=0}''{sum+=$6;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.RefTSSCount`

> `Total_TSS_reads`	60	scATAC_mtSMC	_RES_
> `TSS_rate`	0.34	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mtQ30PE.bam`
> `mtQ30PE_reads`	18695	scATAC_mtSMC	_RES_
> `mtQ30PE_rate`	0.32	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.target.intervals`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.realigned.bam`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mpileup`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.counts`
> ` awk 'BEGIN{sum=0;}''{sum+=$4;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.counts`

> ` awk 'BEGIN{num=0;}''{num++;}''END{print num}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.counts`

> `mt_aver_depth`	68.87	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.snv`

Change status from running to completed

Cleaning up conditional list...

Removing glob: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/13-TAAGGCGA-GCGATCTA*.fq
> `Time`	0:00:01	scATAC_mtSMC	_RES_
> `Success`	08-16 13:45:27	scATAC_mtSMC	_RES_

##### [Epilogue:]
*   Total elapsed time:  0:00:01
*     Peak memory used:  0.0 GB
* Pipeline completed at:  (08-16 13:45:27) elapsed:0:00:00 _TIME_

Pypiper terminating spawned child process 44247
cd /storage/jinxu/.local/lib/python2.7/site-packages/pypiper; git rev-parse --verify HEAD 2>/dev/null
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `/storage/jinxu/develop/ATAC_mito_sc/src/scATACseq_mtSMC_3.py -P 8 -M 100 -O /home/jinxu/develop/ATAC_mito_sc/example/output -R -S 13-TAAGGCGA-GCGATCTA -s 0 -G hg19 -Q paired -I /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz -I2 /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/jinxu/develop/ATAC_mito_sc/example
*            Outfolder:  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/
*  Pipeline started at:   (08-16 13:46:36) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/jinxu/.local/lib/python2.7/site-packages/pypiper`
*         Pipeline dir:  `/storage/jinxu/develop/ATAC_mito_sc/src`
*     Pipeline version:  1f3415359de21444b193ffff6fa835aebf46fbe1
*      Pipeline branch:  * develop
*        Pipeline date:  2017-08-14 14:05:38 -0700
*        Pipeline diff:  15 files changed, 1267 insertions(+), 435 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz']`
*   `single_or_paired`:  `paired`
*         `paired_end`:  `True`
*        `config_file`:  `scATACseq_mtSMC_3.yaml`
*              `input`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz']`
*                `mem`:  `100`
*        `sample_name`:  `13-TAAGGCGA-GCGATCTA`
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
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz

### Merge/link and fastq conversion:  (08-16 13:46:36) elapsed:0:00:00 _TIME_

Number of input file sets:		2

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz`
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz`
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz
['/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz', '/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz']

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/`
> ` rm -f  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/stats.tsv`

<pre>
</pre>
Process 44384 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `File_MB`	1.7355	scATAC_mtSMC	_RES_
> `GenomeV`	hg19	scATAC_mtSMC	_RES_

### Adapter trimming:  (08-16 13:46:37) elapsed:0:00:00 _TIME_

> `Raw_reads`	60782	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R1_trimmed.fq`
> `Trimmed_reads`	60682.0	scATAC_mtSMC	_RES_
> `Trim_loss_rate`	0.0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R1.sai`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R2.sai`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.sam`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.bam`
> `Aligned_reads`	59111	scATAC_mtSMC	_RES_
> `Alignment_rate`	0.97	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam`
> `rmdup_reads`	25814	scATAC_mtSMC	_RES_
> `dup_rate`	0.56	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.genomeQ30PE.bam`
> `genomeQ30PE_reads`	88	scATAC_mtSMC	_RES_
> `genomeQ30PE_rate`	0.0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.RefTSSCount`
> ` awk 'BEGIN{sum=0}''{sum+=$6;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.RefTSSCount`

> `Total_TSS_reads`	60	scATAC_mtSMC	_RES_
> `TSS_rate`	0.34	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mtQ30PE.bam`
> `mtQ30PE_reads`	18695	scATAC_mtSMC	_RES_
> `mtQ30PE_rate`	0.32	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.target.intervals`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.realigned.bam`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mpileup`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.counts`
> ` awk 'BEGIN{sum=0;}''{sum+=$4;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.counts`

> ` awk 'BEGIN{num=0;}''{num++;}''END{print num}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.counts`

> `mt_aver_depth`	68.87	scATAC_mtSMC	_RES_
16281


Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.snv`

Change status from running to completed

Cleaning up conditional list...

Removing glob: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/13-TAAGGCGA-GCGATCTA*.fq
> `Time`	0:00:01	scATAC_mtSMC	_RES_
> `Success`	08-16 13:46:37	scATAC_mtSMC	_RES_

##### [Epilogue:]
*   Total elapsed time:  0:00:01
*     Peak memory used:  0.0 GB
* Pipeline completed at:  (08-16 13:46:37) elapsed:0:00:00 _TIME_

Pypiper terminating spawned child process 44370
cd /storage/jinxu/.local/lib/python2.7/site-packages/pypiper; git rev-parse --verify HEAD 2>/dev/null
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `/storage/jinxu/develop/ATAC_mito_sc/src/scATACseq_mtSMC_3.py -P 8 -M 100 -O /home/jinxu/develop/ATAC_mito_sc/example/output -R -S 13-TAAGGCGA-GCGATCTA -s 0 -G hg19 -Q paired -I /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz -I2 /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/jinxu/develop/ATAC_mito_sc/example
*            Outfolder:  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/
*  Pipeline started at:   (08-16 13:47:05) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/jinxu/.local/lib/python2.7/site-packages/pypiper`
*         Pipeline dir:  `/storage/jinxu/develop/ATAC_mito_sc/src`
*     Pipeline version:  1f3415359de21444b193ffff6fa835aebf46fbe1
*      Pipeline branch:  * develop
*        Pipeline date:  2017-08-14 14:05:38 -0700
*        Pipeline diff:  15 files changed, 1561 insertions(+), 435 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz']`
*   `single_or_paired`:  `paired`
*         `paired_end`:  `True`
*        `config_file`:  `scATACseq_mtSMC_3.yaml`
*              `input`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz']`
*                `mem`:  `100`
*        `sample_name`:  `13-TAAGGCGA-GCGATCTA`
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
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz

### Merge/link and fastq conversion:  (08-16 13:47:05) elapsed:0:00:00 _TIME_

Number of input file sets:		2

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz`
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz`
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz
['/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz', '/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz']

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/`
> ` rm -f  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/stats.tsv`

<pre>
</pre>
Process 44478 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `File_MB`	1.7355	scATAC_mtSMC	_RES_
> `GenomeV`	hg19	scATAC_mtSMC	_RES_

### Adapter trimming:  (08-16 13:47:05) elapsed:0:00:00 _TIME_

> `Raw_reads`	60782	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R1_trimmed.fq`
> `Trimmed_reads`	60682.0	scATAC_mtSMC	_RES_
> `Trim_loss_rate`	0.0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R1.sai`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R2.sai`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.sam`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.bam`
> `Aligned_reads`	59111	scATAC_mtSMC	_RES_
> `Alignment_rate`	0.97	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam`
> `rmdup_reads`	25814	scATAC_mtSMC	_RES_
> `dup_rate`	0.56	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.genomeQ30PE.bam`
> `genomeQ30PE_reads`	88	scATAC_mtSMC	_RES_
> `genomeQ30PE_rate`	0.0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.RefTSSCount`
> ` awk 'BEGIN{sum=0}''{sum+=$6;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.RefTSSCount`

> `Total_TSS_reads`	60	scATAC_mtSMC	_RES_
> `TSS_rate`	0.34	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mtQ30PE.bam`
> `mtQ30PE_reads`	18695	scATAC_mtSMC	_RES_
> `mtQ30PE_rate`	0.32	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.target.intervals`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.realigned.bam`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mpileup`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.counts`
> ` awk 'BEGIN{sum=0;}''{sum+=$4;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.counts`

> ` awk 'BEGIN{num=0;}''{num++;}''END{print num}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.counts`

16281

> `mt_aver_depth`	68.87	scATAC_mtSMC	_RES_
16281


Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.snv`

Change status from running to completed

Cleaning up conditional list...

Removing glob: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/13-TAAGGCGA-GCGATCTA*.fq
> `Time`	0:00:01	scATAC_mtSMC	_RES_
> `Success`	08-16 13:47:05	scATAC_mtSMC	_RES_

##### [Epilogue:]
*   Total elapsed time:  0:00:01
*     Peak memory used:  0.0 GB
* Pipeline completed at:  (08-16 13:47:05) elapsed:0:00:00 _TIME_

Pypiper terminating spawned child process 44464
cd /storage/jinxu/.local/lib/python2.7/site-packages/pypiper; git rev-parse --verify HEAD 2>/dev/null
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `/storage/jinxu/develop/ATAC_mito_sc/src/scATACseq_mtSMC_3.py -P 8 -M 100 -O /home/jinxu/develop/ATAC_mito_sc/example/output -R -S 13-TAAGGCGA-GCGATCTA -s 0 -G hg19 -Q paired -I /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz -I2 /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/jinxu/develop/ATAC_mito_sc/example
*            Outfolder:  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/
*  Pipeline started at:   (08-16 13:51:26) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/jinxu/.local/lib/python2.7/site-packages/pypiper`
*         Pipeline dir:  `/storage/jinxu/develop/ATAC_mito_sc/src`
*     Pipeline version:  1f3415359de21444b193ffff6fa835aebf46fbe1
*      Pipeline branch:  * develop
*        Pipeline date:  2017-08-14 14:05:38 -0700
*        Pipeline diff:  15 files changed, 1859 insertions(+), 435 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz']`
*   `single_or_paired`:  `paired`
*         `paired_end`:  `True`
*        `config_file`:  `scATACseq_mtSMC_3.yaml`
*              `input`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz']`
*                `mem`:  `100`
*        `sample_name`:  `13-TAAGGCGA-GCGATCTA`
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
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz

### Merge/link and fastq conversion:  (08-16 13:51:26) elapsed:0:00:00 _TIME_

Number of input file sets:		2

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz`
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz`
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz
['/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz', '/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz']

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/`
> ` rm -f  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/stats.tsv`

<pre>
</pre>
Process 44998 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `File_MB`	1.7355	scATAC_mtSMC	_RES_
> `GenomeV`	hg19	scATAC_mtSMC	_RES_

### Adapter trimming:  (08-16 13:51:26) elapsed:0:00:00 _TIME_

> `Raw_reads`	60782	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R1_trimmed.fq`
> `Trimmed_reads`	60682.0	scATAC_mtSMC	_RES_
> `Trim_loss_rate`	0.0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R1.sai`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R2.sai`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.sam`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.bam`
> `Aligned_reads`	59111	scATAC_mtSMC	_RES_
> `Alignment_rate`	0.97	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam`
> `rmdup_reads`	25814	scATAC_mtSMC	_RES_
> `dup_rate`	0.56	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.genomeQ30PE.bam`
> `genomeQ30PE_reads`	88	scATAC_mtSMC	_RES_
> `genomeQ30PE_rate`	0.0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.RefTSSCount`
> ` awk 'BEGIN{sum=0}''{sum+=$6;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.RefTSSCount`

> `Total_TSS_reads`	60	scATAC_mtSMC	_RES_
> `TSS_rate`	0.34	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mtQ30PE.bam`
> `mtQ30PE_reads`	18695	scATAC_mtSMC	_RES_
> `mtQ30PE_rate`	0.32	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.target.intervals`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.realigned.bam`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mpileup`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.counts`
> ` awk 'BEGIN{sum=0;}''{sum+=$4;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.counts`

> ` awk 'BEGIN{num=0;}''{num++;}''END{print num}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.counts`

16281

> `mt_aver_depth`	68.87	scATAC_mtSMC	_RES_
16281


Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.snv`

Change status from running to completed

Cleaning up conditional list...

Removing glob: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/13-TAAGGCGA-GCGATCTA*.fq
> `Time`	0:00:01	scATAC_mtSMC	_RES_
> `Success`	08-16 13:51:26	scATAC_mtSMC	_RES_

##### [Epilogue:]
*   Total elapsed time:  0:00:01
*     Peak memory used:  0.0 GB
* Pipeline completed at:  (08-16 13:51:26) elapsed:0:00:00 _TIME_

Pypiper terminating spawned child process 44984
cd /storage/jinxu/.local/lib/python2.7/site-packages/pypiper; git rev-parse --verify HEAD 2>/dev/null
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `/storage/jinxu/develop/ATAC_mito_sc/src/scATACseq_mtSMC_3.py -P 8 -M 100 -O /home/jinxu/develop/ATAC_mito_sc/example/output -R -S 13-TAAGGCGA-GCGATCTA -s 0 -G hg19 -Q paired -I /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz -I2 /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/jinxu/develop/ATAC_mito_sc/example
*            Outfolder:  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/
*  Pipeline started at:   (08-16 13:52:23) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/jinxu/.local/lib/python2.7/site-packages/pypiper`
*         Pipeline dir:  `/storage/jinxu/develop/ATAC_mito_sc/src`
*     Pipeline version:  1f3415359de21444b193ffff6fa835aebf46fbe1
*      Pipeline branch:  * develop
*        Pipeline date:  2017-08-14 14:05:38 -0700
*        Pipeline diff:  15 files changed, 2157 insertions(+), 435 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz']`
*   `single_or_paired`:  `paired`
*         `paired_end`:  `True`
*        `config_file`:  `scATACseq_mtSMC_3.yaml`
*              `input`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz']`
*                `mem`:  `100`
*        `sample_name`:  `13-TAAGGCGA-GCGATCTA`
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
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz

### Merge/link and fastq conversion:  (08-16 13:52:23) elapsed:0:00:00 _TIME_

Number of input file sets:		2

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz`
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz`
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz
['/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz', '/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz']

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/`
> ` rm -f  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/stats.tsv`

<pre>
</pre>
Process 46355 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `File_MB`	1.7355	scATAC_mtSMC	_RES_
> `GenomeV`	hg19	scATAC_mtSMC	_RES_

### Adapter trimming:  (08-16 13:52:23) elapsed:0:00:00 _TIME_

> `Raw_reads`	60782	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R1_trimmed.fq`
> `Trimmed_reads`	60682.0	scATAC_mtSMC	_RES_
> `Trim_loss_rate`	0.0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R1.sai`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R2.sai`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.sam`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.bam`
> `Aligned_reads`	59111	scATAC_mtSMC	_RES_
> `Alignment_rate`	0.97	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam`
> `rmdup_reads`	25814	scATAC_mtSMC	_RES_
> `dup_rate`	0.56	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.genomeQ30PE.bam`
> `genomeQ30PE_reads`	88	scATAC_mtSMC	_RES_
> `genomeQ30PE_rate`	0.0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.RefTSSCount`
> ` awk 'BEGIN{sum=0}''{sum+=$6;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.RefTSSCount`

> `Total_TSS_reads`	60	scATAC_mtSMC	_RES_
> `TSS_rate`	0.34	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mtQ30PE.bam`
> `mtQ30PE_reads`	18695	scATAC_mtSMC	_RES_
> `mtQ30PE_rate`	0.32	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.target.intervals`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.realigned.bam`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mpileup`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.counts`
> ` awk 'BEGIN{sum=0;}''{sum+=$4;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.counts`

> ` awk 'BEGIN{num=0;}''{num++;}''END{print num}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.counts`

16281

> `mt_aver_depth`	68.87	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.snv`

Change status from running to completed

Cleaning up conditional list...

Removing glob: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/13-TAAGGCGA-GCGATCTA*.fq
> `Time`	0:00:01	scATAC_mtSMC	_RES_
> `Success`	08-16 13:52:23	scATAC_mtSMC	_RES_

##### [Epilogue:]
*   Total elapsed time:  0:00:01
*     Peak memory used:  0.0 GB
* Pipeline completed at:  (08-16 13:52:23) elapsed:0:00:00 _TIME_

Pypiper terminating spawned child process 46341
cd /storage/jinxu/.local/lib/python2.7/site-packages/pypiper; git rev-parse --verify HEAD 2>/dev/null
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `/storage/jinxu/develop/ATAC_mito_sc/src/scATACseq_mtSMC_3.py -P 8 -M 100 -O /home/jinxu/develop/ATAC_mito_sc/example/output -R -S 13-TAAGGCGA-GCGATCTA -s 0 -G hg19 -Q paired -I /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz -I2 /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/jinxu/develop/ATAC_mito_sc/example
*            Outfolder:  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/
*  Pipeline started at:   (08-16 13:53:56) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/jinxu/.local/lib/python2.7/site-packages/pypiper`
*         Pipeline dir:  `/storage/jinxu/develop/ATAC_mito_sc/src`
*     Pipeline version:  1f3415359de21444b193ffff6fa835aebf46fbe1
*      Pipeline branch:  * develop
*        Pipeline date:  2017-08-14 14:05:38 -0700
*        Pipeline diff:  15 files changed, 2453 insertions(+), 435 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz']`
*   `single_or_paired`:  `paired`
*         `paired_end`:  `True`
*        `config_file`:  `scATACseq_mtSMC_3.yaml`
*              `input`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz']`
*                `mem`:  `100`
*        `sample_name`:  `13-TAAGGCGA-GCGATCTA`
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
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz

### Merge/link and fastq conversion:  (08-16 13:53:56) elapsed:0:00:00 _TIME_

Number of input file sets:		2

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz`
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz`
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz
['/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz', '/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz']

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/`
> ` rm -f  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/stats.tsv`

<pre>
</pre>
Process 46497 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `File_MB`	1.7355	scATAC_mtSMC	_RES_
> `GenomeV`	hg19	scATAC_mtSMC	_RES_

### Adapter trimming:  (08-16 13:53:57) elapsed:0:00:00 _TIME_

> `Raw_reads`	60782	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R1_trimmed.fq`
> `Trimmed_reads`	60682.0	scATAC_mtSMC	_RES_
> `Trim_loss_rate`	0.0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R1.sai`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R2.sai`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.sam`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.bam`
> `Aligned_reads`	59111	scATAC_mtSMC	_RES_
> `Alignment_rate`	0.97	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam`
> `rmdup_reads`	25814	scATAC_mtSMC	_RES_
> `dup_rate`	0.56	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.genomeQ30PE.bam`
> `genomeQ30PE_reads`	88	scATAC_mtSMC	_RES_
> `genomeQ30PE_rate`	0.0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.RefTSSCount`
> ` awk 'BEGIN{sum=0}''{sum+=$6;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.RefTSSCount`

> `Total_TSS_reads`	60	scATAC_mtSMC	_RES_
> `TSS_rate`	0.34	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mtQ30PE.bam`
> `mtQ30PE_reads`	18695	scATAC_mtSMC	_RES_
> `mtQ30PE_rate`	0.32	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.target.intervals`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.realigned.bam`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mpileup`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.counts`
> ` awk 'BEGIN{sum=0;}''{sum+=$4;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.counts`

> ` awk 'BEGIN{num=0;}''{num++;}''END{print num}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.counts`

> `mt_aver_depth`	68.87	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.snv`

Change status from running to completed

Cleaning up conditional list...

Removing glob: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/13-TAAGGCGA-GCGATCTA*.fq
> `Time`	0:00:01	scATAC_mtSMC	_RES_
> `Success`	08-16 13:53:57	scATAC_mtSMC	_RES_

##### [Epilogue:]
*   Total elapsed time:  0:00:01
*     Peak memory used:  0.0 GB
* Pipeline completed at:  (08-16 13:53:57) elapsed:0:00:00 _TIME_

Pypiper terminating spawned child process 46482
cd /storage/jinxu/.local/lib/python2.7/site-packages/pypiper; git rev-parse --verify HEAD 2>/dev/null
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `/storage/jinxu/develop/ATAC_mito_sc/src/scATACseq_mtSMC_3.py -P 8 -M 100 -O /home/jinxu/develop/ATAC_mito_sc/example/output -R -S 13-TAAGGCGA-GCGATCTA -s 0 -G hg19 -Q paired -I /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz -I2 /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/jinxu/develop/ATAC_mito_sc/example
*            Outfolder:  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/
*  Pipeline started at:   (08-16 14:13:08) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/jinxu/.local/lib/python2.7/site-packages/pypiper`
*         Pipeline dir:  `/storage/jinxu/develop/ATAC_mito_sc/src`
*     Pipeline version:  1f3415359de21444b193ffff6fa835aebf46fbe1
*      Pipeline branch:  * develop
*        Pipeline date:  2017-08-14 14:05:38 -0700
*        Pipeline diff:  15 files changed, 2764 insertions(+), 441 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz']`
*   `single_or_paired`:  `paired`
*         `paired_end`:  `True`
*        `config_file`:  `scATACseq_mtSMC_3.yaml`
*              `input`:  `['/home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz']`
*                `mem`:  `100`
*        `sample_name`:  `13-TAAGGCGA-GCGATCTA`
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
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz

### Merge/link and fastq conversion:  (08-16 14:13:08) elapsed:0:00:00 _TIME_

Number of input file sets:		2

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz`
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz`
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz
['/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz', '/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz']

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/`
> ` rm -f  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/stats.tsv`

<pre>
</pre>
Process 48481 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `File_MB`	1.7355	scATAC_mtSMC	_RES_
> `GenomeV`	hg19	scATAC_mtSMC	_RES_

### Adapter trimming:  (08-16 14:13:08) elapsed:0:00:00 _TIME_

> `Raw_reads`	60782	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R1_trimmed.fq`
> `Trimmed_reads`	60682.0	scATAC_mtSMC	_RES_
> `Trim_loss_rate`	0.0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R1.sai`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R2.sai`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.sam`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.bam`
> `Aligned_reads`	59111	scATAC_mtSMC	_RES_
> `Alignment_rate`	0.97	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam`
> `rmdup_reads`	25814	scATAC_mtSMC	_RES_
> `dup_rate`	0.56	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.genomeQ30PE.bam`
> `genomeQ30PE_reads`	88	scATAC_mtSMC	_RES_
> `genomeQ30PE_rate`	0.0	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.RefTSSCount`
> ` awk 'BEGIN{sum=0}''{sum+=$6;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.RefTSSCount`

> `Total_TSS_reads`	60	scATAC_mtSMC	_RES_
> `TSS_rate`	0.34	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mtQ30PE.bam`
> `mtQ30PE_reads`	18695	scATAC_mtSMC	_RES_
> `mtQ30PE_rate`	0.32	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.target.intervals`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.realigned.bam`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mpileup`

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.counts`
> ` awk 'BEGIN{sum=0;}''{sum+=$4;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.counts`

> ` awk 'BEGIN{num=0;}''{num++;}''END{print num}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.counts`

> `mt_aver_depth`	68.87	scATAC_mtSMC	_RES_

Target exists: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.snv`

Change status from running to completed

Cleaning up conditional list...

Removing glob: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/13-TAAGGCGA-GCGATCTA*.fq
> `Time`	0:00:01	scATAC_mtSMC	_RES_
> `Success`	08-16 14:13:08	scATAC_mtSMC	_RES_

##### [Epilogue:]
*   Total elapsed time:  0:00:01
*     Peak memory used:  0.0 GB
* Pipeline completed at:  (08-16 14:13:08) elapsed:0:00:00 _TIME_

Pypiper terminating spawned child process 48467
