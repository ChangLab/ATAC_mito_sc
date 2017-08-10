export PATH=$PATH:/storage/jinxu/develop/ATAC_mito_sc/src/
input=" /home/jinxu/scATAC/pipeline/ATAC_mito/pipelines/ATAC_mito_sc/example/test_data/"
output="/home/jinxu/develop/ATAC_mito_sc/example/output"
project_name="test"
# make sample list from raw fastq folder 
# input paramters : fastq_folder	 project_name	output_file 
0_Make_SampleTable.pl   $input  $project_name  sample.csv
# THe core pipeline which align each single cell and split into genome and mito genome.
# input parameters: sample sheet from the first step	output_folder 
1_scATAC_mito.sh  sample.csv  $output
# SNP and peak calling with merged single cell data after alignment.
# input parameters	output_folder from last step and name for the 
2_merge_cells.sh   $output  $project_name
# Generate summary  table
3_Get_SummaryTable.sh  sample.csv $output 
