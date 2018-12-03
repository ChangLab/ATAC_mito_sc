## ATAC_mito_sc pipeline
Version: 1

Description: This repository contains a pipeline to process scATACseq data.  It combines the previous Jason's scATAC pipeline and a mitochondrial SNV calling process. The major changes is the mapping step is changed from bowtie2 to bwa 

Data: 2017-08-09

Author: jinxu9@stanford.edu

## Installing 
Currently the pipeline is based on pypiper, which is a python package for making robust pipeline for bioinformatics works.
Pypiper has been installed by user-specific way on changrila2
You can do a user-specific install of pypiper as follow:
Note:

The current pipeline is developed under pypiper-0.3 on  python2.7.
Havn't test on other versions yet. 

```
pip install --user https://github.com/epigen/pypiper/zipball/master
```
Other tools used by this pipeline have been installed on changrila2 and should be set correctly in the .yaml file.

Clone the pipeline. Then, clone this repository using one of these methods:
```
  using SSH: git clone git@github.com:ChangLab/ATAC_mito_sc.git
  using HTTPS: git clone https://github.com/ChangLab/ATAC_mito_sc.git

```
Before running the pipeline, set up the environment variables access to the scripts used in the pipeline.
Two options will be work  
	1) Set the PATH in your /home/user/.bashrc( only need to configure once)
```
		 export PATH=$PATH:/storage/jinxu/develop/ATAC_mito_sc/src/
```
	2) Add the PATH in the script, which runing the pipeline (need to add every time)


## Runing the pipeline
1) Given the input folder, which contian all the fastq files for each single cells. This required paired-end reads separated as R1.fastq and R2.fastq
   Given the output folder, where you want to put all the result into. 
   Given the project name, which match to the cell type, experimental design etc. 
```
input=" /home/jinxu/scATAC/pipeline/ATAC_mito/pipelines/ATAC_mito_sc/example/test_data/"
output="/home/jinxu/develop/ATAC_mito_sc/example/output"
project_name="test"
```
2) Before running the pipeliine, sample sheet which  contians 

	1. Sample ID 
	
	2. Path to Read1 
	
	3. Path to Read2
	
	4. Project name (such as cell type etc.) 

    need to be generated first. 


The pipeline include a perl script to generate the sample sheet, if the fastq files was named by barcode ( 13-TAAGGCGA-GCGATCTA\* ) or ended with  "R?\_fastq.gz"

The script will take all the files from input folder and make sample list 

```
0_Make_SampleTable   $input  $project_name  sample.csv  [barcode|trim] 

```
3) The pipeline will process each samples through the core pipeline, which align read to genome, filter genome /mito reads, remove duplicates,SNP calling and etc.  
```	
1_scATAC_mito  sample.csv  $output

```
4) The pipeline will merge all the bam files after post-alignment process and call SNVs, peaks based on the pooled bam files.  
```
2_merge_cells   $output  $project_name

```
5) After all the previous steps, the pipeline will generate a summary table, which provide information for QC.  
```
3_Get_SummaryTable  sample.csv $output 

```
You can find the full command for running the pipeline in the example folder. 
You can run them step by step or the whole set. 
The pipeline is currently run in sequential for each cell rather than parallel (multiple cores(8 by default) are used in the mappiing step). It make easily adapte into parallel mode if needed in the future. 

## Following Steps


