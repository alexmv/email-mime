use 5.006; # see t/perl-minver.t
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
  NAME  => 'Email::MIME',
  VERSION_FROM  => 'lib/Email/MIME.pm',
  (eval { ExtUtils::MakeMaker->VERSION(6.21) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM => {
    'Email::MIME::ContentType' => '1.011',
    'Email::MIME::Encodings'   => '1.3',
    'Email::Simple' => '2.004', # default_header_class
    'Encode'        => '1.9801',
    'MIME::Types'   => '1.13',
    'Test::More'    => '0.47',
  },
  (eval { ExtUtils::MakeMaker->VERSION(6.46) }
    ? (META_MERGE => {
        resources => {
          Repository => 'http://github.com/rjbs/email-mime'
        }
      })
    : ()
  ),
);
