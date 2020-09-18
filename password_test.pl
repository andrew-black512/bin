#!/usr/bin/perl -w
# ISNT WOKKING. Start again ***************************8

#--------------------------------------------------
#
#
#	$Header: /usr/local/cvsroot/perllib/template,v 1.4 2005/06/12 11:20:53 andrew Exp $
#	$Date: 2005/06/12 11:20:53 $
#--------------------------------------------------
# Version history
	#	$Log: template,v $
	#	Revision 1.4  2005/06/12 11:20:53  andrew
	#	Add -w
	#
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
close FH ;


$pass='' ;
while (<>)
{
  chomp ;
  if ($pass) {
  print "YES\n" if $pass eq $_ ;
  print qq(input ="$pass" "$_" \n) ;
  } else {
    print "setting\n" ;
    $pass = $_ ;
  }
}
