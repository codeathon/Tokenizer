use strict;

my $badfound = 0;
sub check_line {		# Checks each line of the file for a faulty if statement
    my($fn, $line) = @_;

    # Check for that =.
    if($line =~ /^\s*if\s*\(.*[^!<>=]=([^=].*\)|\))/) {
	if(!$badfound) {
	    print("Following were the faulty if statements:\n");
	    $badfound = 1;
	}
	print "$fn:$.: $line\n";
    }
}

sub check_file {		# Open the file and call check_line for each line in the file
    my($fn) = @_;

    if(!open(IN, $fn)) {
	print "Cannot read $fn.\n";
	return;
    }

    my($line);
    while($line = <IN>)
    {
	chomp $line;
	check_line($fn,$line);
    }

    close IN;
}

while(my $fn = shift @ARGV) {			# From the command promp, check each argument list
    check_file($fn);
}
if(!$badfound) { print "No suspicious lines were found.\n"; }
