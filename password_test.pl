#!/usr/bin/perl -w
#--------------------------------------------------

=head1 NAME

=head1 SYNOPSIS

=head1 DESCRIPTION

=head1 TO DO


=cut

use strict ;
use warnings ;

open ( FH , 'password.txt' ) or die "cant open"  ;
my $pass = <FH> ;
chomp $pass ;
##print qq("$pass"\n) ;
close FH ;


#$pass='' ;  # to test if no password in file
while (<>)
{
  chomp ;
  if ($_ eq '?') {
    print "$pass\n"
  }
  if ($pass) {
  print "YES\n" if $pass eq $_ ;
  ##print qq(input ="$pass" "$_" \n) ;
  } else {
    print "setting\n" ;
    $pass = $_ ;
  }
}
