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
[ul type="disc"][li]Get list of music for concert and put in order.[/li][li]Practice VW[/li][li]Practice Elgar

[/li][li]Clean one side of kitchen properly (bin/recycle crap)
[/li][li]Unpack food[/li][li]Get something ready for dinner[/li][li]Pay bill[/li][/ul][i]

[/i]

[b]Dont do list[/b]
[i]Really easy to find slightly more interesting deflection activities....,[/i]

[ul type="disc"][li]mending clothes. Can wait[/li][li]cycle routes[/li][/ul]


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
#------------------------------------
sub box {
    # this does simplified from 
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
    $text =~ s/#.*// ;
    if ( $text =~ s/\*d// ) {
	   $text = box_simp( '~~', $text ) ;  #strike
   }
   next if $text =~ s/^\s*$//x ; #only blank

   if ( $text =~ s/^=\s*// ) {   # "=" is simple verions of heading
     say box_simp ( '**', $text )
   } elsif ( $text =~ s/^\s+// ) {    # indented => italics
	   $text = box_simp( '*', $text ) ;
	   say $text ;
	} else {
        say ' - ' . $text  ;
    }
}
