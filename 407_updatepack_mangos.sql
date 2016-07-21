-- Updatepack_407

-- --------------------------------------------------
-- NEW GAMEOBJECTS SPAWNS
-- --------------------------------------------------

-- Hellfire Fire - wrong object used (sniffed one added in 407)
DELETE FROM gameobject WHERE guid IN (24681,24682);

-- --------------------------------------------------
-- NEW CREATURE SPAWNS
-- --------------------------------------------------

-- Grz3s
-- Vilewing Chimaera - duplicates
DELETE FROM creature WHERE guid IN (84613,84609,84610,84488,84629,84632);
-- Coilskar Assassin - spawned only during Escort quest =10451
DELETE FROM creature WHERE guid IN (86811,86809,86810,86812,86814,86815,86816,86813,86817,86818,86824,86825,86823,86822,86821,86819,86820);
-- Captured water Spirit - duplicates
DELETE FROM creature WHERE guid IN (86802,86803,86804,86805);
-- Kor'Kron Wyvern Rider - duplicates
DELETE FROM creature WHERE guid IN (74221,74219);
-- Wrathstalker - should be spawned only during event
DELETE FROM creature WHERE guid IN (90923,90924,90925,90926,90927);
-- Priestess Tyriona -- spawned(morphed) by quest 434
DELETE FROM creature WHERE guid = 43690;
-- Marzon the Silent Blade -- spawned for quest 434
DELETE FROM creature WHERE guid = 10504;
-- Stair of Destiny - duplicates
DELETE FROM creature WHERE guid IN (68023,68020,86067,86066,86068,86069);
DELETE FROM creature_addon WHERE guid IN (68023,68020);
-- Dragonmaw Elite - theyre part of event not static spawns (86097 - has waypoints .. pls remove them)
DELETE FROM creature WHERE guid IN (86085,86086,86087,86088,86089,86093,86094,86095,86096,86097,86098);
-- Nethermine Burster - duplicate
DELETE FROM creature WHERE guid = 52032;
-- (crazed)/Murkblood Miner - shouldnt be there - correct ones added for 407
DELETE FROM creature WHERE guid IN (52015,52016,52017,52018,52020,52021,52030,52031);
-- infernals should be summoned by event 12353 
DELETE FROM creature WHERE guid IN (68002,68003,68004,68006,68007,68008);
-- goblin commoner -- duplicates
DELETE FROM creature WHERE guid IN (91117,91118,91750,91751);
-- Blackwind Sabercat - Terrokar Forest -- DUPLICATES
DELETE FROM creature WHERE guid IN (75894,75896,75898);
-- Death Knight initiate 
DELETE FROM creature WHERE guid = 129451;
-- Double Spawns - Lady Palanseer <Jewelcrafting Quartermaster> -- from Axel
DELETE FROM creature WHERE guid = 125692;
DELETE FROM creature_addon WHERE guid = 125692;

-- Xfurry
-- Delete Sapphiron (summoned by script)
DELETE FROM creature WHERE guid = 133932;
-- AQ40: delete the extra summoned bugs
DELETE FROM creature WHERE guid BETWEEN 87530 AND 87543;
-- Summoned mobs
DELETE FROM creature WHERE id IN (30141,30143,30145,31884);
-- summoned
DELETE FROM creature WHERE guid IN (120880, 120881, 120903, 120883, 120905, 120882, 120884, 120907, 120904, 120906);
DELETE FROM creature WHERE guid IN (
10504, 43690, 52015, 52020, 52030, 68002, 68006, 68020, 68023, 74219, 74221,
75894, 75896, 75898, 78965, 84488, 84609, 84613, 84629, 84632, 86066, 86085, 
86093, 86802, 86809, 86995, 87006, 87013, 87015, 87512, 87530, 90871, 90923, 
91117, 91750, 101331, 108877, 117311, 120880, 120903, 123103, 123108, 124444, 
133355, 133486, 133493, 133525, 133585, 133640, 133649, 133801, 133917, 133932,
133966, 134657, 134660, 134664, 134669, 136254, 136471, 136555, 36558, 136576, 
136768, 136924, 137599, 138914, 151032, 151495);
DELETE FROM creature_addon WHERE guid IN (
10504, 43690, 52015, 52020, 52030, 68002, 68006, 68020, 68023, 74219, 74221,
75894, 75896, 75898, 78965, 84488, 84609, 84613, 84629, 84632, 86066, 86085, 
86093, 86802, 86809, 86995, 87006, 87013, 87015, 87512, 87530, 90871, 90923, 
91117, 91750, 101331, 108877, 117311, 120880, 120903, 123103, 123108, 124444, 
133355, 133486, 133493, 133525, 133585, 133640, 133649, 133801, 133917, 133932,
133966, 134657, 134660, 134664, 134669, 136254, 136471, 136555, 36558, 136576, 
136768, 136924, 137599, 138914, 151032, 151495);
DELETE FROM creature_movement WHERE id IN (
10504, 43690, 52015, 52020, 52030, 68002, 68006, 68020, 68023, 74219, 74221,
75894, 75896, 75898, 78965, 84488, 84609, 84613, 84629, 84632, 86066, 86085, 
86093, 86802, 86809, 86995, 87006, 87013, 87015, 87512, 87530, 90871, 90923, 
91117, 91750, 101331, 108877, 117311, 120880, 120903, 123103, 123108, 124444, 
133355, 133486, 133493, 133525, 133585, 133640, 133649, 133801, 133917, 133932,
133966, 134657, 134660, 134664, 134669, 136254, 136471, 136555, 36558, 136576, 
136768, 136924, 137599, 138914, 151032, 151495);
 

-- ------------------
-- NPC single spawn
-- ------------------

-- Grz3s
-- Reusing  all removed and empty guids; 
DELETE FROM creature WHERE guid IN 
(871, 10504, 29498, 30141, 30143, 30145, 30169, 30175, 31884, 32885, 32908, 32933, 32934, 32938, 32941, 32946, 32948,
32950, 33067, 33167, 33218, 34144, 34145, 36558, 43690, 52015, 52016, 52017, 52018, 52020, 52021, 52030, 52031, 52032,
68002, 68003, 68004, 68006, 68007, 68008, 68020, 68023, 74219, 74221, 75894, 75896, 75898, 84488, 84609, 84610, 84613,
84629, 84632, 86066, 86067, 86068, 86069, 86086, 86087, 86088, 86089, 86093, 86094, 86095, 86096, 86097, 86098, 86099,
86802, 86803, 86804, 86805, 86809, 86810, 86811, 86812, 86813, 86814, 86815, 86816, 86817, 86818, 86819, 86820, 86821,
86822, 86823, 86824, 86825, 86995, 86996, 86997, 86998, 86999, 87000, 87001, 87002, 87003, 87004, 87013, 87015, 87512,
87513, 87514, 87515, 87516, 87517, 87518, 87519, 87520, 87521, 87522, 87523, 87524, 87525, 87526, 87530, 87531, 87532,
87533, 87534, 87535, 87536, 87537, 87538, 87539, 87540, 87541, 87542, 87543, 90871, 90923, 90924, 90925, 90926, 90927,
91117, 91118, 91750, 91751, 101331, 108877, 117311, 120880, 120881, 120882, 120883, 120884, 120903, 120904, 120905,
120907, 123103, 123108, 124444, 129451, 133355, 133486, 133493, 133525, 133585, 133640, 133649, 133801, 133917, 133932,
133966, 134657, 134660, 134664, 134669, 136254, 136471, 136555, 136576, 136768, 136924, 137599);
DELETE FROM creature_addon WHERE guid IN 
(871, 10504, 29498, 30141, 30143, 30145, 30169, 30175, 31884, 32885, 32908, 32933, 32934, 32938, 32941, 32946, 32948,
32950, 33067, 33167, 33218, 34144, 34145, 36558, 43690, 52015, 52016, 52017, 52018, 52020, 52021, 52030, 52031, 52032,
68002, 68003, 68004, 68006, 68007, 68008, 68020, 68023, 74219, 74221, 75894, 75896, 75898, 84488, 84609, 84610, 84613,
84629, 84632, 86066, 86067, 86068, 86069, 86086, 86087, 86088, 86089, 86093, 86094, 86095, 86096, 86097, 86098, 86099,
86802, 86803, 86804, 86805, 86809, 86810, 86811, 86812, 86813, 86814, 86815, 86816, 86817, 86818, 86819, 86820, 86821,
86822, 86823, 86824, 86825, 86995, 86996, 86997, 86998, 86999, 87000, 87001, 87002, 87003, 87004, 87013, 87015, 87512,
87513, 87514, 87515, 87516, 87517, 87518, 87519, 87520, 87521, 87522, 87523, 87524, 87525, 87526, 87530, 87531, 87532,
87533, 87534, 87535, 87536, 87537, 87538, 87539, 87540, 87541, 87542, 87543, 90871, 90923, 90924, 90925, 90926, 90927,
91117, 91118, 91750, 91751, 101331, 108877, 117311, 120880, 120881, 120882, 120883, 120884, 120903, 120904, 120905,
120907, 123103, 123108, 124444, 129451, 133355, 133486, 133493, 133525, 133585, 133640, 133649, 133801, 133917, 133932,
133966, 134657, 134660, 134664, 134669, 136254, 136471, 136555, 136576, 136768, 136924, 137599);
DELETE FROM creature_movement WHERE id IN 
(871, 10504, 29498, 30141, 30143, 30145, 30169, 30175, 31884, 32885, 32908, 32933, 32934, 32938, 32941, 32946, 32948,
32950, 33067, 33167, 33218, 34144, 34145, 36558, 43690, 52015, 52016, 52017, 52018, 52020, 52021, 52030, 52031, 52032,
68002, 68003, 68004, 68006, 68007, 68008, 68020, 68023, 74219, 74221, 75894, 75896, 75898, 84488, 84609, 84610, 84613,
84629, 84632, 86066, 86067, 86068, 86069, 86086, 86087, 86088, 86089, 86093, 86094, 86095, 86096, 86097, 86098, 86099,
86802, 86803, 86804, 86805, 86809, 86810, 86811, 86812, 86813, 86814, 86815, 86816, 86817, 86818, 86819, 86820, 86821,
86822, 86823, 86824, 86825, 86995, 86996, 86997, 86998, 86999, 87000, 87001, 87002, 87003, 87004, 87013, 87015, 87512,
87513, 87514, 87515, 87516, 87517, 87518, 87519, 87520, 87521, 87522, 87523, 87524, 87525, 87526, 87530, 87531, 87532,
87533, 87534, 87535, 87536, 87537, 87538, 87539, 87540, 87541, 87542, 87543, 90871, 90923, 90924, 90925, 90926, 90927,
91117, 91118, 91750, 91751, 101331, 108877, 117311, 120880, 120881, 120882, 120883, 120884, 120903, 120904, 120905,
120907, 123103, 123108, 124444, 129451, 133355, 133486, 133493, 133525, 133585, 133640, 133649, 133801, 133917, 133932,
133966, 134657, 134660, 134664, 134669, 136254, 136471, 136555, 136576, 136768, 136924, 137599);
DELETE FROM creature WHERE guid BETWEEN 140418 AND 140622; 
DELETE FROM creature_addon WHERE guid BETWEEN 140418 AND 140622;
DELETE FROM creature_movement WHERE id BETWEEN 140418 AND 140622;
-- also
DELETE FROM creature WHERE guid BETWEEN 140775 AND 140779;
DELETE FROM creature_addon WHERE guid BETWEEN 140775 AND 140779;
DELETE FROM creature_movement WHERE id BETWEEN 140775 AND 140779;

-- STARTING @ -Devildog4355

-- ------------------
-- NPC w/ script, waypoint, pool or game event
-- ------------------
-- clean up
DELETE FROM creature WHERE guid BETWEEN 140623 AND 140771;
DELETE FROM creature_addon WHERE guid BETWEEN 140623 AND 140774;
DELETE FROM creature_movement WHERE id BETWEEN 140623 AND 140774;
DELETE FROM creature_linking WHERE guid BETWEEN 140623 AND 140774;






