# Prime-Factor

NAME

Prime::Factor

SYNOPSIS

Exports the sub factors();
Returns a list of all of the prime factors of a positive integer.

USAGE

    use Prime::Factor;

    say factors(720); # (2 2 2 2 3 3 5)

BUGS

Not very fast for large integers. Probably best to restrict it to
integers < 2^32.

AUTHOR

Stephen Schulze (often seen lurking on #perl6 IRC as thundergnat)

LICENSE

Licensed under The Artistic 2.0; see LICENSE.
