use strict;
use warnings;


use LWP::UserAgent;

my $url = 'http://www.synacor.com';

my $user_agent = LWP::UserAgent->new;
my $response = $user_agent->get( $url );

$response->is_success or
    die "Unsuccessfull attempt to do a GET on '$url': ", $response->status_line;

print $response->as_string;