use strict;
use warnings;
use Encode qw(_utf8_on);
my $a = "���";
_utf8_on($a);
print $a eq '';

