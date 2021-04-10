#!/usr/bin/perl

use strict;
use warnings;

use lib	"$ENV{PERLTEST}";   #   Add Include path to @INC /home/lutz/ws/perl/testing
use Test::More  tests   =>  3;

use Test::Deep;

my  $points =   [
                    { x =>  50, y =>  75 },
                    { x =>  19, y => -29 },
                ];
my  $is_integer =   re('^-?\d+$');

cmp_deeply  (   $points
            ,   array_each( { x =>  $is_integer, y => $is_integer } )
            ,   'All points have integer coordinates' 
            );
cmp_deeply  (   $points
            ,   array_each  (   { x =>  $is_integer
                                , y => ignore() } 
                            )
            ,   'cmp_deeply( ignore() ) All points have integer coordinates' 
            );
each_array  (   superhashof (   { x =>  $is_integer
                                , y => ignore() } 
                            )
            ,   'each_array( superhashof ( ignore())) All points have integer coordinates' 
            );
