
#chapter 3
#exercise 1

print "Enter Strings to be reversed\n(CTRL+D to end)\n::";

@listofstr = <STDIN>;

foreach $str (@listofstr)
{
	$tmp = reverse $str;
	print "reversed: $tmp\n";
}

#exercise 2
print "entered exercise 2 \m";

@thelist = qw/ fred wilma barney betty dino bambam pebbles/;
print "enter numbers to see @thelist \n\n\n::";
@arrofnum = <STDIN>;


foreach $va (@arrofnum)
{
	print "val: $thelist[$va] \n";
}

#exercise 3
print "entered exercise 3\n\n";

print "enteer an array of strings \n\n\n";
@ts = <STDIN>;

@nwarr = sort @ts;

print "Sorted array style 1 \n:";

print "@nwarr";

$count = 0;
$limit = chomp @nwarr;

print "Sorted array style 2 \n:";
while ($count < $limit)
{
	print @nwarr[$count] . " ";
	$count += 1;
}

print "\n";



