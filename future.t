#!/usr/bin/perl

use strict;
use warnings;


use lib	"$ENV{PERLTEST}";                   #   Add Include path to @INC /home/lutz/ws/perl/testing

use Test::More  tests   =>  4;              #   Testplan
use File::Future;

my  $file   =   File::Future->new( 'perl_testing_dn.pod' );
isa_ok      (   $file,  'File::Future'  );

TODO:
{
local   $TODO   =   'To be used in the future';
ok      ( my $future    = $file->retrieve( 'January 30, 2030' ) );
ok      ( my $today     = $file->retrieve( 'January 30, 2021' ) );

cmp_ok  ( length($today), '<',  length($future), 'Ensuring deadline by 2030' );
}#TODO
