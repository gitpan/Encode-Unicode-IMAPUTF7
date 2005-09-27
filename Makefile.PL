use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'	=> 'Encode::Unicode::IMAPUTF7',
    'VERSION_FROM' => 'lib/Encode/Unicode/IMAPUTF7.pm',    
    'dist'          => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    ($] >= 5.005 ?
      (ABSTRACT_FROM  => 'lib/Encode/Unicode/IMAPUTF7.pm',
       AUTHOR         => 'Sava Chankov <sava@cpan.org>') : ()),
);
