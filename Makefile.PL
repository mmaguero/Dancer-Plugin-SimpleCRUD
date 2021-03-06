use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Dancer::Plugin::SimpleCRUD',
    AUTHOR              => q{David Precious <davidp@preshweb.co.uk>},
    VERSION_FROM        => 'lib/Dancer/Plugin/SimpleCRUD.pm',
    ABSTRACT_FROM       => 'lib/Dancer/Plugin/SimpleCRUD.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
        'Test::Differences' => 0.64,
        'Dancer'     => 1.3,
        'Dancer::Plugin::Database' => 2.13,
        'Dancer::Plugin::Database::Core' => 0.20,
        'HTML::Table::FromDatabase' => 1.10,
        'CGI::FormBuilder' => 3.10,
        'DBD::SQLite'   => 1.50,
        'Text::CSV'    => 0,
        'HTML::TreeBuilder' => 5.03,
        'List::MoreUtils' => 0.416,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Dancer-Plugin-SimpleCRUD-*' },

    META_MERGE => {
        resources => {
            repository => 'https://github.com/bigpresh/Dancer-Plugin-SimpleCRUD',
            bugtracker => 'https://github.com/bigpresh/Dancer-Plugin-SimpleCRUD/issues',
            homepage   => 'https://github.com/bigpresh/Dancer-Plugin-SimpleCRUD/wiki/Quick-intro',
        },
    },
);
