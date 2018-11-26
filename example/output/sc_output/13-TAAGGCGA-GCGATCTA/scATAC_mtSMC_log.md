----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `/home/jinxu/pipeline_pypiper/ATAC_mito_sc/src/scATACseq_mtSMC_3.py -P 8 -M 100 -O /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output -R -S 13-TAAGGCGA-GCGATCTA -s 0 -G hg19 -Q paired -I /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz -I2 /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/jinxu/pipeline_pypiper/ATAC_mito_sc/example
*            Outfolder:  /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/
*  Pipeline started at:   (07-07 02:56:33) elapsed:0:00:02 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/jinxu/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.6.0
*         Pipeline dir:  `/storage/jinxu/pipeline_pypiper/ATAC_mito_sc/src`
*     Pipeline version:  None
*        Pipeline hash:  cdc25f0f896bbb8ed73151376941bfda0a610dc3
*      Pipeline branch:  * develop
*        Pipeline date:  2017-08-17 11:24:05 -0700
*        Pipeline diff:  78 files changed, 40 insertions(+), 2958840 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz']`
*         `paired_end`:  `True`
*       `manual_clean`:  `False`
*              `input`:  `['/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz']`
*                `mem`:  `100`
*        `sample_name`:  `13-TAAGGCGA-GCGATCTA`
*        `config_file`:  `scATACseq_mtSMC_3.yaml`
*      `output_parent`:  `/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output`
*   `single_or_paired`:  `paired`
*    `genome_assembly`:  `hg19`
*              `stopN`:  `0`
*              `cores`:  `8`
*              `fresh`:  `False`
*            `recover`:  `True`
*       `force_follow`:  `False`

----------------------------------------


Change status from initializing to running
Local input file: /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz
Local input file: /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz
Command is not callable: pigz

### Merge/link and fastq conversion:  (07-07 02:56:33) elapsed:0:00:00 _TIME_

Number of input file sets:		2

Target to produce: `/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz`
> `ln -sf /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz`

<pre>
</pre>
Process 47275 returned: (0). Elapsed: 0:00:00.
Local input file: /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz

Target to produce: `/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz`
> `ln -sf /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz`

<pre>
</pre>
Process 47277 returned: (0). Elapsed: 0:00:00.
Local input file: /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz
['/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz', '/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz']

Target exists: `/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/`
> `File_MB`	1.7355	scATAC_mtSMC	_RES_
> `GenomeV`	hg19	scATAC_mtSMC	_RES_

### Adapter trimming: in-house script (07-07 02:56:33) elapsed:0:00:01 _TIME_


Target to produce: `/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.trim.fastq`
> `/home/jinxu/pipeline_pypiper/ATAC_mito_sc/src/adapterTrimmingModified /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz`

<pre>


Running adapter trimming
	FASTQ file for read1 = /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz
	FASTQ file for read2 = /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz
	Query length = 25

Opened FASTQ files

Printing output to:
	/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.trim.fastq
	/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.trim.fastq
terminate called after throwing an instance of 'std::out_of_range'
  what():  basic_string::substr
</pre>
Process 47278 returned: (-6). Elapsed: 0:00:06. Peak memory: (Process: 0.001GB; Pipeline: 0.0GB)

### Pipeline failed at:  (07-07 02:56:39) elapsed:0:00:06 _TIME_

Total time: 0:00:08

Change status from running to failed
Traceback (most recent call last):
  File "/home/jinxu/pipeline_pypiper/ATAC_mito_sc/src/scATACseq_mtSMC_3.py", line 104, in <module>
    pm.run(cmd,trimmed_fastq)
  File "/home/jinxu/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 508, in run
    process_return_code, local_maxmem = self.callprint(cmd, shell, nofail, container)  # Run command
  File "/home/jinxu/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 691, in callprint
    self.fail_pipeline(e)
  File "/home/jinxu/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 1111, in fail_pipeline
    raise e
OSError: Subprocess returned nonzero result.

