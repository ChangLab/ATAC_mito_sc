cd /storage/jinxu/.local/lib/python2.7/site-packages/pypiper; git rev-parse --verify HEAD 2>/dev/null
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `/storage/jinxu/develop/ATAC_mito_sc/src/scATACseq_mtSMC_3.py -P 2 -M 100 -O /home/jinxu/develop/ATAC_mito_sc/example/output -R -S 13-TAAGGCGA-GCGATCTA -s 0 -G hg19 -Q paired -I /home/jinxu/scATAC/pipeline/ATAC_mito/pipelines/ATAC_mito_sc/example/test_data//13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz -I2 /home/jinxu/scATAC/pipeline/ATAC_mito/pipelines/ATAC_mito_sc/example/test_data//13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/jinxu/develop/ATAC_mito_sc/example
*            Outfolder:  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/
*  Pipeline started at:   (08-09 15:17:26) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/jinxu/.local/lib/python2.7/site-packages/pypiper`
*         Pipeline dir:  `/storage/jinxu/develop/ATAC_mito_sc/src`

##### [Arguments passed to pipeline:]
*             `input2`:  `['/home/jinxu/scATAC/pipeline/ATAC_mito/pipelines/ATAC_mito_sc/example/test_data//13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz']`
*   `single_or_paired`:  `paired`
*         `paired_end`:  `True`
*        `config_file`:  `scATACseq_mtSMC_3.yaml`
*              `input`:  `['/home/jinxu/scATAC/pipeline/ATAC_mito/pipelines/ATAC_mito_sc/example/test_data//13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz']`
*                `mem`:  `100`
*        `sample_name`:  `13-TAAGGCGA-GCGATCTA`
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
Local input file: /home/jinxu/scATAC/pipeline/ATAC_mito/pipelines/ATAC_mito_sc/example/test_data//13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz
Local input file: /home/jinxu/scATAC/pipeline/ATAC_mito/pipelines/ATAC_mito_sc/example/test_data//13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz

### Merge/link and fastq conversion:  (08-09 15:17:26) elapsed:0:00:00 _TIME_

Number of input file sets:		2

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz`
> `ln -sf /home/jinxu/scATAC/pipeline/ATAC_mito/pipelines/ATAC_mito_sc/example/test_data//13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz`

<pre>
</pre>
Process 43169 returned: (0). Elapsed: 0:00:00.
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz`
> `ln -sf /home/jinxu/scATAC/pipeline/ATAC_mito/pipelines/ATAC_mito_sc/example/test_data//13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz`

<pre>
</pre>
Process 43170 returned: (0). Elapsed: 0:00:00.
Local input file: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz
['/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz', '/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz']

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/`
> ` rm -f  /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/stats.tsv`

<pre>
</pre>
Process 43172 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `File_MB`	1.7355	scATAC_mtSMC	_RES_
> `GenomeV`	hg19	scATAC_mtSMC	_RES_

### Adapter trimming:  (08-09 15:17:27) elapsed:0:00:01 _TIME_

> `Raw_reads`	60782	scATAC_mtSMC	_RES_

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R1_trimmed.fq`
> `/usr/bin/java -Xmx100m -jar /home/jinxu/software/Trimmomatic-0.36/trimmomatic-0.36.jar PE  -threads 2 /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R1_trimmed.fq /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R1_unpaired.fq /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R2_trimmed.fq /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R2_unpaired.fq ILLUMINACLIP:/home/jinxu/software/Trimmomatic-0.36/adapters/NexteraPE-PE.fa:2:30:10`

