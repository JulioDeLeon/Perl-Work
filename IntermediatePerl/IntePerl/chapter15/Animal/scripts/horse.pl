#!perl
use v5.18;
use strict;
use warnings;
use Horse;
use Sheep;
use Animal;

# my $name = 'Mr.Ed'; 
# my $tv_horse = \$name;

# bless $tv_horse, 'Horse';
#when you bless an object, you attach a package to a reference, in this case we
#attach a Horse object to our Variable
my $tv_horse = Horse->named("Mr ED");
$tv_horse->set_color("greer");

print $tv_horse->color;
