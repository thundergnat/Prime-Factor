use v6;
use Test;
use Prime::Factor;

plan 84;

# Test "SMALL" integers 
is-deeply(proper-divisors(1).sort, (), 'SMALL proper-divisors 1 ok');
is-deeply(proper-divisors(2).sort, (1,), 'SMALL proper-divisors 2 ok');
is-deeply(proper-divisors(3).sort, (1,), 'SMALL proper-divisors 3 ok');
is-deeply(proper-divisors(4).sort, (1, 2), 'SMALL proper-divisors 4 ok');
is-deeply(proper-divisors(5).sort, (1,), 'SMALL proper-divisors 5 ok');
is-deeply(proper-divisors(6).sort, (1, 2, 3), 'SMALL proper-divisors 6 ok');
is-deeply(proper-divisors(7).sort, (1,), 'SMALL proper-divisors 7 ok');
is-deeply(proper-divisors(8).sort, (1, 2, 4), 'SMALL proper-divisors 8 ok');
is-deeply(proper-divisors(9).sort, (1, 3), 'SMALL proper-divisors 9 ok');
is-deeply(proper-divisors(10).sort, (1, 2, 5), 'SMALL proper-divisors 10 ok');
is-deeply(proper-divisors(11).sort, (1,), 'SMALL proper-divisors 11 ok');
is-deeply(proper-divisors(12).sort, (1, 2, 3, 4, 6), 'SMALL proper-divisors 12 ok');
is-deeply(proper-divisors(13).sort, (1,), 'SMALL proper-divisors 13 ok');
is-deeply(proper-divisors(14).sort, (1, 2, 7), 'SMALL proper-divisors 14 ok');
is-deeply(proper-divisors(15).sort, (1, 3, 5), 'SMALL proper-divisors 15 ok');
is-deeply(proper-divisors(16).sort, (1, 2, 4, 8), 'SMALL proper-divisors 16 ok');
is-deeply(proper-divisors(17).sort, (1,), 'SMALL proper-divisors 17 ok');
is-deeply(proper-divisors(18).sort, (1, 2, 3, 6, 9), 'SMALL proper-divisors 18 ok');
is-deeply(proper-divisors(19).sort, (1,), 'SMALL proper-divisors 19 ok');
is-deeply(proper-divisors(20).sort, (1, 2, 4, 5, 10), 'SMALL proper-divisors 20 ok');

# Test "SMALL" auto-sort 
is-deeply(proper-divisors(1, :s), (), 'auto-sort SMALL proper-divisors 1 ok');
is-deeply(proper-divisors(2, :s), (1,), 'auto-sort SMALL proper-divisors 2 ok');
is-deeply(proper-divisors(3, :s), (1,), 'auto-sort SMALL proper-divisors 3 ok');
is-deeply(proper-divisors(4, :s), (1, 2), 'auto-sort SMALL proper-divisors 4 ok');
is-deeply(proper-divisors(5, :s), (1,), 'auto-sort SMALL proper-divisors 5 ok');
is-deeply(proper-divisors(6, :s), (1, 2, 3), 'auto-sort SMALL proper-divisors 6 ok');
is-deeply(proper-divisors(7, :s), (1,), 'auto-sort SMALL proper-divisors 7 ok');
is-deeply(proper-divisors(8, :s), (1, 2, 4), 'auto-sort SMALL proper-divisors 8 ok');
is-deeply(proper-divisors(9, :s), (1, 3), 'auto-sort SMALL proper-divisors 9 ok');
is-deeply(proper-divisors(10, :s), (1, 2, 5), 'auto-sort SMALL proper-divisors 10 ok');
is-deeply(proper-divisors(11, :s), (1,), 'auto-sort SMALL proper-divisors 11 ok');
is-deeply(proper-divisors(12, :s), (1, 2, 3, 4, 6), 'auto-sort SMALL proper-divisors 12 ok');
is-deeply(proper-divisors(13, :s), (1,), 'auto-sort SMALL proper-divisors 13 ok');
is-deeply(proper-divisors(14, :s), (1, 2, 7), 'auto-sort SMALL proper-divisors 14 ok');
is-deeply(proper-divisors(15, :s), (1, 3, 5), 'auto-sort SMALL proper-divisors 15 ok');
is-deeply(proper-divisors(16, :s), (1, 2, 4, 8), 'auto-sort SMALL proper-divisors 16 ok');
is-deeply(proper-divisors(17, :s), (1,), 'auto-sort SMALL proper-divisors 17 ok');
is-deeply(proper-divisors(18, :s), (1, 2, 3, 6, 9), 'auto-sort SMALL proper-divisors 18 ok');
is-deeply(proper-divisors(19, :s), (1,), 'auto-sort SMALL proper-divisors 19 ok');
is-deeply(proper-divisors(20, :s), (1, 2, 4, 5, 10), 'auto-sort SMALL proper-divisors 20 ok');

