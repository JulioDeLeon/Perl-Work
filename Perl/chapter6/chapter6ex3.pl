


while ( ($key, $val) = each %ENV )
{
	print " " x (50 - length $key);
	print  $key ;
	print  " " x (40 - length $val); 
	print  $val;
	print "\n";
}
