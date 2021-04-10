#!/usr/bin/perl

use strict;
use warnings;


use lib	"$ENV{PERLTEST}";                   #   Add Include path to @INC /home/lutz/ws/perl/testing


use Test::More  tests   =>  4;              #   Testplan

use_ok('Greeter') or exit;
my  $greeter    =   Greeter->new( name  =>  'Lutz', age =>  55 );

isa_ok  ( $greeter          , 'Greeter' );  #   No test description ??
is      ( $greeter->age()   ,      55       ,'age() should return age for object' );
like    ( $greeter->greet() ,    qr/Hello/  ,'greet() should include object name' );


