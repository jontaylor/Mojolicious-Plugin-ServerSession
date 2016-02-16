use 5.010000;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Mojolicious::Plugin::ServerSession',
    VERSION_FROM      => 'lib/Mojolicious/Plugin/ServerSession.pm', # finds $VERSION
    PREREQ_PM         => {
      'Mojo' => 0

    }, # e.g., Module::Name => 1.1
    clean => { FILES => 'Mojolicious-Plugin-ServerSession-*' },
    LICENSE => 'perl_5',
    (eval { ExtUtils::MakeMaker->VERSION(6.46) } ? (META_MERGE => {
        'meta-spec' => { version => 2 },
        resources => {
            repository => {
                type => 'git',
                url  => 'https://github.com/jontaylor/Mojolicious-Plugin-ServerSession.git',
                web  => 'https://github.com/jontaylor/Mojolicious-Plugin-ServerSession',
            },
        }})
     : ()
    ),
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/Mojolicious/Plugin/ServerSession.pm', # retrieve abstract from module
       AUTHOR         => 'Jonathan Taylor <jon@local>') : ()),
);
