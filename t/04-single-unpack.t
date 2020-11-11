use v6.*;
use Test;
use P5pack;

my $s1 = 'ABCD';

is unpack('a4', Buf.new(0x41, 0x42, 0x43, 0x44)), $s1;
is unpack(a4 => Buf.new(0x41, 0x42, 0x43, 0x44)), $s1;

done-testing;

# vim: expandtab shiftwidth=4
