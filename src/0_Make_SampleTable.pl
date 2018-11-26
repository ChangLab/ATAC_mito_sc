#!/usr/bin/perl 
use strict;
use warnings;

if(@ARGV<2)
{
	print "Usage perl $0 <fastq file folder> <project name> <output file name> <barcode|trim [defualt barcode]>\n";
	exit;
}

open OUT, ">$ARGV[2]" or die "Can't open $ARGV[2] for write\n";
opendir(D, $ARGV[0]) || die "Can't open directory: $ARGV[0]\n";
my $tag=$ARGV[3]||"barcode";
my $infor=$ARGV[1];
#print join("\t",sort(readdir(D))),"\n";
my @files=grep !/^\./, sort(readdir(D));
#print join("\t",@files),"\n";
if($#files%2 ==1)
{	
	
	print $#files + 1 ,"\tnumber of files in folder \n";
}
else
{
	print "Odd number of files \n";
	print $#files,"\n";
	print "Check input folder to make sure  \n ";
	print "	1. paired end reads \n";
	print " 2. Both read1 and read2 are included\n";
	exit;
}

for (my $i=0; $i<$#files;$i=$i+2)
{
	print $files[$i],"\n";
	my $sample_id="";
	if($tag eq "barcode")
	{
	$files[$i]=~/(\d+)-([ATCG]+)-([ATCG]+)/;
	$sample_id=$1."-".$2."-".$3;
	}
	else
	{	$sample_id=$files[$i];
		$sample_id=~s/_R1\.fastq\.gz//g;
	}
	my $j=$i+1;
	print OUT $sample_id,"\t",$files[$i],"\t",$files[$j],"\t",$ARGV[0],"\t",$infor,"\n";
}


#print OUT join("\n",@files),"\n";
closedir(D);
