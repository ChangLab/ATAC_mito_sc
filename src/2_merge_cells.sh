output_path=$1
sc_output=$output_path/sc_output
p_output=$output_path/pool_output
mkdir $p_output
output_tag=$2
res_chrM="/home/jinxu/DB/hg19_g1k_v37/chrM.len"
res_ref="/home/jinxu/DB/hg19_g1k_v37/human_g1k_v37.fasta"
varScan="/home/jinxu/software/VarScan.v2.3.7.jar"
ref_gene_TSS="/home/jinxu/DB/hg19/annotation/hg19_refGene_Tss.txt"
blacklist='/home/jinxu/scATAC/scATAC-seq-Jason/01_additionalData/BlacklistFiles/hg19_blacklist.JDB.bed'
# call SNP using merged bam file. mtQ30PE were not re-aligned  
samtools merge $p_output/$output_tag.merge.realign.bam  $sc_output/*/*/*.realigned.bam
samtools index $p_output/$output_tag.merge.realign.bam 
samtools mpileup  -l  $res_chrM -f $res_ref  -q 20  -Q 30 -x $p_output/$output_tag.merge.realign.bam > $p_output/$output_tag.merge.mt.mpileup.q20Q30
java -Xmx4g  -jar $varScan  pileup2snp  $p_output/$output_tag.merge.mt.mpileup.q20Q30 --min-var-freq 0.001  --min-reads2 2 > $p_output/$output_tag.merge.mt.mpileup.q20Q30.snv

# Add peak calling step 
# Count number of reads in peaks 
samtools merge $p_output/$output_tag.merge.genomeQ30PE.bam  $sc_output/*/*/*.genomeQ30PE.bam  
samtools index $p_output/$output_tag.merge.genomeQ30PE.bam
pyMakeVplot.py -a  $p_output/$output_tag.merge.genomeQ30PE.bam -b  $ref_gene_TSS   -e 2000 -p ends -v -u
echo $output_path
java -jar /seq/picard-tools-1.79/CollectInsertSizeMetrics.jar VALIDATION_STRINGENCY=SILENT I=$p_output/$output_tag.merge.genomeQ30PE.bam  O=$p_output/$output_tag.log H=$p_output/$output_tag.hist.pdf  W=1000 
mkdir $p_output/peakCalls
macs2 callpeak --nomodel -t  $p_output/$output_tag.merge.genomeQ30PE.bam -n $p_output/peakCalls/$output_tag --nolambda --keep-dup all --call-summits
# remove blacklist and get top 50k
bedtools intersect -v -a $p_output/peakCalls/$output_tag"_summits.bed" -b $blacklist | sort -k5 -nr | awk '{OFS="\t"}{print$1,$2-250,$3+250,$4,$5}' > $p_output/peakCalls/$output_tag.summits.500bp.bed

for file in `ls $sc_output/*/*/*.genomeQ30PE.bam` 
do
total_reads=`samtools view -c -F 1284 $file`
reads_inpeak=` bedtools coverage -abam $file -b   $p_output/peakCalls/$output_tag.summits.500bp.bed  -counts |awk 'BEGIN{sum=0}''{sum+=$5}''END{print sum}' `
stat_path=`echo $file | perl -ne '{my @a=split(/\//,$_); print join("/",@a[0..$#a-2])}' -  `
#echo $file 
#echo $stat_path
echo "reads_inpeak	 $reads_inpeak " >> $stat_path/stats.tsv
done
# count number of reads in peak region. 

