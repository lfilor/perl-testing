#!/usr/bin/perl

use strict;
use warnings;

use lib	"$ENV{PERLTEST}";   #   Add Include path to @INC /home/lutz/ws/perl/testing
use Test::More  tests   =>  2
;

use Test::Deep;

my @a   =   ( 4, 89, 2, 7, 1 );

my  $points =   [
                    { x =>  50, y =>  75 },
                    { x =>  19, y => -29 },
                ];
my  $is_integer =   re('^-?\d+$');

cmp_deeply  (   \@a
            ,   bag( 1, 2, 4, 7, 89 )
            ,   'bag( ) compare sets' 
            );

cmp_bag     (   \@a
            ,   [  1, 2, 4, 7, 89 ]
            ,   'cmp_bag() compare sets'
            );
