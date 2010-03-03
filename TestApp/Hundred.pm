package Hundred;
use Dancer;

foreach my $r (1 .. 99) { 
    get "/$r" => sub { $r };
}
get '/last' => sub { 1 };

1;
