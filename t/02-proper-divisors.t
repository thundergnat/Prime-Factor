use v6;
use Test;
use Prime::Factor;

plan 42;

is-deeply(proper-divisors(1).sort.list, (1,), '1 ok');
is-deeply(proper-divisors(2).sort.list, (1,), '2 ok');
is-deeply(proper-divisors(3).sort.list, (1,), '3 ok');
is-deeply(proper-divisors(4).sort.list, (1, 2), '4 ok');
is-deeply(proper-divisors(5).sort.list, (1,), '5 ok');
is-deeply(proper-divisors(6).sort.list, (1, 2, 3), '6 ok');
is-deeply(proper-divisors(7).sort.list, (1,), '7 ok');
is-deeply(proper-divisors(8).sort.list, (1, 2, 4), '8 ok');
is-deeply(proper-divisors(9).sort.list, (1, 3), '9 ok');
is-deeply(proper-divisors(10).sort.list, (1, 2, 5), '10 ok');
is-deeply(proper-divisors(11).sort.list, (1,), '11 ok');
is-deeply(proper-divisors(12).sort.list, (1, 2, 3, 4, 6), '12 ok');
is-deeply(proper-divisors(13).sort.list, (1,), '13 ok');
is-deeply(proper-divisors(14).sort.list, (1, 2, 7), '14 ok');
is-deeply(proper-divisors(15).sort.list, (1, 3, 5), '15 ok');
is-deeply(proper-divisors(16).sort.list, (1, 2, 4, 8), '16 ok');
is-deeply(proper-divisors(17).sort.list, (1,), '17 ok');
is-deeply(proper-divisors(18).sort.list, (1, 2, 3, 6, 9), '18 ok');
is-deeply(proper-divisors(19).sort.list, (1,), '19 ok');
is-deeply(proper-divisors(20).sort.list, (1, 2, 4, 5, 10), '20 ok');

is-deeply(proper-divisors(77779801).sort.list, (1, 11, 491, 5401, 14401, 158411, 7070891), '77779801 ok');
is-deeply(proper-divisors(77779802).sort.list, (1, 2, 38889901), '77779802 ok');
is-deeply(proper-divisors(77779803).sort.list, (1, 3, 25926601),'77779803 ok');
is-deeply(proper-divisors(77779804).sort.list, (1, 2, 4, 19444951, 38889902), '77779804 ok');
is-deeply(proper-divisors(77779805).sort.list, (1, 5, 15555961), '77779805 ok');
is-deeply(proper-divisors(77779806).sort.list, (1, 2, 3, 6, 13, 19, 26, 31, 38, 39, 57, 62, 78, 93, 114, 186, 247, 403, 494, 589, 741, 806, 1178, 1209, 1482, 1693, 1767, 2418, 3386, 3534, 5079, 7657, 10158, 15314, 22009, 22971, 32167, 44018, 45942, 52483, 64334, 66027, 96501, 104966, 132054, 157449, 193002, 314898, 418171, 682279, 836342, 997177, 1254513, 1364558, 1994354, 2046837, 2509026, 2991531, 4093674, 5983062, 12963301, 25926602, 38889903), '77779806 ok');
is-deeply(proper-divisors(77779807).sort.list, (1, 7, 49, 1587343, 11111401), '77779807 ok');
is-deeply(proper-divisors(77779808).sort.list, (1, 2, 4, 8, 16, 32, 419, 838, 1676, 3352, 5801, 6704, 11602, 13408, 23204, 46408, 92816, 185632, 2430619, 4861238, 9722476, 19444952, 38889904), '77779808 ok');
is-deeply(proper-divisors(77779809).sort.list, (1, 3, 9, 37, 111, 131, 333, 393, 1179, 1783, 4847, 5349, 14541, 16047, 43623, 65971, 197913, 233573, 593739, 700719, 2102157, 8642201, 25926603), '77779809 ok');
is-deeply(proper-divisors(77779810).sort.list, (1, 2, 5, 10, 7777981, 15555962, 38889905), '77779810 ok');
is-deeply(proper-divisors(77779811).sort.list, (1, 17, 4575283), '77779811 ok');
is-deeply(proper-divisors(77779812).sort.list, (1, 2, 3, 4, 6, 11, 12, 22, 33, 44, 66, 132, 589241, 1178482, 1767723, 2356964, 3535446, 6481651, 7070892, 12963302, 19444953, 25926604, 38889906), '77779812 ok');
is-deeply(proper-divisors(77779813).sort.list, (1, 23, 139, 3197, 24329, 559567, 3381731), '77779813 ok');
is-deeply(proper-divisors(77779814).sort.list, (1, 2, 7, 14, 5555701, 11111402, 38889907), '77779814 ok');
is-deeply(proper-divisors(77779815).sort.list, (1, 3, 5, 15, 5185321, 15555963, 25926605), '77779815 ok');
is-deeply(proper-divisors(77779816).sort.list, (1, 2, 4, 8, 9722477, 19444954, 38889908), '77779816 ok');
is-deeply(proper-divisors(77779817).sort.list, (1,), '77779817 ok');
is-deeply(proper-divisors(77779818).sort.list, (1, 2, 3, 6, 9, 18, 27, 54, 59, 118, 177, 354, 531, 1062, 1593, 3186, 24413, 48826, 73239, 146478, 219717, 439434, 659151, 1318302, 1440367, 2880734, 4321101, 8642202, 12963303, 25926606, 38889909), '77779818 ok');
is-deeply(proper-divisors(77779819).sort.list, (1, 13, 43, 61, 559, 793, 2281, 2623, 29653, 34099, 98083, 139141, 1275079, 1808833, 5983063), '77779819 ok');
is-deeply(proper-divisors(77779820).sort.list, (1, 2, 4, 5, 10, 20, 3888991, 7777982, 15555964, 19444955, 38889910), '77779820 ok');

dies-ok({proper-divisors(0)}, 'Dies on zero');
dies-ok({proper-divisors(-8)}, 'Dies on negative');

done-testing;

