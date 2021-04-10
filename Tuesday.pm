package Tuesday;

sub     new {
        bless   {}, shift;
}#sub   new

sub     coat    {
        #printf  "%5sDay :: %s\n",'',[localtime]->[6];
        return  [localtime]->[6] == 5;
}#sub   coat

#   ===========================================================================
#   package end Tuesday
1;
