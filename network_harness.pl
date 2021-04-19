#!/usr/bin/perl -w
#
###############################################################################
#
#   Author      Lutz Filor
#               408 807 6915
#
#   Synopsis    How to analyze regressions
#               - create reports
#
#               Testing Libraries
#
#   Note        The Harness and the Tests should use the Test::Harness::Straps
#               Keywords    max, seen, ok, skip, todo, bonus
#==============================================================================

use strict;
use warnings;
#use Net::SSH::Perl;                            #   deprecated
use Net::SSH2;
use Test::Harness::Straps;

my  $Strap  =   Test::Harness::Straps->new();
#my  $ssh    =   Net::SSH::Perl->new();         #   deprecated
my  $ssh    =   Net::SSH2->new('textbox');



#==============================================================================
#   End of Program
