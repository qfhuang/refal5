==== x_2 -> x_4 ====

Source alphabet: {0; 1}
Output alphabet: {0; 1; 2; 3}
Utility symbols: {^, $, x, z}

Input format: [0-9]+
Output format: ([1-9][0-9]+)|0

==== Program ====

// Translating to x_4.
00z -> z0
01z -> z1
10z -> z2
11z -> z3
0z  -> z
1z  -> z1

// Removing zeores from begin and successful terminating.
^z0  -> ^z
^z1  => 1
^z   => 0

// Adding '$' to end (before input check).
x0 -> 0x
x1 -> 1x
x  -> $

// Checking for wrong (empty) input.
^$ -> ^$

// Adding 'z' to end (after input check).
$  -> z

// Adding '^' and 'x' to begin.
   -> ^x

==== Notes ====

We can remove symbol '^' by replace rules...
--------
^$ -> ^$
$  -> z
   -> ^x
--------
...with...
--------
0$ -> 0z
1$ -> 1z
$  -> $
   -> x
--------
...and...
----------
^z0  -> ^z
^z1  => 1
^z   => 0
----------
...with...
--------
z0  -> z
z1  => 1
z   => 0
--------

==== Tests ====
Mental testing!

""    : infinite loop (error);
"0"   : "0";
"000" : "0";
"1"   : "1".

// vim: set ft=asciidoc:
