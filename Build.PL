use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Acme::Data::Character',
    license             => 'perl',
    dist_author         => 'akito kaneko <akito.dev@gmail.com>',
    dist_version_from   => 'lib/Acme/Data/Character.pm',
    requires => {
        'Test::More' => 0,
        'version'    => 0,
    },
    add_to_cleanup      => [ 'Acme-Data-Character-*' ],
);

$builder->create_build_script();