<pre>
TrimmomaticPE: Started with arguments:
 -threads 2 /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R1_trimmed.fq /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R1_unpaired.fq /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R2_trimmed.fq /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R2_unpaired.fq ILLUMINACLIP:/home/jinxu/software/Trimmomatic-0.36/adapters/NexteraPE-PE.fa:2:30:10
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
Process 43178 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.069GB; Pipeline: 0.0GB)
> `Trimmed_reads`	60682.0	scATAC_mtSMC	_RES_
> `Trim_loss_rate`	0.0	scATAC_mtSMC	_RES_

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R1.sai`
> `/home/jinxu/software/bwa-0.7.15/bwa aln  -t  2 /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R1_trimmed.fq -f /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R1.sai`

<pre>
[bwa_aln] 17bp reads: max_diff = 2
[bwa_aln] 38bp reads: max_diff = 3
[bwa_aln] 64bp reads: max_diff = 4
[bwa_aln] 93bp reads: max_diff = 5
[bwa_aln] 124bp reads: max_diff = 6
[bwa_aln] 157bp reads: max_diff = 7
[bwa_aln] 190bp reads: max_diff = 8
[bwa_aln] 225bp reads: max_diff = 9
[bwa_aln_core] calculate SA coordinate... 6.53 sec
[bwa_aln_core] write to the disk... 0.01 sec
[bwa_aln_core] 30341 sequences have been processed.
[main] Version: 0.7.15-r1140
[main] CMD: /home/jinxu/software/bwa-0.7.15/bwa aln -t 2 -f /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R1.sai /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R1_trimmed.fq
[main] Real time: 5.524 sec; CPU: 8.497 sec
</pre>
Process 43260 returned: (0). Elapsed: 0:00:16. Peak memory: (Process: 3.049GB; Pipeline: 0.069GB)

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R2.sai`
> `/home/jinxu/software/bwa-0.7.15/bwa aln  -t 2 /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R2_trimmed.fq -f /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R2.sai`

<pre>
[bwa_aln] 17bp reads: max_diff = 2
[bwa_aln] 38bp reads: max_diff = 3
[bwa_aln] 64bp reads: max_diff = 4
[bwa_aln] 93bp reads: max_diff = 5
[bwa_aln] 124bp reads: max_diff = 6
[bwa_aln] 157bp reads: max_diff = 7
[bwa_aln] 190bp reads: max_diff = 8
[bwa_aln] 225bp reads: max_diff = 9
[bwa_aln_core] calculate SA coordinate... 8.01 sec
[bwa_aln_core] write to the disk... 0.00 sec
[bwa_aln_core] 30341 sequences have been processed.
[main] Version: 0.7.15-r1140
[main] CMD: /home/jinxu/software/bwa-0.7.15/bwa aln -t 2 -f /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R2.sai /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R2_trimmed.fq
[main] Real time: 6.200 sec; CPU: 9.968 sec
</pre>
Process 43312 returned: (0). Elapsed: 0:00:16. Peak memory: (Process: 3.049GB; Pipeline: 3.049GB)

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.sam`
> `/home/jinxu/software/bwa-0.7.15/bwa sampe -r "@RG\tID:13-TAAGGCGA-GCGATCTA\tSM:MT\tPL:ILLUMINA" /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R1.sai /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R2.sai /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R1_trimmed.fq /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R2_trimmed.fq -f /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.sam`

<pre>
[bwa_sai2sam_pe_core] convert to sequence coordinate... 
[infer_isize] (25, 50, 75) percentile: (45, 56, 72)
[infer_isize] low and high boundaries: 76 and 126 for estimating avg and std
[infer_isize] inferred external isize from 3566 pairs: 89.510 +/- 12.174
[infer_isize] skewness: 1.072; kurtosis: 0.301; ap_prior: 5.00e-04
[infer_isize] inferred maximum insert size: 176 (7.12 sigma)
[bwa_sai2sam_pe_core] time elapses: 3.44 sec
[bwa_sai2sam_pe_core] changing coordinates of 366 alignments.
[bwa_sai2sam_pe_core] align unmapped mate...
[bwa_paired_sw] 118 out of 1186 Q17 singletons are mated.
[bwa_paired_sw] 36 out of 1637 Q17 discordant pairs are fixed.
[bwa_sai2sam_pe_core] time elapses: 0.46 sec
[bwa_sai2sam_pe_core] refine gapped alignments... 0.05 sec
[bwa_sai2sam_pe_core] print alignments... 0.20 sec
[bwa_sai2sam_pe_core] 30341 sequences have been processed.
[main] Version: 0.7.15-r1140
[main] CMD: /home/jinxu/software/bwa-0.7.15/bwa sampe -r @RG\tID:13-TAAGGCGA-GCGATCTA\tSM:MT\tPL:ILLUMINA -f /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.sam /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R1.sai /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R2.sai /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R1_trimmed.fq /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/fastq/13-TAAGGCGA-GCGATCTA_R2_trimmed.fq
[main] Real time: 4.275 sec; CPU: 4.263 sec
</pre>
Process 43315 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.38GB; Pipeline: 3.049GB)

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.bam`
> `java -Xmx4g -jar /home/jinxu/software/picard-tools-2.4.1/picard.jar SortSam SORT_ORDER=coordinate CREATE_INDEX=true VALIDATION_STRINGENCY=SILENT INPUT=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.sam OUTPUT=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.bam`

