#!/usr/bin/perl -w

=head1 NAME

**file - **desc

=head1 SYNOPSIS

Cloned from make_aadd for discord (simplified markdown)
Unlikely that I want to support both
Job is easier outputing to markdown subset rather than BB [ ] stuff

=head1 DESCRIPTION

=head1 TO DO

=head1 SAMPLE OUTPUT


=cut

use strict ;
use warnings ;
use feature ":5.10" ;
use Data::Dumper ;


#------------------------------------
# Output library (not used yet)
our $collect_string = '' ;
sub mysay {
    my $data = shift ;
    $collect_string .= $data ;
}
sub mynewline {
    $collect_string .= "\n" ;
}
sub mypurge {
    print $collect_string ;
}
sub mydiscard {
    $collect_string = '' ;
    ###print "COLLECT $collect_string ENDCOL\n" ;
}
#------------------------------------
sub box {
    #  bb : [code] xxx [/code]

    my $code = shift ;
    my $text = shift ;
    return "[$code]$text\[/$code]" ;
}
#------------------------------------
sub box_simp {
    #  md : code xxx code (eg code = ~~ )
    my $code = shift ;
    my $text = shift ;
    return "$code$text$code" ;
}
#------------------------------------
sub start_list {
    say '[ul type="disc"]'
}
sub end_list {
    say '[/ul]'
}
#------------------------------------
# TODO - add
#   "=" ->  Bold
#   "#" -> suppress (internal comment)

while (<>) {
	chomp ;
	my $text = $_ ;
    # remove comments
    if ( $text =~ s/\#d// ) {
	   $text = box_simp( '~~', $text ) ;  #strike
   }
   $text =~ s/#.*// ;
   next if $text =~ s/^\s*$//x ; #only blank
   if ( $text =~ /^--\s*(\w*)/ ) {
      ###say STDERR "discard \n" ;
      mydiscard ;
      next ;
   }

   if ( $text =~ s/^=\s*// ) {   # "=" is simple verions of heading
     mynewline ;
     mysay box_simp ( '**', $text )
   } elsif ( $text =~ s/^\s+// ) {    # indented => italics
	   $text = box_simp( '*', $text ) ;
	   mysay( $text) ;
	} else {
        mynewline ;
        mysay " - $text "  ;
    }
}
mypurge
