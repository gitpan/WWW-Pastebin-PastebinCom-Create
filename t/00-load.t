#!/usr/bin/env perl

use strict;
use warnings;

use Test::More tests => 7;

BEGIN {
    use_ok('Carp');
    use_ok('URI');
    use_ok('LWP::UserAgent');
    use_ok('overload');
    use_ok( 'WWW::Pastebin::PastebinCom::Create' );
}

diag( "Testing WWW::Pastebin::PastebinCom::Create $WWW::Pastebin::PastebinCom::Create::VERSION, Perl $], $^X" );

use WWW::Pastebin::PastebinCom::Create;

my $p = WWW::Pastebin::PastebinCom::Create->new;
isa_ok( $p, 'WWW::Pastebin::PastebinCom::Create' );
can_ok( $p, qw(new paste paste_uri error get_valid_formats) );