-- Wretched Captive c.16916 and Sergeant Kan'ren c.16924 -- update (2 duplicated scripts found)
-- Wretched Captive
UPDATE creature SET MovementType = 0 WHERE guid = 58691;
DELETE FROM creature_movement WHERE id = 58691; 
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1691601,1691602);
-- Sergeant Kan'ren
UPDATE creature_template SET MovementType = 2 WHERE entry = 16924;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 58702;
DELETE FROM creature_movement_template WHERE entry = 16924;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(16924,1,9512.21,-6840.16,16.4934,40000,1692401,0,0,0,0,0,0,0,0,1.0472,0,0),
(16924,2,9512.21,-6840.16,16.4934,30000,1692402,0,0,0,0,0,0,0,0,1.0472,0,0),
(16924,3,9512.21,-6840.16,16.4934,40000,1692401,0,0,0,0,0,0,0,0,1.0472,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1692401,1692402); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1692401,0,31,16916,20,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(1692401,1,1,20,0,16916,58691,7 | 0x10,0,0,0,0,0,0,0,0,''),
(1692401,18,1,20,0,16916,58691,7 | 0x10,0,0,0,0,0,0,0,0,''),
(1692401,35,1,20,0,16916,58691,7 | 0x10,0,0,0,0,0,0,0,0,''),
(1692402,0,31,16916,20,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(1692402,2,1,20,0,16916,58691,7 | 0x10,0,0,0,0,0,0,0,0,''),
(1692402,10,0,0,0,0,0,0,2000005689,0,0,0,0,0,0,0,''),
(1692402,16,0,0,0,16916,58691,7 | 0x10,2000005036,0,0,0,0,0,0,0,'force buddy to: say text'),
(1692402,23,0,0,0,0,0,0,2000005690,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry = 2000005038; -- duplicate removed
DELETE FROM db_script_string WHERE entry IN (2000005689,2000005690);
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005689,'Tell us!  Where does your leader hide?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005690,'You\'re not getting anything until you speak, scum!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,274,NULL);
-- Sleyin <Weapon Vendor> c.18926
UPDATE creature_movement SET script_id = 1892601, textid1 = 0 WHERE id = 67954 AND point = 2;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1892601; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1892601,1,0,0,0,0,0,0,2000005045,0,0,0,0,0,0,0,'');
-- Novice Ranger c.16923
DELETE FROM creature_movement WHERE id = 58701;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(58701,1,9520.85,-6858.46,18.6936,120000,0,0,0,0,0,0,0,0,0,5.39307,0,0),
(58701,2,9520.85,-6858.46,18.6936,60000,1692301,0,0,0,0,0,0,0,0,5.39307,0,0),
(58701,3,9520.85,-6858.46,18.6936,120000,0,0,0,0,0,0,0,0,0,5.39307,0,0),
(58701,4,9520.85,-6858.46,18.6936,120000,0,0,0,0,0,0,0,0,0,5.39307,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1692301; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1692301,1,0,0,0,0,0,0,2000005037,0,0,0,0,0,0,0,'');
-- Draaca Longtail c.22396
UPDATE creature_movement SET  emote = 0 WHERE id = 78731 AND point = 5;
-- Gava'xi c.18298
UPDATE creature_movement SET  emote = 0 WHERE id = 86608 AND point = 13;
-- Disidra Stormglory c.32718
UPDATE creature_movement SET script_id = 3271801, emote = 0 WHERE id = 115281 AND point = 13;
DELETE FROM dbscripts_on_creature_movement WHERE id = 3271801; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3271801,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Boulder'mok Brute#1 c.21046
DELETE FROM creature_movement WHERE id = 73897;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(73897,1,3603.23,7137.36,140.446,0,0,0,0,0,0,0,0,0,0,3.86289,0,0),
(73897,2,3588.73,7122.47,140.446,0,0,0,0,0,0,0,0,0,0,4.04354,0,0),
(73897,3,3588.73,7122.47,140.446,5000,0,0,0,0,0,0,0,0,0,4.04354,0,0),
(73897,4,3588.73,7122.47,140.446,18000,2104603,0,0,0,0,0,0,0,0,4.04354,0,0),
(73897,5,3606.15,7137.2,140.446,0,0,0,0,0,0,0,0,0,0,5.71958,0,0),
(73897,6,3609.74,7136.49,140.571,30000,2104604,0,0,0,0,0,0,0,0,6.00902,0,0),
(73897,7,3609.74,7136.49,140.571,3000,0,0,0,0,0,0,0,0,0,6.00902,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2104603,2104605); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2104603,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2104603,4,1,10,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2104603,13,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2104603,14,1,11,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2104604,2,1,233,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2104604,29,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2104605,1,1,3,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2104605,6,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2104605,16,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Boulder'mok Brute#2 c.21046
DELETE FROM creature_movement WHERE id = 73904;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(73904,1,3603.66,7196.44,138.701,0,0,0,0,0,0,0,0,0,0,2.93142,0,0),
(73904,2,3595.64,7197.24,138.323,55000,2104701,0,0,0,0,0,0,0,0,2.92906,0,0),
(73904,3,3604.57,7197.61,138.72,0,0,0,0,0,0,0,0,0,0,0.288551,0,0),
(73904,4,3612.32,7202.37,138.364,0,0,0,0,0,0,0,0,0,0,0.889381,0,0),
(73904,5,3616.86,7210.92,137.031,25000,2104605,0,0,0,0,0,0,0,0,0.887025,0,0);
-- Dread Crew#1 c.28052
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 86277 AND point = 1;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 86277 AND point = 3;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 86277 AND point = 5;
UPDATE creature_movement SET script_id = 2805203, emote = 0 WHERE id = 86277 AND point = 6;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 86277 AND point = 7;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 86277 AND point = 9;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 86277 AND point = 11;
UPDATE creature_movement SET script_id = 2805205, spell = 0 WHERE id = 86277 AND point = 12;
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2805201 AND 2805205; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2805201,1,1,10,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2805201,11,1,10,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2805202,1,1,7,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2805203,1,1,4,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2805204,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2805204,5,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2805205,1,15,11544,0,0,0,0,0,0,0,0,0,0,0,0,'cast 11544');
-- Dread Crew#2 c.28052
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 77646 AND point = 2;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 77646 AND point = 4;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 77646 AND point = 5;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 77646 AND point = 7;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 77646 AND point = 8;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 77646 AND point = 9;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 77646 AND point = 11;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 77646 AND point = 13;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 77646 AND point = 15;
-- Dread Crew#3 c.28052 
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 43212 AND point = 1;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 43212 AND point = 2;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 43212 AND point = 3;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 43212 AND point = 4;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 43212 AND point = 5;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 43212 AND point = 7;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 43212 AND point = 9;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 43212 AND point = 11;
-- Dread Crew#4 c.28052  
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 86278 AND point = 2;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 86278 AND point = 4;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 86278 AND point = 6;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 86278 AND point = 8;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 86278 AND point = 9;
UPDATE creature_movement SET script_id = 2805203, emote = 0 WHERE id = 86278 AND point = 10;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 86278 AND point = 11;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 86278 AND point = 12;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 86278 AND point = 13;
-- Dread Crew#5 c.28052 
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 16402 AND point = 1;
UPDATE creature_movement SET script_id = 2805203, emote = 0 WHERE id = 16402 AND point = 3;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 16402 AND point = 4;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 16402 AND point = 5;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 16402 AND point = 6;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 16402 AND point = 8;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 16402 AND point = 10;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 16402 AND point = 11;
-- Dread Crew#6 c.28052
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 100431 AND point = 1;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 100431 AND point = 3;
UPDATE creature_movement SET script_id = 2805203, emote = 0 WHERE id = 100431 AND point = 5;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 100431 AND point = 7;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 100431 AND point = 8;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 100431 AND point = 10;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 100431 AND point = 12;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 100431 AND point = 13;
-- Dread Crew#7 c.28052
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 86869 AND point = 1;
UPDATE creature_movement SET script_id = 2805203, emote = 0 WHERE id = 86869 AND point = 2;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 86869 AND point = 3;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 86869 AND point = 5;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 86869 AND point = 7;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 86869 AND point = 8;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 86869 AND point = 9;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 86869 AND point = 10;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 86869 AND point = 11;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 86869 AND point = 12;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 86869 AND point = 13;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 86869 AND point = 14;
-- Dread Crew#8 c.28052
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 100084 AND point = 1;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 100084 AND point = 2;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 100084 AND point = 3;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 100084 AND point = 5;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 100084 AND point = 7;
UPDATE creature_movement SET script_id = 2805203, emote = 0 WHERE id = 100084 AND point = 8;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 100084 AND point = 9;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 100084 AND point = 10;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 100084 AND point = 11;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 100084 AND point = 12;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 100084 AND point = 13;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 100084 AND point = 14;
-- Dread Crew#9 c.28052
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 97346 AND point = 1;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 97346 AND point = 3;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 97346 AND point = 5;
UPDATE creature_movement SET script_id = 2805205, spell = 0 WHERE id = 97346 AND point = 6;
UPDATE creature_movement SET script_id = 2805203, emote = 0 WHERE id = 97346 AND point = 7;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 97346 AND point = 8;
UPDATE creature_movement SET script_id = 2805203, emote = 0 WHERE id = 97346 AND point = 9;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 97346 AND point = 10;
UPDATE creature_movement SET script_id = 2805205, spell = 0 WHERE id = 97346 AND point = 11;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 97346 AND point = 12;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 97346 AND point = 13;
-- Dread Crew#10 c.28052
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 105593 AND point = 1;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 105593 AND point = 3;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 105593 AND point = 5;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 105593 AND point = 7;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 105593 AND point = 9;
UPDATE creature_movement SET script_id = 2805203, emote = 0 WHERE id = 105593 AND point = 10;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 105593 AND point = 12;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 105593 AND point = 14;
UPDATE creature_movement SET script_id = 2805203, emote = 0 WHERE id = 105593 AND point = 15;
-- Dread Crew#11 c.28052 
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 105582 AND point = 1;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 105582 AND point = 3;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 105582 AND point = 5;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 105582 AND point = 7;
UPDATE creature_movement SET script_id = 2805203, emote = 0 WHERE id = 105582 AND point = 8;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 105582 AND point = 9;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 105582 AND point = 11;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 105582 AND point = 12;
-- Dread Crew#12 c.28052 
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 70165 AND point = 3;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 70165 AND point = 5;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 70165 AND point = 7;
UPDATE creature_movement SET script_id = 2805203, emote = 0 WHERE id = 70165 AND point = 9;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 70165 AND point = 11;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 70165 AND point = 13;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 70165 AND point = 14;
-- Dread Crew#13 c.28052 
UPDATE creature_movement SET script_id = 2805203, emote = 0 WHERE id = 84498 AND point = 3;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 84498 AND point = 5;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 84498 AND point = 10;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 84498 AND point = 12;
-- Dread Crew#14 c.28052
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 78933 AND point = 2;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 78933 AND point = 6;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 78933 AND point = 8;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 78933 AND point = 11;
-- Dread Crew#15 c.28052
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 102309 AND point = 2;
UPDATE creature_movement SET script_id = 2805203, emote = 0 WHERE id = 102309 AND point = 4;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 102309 AND point = 8;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 102309 AND point = 11;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 102309 AND point = 13;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 102309 AND point = 16;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 102309 AND point = 18;
-- Dread Crew#16 c.28052
UPDATE creature_movement SET script_id = 2805203, emote = 0 WHERE id = 93838 AND point = 3;
-- Dread Crew#17 c.28052
UPDATE creature_movement SET script_id = 2805203, emote = 0 WHERE id = 77647 AND point = 3;
-- Dread Crew#18 c.28052
UPDATE creature_movement SET script_id = 2805203, emote = 0 WHERE id = 105579 AND point = 3;
-- Engineer Kurtis Paddock <The Assurance> c.29288 -- req. new emote command 11/2013
DELETE FROM creature_movement WHERE id = 49580;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(49580,1,-8419.88,1298.12,20.9113,10000,0,0,0,0,0,0,0,0,0,4.7032,0,0),
(49580,2,-8419.88,1298.12,20.9113,2000,2928801,0,0,0,0,0,0,0,0,4.7032,0,0),
(49580,3,-8419.88,1298.12,20.9113,6000,0,0,0,0,0,0,0,0,0,4.7032,0,0),
(49580,4,-8419.88,1298.12,20.9113,2000,2928801,0,0,0,0,0,0,0,0,4.7032,0,0),
(49580,5,-8419.88,1298.12,20.9113,6000,0,0,0,0,0,0,0,0,0,4.7032,0,0),
(49580,6,-8419.88,1298.12,20.9113,2000,2928801,0,0,0,0,0,0,0,0,4.7032,0,0),
(49580,7,-8419.88,1298.12,20.9113,6000,0,0,0,0,0,0,0,0,0,4.7032,0,0),
(49580,8,-8425.25,1300.45,20.8698,0,0,0,0,0,0,0,0,0,0,1.5129,0,0),
(49580,9,-8425.68,1310.2,11.3676,15000,0,0,0,0,0,0,0,0,0,1.6205,0,0),
(49580,10,-8423.6,1315.14,11.2577,0,0,0,0,0,0,0,0,0,0,0.970193,0,0),
(49580,11,-8421.38,1318.37,11.2047,3000,0,0,0,0,0,0,0,0,0,0.960767,0,0),
(49580,12,-8421.38,1318.37,11.2047,4000,2928801,0,0,0,0,0,0,0,0,0.960767,0,0),
(49580,13,-8422.7,1318.96,11.1473,0,0,0,0,0,0,0,0,0,0,3.68126,0,0),
(49580,14,-8425.77,1310.05,11.373,0,0,0,0,0,0,0,0,0,0,4.73213,0,0),
(49580,15,-8425.42,1300.53,20.8331,0,0,0,0,0,0,0,0,0,0,6.05788,0,0),
(49580,16,-8419.91,1298.8,20.9113,0,0,0,0,0,0,0,0,0,0,4.67636,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2928801; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2928801,1,1,1,0,0,0,0,6,274,273,0,0,0,0,0,'');
-- Orland Schaeffer <Blacksmithing Trainer> c.29506
DELETE FROM creature_movement WHERE id = 102071;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(102071,1,5910.67,679.581,643.497,0,0,0,0,0,0,0,0,0,0,2.46859,0,0),
(102071,2,5910.67,679.581,643.497,90000,2950601,0,0,0,0,0,0,0,0,2.46859,0,0),
(102071,3,5912.5,682.377,643.497,90000,2950602,0,0,0,0,0,0,0,0,1.10659,0,0),
(102071,4,5911.21,679.712,643.497,0,0,0,0,0,0,0,0,0,0,0,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2950601,2950602); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2950601,1,1,233,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2950601,85,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2950602,1,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2950602,85,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Moon Priestess Nici c.32714
UPDATE creature_movement SET script_id = 3271401, emote = 0 WHERE id = 114933 AND point = 51;
DELETE FROM dbscripts_on_creature_movement WHERE id = 3271401; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3271401,2,1,415,0,0,0,0,0,0,0,0,0,0,0,0,''),
(3271401,22,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Sorrow c.32715
UPDATE creature_movement SET script_id = 3271501, emote = 0 WHERE id = 114952 AND point = 5;
UPDATE creature_movement SET script_id = 3271502, emote = 0 WHERE id = 114952 AND point = 14;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3271501,3271502); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3271501,2,1,415,0,0,0,0,0,0,0,0,0,0,0,0,''),
(3271501,22,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(3271502,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Mendez Nightshadow c.32747
UPDATE creature_movement SET script_id = 3274701, emote = 0 WHERE id = 118176 AND point = 6;
DELETE FROM dbscripts_on_creature_movement WHERE id = 3274701; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3274701,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Amera Sky c.32745
UPDATE creature_movement SET script_id = 3274501, emote = 0 WHERE id = 117938 AND point = 7;
UPDATE creature_movement SET script_id = 3274501, emote = 0 WHERE id = 117938 AND point = 20;
DELETE FROM dbscripts_on_creature_movement WHERE id = 3274501; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3274501,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Galkara the Assassin c.32425
UPDATE creature_movement SET script_id = 3242501, emote = 0 WHERE id = 111937 AND point = 8;
UPDATE creature_movement SET script_id = 3242502, emote = 0 WHERE id = 111937 AND point = 11;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3242501,3242502); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3242501,2,1,415,0,0,0,0,0,0,0,0,0,0,0,0,''),
(3242501,22,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(3242502,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Saedelin Whitedawn c.32706
UPDATE creature_movement SET script_id = 3270601, emote = 0 WHERE id = 114292 AND point = 28;
DELETE FROM dbscripts_on_creature_movement WHERE id = 3270601; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3270601,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Warp-Huntress Kula c.32711
UPDATE creature_movement SET script_id = 3271101, emote = 0 WHERE id = 114764 AND point = 13;
UPDATE creature_movement SET script_id = 3271101, emote = 0 WHERE id = 114764 AND point = 44;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3271101,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Susana Averoy <General Goods> c.28691
UPDATE creature_movement SET waittime = 20000, script_id = 2869101, emote = 0 WHERE id = 97931 AND point = 8;
UPDATE creature_movement SET waittime = 20000, script_id = 2869101, emote = 0 WHERE id = 97931 AND point = 12;
UPDATE creature_movement SET waittime = 20000, script_id = 2869102, emote = 0 WHERE id = 97931 AND point = 16;
UPDATE creature_movement SET waittime = 20000, script_id = 2869102, emote = 0 WHERE id = 97931 AND point = 17;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2869101,2869102); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2869101,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2869101,17,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2869102,3,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(2869102,17,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND');
-- Josie Birch c.29640
DELETE FROM creature_movement WHERE id = 114781;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(114781,1,5861.59,751.648,640.596,50000,0,0,0,0,0,0,0,0,0,5.07891,0,0),
(114781,2,5861.59,751.648,640.596,20000,2964001,0,0,0,0,0,0,0,0,5.07891,0,0),
(114781,3,5863.3,748.935,640.581,20000,2964002,0,0,0,0,0,0,0,0,5.4413,0,0),
(114781,4,5861.59,751.648,640.596,50000,0,0,0,0,0,0,0,0,0,5.07891,0,0),
(114781,5,5864.05,747.998,640.577,0,0,0,0,0,0,0,0,0,0,5.07891,0,0),
(114781,6,5864.05,747.998,640.577,20000,2964001,0,0,0,0,0,0,746,0,5.07891,0,0),
(114781,7,5861.59,751.648,640.596,0,0,0,0,0,0,0,0,0,0,5.07891,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2964001,2964002); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2964001,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0.485437,''),
(2964001,8,15,746,0,32651,10,0x01,0,0,0,0,0,0,0,0,'cast 746 on buddy'),
(2964001,17,3,0,0,0,0,0,0,0,0,0,0,0,0,5.07891,''),
(2964002,3,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(2964002,17,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND');
-- Olisarra the Kind <First Aid Trainer> c.28706
UPDATE creature_movement SET script_id = 2870601, emote = 0 WHERE id = 99029 AND point = 3;
UPDATE creature_movement SET script_id = 2870602, emote = 0 WHERE id = 99029 AND point = 7;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2870601,2870602); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2870601,3,15,746,0,32651,10,0x01,0,0,0,0,0,0,0,0,'cast 746 on buddy'),
(2870602,3,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Drillmaster Zurok c.19312
UPDATE creature_movement SET script_id = 1931201, emote = 0 WHERE id = 68898 AND point = 2;
UPDATE creature_movement SET script_id = 1931201, emote = 0 WHERE id = 68898 AND point = 4;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1931201; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1931201,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Bladespire Brute c.19995
UPDATE creature_movement SET script_id = 1999501, emote = 0 WHERE id = 71405 AND point = 14;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1999501; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1999501,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Thulrin c.25239
UPDATE creature_movement SET script_id = 2523901, emote = 0 WHERE id = 110115 AND point = 2;
UPDATE creature_movement SET waittime = 5000, script_id = 2523902, emote = 0 WHERE id = 110115 AND point = 6;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2523901,2523902); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2523901,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2523901,18,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2523902,1,1,381,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2523902,4,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Valiance Keep Worker#1 c.25271
DELETE FROM creature_movement WHERE id = 113252;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(113252,1,2359.92,5242.06,7.75584,0,0,0,0,0,0,0,0,0,0,3.49751,0,0),
(113252,2,2356.98,5242.16,7.78924,0,0,0,0,0,0,0,0,0,0,2.3697,0,0),
(113252,3,2352.26,5247.09,7.78171,0,0,0,0,0,0,0,0,0,0,1.32512,0,0),
(113252,4,2353.28,5251.16,7.68238,0,0,0,0,0,0,0,0,0,0,0.359081,0,0),
(113252,5,2362.99,5254.59,7.55464,0,0,0,0,0,0,0,0,0,0,6.17103,0,0),
(113252,6,2371.43,5253.99,7.55195,0,0,0,0,0,0,0,0,0,0,0.245197,0,0),
(113252,7,2382.37,5257.24,3.44619,0,0,0,0,0,0,0,0,0,0,0.288394,0,0),
(113252,8,2385.28,5258.1,3.29655,0,0,0,0,0,0,0,0,0,0,6.03358,0,0),
(113252,9,2392.52,5256.32,3.29372,0,0,0,0,0,0,0,0,0,0,4.95759,0,0),
(113252,10,2395.44,5246.34,3.2908,0,0,0,0,0,0,0,0,0,0,4.78088,0,0),
(113252,11,2396.6,5225.96,3.29162,0,0,0,0,0,0,0,0,0,0,4.44708,0,0),
(113252,12,2391.4,5208.38,3.29162,0,0,0,0,0,0,0,0,0,0,2.95482,0,0),
(113252,13,2388.96,5208.91,3.29162,50000,2527101,0,0,0,0,0,0,0,0,2.93126,0,0),
(113252,14,2391.4,5208.38,3.29162,0,0,0,0,0,0,0,0,0,0,1.26229,0,0),
(113252,15,2396.6,5225.96,3.29162,0,0,0,0,0,0,0,0,0,0,1.47435,0,0),
(113252,16,2395.44,5246.34,3.2908,0,0,0,0,0,0,0,0,0,0,1.94952,0,0),
(113252,17,2392.52,5256.32,3.29372,0,0,0,0,0,0,0,0,0,0,2.72313,0,0),
(113252,18,2385.28,5258.1,3.29655,0,0,0,0,0,0,0,0,0,0,3.48104,0,0),
(113252,19,2382.37,5257.24,3.44619,0,0,0,0,0,0,0,0,0,0,3.48104,0,0),
(113252,20,2371.43,5253.99,7.55195,0,0,0,0,0,0,0,0,0,0,3.01373,0,0),
(113252,21,2362.99,5254.59,7.55464,0,0,0,0,0,0,0,0,0,0,3.48104,0,0),
(113252,22,2353.28,5251.16,7.68238,0,0,0,0,0,0,0,0,0,0,4.30964,0,0),
(113252,23,2352.26,5247.09,7.78171,0,0,0,0,0,0,0,0,0,0,4.91832,0,0),
(113252,24,2356.98,5242.16,7.78924,0,0,0,0,0,0,0,0,0,0,6.04536,0,0),
(113252,25,2359.92,5242.06,7.75584,0,0,0,0,0,0,0,0,0,0,5.73513,0,0),
(113252,26,2365.84,5237.83,7.63421,50000,2527101,0,0,0,0,0,0,0,0,5.63419,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2527101,2527102); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2527101,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2527101,45,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2527102,3,1,381,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2527102,13,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Valiance Keep Worker#2 c.25271
DELETE FROM creature_movement WHERE id = 113251;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(113251,1,2355.3,5266.33,7.75584,0,0,0,0,0,0,0,0,0,0,3.34973,0,0),
(113251,2,2346.46,5262.42,7.54849,0,0,0,0,0,0,0,0,0,0,4.72418,0,0),
(113251,3,2346.98,5256.03,7.61863,0,0,0,0,0,0,0,0,0,0,5.34856,0,0),
(113251,4,2352.05,5249.76,7.68733,0,0,0,0,0,0,0,0,0,0,0.00392437,0,0),
(113251,5,2359.74,5249.94,7.63308,0,0,0,0,0,0,0,0,0,0,0.663659,0,0),
(113251,6,2370.4,5256.88,7.55221,0,0,0,0,0,0,0,0,0,0,0.314157,0,0),
(113251,7,2381.94,5260.98,3.29606,0,0,0,0,0,0,0,0,0,0,0.341645,0,0),
(113251,8,2386.12,5262.47,3.29606,0,0,0,0,0,0,0,0,0,0,6.11825,0,0),
(113251,9,2389.88,5261.6,3.29464,0,0,0,0,0,0,0,0,0,0,5.03441,0,0),
(113251,10,2394.54,5250.4,3.2911,0,0,0,0,0,0,0,0,0,0,3.44005,0,0),
(113251,11,2392.55,5249.76,3.2911,50000,2527101,0,0,0,0,0,0,0,0,4.44708,0,0),
(113251,12,2394.54,5250.4,3.2911,0,0,0,0,0,0,0,0,0,0,1.86533,0,0),
(113251,13,2389.88,5261.6,3.29464,0,0,0,0,0,0,0,0,0,0,5.03441,0,0),
(113251,14,2386.12,5262.47,3.29606,0,0,0,0,0,0,0,0,0,0,2389.88,0,0),
(113251,15,2381.94,5260.98,3.29606,0,0,0,0,0,0,0,0,0,0,2389.88,0,0),
(113251,16,2370.4,5256.88,7.55221,0,0,0,0,0,0,0,0,0,0,2389.88,0,0),
(113251,17,2359.74,5249.94,7.63308,0,0,0,0,0,0,0,0,0,0,2.61538,0,0),
(113251,18,2352.05,5249.76,7.68733,0,0,0,0,0,0,0,0,0,0,2.03812,0,0),
(113251,19,2346.98,5256.03,7.61863,0,0,0,0,0,0,0,0,0,0,5.34856,0,0),
(113251,20,2346.46,5262.42,7.54849,0,0,0,0,0,0,0,0,0,0,0.365217,0,0),
(113251,21,2355.3,5266.33,7.75584,0,0,0,0,0,0,0,0,0,0,0.365217,0,0),
(113251,22,2355.8,5266.07,7.63065,50000,2527101,0,0,0,0,0,0,0,0,0.345582,0,0);
-- Valiance Keep Worker#3 c.25271 
DELETE FROM creature_movement WHERE id = 113246;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(113246,1,2392.47,5208.15,3.29215,0,0,0,0,0,0,0,0,0,0,1.22915,0,0),
(113246,2,2394.35,5215.35,3.29215,0,0,0,0,0,0,0,0,0,0,3.31046,0,0),
(113246,3,2391.9,5214.93,3.29193,50000,2527101,0,0,0,0,0,0,0,0,3.31046,0,0),
(113246,4,2395.65,5218.93,3.29193,0,0,0,0,0,0,0,0,0,0,1.26057,0,0),
(113246,5,2399.95,5235.3,3.29193,0,0,0,0,0,0,0,0,0,0,1.80642,0,0),
(113246,6,2391.69,5262.17,3.29227,0,0,0,0,0,0,0,0,0,0,2.42296,0,0),
(113246,7,2385.13,5267.25,3.29366,15000,2527102,0,0,0,0,0,0,0,0,2.44259,0,0),
(113246,8,2386.8,5263.62,3.29366,0,0,0,0,0,0,0,0,0,0,5.48601,0,0),
(113246,9,2394.74,5256.05,3.29185,0,0,0,0,0,0,0,0,0,0,4.95979,0,0),
(113246,10,2398.14,5244.51,3.29187,0,0,0,0,0,0,0,0,0,0,4.78307,0,0),
(113246,11,2399.09,5231.12,3.29187,0,0,0,0,0,0,0,0,0,0,4.41786,0,0),
(113246,12,2390.35,5199.66,3.29187,0,0,0,0,0,0,0,0,0,0,3.81311,0,0),
(113246,13,2383.77,5194.42,3.29187,50000,2527101,0,0,0,0,0,0,0,0,3.81311,0,0);
-- Stormfleet Deckhand#1 c.25234
DELETE FROM creature_movement WHERE id = 109655;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(109655,1,2218.42,5252.38,11.285,0,0,0,0,0,0,0,0,0,0,0.113863,0,0),
(109655,2,2219.58,5252.42,11.3045,25000,2523401,0,0,0,0,0,0,0,0,0.0196153,0,0),
(109655,3,2213.76,5252.03,10.9358,0,0,0,0,0,0,0,0,0,0,2.70175,0,0),
(109655,4,2204.99,5256.12,10.5869,0,0,0,0,0,0,0,0,0,0,1.20557,0,0),
(109655,5,2218.15,5292.69,10.6677,0,0,0,0,0,0,0,0,0,0,6.10253,0,0),
(109655,6,2228.59,5290.69,10.9359,0,0,0,0,0,0,0,0,0,0,4.91265,0,0),
(109655,7,2232.49,5290.59,11.1649,0,0,0,0,0,0,0,0,0,0,1.15452,0,0),
(109655,8,2233.65,5293.95,11.4762,25000,2523401,0,0,0,0,0,0,0,0,1.15452,0,0),
(109655,9,2229.5,5285.8,11.2249,0,0,0,0,0,0,0,0,0,0,5.96115,0,0),
(109655,10,2230.39,5285.3,11.2421,0,0,0,0,0,0,0,0,0,0,6.00042,0,0),
(109655,11,2231.17,5285.25,11.2233,25000,2523401,0,0,0,0,0,0,0,0,5.96115,0,0),
(109655,12,2227.8,5291.05,10.9028,0,0,0,0,0,0,0,0,0,0,3.04733,0,0),
(109655,13,2218.2,5291.47,10.6833,0,0,0,0,0,0,0,0,0,0,4.33145,0,0),
(109655,14,2203.76,5255.4,10.5792,0,0,0,0,0,0,0,0,0,0,5.98079,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2523401,2523402,2523403,2523404); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2523401,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2523401,23,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2523402,3,1,22,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2523402,11,1,70,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2523402,17,1,6,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2523403,2,1,381,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2523403,8,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2523404,1,1,15,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Stormfleet Deckhand#2 c.25234 
DELETE FROM creature_movement WHERE id = 109652;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(109652,1,2224.21,5293.65,10.826,25000,2523401,0,0,0,0,0,0,0,0,0.596882,0,0),
(109652,2,2220.1,5288.88,10.7057,0,0,0,0,0,0,0,0,0,0,3.44395,0,0),
(109652,3,2215.09,5287.72,10.6693,0,0,0,0,0,0,0,0,0,0,4.28826,0,0),
(109652,4,2212.78,5282.25,10.8133,0,0,0,0,0,0,0,0,0,0,5.48206,0,0),
(109652,5,2216.76,5278.65,11.2862,0,0,0,0,0,0,0,0,0,0,5.54881,0,0),
(109652,6,2222.81,5272.7,7.223,0,0,0,0,0,0,0,0,0,0,5.50562,0,0),
(109652,7,2226.29,5269.28,7.16337,0,0,0,0,0,0,0,0,0,0,5.94937,0,0),
(109652,8,2234.01,5266.39,7.51529,0,0,0,0,0,0,0,0,0,0,5.92581,0,0),
(109652,9,2240.83,5263.85,11.7338,0,0,0,0,0,0,0,0,0,0,5.92581,0,0),
(109652,10,2244.76,5264.69,11.7113,0,0,0,0,0,0,0,0,0,0,5.90617,0,0),
(109652,11,2248.33,5263.27,11.7067,0,0,0,0,0,0,0,0,0,0,4.73593,0,0),
(109652,12,2248.44,5254.41,11.8997,0,0,0,0,0,0,0,0,0,0,4.51209,0,0),
(109652,13,2247.86,5252.43,11.9663,0,0,0,0,0,0,0,0,0,0,4.28433,0,0),
(109652,14,2244.16,5244.03,21.1326,20000,2523402,0,0,0,0,0,0,0,0,4.30003,0,0),
(109652,15,2248.1,5252.48,11.9583,0,0,0,0,0,0,0,0,0,0,1.46082,0,0),
(109652,16,2249.32,5258.77,11.7708,0,0,0,0,0,0,0,0,0,0,1.81032,0,0),
(109652,17,2248.44,5261.55,11.7411,0,0,0,0,0,0,0,0,0,0,2.91773,0,0),
(109652,18,2240.46,5263.34,11.7449,0,0,0,0,0,0,0,0,0,0,2.49362,0,0),
(109652,19,2234.27,5267.91,7.33371,0,0,0,0,0,0,0,0,0,0,2.86275,0,0),
(109652,20,2222.26,5271.09,7.20408,0,0,0,0,0,0,0,0,0,0,2.88239,0,0),
(109652,21,2214.66,5273.73,11.2626,0,0,0,0,0,0,0,0,0,0,2.14019,0,0),
(109652,22,2213.03,5275.86,10.8115,0,0,0,0,0,0,0,0,0,0,1.76712,0,0),
(109652,23,2212.12,5280.54,10.8101,0,0,0,0,0,0,0,0,0,0,1.20949,0,0),
(109652,24,2215.94,5289.2,10.6658,0,0,0,0,0,0,0,0,0,0,0.628296,0,0);
-- Stormfleet Deckhand#3 c.25234 -- correct wps added
DELETE FROM creature_movement WHERE id = 109653;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(109653,1,2265.7,5314.69,22.438,20000,2523402,0,0,0,0,0,0,0,0,5.80828,0,0),
(109653,2,2263.37,5305.24,23.3751,0,0,0,0,0,0,0,0,0,0,4.54772,0,0),
(109653,3,2263.2,5304.93,21.7024,0,0,0,0,0,0,0,0,0,0,4.61055,0,0),
(109653,4,2262.15,5292.59,19.5437,0,0,0,0,0,0,0,0,0,0,4.6616,0,0),
(109653,5,2261.66,5283.29,13.5761,0,0,0,0,0,0,0,0,0,0,4.34351,0,0),
(109653,6,2261.05,5282.67,12.0555,0,0,0,0,0,0,0,0,0,0,3.833,0,0),
(109653,7,2256.04,5279.16,11.8853,10000,2523403,0,0,0,0,0,0,0,0,3.71127,0,0),
(109653,8,2261.46,5281.99,12.0328,25000,2523401,0,0,0,0,0,0,0,0,1.40613,0,0),
(109653,9,2261.48,5282.81,12.8933,0,0,0,0,0,0,0,0,0,0,1.40613,0,0),
(109653,10,2261.58,5283.39,13.6079,0,0,0,0,0,0,0,0,0,0,1.40613,0,0),
(109653,11,2262.41,5305.47,21.7684,0,0,0,0,0,0,0,0,0,0,1.43166,0,0),
(109653,12,2262.51,5305.89,23.3759,0,0,0,0,0,0,0,0,0,0,1.33349,0,0);
-- Stormfleet Deckhand#4 c.25234 -- still got problem with mmaps
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 109654;
DELETE FROM creature_movement WHERE id = 109654;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(109654,1,2253.49,5252.67,35.7595,20000,2523402,0,0,0,0,0,0,0,0,5.86103,0,0),
(109654,2,2248.38,5255.54,35.9361,0,0,0,0,0,0,0,0,0,0,2.66132,0,0),
(109654,3,2245.05,5257.85,36.238,0,0,0,0,0,0,0,0,0,0,2.72337,0,0),
(109654,4,2244.28,5258.42,36.0902,0,0,0,0,0,0,0,0,0,0,3.03124,0,0),
(109654,5,2240.55,5258.66,36.7351,0,0,0,0,0,0,0,0,0,0,2.94485,0,0),
(109654,6,2239.79,5258.78,35.9885,0,0,0,0,0,0,0,0,0,0,2.80268,0,0),
(109654,7,2233.87,5260.22,35.7524,5000,2523404,0,0,0,0,0,0,0,0,2.88908,0,0),
(109654,8,2240.6,5258.78,36.6595,0,0,0,0,0,0,0,0,0,0,6.06444,0,0),
(109654,9,2244.44,5258.31,36.1157,0,0,0,0,0,0,0,0,0,0,5.83275,0,0),
(109654,10,2247.49,5256.28,36.58,0,0,0,0,0,0,0,0,0,0,5.64191,0,0),
(109654,11,2249.85,5254.61,35.9037,0,0,0,0,0,0,0,0,0,0,5.71652,0,0);
-- Jimmy the Stable Boy c.27364 -- he must be redone completly! need avi.
UPDATE creature_movement SET emote = 0 WHERE id = 117744 AND point = 2;
UPDATE creature_movement SET emote = 0 WHERE id = 117744 AND point = 3;
-- Sandra Bartan <Barmaid> c.32403
UPDATE creature_movement SET script_id = 3240301, emote = 0 WHERE id = 109735 AND point = 14;
DELETE FROM dbscripts_on_creature_movement WHERE id = 3240301; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3240301,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(3240301,13,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Unu'pe Villager c.27566
UPDATE creature_movement SET script_id = 2756601, emote = 0 WHERE id = 112379 AND point = 1;
UPDATE creature_movement SET script_id = 2756602, emote = 0 WHERE id = 112379 AND point = 3;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2756601,2756602); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2756601,3,1,233,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2756601,28,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2756602,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2756602,13,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Justin Boehm <The Assurance> c.29296
DELETE FROM creature_movement WHERE id = 49649;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(49649,1,-8425.53,1319.01,11.1249,0,0,0,0,0,0,0,0,0,0,0.000259,0,0),
(49649,2,-8423.73,1319,11.1337,0,0,0,0,0,0,0,0,0,0,0.004186,0,0),
(49649,3,-8422.25,1322.46,11.0723,0,0,0,0,0,0,0,0,0,0,0.165193,0,0),
(49649,4,-8418.66,1322.84,11.0669,0,0,0,0,0,0,0,0,0,0,5.61978,0,0),
(49649,5,-8414.76,1319.14,11.1205,0,0,0,0,0,0,0,0,0,0,0.000257,0,0),
(49649,6,-8407.75,1319.34,6.88187,0,0,0,0,0,0,0,0,0,0,0.44872,0,0),
(49649,7,-8402.74,1322.65,6.66857,70000,2929601,0,0,0,0,0,0,0,0,0.72747,0,0),
(49649,8,-8406.85,1319.1,6.73553,0,0,0,0,0,0,0,0,0,0,3.21719,0,0),
(49649,9,-8414.76,1319.05,11.1226,0,0,0,0,0,0,0,0,0,0,3.09545,0,0),
(49649,10,-8418.04,1323.28,11.0556,0,0,0,0,0,0,0,0,0,0,3.33633,0,0),
(49649,11,-8422.66,1322.86,11.0604,0,0,0,0,0,0,0,0,0,0,4.42567,0,0),
(49649,12,-8423.21,1319.68,11.1227,0,0,0,0,0,0,0,0,0,0,3.17924,0,0),
(49649,13,-8425.61,1319.62,11.0512,0,0,0,0,0,0,0,0,0,0,3.16746,0,0),
(49649,14,-8432.95,1319.73,6.73108,70000,2929601,0,0,0,0,0,0,0,0,3.10856,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2929601; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2929601,3,1,379,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2929601,65,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Michael Corpora <The Assurance> c.29297
DELETE FROM creature_movement WHERE id = 49584;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(49584,1,-8417.51,1327.79,11.0264,15000,2929701,0,0,0,0,0,0,0,0,1.73394,0,0),
(49584,2,-8422.86,1327.48,11.0281,0,0,0,0,0,0,0,0,0,0,1.59572,0,0),
(49584,3,-8422.86,1327.7,11.0265,15000,0,0,0,0,0,0,0,0,0,1.59572,0,0),
(49584,4,-8417.62,1327.19,11.0289,0,0,0,0,0,0,0,0,0,0,1.63971,0,0),
(49584,5,-8417.63,1327.32,11.0295,15000,2929701,0,0,0,0,0,0,0,0,1.63971,0,0),
(49584,6,-8420.2,1327.48,11.0422,0,0,0,0,0,0,0,0,0,0,1.5184,0,0),
(49584,7,-8420.19,1329.73,11.0296,0,0,0,0,0,0,0,0,0,0,3.29419,0,0),
(49584,8,-8420.32,1329.71,11.0296,15000,2929701,0,0,0,0,0,0,0,0,3.29419,0,0),
(49584,9,-8419.69,1329.38,11.0306,15000,2929701,0,0,0,0,0,0,0,0,0.048578,0,0),
(49584,10,-8420.09,1326.71,11.0466,0,0,0,0,0,0,0,0,0,0,6.20723,0,0),
(49584,11,-8417.73,1326.82,11.0346,0,0,0,0,0,0,0,0,0,0,1.71554,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2929701; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2929701,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2929701,12,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Robert Richardson <The Assurance> c.29300
DELETE FROM creature_movement WHERE id = 49588;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(49588,1,-8410.43,1332.88,11.0661,10000,2930001,0,0,0,0,0,0,0,0,0.222403,0,0),
(49588,2,-8417.27,1340.1,11.4042,0,0,0,0,0,0,0,0,0,0,3.11267,0,0),
(49588,3,-8421.54,1340.19,11.4555,0,0,0,0,0,0,0,0,0,0,3.84309,0,0),
(49588,4,-8424.73,1337.23,11.252,0,0,0,0,0,0,0,0,0,0,4.67561,0,0),
(49588,5,-8422.77,1332.19,11.0477,10000,2930001,0,0,0,0,0,0,0,0,5.05652,0,0),
(49588,6,-8428.88,1337.12,11.1986,0,0,0,0,0,0,0,0,0,0,3.15462,0,0),
(49588,7,-8429.08,1337.12,11.1965,60000,0,0,0,0,0,0,0,0,0,3.15462,0,0),
(49588,8,-8422.46,1340.36,11.4403,0,0,0,0,0,0,0,0,0,0,6.21969,0,0),
(49588,9,-8415.57,1340.2,11.359,0,0,0,0,0,0,0,0,0,0,6.19848,0,0),
(49588,10,-8411.82,1337.18,11.2055,0,0,0,0,0,0,0,0,0,0,6.27859,0,0),
(49588,11,-8411.35,1337.18,11.2003,10000,2930001,0,0,0,0,0,0,0,0,6.27859,0,0),
(49588,12,-8417.14,1332.56,11.0659,0,0,0,0,0,0,0,0,0,0,4.546,0,0),
(49588,13,-8417.16,1332.36,11.058,10000,2930001,0,0,0,0,0,0,0,0,4.69366,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2930001; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2930001,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2930001,8,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Steam Tank Engineer#1 c.29016
DELETE FROM creature_movement WHERE id = 120714;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(120714,1,-8341.82,1144.29,19.1521,25000,2901601,0,0,0,0,0,0,0,0,2.4732,0,0),
(120714,2,-8333.36,1143.05,18.9424,0,0,0,0,0,0,0,0,0,0,6.11966,0,0),
(120714,3,-8333.25,1143.18,18.9497,25000,2901601,0,0,0,0,0,0,0,0,0.896764,0,0),
(120714,4,-8334.16,1142.16,18.9273,0,0,0,0,0,0,0,0,0,0,5.05309,0,0),
(120714,5,-8331.72,1140.15,18.8464,0,0,0,0,0,0,0,0,0,0,0.083875,0,0),
(120714,6,-8319.58,1140.6,18.88,0,0,0,0,0,0,0,0,0,0,0.260587,0,0),
(120714,7,-8317.88,1144.89,18.983,25000,2901601,0,0,0,0,0,0,0,0,1.15987,0,0),
(120714,8,-8321,1140.26,18.8938,0,0,0,0,0,0,0,0,0,0,3.17049,0,0),
(120714,9,-8331.42,1139.52,18.8309,0,0,0,0,0,0,0,0,0,0,2.85658,0,0);
-- Steam Tank Engineer#2 c.29016
DELETE FROM creature_movement WHERE id = 120710;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(120710,1,-8427.11,1125.21,19.0443,0,0,0,0,0,0,0,0,0,0,4.81118,0,0),
(120710,2,-8427.28,1120.68,19.0507,0,0,0,0,0,0,0,0,0,0,0.039102,0,0),
(120710,3,-8427.29,1120.68,19.0507,25000,2901601,0,0,0,0,0,0,0,0,0.039102,0,0),
(120710,4,-8427.48,1122.81,19.0507,2000,0,0,0,0,0,0,0,0,0,1.70807,0,0),
(120710,5,-8425.52,1126.73,18.987,0,0,0,0,0,0,0,0,0,0,6.18798,0,0),
(120710,6,-8419.04,1127.63,18.9321,0,0,0,0,0,0,0,0,0,0,5.51882,0,0),
(120710,7,-8414.23,1123.19,19.0504,0,0,0,0,0,0,0,0,0,0,3.3582,0,0),
(120710,8,-8416.29,1122.7,19.0504,25000,2901601,0,0,0,0,0,0,0,0,3.38568,0,0),
(120710,9,-8416.53,1125.82,19.0303,0,0,0,0,0,0,0,0,0,0,2.42436,0,0),
(120710,10,-8420.78,1129.97,18.7194,0,0,0,0,0,0,0,0,0,0,3.04325,0,0),
(120710,11,-8422.75,1129.64,18.7821,0,0,0,0,0,0,0,0,0,0,4.88344,0,0),
(120710,12,-8422.64,1126.61,18.9589,10000,0,0,0,0,0,0,0,0,0,4.77573,0,0);
-- Steam Tank Engineer#3 c.29016
DELETE FROM creature_movement WHERE id = 120707;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(120707,1,-8429.32,1104.22,19.0518,0,0,0,0,0,0,0,0,0,0,3.67723,0,0),
(120707,2,-8429.52,1104.1,19.0518,25000,2901601,0,0,0,0,0,0,0,0,3.67723,0,0),
(120707,3,-8427.96,1104.87,19.0518,0,0,0,0,0,0,0,0,0,0,6.01201,0,0),
(120707,4,-8422.6,1102.15,19.0518,0,0,0,0,0,0,0,0,0,0,3.92835,0,0),
(120707,5,-8424.83,1095.45,19.0518,0,0,0,0,0,0,0,0,0,0,3.7265,0,0),
(120707,6,-8430.66,1092.24,19.0518,0,0,0,0,0,0,0,0,0,0,1.98056,0,0),
(120707,7,-8431.6,1094,19.0518,25000,2901601,0,0,0,0,0,0,0,0,2.07481,0,0),
(120707,8,-8434.16,1092.08,19.0518,0,0,0,0,0,0,0,0,0,0,2.7314,0,0),
(120707,9,-8438.85,1092.48,19.0518,0,0,0,0,0,0,0,0,0,0,1.90752,0,0),
(120707,10,-8441.77,1101.9,19.0518,0,0,0,0,0,0,0,0,0,0,5.6091,0,0),
(120707,11,-8440.17,1100.4,19.0518,0,0,0,0,0,0,0,0,0,0,0.872371,0,0),
(120707,12,-8439.39,1101.21,19.0518,25000,2901601,0,0,0,0,0,0,0,0,0.808753,0,0),
(120707,13,-8438.81,1099.22,19.0518,0,0,0,0,0,0,0,0,0,0,4.36975,0,0),
(120707,14,-8439.26,1096.63,19.0518,0,0,0,0,0,0,0,0,0,0,5.29022,0,0),
(120707,15,-8436.67,1091.74,19.0518,0,0,0,0,0,0,0,0,0,0,0.294295,0,0),
(120707,16,-8425.42,1095.32,19.0518,0,0,0,0,0,0,0,0,0,0,1.28232,0,0),
(120707,17,-8424.09,1099.62,19.0518,0,0,0,0,0,0,0,0,0,0,3.52808,0,0),
(120707,18,-8427.16,1098.59,19.0518,25000,2901601,0,0,0,0,0,0,0,0,3.45346,0,0);
-- Steam Tank Engineer#4 c.29016
DELETE FROM creature_movement WHERE id = 120715;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(120715,1,-8451.17,1122.94,19.0531,0,0,0,0,0,0,0,0,0,0,0.781591,0,0),
(120715,2,-8448.09,1127.72,19.0372,0,0,0,0,0,0,0,0,0,0,6.2731,0,0),
(120715,3,-8441.96,1125.39,19.051,0,0,0,0,0,0,0,0,0,0,3.92083,0,0),
(120715,4,-8441.92,1122.8,19.0519,25000,2901601,0,0,0,0,0,0,0,0,4.16039,0,0),
(120715,5,-8439.23,1126.54,19.0519,0,0,0,0,0,0,0,0,0,0,3.25209,0,0),
(120715,6,-8447.35,1126.57,19.051,0,0,0,0,0,0,0,0,0,0,3.45394,0,0),
(120715,7,-8453.81,1123.36,19.051,0,0,0,0,0,0,0,0,0,0,4.38534,0,0),
(120715,8,-8455.5,1116.1,19.051,0,0,0,0,0,0,0,0,0,0,5.5171,0,0),
(120715,9,-8453.39,1114.72,19.051,25000,2901601,0,0,0,0,0,0,0,0,5.75209,0,0),
(120715,10,-8453.8,1118.47,19.051,0,0,0,0,0,0,0,0,0,0,6.27359,0,0),
(120715,11,-8452.08,1118.23,19.0561,25000,2901601,0,0,0,0,0,0,0,0,6.0912,0,0);
-- Steam Tank Engineer#5 c.29016
DELETE FROM creature_movement WHERE id = 120705;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(120705,1,-8451.93,1104.48,19.0522,1000,2901603,0,0,0,0,0,0,0,0,4.25515,0,0),
(120705,2,-8462.51,1106.1,19.053,25000,2901601,0,0,0,0,0,0,0,0,1.75508,0,0),
(120705,3,-8462.51,1106.1,19.053,25000,2901601,0,0,0,0,0,0,0,0,1.75508,0,0),
(120705,4,-8462.51,1106.1,19.053,25000,2901601,0,0,0,0,0,0,0,0,1.75508,0,0),
(120705,5,-8462.51,1106.1,19.053,25000,2901601,0,0,0,0,0,0,0,0,1.75508,0,0),
(120705,6,-8450.52,1101.22,19.0522,5000,2901602,0,0,0,0,0,0,0,0,2.70619,0,0),
(120705,7,-8450.8,1110.86,19.0561,25000,2901601,0,0,0,0,0,0,0,0,1.76278,0,0),
(120705,8,-8450.8,1110.86,19.0561,5000,0,0,0,0,0,0,0,0,0,1.76278,0,0),
(120705,9,-8450.8,1110.86,19.0561,25000,2901601,0,0,0,0,0,0,0,0,1.76278,0,0),
(120705,10,-8450.8,1110.86,19.0561,5000,0,0,0,0,0,0,0,0,0,1.76278,0,0),
(120705,11,-8450.8,1110.86,19.0561,25000,2901601,0,0,0,0,0,0,0,0,1.76278,0,0),
(120705,12,-8450.8,1110.86,19.0561,5000,0,0,0,0,0,0,0,0,0,1.76278,0,0),
(120705,13,-8450.8,1110.86,19.0561,25000,2901601,0,0,0,0,0,0,0,0,1.76278,0,0),
(120705,14,-8450.8,1110.86,19.0561,5000,0,0,0,0,0,0,0,0,0,1.76278,0,0),
(120705,15,-8450.8,1110.86,19.0561,25000,2901601,0,0,0,0,0,0,0,0,1.76278,0,0),
(120705,16,-8450.8,1110.86,19.0561,5000,0,0,0,0,0,0,0,0,0,1.76278,0,0),
(120705,17,-8450.8,1110.86,19.0561,25000,2901601,0,0,0,0,0,0,0,0,1.76278,0,0),
(120705,18,-8450.8,1110.86,19.0561,5000,0,0,0,0,0,0,0,0,0,1.76278,0,0),
(120705,19,-8450.8,1110.86,19.0561,25000,2901601,0,0,0,0,0,0,0,0,1.76278,0,0),
(120705,20,-8450.8,1110.86,19.0561,2000,0,0,0,0,0,0,0,0,0,1.76278,0,0),
(120705,21,-8450.8,1110.86,19.0561,25000,2901601,0,0,0,0,0,0,0,0,1.76278,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2901601 AND 2901603; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2901601,4,1,233,0,0,0,0,69,0,0,0,0,0,0,0,'random emote'),
(2901601,20,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2901602,1,1,3,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2901603,0,10,29144,240000,0,0,0,0,0,0,0,-8463.9,1109.41,19.1352,1.48353,'summon - Refurbished Steam Tank');
-- Refurbished Steam Tank c.29144 
DELETE FROM creature WHERE guid = 120795;
DELETE FROM creature_movement WHERE id = 120795;
UPDATE creature_template SET MovementType = 2 WHERE entry = 29144; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 29144;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,wpguid,orientation,model1,model2) VALUES
(29144,1,-8463.9,1109.41,19.1352,1000,0,0,0,0,0,0,0,0,0,1.48353,0,0),
(29144,2,-8463.52,1112.6,19.0517,120000,0,0,0,0,0,0,0,0,0,1.47418,0,0),
(29144,3,-8463.23,1108.18,19.053,5000,0,0,0,0,0,0,0,0,0,4.06056,0,0),
(29144,4,-8473.35,1096.63,18.7345,0,0,0,0,0,0,0,0,0,0,3.14165,0,0),
(29144,5,-8496.34,1095.88,17.9444,0,0,0,0,0,0,0,0,0,0,1.80018,0,0),
(29144,6,-8499.86,1132.84,17.9763,6000,0,0,0,0,0,0,0,0,0,1.66117,0,0),
(29144,7,-8486,1138.24,17.9608,0,0,0,0,0,0,0,0,0,0,6.22434,0,0),
(29144,8,-8462.43,1136.04,18.6577,0,0,0,0,0,0,0,0,0,0,6.2047,0,0),
(29144,9,-8440.65,1137.48,18.8719,0,0,0,0,0,0,0,0,0,0,0.172842,0,0),
(29144,10,-8412.35,1137.49,18.0685,10000,0,0,0,0,0,0,0,0,0,6.26361,0,0),
(29144,11,-8412.35,1137.49,18.0685,0,0,0,0,0,0,0,0,5,0,6.26361,0,0);
-- Stormwind Dock Worker#1 c.29152
DELETE FROM creature_movement WHERE id = 120798;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(120798,1,-8299.85,1210.14,5.36178,0,0,0,0,0,0,0,0,0,0,3.43094,0,0),
(120798,2,-8305.23,1207.67,5.42879,0,0,0,0,0,0,0,0,0,0,4.11745,0,0),
(120798,3,-8311.6,1200.56,5.56437,0,0,0,0,0,0,0,0,0,0,4.43946,0,0),
(120798,4,-8314.25,1191.27,5.69166,23000,2915201,0,0,0,0,0,0,0,0,4.46302,0,0),
(120798,5,-8313.35,1194.52,5.65874,0,0,0,0,0,0,0,0,0,0,1.11722,0,0),
(120798,6,-8310.12,1202.25,5.54039,0,0,0,0,0,0,0,0,0,0,0.041298,0,0),
(120798,7,-8290.29,1206.43,5.47234,0,0,0,0,0,0,0,0,0,0,0.018084,0,0),
(120798,8,-8261.41,1210.15,5.33682,0,0,0,0,0,0,0,0,0,0,5.8693,0,0),
(120798,9,-8259.69,1209.16,5.3674,23000,2915201,0,0,0,0,0,0,0,0,5.73578,0,0),
(120798,10,-8265.38,1210.92,5.32295,0,0,0,0,0,0,0,0,0,0,3.01831,0,0);
-- Stormwind Dock Worker#2 c.29152
DELETE FROM creature_movement WHERE id = 120797;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(120797,1,-8310.31,1205.76,5.47061,0,0,0,0,0,0,0,0,0,0,0.274122,0,0),
(120797,2,-8290.76,1212.13,5.30324,0,0,0,0,0,0,0,0,0,0,0.776475,0,0),
(120797,3,-8283.8,1218.69,5.12783,0,0,0,0,0,0,0,0,0,0,1.5768,0,0),
(120797,4,-8283.85,1252.21,5.92599,0,0,0,0,0,0,0,0,0,0,1.56095,0,0),
(120797,5,-8282.23,1264.73,5.23056,0,0,0,0,0,0,0,0,0,0,1.58137,0,0),
(120797,6,-8286.43,1290.12,5.23056,0,0,0,0,0,0,0,0,0,0,1.72589,0,0),
(120797,7,-8299.31,1308.23,5.2306,23000,2915201,0,0,0,0,0,0,0,0,2.16571,0,0),
(120797,8,-8295.96,1300.16,5.2306,0,0,0,0,0,0,0,0,0,0,4.68762,0,0),
(120797,9,-8297.72,1252.03,5.92557,0,0,0,0,0,0,0,0,0,0,4.7104,0,0),
(120797,10,-8299.14,1242.13,5.23096,0,0,0,0,0,0,0,0,0,0,4.60039,0,0),
(120797,11,-8301.92,1219.22,5.26001,0,0,0,0,0,0,0,0,0,0,5.16195,0,0),
(120797,12,-8299.71,1214.86,5.21961,0,0,0,0,0,0,0,0,0,0,5.18551,0,0),
(120797,13,-8314.54,1197.53,5.60277,0,0,0,0,0,0,0,0,0,0,4.46687,0,0),
(120797,14,-8315.74,1191.05,5.74044,23000,2915201,0,0,0,0,0,0,0,0,4.54148,0,0);
-- Stormwind Dock Worker#3 c.29152
DELETE FROM creature_movement WHERE id = 120799;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(120799,1,-8287.74,1210,5.37336,0,0,0,0,0,0,0,0,0,0,1.26753,0,0),
(120799,2,-8284.33,1218.8,5.12699,0,0,0,0,0,0,0,0,0,0,1.33586,0,0),
(120799,3,-8284.03,1252.12,5.92808,0,0,0,0,0,0,0,0,0,0,1.59739,0,0),
(120799,4,-8283.12,1269.9,5.23078,0,0,0,0,0,0,0,0,0,0,1.52278,0,0),
(120799,5,-8286.5,1316.12,5.23078,0,0,0,0,0,0,0,0,0,0,3.11714,0,0),
(120799,6,-8297.33,1320.5,5.2306,0,0,0,0,0,0,0,0,0,0,4.1303,0,0),
(120799,7,-8302.11,1314.06,5.23041,23000,2915201,0,0,0,0,0,0,0,0,4.38605,0,0),
(120799,8,-8297.52,1315.19,5.2306,0,0,0,0,0,0,0,0,0,0,5.52045,0,0),
(120799,9,-8294.72,1312.06,5.2306,0,0,0,0,0,0,0,0,0,0,4.82852,0,0),
(120799,10,-8297.2,1294.2,5.2306,0,0,0,0,0,0,0,0,0,0,4.79553,0,0),
(120799,11,-8297.83,1252.05,5.92656,0,0,0,0,0,0,0,0,0,0,4.69971,0,0),
(120799,12,-8301.39,1215.63,5.19864,0,0,0,0,0,0,0,0,0,0,5.28201,0,0),
(120799,13,-8287.33,1203.95,5.53263,0,0,0,0,0,0,0,0,0,0,5.29615,0,0),
(120799,14,-8282.63,1198.46,5.61464,23000,2915201,0,0,0,0,0,0,0,0,5.33149,0,0);
-- Stormwind Dock Worker#4 c.29152 
DELETE FROM creature_movement WHERE id = 88370;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(88370,1,-8120.61,1222.76,7.95895,0,0,0,0,0,0,0,0,0,0,6.1735,0,0),
(88370,2,-8089.94,1218.23,7.7505,23000,2915201,0,0,0,0,0,0,0,0,6.04391,0,0),
(88370,3,-8115.25,1223.06,7.85131,0,0,0,0,0,0,0,0,0,0,2.91803,0,0),
(88370,4,-8149.73,1228.71,8.79505,0,0,0,0,0,0,0,0,0,0,2.15383,0,0),
(88370,5,-8159.54,1238.17,7.78501,0,0,0,0,0,0,0,0,0,0,1.09197,0,0),
(88370,6,-8156.69,1246.09,7.86472,23000,2915201,0,0,0,0,0,0,0,0,1.23727,0,0),
(88370,7,-8159.74,1240.04,7.7721,0,0,0,0,0,0,0,0,0,0,5.55696,0,0),
(88370,8,-8142.14,1225.23,8.88772,0,0,0,0,0,0,0,0,0,0,5.7376,0,0);
-- Stormwind Dock Worker#5 c.29152 
DELETE FROM creature_movement WHERE id = 88375;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(88375,1,-8541.23,1144.3,18.9831,3000,0,0,0,0,0,0,0,0,0,0.95809,0,0),
(88375,2,-8538.3,1149.52,19.0522,23000,2915201,0,0,0,0,0,0,0,0,0.921979,0,0),
(88375,3,-8544.61,1133.18,18.1536,0,0,0,0,0,0,0,0,0,0,4.31569,0,0),
(88375,4,-8551.97,1118.55,19.0523,0,0,0,0,0,0,0,0,0,0,4.25678,0,0),
(88375,5,-8564.22,1107.25,19.0523,0,0,0,0,0,0,0,0,0,0,4.22537,0,0),
(88375,6,-8566.66,1101.82,19.0523,23000,2915201,0,0,0,0,0,0,0,0,4.28427,0,0),
(88375,7,-8559.28,1114.25,19.0523,0,0,0,0,0,0,0,0,0,0,0.742907,0,0);
-- Stormwind Dock Worker#6 c.29152 
DELETE FROM creature_movement WHERE id = 88376;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(88376,1,-8576.71,1146.47,18.0207,0,0,0,0,0,0,0,0,0,0,3.45975,0,0),
(88376,2,-8592.24,1140.14,19.0232,23000,2915201,0,0,0,0,0,0,0,0,3.48724,0,0),
(88376,3,-8587.63,1142.05,18.664,0,0,0,0,0,0,0,0,0,0,1.80021,0,0),
(88376,4,-8589.12,1147.9,18.8099,0,0,0,0,0,0,0,0,0,0,2.5856,0,0),
(88376,5,-8593.48,1149.63,19.0517,23000,2915201,0,0,0,0,0,0,0,0,2.69006,0,0),
(88376,6,-8577.21,1153.82,17.9682,0,0,0,0,0,0,0,0,0,0,6.26778,0,0),
(88376,7,-8558.95,1154.11,18.8956,0,0,0,0,0,0,0,0,0,0,5.51223,0,0),
(88376,8,-8557.69,1153.3,19.0169,23000,2915201,0,0,0,0,0,0,0,0,5.60334,0,0);
-- Stormwind Dock Worker#7 c.29152 
DELETE FROM creature_movement WHERE id = 88377;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(88377,1,-8418.49,1216.51,5.15492,0,0,0,0,0,0,0,0,0,0,3.18179,0,0),
(88377,2,-8437.26,1216.18,5.15686,23000,2915201,0,0,0,0,0,0,0,0,3.18179,0,0),
(88377,3,-8418.49,1216.51,5.15492,0,0,0,0,0,0,0,0,0,0,6.24877,0,0),
(88377,4,-8401.74,1217.04,5.14119,23000,2915201,0,0,0,0,0,0,0,0,6.24877,0,0);
-- Stormwind Dock Worker#8 c.29152 
DELETE FROM creature_movement WHERE id = 88378;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(88378,1,-8483.92,1205.52,5.30837,0,0,0,0,0,0,0,0,0,0,3.19278,0,0),
(88378,2,-8504.95,1204.34,5.43422,23000,2915201,0,0,0,0,0,0,0,0,3.21635,0,0),
(88378,3,-8496.24,1205.74,5.33554,0,0,0,0,0,0,0,0,0,0,6.21814,0,0),
(88378,4,-8472.6,1205.68,5.3309,0,0,0,0,0,0,0,0,0,0,5.91105,0,0),
(88378,5,-8451.6,1202.08,5.28666,0,0,0,0,0,0,0,0,0,0,6.20581,0,0),
(88378,6,-8440.75,1198.68,5.49148,0,0,0,0,0,0,0,0,0,0,4.94917,0,0),
(88378,7,-8437.91,1192.77,5.47497,23000,2915201,0,0,0,0,0,0,0,0,5.11019,0,0),
(88378,8,-8443.81,1199.8,5.43047,0,0,0,0,0,0,0,0,0,0,2.54586,0,0),
(88378,9,-8463.18,1206.26,5.2489,0,0,0,0,0,0,0,0,0,0,3.21242,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2915201; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2915201,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2915201,19,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Scryer Arcanist#1 c.18547
DELETE FROM creature_movement WHERE id = 66707;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(66707,1,-2214.79,5538.54,66.9942,26000,1854701,0,0,0,0,0,0,0,0,4.4598,0,0),
(66707,2,-2209.3,5554.63,66.9942,26000,1854701,0,0,0,0,0,0,0,0,1.4101,0,0),
(66707,3,-2211.49,5554.52,66.9942,0,0,0,0,0,0,0,0,0,0,1.64093,0,0),
(66707,4,-2211.26,5555.38,66.9934,26000,1854701,0,0,0,0,0,0,0,0,1.64093,0,0);
-- Scryer Arcanist#2 c.18547
DELETE FROM creature_movement WHERE id = 66706;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(66706,1,-2215.98,5543.02,66.9935,0,0,0,0,0,0,0,0,0,0,2.05811,0,0),
(66706,2,-2219.7,5548.18,67.0148,0,0,0,0,0,0,0,0,0,0,2.74062,0,0),
(66706,3,-2228.38,5550.67,66.9996,0,0,0,0,0,0,0,0,0,0,4.38681,0,0),
(66706,4,-2229.81,5547.03,66.9996,26000,1854701,0,0,0,0,0,0,0,0,4.28785,0,0),
(66706,5,-2224.33,5556.18,66.9955,26000,1854701,0,0,0,0,0,0,0,0,1.19495,0,0),
(66706,6,-2215.08,5542.75,66.9935,0,0,0,0,0,0,0,0,0,0,4.55567,0,0),
(66706,7,-2216.67,5539.34,66.9935,26000,1854701,0,0,0,0,0,0,0,0,4.32084,0,0);
-- Scryer Arcanist#3 c.18547
DELETE FROM creature_movement WHERE id = 66708;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(66708,1,-2226.47,5556.73,66.9992,26000,1854701,0,0,0,0,0,0,0,0,1.31276,0,0),
(66708,2,-2232.98,5552.07,67.0085,0,0,0,0,0,0,0,0,0,0,4.45043,0,0),
(66708,3,-2233.94,5548.53,67.0081,26000,1854701,0,0,0,0,0,0,0,0,4.38603,0,0),
(66708,4,-2231.82,5548.28,67.0028,0,0,0,0,0,0,0,0,0,0,4.37661,0,0),
(66708,5,-2232.12,5547.42,67.0028,26000,1854701,0,0,0,0,0,0,0,0,4.37661,0,0);
-- Scryer Arcanist#4 c.18547
DELETE FROM creature_movement WHERE id = 66715;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(66715,1,-2255.69,5557.02,67.008,0,0,0,0,0,0,0,0,0,0,5.28137,0,0),
(66715,2,-2251.56,5549.71,67.0626,0,0,0,0,0,0,0,0,0,0,4.80542,0,0),
(66715,3,-2258.2,5541.57,69.1534,0,0,0,0,0,0,0,0,0,0,3.77185,0,0),
(66715,4,-2267.8,5537.54,72.0836,0,0,0,0,0,0,0,0,0,0,2.9244,0,0),
(66715,5,-2274.17,5540.89,75.5327,0,0,0,0,0,0,0,0,0,0,2.63616,0,0),
(66715,6,-2277.89,5547.22,80.0548,0,0,0,0,0,0,0,0,0,0,2.02355,0,0),
(66715,7,-2280.06,5551.67,80.0757,0,0,0,0,0,0,0,0,0,0,3.63361,0,0),
(66715,8,-2281.06,5551.08,80.1344,26000,1854701,0,0,0,0,0,0,0,0,3.68074,0,0),
(66715,9,-2278.11,5546.89,80.0296,0,0,0,0,0,0,0,0,0,0,5.26724,0,0),
(66715,10,-2272.26,5538.85,74.237,0,0,0,0,0,0,0,0,0,0,5.89949,0,0),
(66715,11,-2261.61,5539.01,70.3118,0,0,0,0,0,0,0,0,0,0,0.905135,0,0),
(66715,12,-2252.47,5549.75,67.2344,0,0,0,0,0,0,0,0,0,0,1.59471,0,0),
(66715,13,-2257.01,5553.59,66.999,0,0,0,0,0,0,0,0,0,0,4.0554,0,0),
(66715,14,-2273.11,5538.03,66.9952,26000,1854701,0,0,0,0,0,0,0,0,3.97764,0,0);
-- Scryer Arcanist#5 c.18547
DELETE FROM creature_movement WHERE id = 66712;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(66712,1,-2252.3,5570.06,79.9853,0,0,0,0,0,0,0,0,0,0,5.82096,0,0),
(66712,2,-2246.73,5564.09,80.074,0,0,0,0,0,0,0,0,0,0,0.195146,0,0),
(66712,3,-2245.55,5564.22,80.1128,26000,1854701,0,0,0,0,0,0,0,0,0.062413,0,0),
(66712,4,-2252.45,5569.32,79.9841,0,0,0,0,0,0,0,0,0,0,1.96779,0,0),
(66712,5,-2254.16,5576.24,79.9524,0,0,0,0,0,0,0,0,0,0,0.565067,0,0),
(66712,6,-2250.72,5578.75,80.0954,26000,1854701,0,0,0,0,0,0,0,0,0.67895,0,0),
(66712,7,-2249.8,5576.84,80.0843,0,0,0,0,0,0,0,0,0,0,0.830476,0,0),
(66712,8,-2249.1,5577.44,80.1194,26000,1854701,0,0,0,0,0,0,0,0,0.623131,0,0);
-- Scryer Arcanist#6 c.18547
DELETE FROM creature_movement WHERE id = 66713;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(66713,1,-2263.46,5544.02,80.0848,0,0,0,0,0,0,0,0,0,0,5.27189,0,0),
(66713,2,-2263.05,5543.24,80.1178,26000,1854702,0,0,0,0,0,0,0,0,5.15094,0,0),
(66713,3,-2257.51,5553.02,79.9842,0,0,0,0,0,0,0,0,0,0,0.779413,0,0),
(66713,4,-2252.86,5555.36,79.9773,0,0,0,0,0,0,0,0,0,0,5.58684,0,0),
(66713,5,-2250.11,5553.28,80.0816,26000,1854701,0,0,0,0,0,0,0,0,5.57506,0,0),
(66713,6,-2258.21,5551.96,79.9877,0,0,0,0,0,0,0,0,0,0,4.3679,0,0),
(66713,7,-2260.4,5546.23,80.0407,0,0,0,0,0,0,0,0,0,0,5.26322,0,0),
(66713,8,-2259.89,5545.41,80.0769,26000,1854701,0,0,0,0,0,0,0,0,5.25929,0,0),
(66713,9,-2261.74,5545,80.0693,0,0,0,0,0,0,0,0,0,0,5.29384,0,0),
(66713,10,-2261.28,5544.07,80.1091,26000,1854701,0,0,0,0,0,0,0,0,5.11789,0,0);
-- Scryer Arcanist#6 c.18547
DELETE FROM creature_movement WHERE id = 66714;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(66714,1,-2255.27,5566.96,67.0072,0,0,0,0,0,0,0,0,0,0,6.05308,0,0),
(66714,2,-2246.84,5567.16,67.0082,0,0,0,0,0,0,0,0,0,0,1.26215,0,0),
(66714,3,-2245.71,5578.85,69.2493,0,0,0,0,0,0,0,0,0,0,2.02477,0,0),
(66714,4,-2252.04,5588.03,72.5323,0,0,0,0,0,0,0,0,0,0,3.18716,0,0),
(66714,5,-2261.78,5587.98,77.6194,0,0,0,0,0,0,0,0,0,0,3.78799,0,0),
(66714,6,-2265.42,5584.82,80.0308,0,0,0,0,0,0,0,0,0,0,3.92465,0,0),
(66714,7,-2268.05,5580.63,79.9532,0,0,0,0,0,0,0,0,0,0,3.8304,0,0),
(66714,8,-2278.6,5574.33,79.8834,0,0,0,0,0,0,0,0,0,0,2.70807,0,0),
(66714,9,-2280.24,5575.68,79.9509,26000,1854701,0,0,0,0,0,0,0,0,2.49915,0,0),
(66714,10,-2278.58,5574.56,79.8899,0,0,0,0,0,0,0,0,0,0,0.53566,0,0),
(66714,11,-2266.66,5581.33,79.9308,0,0,0,0,0,0,0,0,0,0,1.31399,0,0),
(66714,12,-2264.98,5585.44,80.0444,0,0,0,0,0,0,0,0,0,0,0.358151495,0,0),
(66714,13,-2256.03,5588.84,74.4331,0,0,0,0,0,0,0,0,0,0,6.1277,0,0),
(66714,14,-2247.54,5583.82,70.6266,0,0,0,0,0,0,0,0,0,0,5.01322,0,0),
(66714,15,-2245.83,5567.45,67.0099,0,0,0,0,0,0,0,0,0,0,4.05504,0,0),
(66714,16,-2255.13,5566.28,67.0081,0,0,0,0,0,0,0,0,0,0,1.8999,0,0),
(66714,17,-2256.49,5590.33,66.9943,26000,1854701,0,0,0,0,0,0,0,0,1.61952,0,0);
-- Scryer Arcanist#7 c.18547
DELETE FROM creature_movement WHERE id = 66711;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(66711,1,-2291.97,5574.04,66.997,0,0,0,0,0,0,0,0,0,0,0.035202,0,0),
(66711,2,-2278.25,5573.54,66.9957,0,0,0,0,0,0,0,0,0,0,0.738918,0,0),
(66711,3,-2271.67,5578.48,66.9962,0,0,0,0,0,0,0,0,0,0,2.06545,0,0),
(66711,4,-2273.59,5581.4,66.9946,26000,1854701,0,0,0,0,0,0,0,0,2.18955,0,0),
(66711,5,-2274.39,5579.08,66.9948,0,0,0,0,0,0,0,0,0,0,2.43931,0,0),
(66711,6,-2275.33,5579.99,66.9948,26000,1854701,0,0,0,0,0,0,0,0,2.3427,0,0),
(66711,7,-2278.68,5575.29,66.9948,0,0,0,0,0,0,0,0,0,0,3.19879,0,0),
(66711,8,-2291.98,5574.83,66.9998,0,0,0,0,0,0,0,0,0,0,1.41593,0,0),
(66711,9,-2291.19,5578.34,67.0069,26000,1854701,0,0,0,0,0,0,0,0,1.34917,0,0);
-- Scryer Arcanist#8 c.18547
DELETE FROM creature_movement WHERE id = 66709;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(66709,1,-2295.39,5579.79,66.9888,26000,1854701,0,0,0,0,0,0,0,0,1.28241,0,0),
(66709,2,-2293.78,5570.51,67.0062,0,0,0,0,0,0,0,0,0,0,4.32977,0,0),
(66709,3,-2294.48,5568.41,67.0084,26000,1854701,0,0,0,0,0,0,0,0,4.37689,0,0),
(66709,4,-2293.95,5576.48,66.996,0,0,0,0,0,0,0,0,0,0,1.44343,0,0),
(66709,5,-2293.34,5579.22,66.9973,26000,1854701,0,0,0,0,0,0,0,0,1.34526,0,0),
(66709,6,-2297.52,5572.98,66.9936,0,0,0,0,0,0,0,0,0,0,4.2795,0,0),
(66709,7,-2298.49,5570.17,66.9902,26000,1854701,0,0,0,0,0,0,0,0,4.38081,0,0);
 -- Scryer Arcanist#9 c.18547
DELETE FROM creature_movement WHERE id = 66710;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(66710,1,-2280.82,5552.07,80.1045,26000,1854701,0,0,0,0,0,0,0,0,2.36993,0,0),
(66710,2,-2278.11,5554.05,79.9794,0,0,0,0,0,0,0,0,0,0,0.670328,0,0),
(66710,3,-2282.18,5564.63,79.8919,0,0,0,0,0,0,0,0,0,0,1.97959,0,0),
(66710,4,-2283.11,5566.77,79.8961,5000,0,0,0,0,0,0,0,0,0,1.97959,0,0),
(66710,5,-2284.28,5566.78,79.9264,26000,1854701,0,0,0,0,0,0,0,0,3.12941,0,0),
(66710,6,-2284.21,5564.77,79.9488,0,0,0,0,0,0,0,0,0,0,4.85572,0,0),
(66710,7,-2284.21,5564.77,79.9488,0,0,0,0,0,0,0,0,0,0,3.33833,0,0),
(66710,8,-2280.13,5564.78,79.8723,0,0,0,0,0,0,0,0,0,0,6.25137,0,0),
(66710,9,-2278.24,5549.66,80.0242,0,0,0,0,0,0,0,0,0,0,4.7654,0,0),
(66710,10,-2280.91,5552.21,80.1059,26000,1854701,0,0,0,0,0,0,0,0,2.3393,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1854701,1854702); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1854701,4,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1854701,23,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1854702,4,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1854702,23,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1854702,24,1,4,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Expedition Warden c.17855
UPDATE creature_movement SET script_id = 1785502, emote = 0 WHERE id = 63553 AND point = 2;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1785502; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1785502,4,1,3,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Ol' Chumbucket c.28050
DELETE FROM creature_movement WHERE id = 16399;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(16399,1,-14430.4,520.976,25.9306,5000,2805001,0,0,0,0,0,0,0,0,2.56563,0,0),
(16399,2,-14430.4,520.976,25.9306,10000,0,0,0,0,0,0,0,0,0,2.56563,0,0),
(16399,3,-14430.4,520.976,25.9306,10000,0,0,0,0,0,0,0,0,0,2.56563,0,0),
(16399,4,-14430.4,520.976,25.9306,5000,2805001,0,0,0,0,0,0,0,0,2.56563,0,0),
(16399,5,-14430.4,520.976,25.9306,10000,2805002,0,0,0,0,0,0,0,0,2.56563,0,0),
(16399,6,-14430.4,520.976,25.9306,10000,0,0,0,0,0,0,0,0,0,2.56563,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2805001; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2805001,0,1,378,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2805001,4,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2805002,1,1,25,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Cap'n Slappy c.28051
DELETE FROM creature_movement WHERE id = 16400;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(16400,1,-14432.2,521.966,25.6104,10000,2805002,0,0,0,0,0,0,0,0,5.84685,0,0),
(16400,2,-14432.2,521.966,25.6104,5000,2805001,0,0,0,0,0,0,0,0,5.84685,0,0),
(16400,3,-14432.2,521.966,25.6104,10000,0,0,0,0,0,0,0,0,0,5.84685,0,0),
(16400,4,-14432.2,521.966,25.6104,10000,0,0,0,0,0,0,0,0,0,5.84685,0,0),
(16400,5,-14432.2,521.966,25.6104,5000,2805001,0,0,0,0,0,0,0,0,5.84685,0,0),
(16400,6,-14432.2,521.966,25.6104,10000,0,0,0,0,0,0,0,0,0,5.84685,0,0);
-- Albert Quarksprocket c.19271
DELETE FROM creature_movement WHERE id = 68836;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(68836,1,-1737.89,5139.73,-37.3229,715000,0,0,0,0,0,0,0,0,0,2.03774,0,0),
(68836,2,-1740.95,5139.05,-36.7629,0,0,0,0,0,0,0,0,0,0,3.19259,0,0),
(68836,3,-1743.18,5138.94,-36.2607,0,0,0,0,0,0,0,0,0,0,3.19259,0,0),
(68836,4,-1751.3,5139.58,-36.2607,0,0,0,0,0,0,0,0,0,0,1.77259,0,0),
(68836,5,-1752.33,5142.55,-36.2607,11000,1927101,0,0,0,0,0,0,0,0,1.81343,0,0),
(68836,6,-1750.27,5143.63,-36.3534,0,0,0,0,0,0,0,0,0,0,0.713872,0,0),
(68836,7,-1749.59,5145.78,-37.2049,0,0,0,0,0,0,0,0,0,0,1.26679,0,0),
(68836,8,-1746.59,5145.33,-37.2049,0,0,0,0,0,0,0,0,0,0,6.13312,0,0),
(68836,9,-1740.9,5143.23,-37.2049,0,0,0,0,0,0,0,0,0,0,5.92892,0,0),
(68836,10,-1735.95,5139.95,-37.2779,0,0,0,0,0,0,0,0,0,0,5.70822,0,0),
(68836,11,-1737.58,5140.13,-37.3003,269000,0,0,0,0,0,0,0,0,0,3.03472,0,0),
(68836,12,-1745.1,5144.54,-37.2038,0,0,0,0,0,0,0,0,0,0,2.61061,0,0),
(68836,13,-1748.36,5145.45,-37.2038,0,0,0,0,0,0,0,0,0,0,2.87136,0,0),
(68836,14,-1751.1,5139.39,-36.0873,0,0,0,0,0,0,0,0,0,0,4.28822,0,0),
(68836,15,-1752.21,5142.52,-36.2611,17000,1927102,0,0,0,0,0,0,0,0,1.91151495,0,0),
(68836,16,-1749.96,5146.13,-37.2039,0,0,0,0,0,0,0,0,0,0,1.01075,0,0),
(68836,17,-1743.97,5144.62,-37.2039,0,0,0,0,0,0,0,0,0,0,6.0373,0,0),
(68836,18,-1736.66,5138.91,-37.325,0,0,0,0,0,0,0,0,0,0,5.48752,0,0),
(68836,19,-1737.89,5139.73,-37.3229,600000,0,0,0,0,0,0,0,0,0,2.03774,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1927101,1927102); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1927101,1,0,0,0,0,0,0,2000005300,0,0,0,0,0,0,0,''),
(1927101,6,1,25,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1927101,10,1,21,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1927102,1,1,11,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1927102,5,1,21,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1927102,11,0,0,0,0,0,0,2000005301,0,0,0,0,0,0,0,''),
(1927102,14,1,21,0,0,0,0,0,0,0,0,0,0,0,0,'');
UPDATE db_script_string SET emote = 21 WHERE entry IN (2000005300,2000005301);
-- Peon c.14901
DELETE FROM creature_movement WHERE id = 13775;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(13775,1,-629.313,-3161,92.3242,0,1490101,0,0,0,0,0,0,0,0,3.79019,0,0),
(13775,2,-624.911,-3156.44,91.7832,0,0,0,0,0,0,0,0,0,0,0.483361,0,0),
(13775,3,-617.56,-3155.6,91.7512,0,1490102,0,0,0,0,0,0,0,0,0.161653,0,0),
(13775,4,-617.56,-3155.6,91.7512,240000,1490104,0,0,0,0,0,0,0,0,0.161653,0,0),
(13775,5,-625.854,-3158.22,91.9782,0,0,0,0,0,0,0,0,0,0,3.5153,0,0),
(13775,6,-629.313,-3161,92.3242,130000,1490103,0,0,0,0,0,0,0,0,3.79019,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1490101 AND 1490104; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1490101,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1490102,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN OFF'),
(1490103,0,20,1,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(1490103,128,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(1490104,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1490104,235,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Horde Guard c.3501
UPDATE creature_movement SET script_id = 350101, emote = 0 WHERE id = 19411 AND point = 8;
DELETE FROM dbscripts_on_creature_movement WHERE id = 350101; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(350101,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Honor Hold Gryphon Rider c.20237
DELETE FROM creature_movement WHERE id = 96989;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(96989,1,267.502,1449.24,-14.3756,10000,2023701,0,0,0,0,0,0,0,0,4.23579,0,0),
(96989,2,267.502,1449.24,-14.3756,60000,2023702,0,0,0,0,0,0,0,0,4.23579,0,0),
(96989,3,288.012,1484.46,-13.3656,60000,2023702,0,0,0,0,0,0,0,0,1.08004,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2023702; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2023702,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2023702,57,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Thrallmar Grunt c.16580
UPDATE creature_movement SET script_id = 1658003, emote = 0 WHERE id = 57539 AND point = 2;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1658003; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1658003,2,1,7,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Thrallmar Grunt - correct spawnpoint 
UPDATE creature SET position_x = 107.232658, position_y = 2587.297607, position_z = 77.836243, orientation = 4.665862, spawndist = 0, MovementType = 0  WHERE guid = 57494;
-- Thrallmar Peon#1 c.16591
UPDATE creature_movement SET script_id = 1659101, emote = 0 WHERE id = 57575 AND point = 7;
UPDATE creature_movement SET script_id = 1659101, emote = 0 WHERE id = 57575 AND point = 20;
-- Thrallmar Peon#2 c.16591
UPDATE creature_movement SET script_id = 1659102, emote = 0 WHERE id = 57576 AND point = 7;
UPDATE creature_movement SET script_id = 1659101, emote = 0 WHERE id = 57576 AND point = 16;
UPDATE creature_movement SET script_id = 1659101, emote = 0 WHERE id = 57576 AND point = 23;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1659101,1659102); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1659101,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1659101,57,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1659102,3,1,233,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1659102,57,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Karlee Chaddis c.2330 + Paige Chaddis c.2331 and Gil c.3504
DELETE FROM creature_movement WHERE id = 90439;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(90439,10,-8899.88,815.041,89.3389,0,0,0,0,0,0,0,0,0,0,1.61278,0,0),
(90439,9,-8899.1,801.189,87.6105,2000,0,0,0,0,0,0,0,0,0,0.905926,0,0),
(90439,8,-8906.29,794.423,87.3173,0,0,0,0,0,0,0,0,0,0,1.03552,0,0),
(90439,7,-8907.48,788.261,87.7863,0,0,0,0,0,0,0,0,0,0,2.23875,0,0),
(90439,6,-8883.45,758.191,95.4731,2000,0,0,0,0,0,0,0,0,0,2.48536,0,0),
(90439,5,-8879.54,756.138,96.2687,0,0,0,0,0,0,0,0,0,0,2.91262,0,0),
(90439,4,-8870.51,760.372,96.7027,0,0,0,0,0,0,0,0,0,0,2.45148,0,0),
(90439,3,-8866.15,756.326,97.8264,2000,0,0,0,0,0,0,0,0,0,2.16089,0,0),
(90439,2,-8860.26,747.938,99.9222,0,0,0,0,0,0,0,0,0,0,2.15696,0,0),
(90439,1,-8856.26,741.91,100.666,0,0,0,0,0,0,0,0,0,0,2.15696,0,0),
(90439,11,-8899.09,826.687,92.5864,0,0,0,0,0,0,0,0,0,0,1.612,0,0),
(90439,12,-8905.65,841.38,95.4271,4000,0,0,0,0,0,0,0,0,0,2.0691,0,0),
(90439,13,-8905.3,845.868,95.7969,0,0,0,0,0,0,0,0,0,0,1.25386,0,0),
(90439,14,-8898.15,863.912,96.2546,0,0,0,0,0,0,0,0,0,0,1.15097,0,0),
(90439,15,-8893.39,873.065,98.9773,2000,0,0,0,0,0,0,0,0,0,1.18867,0,0),
(90439,16,-8888.58,889.208,102.944,0,0,0,0,0,0,0,0,0,0,1.23108,0,0),
(90439,17,-8888.8,897.531,105.943,0,0,0,0,0,0,0,0,0,0,1.85783,0,0),
(90439,18,-8896.33,913.303,110.988,2000,0,0,0,0,0,0,0,0,0,2.08559,0,0),
(90439,19,-8904.33,926.304,114.899,0,0,0,0,0,0,0,0,0,0,2.1657,0,0),
(90439,20,-8919.41,948.481,117.337,2000,0,0,0,0,0,0,0,0,0,2.38247,0,0),
(90439,21,-8966.43,954.028,117.362,0,0,0,0,0,0,0,0,0,0,3.01629,0,0),
(90439,22,-8982.42,966.381,116.043,4000,0,0,0,0,0,0,0,0,0,2.73433,0,0),
(90439,23,-8999.42,964.996,116.326,0,0,0,0,0,0,0,0,0,0,3.39643,0,0),
(90439,24,-9012.36,953.626,116.256,2000,0,0,0,0,0,0,0,0,0,4.26115,0,0),
(90439,25,-9008.41,945.283,116.895,0,0,0,0,0,0,0,0,0,0,5.53821,0,0),
(90439,26,-9000.86,940.914,117.094,0,0,0,0,0,0,0,0,0,0,5.82645,0,0),
(90439,27,-8998.38,939.901,117.094,2000,0,0,0,0,0,0,0,0,0,5.91284,0,0),
(90439,28,-8996.34,945.169,117.097,22000,233001,0,0,0,0,0,0,0,0,1.17061,0,0),
(90439,29,-8999.05,940.572,117.096,0,0,0,0,0,0,0,0,0,0,4.25251,0,0),
(90439,30,-9002.62,941.706,117.095,0,0,0,0,0,0,0,0,0,0,2.66993,0,0),
(90439,31,-9012.38,947.61,116.227,2000,0,0,0,0,0,0,0,0,0,2.48301,0,0),
(90439,32,-9012.45,951.694,116.246,0,0,0,0,0,0,0,0,0,0,1.07008,0,0),
(90439,33,-9004.83,961.988,116.276,0,0,0,0,0,0,0,0,0,0,0.834459,0,0),
(90439,34,-8998.64,965.802,116.292,4000,0,0,0,0,0,0,0,0,0,0.086759,0,0),
(90439,35,-8983.94,966.422,116.028,0,0,0,0,0,0,0,0,0,0,0.063197,0,0),
(90439,36,-8980.01,965.284,116.256,0,0,0,0,0,0,0,0,0,0,5.80289,0,0),
(90439,37,-8957.87,953.377,117.299,2000,0,0,0,0,0,0,0,0,0,5.77933,0,0),
(90439,38,-8920.67,947.641,117.337,0,0,0,0,0,0,0,0,0,0,6.1304,0,0),
(90439,39,-8900.95,920.6,113.443,0,0,0,0,0,0,0,0,0,0,5.2806,0,0),
(90439,40,-8894.54,911.478,110.762,2000,0,0,0,0,0,0,0,0,0,0.551718,0,0),
(90439,41,-8877.53,920.808,107.603,0,0,0,0,0,0,0,0,0,0,0.508521,0,0),
(90439,42,-8854.97,933.374,101.999,0,0,0,0,0,0,0,0,0,0,0.508521,0,0),
(90439,43,-8848.88,930.711,102.495,3000,0,0,0,0,0,0,0,0,0,0.572924,0,0),
(90439,44,-8834.61,940.936,105.143,0,0,0,0,0,0,0,0,0,0,0.576851,0,0),
(90439,45,-8818.28,953.205,100.678,0,0,0,0,0,0,0,0,0,0,0.576065,0,0),
(90439,46,-8815.14,952.722,100.867,4000,0,0,0,0,0,0,0,0,0,5.93091,0,0),
(90439,47,-8804.01,942.261,101.241,0,0,0,0,0,0,0,0,0,0,0.612193,0,0),
(90439,48,-8802.37,936.981,101.242,0,0,0,0,0,0,0,0,0,0,5.3827,0,0),
(90439,49,-8777.24,909.299,100.262,3000,0,0,0,0,0,0,0,0,0,5.43768,0,0),
(90439,50,-8766.76,893.892,101.386,0,0,0,0,0,0,0,0,0,0,5.57355,0,0),
(90439,51,-8737.03,892.761,101.221,0,0,0,0,0,0,0,0,0,0,6.22072,0,0),
(90439,52,-8731.93,886.272,101.744,3000,0,0,0,0,0,0,0,0,0,5.39605,0,0),
(90439,53,-8723.13,875.04,102.678,0,0,0,0,0,0,0,0,0,0,5.39605,0,0),
(90439,54,-8712.31,861.661,97.2752,0,0,0,0,0,0,0,0,0,0,5.39605,0,0),
(90439,55,-8712.2,853.618,96.8655,3000,0,0,0,0,0,0,0,0,0,4.39388,0,0),
(90439,56,-8725.87,834.533,96.149,0,0,0,0,0,0,0,0,0,0,4.1614,0,0),
(90439,57,-8726.58,813.587,97.0276,4000,0,0,0,0,0,0,0,0,0,4.89182,0,0),
(90439,58,-8717.15,795.784,97.0391,4000,0,0,0,0,0,0,0,0,0,4.9201,0,0),
(90439,59,-8721.79,782.622,97.8839,0,0,0,0,0,0,0,0,0,0,4.11114,0,0),
(90439,60,-8732.2,766.047,98.0898,0,0,0,0,0,0,0,0,0,0,4.3444,0,0),
(90439,61,-8724.93,751.443,98.2043,2000,0,0,0,0,0,0,0,0,0,5.41804,0,0),
(90439,62,-8713.3,732.548,97.8146,4000,0,0,0,0,0,0,0,0,0,5.42668,0,0),
(90439,63,-8699.05,715.705,97.0168,0,0,0,0,0,0,0,0,0,0,5.42668,0,0),
(90439,64,-8661.63,744.699,96.6531,2000,0,0,0,0,0,0,0,0,0,0.754345,0,0),
(90439,65,-8660.26,765.872,96.6997,0,0,0,0,0,0,0,0,0,0,1.31041,0,0),
(90439,66,-8634.36,787.361,96.6525,2000,0,0,0,0,0,0,0,0,0,0.685231,0,0),
(90439,67,-8632.43,787.372,96.6512,2000,0,0,0,0,0,0,0,0,0,0.394633,0,0),
(90439,68,-8606.16,761.17,96.7387,0,0,0,0,0,0,0,0,0,0,5.49894,0,0),
(90439,69,-8592.08,756.77,96.651,1000,0,0,0,0,0,0,0,0,0,5.91598,0,0),
(90439,70,-8579.7,737.671,96.7114,4000,0,0,0,0,0,0,0,0,0,4.61379,0,0),
(90439,71,-8594.53,717.706,96.6514,0,0,0,0,0,0,0,0,0,0,4.03574,0,0),
(90439,72,-8581.67,697.638,97.0168,0,0,0,0,0,0,0,0,0,0,5.41254,0,0),
(90439,73,-8561.08,673.827,97.0168,2000,0,0,0,0,0,0,0,0,0,0.603542,0,0),
(90439,74,-8536.53,690.079,97.6665,0,0,0,0,0,0,0,0,0,0,5.39731,0,0),
(90439,75,-8528.41,679.123,100.793,0,0,0,0,0,0,0,0,0,0,5.3439,0,0),
(90439,76,-8517.6,662.84,102.123,2000,0,0,0,0,0,0,0,0,0,5.3439,0,0),
(90439,77,-8510.36,651.605,100.292,0,0,0,0,0,0,0,0,0,0,5.24573,0,0),
(90439,78,-8516.68,643.439,100.134,2000,0,0,0,0,0,0,0,0,0,3.75426,0,0),
(90439,79,-8557.25,615.273,102.337,2000,0,0,0,0,0,0,0,0,0,3.42125,0,0),
(90439,80,-8563.65,615.408,102.278,0,0,0,0,0,0,0,0,0,0,3.78646,0,0),
(90439,81,-8583.79,586.194,103.594,0,0,0,0,0,0,0,0,0,0,4.3598,0,0),
(90439,82,-8584.4,560.743,101.871,4000,0,0,0,0,0,0,0,0,0,5.1397,0,0),
(90439,83,-8578.23,543.501,101.782,0,0,0,0,0,0,0,0,0,0,3.81238,0,0),
(90439,84,-8593.35,530.953,105.659,2000,0,0,0,0,0,0,0,0,0,3.80845,0,0),
(90439,85,-8609.85,515.571,103.841,2000,0,0,0,0,0,0,0,0,0,3.97025,0,0),
(90439,86,-8616.86,517.629,103.218,0,0,0,0,0,0,0,0,0,0,2.3162,0,0),
(90439,87,-8657.5,553.006,96.9502,2000,0,0,0,0,0,0,0,0,0,2.64214,0,0),
(90439,88,-8673.57,552.873,97.2864,2000,0,0,0,0,0,0,0,0,0,3.2249,0,0),
(90439,89,-8713.67,519.808,97.1597,0,0,0,0,0,0,0,0,0,0,2.19446,0,0),
(90439,90,-8717.22,524.985,98.1892,0,0,0,0,0,0,0,0,0,0,2.27221,0,0),
(90439,91,-8745.36,557.023,97.6718,2000,0,0,0,0,0,0,0,0,0,2.37371,0,0),
(90439,92,-8745,566.133,97.4006,0,0,0,0,0,0,0,0,0,0,1.01418,0,0),
(90439,93,-8738.14,576.508,97.5043,0,0,0,0,0,0,0,0,0,0,2.44518,0,0),
(90439,94,-8769.94,608.175,97.1405,2000,0,0,0,0,0,0,0,0,0,2.38706,0,0),
(90439,95,-8795.54,589.658,97.4546,4000,0,0,0,0,0,0,0,0,0,2.33208,0,0),
(90439,96,-8832.6,630.401,94.0918,0,0,0,0,0,0,0,0,0,0,2.28496,0,0),
(90439,97,-8851.55,661.112,97.1319,0,0,0,0,0,0,0,0,0,0,0.659181,0,0),
(90439,98,-8824.74,678.622,97.5366,10000,0,0,0,0,0,0,0,0,0,1.97629,0,0),
(90439,99,-8847.34,726.835,97.6974,10000,0,0,0,0,0,0,0,0,0,2.05091,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 233001; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(233001,2,0,0,0,0,0,0,2000005180,0,0,0,0,0,0,0,''),
(233001,7,0,0,0,2331,30,7,2000005183,0,0,0,0,0,0,0,'force buddy to: say text'),
(233001,12,0,0,0,0,0,0,2000005181,0,0,0,0,0,0,0,''),
(233001,15,0,0,0,3504,30,7,2000005184,0,0,0,0,0,0,0,'force buddy to: say text'),
(233001,19,0,0,0,0,0,0,2000005182,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_creature_movement WHERE id = 233001; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(233001,2,0,0,0,0,0,0,2000005180,0,0,0,0,0,0,0,''),
(233001,7,0,0,0,2331,30,7,2000005183,0,0,0,0,0,0,0,'force buddy to: say text'),
(233001,12,0,0,0,0,0,0,2000005181,0,0,0,0,0,0,0,''),
(233001,15,0,0,0,3504,30,7,2000005184,0,0,0,0,0,0,0,'force buddy to: say text'),
(233001,19,0,0,0,0,0,0,2000005182,0,0,0,0,0,0,0,'');
UPDATE db_script_string SET emote = 1 WHERE entry IN (2000005180,2000005181,2000005182,2000005183,2000005184);
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid = 90443; -- Gil c.3504
DELETE FROM creature_movement WHERE id = 90443;
UPDATE creature SET position_x = -8856.097656, position_y = 740.346375, position_z = 100.655151, orientation = 2.094842, MovementType = 0, spawndist = 0  WHERE guid = 90440; -- Paige Chaddis correct spawn point
DELETE FROM creature_movement WHERE id = 90440; -- Paige Chaddis c.2331
DELETE FROM creature_linking_template WHERE entry IN (2331,3504); -- link between 'Karlee Chaddis' with 'Gil + Paige Chaddis'
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(2331,0,2330,656,20),
(3504,0,2330,656,20);
-- Janey Anship c.1413 -- script redone completly - all randomized texts added ;)
DELETE FROM creature_movement WHERE id = 86596;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(86596,1,-8953.9,862.547,104.957,0,0,0,0,0,0,0,0,0,0,6.10494,0,0),
(86596,2,-8932.12,857.927,100.803,750,0,0,0,0,0,0,0,0,0,6.06331,0,0),
(86596,3,-8909.04,850.187,96.281,0,0,0,0,0,0,0,0,0,0,5.95964,0,0),
(86596,4,-8896.57,865.822,96.8556,0,0,0,0,0,0,0,0,0,0,0.87497,0,0),
(86596,5,-8890.18,881.888,101.184,0,0,0,0,0,0,0,0,0,0,1.19227,0,0),
(86596,6,-8888.17,893.701,104.619,0,141301,0,0,0,0,0,0,0,0,1.40276,0,0), -- Janey Anship
(86596,7,-8894.17,909.79,110.395,0,0,0,0,0,0,0,0,0,0,1.9274,0,0),
(86596,8,-8870.31,923.272,105.91,0,0,0,0,0,0,0,0,0,0,0.503477,0,0),
(86596,9,-8855.94,931.187,101.845,0,0,0,0,0,0,0,0,0,0,0.503477,0,0),
(86596,10,-8843.91,933.491,104.097,500,0,0,0,0,0,0,0,0,0,0.189317,0,0),
(86596,11,-8816.65,953.442,100.743,0,141304,0,0,0,0,0,0,0,0,0.530966,0,0), -- Lisan Pierce
(86596,12,-8767.52,895.508,101.256,0,0,0,0,0,0,0,0,0,0,5.41064,0,0),
(86596,13,-8753.45,892,101.896,0,0,0,0,0,0,0,0,0,0,6.03896,0,0),
(86596,14,-8740.3,893.588,101.375,0,0,0,0,0,0,0,0,0,0,0.120202,0,0),
(86596,15,-8726.64,877.216,102.712,0,0,0,0,0,0,0,0,0,0,5.4075,0,0),
(86596,16,-8711.78,859.391,96.9622,1250,0,0,0,0,0,0,0,0,0,5.4075,0,0),
(86596,17,-8714.17,851.672,96.7801,1250,0,0,0,0,0,0,0,0,0,4.41162,0,0),
(86596,18,-8724.59,835.118,96.1396,0,0,0,0,0,0,0,0,0,0,4.15087,0,0),
(86596,19,-8727.53,820.133,97.0495,0,0,0,0,0,0,0,0,0,0,4.51843,0,0),
(86596,20,-8723.35,807.987,97.2959,0,0,0,0,0,0,0,0,0,0,5.02973,0,0),
(86596,21,-8717.8,795.688,96.9682,0,0,0,0,0,0,0,0,0,0,5.13654,0,0),
(86596,22,-8720.86,784.235,97.7513,0,0,0,0,0,0,0,0,0,0,4.45167,0,0),
(86596,23,-8730.39,769.812,98.1267,750,0,0,0,0,0,0,0,0,0,4.13751,0,0),
(86596,24,-8729.96,761.621,98.2494,0,0,0,0,0,0,0,0,0,0,4.76583,0,0),
(86596,25,-8726.06,753.976,98.2668,0,141306,0,0,0,0,0,0,0,0,5.18366,0,0), -- Suzanne
(86596,26,-8714.42,737.952,97.8087,0,0,0,0,0,0,0,0,0,0,5.34074,0,0),
(86596,27,-8728.74,725.086,101.267,0,0,0,0,0,0,0,0,0,0,3.87362,0,0),
(86596,28,-8738.14,715.533,100.152,500,0,0,0,0,0,0,0,0,0,4.05897,0,0),
(86596,29,-8742.74,709.527,98.3091,0,0,0,0,0,0,0,0,0,0,4.05897,0,0),
(86596,30,-8737.21,700.627,98.6984,0,141302,0,0,0,0,0,0,0,0,5.26849,0,0), --  Janey Anship
(86596,31,-8776.23,670.457,103.093,0,0,0,0,0,0,0,0,0,0,3.83749,0,0),
(86596,32,-8760.45,646.994,103.883,0,0,0,0,0,0,0,0,0,0,5.30462,0,0),
(86596,33,-8759.11,627.771,101.892,0,0,0,0,0,0,0,0,0,0,4.78861,0,0),
(86596,34,-8763.21,616.245,98.6119,0,0,0,0,0,0,0,0,0,0,4.37078,0,0),
(86596,35,-8779.99,602.334,97.3893,0,0,0,0,0,0,0,0,0,0,3.87048,0,0),
(86596,36,-8793.37,590.39,97.5755,500,0,0,0,0,0,0,0,0,0,3.87048,0,0),
(86596,37,-8815.81,615.518,94.9978,0,0,0,0,0,0,0,0,0,0,2.29968,0,0),
(86596,38,-8849.81,659.507,97.1312,0,0,0,0,0,0,0,0,0,0,2.21721,0,0),
(86596,39,-8834.43,672.377,98.2964,0,0,0,0,0,0,0,0,0,0,0.696682,0,0),
(86596,40,-8825.5,677.093,97.6638,0,0,0,0,0,0,0,0,0,0,0.486195,0,0),
(86596,41,-8838.31,708.928,97.6485,500,0,0,0,0,0,0,0,0,0,1.95332,0,0),
(86596,42,-8851.32,736.847,100.505,0,0,0,0,0,0,0,0,0,0,2.00673,0,0),
(86596,43,-8870.66,759.965,96.6871,0,0,0,0,0,0,0,0,0,0,2.26748,0,0),
(86596,44,-8880.96,756.982,96.1098,0,0,0,0,0,0,0,0,0,0,3.42359,0,0),
(86596,45,-8909.67,790.199,87.4738,0,0,0,0,0,0,0,0,0,0,2.27062,0,0),
(86596,46,-8918.12,784.468,87.4199,0,141307,0,0,0,0,0,0,0,0,3.73775,0,0), -- Suzanne
(86596,47,-8930.34,773.156,87.9818,0,0,0,0,0,0,0,0,0,0,3.89482,0,0),
(86596,48,-8961.17,770.851,93.8524,0,0,0,0,0,0,0,0,0,0,3.21624,0,0),
(86596,49,-8980.98,783.189,98.0365,0,0,0,0,0,0,0,0,0,0,2.58478,0,0),
(86596,50,-8990.43,800.731,102.354,0,0,0,0,0,0,0,0,0,0,2.08448,0,0),
(86596,51,-8994.98,823.243,104.806,0,0,0,0,0,0,0,0,0,0,1.77032,0,0),
(86596,52,-8990.49,849.74,105.812,0,0,0,0,0,0,0,0,0,0,1.40276,0,0),
(86596,53,-8992.48,859.067,105.647,12000,0,0,0,0,0,0,0,0,0,5.51011,0,0),
(86596,54,-8992.48,859.067,105.647,12000,0,0,0,0,0,0,0,0,0,5.51011,0,0),
(86596,55,-8992.48,859.067,105.647,12000,141305,0,0,0,0,0,0,0,0,5.51011,0,0), -- Lisan Pierce
(86596,56,-8992.48,859.067,105.647,12000,0,0,0,0,0,0,0,0,0,5.51011,0,0),
(86596,57,-8992.48,859.067,105.647,12000,0,0,0,0,0,0,0,0,0,5.51011,0,0),
(86596,58,-8992.48,859.067,105.647,12000,0,0,0,0,0,0,0,0,0,5.51011,0,0),
(86596,59,-8992.48,859.067,105.647,12000,141303,0,0,0,0,0,0,0,0,5.51011,0,0), -- Janey Anship
(86596,60,-8992.48,859.067,105.647,12000,0,0,0,0,0,0,0,0,0,5.51011,0,0),
(86596,61,-8992.48,859.067,105.647,12000,0,0,0,0,0,0,0,0,0,5.51011,0,0),
(86596,62,-8992.48,859.067,105.647,12000,0,0,0,0,0,0,0,0,0,5.51011,0,0),
(86596,63,-8992.48,859.067,105.647,12000,0,0,0,0,0,0,0,0,0,5.51011,0,0);
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid = 86597; -- Lisan Pierce c.1414 
DELETE FROM creature_movement WHERE id = 86597;
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid = 89294; -- Suzanne c.1415
DELETE FROM creature_movement WHERE id = 89294;
DELETE FROM creature_linking_template WHERE entry IN (1414,1415); -- link between 'Janey Anship' with 'Lisan Pierce + Suzanne'
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(1414,0,1413,656,30),
(1415,0,1413,656,30);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 141301 AND 141307; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- for Janey Anship
(141301,1,0,0,0,0,0,0,2000005148,2000005149,2000005150,2000005151,0,0,0,0,''),
(141301,4,0,0,0,1414,30,7,2000005156,2000005157,2000005158,2000005159,0,0,0,0,'force buddy to: say text'),
(141301,8,0,0,0,1415,30,7,2000005164,2000005165,2000005166,2000005169,0,0,0,0,'force buddy to: say text'),
(141302,1,0,0,0,0,0,0,2000005152,2000005153,2000005154,2000005155,0,0,0,0,''),
(141302,4,0,0,0,1415,30,7,2000005160,2000005161,2000005162,2000005163,0,0,0,0,'force buddy to: say text'),
(141302,8,0,0,0,1414,30,7,2000005170,2000005171,2000005172,2000005173,0,0,0,0,'force buddy to: say text'),
(141303,1,0,0,0,0,0,0,2000005149,2000005151,2000005153,2000005155,0,0,0,0,''),
(141303,4,0,0,0,1414,30,7,2000005156,2000005158,2000005160,2000005162,0,0,0,0,'force buddy to: say text'),
(141303,8,0,0,0,1415,30,7,2000005164,2000005172,2000005170,2000005166,0,0,0,0,'force buddy to: say text'),
-- for Lisan Pierce
(141304,1,0,0,0,1414,30,7,2000005148,2000005149,2000005150,2000005151,0,0,0,0,'force buddy to: say text'),
(141304,4,0,0,0,0,0,0,2000005156,2000005157,2000005158,2000005159,0,0,0,0,''),
(141304,8,0,0,0,1415,30,7,2000005164,2000005165,2000005166,2000005169,0,0,0,0,'force buddy to: say text'),
(141305,1,0,0,0,1414,30,7,2000005152,2000005153,2000005154,2000005155,0,0,0,0,'force buddy to: say text'),
(141305,4,0,0,0,1415,30,7,2000005160,2000005161,2000005162,2000005163,0,0,0,0,'force buddy to: say text'),
(141305,8,0,0,0,0,0,0,2000005170,2000005171,2000005172,2000005173,0,0,0,0,''),
-- for Suzanne
(141306,1,0,0,0,1415,30,7,2000005152,2000005153,2000005154,2000005155,0,0,0,0,'force buddy to: say text'),
(141306,4,0,0,0,1414,30,7,2000005160,2000005161,2000005162,2000005163,0,0,0,0,'force buddy to: say text'),
(141306,8,0,0,0,0,0,0,2000005170,2000005171,2000005172,2000005173,0,0,0,0,''),
(141307,1,0,0,0,1415,30,7,2000005148,2000005149,2000005150,2000005151,0,0,0,0,'force buddy to: say text'),
(141307,4,0,0,0,0,0,0,2000005156,2000005157,2000005158,2000005159,0,0,0,0,''),
(141307,8,0,0,0,1414,30,7,2000005170,2000005171,2000005172,2000005173,0,0,0,0,'force buddy to: say text');
DELETE FROM db_script_string WHERE entry BETWEEN 2000005148 AND 2000005166; -- already in DB (but we had to sort them correctly + remove duplicates)
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
-- first set
(2000005148,'If we reverse the Essence flows perhaps we can alter the polarity.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005149,'Why can\'t we just shift the array to compensate for the variance in the flux?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005150,'So then the array of magics would cascade into a chain reaction of positively charged energies.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005151,'The magical wards at that sholud be supported enough by the energy flux to certain the entity.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005152,'Maginor says that twisting alternating flows of positive energy actually creates a much more stable flow.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005153,'The portal will shift slightly, at this point if you cast a binding cantrip you will solidify it in place.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005154,'When the positively aligned energies collide with the negatively charged energies, they don\'t negate one another.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005155,'Putting in twelve centers of focus might allow the magical energies to form more solidly, adding the necessary stability.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
-- 2nd set
(2000005156,'I think not, I don\'t need to be blown up again.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005157,'I suppose that could work, if we had twenty people to cast it with.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005158,'But wouldn\'t that mean crossing the streams? Isn\'t that really bad?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005159,'But what if the resulting frequency shift were to send magical feedback up the flows?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005160,'But isn\'t that what caused the initial problems with Adept Syleria\'s magical formula?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005161,'That will unbalance the magical focus, though, and cause a reverse vibration in the ether.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005162,'Wouldn\'t that cause the weave to unravel if not properly anchored before starting the casting?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005163,'The resultant energies could collapse though, and that could cause an energy flux that would give you a migraine for weeks.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
-- 3rd set
(2000005164,'At least we wouldn\'t be around to have to clean it up.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005165,'Wow, all of this for a love potion. Hope he\'s worth it.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005166,'Only if we didn\'t follow the proper initialization procedures.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL);
DELETE FROM db_script_string WHERE entry BETWEEN 2000005169 AND 2000005173; -- already in DB (but we had to sort them correctly + remove duplicates) 
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005169,'What if we used three focuses in Tyrean pattern? That should solve it.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005170,'Always so negative. The chances of that happening are between zero and none.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005171,'If we use the Surian theory, then yes, but not if we go with the Y\'serian approach.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005172,'But if we stabilize it with an anchor thread at the appropriate energy crux then it should work.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005173,'If we use the appropriate sequence we should be ok. Will just take some serious studying before we start.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL);
DELETE FROM db_script_string WHERE entry BETWEEN 2000005174 AND 2000005179;


-- ---------------
-- Schmoo_fix
-- ---------------
-- cala, remove bad script, handled with SD2
UPDATE quest_template SET StartScript = 0 WHERE entry = 945;
DELETE FROM dbscripts_on_quest_start WHERE id = 945;
-- Scroll of Recall spells
DELETE FROM spell_target_position WHERE id IN (60323,60324,60325,60326,60327,60328,60329,60330,60331,60332,60333,60334,60335);
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(60323,0,-5506.339,-704.348,392.686,0.595), -- Steelgrills Depot
(60324,0,-9470.760,3.909,49.794,4.802), -- Lions Pride Inn, Goldshire
(60325,1,-3721.306,-4411.906,25.247,0.831), -- Theramore isle, Dustwallow Marsh
(60326,0,286.314,-2184.086,122.612,2.271), -- Aerie Peak, The Hinterlands
(60327,1,6395.708,433.256,33.260,0.566), -- Auberdine, Darkshore
(60328,0,-14412.923,692.017,22.248,1.231), -- Boote Bay
(60329,1,-7135.717,-3787.769,8.799,5.992), -- Tanaris, Gadgetzan
(60330,0,-10336.138,-2934.057,116.723,4.523), -- Swamp of Sorrows, Z coord is intended
(60331,0,-10446.900,-3261.909,20.179,5.875), -- Stonard, Swamp of Sorrows
(60332,0,-103.988,-902.795,55.534,5.924), -- Tarren Mill, Hillsbrad Foothils
(60333,0,1804.836,196.322,70.399,1.572), -- Undercity
(60334,1,-1060.266,23.137,141.455,5.967), -- Thunder Bluff
(60335,1,-506.224,-2590.084,113.150,2.445); -- Barrens, The Crossroads
-- Zum'Rah Zombies (hack due to non-existing GO)
DELETE FROM dbscripts_on_go_template_use WHERE id = 128403;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, data_flags, comments) VALUES
(128403, 2, 15, 10247, 0x02, 'cast Summon Zul\'Farrak Zombies');
-- dufernst, spell effect of 72254
DELETE FROM dbscripts_on_spell WHERE id = 72254;
INSERT INTO dbscripts_on_spell (id, command, datalong, comments) VALUES
(72254, 15, 72293, 'Deathbringer Saurfang, cast Mark of the Fallen Champion');
-- Den (ru_mangos.ru) - small corrections to start-orientation
UPDATE battleground_template SET HordeStartO = 0.00391 WHERE id = 2;
UPDATE battleground_template SET AllianceStartO = 3.91992, HordeStartO = 0.88828 WHERE id = 3;
UPDATE battleground_template SET AllianceStartO = 3.22092, HordeStartO = 0.01649 WHERE id = 7;
-- stfx - original author Kinzcool (xyz confirmed)
DELETE FROM spell_target_position WHERE id = 53821;
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(53821, 0, 2359.64, -5662.41, 382.261, 0.596899); -- Teach: Death Gate
-- Drop stupid ReqSpellCast from a quest
UPDATE quest_template SET ReqSpellCast1 = 0 WHERE entry = 2118;
-- Forum: axel http://udb.no-ip.org/index.php/topic,13136.0.html -- Grz3s: source old.wowhead -- checked
DELETE FROM skinning_loot_template WHERE entry = 12899;
INSERT INTO skinning_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) VALUES
(12899, 8170, 55, 1, 1, 1, 0),
(12899, 15414, 25, 1, 1, 1, 0),
(12899, 8165, 11, 1, 1, 1, 0),
(12899, 8171, 4, 1, 1, 1, 0);

-- Cleanup
UPDATE gameobject SET state = 0 WHERE id IN (SELECT entry FROM gameobject_template WHERE type = 0 AND data0 = 1);
UPDATE creature_template SET UnitFlags = UnitFlags&~2048 WHERE UnitFlags&2048 = 2048;
UPDATE creature_template SET UnitFlags = UnitFlags&~524288 WHERE UnitFlags&524288 = 524288;
UPDATE creature_template SET UnitFlags = UnitFlags&~67108864 WHERE UnitFlags&67108864 = 67108864;
UPDATE creature_template SET UnitFlags = UnitFlags&~8388608 WHERE UnitFlags&8388608 = 8388608;
UPDATE creature, creature_template SET creature.curhealth = creature_template.MinLevelHealth,creature.curmana = creature_template.MinLevelMana WHERE creature.id = creature_template.entry and creature_template.RegenerateStats = 1;
UPDATE creature_template SET DynamicFlags = DynamicFlags &~ 223;
UPDATE creature_template SET NpcFlags = NpcFlags&~16777216; -- UNIT_NPC_FLAG_SPELLCLICK
UPDATE creature_template c1, creature_template c2 SET c2.UnitClass = c1.UnitClass, c2.NpcFlags = c1.NpcFlags, c2.FactionAlliance = c1.FactionAlliance, c2.FactionHorde = c1.FactionHorde, c2.SpeedWalk = c1.SpeedWalk, c2.SpeedRun = c1.SpeedRun, c2.scale = c1.scale, c2.InhabitType = c1.InhabitType, c2.MovementType = c1.MovementType, c2.UnitFlags = c1.UnitFlags WHERE c2.entry = c1.DifficultyEntry1;
UPDATE creature_template c1, creature_template c2 SET c2.UnitClass = c1.UnitClass, c2.NpcFlags = c1.NpcFlags, c2.FactionAlliance = c1.FactionAlliance, c2.FactionHorde = c1.FactionHorde, c2.SpeedWalk = c1.SpeedWalk, c2.SpeedRun = c1.SpeedRun, c2.scale = c1.scale, c2.InhabitType = c1.InhabitType, c2.MovementType = c1.MovementType, c2.UnitFlags = c1.UnitFlags WHERE c2.entry = c1.DifficultyEntry2;
UPDATE creature_template c1, creature_template c2 SET c2.UnitClass = c1.UnitClass, c2.NpcFlags = c1.NpcFlags, c2.FactionAlliance = c1.FactionAlliance, c2.FactionHorde = c1.FactionHorde, c2.SpeedWalk = c1.SpeedWalk, c2.SpeedRun = c1.SpeedRun, c2.scale = c1.scale, c2.InhabitType = c1.InhabitType, c2.MovementType = c1.MovementType, c2.UnitFlags = c1.UnitFlags WHERE c2.entry = c1.DifficultyEntry3;
-- UPDATE gameobject_template SET flags=flags&~4 WHERE type IN (2,19,17);
UPDATE creature SET MovementType = 0 WHERE spawndist = 0 AND MovementType = 1;
UPDATE creature SET Spawndist = 0 WHERE MovementType = 0;
UPDATE quest_template SET SpecialFlags = SpecialFlags|1 WHERE QuestFlags = QuestFlags|4096;
UPDATE quest_template SET SpecialFlags = SpecialFlags|1 WHERE QuestFlags = QuestFlags|32768;
DELETE FROM go,gt USING gameobject go LEFT JOIN gameobject_template gt ON go.id = gt.entry WHERE gt.entry IS NULL;
DELETE FROM gi,gt USING gameobject_involvedrelation gi LEFT JOIN gameobject_template gt ON gi.id = gt.entry WHERE gt.entry IS NULL;
DELETE FROM gqr,gt USING gameobject_questrelation gqr LEFT JOIN gameobject_template gt ON gqr.id = gt.entry WHERE gt.entry IS NULL;
DELETE FROM ge,go USING game_event_gameobject ge LEFT JOIN gameobject go ON ge.guid = go.guid WHERE go.guid IS NULL;
DELETE FROM dbscripts_on_go_use WHERE id NOT IN (SELECT guid FROM gameobject);
DELETE FROM dbscripts_on_go_use WHERE command IN (11, 12) AND datalong!=0 AND datalong NOT IN (SELECT guid FROM gameobject);
DELETE FROM gameobject_battleground WHERE guid NOT IN (SELECT guid FROM gameobject);
DELETE FROM creature_battleground WHERE guid NOT IN (SELECT guid FROM creature);
DELETE FROM creature_addon WHERE guid NOT IN (SELECT guid FROM creature);
UPDATE creature_addon SET moveflags = moveflags &~ 0x00000100; -- SPLINEFLAG_DONE
UPDATE creature_addon SET moveflags = moveflags &~ 0x00000200; -- SPLINEFLAG_FALLING
UPDATE creature_addon SET moveflags = moveflags &~ 0x00000800; -- SPLINEFLAG_TRAJECTORY (can crash client)
UPDATE creature_addon SET moveflags = moveflags &~ 0x00200000; -- SPLINEFLAG_UNKNOWN3 (can crash client)
UPDATE creature_addon SET moveflags = moveflags &~ 0x08000000;
UPDATE creature_template_addon SET moveflags = moveflags &~ 0x00000100;
UPDATE creature_template_addon SET moveflags = moveflags &~ 0x00000200;
UPDATE creature_template_addon SET moveflags = moveflags &~ 0x00000800;
UPDATE creature_template_addon SET moveflags = moveflags &~ 0x00200000;
UPDATE creature_template_addon SET moveflags = moveflags &~ 0x08000000;
DELETE FROM npc_gossip WHERE npc_guid NOT IN (SELECT guid FROM creature);
DELETE FROM creature_movement WHERE id NOT IN (SELECT guid FROM creature);
DELETE FROM game_event_creature WHERE guid NOT IN (SELECT guid FROM creature);
DELETE FROM creature_questrelation WHERE id NOT IN (SELECT entry FROM creature_template);
DELETE FROM creature_onkill_reputation WHERE creature_id NOT IN (SELECT entry FROM creature_template);
UPDATE creature_template SET NpcFlags=NpcFlags|2 WHERE entry IN (SELECT id FROM creature_questrelation UNION SELECT id FROM creature_involvedrelation);
UPDATE db_version set version = 'UDB 0.12.2 (407) for CMaNGOS 12735 with SD2 SQL for rev. 3041';
UPDATE db_version set cache_id = 407;

