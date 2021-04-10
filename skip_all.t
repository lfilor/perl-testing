#!/usr/bin/perl

use strict;
use warnings;

use lib	"$ENV{PERLTEST}";   #   Add Include path to @INC /home/lutz/ws/perl/testing
use Test::More;

if  ([localtime]->[6] != 5  )    {
    plan(   skip_all    =>  'Only run these tests on Tuesday'  );
}   else    {
    #printf  "%5sDay :: %s\n",'',[localtime]->[6];
    plan(   tests       =>  1   );
}

require Tuesday;
my  $day    =   Tuesday->new();
ok  ( $day->coat(),         'we brought our coat'   );
