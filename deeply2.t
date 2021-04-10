#!/usr/bin/perl

use strict;
use warnings;

use lib	"$ENV{PERLTEST}";   #   Add Include path to @INC /home/lutz/ws/perl/testing
use Test::More  tests   =>  3;
use Test::Differences;

my  $list1  =   [
                    [
                        [ 48, 12 ],
                        [ 32, 10 ],
                    ],
                    [
                        [ 03, 28 ],
                    ],
                ];#end of list1

my  $list2  =   [
                    [
                        [ 48, 12 ],
                        [ 32, 11 ],
                    ],
                    [
                        [ 03, 28 ],
                    ],
                ];#end of list2

my  $list3  =   [
                    [
                        [ 48, 12 ],
                        [ 32, 10 ],
                    ],
                    [
                        [ 03, 28 ],
                    ],
                ];#end of list3
SKIP:
{
skip        (   'Skip Test #1, #2', 2 );
is_deeply   (   $list1, $list2, 'existential equivalence testing $list1, $list2' );
eq_or_diff  (   $list1, $list2, 'existential equivalence testing $list1, $list2' );
}
eq_or_diff  (   $list1, $list3, 'existential equivalence testing $list1, $list3' );