Pypiper terminating spawned child process 47255...
child process terminated
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `/home/jinxu/pipeline_pypiper/ATAC_mito_sc/src/scATACseq_mtSMC_3.py -P 8 -M 100 -O /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output -R -S 13-TAAGGCGA-GCGATCTA -s 0 -G hg19 -Q paired -I /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz -I2 /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/jinxu/pipeline_pypiper/ATAC_mito_sc/example
*            Outfolder:  /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/
*  Pipeline started at:   (07-07 03:14:14) elapsed:0:00:02 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/jinxu/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.6.0
*         Pipeline dir:  `/storage/jinxu/pipeline_pypiper/ATAC_mito_sc/src`
*     Pipeline version:  None
*        Pipeline hash:  cdc25f0f896bbb8ed73151376941bfda0a610dc3
*      Pipeline branch:  * develop
*        Pipeline date:  2017-08-17 11:24:05 -0700
*        Pipeline diff:  72 files changed, 392 insertions(+), 1657481 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz']`
*         `paired_end`:  `True`
*       `manual_clean`:  `False`
*              `input`:  `['/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz']`
*                `mem`:  `100`
*        `sample_name`:  `13-TAAGGCGA-GCGATCTA`
*        `config_file`:  `scATACseq_mtSMC_3.yaml`
*      `output_parent`:  `/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output`
*   `single_or_paired`:  `paired`
*    `genome_assembly`:  `hg19`
*              `stopN`:  `0`
*              `cores`:  `8`
*              `fresh`:  `False`
*            `recover`:  `True`
*       `force_follow`:  `False`

----------------------------------------


Change status from initializing to running
Local input file: /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R1.fastq.gz
Local input file: /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/test_data/13-TAAGGCGA-GCGATCTA_S1_001_R2.fastq.gz
Command is not callable: pigz

### Merge/link and fastq conversion:  (07-07 03:14:14) elapsed:0:00:00 _TIME_

Number of input file sets:		2

Target exists: `/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz`
Local input file: /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz

Target exists: `/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz`
Local input file: /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz
['/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz', '/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz']

Target exists: `/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/`
> `File_MB`	7.8075	scATAC_mtSMC	_RES_
> `GenomeV`	hg19	scATAC_mtSMC	_RES_

### Adapter trimming: in-house script (07-07 03:14:14) elapsed:0:00:00 _TIME_

Found lock file; overwriting this target...

Target to produce: `/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.trim.fastq`
> `/home/jinxu/pipeline_pypiper/ATAC_mito_sc/src/adapterTrimmingModified /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz`

<pre>


Running adapter trimming
	FASTQ file for read1 = /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.fastq.gz
	FASTQ file for read2 = /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.fastq.gz
	Query length = 25

Opened FASTQ files

Printing output to:
	/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.trim.fastq
	/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.trim.fastq

COMPLETE

TOTAL number of reads = 56480
Total number of trimmed reads = 454
	Reads with 0 mismatches = 392
	Reads with 1 mismatches = 62
</pre>
Process 49207 returned: (0). Elapsed: 0:00:16. Peak memory: (Process: 0.001GB; Pipeline: 0.0GB)
> `Raw_reads`	112960	scATAC_mtSMC	_RES_
> `Trimmed_reads`	112960.0	scATAC_mtSMC	_RES_
> `Trim_loss_rate`	0.0	scATAC_mtSMC	_RES_

Target to produce: `/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R1.sai`
> `/home/jinxu/software/bwa-0.7.15/bwa aln  -t  8 /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.trim.fastq -f /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R1.sai`

<pre>
[bwa_aln] 17bp reads: max_diff = 2
[bwa_aln] 38bp reads: max_diff = 3
[bwa_aln] 64bp reads: max_diff = 4
[bwa_aln] 93bp reads: max_diff = 5
[bwa_aln] 124bp reads: max_diff = 6
[bwa_aln] 157bp reads: max_diff = 7
[bwa_aln] 190bp reads: max_diff = 8
[bwa_aln] 225bp reads: max_diff = 9
[bwa_aln_core] calculate SA coordinate... 34.82 sec
[bwa_aln_core] write to the disk... 0.03 sec
[bwa_aln_core] 56480 sequences have been processed.
[main] Version: 0.7.15-r1140
[main] CMD: /home/jinxu/software/bwa-0.7.15/bwa aln -t 8 -f /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R1.sai /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.trim.fastq
[main] Real time: 11.323 sec; CPU: 41.119 sec
</pre>
Process 49229 returned: (0). Elapsed: 0:00:16. Peak memory: (Process: 3.061GB; Pipeline: 0.001GB)

Target to produce: `/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R2.sai`
> `/home/jinxu/software/bwa-0.7.15/bwa aln  -t 8 /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.trim.fastq -f /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R2.sai`

