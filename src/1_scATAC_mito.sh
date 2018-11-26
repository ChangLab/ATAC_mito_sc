# Need sample.csv as input file and output directory 
# Input 1: sample list (tsv or csv)
# Input 2: output directory
input=$1
output=$2
while read line ;
do
sample=`echo $line  |awk '{print $1}'` 
R1=`echo $line  |awk '{print $2}'` 
R2=`echo $line  |awk '{print $3}'` 
path=`echo $line |awk '{print $4}'`
scATACseq_mtSMC_3.py   -P 8 -M 100 -O $output -R -S  $sample  -s 0 -G hg19 -Q paired  -I  $path/$R1 -I2 $path/$R2
done < $input
