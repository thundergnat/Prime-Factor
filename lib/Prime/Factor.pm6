unit module Prime::Factor:ver<0.1.1>:auth<github:thundergnat>;
use v6;

sub factors ( Int $n where * > 0 ) is export {
    return $n if is-prime $n;
    return [] if $n == 1;
    my $factor = random($n);
    return sort flat factors($factor), factors($n div $factor);
}

# use Pollard's rho algorithm to speed factorization
# See Wikipedia "Pollard's rho algorithm" and
# Damien Conways "On the Shoulders of Giants" presentation at YAPC::NA 2016
sub random (Int $n) {
    my ($x, $fixed, $ρ, $factor) = 2, 2, 2, 1;
    # randomize the g(x) function to avoid getting caught in endless loops
    sub g {($^a * $^a + (1..255).pick) % $^b };
    while $factor == 1 {
        for 1 ..^ $ρ {
            $x = g($x, $n);
            $factor = ($x - $fixed) gcd $n;
            last if $factor > 1;
        }
        $ρ *= 2;
        $fixed = $x;
    }
    $factor;
}