<pre>
[bwa_aln] 17bp reads: max_diff = 2
[bwa_aln] 38bp reads: max_diff = 3
[bwa_aln] 64bp reads: max_diff = 4
[bwa_aln] 93bp reads: max_diff = 5
[bwa_aln] 124bp reads: max_diff = 6
[bwa_aln] 157bp reads: max_diff = 7
[bwa_aln] 190bp reads: max_diff = 8
[bwa_aln] 225bp reads: max_diff = 9
[bwa_aln_core] calculate SA coordinate... 27.84 sec
[bwa_aln_core] write to the disk... 0.03 sec
[bwa_aln_core] 56480 sequences have been processed.
[main] Version: 0.7.15-r1140
[main] CMD: /home/jinxu/software/bwa-0.7.15/bwa aln -t 8 -f /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R2.sai /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.trim.fastq
[main] Real time: 8.986 sec; CPU: 32.723 sec
</pre>
Process 49277 returned: (0). Elapsed: 0:00:16. Peak memory: (Process: 3.11GB; Pipeline: 3.061GB)

Target to produce: `/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.sam`
> `/home/jinxu/software/bwa-0.7.15/bwa sampe -r "@RG\tID:13-TAAGGCGA-GCGATCTA\tSM:MT\tPL:ILLUMINA" /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R1.sai /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R2.sai /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.trim.fastq /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.trim.fastq -f /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.sam`

<pre>
[bwa_sai2sam_pe_core] convert to sequence coordinate... 
[infer_isize] (25, 50, 75) percentile: (182, 246, 387)
[infer_isize] low and high boundaries: 75 and 797 for estimating avg and std
[infer_isize] inferred external isize from 37262 pairs: 293.094 +/- 150.920
[infer_isize] skewness: 0.995; kurtosis: 0.420; ap_prior: 1.26e-05
[infer_isize] inferred maximum insert size: 1324 (6.83 sigma)
[bwa_sai2sam_pe_core] time elapses: 9.41 sec
[bwa_sai2sam_pe_core] changing coordinates of 1425 alignments.
[bwa_sai2sam_pe_core] align unmapped mate...
[bwa_paired_sw] 6672 out of 11443 Q17 singletons are mated.
[bwa_paired_sw] 52 out of 492 Q17 discordant pairs are fixed.
[bwa_sai2sam_pe_core] time elapses: 1.64 sec
[bwa_sai2sam_pe_core] refine gapped alignments... 0.17 sec
[bwa_sai2sam_pe_core] print alignments... 0.61 sec
[bwa_sai2sam_pe_core] 56480 sequences have been processed.
[main] Version: 0.7.15-r1140
[main] CMD: /home/jinxu/software/bwa-0.7.15/bwa sampe -r @RG\tID:13-TAAGGCGA-GCGATCTA\tSM:MT\tPL:ILLUMINA -f /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.sam /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R1.sai /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA_R2.sai /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R1.trim.fastq /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/raw/13-TAAGGCGA-GCGATCTA_R2.trim.fastq
[main] Real time: 12.158 sec; CPU: 12.085 sec
</pre>
Process 49438 returned: (0). Elapsed: 0:00:16. Peak memory: (Process: 4.33GB; Pipeline: 3.11GB)

Target to produce: `/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.bam`
> `java -Xmx4g -jar /home/jinxu/software/picard-tools-2.4.1/picard.jar SortSam SORT_ORDER=coordinate CREATE_INDEX=true VALIDATION_STRINGENCY=SILENT INPUT=/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.sam OUTPUT=/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.bam`

<pre>
[Sat Jul 07 03:15:18 PDT 2018] picard.sam.SortSam INPUT=/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.sam OUTPUT=/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT CREATE_INDEX=true    VERBOSITY=INFO QUIET=false COMPRESSION_LEVEL=5 MAX_RECORDS_IN_RAM=500000 CREATE_MD5_FILE=false GA4GH_CLIENT_SECRETS=client_secrets.json
[Sat Jul 07 03:15:18 PDT 2018] Executing as jinxu@changrila2.stanford.edu on Linux 3.10.0-693.el7.x86_64 amd64; OpenJDK 64-Bit Server VM 1.8.0_161-b14; Picard version: 2.4.1(7c4d36e011df1aec4689b51efcada44e92d1817f_1464389670) JdkDeflater
INFO	2018-07-07 03:15:19	SortSam	Finished reading inputs, merging and writing to output now.
[Sat Jul 07 03:15:22 PDT 2018] picard.sam.SortSam done. Elapsed time: 0.07 minutes.
Runtime.totalMemory()=2058354688
</pre>
Process 49452 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.039GB; Pipeline: 4.33GB)
> `Aligned_reads`	106047	scATAC_mtSMC	_RES_
> `Alignment_rate`	0.94	scATAC_mtSMC	_RES_

