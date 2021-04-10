package Phrase;
use strict;

sub     new {
        my  ( $class, $text )   =   @_;
        bless   \$text, $class;
}#sub   new

sub     text{
        my  $self   =   shift;
        return  $$self;
}#sub   text

sub     as_dutch    {
        my  $self   =   shift;
        require WWW::Babelfish;
        return  WWW::Babelfish->new->translate  (   source      =>  'English',
                                                    destination =>  'Dutch',
                                                    text        =>  $self->text(),
                                                );
}#sub   as_dutch


#   ===========================================================================
#   package end Greeter
1;
