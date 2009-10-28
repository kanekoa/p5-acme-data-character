use Test::More tests => 1;

use Acme::Data::Character;

is(Acme::Data::Character->h->e->l->l->o, 'hello');
