#!/usr/bin/perl 
use strict ;
use warnings ;
my %hash;
open IN ,"$ARGV[0]" or die "can not open $ARGV[0]" ;
my $flag=$ARGV[1];
my $sample_id=$ARGV[2];
my $project=$ARGV[3];
my @names;
my @values;
while(<IN>)
{
	chomp;
	my @a=split;
	push @names, $a[0];
	push @values, $a[1];
#	$hash{$a[0]}=$a[1];
}
#print $names[$#names] ,"\n";
if($ARGV[1] && $ARGV[1] eq "head")
{
#	print join("\t",(keys %hash)),"\n";
	print "SampleID\tProjectInfor\t";
	print join("\t",@names),"\n";
}
elsif( $names[$#names-1] eq "Success")
{
	print $sample_id,"\t",$project,"\t";
	print join("\t",@values),"\n";
}
else
{
		print "Error :";
		print $sample_id,"\t", "did not complete\n";
		exit;
}
