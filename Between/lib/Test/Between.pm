package Test::Between;

use strict;
use warnings;

use base    'Exporter';

our @EXPORT_OK      =   qw( is_between );
our %EXPORT_TAGS    =   ( ALL => [ @EXPORT_OK ]
                        );
#   ===========================================================================

use Test::Builder;
my  $Test   =   Test::Builder->new(); 

sub     is_between  ($$$;$)    {
        my  ( $i,$l,$u,$d ) = @_;
        return  (   $Test->ok   (   "$l" le "$i"
                                &&  "$i" le "$u"
                                ,   $d  )
                ||  $Test->diag (   "          $i is not between [ $l .. $u ] range" )
                );
}#sub   is_between


#   ===========================================================================
#   package end Test::Between
1;
