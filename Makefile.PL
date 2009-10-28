use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Acme::Data::Character',
    AUTHOR              => 'akito kaneko <akito.dev@gmail.com>',
    VERSION_FROM        => 'lib/Acme/Data/Character.pm',
    ABSTRACT_FROM       => 'lib/Acme/Data/Character.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
        'version'    => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Acme-Data-Character-*' },
);
