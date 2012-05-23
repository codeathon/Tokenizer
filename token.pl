#!/usr/bin/perl
use strict;
use warnings;

open FILE, "<perl" || die "Cannot open the test file.";
open W_FILE, ">>output_token.txt" || die "Cannot open/create the output file";

my $total_words = 0;
print "\nCode to count the total number of words in the text file using different delimiters\n";

while(my $line=<FILE>) {
	my @words_line = split(/([+-,;.\s\/])/, $line);			# regex used here, [...] holds the list of delimiters
	foreach my $token (@words_line) {
		print W_FILE "$token\n";
	}
	my $word_count = split(/([' ' + - , ; . ])/, $line);
	my $t_words = $word_count;
	$total_words = $total_words + $t_words; 
}

print "\nThe total no of words are : $total_words \n";
  
exit 0;