# Test "BIG" integers 
is-deeply(proper-divisors(3177779801).sort, (1, 7, 49, 137, 959, 6713, 473377, 3313639, 23195473, 64852649, 453968543), 'BIG proper-divisors 3177779801 ok');
is-deeply(proper-divisors(3177779802).sort, (1, 2, 3, 6, 71, 142, 213, 426, 7459577, 14919154, 22378731, 44757462, 529629967, 1059259934, 1588889901), 'BIG proper-divisors 3177779802 ok');
is-deeply(proper-divisors(3177779803).sort, (1, 11, 121, 1331, 2387513, 26262643, 288889073), 'BIG proper-divisors 3177779803 ok');
is-deeply(proper-divisors(3177779804).sort, (1, 2, 4, 3529, 7058, 14116, 225119, 450238, 900476, 794444951, 1588889902), 'BIG proper-divisors 3177779804 ok');
is-deeply(proper-divisors(3177779805).sort, (1, 3, 5, 9, 15, 45, 70617329, 211851987, 353086645, 635555961, 1059259935), 'BIG proper-divisors 3177779805 ok');
is-deeply(proper-divisors(3177779806).sort, (1, 2, 29, 31, 58, 62, 899, 1798, 1767397, 3534794, 51254513, 54789307, 102509026, 109578614, 1588889903), 'BIG proper-divisors 3177779806 ok');
is-deeply(proper-divisors(3177779807).sort, (1,), 'BIG proper-divisors 3177779807 ok');
is-deeply(proper-divisors(3177779808).sort, (1, 2, 3, 4, 6, 7, 8, 12, 14, 16, 17, 21, 24, 28, 32, 34, 42, 43, 48, 51, 56, 68, 84, 86, 96, 102, 112, 119, 129, 136, 168, 172, 204, 224, 238, 258, 272, 301, 336, 344, 357, 408, 476, 516, 544, 602, 672, 688, 714, 731, 816, 903, 952, 1032, 1204, 1376, 1428, 1462, 1632, 1806, 1904, 2064, 2193, 2408, 2856, 2924, 3612, 3808, 4128, 4386, 4816, 5117, 5712, 5848, 6469, 7224, 8772, 9632, 10234, 11424, 11696, 12938, 14448, 15351, 17544, 19407, 20468, 23392, 25876, 28896, 30702, 35088, 38814, 40936, 45283, 51752, 61404, 70176, 77628, 81872, 90566, 103504, 109973, 122808, 135849, 155256, 163744, 181132, 207008, 219946, 245616, 271698, 278167, 310512, 329919, 362264, 439892, 491232, 543396, 556334, 621024, 659838, 724528, 769811, 834501, 879784, 1086792, 1112668, 1319676, 1449056, 1539622, 1669002, 1759568, 1947169, 2173584, 2225336, 2309433, 2639352, 3079244, 3338004, 3519136, 3894338, 4347168, 4450672, 4618866, 4728839, 5278704, 5841507, 6158488, 6676008, 7788676, 8901344, 9237732, 9457678, 10557408, 11683014, 12316976, 13352016, 14186517, 15577352, 18475464, 18915356, 23366028, 24633952, 26704032, 28373034, 31154704, 33101873, 36950928, 37830712, 46732056, 56746068, 62309408, 66203746, 73901856, 75661424, 93464112, 99305619, 113492136, 132407492, 151322848, 186928224, 198611238, 226984272, 264814984, 397222476, 453968544, 529629968, 794444952, 1059259936, 1588889904), 'BIG proper-divisors 3177779808 ok');
is-deeply(proper-divisors(3177779809).sort, (1, 431, 7373039), 'BIG proper-divisors 3177779809 ok');
is-deeply(proper-divisors(3177779810).sort, (1, 2, 5, 10, 227, 454, 773, 1135, 1546, 1811, 2270, 3622, 3865, 7730, 9055, 18110, 175471, 350942, 411097, 822194, 877355, 1399903, 1754710, 2055485, 2799806, 4110970, 6999515, 13999030, 317777981, 635555962, 1588889905), 'BIG proper-divisors 3177779810 ok');
is-deeply(proper-divisors(3177779811).sort, (1, 3, 19, 57, 61, 183, 1159, 3477, 913943, 2741829, 17364917, 52094751, 55750523, 167251569, 1059259937), 'BIG proper-divisors 3177779811 ok');
is-deeply(proper-divisors(3177779812).sort, (1, 2, 4, 739, 1478, 2956, 1075027, 2150054, 4300108, 794444953, 1588889906), 'BIG proper-divisors 3177779812 ok');
is-deeply(proper-divisors(3177779813).sort, (1, 13, 244444601), 'BIG proper-divisors 3177779813 ok');
is-deeply(proper-divisors(3177779814).sort, (1, 2, 3, 6, 9, 11, 18, 22, 33, 66, 99, 197, 198, 257, 317, 394, 514, 591, 634, 771, 951, 1182, 1542, 1773, 1902, 2167, 2313, 2827, 2853, 3487, 3546, 4334, 4626, 5654, 5706, 6501, 6974, 8481, 10461, 13002, 16962, 19503, 20922, 25443, 31383, 39006, 50629, 50886, 62449, 62766, 81469, 101258, 124898, 151887, 162938, 187347, 244407, 303774, 374694, 455661, 488814, 556919, 562041, 686939, 733221, 896159, 911322, 1113838, 1124082, 1373878, 1466442, 1670757, 1792318, 2060817, 2688477, 3341514, 4121634, 5012271, 5376954, 6182451, 8065431, 10024542, 12364902, 16049393, 16130862, 32098786, 48148179, 96296358, 144444537, 176543323, 288889074, 353086646, 529629969, 1059259938, 1588889907), 'BIG proper-divisors 3177779814 ok');
is-deeply(proper-divisors(3177779815).sort, (1, 5, 7, 35, 1483, 7415, 10381, 51905, 61223, 306115, 428561, 2142805, 90793709, 453968545, 635555963), 'BIG proper-divisors 3177779815 ok');
is-deeply(proper-divisors(3177779816).sort, (1, 2, 4, 8, 397222477, 794444954, 1588889908), 'BIG proper-divisors 3177779816 ok');
is-deeply(proper-divisors(3177779817).sort, (1, 3, 37, 111, 28628647, 85885941, 1059259939), 'BIG proper-divisors 3177779817 ok');
is-deeply(proper-divisors(3177779818).sort, (1, 2, 1588889909), 'BIG proper-divisors 3177779818 ok');
is-deeply(proper-divisors(3177779819).sort, (1, 79, 263, 20777, 152947, 12082813, 40225061), 'BIG proper-divisors 3177779819 ok');
is-deeply(proper-divisors(3177779820).sort, (1, 2, 3, 4, 5, 6, 10, 12, 15, 20, 23, 30, 46, 60, 69, 92, 115, 138, 230, 233, 276, 345, 460, 466, 690, 699, 932, 1165, 1380, 1398, 2330, 2796, 3495, 4660, 5359, 6990, 9883, 10718, 13980, 16077, 19766, 21436, 26795, 29649, 32154, 39532, 49415, 53590, 59298, 64308, 80385, 98830, 107180, 118596, 148245, 160770, 197660, 227309, 296490, 321540, 454618, 592980, 681927, 909236, 1136545, 1363854, 2273090, 2302739, 2727708, 3409635, 4546180, 4605478, 6819270, 6908217, 9210956, 11513695, 13638540, 13816434, 23027390, 27632868, 34541085, 46054780, 52962997, 69082170, 105925994, 138164340, 158888991, 211851988, 264814985, 317777982, 529629970, 635555964, 794444955, 1059259940, 1588889910), 'BIG proper-divisors 3177779820 ok');
is-deeply(proper-divisors(3177779821).sort, (1, 10333, 307537), 'BIG proper-divisors 3177779821 ok');

