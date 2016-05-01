DELETE FROM conditions WHERE condition_entry IN (733, 734, 735, 736, 737, 738, 739);
INSERT INTO conditions (condition_entry, TYPE, value1, value2) VALUES
(733, 18, 0, 0),
(734, 18, 1, 0),
(735, 18, 2, 0),
(736, 18, 3, 0),
(737, 18, 4, 0),
(738, -2, 735, 736), -- hardmode 2 OR hardmode 3
(739, -2, 738, 734); -- hardmode (2 OR 3) OR hardmode 1

-- npc_prof_alchemy
-- UPDATE creature_template SET ScriptName = '' WHERE entry IN (17909, 19052, 22427);
UPDATE creature_template SET gossipmenuid = 8540 WHERE entry = 19052;
DELETE FROM conditions WHERE condition_entry IN (746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761); 
INSERT INTO conditions (condition_entry, TYPE, value1, value2) VALUES
(746, 17, 28672, 0), -- has Transmutation mastery
(747, 17, 28675, 0), -- has Potion Mastery
(748, 17, 28677, 0), -- has Elexir Mastery
(749, 8, 10899, 0), -- quest rewarded Master of Transmutation
(750, 8, 10897, 0), -- quest rewarded Master of Potions
(751, 8, 10902, 0), -- quest rewarded Master of Elexirs
(752, 7, 171, 350), -- has skill alchemy 350
(753, 15, 68, 1), -- has lvl >=68
(754, -2, 749, 750), -- quest rewarded 10899 OR 10897
(755, -2, 751, 754), -- quest rewarded (10899 OR 10897) OR 10902
(756, -1, 752, 753), -- alchemy >=350 AND lvl => 68
(757, -1, 755, 756), -- (alchemy >=350 AND lvl => 68) AND (quest rewarded (10899 OR 10897) OR 10902)
(758, -2, 746, 747), -- has spell 28672 OR 28675
(759, -2, 748, 758), -- has spell (28672 OR 28675) OR 28677
(760, -3, 759, 0),	-- has no spell 28672 OR 28675) OR 28677
(761, -1, 760, 757); -- lvl and skill and quest;

-- UPDATE creature_template SET ScriptName='' WHERE entry = 28776;
DELETE FROM conditions WHERE condition_entry IN (762, 763, 767, 768, 769, 770, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789, 790, 791, 792,
794, 795, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805);
INSERT INTO conditions (condition_entry, TYPE, value1, value2) VALUES
(762, 24, 31404, 1), -- no item Green Trophy Tabard of the Illidari
(763, 24, 31405, 1), -- no item Purple Trophy Tabard of the Illidari
(767, 8, 11972, 0), -- has quest rewarded Shards of Ahune
(768, 8, 9737, 0), -- has quest rewarded True Masters of the Light --> Blood Knight Tabard
(769, 8, 9762, 0), -- has quest rewarded The Unwritten Prophecy --> Tabard of the Hand
(770, 8, 10259, 0), -- has quest rewarded Into the Breach --> tobard of protector
(772, 24, 43300, 1), -- has no item Loremaster's Colors
(773, 24, 43348, 1), -- has no item Tabard of the Explorer
(774, 24, 35280, 1), -- has no item Tabard of Summer Flames
(775, 24, 35279, 1), -- has no item Tabard of Summer Skies
(776, 24, 25549, 1), -- has no item Blood Knight Tabard
(777, 24, 24344, 1), -- has no item Tabard of the Hand
(778, 24, 28788, 1), -- has no item Tabard of the Protector
(779, 24, 40643, 1), -- has no item Tabard of the Achiever
(780, 8, 10781, 0), -- has quest rewarded Battle of the Crimson Watch
(781, -1, 768, 776),
(782, -1, 769, 777),
(783, -1, 770, 778),
(784, -1, 767, 775),
(785, -1, 767, 774),
(786, -1, 766, 773),
(787, -1, 771, 779),
(788, -1, 764, 772),
(789, -1, 765, 772),
(790, 24, 31408, 1), -- has no item Offering of the Sha'tar
(791, -1, 763, 762), 
(792, -2, 788, 789),
(794, -1, 790, 780),
(795, -1, 791, 794),
(796, -1, 785, 775),
(797, -1, 784, 774),
(798, 24, 43349, 1), -- has no item Tabard of Brute Force
(799, -1, 793, 798),
(800, 8, 8115, 0), -- has quest rewarded Control Five Bases
(801, 24, 20132, 1), -- has no item Arathor Battle Tabard
(802, -1, 800, 801),
(803, 8, 8122, 0), -- has quest rewarded Take Five Bases
(804, 24, 20131, 1), -- has no item Battle Tabard of the Defilers
(805, -1, 803, 804);

DELETE FROM conditions WHERE condition_entry IN
(806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820,
821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838,
839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854);
INSERT INTO conditions (condition_entry, TYPE, value1, value2) VALUES
(806, 5, 76, 7),
(807, 5, 72, 7),
(808, 5, 81, 7),
(809, 5, 930, 7),
(810, 5, 530, 7),
(811, 5, 911, 7),
(812, 5, 68, 7),
(813, 5, 69, 7),
(814, 5, 54, 7),
(815, 14, 688, 0),
(816, 14, 1100, 0),
(817, 14, 658, 0),
(818, 14, 77, 0),
(819, 14, 562, 0),
(820, 14, 178, 0),
(821, 14, 674, 0),
(822, 14, 1093, 0),
(823, 14, 1037, 0),
(824, 14, 1097, 0),
(825, -1, 806, 815),
(826, -1, 807, 816),
(827, -1, 808, 817),
(828, -1, 809, 818),
(829, -1, 810, 819),
(830, -1, 811, 820),
(831, -1, 812, 821),
(832, -1, 813, 822),
(833, -1, 814, 823),
(834, -1, 463, 824),
(835, 14, 1, 0),
(836, 14, 2, 0),
(837, 14, 4, 0),
(838, 14, 8, 0),
(839, 14, 16, 0),
(840, 14, 32, 0),
(841, 14, 64, 0),
(842, 14, 128, 0),
(843, 14, 512, 0),
(844, 14, 1024, 0),
(845, -2, 825, 836),
(846, -2, 826, 835),
(847, -2, 827, 840),
(848, -2, 828, 844),
(849, -2, 829, 842),
(850, -2, 830, 843),
(851, -2, 831, 839),
(852, -2, 832, 838),
(853, -2, 833, 841),
(854, -2, 834, 837);
-- npc_sayge
-- UPDATE creature_template SET ScriptName='' WHERE entry=14822;
DELETE FROM conditions WHERE condition_entry IN (855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870);
INSERT INTO conditions (condition_entry, TYPE, value1, value2) VALUES
(855, 1, 23768, 0),
(856, 1, 23769, 0),
(857, 1, 23767, 0),
(858, 1, 23738, 0),
(859, 1, 23766, 0),
(860, 1, 23737, 0),
(861, 1, 23736, 0),
(862, 1, 23735, 0),
(863, -2, 855, 856),
(864, -2, 857, 858),
(865, -2, 859, 860),
(866, -2, 861, 862),
(867, -2, 863, 864),
(868, -2, 865, 866),
(869, -2, 867, 868),
(870, -3, 869, 0);