Target to produce: `/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam`
> `java -Xmx4g -jar /home/jinxu/software/picard-tools-2.4.1/picard.jar MarkDuplicates CREATE_INDEX=true ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT REMOVE_DUPLICATES=true INPUT=/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.bam OUTPUT=/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam METRICS_FILE=/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.metrics`

<pre>
[Sat Jul 07 03:15:23 PDT 2018] picard.sam.markduplicates.MarkDuplicates INPUT=[/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.bam] OUTPUT=/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam METRICS_FILE=/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.metrics REMOVE_DUPLICATES=true ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT CREATE_INDEX=true    MAX_SEQUENCES_FOR_DISK_READ_ENDS_MAP=50000 MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=8000 SORTING_COLLECTION_SIZE_RATIO=0.25 REMOVE_SEQUENCING_DUPLICATES=false TAGGING_POLICY=DontTag DUPLICATE_SCORING_STRATEGY=SUM_OF_BASE_QUALITIES PROGRAM_RECORD_ID=MarkDuplicates PROGRAM_GROUP_NAME=MarkDuplicates READ_NAME_REGEX=<optimized capture of last three ':' separated fields as numeric values> OPTICAL_DUPLICATE_PIXEL_DISTANCE=100 VERBOSITY=INFO QUIET=false COMPRESSION_LEVEL=5 MAX_RECORDS_IN_RAM=500000 CREATE_MD5_FILE=false GA4GH_CLIENT_SECRETS=client_secrets.json
[Sat Jul 07 03:15:23 PDT 2018] Executing as jinxu@changrila2.stanford.edu on Linux 3.10.0-693.el7.x86_64 amd64; OpenJDK 64-Bit Server VM 1.8.0_161-b14; Picard version: 2.4.1(7c4d36e011df1aec4689b51efcada44e92d1817f_1464389670) JdkDeflater
INFO	2018-07-07 03:15:23	MarkDuplicates	Start of doWork freeMemory: 2045987352; totalMemory: 2058354688; maxMemory: 3817865216
INFO	2018-07-07 03:15:23	MarkDuplicates	Reading input file and constructing read end information.
INFO	2018-07-07 03:15:23	MarkDuplicates	Will retain up to 14684096 data points before spilling to disk.
INFO	2018-07-07 03:15:25	MarkDuplicates	Read 111866 records. 6 pairs never matched.
INFO	2018-07-07 03:15:27	MarkDuplicates	After buildSortedReadEndLists freeMemory: 1917851920; totalMemory: 2058354688; maxMemory: 3817865216
INFO	2018-07-07 03:15:27	MarkDuplicates	Will retain up to 119308288 duplicate indices before spilling to disk.
INFO	2018-07-07 03:15:28	MarkDuplicates	Traversing read pair information and detecting duplicates.
INFO	2018-07-07 03:15:28	MarkDuplicates	Traversing fragment information and detecting duplicates.
INFO	2018-07-07 03:15:28	MarkDuplicates	Sorting list of duplicate records.
INFO	2018-07-07 03:15:29	MarkDuplicates	After generateDuplicateIndexes freeMemory: 1092245408; totalMemory: 2058354688; maxMemory: 3817865216
INFO	2018-07-07 03:15:29	MarkDuplicates	Marking 32036 records as duplicates.
INFO	2018-07-07 03:15:29	MarkDuplicates	Found 0 optical duplicate clusters.
INFO	2018-07-07 03:15:29	MarkDuplicates	Reads are assumed to be ordered by: coordinate
INFO	2018-07-07 03:15:31	MarkDuplicates	Before output close freeMemory: 2045865976; totalMemory: 2058354688; maxMemory: 3817865216
INFO	2018-07-07 03:15:31	MarkDuplicates	After output close freeMemory: 2046633592; totalMemory: 2058354688; maxMemory: 3817865216
[Sat Jul 07 03:15:31 PDT 2018] picard.sam.markduplicates.MarkDuplicates done. Elapsed time: 0.13 minutes.
Runtime.totalMemory()=2058354688
</pre>
Process 49527 returned: (0). Elapsed: 0:00:16. Peak memory: (Process: 1.637GB; Pipeline: 4.33GB)
> `rmdup_reads`	74011	scATAC_mtSMC	_RES_
> `dup_rate`	0.3	scATAC_mtSMC	_RES_

