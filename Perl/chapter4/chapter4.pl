#chpater 4
#use 5.012;

#exercise 1

sub total
{
	my($total) = 0;
	
	foreach (@_) 
	{
		$total += $_;
	}
	
	$total;
}

my @sl = qw/ 6 6 6 /;

print "total of \@sl is " . total(@sl) . "\n";

print "Enter a list of nums: \n CTRL + D ends input\n";

my @usrlst = <STDIN>;

print "total of \@usrlst is " . total(@usrlst) . "\n";


#exercise 2
my @ex2lst = 1..1000;
print "total of \@exlst is " . total(@ex2lst) . "\n";

#exercise 3 extra credit

sub average
{
 if (@_ == 0) { return };
 my $count = @_;
 my $sum = &total(@_);
 $sum / $count;
}


sub above_average
{
	my $average = average(@_);
	my @list;
	
	foreach my $item (@_)
	{
		if( $item > $average )
		{	
				push @list, $item;
		}
	}
	
	@list;
}


my @testlist = 1..6;

my @ans = above_average(@testlist);

foreach  my  $item (@ans)
{
	print $item . "\n";
}



#exercise 4
use 5.010;


sub greet 
{
 state $last_per;
	my $name = shift;
	
	print "hi $name ";
	
	
	if(defined $last_per) 
	{
		print "$last_per is also here\n";
	}else 
	{
		print "You are the first here\n";
	}
	
	$last_per = $name;
}





&greet( "fred");
&greet( "barney");


#exercise 5

sub greet2 
{
 state @last_per;
	my $name = shift;
	
	print "hi $name ";
	
	
	if(defined @last_per) 
	{
	
		print "I have seen: ";
		foreach $per (@last_per)
		{
			print $per. " ";
		 }
		 
		 print "\n";
	}else 
	{
		print "You are the first here\n";
	}
	
	push @last_per, $name;
}



&greet2( "fred");
&greet2( "barney");
&greet2( "wilma");
&greet2( "betty");
&greet2( "pebbles");
&greet2( "bambam");




