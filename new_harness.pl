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
use Test::Harness::Straps;
my  $Strap  =   Test::Harness::Straps->new();

for my $file (@ARGV) {
    next unless -f $file;   # skip if the name doesn't lead to real file
    my  %results    =   $Strap->analyze_file( $file );
    printf <<END_REPORT, $file, @results{qw( max seen ok skip todo bonus )};
Results for %s
    Expected test:      %d
    Tests run:          %d
    Tests PASS:         %d
    Tests SKIPPED:      %d
    TODO  tests:        %d
    TODO  tests PASSED  %d
END_REPORT
}#for

