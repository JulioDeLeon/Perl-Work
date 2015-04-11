#exercise & 2 

#<STDIN> is for input from terminal
#<> is for file inputs 

foreach (<>)
{
	if( /[Ff]red/ )
	{
		print $_;
	}
}
