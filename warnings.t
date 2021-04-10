#!/usr/bin/perl

use strict;
use warnings;

use lib	"$ENV{PERLTEST}";   #   Add Include path to @INC /home/lutz/ws/perl/testing
use Test::More  tests   =>  2
;

use Test::Warn;

sub     add_positives   {
        my  ( $l, $r )  =   @_;
        return $l + $r;
}#sub   add_positives

warning_is  {   is( add_positives(  8, -3 ), 5 )   }
            "second argument (-3) was negative";

warning_is  {   is( add_positives( -8, -3 ), -11 ) }

