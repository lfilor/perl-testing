package Greeter;

sub     new     {
        my  ( $class, %args )   =   @_;
        bless   \%args, $class;
}#sub   new

sub     name    {
        my  $self   =   shift;
        return  $self->{name};
}#sub   name

sub     age     {
        my  $self   =   shift;
        return  $self->{age};
}#sub   age

sub     greet   {
        my  $self   =   shift;
        return  "Hello, my name is ".$self->name()." !";
}#sub   greet

#   ===========================================================================
#   package end Greeter
1;
