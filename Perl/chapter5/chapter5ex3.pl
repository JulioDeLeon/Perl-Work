#use strict;
#use warnings;

print "enter the column num you want to indent\n";
chomp ( $inde =  <STDIN>);


print "please enter a series of strings: \n";

my @inputs = <STDIN>;



print "1234567890"x 4 . "\n";
foreach  (@inputs)
{
	print " "x ( ($inde - length $_) +1 )  . $_;
	
}