<pre>
[Wed Aug 09 15:18:10 PDT 2017] picard.sam.SortSam INPUT=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.sam OUTPUT=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT CREATE_INDEX=true    VERBOSITY=INFO QUIET=false COMPRESSION_LEVEL=5 MAX_RECORDS_IN_RAM=500000 CREATE_MD5_FILE=false GA4GH_CLIENT_SECRETS=client_secrets.json
[Wed Aug 09 15:18:10 PDT 2017] Executing as jinxu@changrila2.stanford.edu on Linux 3.10.0-327.22.2.el7.x86_64 amd64; OpenJDK 64-Bit Server VM 1.8.0_101-b13; Picard version: 2.4.1(7c4d36e011df1aec4689b51efcada44e92d1817f_1464389670) JdkDeflater
INFO	2017-08-09 15:18:11	SortSam	Finished reading inputs, merging and writing to output now.
[Wed Aug 09 15:18:12 PDT 2017] picard.sam.SortSam done. Elapsed time: 0.02 minutes.
Runtime.totalMemory()=2058354688
</pre>
Process 43316 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.062GB; Pipeline: 3.049GB)
> `Aligned_reads`	59111	scATAC_mtSMC	_RES_
> `Alignment_rate`	0.97	scATAC_mtSMC	_RES_

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam`
> `java -Xmx4g -jar /home/jinxu/software/picard-tools-2.4.1/picard.jar MarkDuplicates CREATE_INDEX=true ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT REMOVE_DUPLICATES=true INPUT=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.bam OUTPUT=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam METRICS_FILE=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.metrics`

<pre>
[Wed Aug 09 15:18:16 PDT 2017] picard.sam.markduplicates.MarkDuplicates INPUT=[/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.bam] OUTPUT=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam METRICS_FILE=/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.metrics REMOVE_DUPLICATES=true ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT CREATE_INDEX=true    MAX_SEQUENCES_FOR_DISK_READ_ENDS_MAP=50000 MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=8000 SORTING_COLLECTION_SIZE_RATIO=0.25 REMOVE_SEQUENCING_DUPLICATES=false TAGGING_POLICY=DontTag DUPLICATE_SCORING_STRATEGY=SUM_OF_BASE_QUALITIES PROGRAM_RECORD_ID=MarkDuplicates PROGRAM_GROUP_NAME=MarkDuplicates READ_NAME_REGEX=<optimized capture of last three ':' separated fields as numeric values> OPTICAL_DUPLICATE_PIXEL_DISTANCE=100 VERBOSITY=INFO QUIET=false COMPRESSION_LEVEL=5 MAX_RECORDS_IN_RAM=500000 CREATE_MD5_FILE=false GA4GH_CLIENT_SECRETS=client_secrets.json
[Wed Aug 09 15:18:16 PDT 2017] Executing as jinxu@changrila2.stanford.edu on Linux 3.10.0-327.22.2.el7.x86_64 amd64; OpenJDK 64-Bit Server VM 1.8.0_101-b13; Picard version: 2.4.1(7c4d36e011df1aec4689b51efcada44e92d1817f_1464389670) JdkDeflater
INFO	2017-08-09 15:18:16	MarkDuplicates	Start of doWork freeMemory: 2046000616; totalMemory: 2058354688; maxMemory: 3817865216
INFO	2017-08-09 15:18:16	MarkDuplicates	Reading input file and constructing read end information.
INFO	2017-08-09 15:18:16	MarkDuplicates	Will retain up to 14684096 data points before spilling to disk.
INFO	2017-08-09 15:18:17	MarkDuplicates	Read 60318 records. 3 pairs never matched.
INFO	2017-08-09 15:18:17	MarkDuplicates	After buildSortedReadEndLists freeMemory: 1923146296; totalMemory: 2058354688; maxMemory: 3817865216
INFO	2017-08-09 15:18:17	MarkDuplicates	Will retain up to 119308288 duplicate indices before spilling to disk.
INFO	2017-08-09 15:18:18	MarkDuplicates	Traversing read pair information and detecting duplicates.
INFO	2017-08-09 15:18:18	MarkDuplicates	Traversing fragment information and detecting duplicates.
INFO	2017-08-09 15:18:18	MarkDuplicates	Sorting list of duplicate records.
INFO	2017-08-09 15:18:18	MarkDuplicates	After generateDuplicateIndexes freeMemory: 1092632920; totalMemory: 2058354688; maxMemory: 3817865216
INFO	2017-08-09 15:18:18	MarkDuplicates	Marking 33297 records as duplicates.
INFO	2017-08-09 15:18:18	MarkDuplicates	Found 0 optical duplicate clusters.
INFO	2017-08-09 15:18:18	MarkDuplicates	Reads are assumed to be ordered by: coordinate
INFO	2017-08-09 15:18:19	MarkDuplicates	Before output close freeMemory: 2046021520; totalMemory: 2058354688; maxMemory: 3817865216
INFO	2017-08-09 15:18:19	MarkDuplicates	After output close freeMemory: 2046089160; totalMemory: 2058354688; maxMemory: 3817865216
[Wed Aug 09 15:18:19 PDT 2017] picard.sam.markduplicates.MarkDuplicates done. Elapsed time: 0.05 minutes.
Runtime.totalMemory()=2058354688
</pre>
Process 43386 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.058GB; Pipeline: 3.049GB)
> `rmdup_reads`	25814	scATAC_mtSMC	_RES_
> `dup_rate`	0.56	scATAC_mtSMC	_RES_

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.genomeQ30PE.bam`
> `/usr/local/bin/samtools view -b -q  30   -f 0x2 /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam  -o /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.genomeQ30PE.bam chr1 chr2 chr3 chr4 chr5 chr6 chr7 chr8 chr9 chr10 chr11 chr12 chr13 chr14 chr15 chr16 chr17 chr18 chr19 chr20 chr21 chr22 chrX`

