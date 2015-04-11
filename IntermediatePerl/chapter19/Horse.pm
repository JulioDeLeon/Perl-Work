#!perl
package Horse;
use v5.18;
use strict;
use warnings;
use Moose;
use namespace::autoclean

with 'Animal';
sub sound {
    'neigh'
}


sub default_color {
    'brown'
}

__PACKAGE__->meta->make_immutable;
#End of Module
1;
