#!/usr/bin/perl
use strict;
use warnings;

open FILE, "<perl" || die "Cannot open the test file.";
my $total_words = 0;
while(my $line=<FILE>) {
	my $words = split(/([" "+-,;])/, $line);
	my $nwords = $words;
	$total_words = $total_words + $nwords; 
}

print "\nThe total no of words are : $total_words \n";

 # my $data = 'foo1+foo22-blah*blah(var)+fooA(var)%fooC'; #'Becky Alcorn,2;5,female,Melbourne';

  #my @values = split(/([-+*%])/, $data); #split(',', $data);

  #foreach my $val (@values){
   # print "$val\n";
  #}
  
exit 0;
  