<pre>
</pre>
Process 43464 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 3.049GB)
> `genomeQ30PE_reads`	88	scATAC_mtSMC	_RES_
> `genomeQ30PE_rate`	0.0	scATAC_mtSMC	_RES_

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.RefTSSCount`
> `/seq/bedtools-master/bin/bedtools coverage  -abam /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.genomeQ30PE.bam -b /home/jinxu/DB/hg19/annotation/hg19_refGene_TSSRound2kb.bed -counts  > /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.RefTSSCount`

<pre>
</pre>
Process 43466 returned: (0). Elapsed: 0:00:00.
> ` awk 'BEGIN{sum=0}''{sum+=$6;}''END{print sum}' /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.RefTSSCount`

> `Total_TSS_reads`	60	scATAC_mtSMC	_RES_
> `TSS_rate`	0.34	scATAC_mtSMC	_RES_

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mtQ30PE.bam`
> `/usr/local/bin/samtools view -b -q  30   -f 0x2 /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam  -o /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mtQ30PE.bam  chrMT `

<pre>
</pre>
Process 43469 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 3.049GB)
> `mtQ30PE_reads`	18695	scATAC_mtSMC	_RES_
> `mtQ30PE_rate`	0.32	scATAC_mtSMC	_RES_

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.target.intervals`
> `java -Xmx8g -jar /home/jinxu/software/GenomeAnalysisTK.jar  -R /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta  -T RealignerTargetCreator  -known /home/jinxu/DB/hg19_g1k_v37/ALL.chrMT.phase3_callmom-v0_4.20130502.genotypes.Indel.vcf  -known /home/jinxu/DB/hg19_g1k_v37/Mills_and_1000G_gold_standard.indels.hg19.sites.vcf  -nt 2  -I /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam  -o /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.target.intervals`

<pre>
INFO  15:18:23,790 HelpFormatter - -------------------------------------------------------------------------------- 
INFO  15:18:23,793 HelpFormatter - The Genome Analysis Toolkit (GATK) v3.5-0-g36282e4, Compiled 2015/11/25 04:03:56 
INFO  15:18:23,793 HelpFormatter - Copyright (c) 2010 The Broad Institute 
INFO  15:18:23,793 HelpFormatter - For support and documentation go to http://www.broadinstitute.org/gatk 
INFO  15:18:23,797 HelpFormatter - Program Args: -R /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta -T RealignerTargetCreator -known /home/jinxu/DB/hg19_g1k_v37/ALL.chrMT.phase3_callmom-v0_4.20130502.genotypes.Indel.vcf -known /home/jinxu/DB/hg19_g1k_v37/Mills_and_1000G_gold_standard.indels.hg19.sites.vcf -nt 2 -I /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam -o /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.target.intervals 
INFO  15:18:23,808 HelpFormatter - Executing as jinxu@changrila2.stanford.edu on Linux 3.10.0-327.22.2.el7.x86_64 amd64; OpenJDK 64-Bit Server VM 1.8.0_101-b13. 
INFO  15:18:23,808 HelpFormatter - Date/Time: 2017/08/09 15:18:23 
INFO  15:18:23,809 HelpFormatter - -------------------------------------------------------------------------------- 
INFO  15:18:23,809 HelpFormatter - -------------------------------------------------------------------------------- 
INFO  15:18:23,875 GenomeAnalysisEngine - Strictness is SILENT 
INFO  15:18:23,976 GenomeAnalysisEngine - Downsampling Settings: Method: BY_SAMPLE, Target Coverage: 1000 
INFO  15:18:23,983 SAMDataSource$SAMReaders - Initializing SAMRecords in serial 
INFO  15:18:24,011 SAMDataSource$SAMReaders - Done initializing BAM readers: total time 0.03 
INFO  15:18:24,123 MicroScheduler - Running the GATK in parallel mode with 2 total threads, 1 CPU thread(s) for each of 2 data thread(s), of 64 processors available on this machine 
INFO  15:18:24,189 GenomeAnalysisEngine - Preparing for traversal over 1 BAM files 
INFO  15:18:24,239 GenomeAnalysisEngine - Done preparing for traversal 
INFO  15:18:24,239 ProgressMeter - [INITIALIZATION COMPLETE; STARTING PROCESSING] 
INFO  15:18:24,240 ProgressMeter -                 | processed |    time |    per 1M |           |   total | remaining 
INFO  15:18:24,240 ProgressMeter -        Location |     sites | elapsed |     sites | completed | runtime |   runtime 
INFO  15:18:24,451 SAMDataSource$SAMReaders - Initializing SAMRecords in serial 
INFO  15:18:24,458 SAMDataSource$SAMReaders - Done initializing BAM readers: total time 0.01 
INFO  15:18:54,245 ProgressMeter -  chr1:118339473   3.80928E7    30.0 s       0.0 s        3.8%    13.1 m      12.6 m 
INFO  15:19:24,247 ProgressMeter -   chr2:36144933   1.37314304E8    60.0 s       0.0 s        9.2%    10.9 m       9.9 m 
INFO  15:19:54,249 ProgressMeter -   chr2:91459637   1.92299008E8    90.0 s       0.0 s       11.0%    13.7 m      12.2 m 
INFO  15:20:24,253 ProgressMeter -  chr2:185814957   3.37380157E8   120.0 s       0.0 s       14.0%    14.3 m      12.3 m 
INFO  15:20:54,256 ProgressMeter -   chr3:96494121   4.92449994E8     2.5 m       0.0 s       19.0%    13.2 m      10.7 m 
INFO  15:21:24,258 ProgressMeter -  chr3:175379689   5.88787914E8     3.0 m       0.0 s       21.5%    13.9 m      10.9 m 
INFO  15:21:54,260 ProgressMeter -    chr5:4722001   7.1827822E8     3.5 m       0.0 s       28.6%    12.2 m       8.7 m 
INFO  15:22:24,263 ProgressMeter -   chr5:61596901   7.1827822E8     4.0 m       0.0 s       30.4%    13.2 m       9.2 m 
INFO  15:22:54,265 ProgressMeter -  chr5:118642029   8.17679948E8     4.5 m       0.0 s       32.2%    14.0 m       9.5 m 
INFO  15:23:24,274 ProgressMeter -    chr7:1134501   1.06254196E9     5.0 m       0.0 s       39.8%    12.6 m       7.6 m 
INFO  15:23:54,290 ProgressMeter -   chr7:57622681   1.11980404E9     5.5 m       0.0 s       41.6%    13.2 m       7.7 m 
INFO  15:24:24,292 ProgressMeter -  chr7:115913081   1.11980404E9     6.0 m       0.0 s       43.5%    13.8 m       7.8 m 
INFO  15:24:54,293 ProgressMeter -   chr8:86956805   1.39279569E9     6.5 m       0.0 s       47.7%    13.6 m       7.1 m 
INFO  15:25:24,295 ProgressMeter -   chr9:17282401   1.461297194E9     7.0 m       0.0 s       50.2%    14.0 m       7.0 m 
INFO  15:25:54,298 ProgressMeter -  chr10:53614401   1.539159712E9     7.5 m       0.0 s       55.9%    13.4 m       5.9 m 
INFO  15:26:24,300 ProgressMeter - chr10:111341701   1.539159712E9     8.0 m       0.0 s       57.8%    13.8 m       5.8 m 
INFO  15:26:54,302 ProgressMeter - chr11:105568637   1.856491058E9     8.5 m       0.0 s       61.9%    13.7 m       5.2 m 
INFO  15:27:24,304 ProgressMeter -  chr12:64334017   1.950914406E9     9.0 m       0.0 s       65.0%    13.9 m       4.9 m 
INFO  15:27:54,307 ProgressMeter -  chr13:42331101   1.992677222E9     9.5 m       0.0 s       68.6%    13.9 m       4.4 m 
INFO  15:28:24,308 ProgressMeter -  chr14:28386801   2.089852083E9    10.0 m       0.0 s       71.8%    13.9 m       3.9 m 
INFO  15:28:54,311 ProgressMeter -  chr15:42852201   2.232900787E9    10.5 m       0.0 s       75.8%    13.9 m       3.4 m 
INFO  15:29:24,312 ProgressMeter -  chr16:26675001   2.307285719E9    11.0 m       0.0 s       78.6%    14.0 m       3.0 m 
INFO  15:29:54,314 ProgressMeter -  chr17:51553001   2.461017111E9    11.5 m       0.0 s       82.3%    14.0 m       2.5 m 
INFO  15:30:24,316 ProgressMeter -  chr18:70751881   2.58421789E9    12.0 m       0.0 s       85.5%    14.0 m       2.0 m 
INFO  15:30:54,319 ProgressMeter -  chr20:50064601   2.659444322E9    12.5 m       0.0 s       89.3%    14.0 m      90.0 s 
INFO  15:31:24,321 ProgressMeter -    chrX:1927501   2.82972872E9    13.0 m       0.0 s       92.9%    14.0 m      59.0 s 
INFO  15:31:54,324 ProgressMeter -  chrX:129546429   2.936247366E9    13.5 m       0.0 s       97.1%    13.9 m      24.0 s 
INFO  15:32:24,326 ProgressMeter - chrGL000192.1:547401   3.051425989E9    14.0 m       0.0 s      100.0%    14.0 m       0.0 s 
INFO  15:32:38,854 ProgressMeter -            done   3.101804739E9    14.2 m       0.0 s      100.0%    14.2 m       0.0 s 
INFO  15:32:38,855 ProgressMeter - Total runtime 854.62 secs, 14.24 min, 0.24 hours 
INFO  15:32:38,859 MicroScheduler - 5526 reads were filtered out during the traversal out of approximately 27176 total reads (20.33%) 
INFO  15:32:38,859 MicroScheduler -   -> 0 reads (0.00% of total) failing BadCigarFilter 
INFO  15:32:38,859 MicroScheduler -   -> 215 reads (0.79% of total) failing BadMateFilter 
INFO  15:32:38,859 MicroScheduler -   -> 0 reads (0.00% of total) failing DuplicateReadFilter 
INFO  15:32:38,860 MicroScheduler -   -> 0 reads (0.00% of total) failing FailsVendorQualityCheckFilter 
INFO  15:32:38,860 MicroScheduler -   -> 0 reads (0.00% of total) failing MalformedReadFilter 
INFO  15:32:38,860 MicroScheduler -   -> 0 reads (0.00% of total) failing MappingQualityUnavailableFilter 
INFO  15:32:38,860 MicroScheduler -   -> 5295 reads (19.48% of total) failing MappingQualityZeroFilter 
INFO  15:32:38,860 MicroScheduler -   -> 0 reads (0.00% of total) failing NotPrimaryAlignmentFilter 
INFO  15:32:38,861 MicroScheduler -   -> 0 reads (0.00% of total) failing Platform454Filter 
INFO  15:32:38,864 MicroScheduler -   -> 16 reads (0.06% of total) failing UnmappedReadFilter 
INFO  15:32:39,997 GATKRunReport - Uploaded run statistics report to AWS S3 
</pre>
Process 43471 returned: (0). Elapsed: 0:14:34. Peak memory: (Process: 4.687GB; Pipeline: 3.049GB)

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.realigned.bam`
> `java -Xmx10g -jar /home/jinxu/software/GenomeAnalysisTK.jar -R /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta -T IndelRealigner  -known /home/jinxu/DB/hg19_g1k_v37/Mills_and_1000G_gold_standard.indels.hg19.sites.vcf  -known /home/jinxu/DB/hg19_g1k_v37/ALL.chrMT.phase3_callmom-v0_4.20130502.genotypes.Indel.vcf  -I /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam  -targetIntervals /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.target.intervals -o /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.realigned.bam`

