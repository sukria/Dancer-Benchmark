package Hello;
use Dancer;

get '/' => sub {
    "hello";
};

true;
