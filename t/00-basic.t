use v6;
use Test;
use Prime::Factor;

for '', 'a', .5, pi, 0, -12 -> $p {
    dies-ok { factors($p) }, "Dies ok with bad parameter $p";
}

is factors(1), (), 'factors of 1 returns nothing ok';
is factors(2), (2), 'factors 2 ok';
is factors(7), (7), 'factors 7 ok';
is factors(12), (2,2,3), 'factors 12 ok';
is factors(25), (5,5), 'factors 25 ok';
is factors(2016), (2,2,2,2,2,3,3,7), 'factors 2016 ok';
is factors(123899765), (5,11,11,204793), 'factors 123899765 ok';
is factors(2**100-1), (3,5,5,5,11,31,41,101,251,601,1801,4051,8101,268501),
    'factors 2**100-1 ok';

done-testing;