Target to produce: `/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.genomeQ30PE.bam`
> `/usr/local/bin/samtools view -b -q  30   -f 0x2 /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam  -o /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.genomeQ30PE.bam chr1 chr2 chr3 chr4 chr5 chr6 chr7 chr8 chr9 chr10 chr11 chr12 chr13 chr14 chr15 chr16 chr17 chr18 chr19 chr20 chr21 chr22 chrX`

<pre>
</pre>
Process 49619 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.004GB; Pipeline: 4.33GB)
> `genomeQ30PE_reads`	50039	scATAC_mtSMC	_RES_
> `genomeQ30PE_rate`	0.47	scATAC_mtSMC	_RES_

Target to produce: `/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.RefTSSCount`
> `/seq/bedtools-master/bin/bedtools coverage  -abam /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.genomeQ30PE.bam -b /home/jinxu/DB/hg19/annotation/hg19_refGene_TSSRound2kb.bed -counts  > /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.RefTSSCount`

<pre>
</pre>
Process 49627 returned: (0). Elapsed: 0:00:06.
> ` awk 'BEGIN{sum=0}''{sum+=$6;}''END{print sum}' /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.RefTSSCount`

> `Total_TSS_reads`	23167	scATAC_mtSMC	_RES_
> `TSS_rate`	0.23	scATAC_mtSMC	_RES_

Target to produce: `/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mtQ30PE.bam`
> `/usr/local/bin/samtools view -b -q  30   -f 0x2 /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam  -o /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mtQ30PE.bam  chrMT `

<pre>
</pre>
Process 49634 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 4.33GB)
> `mtQ30PE_reads`	6425	scATAC_mtSMC	_RES_
> `mtQ30PE_rate`	0.06	scATAC_mtSMC	_RES_

Target to produce: `/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.target.intervals`
> `java -Xmx8g -jar /home/jinxu/software/GenomeAnalysisTK.jar  -R /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta  -T RealignerTargetCreator  -known /home/jinxu/DB/hg19_g1k_v37/ALL.chrMT.phase3_callmom-v0_4.20130502.genotypes.Indel.vcf  -known /home/jinxu/DB/hg19_g1k_v37/Mills_and_1000G_gold_standard.indels.hg19.sites.vcf  -nt 8  -I /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam  -o /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.target.intervals`

