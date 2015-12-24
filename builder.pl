#!/usr/bin/env perl

use strict;
use warnings;

my @arg;

foreach ( 1 .. 1000000 ) {
    push @arg, "x" . $_;
}
print <<"GOLANG;";
package main

func hugeReturn() (
GOLANG;

print join( ",", @arg );

print <<"GOLANG;";
 int) {
	return
}

func main() {
GOLANG;

print join( ",", map {"_"} @arg );

print <<"GOLANG;";
 = hugeReturn()
}

GOLANG;

1;

