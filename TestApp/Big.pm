package Big;
use Dancer ':syntax';

foreach my $a ('a' .. 'z') {
    foreach my $b ('a' .. 'z') {
        get "/$a/$b" => sub { "/$a/$b" };
    }
}

1;
