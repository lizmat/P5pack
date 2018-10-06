use v6.c;
use Test;
use P5pack;

my @exported = <pack unpack>.map: '&' ~ *;

plan @exported * 2 + 1 ;

for @exported {
    ok defined(::($_)), "is $_ imported?";
    ok !defined(P5pack::{$_}), "is $_ externally NOT accessible?";
}

is-deeply blobify("\004Guru"), Buf.new(0,48,52,71,117,114,117);

# vim: ft=perl6 expandtab sw=4
