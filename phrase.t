#!/usr/bin/perl

use strict;

use lib	"$ENV{PERLTEST}";                   #   Add Include path to @INC /home/lutz/ws/perl/testing

use Test::More  tests   =>  3;
use Phrase;

my  $phrase =   Phrase->new('Good morning!');

isa_ok  (   $phrase         ,   'Phrase'    );
is      (   $phrase->text() ,   'Good morning!',    'text() access works' );

SKIP:   
{   
eval        'use WWW::Babelfish';
skip    (   'because WWW::Babelfish required for translation', 1 )  if  $@;
is      (   $phrase->as_dutch
        ,   'Goede ochtend!'
        ,   'successfully translated to Dutch'    );
}#  SKIP

