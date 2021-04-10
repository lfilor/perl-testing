#!/usr/bin/perl

use strict;
use warnings;

use lib	"$ENV{PERLTEST}";   #   Add Include path to @INC /home/lutz/ws/perl/testing
use Test::More  tests   =>  1;

use Test::Deep;

my  $points =   [
                    { x =>  50, y =>  75 },
                    { x =>  19, y => 'Q' },
                ];
my  $is_integer =   re('^-?\d+$');

cmp_deeply  (   $points
            ,   array_each( { x =>  $is_integer, y => $is_integer } )
            ,   'All points have integer coordinates' 
            );
