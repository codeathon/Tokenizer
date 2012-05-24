#!/usr/bin/perl
use strict;
use warnings;
use Text::ParseWords;

open FILE, "<perl" || die "Cannot open the test file.";
open WR_FILE, ">>output_token_parsewords.txt" || die "Cannot open/create the output file";

my $total_words = 0;
print "\nCode to parse using shellwords (whitespace parsing) & to count the total number of words in the text file using different delimiters\n";

while(my $line=<FILE>) {
	my @words = shellwords($line);		#  Efficient way to split on whitespaces
	my @words_line = split(/([' ' + - , ; .])/, $line);
	foreach my $token (@words) {
		print WR_FILE "$token \n";
	}
	my $word_count = split(/([' ' + - , ; . ])/, $line);
	my $t_words = $word_count;
	$total_words = $total_words + $t_words; 
}

print "\nThe total no of words are : $total_words \n";
  
exit 0;