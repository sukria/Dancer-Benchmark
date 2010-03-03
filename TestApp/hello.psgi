# PSGI application bootstraper for Dancer
my $handler = sub {
	return [ 200,
		[ "Content-Type" => "text/plain" ] ,
		[ "Hello PSGI" ]];
};
