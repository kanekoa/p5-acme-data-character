package Acme::Data::Character;

use warnings;
use strict;
use Carp;

use Scalar::Util qw/ blessed /;

use version; our $VERSION = qv('0.0.1');

use overload q("") => sub {
    my $self = shift;
    return $self->{stack};
};

BEGIN {
    foreach my $char (qw/ a b c d e f g h i j k l m n o p q r s t u v w x y z /) {
        no strict 'refs'; ## no critic
        *{ $char } = sub {
            my $proto = shift;
            my $self = blessed($proto) ? $proto : $proto->new;
            $self->{stack} .= $char;
            return $self;
        };
    }
};

sub new {
    my $class = shift;

    my $self = {
        stack => '',
    };

    $self = bless $self, $class;
    return $self;
}

1;
__END__

=head1 NAME

Acme::Data::Character - get a character

=head1 VERSION

This document describes Acme::Data::Character version 0.0.1

=head1 SYNOPSIS

    use Acme::Data::Character;

    print Acme::Data::Character->h->e->l->l->o;
    # > hello

=head1 DESCRIPTION

    get a character

=head1 METHODS

=over 4

=item new

make object

=item a

get 'a'

=item b

get 'b'

=item c

get 'c'

=item d

get 'd'

=item e

get 'e'

=item f

get 'f'

=item g

get 'g'

=item h

get 'h'

=item i

get 'i'

=item j

get 'j'

=item k

get 'k'

=item l

get 'l'

=item m

get 'm'

=item n

get 'n'

=item o

get 'o'

=item p

get 'p'

=item q

get 'q'

=item r

get 'r'

=item s

get 's'

=item t

get 't'

=item u

get 'u'

=item v

get 'v'

=item w

get 'w'

=item x

get 'x'

=item y

get 'y'

=item z

get 'z'

=back

=head1 AUTHOR

akito kaneko  C<< <akito.dev@gmail.com> >>

=head1 THANKS TO

Mr. kojo

=head1 LICENCE AND COPYRIGHT

Copyright (c) 2009, akito kaneko C<< <akito.dev@gmail.com> >>. All rights reserved.

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself. See L<perlartistic>.

=cut
