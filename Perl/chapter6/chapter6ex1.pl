%somehash =
(
	'fred' => 'flintstone',
	'barney' => 'rubble',
	'wilma' => 'flintstone',
	'betty' => 'rubble',
);


print "Please enter a first name for the last name: ";

chomp ( $theSearch = <STDIN>);

if (exists $somehash{$theSearch} )
{
 	printf "%s's last name is %s\n", $theSearch, $somehash{$theSearch};
}else 
{
	print "that name does not exist!!\n";
}