# Test "BIG" auto-sort

is-deeply(proper-divisors(3177779801, :s), (1, 7, 49, 137, 959, 6713, 473377, 3313639, 23195473, 64852649, 453968543), 'auto-sort BIG proper-divisors 3177779801 ok');
is-deeply(proper-divisors(3177779802, :s), (1, 2, 3, 6, 71, 142, 213, 426, 7459577, 14919154, 22378731, 44757462, 529629967, 1059259934, 1588889901), 'auto-sort BIG proper-divisors 3177779802 ok');
is-deeply(proper-divisors(3177779803, :s), (1, 11, 121, 1331, 2387513, 26262643, 288889073), 'auto-sort BIG proper-divisors 3177779803 ok');
is-deeply(proper-divisors(3177779804, :s), (1, 2, 4, 3529, 7058, 14116, 225119, 450238, 900476, 794444951, 1588889902), 'auto-sort BIG proper-divisors 3177779804 ok');
is-deeply(proper-divisors(3177779805, :s), (1, 3, 5, 9, 15, 45, 70617329, 211851987, 353086645, 635555961, 1059259935), 'auto-sort BIG proper-divisors 3177779805 ok');
is-deeply(proper-divisors(3177779806, :s), (1, 2, 29, 31, 58, 62, 899, 1798, 1767397, 3534794, 51254513, 54789307, 102509026, 109578614, 1588889903), 'auto-sort BIG proper-divisors 3177779806 ok');
is-deeply(proper-divisors(3177779807, :s), (1,), 'auto-sort BIG proper-divisors 3177779807 ok');
is-deeply(proper-divisors(3177779808, :s), (1, 2, 3, 4, 6, 7, 8, 12, 14, 16, 17, 21, 24, 28, 32, 34, 42, 43, 48, 51, 56, 68, 84, 86, 96, 102, 112, 119, 129, 136, 168, 172, 204, 224, 238, 258, 272, 301, 336, 344, 357, 408, 476, 516, 544, 602, 672, 688, 714, 731, 816, 903, 952, 1032, 1204, 1376, 1428, 1462, 1632, 1806, 1904, 2064, 2193, 2408, 2856, 2924, 3612, 3808, 4128, 4386, 4816, 5117, 5712, 5848, 6469, 7224, 8772, 9632, 10234, 11424, 11696, 12938, 14448, 15351, 17544, 19407, 20468, 23392, 25876, 28896, 30702, 35088, 38814, 40936, 45283, 51752, 61404, 70176, 77628, 81872, 90566, 103504, 109973, 122808, 135849, 155256, 163744, 181132, 207008, 219946, 245616, 271698, 278167, 310512, 329919, 362264, 439892, 491232, 543396, 556334, 621024, 659838, 724528, 769811, 834501, 879784, 1086792, 1112668, 1319676, 1449056, 1539622, 1669002, 1759568, 1947169, 2173584, 2225336, 2309433, 2639352, 3079244, 3338004, 3519136, 3894338, 4347168, 4450672, 4618866, 4728839, 5278704, 5841507, 6158488, 6676008, 7788676, 8901344, 9237732, 9457678, 10557408, 11683014, 12316976, 13352016, 14186517, 15577352, 18475464, 18915356, 23366028, 24633952, 26704032, 28373034, 31154704, 33101873, 36950928, 37830712, 46732056, 56746068, 62309408, 66203746, 73901856, 75661424, 93464112, 99305619, 113492136, 132407492, 151322848, 186928224, 198611238, 226984272, 264814984, 397222476, 453968544, 529629968, 794444952, 1059259936, 1588889904), 'auto-sort BIG proper-divisors 3177779808 ok');
is-deeply(proper-divisors(3177779809, :s), (1, 431, 7373039), 'auto-sort BIG proper-divisors 3177779809 ok');
is-deeply(proper-divisors(3177779810, :s), (1, 2, 5, 10, 227, 454, 773, 1135, 1546, 1811, 2270, 3622, 3865, 7730, 9055, 18110, 175471, 350942, 411097, 822194, 877355, 1399903, 1754710, 2055485, 2799806, 4110970, 6999515, 13999030, 317777981, 635555962, 1588889905), 'auto-sort BIG proper-divisors 3177779810 ok');
is-deeply(proper-divisors(3177779811, :s), (1, 3, 19, 57, 61, 183, 1159, 3477, 913943, 2741829, 17364917, 52094751, 55750523, 167251569, 1059259937), 'auto-sort BIG proper-divisors 3177779811 ok');
is-deeply(proper-divisors(3177779812, :s), (1, 2, 4, 739, 1478, 2956, 1075027, 2150054, 4300108, 794444953, 1588889906), 'auto-sort BIG proper-divisors 3177779812 ok');
is-deeply(proper-divisors(3177779813, :s), (1, 13, 244444601), 'auto-sort BIG proper-divisors 3177779813 ok');
is-deeply(proper-divisors(3177779814, :s), (1, 2, 3, 6, 9, 11, 18, 22, 33, 66, 99, 197, 198, 257, 317, 394, 514, 591, 634, 771, 951, 1182, 1542, 1773, 1902, 2167, 2313, 2827, 2853, 3487, 3546, 4334, 4626, 5654, 5706, 6501, 6974, 8481, 10461, 13002, 16962, 19503, 20922, 25443, 31383, 39006, 50629, 50886, 62449, 62766, 81469, 101258, 124898, 151887, 162938, 187347, 244407, 303774, 374694, 455661, 488814, 556919, 562041, 686939, 733221, 896159, 911322, 1113838, 1124082, 1373878, 1466442, 1670757, 1792318, 2060817, 2688477, 3341514, 4121634, 5012271, 5376954, 6182451, 8065431, 10024542, 12364902, 16049393, 16130862, 32098786, 48148179, 96296358, 144444537, 176543323, 288889074, 353086646, 529629969, 1059259938, 1588889907), 'auto-sort BIG proper-divisors 3177779814 ok');
is-deeply(proper-divisors(3177779815, :s), (1, 5, 7, 35, 1483, 7415, 10381, 51905, 61223, 306115, 428561, 2142805, 90793709, 453968545, 635555963), 'auto-sort BIG proper-divisors 3177779815 ok');
is-deeply(proper-divisors(3177779816, :s), (1, 2, 4, 8, 397222477, 794444954, 1588889908), 'auto-sort BIG proper-divisors 3177779816 ok');
is-deeply(proper-divisors(3177779817, :s), (1, 3, 37, 111, 28628647, 85885941, 1059259939), 'auto-sort BIG proper-divisors 3177779817 ok');
is-deeply(proper-divisors(3177779818, :s), (1, 2, 1588889909), 'auto-sort BIG proper-divisors 3177779818 ok');
is-deeply(proper-divisors(3177779819, :s), (1, 79, 263, 20777, 152947, 12082813, 40225061), 'auto-sort BIG proper-divisors 3177779819 ok');
is-deeply(proper-divisors(3177779820, :s), (1, 2, 3, 4, 5, 6, 10, 12, 15, 20, 23, 30, 46, 60, 69, 92, 115, 138, 230, 233, 276, 345, 460, 466, 690, 699, 932, 1165, 1380, 1398, 2330, 2796, 3495, 4660, 5359, 6990, 9883, 10718, 13980, 16077, 19766, 21436, 26795, 29649, 32154, 39532, 49415, 53590, 59298, 64308, 80385, 98830, 107180, 118596, 148245, 160770, 197660, 227309, 296490, 321540, 454618, 592980, 681927, 909236, 1136545, 1363854, 2273090, 2302739, 2727708, 3409635, 4546180, 4605478, 6819270, 6908217, 9210956, 11513695, 13638540, 13816434, 23027390, 27632868, 34541085, 46054780, 52962997, 69082170, 105925994, 138164340, 158888991, 211851988, 264814985, 317777982, 529629970, 635555964, 794444955, 1059259940, 1588889910), 'auto-sort BIG proper-divisors 3177779820 ok');
is-deeply(proper-divisors(3177779821, :s), (1, 10333, 307537), 'auto-sort BIG proper-divisors 3177779821 ok');

dies-ok({proper-divisors(0)}, 'Dies on zero');
dies-ok({proper-divisors(-8)}, 'Dies on negative');

done-testing;

