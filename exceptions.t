#!/usr/bin/perl

use strict;
use warnings;

use lib	"$ENV{PERLTEST}";   #   Add Include path to @INC /home/lutz/ws/perl/testing
#use Test::More  tests   =>  3;
use Test::More  tests   =>  3;

use Test::Exception;
use Error;

sub     add_positives   {
        my  ( $l, $r )  =   @_;
        throw Error::Simple("first  argument ($l) was negative") if  $l < 0;
        throw Error::Simple("second argument ($r) was negative") if  $r < 0;
        return $l + $r;
}#sub   add_positives

throws_ok { add_positives( -7,  6 ) } 'Error::Simple';
throws_ok { add_positives(  3, -9 ) } 'Error::Simple';
throws_ok { add_positives( -5, -1 ) } 'Error::Simple';





