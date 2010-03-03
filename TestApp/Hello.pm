package Hello;
use Dancer ':syntax';
set content_type => "text/plain";

get '/' => sub {
    "hello";
};

get '/exit' => sub { exit 0 };
true;
