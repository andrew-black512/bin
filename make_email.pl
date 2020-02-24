my $domain ;
while (<>) {
   if ( /@(\S*)/x )  {
      $domain = $1 ;
      print "\n" ;
      print "domain = $domain \n" ;
   } elsif ( m| // ( [^/]* ) |x )  {
      $domain = $1 ;
       $domain =~ s/^www\.//g ;
      print "\n" ;
      print "domain = $domain \n" ;
   } else {
       chomp ;
       my $name = $_ ;
       $name =~ s/\s*$//g ;
       $name =~ s/^\s*//g ;
       $name =~ s/ /./g ;
       print "$name\@$domain\n" ;


   }
}