<pre>
INFO  03:15:52,743 HelpFormatter - -------------------------------------------------------------------------------- 
INFO  03:15:52,746 HelpFormatter - The Genome Analysis Toolkit (GATK) v3.5-0-g36282e4, Compiled 2015/11/25 04:03:56 
INFO  03:15:52,747 HelpFormatter - Copyright (c) 2010 The Broad Institute 
INFO  03:15:52,747 HelpFormatter - For support and documentation go to http://www.broadinstitute.org/gatk 
INFO  03:15:52,752 HelpFormatter - Program Args: -R /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta -T RealignerTargetCreator -known /home/jinxu/DB/hg19_g1k_v37/ALL.chrMT.phase3_callmom-v0_4.20130502.genotypes.Indel.vcf -known /home/jinxu/DB/hg19_g1k_v37/Mills_and_1000G_gold_standard.indels.hg19.sites.vcf -nt 8 -I /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam -o /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.target.intervals 
INFO  03:15:52,759 HelpFormatter - Executing as jinxu@changrila2.stanford.edu on Linux 3.10.0-693.el7.x86_64 amd64; OpenJDK 64-Bit Server VM 1.8.0_161-b14. 
INFO  03:15:52,760 HelpFormatter - Date/Time: 2018/07/07 03:15:52 
INFO  03:15:52,761 HelpFormatter - -------------------------------------------------------------------------------- 
INFO  03:15:52,761 HelpFormatter - -------------------------------------------------------------------------------- 
INFO  03:15:52,892 GenomeAnalysisEngine - Strictness is SILENT 
INFO  03:15:53,064 GenomeAnalysisEngine - Downsampling Settings: Method: BY_SAMPLE, Target Coverage: 1000 
INFO  03:15:53,074 SAMDataSource$SAMReaders - Initializing SAMRecords in serial 
INFO  03:15:53,114 SAMDataSource$SAMReaders - Done initializing BAM readers: total time 0.04 
INFO  03:15:53,275 MicroScheduler - Running the GATK in parallel mode with 8 total threads, 1 CPU thread(s) for each of 8 data thread(s), of 64 processors available on this machine 
INFO  03:15:53,361 GenomeAnalysisEngine - Preparing for traversal over 1 BAM files 
INFO  03:15:53,724 GenomeAnalysisEngine - Done preparing for traversal 
INFO  03:15:53,725 ProgressMeter - [INITIALIZATION COMPLETE; STARTING PROCESSING] 
INFO  03:15:53,725 ProgressMeter -                 | processed |    time |    per 1M |           |   total | remaining 
INFO  03:15:53,726 ProgressMeter -        Location |     sites | elapsed |     sites | completed | runtime |   runtime 
INFO  03:15:53,733 SAMDataSource$SAMReaders - Initializing SAMRecords in serial 
INFO  03:15:53,750 SAMDataSource$SAMReaders - Done initializing BAM readers: total time 0.02 
INFO  03:15:53,751 SAMDataSource$SAMReaders - Initializing SAMRecords in serial 
INFO  03:15:53,764 SAMDataSource$SAMReaders - Done initializing BAM readers: total time 0.01 
INFO  03:15:53,765 SAMDataSource$SAMReaders - Initializing SAMRecords in serial 
INFO  03:15:53,775 SAMDataSource$SAMReaders - Done initializing BAM readers: total time 0.01 
INFO  03:15:53,776 SAMDataSource$SAMReaders - Initializing SAMRecords in serial 
INFO  03:15:53,786 SAMDataSource$SAMReaders - Done initializing BAM readers: total time 0.01 
INFO  03:15:53,787 SAMDataSource$SAMReaders - Initializing SAMRecords in serial 
INFO  03:15:53,797 SAMDataSource$SAMReaders - Done initializing BAM readers: total time 0.01 
INFO  03:15:53,798 SAMDataSource$SAMReaders - Initializing SAMRecords in serial 
INFO  03:15:53,809 SAMDataSource$SAMReaders - Done initializing BAM readers: total time 0.01 
INFO  03:15:53,810 SAMDataSource$SAMReaders - Initializing SAMRecords in serial 
INFO  03:15:53,819 SAMDataSource$SAMReaders - Done initializing BAM readers: total time 0.01 
INFO  03:16:23,732 ProgressMeter -  chr1:231809365   2.10354176E8    30.0 s       0.0 s        7.5%     6.7 m       6.2 m 
INFO  03:16:53,741 ProgressMeter -  chr2:225766737   4.74022717E8    60.0 s       0.0 s       15.3%     6.5 m       5.5 m 
INFO  03:17:23,743 ProgressMeter -   chr4:38951217   7.20045544E8    90.0 s       0.0 s       23.5%     6.4 m       4.9 m 
INFO  03:17:53,746 ProgressMeter -   chr5:94921729   9.72672588E8   120.0 s       0.0 s       31.5%     6.4 m       4.4 m 
INFO  03:18:23,749 ProgressMeter -       chr7:7901   1.230658184E9     2.5 m       0.0 s       39.8%     6.3 m       3.8 m 
INFO  03:18:53,752 ProgressMeter -   chr8:93080205   1.48126929E9     3.0 m       0.0 s       47.9%     6.3 m       3.3 m 
INFO  03:19:23,754 ProgressMeter -  chr10:62404489   1.734997399E9     3.5 m       0.0 s       56.2%     6.2 m       2.7 m 
INFO  03:19:53,756 ProgressMeter -  chr12:41771017   1.983321958E9     4.0 m       0.0 s       64.2%     6.2 m       2.2 m 
INFO  03:20:23,759 ProgressMeter -  chr14:54468017   2.225937587E9     4.5 m       0.0 s       72.7%     6.2 m     101.0 s 
INFO  03:20:53,761 ProgressMeter -  chr16:88506569   2.483938327E9     5.0 m       0.0 s       80.5%     6.2 m      72.0 s 
INFO  03:21:23,763 ProgressMeter -  chr20:16189321   2.730910457E9     5.5 m       0.0 s       88.2%     6.2 m      44.0 s 
INFO  03:21:53,766 ProgressMeter -  chrX:104798813   2.97116167E9     6.0 m       0.0 s       96.3%     6.2 m      13.0 s 
INFO  03:22:23,769 ProgressMeter - chrGL000192.1:547489   3.063908547E9     6.5 m       0.0 s      100.0%     6.5 m       0.0 s 
INFO  03:22:46,576 ProgressMeter -            done   3.101804739E9     6.9 m       0.0 s      100.0%     6.9 m       0.0 s 
INFO  03:22:46,577 ProgressMeter - Total runtime 412.85 secs, 6.88 min, 0.11 hours 
INFO  03:22:46,583 MicroScheduler - 9962 reads were filtered out during the traversal out of approximately 80106 total reads (12.44%) 
INFO  03:22:46,583 MicroScheduler -   -> 0 reads (0.00% of total) failing BadCigarFilter 
INFO  03:22:46,584 MicroScheduler -   -> 51 reads (0.06% of total) failing BadMateFilter 
INFO  03:22:46,584 MicroScheduler -   -> 0 reads (0.00% of total) failing DuplicateReadFilter 
INFO  03:22:46,584 MicroScheduler -   -> 0 reads (0.00% of total) failing FailsVendorQualityCheckFilter 
INFO  03:22:46,584 MicroScheduler -   -> 0 reads (0.00% of total) failing MalformedReadFilter 
INFO  03:22:46,585 MicroScheduler -   -> 0 reads (0.00% of total) failing MappingQualityUnavailableFilter 
INFO  03:22:46,585 MicroScheduler -   -> 9908 reads (12.37% of total) failing MappingQualityZeroFilter 
INFO  03:22:46,585 MicroScheduler -   -> 0 reads (0.00% of total) failing NotPrimaryAlignmentFilter 
INFO  03:22:46,585 MicroScheduler -   -> 0 reads (0.00% of total) failing Platform454Filter 
INFO  03:22:46,586 MicroScheduler -   -> 3 reads (0.00% of total) failing UnmappedReadFilter 
INFO  03:22:48,124 GATKRunReport - Uploaded run statistics report to AWS S3 
</pre>
Process 49636 returned: (0). Elapsed: 0:07:33. Peak memory: (Process: 4.378GB; Pipeline: 4.33GB)

