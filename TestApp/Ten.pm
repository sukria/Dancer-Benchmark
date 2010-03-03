package Ten;
use Dancer;

foreach my $r (1 .. 9) { 
    get "/$r" => sub { $r };
}
get '/last' => sub { 1 };

1;
