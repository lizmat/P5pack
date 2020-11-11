use v6.*;
use Test;
use P5pack;

my @exported = <pack unpack>.map: '&' ~ *;

plan @exported * 2;

for @exported {
    ok defined(::($_)), "is $_ imported?";
    ok !defined(P5pack::{$_}), "is $_ externally NOT accessible?";
}

# vim: expandtab shiftwidth=4