<pre>
INFO  15:32:57,724 HelpFormatter - -------------------------------------------------------------------------------- 
INFO  15:32:57,727 HelpFormatter - The Genome Analysis Toolkit (GATK) v3.5-0-g36282e4, Compiled 2015/11/25 04:03:56 
INFO  15:32:57,727 HelpFormatter - Copyright (c) 2010 The Broad Institute 
INFO  15:32:57,727 HelpFormatter - For support and documentation go to http://www.broadinstitute.org/gatk 
INFO  15:32:57,731 HelpFormatter - Program Args: -R /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta -T IndelRealigner -known /home/jinxu/DB/hg19_g1k_v37/Mills_and_1000G_gold_standard.indels.hg19.sites.vcf -known /home/jinxu/DB/hg19_g1k_v37/ALL.chrMT.phase3_callmom-v0_4.20130502.genotypes.Indel.vcf -I /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam -targetIntervals /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.target.intervals -o /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.realigned.bam 
INFO  15:32:57,740 HelpFormatter - Executing as jinxu@changrila2.stanford.edu on Linux 3.10.0-327.22.2.el7.x86_64 amd64; OpenJDK 64-Bit Server VM 1.8.0_101-b13. 
INFO  15:32:57,741 HelpFormatter - Date/Time: 2017/08/09 15:32:57 
INFO  15:32:57,742 HelpFormatter - -------------------------------------------------------------------------------- 
INFO  15:32:57,743 HelpFormatter - -------------------------------------------------------------------------------- 
INFO  15:32:57,864 GenomeAnalysisEngine - Strictness is SILENT 
INFO  15:32:57,933 GenomeAnalysisEngine - Downsampling Settings: No downsampling 
INFO  15:32:57,940 SAMDataSource$SAMReaders - Initializing SAMRecords in serial 
INFO  15:32:57,971 SAMDataSource$SAMReaders - Done initializing BAM readers: total time 0.03 
INFO  15:32:58,236 GenomeAnalysisEngine - Preparing for traversal over 1 BAM files 
INFO  15:32:58,243 GenomeAnalysisEngine - Done preparing for traversal 
INFO  15:32:58,244 ProgressMeter - [INITIALIZATION COMPLETE; STARTING PROCESSING] 
INFO  15:32:58,245 ProgressMeter -                 | processed |    time |    per 1M |           |   total | remaining 
INFO  15:32:58,245 ProgressMeter -        Location |     reads | elapsed |     reads | completed | runtime |   runtime 
INFO  15:32:58,900 ReadShardBalancer$1 - Loading BAM index data 
INFO  15:32:58,901 ReadShardBalancer$1 - Done loading BAM index data 
INFO  15:33:01,615 ProgressMeter -            done     27385.0     3.0 s       2.1 m       99.8%     3.0 s       0.0 s 
INFO  15:33:01,616 ProgressMeter - Total runtime 3.37 secs, 0.06 min, 0.00 hours 
INFO  15:33:01,620 MicroScheduler - 0 reads were filtered out during the traversal out of approximately 27385 total reads (0.00%) 
INFO  15:33:01,620 MicroScheduler -   -> 0 reads (0.00% of total) failing BadCigarFilter 
INFO  15:33:01,621 MicroScheduler -   -> 0 reads (0.00% of total) failing MalformedReadFilter 
INFO  15:33:02,968 GATKRunReport - Uploaded run statistics report to AWS S3 
</pre>
Process 43926 returned: (0). Elapsed: 0:00:16. Peak memory: (Process: 1.23GB; Pipeline: 4.687GB)

Target to produce: `/home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mpileup`
> `/usr/local/bin/samtools mpileup  -l /home/jinxu/DB/hg19_g1k_v37/chrM.len  -f /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta  -q 20  -Q 20 -x /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.realigned.bam > /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mpileup`

<pre>
[mpileup] 1 samples in 1 input files
<mpileup> Set max per-file depth to 8000
</pre>
Process 44001 returned: (0). Elapsed: 0:00:06.

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
Process 44011 returned: (0). Elapsed: 0:00:06.
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
Process 44014 returned: (0). Elapsed: 0:00:06.

Change status from running to completed

Cleaning up conditional list...

Removing glob: /home/jinxu/develop/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/13-TAAGGCGA-GCGATCTA*.fq
> `Time`	0:16:02	scATAC_mtSMC	_RES_
> `Success`	08-09 15:33:28	scATAC_mtSMC	_RES_

##### [Epilogue:]
*   Total elapsed time:  0:16:02
*     Peak memory used:  4.69 GB
* Pipeline completed at:  (08-09 15:33:28) elapsed:0:16:01 _TIME_

Pypiper terminating spawned child process 43162
