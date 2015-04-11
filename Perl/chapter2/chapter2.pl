#Chapter 2

#Exercise 1,2,3
#circumference problem
print "Enter a radius: ";

$radius = <STDIN>;
if ( defined($radius) )
{
	if ( $radius < 0 ) 
	{
		print "that value is less then 0\n"
	}else
	{
		print "Circumference: " . 2 * 3.14 * ($radius) . "\n";
	}
}else 
{
	print "There was no valid input!\n";
}


#Exercise 4
#getting the product of 2 numbers

print "Enter num1: ";
$num1 = <STDIN>;

print "Enter num2: ";
$num2 = <STDIN>;

print $num1 * $num2 . "\n";

#exercise 5
#prompt user for string and a number. 
# print the string times as many as the number given

print "enter a string: ";
$usrstring = <STDIN>;

print "enter a number: ";
$usrnum = <STDIN>;

print $usrstring x $usrnum;


