#!/usr/bin/perl 
sub usage (){
    die qq(
#===============================================================================
#
#        USAGE:  ./pileup_bwa_inf.pl  <INPUT / - > 
#       OPTION:  -s : solexa model <quality perspect>
#                -c : has consenque quality, <-c of pileup is turn on>
#                -f : filter quality \<0\>
#                -m : 1--> chr1 
#
#  DESCRIPTION:  Get information from pileup file and filter low quality
#       OUTPUT:  Chr Pos Ref Depth Ref Non-Ref-First-Base,Non-Ref-Sec-Base,Ref-count,Non-Ref-First-count,Non-Ref-Sec-count
#
#       AUTHOR:  Wang yu , wangyu.big\@gmail.com
#      COMPANY:  BIG.CAS
#      CREATED:  08/30/2009 04:51:51 PM
#===============================================================================
          )
}

use strict;
use warnings;
use Getopt::Std;

$ARGV[0] || &usage();
#print @ARGV,"\n";

my %opt= ();
getopts("scf:m",\%opt);
#print "-s $opt{'s'}\n" if defined $opt{'s'};
#print "-c $opt{'c'}\n" if defined $opt{'c'};
#print "-c $opt{f}\n" if defined $opt{f};
#print "\n";

my $cut_quality = $opt{'f'} || 0;
if (defined ($opt{'s'})) {
    $cut_quality += 33; # minor solexa quality is 66
}

    my %base=('C' => 1,'G' => 2,'T' => 3,'A' => 0, 1 => 'C', 2=> 'G', 3=> 'T', 0
        => 'A',',' => 4, '.' => 4, 'N' => 4 , 4 => '-');
#    my @head_print = qw(#Chr Pos Ref Depth 1st 2nd 1stFre 2ndFre A C G T);
#        print join("\t",@head_print),"\n";

open IN,$ARGV[0];
while(<IN>){
    chomp;
    #print "$_","\n";
	next if ($_ eq "") ; 
    my @hit=split(); # chr pos ref consen consen_quality snp_quality max_map_quality seq seq_quality
    
    #print join("\t",@a),"\n";
    next if ($hit[2] eq "*") ; # omit indel 
    my ($chr,$pos,$ref,$seq,$qua);
	 if (defined $opt{'c'}) {
        ($chr,$pos,$ref,undef,undef,undef,undef,undef,$seq,$qua) = @hit;
    }
    else {
       ($chr,$pos,$ref,undef,$seq,$qua) = @hit; 
    }
    if (defined $opt{'m'}) {
        $chr = "chr".$chr;
    }
    $chr =~ s/_validated//g;
    $ref = uc ($ref);

   #print $chr,"\t",$pos,"\t".$seq,"\t",$qua,"\n";
#------ remove others
    my ($tag,$dep,$last_num,$p) = qw(0 0 0 0) ;
    my @count = qw(0 0 0 0 0);
#print "$seq\n";
    for my $i (0..length($seq)-1) {
        my $a = substr($seq,$i,1);
       #print "Sec\t$p\t$a\t$tag\n";
        if ($last_num) {
            if ($a=~/[0-9]/) {
                $tag = $tag * 10 + $a ; # default only two num
                next;
            }
            else {
                $last_num = 0;
            }
        }

        if ($last_num ==0 and $tag > 0 ) { 
            $tag -- ;
            next;
        }
        #print "$last_num\t$tag\t$p\t$a\t$tag\n";
	
        if ($a eq '^' ) {
            $tag = 1;
        }
        elsif ($a eq '$' or $a eq '+' or $a eq '-') {}

        elsif ($a =~ /[0-9]/) {
                $tag = $a;
                $last_num = 1 ;
        }
        elsif ($a eq "*") {
            $p ++;
        }
        else {
            #print STDERR $p,"$a\t$tag\n";
            if (ord( substr ($qua,$p,1)) -33  >= $cut_quality ) {
             #      print STDERR ord(substr ($qua,$p,1))-33,"\n";
                $count[$base{uc($a)}] ++ ;
                $dep ++ ;
                #print "First\t$a\n";
            }
            $p ++;
        }
    }
        $count[$base{uc ( $ref ) }] += $count[4];
        pop @count;
        my @idx = sort {$count[$b] <=> $count[$a]} grep {$_ != $base{$ref} } qw(0 1 2 3);
        push (@count,0);
            for my $i (0..$#idx)  {
              if ($count[$idx[$i]] == 0) {
                $idx[$i] = 4;
               }
            }
#	print $dep,"\n";
        print "$chr\t$pos\t$ref\t$dep\t$ref\t$base{$idx[0]}\t$base{$idx[1]}\t$count[$base{$ref}]\t$count[$idx[0]]\t$count[$idx[1]]\n" if ($dep); 
=head
        my ($fir,$sec,$thr,$firA,$secA,$thrA) = qw{- - - 0 0 0};
        my ($firC,$secC,$thrC)=qw{0 0 0};
        if ($dep) {
            $fir = $base{$rank[0]};
            $firA = int($count[$rank[0]]/($dep+0.000001)*1000+0.5)/1000;
            $firC = $count[$rank[0]];
            if ($count[$rank[1]] > 0){
                $sec = $base{$rank[1]};
                $secA = int($count[$rank[1]]/($dep+0.000001)*1000+0.5)/1000;
                $secC = $count[$rank[1]];
            }
            if ($count[$rank[2]] > 0){
                $thr = $base{$rank[2]};
                $thrA = int($count[$rank[2]]/($dep+0.000001)*1000+0.5)/1000;
                $thrC = $count[$rank[2]];
            }

            if ($fir ne $ref and $count[$base{$ref} ] == $count[$base{$fir} ]) {
                print
                "$chr\t$pos\t$ref\t$dep\t$ref\t$fir\t$firA\t$firA\t",join("\t",@count),"\n";
            }
            else {
                print
                "$chr\t$pos\t$ref\t$dep\t$fir\t$sec\t$firA\t$secA\t",join("\t",@count),"\n";
            }

            if ($fir eq $ref){
                print
                "$chr\t$pos\t$ref\t$dep\t$ref\t$sec\t$thr\t$firC\t$secC\t$thrC\n";
            }
            elsif ($sec eq $ref){
                print
                "$chr\t$pos\t$ref\t$dep\t$ref\t$fir\t$thr\t$secC\t$firC\t$thrC\n";
            }
            elsif ($thr eq $ref){
                print
                "$chr\t$pos\t$ref\t$dep\t$ref\t$fir\t$sec\t$thrC\t$firC\t$secC\n";
            }
            else {
                print
                "$chr\t$pos\t$ref\t$dep\t$ref\t$fir\t$sec\t0\t$firC\t$secC\n";
            }

        }
=cut
}

