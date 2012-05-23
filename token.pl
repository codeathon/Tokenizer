#!/usr/bin/perl
use strict;
use warnings;

open FILE, "<perl" || die "Cannot open the test file.";
my $total_words = 0;
print "\nCode to count the total number of words in the text file using different delimiters\n";

while(my $line=<FILE>) {
	my $words = split(/([" "+-,;])/, $line);
	my $t_words = $words;
	$total_words = $total_words + $t_words; 
}

print "\nThe total no of words are : $total_words \n";
  
exit 0;
  