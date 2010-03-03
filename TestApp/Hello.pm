package Hello;
use Dancer ':syntax';

get '/' => sub {
    "hello";
};

get '/exit' => sub { exit 0 };
true;
