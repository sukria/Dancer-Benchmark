package Fifty;
use Dancer;

foreach my $r (1 .. 49) { 
    get "/$r" => sub { $r };
}
get '/last' => sub { 1 };

1;
