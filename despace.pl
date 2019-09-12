#!/usr/bin/perl
# use '5.10.0' ;

foreach my $filename (@ARGV) {
  my $newfilename = $filename ;
  $newfilename =~ s/ \s+ /_/gx ;
  print "Rename $filename as  $newfilename\n" ;
  rename $filename , $newfilename or die "Cannot rename file: $!";
}


