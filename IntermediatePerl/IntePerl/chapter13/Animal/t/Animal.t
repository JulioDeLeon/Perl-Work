#! -T perl
use strict;
use warnings;

use Test::More tests => 6;

BEGIN {
	use_ok ('Animal') || print "Bail Out!\n";
}

diag( "Testing Animal $Animal::VERSION, Perl $], $^X" );

#Check if functions are properly defined
ok( defined &Animal::speak, "Animal::speak is defined");
ok( defined &Animal::sound, "Animal::sound is defined");

#checking if Animal sound and speak die properly
eval{ Animal->sound() } or my $at = $@;
like( $at, qr/ You must /, 'sound() dies at message' );


eval{ Animal->speak() } or $at = $@;
like( $at, qr/ You must /, 'speak() dies at message' );


{
	package Foofle;
	use parent qw(Animal);
	sub sound{'foof'}
	
	is(
		Foofle->speak,
		"A foofle go foof!\n",
		'An animal subclass does the right thing'
	);
}
