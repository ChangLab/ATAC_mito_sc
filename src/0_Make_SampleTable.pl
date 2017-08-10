#!/usr/bin/perl 
use strict;
use warnings;

if(@ARGV<2)
{
	print "Usage perl $0 <fastq file folder> < output file name>\n";
	exit;
}

open OUT, ">$ARGV[2]" or die "Can't open $ARGV[2] for write\n";
opendir(D, $ARGV[0]) || die "Can't open directory: $ARGV[0]\n";
my $infor=$ARGV[1];
my @files=grep !/^\./, readdir(D);
if($#files%2 ==1)
{	
	
	print $#files + 1 ,"\tnumber of files in folder \n";
}
else
{
	print "Odd number of files \n";
	print "Check input folder to make sure  \n ";
	print "	1. paired end reads \n";
	print " 2. Both read1 and read2 are included\n";
	exit;
}

for (my $i=0; $i<$#files;$i=$i+2)
{
	print $files[$i],"\n";
	$files[$i]=~/(\d+)-([ATCG]+)-([ATCG]+)/;
	my $sample_id=$1."-".$2."-".$3;
	my $j=$i+1;
	print OUT $sample_id,"\t",$files[$i],"\t",$files[$j],"\t",$ARGV[0],"\t",$infor,"\n";
}


#print OUT join("\n",@files),"\n";
closedir(D);