Target to produce: `/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.realigned.bam`
> `java -Xmx10g -jar /home/jinxu/software/GenomeAnalysisTK.jar -R /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta -T IndelRealigner  -known /home/jinxu/DB/hg19_g1k_v37/Mills_and_1000G_gold_standard.indels.hg19.sites.vcf  -known /home/jinxu/DB/hg19_g1k_v37/ALL.chrMT.phase3_callmom-v0_4.20130502.genotypes.Indel.vcf  -I /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam  -targetIntervals /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.target.intervals -o /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.realigned.bam`

<pre>
INFO  03:23:26,195 HelpFormatter - -------------------------------------------------------------------------------- 
INFO  03:23:26,198 HelpFormatter - The Genome Analysis Toolkit (GATK) v3.5-0-g36282e4, Compiled 2015/11/25 04:03:56 
INFO  03:23:26,199 HelpFormatter - Copyright (c) 2010 The Broad Institute 
INFO  03:23:26,199 HelpFormatter - For support and documentation go to http://www.broadinstitute.org/gatk 
INFO  03:23:26,205 HelpFormatter - Program Args: -R /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta -T IndelRealigner -known /home/jinxu/DB/hg19_g1k_v37/Mills_and_1000G_gold_standard.indels.hg19.sites.vcf -known /home/jinxu/DB/hg19_g1k_v37/ALL.chrMT.phase3_callmom-v0_4.20130502.genotypes.Indel.vcf -I /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.bam -targetIntervals /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.target.intervals -o /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.realigned.bam 
INFO  03:23:26,212 HelpFormatter - Executing as jinxu@changrila2.stanford.edu on Linux 3.10.0-693.el7.x86_64 amd64; OpenJDK 64-Bit Server VM 1.8.0_161-b14. 
INFO  03:23:26,213 HelpFormatter - Date/Time: 2018/07/07 03:23:26 
INFO  03:23:26,213 HelpFormatter - -------------------------------------------------------------------------------- 
INFO  03:23:26,214 HelpFormatter - -------------------------------------------------------------------------------- 
INFO  03:23:26,453 GenomeAnalysisEngine - Strictness is SILENT 
INFO  03:23:26,608 GenomeAnalysisEngine - Downsampling Settings: No downsampling 
INFO  03:23:26,617 SAMDataSource$SAMReaders - Initializing SAMRecords in serial 
INFO  03:23:26,658 SAMDataSource$SAMReaders - Done initializing BAM readers: total time 0.04 
INFO  03:23:27,071 GenomeAnalysisEngine - Preparing for traversal over 1 BAM files 
INFO  03:23:27,077 GenomeAnalysisEngine - Done preparing for traversal 
INFO  03:23:27,078 ProgressMeter - [INITIALIZATION COMPLETE; STARTING PROCESSING] 
INFO  03:23:27,078 ProgressMeter -                 | processed |    time |    per 1M |           |   total | remaining 
INFO  03:23:27,079 ProgressMeter -        Location |     reads | elapsed |     reads | completed | runtime |   runtime 
INFO  03:23:28,179 ReadShardBalancer$1 - Loading BAM index data 
INFO  03:23:28,180 ReadShardBalancer$1 - Done loading BAM index data 
INFO  03:23:49,648 ProgressMeter -            done     80924.0    22.0 s       4.6 m      100.0%    22.0 s       0.0 s 
INFO  03:23:49,649 ProgressMeter - Total runtime 22.57 secs, 0.38 min, 0.01 hours 
INFO  03:23:49,653 MicroScheduler - 0 reads were filtered out during the traversal out of approximately 80924 total reads (0.00%) 
INFO  03:23:49,653 MicroScheduler -   -> 0 reads (0.00% of total) failing BadCigarFilter 
INFO  03:23:49,654 MicroScheduler -   -> 0 reads (0.00% of total) failing MalformedReadFilter 
INFO  03:23:57,057 GATKRunReport - Uploaded run statistics report to AWS S3 
</pre>
Process 50259 returned: (0). Elapsed: 0:00:51. Peak memory: (Process: 2.623GB; Pipeline: 4.378GB)

