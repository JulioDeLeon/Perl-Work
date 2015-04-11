%somehash;

foreach (<>)
{
	if( exists $somehash{$_} )
	{
		$somehash{$_} += 1;
	}else 
	{
		$somehash{$_} = 1;
	}
}

%tmp = sort %somehash;
while ( ($key, $value) = each  %somehash )
{
	chomp ($temp =  $key);
	print "$temp => $value \n";
}


