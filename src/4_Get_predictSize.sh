sample_list=$1
output=$2
sc_output=$output/sc_output
while read line ;
do
sample=`echo $line  |awk '{print $1}'`
project=`echo $line  |awk '{print $5}'`
stat_file=$sc_output/$sample"/Mapping_hg19/"$sample."metrics"
#echo $stat_file 
size=`grep 'Unknown' $stat_file |awk '{print  $NF}' ` 
echo $sample	$size  
done < $sample_list


#head=`summary.pl  $stat_file head  $sample  $project `
#sed -i '1s/^/'"$head"'\n/' $output/summary.tsv
