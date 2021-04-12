#!/usr/bin/perl

use strict;
use warnings;

my  $p  = '/Between/lib';
use lib	"$ENV{PERLTEST}".'/Between/lib';    #   Add Include path to @INC /home/lutz/ws/perl/testing
use Test::More  tests   =>  3;
#use Test::More  tests   =>  4;

use Test::Between   qw( is_between );

is_between(  2 ,  1 ,  3 , 'numerical      comparison' );
is_between( 'b', 'a', 'c', 'alphabetical   comparison' );
is_between( 'two', 1,  3 , 'alphanumerical comparison' );






