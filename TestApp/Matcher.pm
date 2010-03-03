package Matcher;

use Dancer ':syntax';

get '/foo/:foo' => sub { params->{foo} };
get '/bar/:bar' => sub { params->{foo} };
get '/foobar/:foo/:bar' => sub { params->{foo} . params->{bar} };
get '/wildcard/*' => sub { splat };
get r('(.*)') => sub { splat };

1;
