use strict;
use warnings;


use LWP::UserAgent;

my $url = 'http://www.synacor.com';

my $ua = LWP::UserAgent->new;
my $response = $ua->get( $url );

$response->is_success or
    die "Failed to GET '$url': ", $response->status_line;

print $response->as_string;