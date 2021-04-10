package File::Future;

use strict;
use warnings;

sub     new {
        my  (   $class, $filename   )  =   @_;
        bless   { filename  =>  $filename  },  $class;
}#sub   new

sub     retrieve {
        #   To be implemented in the future ...
}#sub   retrieve

#   ===========================================================================
#   package end File::Future
1;
