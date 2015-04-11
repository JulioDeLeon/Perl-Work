#!perl
package Animal;
use v5.18;
use strict;
use warnings;
use Moose::Role;
use namespace::autoclean

requires qw(sound default_color);

has 'name' => (is => 'rw');
has 'color' => (is => 'rw', default => sub {shift->default_color} );
has 'sound' => (is => 'ro', default => sub { confess shift, " needs to define sound!" });

sub speak {
    my $self = shift;
    print $self->name, " goes ", $self->sound, "\n";
}

#End of Module
1;
