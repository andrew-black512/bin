#!/usr/bin/perl -w

=head1 NAME

**file - **desc

=head1 SYNOPSIS

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

sub box {
    my $code = shift ;
    my $text = shift ;
    return "[$code]$text\[/$code]" ;
}
#------------------------------------
sub start_list {
    say '[ul type="disc"]'
}
sub end_list {
    say '[/ul]'
}
#------------------------------------
start_list() ;
while (<>) {
	chomp ;
	my $text = $_ ;

	$text = box( 's', $text ) if $text =~ s/\#d// ;
    say '  ' . box( 'li', $text ) ;
}
end_list() ;



