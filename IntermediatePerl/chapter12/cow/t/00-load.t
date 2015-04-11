#!perl -T
use 5.006;
use strict;
use warnings FATAL => 'all';
use Test::More;

plan tests => 4;

BEGIN {
    use_ok( 'cow' ) || print "Bail out!\n";
    use_ok( 'sheep' ) || print "Bail out!\n";
    use_ok( 'pig' ) || print "Bail out!\n";
    use_ok( 'chicken' ) || print "Bail out!\n";
}

diag( "Testing cow $cow::VERSION, Perl $], $^X" );
