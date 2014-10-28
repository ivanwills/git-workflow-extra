use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name       => 'module',
    license           => 'perl',
    dist_author       => 'Ivan Wills <ivan.wills@gmail.com>',
    dist_version_from => 'lib/App/Git/Workflow/Command/SinceRelease.pm',
    requires          => {
        'perl'                         => '5.006',
        'App::Git::Workflow'           => '0.8',
        'App::Git::Workflow::Command'  => '0.8',
        'Path::Class'                  => 0,
        'Test::Git::Workflow::Command' => '0.8',
    },
    build_requires => {
        'Test::More'       => 0,
        'Test::NoWarnings' => 0,
    },
    add_to_cleanup     => [ 'module-*' ],
    create_makefile_pl => 'traditional',
    create_license     => 1,
    meta_merge => {
        resources => {
            repository => 'git://github.com/ivanwills/module.git',
            bugtracker => 'http://rt.cpan.org/NoAuth/Bugs.html?Dist=module',
        },
    },
);

$builder->create_build_script();
