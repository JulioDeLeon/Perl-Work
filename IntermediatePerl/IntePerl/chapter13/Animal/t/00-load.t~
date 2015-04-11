#!perl -T
use 5.006;
use strict;
use warnings FATAL => 'all';

BEGIN {
	my @classes = qw(Animal Cow Sheep Horse Mouse);
	use Test::More tests => scalar @classes;
	
	foreach my $class (@classes) {
		use_ok( $class or print "Bail out! $class did not load!\n";	
	}
}

diag( "Testing Animal $Animal::VERSION, Perl $], $^X" );
