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

Not very fast for very large integers.

This would probably be better as a CORE function but until it arrives,
this is available.

AUTHOR

Adapted from code from Damien Conways "On the Shoulders of Giants"
presentation at YAPC::NA 2016 and Wikipedia "Pollard's rho algorithm".

Stephen Schulze (often seen lurking on #perl6 IRC as thundergnat)

LICENSE

Licensed under The Artistic 2.0; see LICENSE.
