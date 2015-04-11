#chapter 5

#adding chomp to a  STDIN read will make the input end when ENTER is pressed
#chomp( $line = <STDIN> );

#print "I saw \"$line\" \n";

#second example of reading input from terminal

=begin Block
while( defined( $line = <>) )
{
	print "$line";
}

=cut Block

@inputs;

while (<>)
{
	# print $_;
	push @inputs, $_;
}

foreach $line (reverse @inputs)
{
	print $line;
}
#examples of the diamond operator


