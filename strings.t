#!/usr/bin/perl

use strict;
use warnings;

use lib	"$ENV{PERLTEST}";   #   Add Include path to @INC /home/lutz/ws/perl/testing
use Test::More  tests   =>  1;
use Test::Differences;
use Test::LongString;

my  $string1    =   <<"STRING1";
Lorem ipsum dolor sit
amet, consectetuer
adipiscing elit
STRING1

my  $string2    =   <<"STRING2";
Lorem ipsum dolor sit
amet, consectetuer
facilisi adipsicing
STRING2

eq_or_diff  ( $string1, $string2, 'eq_or_diff() Compare $string1 w/ $string2' );
is_string   ( $string1, $string2, 'is_string()  Compare $string1 w/ $string2' );

