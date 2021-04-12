#!/usr/bin/perl

use strict;
use warnings;

use lib	"$ENV{PERLTEST}".'/Between/lib';    #   Add Include path to @INC /home/lutz/ws/perl/testing

use Test::Between   qw( is_between );
#use Test::Builder::Tester   qw( test_pass plan  ) tests => 3;  
use Test::Builder::Tester   tests => 3;  

#plan(   tests   =>  3   );

my  $desc;

$desc   =   'numerical      comparison';    #   Positive - Test
test_out    ( "ok 1 - $desc" );             #   What the test should do
is_between  (  2 ,  1 ,  3 , $desc );       #   Run the test
test_test   ( $desc );                      #   Check what the test has done

$desc   =   'alphabetical   comparison';
test_out    ( "ok 1 - $desc" );
is_between  ( 'b', 'a', 'c', $desc );
test_test   ( $desc );

$desc   =   'alphanumerical comparison';    #   Negative - Test
test_out    ( "not ok 1 - $desc" );         #   What the test should respond
test_fail   ( +2 );                                                 #       |   Two lines down !!
test_diag   ( "          two is not between [ 1 .. 3 ] range" );    #       |   
is_between  ( 'two', 1,  3 , $desc );                               # <-----+
test_test   ( $desc );






