#!/usr/bin/perl

use strict;
use warnings;


use lib	"$ENV{PERLTEST}";                   #   Add Include path to @INC /home/lutz/ws/perl/testing


use Test::More  tests   =>  6;              #   Testplan

use_ok('Greeter') or exit;
my  $greeter    =   Greeter->new( name  =>  'Lutz', age =>  55 );

isa_ok  ( $greeter          , 'Greeter' );  #   No test description ??
is      ( $greeter->age()   ,       55      ,'age() should return age for object' );
is      ( $greeter->age()   ,       56      ,'Expect aging and updated age of object' ); 
like    ( $greeter->greet() ,    qr/Hello, /,'greet() expecting correct salutation`' );
like    ( $greeter->greet() ,    qr/Howdy, /,'greet() expecting some slang`' );



