package Big;
use Dancer;
set content_type => 'text/plain';

foreach my $a ('a' .. 'z') {
    foreach my $b ('a' .. 'z') {
        get "/$a/$b" => sub { "/$a/$b" };
    }
}

1;
