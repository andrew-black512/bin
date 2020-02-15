my $domain ;
while (<>) {
   if ( /@(\S*)/ )  {
      $domain = $1 ;
      print "domain = $domain \n" ; 
   } else {
       chomp ;
       my $name = $_ ;
       $name =~ s/\s*$//g ;
       $name =~ s/ /./g ;
       print "$name\@$domain\n" ;


   }
}

