#use strict;
#use warnings;

print "please enter a series of strings: \n";

my @inputs = <STDIN>;



print "1234567890"x 4 . "\n";
foreach  (@inputs)
{
	print " "x (21 - length $_)  . $_;
	
}

