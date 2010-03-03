package Hello;
use Dancer ':syntax';

get '/' => sub {
    "hello";
};
get '/last' => sub { 1 };

true;