Target to produce: `/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mpileup`
> `/usr/local/bin/samtools mpileup  -l /home/jinxu/DB/hg19_g1k_v37/chrM.len  -f /home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta  -q 20  -Q 20 -x /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.rmdup.realigned.bam > /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mpileup`

<pre>
[mpileup] 1 samples in 1 input files
<mpileup> Set max per-file depth to 8000
</pre>
Process 50384 returned: (0). Elapsed: 0:00:06.

Target to produce: `/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.counts`
> `/home/jinxu/bin/pileup_inf_rj.pl /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mpileup > /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.counts`

<pre>
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 1647.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 1707.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 1733.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 1739.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 1741.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 1771.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 1776.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 1778.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 1920.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 1922.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 1926.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 1950.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 1951.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 2933.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 4072.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 4075.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 4080.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 4082.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 4083.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 4084.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 4089.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 4415.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 4417.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 4418.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 4422.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 4429.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 7160.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 7162.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 7176.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 7185.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 7397.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 7409.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 7411.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 7413.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 8312.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 10020.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 11753.
Use of uninitialized value $seq in subtraction (-) at /home/jinxu/bin/pileup_inf_rj.pl line 73, <IN> line 15951.
</pre>
Process 50390 returned: (0). Elapsed: 0:00:06.
> ` awk 'BEGIN{sum=0;}''{sum+=$4;}''END{print sum}' /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.counts`

> ` awk 'BEGIN{num=0;}''{num++;}''END{print num}' /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.counts`

> `mt_aver_depth`	36.18	scATAC_mtSMC	_RES_

Target to produce: `/home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.snv`
> `java -Xmx4g  -jar /home/jinxu/software/VarScan.v2.3.7.jar  pileup2snp /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mpileup  --min-var-freq 0.01  --min-reads2 2  > /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.snv`

<pre>
Warning: No p-value threshold provided, so p-values will not be calculated
Min coverage:	8
Min reads2:	2
Min var freq:	0.01
Min avg qual:	15
P-value thresh:	0.99
Reading input from /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/Mapping_hg19/13-TAAGGCGA-GCGATCTA.mpileup
15951 bases in pileup file
11914 met minimum coverage of 8x
30 SNPs predicted
</pre>
Process 50400 returned: (0). Elapsed: 0:00:06.

Change status from running to completed

Cleaning up conditional list...

Removing glob: /home/jinxu/pipeline_pypiper/ATAC_mito_sc/example/output/sc_output/13-TAAGGCGA-GCGATCTA/13-TAAGGCGA-GCGATCTA*.fq
> `Time`	0:10:19	scATAC_mtSMC	_RES_
> `Success`	07-07-03:24:31	scATAC_mtSMC	_RES_

##### [Epilogue:]
*   Total elapsed time:  0:10:19
*     Peak memory used:  4.38 GB
* Pipeline completed at:  (07-07 03:24:31) elapsed:0:10:18 _TIME_

Pypiper terminating spawned child process 49189...
child process terminated
close failed in file object destructor:
sys.excepthook is missing
lost sys.stderr
