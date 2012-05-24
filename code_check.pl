use strict;

my $badfound = 0;
sub check_line {		# Checks each line of the file for a faulty if statement
    my($fn, $line) = @_;

    # Check for that =.
    if($line =~ /^\s*if\s*\(.*[^!<>=]=([^=].*\)|\))/) {
	if(!$badfound) {
	    print OUT "Following were the faulty if statements:\n";
	    $badfound = 1;
	}
	print OUT "$fn:$.: $line\n";
    }
}

sub check_file {		# Open the file and call check_line for each line in the file
    my($fn) = @_;

    open IN, "<test.c" || die "Cannot read $fn.\n";
    open OUT, ">>output_codecheck" || die "Cannot create output_codecheck";
    print OUT "file opened \n";
    my($line);
    while($line = <IN>)
    {
	chomp $line;
	check_line($fn,$line);
    }

    close IN;
}

check_file();
if(!$badfound) { print OUT "No suspicious lines were found.\n"; close OUT;}
