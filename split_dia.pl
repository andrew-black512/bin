use strict ;
# split_dia.pl

while (<>) {
  #print ;
  if ( s| // \% .* ||x ) {
     print ;
     my @parts = split /-/x . $_ ; # 
     print join @parts, ":" ;
  }
}
print "-- \n" ;

