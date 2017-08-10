sample_list=$1
output=$2
sc_output=$output/sc_output
rm -f $output/summary.tsv
while read line ;
do
sample=`echo $line  |awk '{print $1}'`
project=`echo $line  |awk '{print $5}'`
stat_file=$sc_output/$sample"/stats.tsv"
summary.pl  $stat_file 1  $sample  $project >> $output/summary.tsv 
done < $sample_list
head=`summary.pl  $stat_file head  $sample  $project `
sed -i '1s/^/'"$head"'\n/' $output/summary.tsv
