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
-- Darkspear Axe Thrower - (Hellfire Peninsula)
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(140485,18970,530,1,1,0,300,-232.374,1083.71,48.3245,1.55738,25,0,0,13084,0,0,0);
-- Stormwind Soldier - (Hellfire Peninsula)
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(140486,18948,530,1,1,0,3,-252.769,1093.94,41.668,1.5708,25,0,0,13084,0,0,0),
(140487,18948,530,1,1,0,3,-272.204,1097.1,41.9803,1.5708,25,0,0,12652,0,0,0);
-- Terokkar Trigger
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(140581,23102,530,1,1,0,0,-2443.7,4634.14,158.221,1.10586,25,0,0,4120,0,0,0),
(140582,23102,530,1,1,0,0,-2482.24,4661.68,161.413,3.51227,25,0,0,4120,0,0,0),
(140583,23102,530,1,1,0,0,-2384.98,4552.59,165.69,4.99611,25,0,0,4120,0,0,0),
(140584,23102,530,1,1,0,0,-2432.75,4458.1,166.076,0.907029,25,0,0,4120,0,0,0);
-- Kor'kron Overseer - missing in undercity
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(140585,36213,0,1,1,0,2009,1446.82,415.778,-84.9914,4.05085,180,0,0,15952,0,0,0);
-- Rat - missing in undercity
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(140586,4075,0,1,1,0,0,1412.15,417.707,-84.9654,3.36426,180,5,0,8,0,0,1),
(140587,4075,0,1,1,0,0,1428.02,406.496,-85.2519,3.37997,180,20,0,8,0,0,1),
(140588,4075,0,1,1,0,0,1452.04,401.733,-84.9925,0.222665,180,5,0,8,0,0,1),
(140589,4075,0,1,1,0,0,1407.63,370.503,-84.953,3.96901,180,5,0,8,0,0,1);
-- Crag Boar -- Dun Morogh
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(140590,1125,0,1,1,0,0,-6119.69,-200.734,434.551,0.361272,180,5,0,102,0,0,1);
-- Horizont Missing team
-- Roland Geardabbler
INSERT INTO creature (guid,id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140775,8394,1,1,1,0,0,1746.45,-5861.29,-91.4165,3.20841,300,0,0,2762,3575,0,0);
DELETE FROM creature_template_addon WHERE entry = 8394;
-- Horizon Scout Cook
INSERT INTO creature (guid,id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140776,8388,1,1,1,0,0,1747.62,-5862.27,-90.9249,3.17332,300,0,0,2666,0,0,0);
-- Horizon Scout First Mate 
INSERT INTO creature (guid,id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140777,8387,1,1,1,0,0,1747.24,-5859.6,-90.3817,3.98543,300,0,0,2766,0,0,0);
-- Horizon Scout Engineer
INSERT INTO creature (guid,id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140778,8389,1,1,1,0,0,1748.87,-5863.46,-90.2665,2.83088,300,0,0,2666,0,0,0);
-- Second Mate Shandril
INSERT INTO creature (guid,id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140779,8478,1,1,1,0,0,1916.44,-5733.37,10.1936,4.10397,300,0,0,2766,0,0,0);
DELETE FROM creature_template_addon WHERE entry = 8478;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(8478,0,8,1,0,0,0,NULL);

-- Xfurry
-- add link to the midsummer event for all 3 creatures
DELETE FROM game_event_creature WHERE guid IN (140591, 140592, 140593);
INSERT INTO game_event_creature (guid, event) VALUES
(140591, 1),
(140592, 1),
(140593, 1);
-- Veneratus spawn node npc
INSERT INTO creature (guid,id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140594,21334, 530, 1, 1, 0, 0, -4051.381, 2616.373, 127.9368, 5.078908, 300, 0, 0, 9250, 0, 0, 0);


-- ------------------
-- NPC w/ script, waypoint, pool or game event
-- ------------------

-- clean up
DELETE FROM creature WHERE guid BETWEEN 140623 AND 140771;
DELETE FROM creature_addon WHERE guid BETWEEN 140623 AND 140774;
DELETE FROM creature_movement WHERE id BETWEEN 140623 AND 140774;
DELETE FROM creature_linking WHERE guid BETWEEN 140623 AND 140774;

-- Grz3s
-- Witherbark Trolls event - (Arathi Highlands)
INSERT INTO creature (guid,id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140693,2556,0,1,1,0,62,-1234.76,-3536.47,46.5823,5.929,120,0,0,1342,0,0,0),
(140694,2552,0,1,1,0,0,-1232.1,-3535.9,46.4729,5.6706,120,0,0,1107,0,0,0),
(140695,2552,0,1,1,0,0,-1230.75,-3533.46,46.0261,5.83082,120,0,0,1107,0,0,0),
(140696,2552,0,1,1,0,0,-1229.85,-3535.1,46.3087,5.918,120,0,0,1050,0,0,0),
(140697,2553,0,1,1,0,9,-1233.3,-3533.72,46.0859,5.80098,120,0,0,847,2253,0,2); -- master
DELETE FROM creature_movement WHERE id = 140697;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(140697,1,-1233.3,-3533.72,46.0859,100000,0,0,0,0,0,0,0,0,0,5.80098,0,0),
(140697,2,-1233.3,-3533.72,46.0859,3000,255301,0,0,0,0,0,0,0,0,5.80098,0,0),
(140697,3,-1233.3,-3533.72,46.0859,1000,255302,0,0,0,0,0,0,0,0,5.80098,0,0),
(140697,4,-1162.87,-3563.07,50.5074,0,0,0,0,0,0,0,0,0,0,0.0411459,0,0),
(140697,5,-1032.97,-3550.54,55.9796,0,0,0,0,0,0,0,0,0,0,6.22908,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 255301 AND 255302;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(255301,0,31,2556,10,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(255301,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(255301,1,25,1,0,2556,140693,7 | 0x10,0,0,0,0,0,0,0,0,'RUN ON'),
(255301,1,25,1,0,2552,140694,7 | 0x10,0,0,0,0,0,0,0,0,'RUN ON'),
(255301,1,25,1,0,2552,140695,7 | 0x10,0,0,0,0,0,0,0,0,'RUN ON'),
(255301,1,25,1,0,2552,140696,7 | 0x10,0,0,0,0,0,0,0,0,'RUN ON'),
(255302,0,31,2556,100,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(255302,0,3,0,0,2556,140693,7 | 0x10,0,0,0,0,-1162.87,-3563.07,50.5074,0.0411459,''),
(255302,0,3,0,0,2552,140694,7 | 0x10,0,0,0,0,-1162.87,-3563.07,50.5074,0.0411459,''),
(255302,0,3,0,0,2552,140695,7 | 0x10,0,0,0,0,-1162.87,-3563.07,50.5074,0.0411459,''),
(255302,0,3,0,0,2552,140696,7 | 0x10,0,0,0,0,-1162.87,-3563.07,50.5074,0.0411459,''),
(255302,9,31,2556,100,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(255302,10,3,0,0,2556,140693,7 | 0x10,0,0,0,0,-1032.97,-3550.54,55.9796,6.22908,''),
(255302,10,3,0,0,2552,140694,7 | 0x10,0,0,0,0,-1032.97,-3550.54,55.9796,6.22908,''),
(255302,10,3,0,0,2552,140695,7 | 0x10,0,0,0,0,-1032.97,-3550.54,55.9796,6.22908,''),
(255302,10,3,0,0,2552,140696,7 | 0x10,0,0,0,0,-1032.97,-3550.54,55.9796,6.22908,'');
-- Kor'kron Overseer - missing in undercity
INSERT INTO creature (guid,id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140768,36213,0,1,1,0,2009,1418.86,388.783,-84.9909,0.942079,180,0,0,15952,0,0,0);
-- Blackwind Sabercat #1 - Terrokar Forest  -- missing spawn
INSERT INTO creature (guid,id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140769,21723,530,1,1,0,0,-3522.41,3254.19,300.692,0.0237059,300,0,0,9082,0,0,2);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(140769,1,-3512.91,3253.65,298.684,0,0,0,0,0,0,0,0,0,0,5.52543,0,0),
(140769,2,-3509.42,3247.42,297.527,0,0,0,0,0,0,0,0,0,0,4.89712,0,0),
(140769,3,-3508.96,3238.18,291.435,0,0,0,0,0,0,0,0,0,0,2.40741,0,0),
(140769,4,-3509.74,3247.4,297.482,0,0,0,0,0,0,0,0,0,0,1.56703,0,0),
(140769,5,-3510.9,3254.41,298.329,0,0,0,0,0,0,0,0,0,0,2.41352,0,0),
(140769,6,-3520.29,3251.55,300.414,0,0,0,0,0,0,0,0,0,0,3.74712,0,0),
(140769,7,-3529.47,3244.12,301.703,0,0,0,0,0,0,0,0,0,0,3.60732,0,0),
(140769,8,-3544.26,3234.75,303.708,0,0,0,0,0,0,0,0,0,0,3.92855,0,0),
(140769,9,-3550.47,3226.39,307.004,0,0,0,0,0,0,0,0,0,0,4.16495,0,0),
(140769,10,-3543.36,3236.64,303.118,0,0,0,0,0,0,0,0,0,0,0.771562,0,0),
(140769,11,-3523.98,3253.32,300.861,0,0,0,0,0,0,0,0,0,0,0.200578,0,0);
-- Blackwind Sabercat #2 - Terrokar Forest  -- missing spawn
INSERT INTO creature (guid,id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140770,21723,530,1,1,0,0,-3491.7,3240.65,299.471,5.0402,300,0,0,9335,0,0,2);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(140770,1,-3491.98,3230.37,298.39,0,0,0,0,0,0,0,0,0,0,4.26973,0,0),
(140770,2,-3499.64,3217.43,296.899,0,0,0,0,0,0,0,0,0,0,4.19904,0,0),
(140770,3,-3490.54,3233.88,298.693,0,0,0,0,0,0,0,0,0,0,1.81536,0,0),
(140770,4,-3497.68,3253.86,299.642,0,0,0,0,0,0,0,0,0,0,1.66849,0,0),
(140770,5,-3499.37,3269.09,301.012,0,0,0,0,0,0,0,0,0,0,1.70383,0,0),
(140770,6,-3501.71,3273.94,300.778,0,0,0,0,0,0,0,0,0,0,4.20925,0,0),
(140770,7,-3498.72,3268.99,301.056,0,0,0,0,0,0,0,0,0,0,5.13994,0,0),
(140770,8,-3498.38,3254.15,299.717,0,0,0,0,0,0,0,0,0,0,4.93181,0,0),
(140770,9,-3491.69,3241.45,299.476,0,0,0,0,0,0,0,0,0,0,5.19491,0,0);

-- ------------------------
-- forum
-- ------------------------
UPDATE item_template SET ContainerSlots = 8 WHERE entry = 11845; -- from Faxe_the_Slayer
-- Gossip text & Options for Tracy Proudwell -- from Malcrom
DELETE FROM gossip_menu WHERE entry IN (20020, 8544);
INSERT INTO gossip_menu (entry, text_id) VALUES (8544,10689);
UPDATE gossip_menu_option SET action_menu_id = 8544 WHERE menu_id = 7892 AND id = 1;
UPDATE gossip_menu_option SET menu_id = 8544 WHERE menu_id = 20020;
-- Shadowforge Brazier -- shouldn't have any flags (flag 16 will be added by spell) -- from Mightylink
UPDATE gameobject_template SET flags = 0 WHERE entry = 174744;
-- Deer Critter  -- from Axel
UPDATE creature SET MovementType = 1, spawndist = 20 WHERE guid = 32676;
-- Chieftain Earthbind - equip - from Axel
UPDATE creature_template SET EquipmentTemplateID = 1343 WHERE entry = 12791;
DELETE FROM creature_template_addon WHERE entry = 12791;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(12791,0,0,2,0,0,0,NULL);
-- Isha Awak - from Axel 
UPDATE creature SET MovementType = 2 WHERE guid = 15085;
DELETE FROM creature_movement WHERE id = 15085;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(15085, 1, -1949.31, -3817.22, -6.52593, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.23346, 0, 0),
(15085, 2, -1876.07, -3848.77, -9.3871, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.83291, 0, 0),
(15085, 3, -1807.86, -3875.06, -3.79004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.85254, 0, 0),
(15085, 4, -1768.57, -3918.63, -3.28865, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.46238, 0, 0),
(15085, 5, -1728, -3959.94, -7.35339, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.44504, 0, 0),
(15085, 6, -1683.23, -3962.82, -2.32115, 90000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.88708, 0, 0),
(15085, 7, -1728, -3959.94, -7.35339, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.79423, 0, 0),
(15085, 8, -1768.57, -3918.63, -3.28865, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.38422, 0, 0),
(15085, 9, -1807.86, -3875.06, -3.79004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.39994, 0, 0),
(15085, 10, -1876.07, -3848.77, -9.3871, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.80443, 0, 0),
(15085, 11, -1949.31, -3817.22, -6.52593, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.02435, 0, 0),
(15085, 12, -2025.94, -3814.75, -7.26146, 180000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.77136, 0, 0);


-- Xfurry
-- ------------------------
--  Various fixes
-- ------------------------
-- Baelog's Chest should be targetable/lootable. (sniff)
UPDATE gameobject_template SET flags = 0 WHERE entry = 123329;
-- quest 945
UPDATE quest_template SET StartScript = 0 WHERE entry = 945;
DELETE FROM dbscripts_on_quest_start WHERE id = 945;
-- quest 11521
DELETE FROM spell_script_target WHERE entry = 44941;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(44941, 0, 187073, 0);
-- quest 10514
DELETE FROM spell_script_target WHERE entry = 36652;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(36652, 1, 21347, 0);
-- quest 10540
-- The Cipher of Damnation - Ar'tor's Charge (q.10540) -H -A
DELETE FROM dbscripts_on_quest_start WHERE id = 10540;
INSERT INTO dbscripts_on_quest_start  (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10540,0,15,36620,0,0,0,0x06,0,0,0,0,0,0,0,0,'Cast Spirit Hunter'),
(10540,1,15,36613,0,21332,100,0x20,0,0,0,0,0,0,0,0,'Cast Aspect of the Spirit Hunter');
UPDATE quest_template SET StartScript = 10540 WHERE entry = 10540;
UPDATE creature_template SET FactionAlliance = 90, FactionHorde = 90 WHERE entry = 20427;
-- equipment (ytdb)
UPDATE creature_template SET EquipmentTemplateId = 4824, FactionAlliance = 35, FactionHorde = 35 WHERE entry = 21332;
DELETE FROM creature_equip_template WHERE entry = 4824;
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES (4824, 12294, 0, 30452);
DELETE FROM dbscripts_on_creature_death WHERE id = 20427;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, buddy_entry, search_radius, data_flags, dataint, comments) VALUES
(20427, 0, 0, 0, 21332, 100, 0x20, 2000000330, 'say veneratus epilogue 1'),
(20427, 3, 0, 0, 21332, 100, 0x20, 2000000331, 'say veneratus epilogue 2'),
(20427, 5, 15, 36781, 21332, 100, 0x20, 0, 'cast Despawn Spirit Hunter'),
(20427, 6, 14, 36620, 0, 0, 0x06, 0, 'remove Spirit Hunter aura'),
(20427, 6, 18, 0, 21332, 100, 0x20, 0, 'despawn spirit hunter');
DELETE FROM db_script_string WHERE entry IN (2000000330, 2000000331);
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000000330,'It is dying! The second part of the Cipher of Damnation is ours. I...',0,0,0,22,'spirit hunter - say epilogue 1'),
(2000000331,'I am fading... Return to Ar\'tor... Ret... rn... to...',0,0,0,0,'spirit hunter - say epilogue 2');
-- quest 10512
UPDATE creature_template SET MovementType = 0 WHERE entry = 21241;

-- ----------------
-- Sunwell
-- ----------------
DELETE FROM creature_template_addon WHERE entry = 24895;
UPDATE creature_template SET MinLevel = 74, MaxLevel = 74, MinLevelHealth = 424900, Armor = 7857, MinMeleeDmg = 226, MaxMeleeDmg = 339, InhabitType = InhabitType|4, RegenerateStats = 0 WHERE entry = 24895;
UPDATE creature_template SET FactionAlliance = 14, FactionHorde = 14, UnitFlags = UnitFlags|33554432, MinLevel = 70, MaxLevel = 70, MinLevelHealth = 4890, MaxLevelHealth = 4890 WHERE entry = 25879;
UPDATE creature_template SET FactionAlliance = 14, FactionHorde = 14, MinLevelHealth = 2835, MaxLevelHealth = 2835 WHERE entry = 25855;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70, UnitFlags = UnitFlags|33555200, MinLevelHealth = 6986, MaxLevelHealth = 6986 WHERE entry = 26262;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70, FactionAlliance = 16, FactionHorde = 16, UnitFlags = UnitFlags|33587200, MinLevelHealth = 97804, MaxLevelHealth = 97804 WHERE entry = 25653;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, UnitFlags = UnitFlags|32832, MinLevel = 70, MaxLevel = 70, MinLevelHealth = 78246, MaxLevelHealth = 78246, MinLevelMana = 78875, MaxLevelMana = 78875 WHERE entry = 25708;
UPDATE creature_template SET MinLevel = 73, MaxLevel = 73, MinLevelHealth = 1805825, MaxLevelHealth = 1805825, MinLevelMana = 1693500, MaxLevelMana = 1693500, UnitFlags = UnitFlags|32832 WHERE entry = 25319;
UPDATE creature_template SET MinLevelHealth = 42, MaxLevelHealth = 42, UnitFlags = UnitFlags|33555200 WHERE entry = 26254;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70, MinLevelHealth = 3912160, MaxLevelHealth = 3912160, FactionAlliance = 114, FactionHorde = 114, UnitFlags = UnitFlags|33555200 WHERE entry = 25703;
UPDATE creature_template SET FactionAlliance = 1959, FactionHorde = 1959, UnitFlags = UnitFlags|32832 WHERE entry = 24892;
UPDATE creature_template SET FactionAlliance = 1770, FactionHorde = 1770, UnitFlags = 32832 WHERE entry = 24891;
DELETE FROM spell_script_target WHERE entry IN (44844,44884,45666,44845);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES 
(44844, 1, 24895, 0),
(44884, 1, 24895, 0),
(45666, 1, 25315, 0),
(44845, 1, 24892, 0),
(44845, 1, 24891, 0),
(44845, 1, 24850, 0);
-- doors
DELETE FROM spell_script_target WHERE entry IN (46609,46610,46637,46650,46652,46638);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES 
(46609, 0, 19871, 0),
(46610, 0, 188119, 0),
(46637, 1, 19871, 0),
(46650, 1, 23472, 0),
(46652, 0, 188075, 0),
(46638, 0, 188119, 0);
DELETE FROM dbscripts_on_spell WHERE id IN (46650, 46609);
INSERT INTO dbscripts_on_spell (id, command, datalong, data_flags, comments) VALUES
(46609,15,46610,8,'Cast Freeze on Ice Barrier'),
(46650,15,46652,8,'Cast Open Brutallus Back Door on Fire Barrier');
-- tele spells
DELETE FROM spell_target_position WHERE id IN (46020,46019);
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z,  target_orientation) VALUES
(46020, 580, 1690.339, 942.1176, 53.07742, 0),
(46019, 580, 1696.196, 951.1885, -74.55846, 0);
-- fix some bad locations
UPDATE gameobject SET position_x = 1746.565, position_y = 621.9134, position_z = 28.05021, orientation = 2.984498 WHERE id = 187869;
UPDATE gameobject SET position_x = 1704.303, position_y = 582.6811, position_z = 28.16483, orientation = 1.605702 WHERE id = 188114;
UPDATE gameobject SET position_x = 1651.921, position_y = 635.3501, position_z = 28.12865, orientation = 6.19592 WHERE id = 188115;
UPDATE gameobject SET position_x = 1696.155, position_y = 674.9676, position_z = 28.05021, orientation = 4.81711 WHERE id = 188116;
UPDATE creature SET position_x = 1696.01, position_y = 675.3926, position_z = 28.13354, orientation = 0.6108652 WHERE guid = 140022;
UPDATE creature SET position_x = 1704.316, position_y = 582.7225, position_z = 28.25068, orientation = 5.009095 WHERE guid = 140020;
UPDATE creature SET position_x = 1652.034, position_y = 635.3538, position_z = 28.20865, orientation = 3.752458 WHERE guid = 140023;
UPDATE creature SET position_x = 1746.551, position_y = 621.9463, position_z = 28.13354, orientation = 2.094395 WHERE guid = 140021;
UPDATE creature SET position_x = 1698.092, position_y = 627.2899, position_z = 58.17708, orientation = 1.692969 WHERE id = 26046;
UPDATE creature SET position_x = 1699.906, position_y = 929.0208, position_z = -74.28365, orientation = 6.161012 WHERE id = 24892;
-- Felmyst movement (currently not used because of MMaps, but keep here for the future);
DELETE FROM creature_movement_template WHERE entry IN (25038);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, orientation) VALUES
(25038,1,1441.640, 520.520, 50.083, 0, 0),
(25038,2,1467.219, 516.318, 50.083, 0, 0),
(25038,3,1492.819, 515.668, 50.083, 0, 0),
(25038,4,1458.170, 501.295, 60.083, 2000, 2.93),
(25038,5,1446.540, 702.570, 50.083, 0, 0),
(25038,6,1469.939, 704.239, 50.083, 0, 0),
(25038,7,1494.760, 705.000, 50.083, 0, 0),
(25038,8,1468.380, 730.267, 60.083, 2000, 5.07); 
-- script targets for felmyst
DELETE FROM spell_script_target WHERE entry = 45388;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(45388, 1, 25038, 0);
DELETE FROM spell_script_target WHERE entry = 45389;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(45389, 1, 25265, 0);
DELETE FROM spell_script_target WHERE entry = 45714;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(45714, 1, 25038, 0);

-- -----------------
-- Zul'Farrak
-- -----------------
-- ZF Zumrah zombies
DELETE FROM dbscripts_on_go_template_use WHERE id = 128403;
INSERT INTO dbscripts_on_go_template_use (id, command, datalong, data_flags, comments) VALUES
(128403, 15, 10247, 0x02, 'cast Summon Zul\'Farrak Zombies');
-- ZF pyramid
UPDATE creature SET MovementType = 2 WHERE id IN (7607, 7604, 7605, 7606, 7608);
UPDATE creature_template SET MovementType = 0 WHERE entry IN (8877,8876,7275,7796);
DELETE FROM creature_movement_template WHERE entry IN (7607, 7604, 7605, 7606, 7608);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- Weegli Blastfuse
(7607,1,1881.05, 1297.36, 48.419, 1000, 760701, 5.41),          -- workaround in order to pause the default wp movement. This is needed to avoid evade complications
(7607,2,1881.741, 1295.994, 48.323, 1000, 760702, 5.41),
(7607,3,1881.001, 1293.345, 47.627, 0, 0, 0),
(7607,4,1880.210, 1290.434, 45.970, 0, 0, 0),                   -- workaround in order to force move maps to do the right move path
(7607,5,1880.210, 1290.434, 45.970, 0, 0, 0),
(7607,6,1891.080, 1284.610, 43.580, 1000, 760706, 4.71),
(7607,7,1883.285, 1263.755, 41.576, 2000, 760707, 4.71),
(7607,8,1889.486, 1271.971, 41.626, 1000, 760701, 4.71),
(7607,9,1895.356, 1227.598, 9.521, 0, 0, 0),
(7607,10,1893.277, 1206.289, 8.877, 1000, 760701, 4.61),
-- blowing the door
(7607,11,1891.670, 1181.687, 8.877, 0, 0, 0),
(7607,12,1876.005, 1161.771, 9.653, 0, 0, 0),
(7607,13,1857.490, 1145.531, 15.119, 1000, 760713, 3.86),
-- run away
(7607,14,1877.107, 1148.825, 10.316, 0, 0, 0),
(7607,15,1886.306, 1137.952, 9.352, 0, 0, 0),
(7607,16,1869.976, 1092.893, 8.876, 0, 1, 0),
-- Sergeant Bly
(7604,1,1882.89, 1299.27, 48.3843, 1000, 760401, 4.83),
(7604,2,1883.395, 1297.178, 48.293, 1000, 760402, 4.83),
(7604,3,1881.001, 1293.345, 47.627, 0, 0, 0),
(7604,4,1880.210, 1290.434, 45.970, 0, 0, 0),
(7604,5,1880.210, 1290.434, 45.970, 0, 0, 0),
(7604,6,1886.896, 1264.077, 41.494, 1000, 760401, 4.71),
(7604,7,1886.703, 1227.956, 9.9242, 0, 0, 0),
(7604,8,1884.289, 1202.936, 8.8781, 60000, 0, 4.61),
(7604,9,1884.289, 1202.936, 8.8781, 15000, 760409, 4.61),
-- Raven
(7605,1,1886.64, 1299.11, 48.3146, 1000, 760501, 4.36),
(7605,2,1886.123, 1297.247, 48.241, 1000, 760502, 4.36),
(7605,3,1881.001, 1293.345, 47.627, 0, 0, 0),
(7605,4,1880.210, 1290.434, 45.970, 0, 0, 0),
(7605,5,1880.210, 1290.434, 45.970, 0, 0, 0),
(7605,6,1890.223, 1264.296, 41.420, 1000, 760501, 4.71),
(7605,7,1895.356, 1227.598, 9.521, 0, 0, 0),
(7605,8,1889.008, 1201.978, 8.878, 60000, 0, 4.54),
(7605,9,1889.008, 1201.978, 8.878, 15000, 760509, 4.54),
-- Oro Eyegouge
(7606,1,1889.62, 1298.01, 48.2581, 1000, 760601, 3.94),
(7606,2,1888.196, 1296.756, 48.203, 1000, 760602, 3.94),
(7606,3,1881.001, 1293.345, 47.627, 0, 0, 0),
(7606,4,1880.210, 1290.434, 45.970, 0, 0, 0),
(7606,5,1880.210, 1290.434, 45.970, 0, 0, 0),
(7606,6,1883.209, 1271.997, 41.850, 1000, 760601, 4.71),
(7606,7,1879.247, 1227.145, 9.276, 0, 0, 0),
(7606,8,1876.139, 1207.258, 8.877, 60000, 0, 4.64),
(7606,9,1876.139, 1207.258, 8.877, 15000, 760609, 4.64),
-- Murta Grimgut
(7608,1,1891.07, 1294.78, 48.2347, 1000, 760801, 3.31),
(7608,2,1889.018, 1294.428, 48.189, 1000, 760802, 3.31),
(7608,3,1881.001, 1293.345, 47.627, 0, 0, 0),
(7608,4,1880.210, 1290.434, 45.970, 0, 0, 0),
(7608,5,1880.210, 1290.434, 45.970, 0, 0, 0),
(7608,6,1886.345, 1271.890, 41.735, 1000, 760801, 4.71),
(7608,7,1886.703, 1227.956, 9.924, 0, 0, 0),
(7608,8,1884.856, 1208.976, 8.878, 60000, 0, 4.61),
(7608,9,1884.856, 1208.976, 8.878, 15000, 760809, 4.61);
-- texts
DELETE FROM db_script_string WHERE entry IN (2000005547,2000005548,2000005549,2000005550,2000005551,2000005552,2000005553);
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000005547,'Oh no! Here they come!',0,0,0,0,'Weegli Blastfuse - say event start'),
(2000005548,'Ok, here I go!',0,0,0,0,'Weegli Blastfuse - say blow door normal'),
(2000005549,'What? How dare you say that to me?!?',0,0,0,6,'Sergeant Bly - say faction change 1'),
(2000005550,'After all we\'ve been through? Well, I didn\'t like you anyway!!',0,0,0,5,'Sergeant Bly - say faction change 2'),
(2000005551,'I\'m out of here!',0,0,0,0,'Weegli Blastfuse - say blow door forced'),
(2000005552,'Who dares step into my domain! Come! Come, and be consumed!',0,6,0,0,'Ukorz Sandscalp - say after door blown'),
(2000005553,'Let\'s move forward!',0,0,0,0,'Sergeant Bly - move downstairs');
-- creature move scripts
DELETE FROM dbscripts_on_creature_movement WHERE id IN (760702,760402,760502,760602,760802,760706,760707,760701,760401,760501,760601,760801);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, dataint, comments) VALUES
(760701, 0, 32, 1, 0, 'Weegli Blastfuse - stop movement'),
(760401, 0, 32, 1, 0, 'Sergeant Bly - stop movement'),
(760501, 0, 32, 1, 0, 'Raven - stop movement'),
(760601, 0, 32, 1, 0, 'Oro Eyegouge - stop movement'),
(760801, 0, 32, 1, 0, 'Murta Grimgut - stop movement'),
(760702, 0, 1, 71, 0, 'Sergeant Bly - emote cheer'),
(760402, 0, 1, 71, 0, 'Raven - emote cheer'),
(760502, 0, 1, 71, 0, 'Oro Eyegouge - emote cheer'),
(760602, 0, 1, 71, 0, 'Weegli Blastfuse - emote cheer'),
(760802, 0, 1, 71, 0, 'Murta Grimgut - emote cheer'),
(760702, 0, 22, 495, 0, 'Weegli Blastfuse - update faction'),
(760402, 0, 22, 495, 0, 'Sergeant Bly - update faction'),
(760502, 0, 22, 495, 0, 'Raven - update faction'),
(760602, 0, 22, 495, 0, 'Oro Eyegouge - update faction'),
(760802, 0, 22, 495, 0, 'Murta Grimgut - update faction'),
(760706, 0, 25, 1, 0, 'Weegli Blastfuse - set run on'),
(760707, 0, 0, 0, 2000005547, 'Weegli Blastfuse - say event begin');
-- despawn self
DELETE FROM dbscripts_on_spell WHERE id = 11365;
INSERT INTO dbscripts_on_spell (id, command, datalong, comments) VALUES
(11365, 18, 1000, 'despawn self');
-- party escape and door is blown
DELETE FROM dbscripts_on_creature_movement WHERE id IN (760713,760409,760809,760609,760509);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, comments) VALUES
(760713, 0, 15, 10772, 0, 0, 0, 0, 0, 'Weegli Blastfuse - cast Create Weegli\'s Barrel'),
(760713, 2, 13, 0, 0, 141612, 20, 1, 0, 'Weegli Blastfuse - use Weegli\'s Barrel'),
(760713, 5, 0, 6, 0, 7267, 200, 0, 2000005552, 'Ukorz Sandscalp - yell intro'),
(760409, 0, 15, 11365, 0, 0, 0, 0, 0, 'Sergeant Bly - cast Bly\'s Band\'s Escape'),
(760409, 0, 29, 1, 2, 0, 0, 0, 0, 'Sergeant Bly - remove gossip flag'),
(760809, 0, 15, 11365, 0, 0, 0, 0, 0, 'Raven - cast Bly\'s Band\'s Escape'),
(760609, 0, 15, 11365, 0, 0, 0, 0, 0, 'Oro Eyegouge - cast Bly\'s Band\'s Escape'),
(760509, 0, 15, 11365, 0, 0, 0, 0, 0, 'Murta Grimgut - cast Bly\'s Band\'s Escape');
-- gossip conditions
DELETE FROM conditions WHERE condition_entry IN (874, 875, 876, 877, 878, 879);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(874, 33, 2, 1), -- wp > =  2
(875, 33, 8, 0), -- wp  =  =  8
(876, 33, 8, 2), -- wp < 8
(877, 33, 10, 2), -- wp < 10
(878, -1, 874, 877), -- wp between 1 and 9
(879, -1, 874, 876); -- wp between 1 and 7
-- gossips
DELETE FROM gossip_menu WHERE entry IN (940,941);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
-- weegli
(940, 1511, 0, 719),
(940, 1513, 0, 878),
(940, 1514, 0, 721),
-- bly
(941, 1515, 0, 719),
(941, 1516, 0, 879),
(941, 1517, 0, 875);
DELETE FROM gossip_menu_option WHERE menu_id IN (940, 941);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_script_id, condition_id) VALUES
(940, 0, 0, 'Will you blow up that door now?', 1, 1, 94001, 721),
(941, 0, 0, 'Hey Bly! Bilgewizzle wants his divino-matic rod back!', 1, 1, 0, 875),  -- Note: we are not sure what should be the action of this one - maybe similar to the one below
(941, 1, 0, 'That\'s it! I\'m tired of helping you out. It\'s time we settled things on the battlefield!', 1, 1, 94101, 875);
DELETE FROM dbscripts_on_gossip WHERE id IN (94001,94101);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, comments) VALUES
(94001, 0, 0, 0, 0, 0, 0, 0, 2000005548,'Weegli Blastfuse - say start door bombing'),
(94001, 0, 29, 1, 2, 0, 0, 0, 0, 'Weegli Blastfuse - remove gossip flag'),
(94001, 0, 22, 0, 0, 0, 0, 0, 0, 'Weegli Blastfuse - update faction to default'),
(94001, 0, 25, 1, 0, 0, 0, 0, 0, 'Weegli Blastfuse - set run on'),
(94001, 0, 32, 0, 0, 0, 0, 0, 0,'Weegli Blastfuse - start WP movement'),
(94101, 0, 29, 1, 2, 0, 0, 0, 0, 'Sergeant Bly - remove gossip flag'),
(94101, 0, 0, 0, 0, 0, 0, 0, 2000005549, 'Sergeant Bly - say start combat 1'),
(94101, 3, 0, 0, 0, 0, 0, 0, 2000005550, 'Sergeant Bly - say start combat 2'),
(94101, 6, 22, 14, 0, 0, 0, 0, 0, 'Sergeant Bly - update faction to hostile'),
(94101, 6, 22, 14, 0, 7608, 30, 4, 0, 'Murta Grimgut - update faction'),
(94101, 6, 22, 14, 0, 7606, 30, 4, 0, 'Oro Eyegouge - update faction'),
(94101, 6, 22, 14, 0, 7605, 30, 4, 0, 'Raven - update faction'),
(94101, 6, 0, 0, 0, 7607, 30, 4, 2000005551,'Weegli Blastfuse - say start door bombing'),
(94101, 6, 29, 1, 2, 7607, 30, 4, 0, 'Weegli Blastfuse - remove gossip flag'),
(94101, 6, 22, 0, 0, 7607, 30, 4, 0, 'Weegli Blastfuse - update faction to default'),
(94101, 0, 25, 1, 0, 7607, 30, 4, 0, 'Weegli Blastfuse - set run on'),
(94101, 6, 32, 0, 0, 7607, 30, 4, 0,'Weegli Blastfuse - start WP movement');
-- Summon event
DELETE FROM dbscripts_on_event WHERE id = 2609;
INSERT INTO dbscripts_on_event (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
-- Open cages
(2609, 0, 11, 27089, 9000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Open Troll Cage'),
(2609, 0, 11, 27090, 9000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Open Troll Cage'),
(2609, 0, 11, 27091, 9000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Open Troll Cage'),
(2609, 0, 11, 27092, 9000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Open Troll Cage'),
(2609, 0, 11, 27093, 9000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Open Troll Cage'),
-- Start movement
(2609, 2, 32, 0, 0, 7604, 30, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Sergeant Bly - Start WP movement'),
(2609, 2, 32, 0, 0, 7605, 30, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Raven - Start WP movement'),
(2609, 2, 32, 0, 0, 7606, 30, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Oro Eyegouge - Start WP movement'),
(2609, 2, 32, 0, 0, 7607, 30, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Weegli Blastfuse - Start WP movement'),
(2609, 2, 32, 0, 0, 7608, 30, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Murta Grimgut - Start WP movement'),
-- Spawn first troll wave; there are around 38 - 40 trolls per wave. (slave and drudge). Note: some coords are guessword
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1902.83, 1223.41, 8.96, 3.95, 'spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1894.64, 1206.29, 8.87, 2.22, 'spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1873.45, 1204.44, 8.87, 0.88, 'spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1875.18, 1221.24, 9.21, 0.84, 'spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1879.02, 1223.06, 9.12, 5.91, 'spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1882.07, 1225.7, 9.32, 5.69, 'spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1886.97, 1225.86, 9.85, 5.79, 'spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1892.28, 1225.49, 9.57, 5.63, 'spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1894.72, 1221.91, 8.87, 2.34, 'spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1890.08, 1218.68, 8.87, 1.59, 'spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1883.5, 1218.25, 8.9, 0.67, 'spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1886.93, 1221.4, 8.94, 1.6, 'spawn Sandfury Slave'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1883.76, 1222.3, 9.11, 6.26, 'spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1889.82, 1222.51, 9.03, 0.97, 'spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1898.23, 1217.97, 8.87, 3.42, 'spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1877.4, 1216.41, 8.97, 0.37, 'spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1893.07, 1215.26, 8.87, 3.08, 'spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1874.57, 1214.16, 8.87, 3.12, 'spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1889.94, 1212.21, 8.87, 1.59, 'spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1883.74, 1212.35, 8.87, 1.59, 'spawn Sandfury Drudge'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1877, 1207.27, 8.87, 3.8, 'spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1873.63, 1204.65, 8.87, 0.61, 'spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1896.46, 1205.62, 8.87, 5.72, 'spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1899.63, 1202.52, 8.87, 2.46, 'spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1903.49, 1211.52, 8.88, 0.61, 'spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1901.34, 1206.06, 8.87, 5.72, 'spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1869.46, 1210.38, 9.15, 2.46, 'spawn Sandfury Slave'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1872.73, 1203.04, 8.87, 6.26, 'spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1881.32, 1205.39, 8.87, 0.97, 'spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1887.19, 1205.09, 8.87, 3.42, 'spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1882.50, 1203.33, 8.87, 0.37, 'spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1868.75, 1213.85, 9.47, 3.08, 'spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1886.06, 1213.20, 8.87, 3.12, 'spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1906.30, 1220.33, 9.03, 1.59, 'spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1878.61, 1202.73, 8.87, 1.59, 'spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1897.06, 1216.08, 8.87, 3.12, 'spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1878.07, 1216.37, 8.93, 1.59, 'spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1891.60, 1209.43, 8.87, 1.59, 'spawn Sandfury Drudge'),
-- Spawn second troll wave after 100 sec (slave, drudge and about 8 cretins)
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1902.83, 1223.41, 8.96, 3.95, 'spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1894.64, 1206.29, 8.87, 2.22, 'spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1873.45, 1204.44, 8.87, 0.88, 'spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1875.18, 1221.24, 9.21, 0.84, 'spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1879.02, 1223.06, 9.12, 5.91, 'spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1882.07, 1225.7, 9.32, 5.69, 'spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1886.97, 1225.86, 9.85, 5.79, 'spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1892.28, 1225.49, 9.57, 5.63, 'spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1894.72, 1221.91, 8.87, 2.34, 'spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1890.08, 1218.68, 8.87, 1.59, 'spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1883.5, 1218.25, 8.9, 0.67, 'spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1886.93, 1221.4, 8.94, 1.6, 'spawn Sandfury Slave'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1883.76, 1222.3, 9.11, 6.26, 'spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1889.82, 1222.51, 9.03, 0.97, 'spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1898.23, 1217.97, 8.87, 3.42, 'spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1877.4, 1216.41, 8.97, 0.37, 'spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1893.07, 1215.26, 8.87, 3.08, 'spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1874.57, 1214.16, 8.87, 3.12, 'spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1889.94, 1212.21, 8.87, 1.59, 'spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1883.74, 1212.35, 8.87, 1.59, 'spawn Sandfury Drudge'),
(2609, 100, 10, 7789, 9000000, 0, 0, 0, 0, 0, 0, 0, 1877, 1207.27, 8.87, 3.8, 'spawn Sandfury Cretin'),
(2609, 100, 10, 7789, 9000000, 0, 0, 0, 0, 0, 0, 0, 1873.63, 1204.65, 8.87, 0.61, 'spawn Sandfury Cretin'),
(2609, 100, 10, 7789, 9000000, 0, 0, 0, 0, 0, 0, 0, 1896.46, 1205.62, 8.87, 5.72, 'spawn Sandfury Cretin'),
(2609, 100, 10, 7789, 9000000, 0, 0, 0, 0, 0, 0, 0, 1899.63, 1202.52, 8.87, 2.46, 'spawn Sandfury Cretin'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1903.49, 1211.52, 8.88, 0.61, 'spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1901.34, 1206.06, 8.87, 5.72, 'spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1869.46, 1210.38, 9.15, 2.46, 'spawn Sandfury Slave'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1872.73, 1203.04, 8.87, 6.26, 'spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1881.32, 1205.39, 8.87, 0.97, 'spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1887.19, 1205.09, 8.87, 3.42, 'spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1882.50, 1203.33, 8.87, 0.37, 'spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1868.75, 1213.85, 9.47, 3.08, 'spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1886.06, 1213.20, 8.87, 3.12, 'spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1906.30, 1220.33, 9.03, 1.59, 'spawn Sandfury Drudge'),
(2609, 100, 10, 7789, 9000000, 0, 0, 0, 0, 0, 0, 0, 1878.61, 1202.73, 8.87, 1.59, 'spawn Sandfury Cretin'),
(2609, 100, 10, 7789, 9000000, 0, 0, 0, 0, 0, 0, 0, 1897.06, 1216.08, 8.87, 3.12, 'spawn Sandfury Cretin'),
(2609, 100, 10, 7789, 9000000, 0, 0, 0, 0, 0, 0, 0, 1878.07, 1216.37, 8.93, 1.59, 'spawn Sandfury Cretin'),
(2609, 100, 10, 7789, 9000000, 0, 0, 0, 0, 0, 0, 0, 1891.60, 1209.43, 8.87, 1.59, 'spawn Sandfury Cretin'),
-- npcs start to move downstairs when boss spawn
(2609, 250, 25, 0, 0, 7607, 150, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Weegli Blastfuse - set run off'),
(2609, 250, 32, 0, 0, 7604, 150, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Sergeant Bly - Start WP movement'),
(2609, 250, 0, 0, 0, 7604, 150, 4, 2000005553, 0, 0, 0, 0, 0, 0, 0, 'Sergeant Bly - yell at movement start'),
(2609, 250, 32, 0, 0, 7605, 150, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Raven - Start WP movement'),
(2609, 250, 32, 0, 0, 7606, 150, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Oro Eyegouge - Start WP movement'),
(2609, 250, 32, 0, 0, 7607, 150, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Weegli Blastfuse - Start WP movement'),
(2609, 250, 32, 0, 0, 7608, 150, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Murta Grimgut - Start WP movement'),
-- boss spawns after 4 min and 10 sec after the first wave (250 sec) (acolytes and zealots + 2 bosses)
(2609, 250, 10, 8876, 9000000, 0, 0, 0, 0, 0, 0, 0, 1890.552, 1199.941, 8.96, 4.46, 'spawn Sandfury Acolyte'),
(2609, 250, 10, 8876, 9000000, 0, 0, 0, 0, 0, 0, 0, 1888.446, 1200.169, 8.96, 1.11, 'spawn Sandfury Acolyte'),
(2609, 250, 10, 8876, 9000000, 0, 0, 0, 0, 0, 0, 0, 1876.983, 1199.938, 8.96, 2.19, 'spawn Sandfury Acolyte'),
(2609, 250, 10, 8876, 9000000, 0, 0, 0, 0, 0, 0, 0, 1873.311, 1197.546, 8.96, 4.60, 'spawn Sandfury Acolyte'),
(2609, 250, 10, 8877, 9000000, 0, 0, 0, 0, 0, 0, 0, 1895.159, 1198.047, 8.96, 1.51, 'spawn Sandfury Zealot'),
(2609, 250, 10, 8877, 9000000, 0, 0, 0, 0, 0, 0, 0, 1878.941, 1200.573, 8.96, 2.60, 'spawn Sandfury Zealot'),
(2609, 250, 10, 8877, 9000000, 0, 0, 0, 0, 0, 0, 0, 1874.741, 1199.029, 8.96, 2.53, 'spawn Sandfury Zealot'),
(2609, 250, 10, 7275, 9000000, 0, 0, 0, 0, 0, 0, 0, 1883.983, 1201.655, 8.96, 1.71, 'spawn Shadowpriest Sezz\'ziz'),
(2609, 250, 10, 7796, 9000000, 0, 0, 0, 0, 0, 0, 0, 1882.324, 1201.454, 8.96, 6.05, 'spawn Nekrum Gutchewer');
-- quest 11691
-- spell script targets
DELETE FROM spell_script_target WHERE entry = 46603;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(46603, 1, 26121, 0);
DELETE FROM spell_script_target WHERE entry = 46593;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(46593, 1, 26120, 0);
DELETE FROM spell_script_target WHERE entry = 46809;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(46809, 1, 26239, 0);
DELETE FROM spell_script_target WHERE entry IN (45930,46398);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(45930, 1, 25971, 0),
(45930, 1, 25972, 0),
(45930, 1, 25973, 0),
(46398, 1, 25971, 0),
(46398, 1, 25972, 0),
(46398, 1, 25973, 0);
DELETE FROM spell_script_target WHERE entry IN (45941,46623);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(45941, 1, 25746, 0),
(46623, 1, 25746, 0);
-- event scripts
DELETE FROM db_script_string WHERE entry IN (2000000327,2000000328,2000000329);
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000000327,'The Ice Stone has melted!',0,0,0,22,'say Ahune 1'),
(2000000328,'Ahune, your strength grows no more!',0,0,0,0,'say Ahune 2'),
(2000000329,'Your frozen reign will not come to pass!',0,0,0,0,'say Ahune 3');
UPDATE creature_template_addon SET auras = '' WHERE entry IN (25745,25971,25972,25973,25754);
UPDATE quest_template SET CompleteScript = 11691 WHERE entry = 11691;
DELETE FROM dbscripts_on_quest_end WHERE id = 11691;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, buddy_entry, search_radius, data_flags, dataint, x, y, z, o, comments) VALUES
(11691, 0, 15, 45937, 25745, 100, 0, 0, 0, 0, 0, 0, '[PH] Ahune Summon Loc Bunny - Cast Ahune - Summoning Visual 1'),
(11691, 1, 15, 46603, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Force Wisp Flight Missile'),
(11691, 1, 0, 0, 0, 0, 0, 2000000327, 0, 0, 0, 0, 'say Ahune 1'),
(11691, 3, 15, 45930, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Ahune - Summoning Rhyme Spell, make bonfire'),
(11691, 3, 0, 0, 0, 0, 0, 2000000328, 0, 0, 0, 0, 'say Ahune 2'),
(11691, 5, 0, 0, 0, 0, 0, 2000000329, 0, 0, 0, 0, 'say Ahune 3'),
(11691, 10, 15, 46402, 25745, 100, 0, 0, 0, 0, 0, 0, '[PH] Ahune Summon Loc Bunny - Cast Ahune Resurfaces'),
(11691, 10, 10, 25740, 0, 0, 2, 0, -99.1021, -233.753, -1.222967, 1.5282, 'spawn Ahune'),
(11691, 12, 10, 25865, 25740, 100, 0, 0, -98.01508, -230.4555, -1.210892, 1.797689, 'spawn Frozen Core');
DELETE FROM dbscripts_on_spell WHERE id = 45930;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, buddy_entry, search_radius, data_flags, comments) VALUES
(45930, 0, 15, 46339, 0, 0, 6, 'Cast Bonfire Disguise');
DELETE FROM dbscripts_on_spell WHERE id IN (45941, 46623);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, data_flags, comments) VALUES
(45941, 0, 15, 45939, 6, 'cast Summon Ahune\'s Loot'),
(46623, 0, 15, 46622, 6, 'cast Summon Ahune\'s Loot, Heroic');
-- creature link
DELETE FROM creature_linking_template WHERE entry IN (25865,25755,25756,25757);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(25865, 547, 25740, 4112, 0),
(25755, 547, 25740, 4112, 0),
(25756, 547, 25740, 4112, 0),
(25757, 547, 25740, 4112, 0);	

-- -----------------------
-- WIND STONES (data from YTDB)
-- -----------------------
-- TEMPLARS
DELETE FROM spell_script_target WHERE entry IN (24734,24744,24756,24758,24760);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(24734, 0, 180456, 0),
(24734, 0, 180518, 0),
(24734, 0, 180529, 0),
(24734, 0, 180544, 0),
(24734, 0, 180549, 0),
(24734, 0, 180564, 0),
(24744, 0, 180456, 0),
(24744, 0, 180518, 0),
(24744, 0, 180529, 0),
(24744, 0, 180544, 0),
(24744, 0, 180549, 0),
(24744, 0, 180564, 0),
(24756, 0, 180456, 0),
(24756, 0, 180518, 0),
(24756, 0, 180529, 0),
(24756, 0, 180544, 0),
(24756, 0, 180549, 0),
(24756, 0, 180564, 0),
(24758, 0, 180456, 0),
(24758, 0, 180518, 0),
(24758, 0, 180529, 0),
(24758, 0, 180544, 0),
(24758, 0, 180549, 0),
(24758, 0, 180564, 0),
(24760, 0, 180456, 0),
(24760, 0, 180518, 0),
(24760, 0, 180529, 0),
(24760, 0, 180544, 0),
(24760, 0, 180549, 0),
(24760, 0, 180564, 0);
-- DUKES
DELETE FROM spell_script_target WHERE entry IN (24763,24765,24768,24770,24772);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(24763, 0, 180461, 0),
(24763, 0, 180534, 0),
(24763, 0, 180554, 0),
(24765, 0, 180461, 0),
(24765, 0, 180534, 0),
(24765, 0, 180554, 0),
(24768, 0, 180461, 0),
(24768, 0, 180534, 0),
(24768, 0, 180554, 0),
(24770, 0, 180461, 0),
(24770, 0, 180534, 0),
(24770, 0, 180554, 0),
(24772, 0, 180461, 0),
(24772, 0, 180534, 0),
(24772, 0, 180554, 0);
-- ROYALS
DELETE FROM spell_script_target WHERE entry IN (24784,24786,24788,24789,24790);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(24784, 0, 180466, 0),
(24784, 0, 180539, 0),
(24784, 0, 180559, 0),
(24786, 0, 180466, 0),
(24786, 0, 180539, 0),
(24786, 0, 180559, 0),
(24788, 0, 180466, 0),
(24788, 0, 180539, 0),
(24788, 0, 180559, 0),
(24789, 0, 180466, 0),
(24789, 0, 180539, 0),
(24789, 0, 180559, 0),
(24790, 0, 180466, 0),
(24790, 0, 180539, 0),
(24790, 0, 180559, 0);
-- conditions
DELETE FROM conditions WHERE condition_entry BETWEEN 887 AND 918;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(887, 11, 24746, 0),    -- no cultist disguse
(888, 1, 24746, 0),     -- basic disguise
(889, 11, 24748, 0),    -- no cultist medalion
(890, -1, 888, 889),    -- basic disguise but no medalion
(891, 1, 24748, 0),     -- cultist medalion
(892, -1, 888, 891),    -- basic disguise & medalion
(893, 1, 24782, 0),     -- cultist ring
(894, -1, 892, 893),    -- disguise & medalion & ring
(895, 2, 20416, 1),     -- Crest of Beckoning: Fire
(896, 2, 20419, 1),     -- Crest of Beckoning: Earth
(897, 2, 20418, 1),     -- Crest of Beckoning: Thunder
(898, 2, 20420, 1),     -- Crest of Beckoning: Water
(899, -1, 888, 895),    -- disguise and fire
(900, -1, 888, 896),    -- disguise and earth
(901, -1, 888, 897),    -- disguise and air
(902, -1, 888, 898),    -- disguise and water
(903, 2, 20432, 1),     -- Signet of Beckoning: Fire
(904, 2, 20435, 1),     -- Signet of Beckoning: Stone
(905, 2, 20433, 1),     -- Signet of Beckoning: Thunder
(906, 2, 20436, 1),     -- Signet of Beckoning: Water
(907, -1, 892, 903),    -- disguise & medalion and fire
(908, -1, 892, 904),    -- disguise & medalion and earth
(909, -1, 892, 905),    -- disguise & medalion and air
(910, -1, 892, 906),    -- disguise & medalion and water
(911, 2, 20447, 1),     -- Scepter of Beckoning: Fire
(912, 2, 20449, 1),     -- Scepter of Beckoning: Stone
(913, 2, 20448, 1),     -- Scepter of Beckoning: Thunder
(914, 2, 20450, 1),     -- Scepter of Beckoning: Water
(915, -1, 894, 911),    -- disguise & medalion & ring and fire
(916, -1, 894, 912),    -- disguise & medalion & ring and earth
(917, -1, 894, 913),    -- disguise & medalion & ring and air
(918, -1, 894, 914);    -- disguise & medalion & ring and water
-- gossips
DELETE FROM gossip_menu where entry IN (6542,6543,6540);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6540, 7744, 6540, 887),    -- punishment, no disguise
(6542, 7749, 6540, 887),    -- punishment, no disguise
(6543, 7754, 6540, 887),    -- punishment, no disguise
(6540, 7771, 0, 888),       -- basic disguise
(6542, 7772, 0, 890),       -- basic disguise & no medalion
(6542, 7773, 0, 892),       -- basic disguise & medalion
(6543, 7774, 0, 894),       -- disguise, medalion, ring (text is confirmed, but id is guesswork)
-- (6543, 7775, 0, 892),    -- basic disguise & medalion (text missing)
(6543, 7776, 0, 888);       -- basic disguise
DELETE FROM npc_text WHERE id = 7774;
INSERT INTO npc_text (id, text0_0, text0_1, prob0) VALUES
(7774,'A thunderous voice bellows from the stone...$B$BGreetings, commander. What news of Silithus do you bring the Lords of the Council?', 'A thunderous voice bellows from the stone...$B$BGreetings, commander. What news of Silithus do you bring the Lords of the Council?', 1);
DELETE FROM gossip_menu_option where menu_id IN (6542,6543,6540);
INSERT INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_poi_id,action_script_id,box_coded,box_money,box_text,condition_id) VALUES
(6540, 0, 0, 'I am no cultist, you monster! Come to me and face your destruction!', 1, 1, -1, 0, 654001, 0, 0, NULL, 888),
(6540, 1, 0, 'Crimson Templar! I hold your signet! Heed my call!', 1, 1, -1, 0, 654002, 0, 0, NULL, 899),
(6540, 2, 0, 'Earthen Templar! I hold your signet! Heed my call!', 1, 1, -1, 0, 654003, 0, 0, NULL, 900),
(6540, 3, 0, 'Hoary Templar! I hold your signet! Heed my call!', 1, 1, -1, 0, 654004, 0, 0, NULL, 901),
(6540, 4, 0, 'Azure Templar! I hold your signet! Heed my call!', 1, 1, -1, 0, 654005, 0, 0, NULL, 902),
(6542, 0, 0, 'You will listen to this, vile duke! I am not your Twilight\'s Hammer lapdog! I am here to challenge you! Come! Come, and meet your death...', 1, 1, -1, 0, 654201, 0, 0, NULL, 892),
(6542, 1, 0, 'Duke of Cynders! I hold your signet! Heed my call', 1, 1, -1, 0, 654202, 0, 0, NULL, 907),
(6542, 2, 0, 'The Duke of Shards! I hold your signet! Heed my call!', 1, 1, -1, 0, 654203, 0, 0, NULL, 908),
(6542, 3, 0, 'The Duke of Zephyrs! I hold your signet! Heed my call!', 1, 1, -1, 0, 654204, 0, 0, NULL, 909),
(6542, 4, 0, 'The Duke of Fathoms! I hold your signet! Heed my call!', 1, 1, -1, 0, 654205, 0, 0, NULL, 910),
(6543, 0, 0, 'The day of the judgement has come, fiend! I challenge you to battle!', 1, 1, -1, 0, 654301, 0, 0, NULL, 894),
(6543, 1, 0, 'Prince Skaldrenox! I hold your signet! Heed my call!', 1, 1, -1, 0, 654302, 0, 0, NULL, 915),
(6543, 2, 0, 'Baron Kazum! I hold your signet! Heed my call!', 1, 1, -1, 0, 654303, 0, 0, NULL, 916),
(6543, 3, 0, 'High Marshal Whirlaxis! I hold your signet! Heed my call!', 1, 1, -1, 0, 654304, 0, 0, NULL, 917),
(6543, 4, 0, 'Lord Skwol! I hold your signet! Heed my call!', 1, 1, -1, 0, 654305, 0, 0, NULL, 918);
DELETE FROM dbscripts_on_gossip WHERE id IN (6540,654001,654002,654003,654004,654005,654201,654202,654203,654204,654205,654301,654302,654303,654304,654305);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, buddy_entry, search_radius, data_flags, comments) VALUES
(6540, 1, 13, 0, 180502, 10, 1, 'use Wind Stone trap'),
(654001, 0, 15, 24745, 0, 0, 4, 'lesser wind stone - random'),
(654002, 0, 15, 24747, 0, 0, 4, 'lesser wind stone - fire'),
(654003, 0, 15, 24759, 0, 0, 4, 'lesser wind stone - earth'),
(654004, 0, 15, 24757, 0, 0, 4, 'lesser wind stone - air'),
(654005, 0, 15, 24761, 0, 0, 4, 'lesser wind stone - water'),
(654201, 0, 15, 24762, 0, 0, 4, 'wind stone - random'),
(654202, 0, 15, 24766, 0, 0, 4, 'wind stone - fire'),
(654203, 0, 15, 24771, 0, 0, 4, 'wind stone - earth'),
(654204, 0, 15, 24769, 0, 0, 4, 'wind stone - air'),
(654205, 0, 15, 24773, 0, 0, 4, 'wind stone - water'),
(654301, 0, 15, 24785, 0, 0, 4, 'greater wind stone - random'),
(654302, 0, 15, 24787, 0, 0, 4, 'greater wind stone - fire'),
(654303, 0, 15, 24792, 0, 0, 4, 'greater wind stone - earth'),
(654304, 0, 15, 24791, 0, 0, 4, 'greater wind stone - air'),
(654305, 0, 15, 24793, 0, 0, 4, 'greater wind stone - water');

-- --------------------
-- SUMMON SPELLS (YTDB)
-- --------------------
-- This includes Terrok summon event
DELETE FROM spell_script_target WHERE entry IN (40632,40640,40642,40644,41004);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES 
(40632, 0, 185913, 0),
(40640, 0, 185913, 0),
(40642, 0, 185913, 0),
(40644, 0, 185913, 0),
(41004, 0, 185928, 0);
DELETE FROM conditions WHERE condition_entry = 919;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(919, 2, 32720, 1);
DELETE FROM gossip_menu WHERE entry IN (8687);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8687, 11058, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 8687;
INSERT INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_poi_id,action_script_id,box_coded,box_money,box_text,condition_id) VALUES
(8687, 0, 0, '<Call forth Terrok.>', 1, 2, -1, 0, 8687, 0, 0, NULL, 919);
UPDATE gossip_menu_option SET action_menu_id = -1 WHERE menu_id = 8660;
DELETE FROM dbscripts_on_gossip WHERE id IN (8687);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, buddy_entry, search_radius, data_flags, comments) VALUES
(8687, 0, 15, 41003, 0, 0, 4, 'Terokk Trigger');
-- ToDo: this may need additional research
DELETE FROM dbscripts_on_event WHERE id IN (15014);
INSERT INTO dbscripts_on_event (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES 
(15014, 2, 10, 21838, 180000, 0, 0, 0, 0, 0, 0, 0, -3789.4, 3507.63, 286.982, 0, 'spawn Terokk');

-- ---------------
-- ICE STONES
-- ---------------
DELETE FROM spell_script_target WHERE entry IN (46592);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(46592, 0, 188049, 0),
(46592, 0, 188137, 0),
(46592, 0, 188138, 0),
(46592, 0, 188148, 0),
(46592, 0, 188149, 0),
(46592, 0, 188150, 0);
delete from gossip_menu where entry IN (9213,9256,9257,9269,9271,9272,9273,9274);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9213, 12524, 0, 0),
(9256, 12524, 0, 0),
(9257, 12524, 0, 0),
(9269, 12524, 0, 0),
(9271, 12524, 0, 0),
(9272, 12524, 0, 0),
(9273, 12524, 0, 0),
(9274, 12524, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id IN (9213,9256,9257,9269,9271,9272,9273,9274);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(9213, 0, 0, 'Lay your hand on the stone.', 1, 1, -1, 0, 9213, 0, 0, NULL, 888),
(9256, 0, 0, 'Lay your hand on the stone.', 1, 1, -1, 0, 9213, 0, 0, NULL, 888),
(9257, 0, 0, 'Lay your hand on the stone.', 1, 1, -1, 0, 9213, 0, 0, NULL, 888),
(9269, 0, 0, 'Lay your hand on the stone.', 1, 1, -1, 0, 9213, 0, 0, NULL, 888),
(9271, 0, 0, 'Lay your hand on the stone.', 1, 1, -1, 0, 9213, 0, 0, NULL, 888),
(9272, 0, 0, 'Lay your hand on the stone.', 1, 1, -1, 0, 9213, 0, 0, NULL, 888),
(9273, 0, 0, 'Lay your hand on the stone.', 1, 1, -1, 0, 9213, 0, 0, NULL, 888),
(9274, 0, 0, 'Lay your hand on the stone.', 1, 1, -1, 0, 9213, 0, 0, NULL, 888);
DELETE FROM dbscripts_on_gossip WHERE id IN (9213);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, data_flags, comments) VALUES
(9213, 0, 15, 46595, 4, 'cast Summon Ice Stone Lieutenant, Trigger');

-- ---------------
-- Onyxia Lair
-- ---------------
-- Onyxia Lair guard link
DELETE FROM creature_linking_template WHERE entry = 36561;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(36561, 249, 10184, 4096, 0);

-- ---------------
-- Various
-- ---------------
-- Fix DK quest spell click
DELETE FROM npc_spellclick_spells where npc_entry IN (29708,28782);
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, quest_start_active, quest_end, cast_flags,condition_id) VALUES 
(28782, 52349, 12687, 1, 12687, 1, 0),
(29708, 55028, 12856, 1, 12856, 1, 0);
-- Vehicle data fix
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, MinLevelHealth = 12600, MaxLevelHealth = 12600, MinLevelMana = 11982, MaxLevelMana = 11982, Armor = 9633 WHERE entry = 28999;
-- Icefang
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, MinLevelHealth = 63000, MaxLevelHealth = 63000, Armor = 9730, MovementType = 2 WHERE entry = 29602;
DELETE FROM creature_movement_template WHERE entry IN (29602);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id, waittime) VALUES
(29602,1, 7085.600, -1941.878, 773.144, 2960201, 1000),
(29602,2, 7073.979, -1964.498, 768.656, 0, 0),
(29602,3, 7082.235, -1993.693, 767.976, 0, 0),
(29602,4, 7089.624, -2024.012, 766.308, 0, 0),
(29602,5, 7102.195, -2072.441, 763.672, 0, 0),
(29602,6, 7116.834, -2127.098, 759.205, 0, 0),
(29602,7, 7140.550, -2161.849, 761.036, 0, 0),
(29602,8, 7170.924, -2192.156, 761.323, 0, 0),
(29602,9, 7219.515, -2226.946, 759.077, 0, 0),
(29602,10,7280.996, -2271.891, 756.243, 0, 0),
(29602,11,7335.085, -2294.143, 755.844, 0, 0),
(29602,12,7385.635, -2314.972, 757.249, 0, 0),
(29602,13,7401.934, -2346.189, 755.022, 0, 0),
(29602,14,7407.586, -2379.071, 753.156, 0, 0),
(29602,15,7385.282, -2407.132, 748.946, 0, 0),
(29602,16,7344.961, -2407.402, 750.123, 0, 0),
(29602,17,7317.786, -2377.497, 749.030, 0, 0),
(29602,18,7297.351, -2348.611, 749.586, 0, 0),
(29602,19,7271.876, -2316.258, 752.514, 0, 0),
(29602,20,7243.617, -2296.425, 753.760, 0, 0),
(29602,21,7202.361, -2270.390, 755.781, 0, 0),
(29602,22,7170.279, -2249.533, 758.963, 0, 0),
(29602,23,7136.257, -2227.768, 758.618, 0, 0),
(29602,24,7117.583, -2202.440, 758.786, 0, 0),
(29602,25,7096.870, -2167.813, 758.943, 0, 0),
(29602,26,7083.056, -2130.481, 758.719, 0, 0),
(29602,27,7078.193, -2078.994, 759.237, 0, 0),
(29602,28,7105.447, -2028.474, 768.562, 0, 0),
(29602,29,7105.573, -1999.694, 771.150, 2960228, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2960201, 2960228);
INSERT INTO dbscripts_on_creature_movement (id, command, datalong, comments) VALUES
(2960201, 25, 1, 'set run on'),
(2960228, 14, 54908, 'remove aura Riding Icefang');
DELETE FROM spell_script_target WHERE entry = 54798;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(54798,1,29358,0),
(54798,1,29351,0);
DELETE FROM dbscripts_on_spell WHERE id IN (54799,54804);
INSERT INTO dbscripts_on_spell (id, command, datalong, data_flags, comments) VALUES
(54804, 8, 29595, 0, 'kill credit for quest 12851'),
(54799, 8, 29597, 0, 'kill credit for quest 12851');
DELETE FROM vehicle_accessory WHERE vehicle_entry IN (30174,29500);
INSERT INTO vehicle_accessory (vehicle_entry, seat, accessory_entry, comment) VALUES
(29500, 0, 29498, 'Brunnhildar Warmaiden'),
(30174, 0, 30175, 'Hyldsmeet Bear Rider');
-- quest 12981
DELETE FROM creature_template_addon WHERE entry = 30169;
INSERT INTO creature_template_addon (entry, auras) VALUES (30169, 56118);
DELETE FROM spell_script_target WHERE entry = 56099;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(56099,1,30169,0);
-- quest 11590
DELETE FROM spell_script_target WHERE entry IN (45630,45651,45735);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(45651,1,25474,0),
(45630,1,25474,0),
(45735,1,25474,0);
-- cast at quest completion - maybe there are some missing cinematics here.
DELETE FROM dbscripts_on_spell WHERE id IN (45651);
INSERT INTO dbscripts_on_spell (id, command, datalong, data_flags, comments) VALUES
(45651, 18, 0, 0, 'despawn captured beryl sorcerer');
-- quests 11919, 11940
-- quest ending
DELETE FROM db_script_string WHERE entry IN (2000005623,2000005624,2000005625,2000005626);
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000005623,'Easy now, drakeling.',0,0,0,0,'Raelorasz - say_drake_1'),
(2000005624,'A wonderful specimen.',0,0,0,0,'Raelorasz - say_drake_2'),
(2000005625,'Sleep now, young one....',0,0,0,0,'Raelorasz - say_drake_3'),
(2000005626,'Yes, this one should advance my studies nicely....',0,0,0,0,'say_drake_4');
DELETE FROM dbscripts_on_spell WHERE id IN (46702,46693);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, data_flags, dataint, dataint2, dataint3, comments) VALUES
(46702, 1, 15, 46704, 6, 0, 0, 0, 'cast Raelorasz Fireball'),
(46702, 1, 0, 0, 2, 2000005623, 2000005624, 2000005625, 'say text'),
(46702, 5, 0, 0, 2, 2000005626, 0, 0, 'say text'),
(46693, 0, 14, 46691, 2, 0, 0, 0, 'remove Drake Hatchling Subdued aura');
-- quest 11090
UPDATE creature_template SET FactionAlliance = 14, FactionHorde = 14, UnitFlags = UnitFlags|33554432, MinLevel = 73, MaxLevel = 73, InhabitType = 7 WHERE entry = 23416;
-- quest 11154
DELETE FROM spell_script_target WHERE entry IN (43307);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(43307,1,24230,0);
-- guesswork - to be checked!
UPDATE creature_template SET UnitFlags = UnitFlags|33554432 WHERE entry = 24230;
-- quest 11889
DELETE FROM spell_script_target WHERE entry IN (45863);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(45863,1,24771,0);
-- quest 11645 and 11468
DELETE FROM item_required_target WHERE entry IN (34111,34121);
INSERT INTO item_required_target (entry, type, targetEntry) VALUES
(34111, 1, 24746),
(34121, 1, 24747);
-- quest 11470
UPDATE creature_template SET InhabitType = InhabitType|4 WHERE entry = 24783;
DELETE FROM creature_template_spells WHERE entry IN (24783);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3,  spell4, spell5, spell6, spell7, spell8) VALUES
(24783, 44422, 44423, 44424, 0, 0, 0, 0, 0);
-- quest 13284, 13301
DELETE FROM creature_linking_template WHERE entry IN (31832, 31701);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(31832, 571, 31833, 131, 12),
(31701, 571, 31737, 131, 12);
-- quest 13309
UPDATE creature SET MovementType = 0 WHERE id = 31881;
DELETE FROM npc_spellclick_spells where npc_entry IN (32227, 31884);
-- INSERT INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, quest_start_active, quest_end, cast_flags,condition_id) VALUES
-- todo: add spell click and creature template spells for these
DELETE FROM creature_template_spells WHERE entry IN (32227, 31884);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3,  spell4, spell5, spell6, spell7, spell8) VALUES
(32227,59880, 0, 0, 0, 0, 0, 0, 0),
(31884,59880, 0, 0, 0, 0, 0, 0, 0);
-- quest 3566
UPDATE quest_template SET StartScript = 3566 WHERE entry = 3566;
DELETE FROM dbscripts_on_quest_start WHERE id = 3566;
INSERT INTO dbscripts_on_quest_start (id,delay,command,datalong,datalong2,x,y,z,o,comments) VALUES 
(3566, 2, 10, 8421, 120000, -6462.33, -1240.68, 180.285, 3.40242, 'spawn Dorius');
UPDATE creature_template SET MovementType = 2 WHERE entry = 8421;
-- linking
DELETE FROM creature_linking_template WHERE entry IN (8421, 8391);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(8421, 0, 8400, 3, 50),
(8391, 0, 8400, 3, 50);
-- movement script
DELETE FROM creature_movement_template WHERE entry IN (8421);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id, waittime, orientation) VALUES
(8421, 1, -6475.807, -1246.440, 180.248, 842101, 1000, 2.27);
-- move script
DELETE FROM dbscripts_on_creature_movement WHERE id IN (842101);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, dataint, comments) VALUES
(842101, 0, 32, 1, 0, 0, 'Dorius - pause waypoints');
-- dialogue by eventAI
-- quest 9729
UPDATE creature_template SET MovementType = 0 WHERE entry IN (18088, 18089, 18154);
-- this faction is guesswork
UPDATE creature_template SET FactionAlliance = 74, FactionHorde = 74 WHERE entry = 18154;
-- quest 11085
DELETE FROM creature WHERE id IN (23383);
DELETE FROM creature WHERE guid IN (140772, 140773, 140774);
INSERT INTO creature (guid,id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140772,23383, 530, 1, 1, 0, 0, -4106.64, 3029.76, 344.877, 0.820305, 60, 0, 0, 6986, 0, 0, 0),
(140773,23383, 530, 1, 1, 0, 0, -3712.91, 3802.86, 302.928, 1.580229, 60, 0, 0, 6986, 0, 0, 0),
(140774,23383, 530, 1, 1, 0, 0, -3655.85, 3380.96, 312.994, 0.146884, 60, 0, 0, 6986, 0, 0, 0);
-- ToDo: add the 3rd missing spawn and then add pool on all these
-- Also add spawn for GO 185952
-- remove broken auras!! these should not be used by these creautres
UPDATE creature_addon SET auras = NULL WHERE guid IN (SELECT guid FROM creature WHERE id = 21911);
-- quest 12082
UPDATE gameobject SET state = 0 WHERE id IN (188480);
UPDATE creature_template_addon SET auras = NULL WHERE entry = 26867;
UPDATE creature_template SET FactionAlliance = 14, FactionHorde = 14 WHERE entry IN (26871,26865);
-- quest 5944
DELETE FROM spell_script_target WHERE entry IN (18969,18811);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(18969,1,1842,0),
(18811,1,1836,0);
-- linking
DELETE FROM creature_linking_template WHERE entry IN (12128);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(12128, 0, 1840, 513, 20);
-- quest 11198
UPDATE creature_template SET MovementType = 2, InhabitType = 2 WHERE entry IN (23899);
-- note: movement is not 100% accurate
DELETE FROM creature_movement_template WHERE entry IN (23899);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id, waittime, orientation) VALUES
(23899,1, -3900.415, -4754.055, -12.02, 2389901, 1000, 1.24),
(23899,2, -3901.407, -4733.658, -1.52, 0, 0, 1.24),
(23899,3, -3900.897, -4694.766, -1.52, 0, 0, 0),
(23899,4, -3879.212, -4685.591, -1.52, 0, 0, 0),
(23899,5, -3874.114, -4669.485, -1.52, 0, 0, 0),
(23899,6, -3885.942, -4656.377, -1.52, 0, 0, 0),
(23899,7, -3908.514, -4675.297, -1.52, 0, 0, 0),
(23899,8, -3913.954, -4703.188, -1.52, 0, 0, 0),
(23899,9, -3909.002, -4704.592, -1.52, 0, 0, 0),
(23899,10, -3890.338, -4699.576, -1.52, 0, 0, 0),
(23899,11, -3890.559, -4689.315, -1.52, 0, 0, 0),
(23899,12, -3891.030, -4671.170, -1.52, 2389912, 1000, 0.74);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2389901,2389912);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, comments) VALUES
(2389901, 0, 25, 1, 0, 0, 0, 0, 0, 'Tethyr - set run'),
(2389912, 0, 32, 1, 0, 0, 0, 0, 0, 'Tethyr - pause waypoints'),
(2389912, 0, 0, 0, 0, 23905, 100, 0, 2000005634, 'yell_tethyr_1'),
(2389912, 5, 0, 0, 0, 23905, 100, 0, 2000005635, 'yell_tethyr_2');
DELETE FROM db_script_string WHERE entry IN (2000005634,2000005635,2000005636,2000005637,2000005638);
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000005634,'Prepare to fire upon my command! Ready, aim...',0,1,0,0,'major mills - yell_tethyr_1'),
(2000005635,'FIRE AT WILL!',0,1,0,22,'major mills - yell_tethyr_2'),
(2000005636,'Marksmen, form up and take your positions!',0,1,0,0,'major mills - yell_tethyr_0'),
(2000005637,'We did it! We\'ve defeated Tethyr!',0,1,0,0,'marksman - yell_tethyr_dead'),
(2000005638,'We defeated the sea monster!',0,1,0,0,'marksman - yell_tethyr_dead');
DELETE FROM dbscripts_on_quest_start WHERE id = 11198;
INSERT INTO dbscripts_on_quest_start (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(11198, 2, 0, 0, 0, 0, 0, 0, 2000005636, 0,0,0,0,0,0,0,'yell_tethyr_0'),
(11198, 5, 10, 23900, 0, 0, 0, 0, 0, 0, 0, 0, -3924.35, -4656.55, 9.15409, 5.80749, 'spawn Theramore Marksman'),
(11198, 5, 10, 23900, 0, 0, 0, 0, 0, 0, 0, 0, -3917.6, -4648.53, 9.32604, 5.56795, 'spawn Theramore Marksman'),
(11198, 5, 10, 23900, 0, 0, 0, 0, 0, 0, 0, 0, -3904.77, -4635.09, 9.62735, 5.49334, 'spawn Theramore Marksman'),
(11198, 5, 10, 23900, 0, 0, 0, 0, 0, 0, 0, 0, -3890.48, -4620.7, 9.55527, 4.99383, 'spawn Theramore Marksman'),
(11198, 5, 10, 23900, 0, 0, 0, 0, 0, 0, 0, 0, -3865.94, -4617.2, 9.26262, 4.16523, 'spawn Theramore Marksman'),
(11198, 5, 10, 23900, 0, 0, 0, 0, 0, 0, 0, 0, -3856.59, -4622.45, 9.24753, 3.87856, 'spawn Theramore Marksman'),
(11198, 5, 10, 23900, 0, 0, 0, 0, 0, 0, 0, 0, -3834.8, -4645.41, 9.25827, 3.61152, 'spawn Theramore Marksman'),
(11198, 5, 10, 23900, 0, 0, 0, 0, 0, 0, 0, 0, -3826.61, -4655.32, 9.21484, 3.13243, 'spawn Theramore Marksman'),
(11198, 5, 10, 23900, 0, 0, 0, 0, 0, 0, 0, 0, -3830.76, -4673.74, 9.50962, 2.70832, 'spawn Theramore Marksman'),
(11198, 5, 10, 23900, 0, 0, 0, 0, 0, 0, 0, 0, -3843.65, -4687.59, 9.6436, 2.43735, 'spawn Theramore Marksman'),
(11198, 5, 10, 23900, 0, 0, 0, 0, 0, 0, 0, 0, -3851.97, -4697.24, 9.36834, 2.33525, 'spawn Theramore Marksman'),
(11198, 5, 10, 23900, 0, 0, 0, 0, 0, 0, 0, 0, -3858.49, -4703.49, 9.17411, 2.33525, 'spawn Theramore Marksman'),
(11198, 8, 10, 23899, 0, 0, 0, 6, 0, 0, 0, 0, -3900.415, -4754.055, -12.02, 1.24, 'spawn Tethyr');
DELETE FROM dbscripts_on_creature_death WHERE id = 23899;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, comments) VALUES
(23899, 0, 0, 0, 0, 23900, 100, 0, 2000005637, 0, 'yell_tethyr_dead'),
(23899, 10, 0, 0, 0, 23900, 100, 0, 2000005638, 0, 'yell_tethyr_dead');
-- TEMP WORKAROUND in order to make the GO usable in script after use
DELETE FROM dbscripts_on_go_template_use WHERE id = 186432;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, data_flags, comments) VALUES
(186432, 17, 27, 8, 6, 'remove no_interact flag');
-- quest 12255 and 12259
DELETE FROM conditions WHERE condition_entry IN (946, 947);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(946, 9, 12255, 0),
(947, 9, 12259, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 9512;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id,  npc_option_npcflag, action_menu_id, action_poi_id, 
action_script_id, box_coded, box_money, box_text, condition_id) VALUES 
(9512, 0, 0, 'Unchain and control Flamebringer.', 1, 1, -1, 0, 951201, 0, 0, NULL, 946),
(9512, 1, 0, 'Unchain and control Flamebringer.', 1, 1, -1, 0, 951201, 0, 0, NULL, 947);
DELETE FROM dbscripts_on_gossip WHERE id = 951201;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry,  search_radius, data_flags, dataint, dataint2, 
dataint3, dataint4, x, y, z, o, comments) VALUES 
(951201, 0, 15, 48595, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Summon Flamebringer'),
(951201, 1, 15, 48600, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Ride Flamebringer'),
(951201, 1, 15, 48602, 0, 27292, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Flight');
UPDATE creature_template SET InhabitType = InhabitType|4 WHERE entry = 27292;
-- quest 12644
UPDATE gameobject SET spawntimesecs = -180 WHERE id = 190643;
-- quest 7041
DELETE FROM dbscripts_on_go_template_use WHERE id = 178905;
INSERT INTO dbscripts_on_go_template_use (id,command,datalong,datalong2,comments) VALUES
(178905,10,13696,60000,'summon Noxxious Scion'),
(178905,10,13696,60000,'summon Noxxious Scion'),
(178905,10,13696,60000,'summon Noxxious Scion');
-- quest 11405
UPDATE quest_template SET CompleteScript = 11405 WHERE entry = 11405;
DELETE FROM dbscripts_on_quest_end WHERE id = 11405;
INSERT INTO dbscripts_on_quest_end (id,delay,command,datalong,datalong2,data_flags,dataint,x,y,z,o,comments) VALUES
(11405,1,0,0,0,2,2000005639,0,0,0,0,'say_summon_horseman_1'),
(11405,3,0,0,0,2,2000005640,0,0,0,0,'say_summon_horseman_2'),
(11405,5,0,0,0,2,2000005641,0,0,0,0,'say_summon_horseman_3'),
(11405,8,0,0,0,2,2000005642,0,0,0,0,'say_summon_horseman_4'),
(11405,8,15,42909,0,0,0,0,0,0,0,'cast Headless Horseman Climax - Summoning Rhyme, Shake, Medium'),
(11405,10,10,23682,0,0,0,1765.28,1347.46,17.5514,0.100363,'summon Headless Horseman');
UPDATE creature_template SET MovementType = 2,InhabitType = InhabitType|4 WHERE entry = 23682;
DELETE FROM db_script_string WHERE entry IN (2000005639,2000005640,2000005641,2000005642,2000005643,2000005644);
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000005639,'Horseman rise...',0,0,0,0,'horseman say_summon_horseman_1'),
(2000005640,'Your time is night...',0,0,0,0,'horseman say_summon_horseman_2'),
(2000005641,'You felt death once...',0,0,0,0,'horseman say_summon_horseman_3'),
(2000005642,'Now, know demise!',0,0,0,0,'horseman say_summon_horseman_4'),
(2000005643,'It is over, your search is done! Let fate choose now, the righteous one.',11961,1,0,0,'horseman say_intro'),
(2000005644,'%s laughs.',11965,2,0,0,'horseman emote_laugh');
DELETE FROM creature_movement_template WHERE entry IN (23682);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id, waittime, orientation) VALUES
(23682,1,1766.327, 1347.983, 20.639, 2368201, 0, 0),
(23682,2,1768.127, 1348.233, 30.344, 0, 0, 0),
(23682,3,1774.342, 1348.627, 40.366, 0, 0, 0),
(23682,4,1784.442, 1349.328, 40.366, 0, 0, 0),
(23682,5,1796.890, 1348.784, 40.366, 0, 0, 0),
(23682,6,1802.690, 1352.518, 40.366, 0, 0, 0),
(23682,7,1803.613, 1360.228, 40.366, 0, 0, 0),
(23682,8,1800.439, 1366.104, 40.366, 0, 0, 0),
(23682,9,1791.870, 1369.557, 40.366, 0, 0, 0),
(23682,10,1781.039, 1373.541, 40.366, 0, 0, 0),
(23682,11,1774.959, 1372.638, 40.366, 0, 0, 0),
(23682,12,1767.927, 1375.606, 40.366, 0, 0, 0),
(23682,13,1761.487, 1375.764, 35.580, 0, 0, 0),
(23682,14,1757.467, 1373.681, 25.280, 0, 0, 0),
(23682,15,1757.916, 1366.613, 19.501, 2368215, 1000, 5.67);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2368201,2368215);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, comments) VALUES
(2368201, 0, 0, 0, 0, 0, 0, 0, 2000005643, 'Headless Horseman - say_intro'),
(2368201, 8, 0, 0, 0, 0, 0, 0, 2000005644, 'Headless Horseman - emote_laugh'),
(2368215, 0, 32, 1, 0, 0, 0, 0, 0, 'Headless Horseman - pause waypoints');
-- linking
DELETE FROM creature_linking_template WHERE entry IN (23775);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(23775, 189, 23682, 4096, 0);
DELETE FROM spell_script_target WHERE entry IN (43306,43101);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(43306,1,23682,0),
(43101,1,23682,0);
-- bad model
UPDATE creature_template SET ModelId1 = 5187, ModelId2 = 21908 WHERE entry IN (23775);
-- quest 11476
DELETE FROM conditions WHERE condition_entry IN (948, 949, 950);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(948, 9, 11476, 1),
(949, 2, 35813, 1),
(950, -1, 948, 949);
DELETE FROM npc_spellclick_spells WHERE npc_entry = 26503;
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, quest_start_active, quest_end, cast_flags,condition_id) VALUES
(26503, 0, 0, 0, 0, 0, 950);
-- quest 12075
DELETE FROM conditions WHERE condition_entry IN (951, 952, 953);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(951, 9, 12075, 1),
(952, 32, 31261, 0),
(953, -1, 951, 952);
DELETE FROM npc_spellclick_spells WHERE npc_entry = 26809;
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, quest_start_active, quest_end, cast_flags,condition_id) VALUES
(26809, 0, 0, 0, 0, 0, 953);
-- non power regen creatures
UPDATE creature_template SET RegenerateStats =  RegenerateStats&~2 where entry IN (37813,38582,38583,30790,15340,15262,33167,33109,36838,37672);
-- error fix
UPDATE creature SET spawndist = 0 WHERE id = 31881;
DELETE FROM creature_addon WHERE guid IN (120880,120881,120882,120883,120884,120903,120904,120905,120906,120907);
-- Missing vehicle data (YTDB)
DELETE FROM vehicle_accessory WHERE vehicle_entry IN (40081);
INSERT INTO vehicle_accessory (vehicle_entry, seat, accessory_entry, comment) VALUES
(40081, 0, 40083, 'Orb Carrier'),
(40081, 1, 40100, 'Orb Carrier');
-- missing vehicle spells (YTDB)
DELETE FROM creature_template_spells WHERE entry IN (25334,25596,25743,26472,26523,26813,27061,27213,27258,27270,27292,27354,27496,27587,27629,27692,27714,27755,27756,27894,27992,27993,27996,28115,28222,28366,28605,28606,28607
,28670,28781,28782,28833,28985,28999,29005,29414,29602,29677,29709,29884,29918,30124,30161,30228);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3,  spell4, spell5, spell6, spell7, spell8) VALUES
(25334, 50672, 45750, 50677, 47849, 47962, 0, 0, 0),
(25596, 45877, 0, 0, 0, 0, 0, 0, 0),
(25743, 46317, 46315, 46316, 0, 0, 0, 0, 0),
(26472, 49285, 29577, 0, 0, 0, 0, 0, 0),
(26523, 48211, 0, 0, 0, 0, 0, 0, 0),
(26813, 63507, 47434, 47454, 0, 0, 0, 0, 0),
(27061, 47966, 47921, 47938, 47939, 0, 0, 0, 0),
(27213, 48297, 0, 0, 0, 0, 0, 0, 0),
(27258, 48363, 48397, 54170, 0, 0, 0, 0, 0),
(27270, 49238, 0, 0, 0, 0, 0, 0, 0),
(27292, 48619, 48620, 52812, 0, 0, 0, 0, 0),
(27354, 48558, 48604, 48548, 48610, 0, 0, 0, 0),
(27496, 48984, 49063, 74608, 49025, 0, 0, 0, 0),
(27587, 49315, 49333, 49109, 49081, 0, 0, 0, 0),
(27629, 49161, 49243, 49263, 49264, 49367, 0, 0, 0),
(27692, 50328, 50341, 50344, 0, 0, 53389, 0, 0),
(27714, 49190, 49550, 0, 0, 0, 0, 0, 0),
(27755, 49840, 49838, 49592, 0, 0, 53389, 0, 0),
(27756, 50232, 50240, 50253, 0, 0, 53389, 0, 0),
(27894, 49872, 0, 0, 0, 0, 0, 0, 0),
(27992, 43997, 43986, 0, 0, 0, 0, 0, 0),
(27993, 43997, 43986, 0, 0, 0, 0, 0, 0),
(27996, 55987, 50430, 50348, 0, 0, 0, 0, 0),
(28115, 52331, 52358, 53032, 0, 0, 52321, 0, 0),
(28222, 50978, 50980, 50985, 50983, 54166, 0, 0, 0),
(28366, 51421, 0, 0, 0, 0, 0, 0, 0),
(28605, 52264, 52268, 0, 0, 0, 0, 0, 0),
(28606, 52264, 52268, 0, 0, 0, 0, 0, 0),
(28607, 52264, 52268, 0, 0, 0, 0, 0, 0),
(28670, 53114, 0, 53110, 0, 0, 0, 0, 0),
(28781, 52338, 60206, 0, 0, 0, 0, 0, 0),
(28782, 52362, 0, 0, 0, 0, 0, 0, 0),
(28833, 52435, 52576, 0, 0, 52588, 0, 0, 0),
(28985, 61374, 52870, 52864, 0, 0, 0, 0, 0),
(28999, 61375, 61376, 52862, 52864, 0, 0, 0, 0),
(29005, 61380, 47911, 0, 0, 0, 0, 0, 0),
(29414, 48766, 54469, 54467, 55214, 54422, 0, 0, 0),
(29602, 54897, 54907, 0, 0, 0, 0, 0, 0),
(29677, 54997, 54996, 0, 0, 0, 0, 0, 0),
(29709, 55046, 0, 0, 0, 0, 0, 0, 0),
(29884, 55426, 55429, 55516, 55421, 0, 0, 0, 0),
(29918, 0, 0, 0, 54459, 54458, 54460, 0, 0),
(30124, 56750, 56753, 0, 0, 0, 0, 0, 0),
(30161, 56091, 56092, 57090, 57143, 57108, 57092, 0, 0),
(30228, 56683, 56684, 56712, 0, 0, 0, 0, 0);
DELETE FROM creature_template_spells WHERE entry IN (30337,30645,30895,31110,31157,31784,31830,32535,33217,33316,33317,33318,33319,33320,33321,33322,33323,33324,33531,33782,33844,33845,34045,34775,34776,34777,34778,34793,34802
,34929,34935,34944,35069,35273,35644,36355,36356,36557,36558,36559,36838,37672,27881,28312,32627,28319,32629,28094);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3,  spell4, spell5, spell6, spell7, spell8) VALUES
(30337, 56585, 0, 56570, 0, 0, 0, 0, 0),
(30645, 57643, 57652, 57665, 57668, 0, 0, 0, 0),
(30895, 57882, 58203, 58282, 58283, 0, 0, 0, 0),
(31110, 58541, 58544, 58543, 58562, 58563, 58658, 0, 0),
(31157, 59234, 0, 0, 0, 0, 0, 0, 0),
(31784, 4338, 4342, 4336, 0, 0, 0, 0, 0),
(31830, 59733, 8204, 59737, 0, 0, 0, 0, 0),
(32535, 56091, 56092, 57090, 57143, 57108, 57403, 0, 0),
(33217, 62544, 62575, 62960, 62552, 64077, 62863, 63034, 0),
(33316, 62544, 62575, 62960, 62552, 64077, 62863, 63034, 0),
(33317, 62544, 62575, 62960, 62552, 64077, 62863, 63034, 0),
(33318, 62544, 62575, 62960, 62552, 64077, 62863, 63034, 0),
(33319, 62544, 62575, 62960, 62552, 64077, 62863, 63034, 0),
(33320, 62544, 62575, 62960, 62552, 64077, 62863, 63034, 0),
(33321, 62544, 62575, 62960, 62552, 64077, 62863, 63034, 0),
(33322, 62544, 62575, 62960, 62552, 64077, 62863, 63034, 0),
(33323, 62544, 62575, 62960, 62552, 64077, 62863, 63034, 0),
(33324, 62544, 62575, 62960, 62552, 64077, 62863, 63034, 0),
(33531, 64588, 64595, 62563, 62552, 64077, 0, 0, 0),
(33782, 62544, 62575, 62960, 62552, 64077, 62863, 63034, 0),
(33844, 62544, 62575, 62960, 62552, 64077, 62863, 63034, 0),
(33845, 62544, 62575, 62960, 62552, 64077, 62863, 63034, 0),
(34045, 62974, 62286, 62299, 64660, 0, 0, 0, 0),
(34775, 67440, 67441, 0, 0, 0, 0, 0, 0),
(34776, 67796, 67797, 0, 0, 0, 0, 0, 0),
(34777, 67462, 69505, 0, 0, 0, 0, 0, 0),
(34778, 68832, 0, 0, 0, 0, 0, 0, 0),
(34793, 66218, 66296, 0, 0, 0, 0, 0, 68362),
(34802, 66456, 67195, 0, 0, 0, 0, 0, 0),
(34929, 66518, 0, 0, 0, 0, 0, 0, 0),
(34935, 66529, 0, 0, 0, 0, 0, 0, 0),
(34944, 68170, 66541, 0, 0, 0, 0, 0, 0),
(35069, 67796, 67797, 0, 0, 0, 0, 0, 0),
(35273, 67034, 67195, 0, 0, 0, 0, 0, 0),
(35644, 68505, 62575, 68282, 66482, 0, 0, 0, 0),
(36355, 67462, 69505, 0, 0, 0, 0, 0, 0),
(36356, 68832, 0, 0, 0, 0, 0, 0, 0),
(36557, 68505, 62575, 68282, 66482, 0, 0, 0, 0),
(36558, 68505, 62575, 68282, 66482, 0, 0, 0, 0),
(36559, 68505, 62575, 68282, 66482, 0, 0, 0, 0),
(36838, 69399, 70175, 0, 0, 0, 0, 0, 0),
(37672, 70360, 70539, 70542, 0, 0, 71516, 0, 0),
-- wintergrasp vehicles
(27881, 57606, 50989, 0, 0, 0, 0, 0, 0),
(28094, 57618, 54107, 0, 0, 0, 0, 0, 0),
(28312, 54109, 0, 0, 0, 0, 0, 0, 0),
(32627, 51678, 0, 0, 0, 0, 0, 0, 0),
(28319, 57609, 0, 0, 0, 0, 0, 0, 0),
(32629, 57609, 0, 0, 0, 0, 0, 0, 0);

-- ---------------
-- Neatelves
-- ---------------
-- quests 12213, 12220
DELETE FROM dbscripts_on_spell WHERE id = 48218;
INSERT INTO dbscripts_on_spell (id, command, comments) VALUES
(48218, 8, 'create from quest_template');
-- Tailor (by Neatelves)
-- Conditions (start condition entry from 921) - updated for UDB
DELETE FROM conditions WHERE condition_entry IN (921,922,923,924,925,926,927,928,929,930,931,932,933,934,935,936,937,938,939,940);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(921, 29, 197, 1), -- has no tailor skill
(922, 17, 26797, 0), -- has spellfire tailor
(923, 17, 26798, 0), -- has mooncloth tailor
(924, 17, 26801, 0), -- has shadoweave tailor
(925, 8, 10832, 0), -- awarded quest Spellfire Tailor
(926, 8, 10831, 0), -- awarded quest Mooncloth Tailor
(927, 8, 10833, 0), -- awarded quest Shadoweave Tailor
(928, 7, 197, 350), -- has tailor of min 350
(929, 15, 60, 1), -- has at least lvl 60
(930, -2, 925, 926), -- Spellfire tailor OR Mooncloth tailor quests awarded
(931, -2, 927, 930), -- Spellfire tailor OR Mooncloth tailor OR Shadoweave quests awarded
(932, -1, 928, 929), -- has tailor of 350 AND lvl 60
(933, -1, 931, 932), -- (tailor of 350 AND lvl 60) AND (any tailor quests awarded)
(934, -2, 922, 923), -- has spellfire tailor spell OR mooncloth tailor spell
(935, -2, 924, 934), -- has spellfire tailor spell OR mooncloth tailor spell OR shadoweave tailor spell
(936, -3, 935, 0), -- has NOT (spellfire tailor spell OR mooncloth tailor spell OR shadoweave tailor spell)
(937, -1, 933, 936), -- has (level AND skill AND quests) AND (has NOT tailor spells)
(938, -1, 922, 933), -- has (level AND skill AND quests) AND has spellfire tailor
(939, -1, 923, 933), -- has (level AND skill AND quests) AND has mooncloth tailor
(940, -1, 924, 933); -- has (level AND skill AND quests) AND has shadoweave tailor
-- gossip menus
DELETE FROM gossip_menu WHERE entry IN (8530,8531,8532);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8530, 10669, 0, 0),
(8530, 10670, 0, 921),
(8531, 10671, 0, 0),
(8531, 10672, 0, 921),
(8532, 10673, 0, 0),
(8532, 10674, 0, 921);
-- gossip menu options
DELETE FROM gossip_menu_option WHERE menu_id IN (8530,8531,8532);
REPLACE INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_poi_id,action_script_id,box_coded,box_money,box_text,condition_id) VALUES
(8530, 0, 1, 'Show me what you have for sale.', 3, 128, 0, 0, 0, 0, 0, NULL, 0),
(8530, 1, 0, 'Please teach me how to become a Mooncloth tailoring.', 1, 1, -1, 0, 853001, 0, 0, NULL, 937),
(8530, 2, 0, 'I wish to unlearn Mooncloth Tailoring.', 1, 1, -1, 0, 853002, 0, 1500000, 'Do you really want to unlearn your tailoring specialty and lose all associated recipes?', 939),
(8531, 0, 1, 'Show me what you have for sale.', 3, 128, 0, 0, 0, 0, 0, NULL, 0),
(8531, 1, 0, 'Please teach me how to become a Spellfire tailoring.', 1, 1, -1, 0, 853101, 0, 0, NULL, 937),
(8531, 2, 0, 'I wish to unlearn Spellfire Tailoring.', 1, 1, -1, 0, 853102, 0, 1500000, 'Do you really want to unlearn your tailoring specialty and lose all associated recipes?', 938),
(8532, 0, 1, 'Show me what you have for sale.', 3, 128, 0, 0, 0, 0, 0, NULL, 0),
(8532, 1, 0, 'Please teach me how to become a Shadoweave tailoring.', 1, 1, -1, 0, 853201, 0, 0, NULL, 937),
(8532, 2, 0, 'I wish to unlearn Shadoweave Tailoring.', 1, 1, -1, 0, 853202, 0, 1500000, 'Do you really want to unlearn your tailoring specialty and lose all associated recipes?', 940);
-- gossip scripts
DELETE FROM dbscripts_on_gossip WHERE id IN (853101,853102,853001,853002,853201,853202);
INSERT INTO dbscripts_on_gossip (id,delay,command,datalong,comments) VALUES
(853101, 0, 15, 26796, 'cast Spellfire Tailoring'),
(853001, 0, 15, 26799, 'cast Mooncloth Tailoring'),
(853201, 0, 15, 26800, 'cast Shadoweave Tailoring'),
(853102, 0, 15, 41299, 'cast Unlearn Spellfire Tailoring'),
(853002, 0, 15, 41558, 'cast Unlearn Mooncloth Tailoring'),
(853202, 0, 15, 41559, 'cast Unlearn Shadoweave Tailoring');
-- Quest 1090 "Gerenzo's Orders"
-- A simple defend quest
-- Overview (Details are not too clear)
-- Summons 3 waves of mobs: 2x3998+1x4001 -- 2x4002+2x4003+1x4004 -- 3x4001+1x4004
UPDATE quest_template SET StartScript = 1090 WHERE entry = 1090;
DELETE FROM dbscripts_on_quest_start WHERE id = 1090;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, x, y, z, o, comments) VALUES
-- (1090, 0, C, d, d2, 0, 0, 0, 'change npc-flags on quest-accept'),           -- ??
-- (1090, 0, C, d, d2, 0, 0, 0, 'change faction on quest-accept'),             -- ??
(1090, 5, 26, 0, 0, 3999, 10, 3, 0, 0, 0, 0, 'aggro nearby mob if possible'),
-- First wave
(1090, 60, 10, 3998, 60000, 0, 0, 0, 938.30, -257.35, -2.22, 0, 'summon first wave'),
(1090, 60, 10, 3998, 60000, 0, 0, 0, 942.28, -254.49, -2.38, 0, 'summon first wave'),
(1090, 60, 10, 4001, 60000, 0, 0, 0, 938.52, -253.20, -2.08, 0, 'summon first wave'),
-- Condition check
(1090, 149, 34, 944, 1090, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(1090, 149, 34, 945, 1090, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
-- Second wave
(1090, 150, 10, 4002, 60000, 0, 0, 0, 938.30, -257.35, -2.22, 0, 'summon second wave'), -- 938.30 -257.35 -2.22
(1090, 150, 10, 4002, 60000, 0, 0, 0, 942.28, -254.49, -2.38, 0, 'summon second wave'),
(1090, 150, 10, 4003, 60000, 0, 0, 0, 938.52, -253.20, -2.08, 0, 'summon second wave'),
(1090, 150, 10, 4003, 60000, 0, 0, 0, 939.51, -253.11, -2.02, 0, 'summon second wave'),
(1090, 150, 10, 4004, 60000, 0, 0, 0, 938.30, -257.35, -2.22, 0, 'summon second wave'),
-- Condition check
(1090, 239, 34, 944, 1090, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(1090, 239, 34, 945, 1090, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
-- Third wave
(1090, 240, 10, 4001, 60000, 0, 0, 0, 938.30, -257.35, -2.22, 0, 'summon third wave'),
(1090, 240, 10, 4001, 60000, 0, 0, 0, 942.28, -254.49, -2.38, 0, 'summon third wave'),
(1090, 240, 10, 4001, 60000, 0, 0, 0, 938.52, -253.20, -2.08, 0, 'summon third wave'),
(1090, 240, 10, 4004, 60000, 0, 0, 0, 939.51, -253.11, -2.02, 0, 'summon third wave'),
-- Condition check
(1090, 419, 34, 944, 1090, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(1090, 419, 34, 945, 1090, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
(1090, 420, 7, 1090, 0, 0, 0, 0, 0, 0, 0, 0, 'quest complete');
-- conditions
DELETE FROM conditions WHERE condition_entry IN (944, 945);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(944, 36, 0, 60),
(945, 36, 3, 0);
-- movement and attack for spawns
UPDATE creature_template SET MovementType = 2 WHERE entry IN (3998,4001,4002,4003,4004);
DELETE FROM creature_movement_template WHERE entry IN (3998,4001,4002,4003,4004);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id, waittime, orientation) VALUES
(3998, 1, 945.869, -255.917, -3.017, 0, 0, 0),
(3998, 2, 954.064, -257.818, -3.511, 0, 0, 0),
(3998, 3, 959.217, -260.678, -5.673, 399803, 0, 0),
(4001, 1, 945.869, -255.917, -3.017, 0, 0, 0),
(4001, 2, 954.064, -257.818, -3.511, 0, 0, 0),
(4001, 3, 959.217, -260.678, -5.673, 399803, 0, 0),
(4002, 1, 945.869, -255.917, -3.017, 0, 0, 0),
(4002, 2, 954.064, -257.818, -3.511, 0, 0, 0),
(4002, 3, 959.217, -260.678, -5.673, 399803, 0, 0),
(4003, 1, 945.869, -255.917, -3.017, 0, 0, 0),
(4003, 2, 954.064, -257.818, -3.511, 0, 0, 0),
(4003, 3, 959.217, -260.678, -5.673, 399803, 0, 0),
(4004, 1, 945.869, -255.917, -3.017, 0, 0, 0),
(4004, 2, 954.064, -257.818, -3.511, 0, 0, 0),
(4004, 3, 959.217, -260.678, -5.673, 399803, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 399803;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, buddy_entry, search_radius, data_flags, comments) VALUES
(399803, 0, 26, 4276, 10, 2, 'attack Piznik');
-- quest 5713 - One Shot. One Kill. (Xfurry)
DELETE FROM db_script_string WHERE entry IN (2000005627,2000005628,2000005629,2000005630,2000005631);
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000005627,'Wait... did you hear that? Something approaches from the west!',0,0,0,1,'Sentinel Aynasha - say_protect_1'),
(2000005628,'I\'ve run out of arrows! I\'m afraid if any more come you will need to take them on by yourself my friend.',0,0,0,0,'Sentinel Aynasha - say_protect_2'),
(2000005629,'Praise Elune! I don\'t know if I could have survived the day without you, friend.',0,0,0,5,'Sentinel Aynasha - say_protect_3'),
(2000005630,'My legs feels much better now, the remedy must be working. If you will excuse me, I must go report to my superiors about what has transpired here.',0,0,0,1,'Sentinel Aynasha - say_protect_4'),
(2000005631,'Please speak with Sentinel Onaeya at Maestra\'s Post in Ashenvale, she will see to it that you are properly rewarded for your bravery this day.',0,0,0,1,'Sentinel Aynasha - say_protect_5');
-- quest script
UPDATE quest_template SET StartScript = entry WHERE entry = 5713;
DELETE FROM dbscripts_on_quest_start WHERE id = 5713;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, x, y, z, o, comments) VALUES
-- (5713, 0, C, d, d2, 0, 0, 0, 'change npc-flags on quest-accept'), -- ??
(5713, 0, 0, 0, 0, 0, 0, 0, 2000005627, 0, 0, 0, 0, 'say_protect_1'),
-- First wave
(5713, 5, 10, 11713, 60000, 0, 0, 0, 0, 4371.175, -11.965, 67.64, 0, 'summon first wave'),
(5713, 5, 10, 11713, 60000, 0, 0, 0, 0, 4368.286, -13.418, 67.81, 0, 'summon first wave'),
-- Condition check
(5713, 50, 34, 944, 5713, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(5713, 50, 34, 945, 5713, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
-- Second wave
(5713, 55, 10, 11713, 60000, 0, 0, 0, 0, 4371.175, -11.965, 67.64, 0, 'summon second wave'),
(5713, 55, 10, 11713, 60000, 0, 0, 0, 0, 4368.286, -13.418, 67.81, 0, 'summon second wave'),
(5713, 55, 10, 11713, 60000, 0, 0, 0, 0, 4368.861, -15.438, 68.36, 0, 'summon second wave'),
-- Condition check
(5713, 70, 34, 944, 5713, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(5713, 70, 34, 945, 5713, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
-- Third wave
(5713, 75, 0, 0, 0, 0, 0, 0, 2000005628, 0, 0, 0, 0, 'say_protect_2'),
(5713, 75, 10, 11714, 60000, 0, 0, 0, 0, 4371.175, -11.965, 67.64, 0, 'summon third wave'),
-- Quest completed
(5713, 160, 34, 944, 5713, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(5713, 160, 34, 945, 5713, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
(5713, 165, 7, 5713, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest complete'),
(5713, 168, 0, 0, 0, 0, 0, 0, 2000005629, 0, 0, 0, 0, 'say_protect_3'),
(5713, 170, 0, 0, 0, 0, 0, 0, 2000005630, 0, 0, 0, 0, 'say_protect_4'),
(5713, 173, 0, 0, 0, 0, 0, 0, 2000005631, 0, 0, 0, 0, 'say_protect_5'),
(5713, 175, 25, 1, 0, 0, 0, 4, 0, 0, 0, 0, 0, 'set run on'),
(5713, 175, 20, 2, 0, 0, 0, 4, 0, 0, 0, 0, 0, 'start wp move'),
(5713, 175, 18, 20000, 0, 0, 0, 4, 0, 0, 0, 0, 0, 'despawn on timer');
-- movement and attack for spawns
UPDATE creature_template SET MovementType = 2 WHERE entry IN (11713,11714);
DELETE FROM creature_movement_template WHERE entry IN (11713,11714,11711);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id, waittime, orientation) VALUES
(11713, 1, 4368.861, -15.438, 68.36, 1171301, 1000, 5.1),
(11713, 2, 4366.765, -22.430, 70.20, 0, 0, 0),
(11713, 3, 4373.655, -34.314, 73.71, 0, 0, 0),
(11713, 4, 4379.270, -41.688, 80.02, 0, 0, 0),
(11713, 5, 4378.210, -49.390, 85.54, 0, 0, 0),
(11713, 6, 4384.206, -61.075, 86.93, 1171306, 0, 0),
(11714, 1, 4368.861, -15.438, 68.36, 1171301, 1000, 5.1),
(11714, 2, 4366.765, -22.430, 70.20, 0, 0, 0),
(11714, 3, 4373.655, -34.314, 73.71, 0, 0, 0),
(11714, 4, 4379.270, -41.688, 80.02, 0, 0, 0),
(11714, 5, 4378.210, -49.390, 85.54, 0, 0, 0),
(11714, 6, 4384.206, -61.075, 86.93, 1171306, 0, 0),
(11711, 1, 4384.206, -61.075, 86.93, 0, 0, 0),
(11711, 2, 4378.210, -49.390, 85.54, 0, 0, 0),
(11711, 3, 4379.270, -41.688, 80.02, 0, 0, 0),
(11711, 4, 4373.655, -34.314, 73.71, 0, 0, 0),
(11711, 5, 4366.765, -22.430, 70.20, 0, 0, 0),
(11711, 6, 4368.861, -15.438, 68.36, 0, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1171301,1171306);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, buddy_entry, search_radius, data_flags, comments) VALUES
(1171301, 0, 25, 1, 0, 0, 0, 'set run on'),
(1171306, 0, 26, 0, 11711, 10, 2, 'attack Sentinel Aynasha');
-- quest 667 - Death From Below (Xfurry)
DELETE FROM db_script_string WHERE entry IN (2000005632,2000005633);
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000005632,'All hands to battle stations! Naga incoming!',0,1,0,22,'Shakes O\'Breen - yell_naga_1'),
(2000005633,'If we can just hold them now, I am sure we will be in the clear.',0,0,0,0,'Shakes O\'Breen - yell_naga_2');
-- quest script
UPDATE quest_template SET StartScript = entry WHERE entry = 667;
DELETE FROM dbscripts_on_quest_start WHERE id = 667;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, x, y, z, o, comments) VALUES
-- (667, 0, C, d, d2, 0, 0, 0, 'change npc-flags on quest-accept'),  -- ??
(667, 0, 0, 0, 0, 0, 0, 0, 2000005632, 0, 0, 0, 0, 'say_protect_1'),
-- First wave
(667, 20, 10, 2775, 60000, 0, 0, 0, 0, -2158.563, -1972.463, 15.812, 0, 'summon first wave'),
(667, 20, 10, 2775, 60000, 0, 0, 0, 0, -2153.296, -1969.006, 15.628, 0, 'summon first wave'),
(667, 20, 10, 2775, 60000, 0, 0, 0, 0, -2155.721, -1970.597, 15.327, 0, 'summon first wave'),
-- Condition check
(667, 50, 34, 944, 667, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(667, 50, 34, 945, 667, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
-- Second wave
(667, 55, 10, 2775, 60000, 0, 0, 0, 0, -2158.563, -1972.463, 15.812, 0, 'summon second wave'),
(667, 55, 10, 2775, 60000, 0, 0, 0, 0, -2153.296, -1969.006, 15.628, 0, 'summon second wave'),
(667, 55, 10, 2775, 60000, 0, 0, 0, 0, -2155.721, -1970.597, 15.327, 0, 'summon second wave'),
(667, 65, 0, 0, 0, 0, 0, 0, 2000005633, 0, 0, 0, 0, 'say_protect_2'),
-- Condition check
(667, 100, 34, 944, 667, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(667, 100, 34, 945, 667, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
-- Third wave
(667, 110, 10, 2775, 60000, 0, 0, 0, 0, -2158.563, -1972.463, 15.812, 0, 'summon third wave'),
(667, 130, 10, 2775, 60000, 0, 0, 0, 0, -2153.296, -1969.006, 15.628, 0, 'summon second wave'),
(667, 130, 10, 2775, 60000, 0, 0, 0, 0, -2155.721, -1970.597, 15.327, 0, 'summon second wave'),
-- Quest completed
(667, 190, 34, 944, 667, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(667, 190, 34, 945, 667, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
(667, 195, 7, 667, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest complete');
UPDATE creature_template SET MovementType = 2 WHERE entry IN (2775);
DELETE FROM creature_movement_template WHERE entry IN (2775);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id, waittime, orientation) VALUES
(2775, 1, -2153.701, -1973.676, 15.00, 277501, 1000, 5.4),
(2775, 2, -2145.585, -1985.125, 12.04, 0, 0, 0),
(2775, 3, -2132.084, -1992.558, 5.96, 0, 0, 0),
(2775, 4, -2118.418, -2005.057, 5.63, 0, 0, 0),
(2775, 5, -2109.372, -2024.358, 6.08, 0, 0, 0),
(2775, 6, -2100.003, -2030.407, 3.14, 277506, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (277501,277506);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, buddy_entry, search_radius, data_flags, comments) VALUES
(277501, 0, 25, 1, 0, 0, 0, 'set run on'),
(277506, 0, 26, 0, 2610, 20, 2, 'attack Shakes O\'Breen');

-- Grz3s
-- ---------------
-- GOSSIPS -- (sniff)
-- ---------------
-- Oronok Torn-heart - gossips update
DELETE FROM gossip_menu WHERE entry = 8259; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8259, 10280, 0, 0),
(8259, 10312, 0, 378);
-- Caza'rez -- gossip
UPDATE creature_template SET GossipMenuId = 7825 WHERE entry = 17558;
DELETE FROM gossip_menu WHERE entry = 7825;
INSERT INTO gossip_menu (entry, text_id) VALUES 
(7825,9574);
-- Stone Guard Stok'ton -- gossip
UPDATE creature_template SET GossipMenuId = 7420 WHERE entry = 17493;
DELETE FROM gossip_menu WHERE entry = 7420;
INSERT INTO gossip_menu (entry, text_id) VALUES 
(7420,8962);
-- Watch Commander Krunk -- gossip
UPDATE creature_template SET GossipMenuId = 7333 WHERE entry = 16584;
DELETE FROM gossip_menu WHERE entry = 7333;
INSERT INTO gossip_menu (entry, text_id) VALUES 
(7333,8717);
-- Grelag -- gossip
UPDATE creature_template SET GossipMenuId = 7348 WHERE entry = 16858;
DELETE FROM gossip_menu WHERE entry = 7348;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7348, 8767, 0, 0),
(7348, 9619, 0, 954); 
DELETE FROM conditions WHERE condition_entry = 954;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(954, 8, 9345, 0);
-- Battlemage Vyara -- gossip
UPDATE creature_template SET GossipMenuId = 8500 WHERE entry = 22211;
DELETE FROM gossip_menu WHERE entry = 8500;
INSERT INTO gossip_menu (entry, text_id) VALUES 
(8500,10625);
-- Mordenai - gossips
DELETE FROM gossip_menu WHERE entry = 8493; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8493, 10606, 0, 0),
(8493, 10855, 0, 960), -- for not enough riding skill
(8493, 10854, 0, 959), -- for 11013 and further
(8493, 10655, 0, 957); -- between 10870 and 11012
DELETE FROM conditions WHERE condition_entry BETWEEN 955 and 960;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(955, 8, 10870, 0),
(958, 29, 762, 300),
(957, -1, 956, 955), -- between 10870 and 11012
(956, 7, 762, 300),
(959, 8, 11012, 0), -- for 11013 and further
(960, -1, 955, 958); -- riding skill <300
-- Overlord Mor'ghor -- gossip
DELETE FROM gossip_menu WHERE entry = 8666; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8666, 10901, 0, 0), -- main
(8666, 10950, 0, 441), -- 1st change
(8666, 11032, 0, 961); -- req. max rep.
DELETE FROM conditions WHERE condition_entry IN (441,961);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(441, 5, 1015, 5),
(961, 5, 1015, 7);
-- Taskmaster Varkule Dragonbreath - update
DELETE FROM gossip_menu WHERE entry = 8652; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8652, 10862, 0, 0), -- main 
(8652, 10863, 0, 47), -- after first q.
(8652, 10864, 0, 882); -- req. maxed rep.
-- Yazill the Merc - gossip
DELETE FROM gossip_menu WHERE entry = 8662; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8662, 10892, 0, 0);
UPDATE gossip_menu_option SET action_script_id = 866201, condition_id = 962 WHERE menu_id = 8662;
DELETE FROM dbscripts_on_gossip WHERE id = 866201;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(866201,0,15,41540,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM conditions WHERE condition_entry = 962;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(962, 9, 11108, 0);
-- Captured Arko'narin - gossips
DELETE FROM gossip_menu WHERE entry = 3129; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(3129, 3865, 0, 0), -- default 
(3129, 4113, 0, 968); -- after first quest completed
DELETE FROM conditions WHERE condition_entry = 968;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(968, 8, 5202, 0);
-- npc_spellclick_spells for one condition of cmangos [12641] -- Author. NeatElves
REPLACE INTO conditions (condition_entry, type, value1, value2) VALUES
(964, 1, 63146, 0);
REPLACE INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, quest_start_active, quest_end, cast_flags, condition_id) VALUES
(33498, 63125, 0, 0, 0, 1, 964);
-- Jero'me <Mo'rrisroe's Minion> -- gossip
UPDATE creature_template SET GossipMenuId = 8060 WHERE entry = 19882;
DELETE FROM gossip_menu WHERE entry IN (8060,8061);
INSERT INTO gossip_menu (entry, text_id) VALUES 
(8060,9955),
(8061,9956);
DELETE FROM gossip_menu_option WHERE menu_id = 8060; 
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_script_id, condition_id) VALUES
(8060, 0, 0, 'YES!', 1, 1, 8061, 0, 0),
(8060, 1, 0, 'NO!', 1, 1, -1, 0, 0);
-- Mankrik -- gossips
DELETE FROM npc_gossip WHERE npc_guid = 14348; -- old system removed
UPDATE creature_template SET GossipMenuId = 2861 WHERE entry = 3432;
DELETE FROM gossip_menu WHERE entry = 2861; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(2861, 3553, 0, 0), -- main 
(2861, 3554, 0, 943); -- after all his quests
DELETE FROM conditions WHERE condition_entry IN (941, 942, 943); 
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(943, -1, 942, 941),
(942, 8, 4921, 0),
(941, 8, 899, 0);


-- ---------------
-- Quests
-- ---------------
-- The Attack!(q.434) -A
DELETE FROM dbscripts_on_quest_start WHERE id = 434;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(434,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'npc_flag removed'),
(434,1,3,0,0,0,0,0,0,0,0,0,0,0,0,6.26784,''),
(434,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(434,6,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(434,8,0,0,0,8856,15,7,2000005646,0,0,0,0,0,0,0,'force buddy to: say text'),
(434,8,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(434,10,15,7671,0,8856,15,7,0,0,0,0,0,0,0,0,'cast 7671 on buddy'),
(434,10,3,0,0,0,0,0,0,0,0,0,0,0,0,2.251,''),
(434,11,23,7779,0,8856,15,7,0,0,0,0,0,0,0,0,'morph into 7779'),
(434,11,0,0,0,0,0,0,2000005647,0,0,0,0,0,0,0,''),
(434,15,20,2,0,8856,50,7,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(434,177,7,434,0,0,0,0,0,0,0,0,0,0,0,0,''),
(434,210,3,0,0,1756,10523,7 | 0x10,0,0,0,0,0,0,0,0.711,''),
(434,210,3,0,0,1756,10524,7 | 0x10,0,0,0,0,0,0,0,3.773,'');
UPDATE quest_template SET StartScript = 434 WHERE entry = 434; 
UPDATE creature SET spawntimesecs = 10 WHERE guid = 45707; -- Tyrion's Spybot
DELETE FROM creature_movement_template WHERE entry = 8856;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(8856,1,-8409.1,454.405,123.759,0,0,0,0,0,0,0,0,0,0,1.55551,0,0),
(8856,2,-8408.57,461.702,123.759,0,0,0,0,0,0,0,0,0,0,0.550206,0,0),
(8856,3,-8404.36,462.399,123.759,0,0,0,0,0,0,0,0,0,0,6.07313,0,0),
(8856,4,-8392.61,452.583,123.759,12000,885601,0,0,0,0,0,0,0,0,5.4511,0,0),
(8856,5,-8387.08,446.018,122.275,0,0,0,0,0,0,0,0,0,0,5.4177,0,0),
(8856,6,-8357.03,407.012,122.275,0,0,0,0,0,0,0,0,0,0,4.08331,0,0),
(8856,7,-8363.85,397.714,122.275,0,0,0,0,0,0,0,0,0,0,5.30068,0,0),
(8856,8,-8352.34,383.887,122.275,0,0,0,0,0,0,0,0,0,0,0.564722,0,0),
(8856,9,-8335.86,393.578,122.275,11000,885602,0,0,0,0,0,0,0,0,0.58043,0,0),
(8856,10,-8351.56,383.447,122.275,0,0,0,0,0,0,0,0,0,0,2.2703,0,0),
(8856,11,-8363.64,398.716,122.275,0,0,0,0,0,0,0,0,0,0,1.05293,0,0),
(8856,12,-8358.44,409.568,122.275,0,0,0,0,0,0,0,0,0,0,2.32842,0,0),
(8856,13,-8384.23,442.599,122.275,0,0,0,0,0,0,0,0,0,0,3.6911,0,0),
(8856,14,-8408.03,426.547,122.275,0,0,0,0,0,0,0,0,0,0,2.57112,0,0),
(8856,15,-8415.88,433.865,122.275,4000,885603,0,0,0,0,0,0,0,0,2.27018,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 885601 AND 885603; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(885601,3,0,0,0,0,0,0,2000005648,0,0,0,0,0,0,0,''),
(885601,5,1,16,0,1756,10523,7 | 0x10,0,0,0,0,0,0,0,0,''),
(885601,5,1,16,0,1756,10524,7 | 0x10,0,0,0,0,0,0,0,0,''),
(885601,8,0,0,0,1756,15,7,2000005649,0,0,0,0,0,0,0,'force buddy to: say text'),
(885601,10,0,0,0,0,0,0,2000005650,0,0,0,0,0,0,0,''),
(885602,1,3,0,0,1754,15,7,0,0,0,0,0,0,0,3.84895,''),
(885602,3,0,0,0,0,0,0,2000005651,0,0,0,0,0,0,0,''),
(885602,5,0,0,0,1754,15,7,2000005652,0,0,0,0,0,0,0,'force buddy to: say text'),
(885602,7,3,0,0,1754,15,7,0,0,0,0,0,0,0,2.596,''),
(885602,8,20,2,0,1754,20,7,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(885602,9,0,0,0,0,0,0,2000005653,0,0,0,0,0,0,0,''),
(885603,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(885603,0,15,7671,0,0,0,0,0,0,0,0,0,0,0,0,'cast 7671 on buddy'),
(885603,1,23,0,0,0,0,0,0,0,0,0,0,0,0,0,'demorph'),
(885603,3,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'despawn');
UPDATE creature SET spawntimesecs = 10 WHERE guid = 10502; -- Lord Gregor Lescovar
DELETE FROM creature_movement_template WHERE entry = 1754;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(1754,1,-8336.44,398.293,122.274,0,0,0,0,0,0,0,0,0,0,1.598,0,0),
(1754,2,-8336.895508,403.524048,122.274452,0,0,0,0,0,0,0,0,0,0,2.344913,0,0),
(1754,3,-8346.306641,414.936646,122.274452,0,0,0,0,0,0,0,0,0,0,3.659671,0,0),
(1754,4,-8357.951172,409.592560,122.274452,0,0,0,0,0,0,0,0,0,0,2.304858,0,0),
(1754,5,-8387.138672,445.790863,122.274780,0,0,0,0,0,0,0,0,0,0,2.257747,0,0),
(1754,6,-8392.396484,452.201996,123.760300,10000,175401,0,0,0,0,0,0,0,0,2.257747,0,0),
(1754,7,-8400.86,463.355,123.76,40000,175402,0,0,0,0,0,0,0,0,2.07666,0,0),
(1754,8,-8386.97,445.847,122.275,0,0,0,0,0,0,0,0,0,0,5.40122,0,0),
(1754,9,-8358.15,410.531,122.275,0,0,0,0,0,0,0,0,0,0,0.16575,0,0),
(1754,10,-8345.4,414.187,122.275,0,0,0,0,0,0,0,0,0,0,5.402,0,0),
(1754,11,-8336.05,402.219,122.275,0,0,0,0,0,0,0,0,0,0,4.95197,0,0),
(1754,12,-8334.01,394.723,122.275,3000,175403,0,0,0,0,0,0,0,0,2.56278,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 175401 AND 175403; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(175401,3,0,0,0,0,0,0,2000005654,0,0,0,0,0,0,0,''),
(175401,6,1,66,0,1756,10523,7 | 0x10,0,0,0,0,0,0,0,0,''),
(175401,6,1,66,0,1756,10524,7 | 0x10,0,0,0,0,0,0,0,0,''),
(175401,8,0,0,0,1756,15,7,2000005655,0,0,0,0,0,0,0,'force buddy to: say text'),
(175401,9,3,0,0,1756,10523,7 | 0x10,0,0,0,0,-8381.06,429.38,122.275,0.984174,''),
(175401,9,3,0,0,1756,10524,7 | 0x10,0,0,0,0,-8372.24,436.54,122.275,3.9302,''),
(175402,3,0,0,0,0,0,0,2000005656,0,0,0,0,0,0,0,''),
(175402,8,10,1755,300000,0,0,0,0,0,0,0,-8406.6,487.658,123.76,4.51923,''),
(175402,9,15,6634,0,1755,100,7,0,0,0,0,0,0,0,0,'cast 6634 on buddy'),
(175402,9,3,0,0,1755,50,7,0,0,0,0,-8403.89,469.689,123.76,5.19074,''),
(175402,16,0,0,0,0,0,0,2000005657,0,0,0,0,0,0,0,''),
(175402,20,0,0,0,1755,20,7,2000005658,0,0,0,0,0,0,0,'force buddy to: say text'),
(175402,24,0,0,0,0,0,0,2000005659,0,0,0,0,0,0,0,''),
(175402,28,0,0,0,1755,20,7,2000005660,0,0,0,0,0,0,0,'force buddy to: say text'),
(175402,28,20,2,0,1755,20,7,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(175402,29,0,0,0,7766,50,7,2000005661,0,0,0,0,0,0,0,'force buddy to: say text'),
(175402,30,3,0,0,1756,10523,7 | 0x10,0,0,0,0,-8394,448.942,123.76,0.711,''),
(175402,30,3,0,0,1756,10524,7 | 0x10,0,0,0,0,-8389,452.936,123.76,3.773,''),
(175402,29,29,3,1,7766,50,7,0,0,0,0,0,0,0,0,'npc_flag added'),
(175402,31,22,7,1,1755,20,7,0,0,0,0,0,0,0,0,''),
(175402,31,22,7,1,0,0,0,0,0,0,0,0,0,0,0,''),
(175403,1,22,12,1,0,0,0,0,0,0,0,0,0,0,0,''),
(175403,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle');
DELETE FROM creature_movement_template WHERE entry = 1755; -- Marzon the Silent Blade
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(1755,1,-8403.89,469.689,123.76,15000,0,0,0,0,0,0,0,0,0,5.19074,0,0),
(1755,2,-8421.35,488.745,122.275,0,0,0,0,0,0,0,0,0,0,3.32384,0,0),
(1755,3,-8443.96,471.661,122.275,0,0,0,0,0,0,0,0,0,0,4.80903,0,0),
(1755,4,-8439.43,464.675,122.275,2000,175501,0,0,0,0,0,0,0,0,5.36195,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 175501; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(175501,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(175501,1,22,12,1,0,0,0,0,0,0,0,0,0,0,0,''),
(175501,2,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'despawn');
DELETE FROM creature_linking_template WHERE entry = 1755; -- link between Lord Gregor Lescovar and Marzon the Silent Blade
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(1755,0,1754,3,100);
DELETE FROM db_script_string WHERE entry BETWEEN 2000005646 AND 2000005661;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005646,'By your command!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005647,'Wait here, $N. Spybot will make Lescovar come out as soon as possible. Be ready! Attack only after you\'ve overheard their conversation.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005648,'Good day to you both. I would speak to Lord Lescovar.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005649,'Of course. He awaits you in the library.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005650,'Thank you. The Light be with you both.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005651,'Milord, your guest has arrived. He awaits your presence.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005652,'Ah, thank you kindly. I will leave you to the library while I tend to this small matter.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005653,'I shall use this time wisely, milord. Thank you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,2,NULL),
(2000005654,'It\'s time for my meditation, leave me.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005655,'Yes, sir!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005656,'%s waits for the guards to be out of sight.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005657,'There you are. What news from Westfall?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005658,'VanCleef sends word that the plans are underway. But he\'s heard rumors about someone snooping about.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005659,'Hmm, it could be that meddler Shaw. I will see what I can discover. Be off with you. I\'ll contact you again soon.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005660,'Very well. I will return then.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005661,'That\'s it! That\'s what you were waiting for! KILL THEM!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);

-- Challenge to the Black Flight(q.11165)
DELETE FROM dbscripts_on_event WHERE id = 15406;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(15406,5,10,23789,240000,0,0,0,0,0,0,0,-4703,-3723.73,52.9096,0.647884,''),
(15406,7,0,0,0,23789,50,7,2000005662,0,0,0,0,0,0,0,'force buddy to: say text'),
(15406,10,0,0,0,23789,50,7,2000005663,0,0,0,0,0,0,0,'force buddy to: say text'),
(15406,15,3,0,0,23789,50,7,0,0,0,0,-4690.13,-3714.73,48.8912,0.714641,''),
(15406,23,15,42433,0,23789,50,7,0,0,0,0,0,0,0,0,'cast 42433 on buddy'),
(15406,28,22,16,0x01 | 0x10 | 0x20,23789,50,7,0,0,0,0,0,0,0,0,'temp faction');
DELETE FROM db_script_string WHERE entry IN (2000005662,2000005663);
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005662,'Pitiful mortal, Onyxia answers to no one!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,NULL),
(2000005663,'Your pathetic challenge has not gone unnoticed. I shall enjoy toying with you before you die.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,NULL);

-- Vyletongue Corruption (q.7029) -H (q.7041) -A
DELETE FROM dbscripts_on_quest_start WHERE id = 7029;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(7029,2,0,0,0,0,0,0,2000005664,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 7029 WHERE entry = 7029; -- Horde ver.
UPDATE quest_template SET StartScript = 7029 WHERE entry = 7041; -- Alliance ver
DELETE FROM db_script_string WHERE entry = 2000005664;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005664,'$N, please take a look at the sample of the Vylestem vine that I took from the caverns, so thet you know what to look for...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);

-- Counting Out Time (q.4973) - should be repeatable.
UPDATE quest_template SET SpecialFlags = 1 WHERE entry = 4973;

-- Laying Waste to the Unwanted(q.10078) -A
DELETE FROM dbscripts_on_spell WHERE id = 32979;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(32979,1,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'credit'),
(32979,1,9,0,300,182817,30,0,0,0,0,0,0,0,0,0,'respawn gobject');
UPDATE gameobject SET spawntimesecs = -300 WHERE guid IN (28162,28163,28169,28171); -- Burning Horde Siege Engine - req. for (q.10087) -- update

-- Burn It Up... For the Horde!(q.10087) -H
DELETE FROM dbscripts_on_spell WHERE id = 33067;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(33067,1,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'credit'),
(33067,1,9,0,300,182817,30,0,0,0,0,0,0,0,0,0,'respawn gobject');

-- Mission: Gateways Murketh and Shaadraz(q.10129) -H 'AND' Mission: The Murketh and Shaadraz Gateways(q.10146) -A
DELETE FROM dbscripts_on_spell WHERE id = 33655;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(33655,0,9,0,180,182090,100,7,0,0,0,0,0,0,0,0,'respawn Vector Coil Fire 1'),
(33655,1,9,0,180,182090,100,7,0,0,0,0,0,0,0,0,'respawn Vector Coil Fire 2'),
(33655,2,9,0,180,182090,100,7,0,0,0,0,0,0,0,0,'respawn Vector Coil Fire 3'),
(33655,3,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'q. credit');
UPDATE gameobject SET spawntimesecs = -180 WHERE guid IN (22486,22487,22488,22489); -- Vector Coil Fire - req. for (q.10129) -- update

-- Zuluhed the Whacked(q.10866) -H -A  -- need to force him to attack us somehow!!! flag req.
DELETE FROM dbscripts_on_quest_start WHERE id = 10866;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(10866,2,10,11980,300000,0,0,0,0,0,0,0,-4204.937,316.3974,122.5078,1.36908,'spawn Zuluhed'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4172.627,330.287,135.9577,2.86234,'dragonmaw elite #1'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4169.85,341.2979,135.9378,3.159046,'dragonmaw elite #2'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4167.831,353.6864,138.9584,2.897247,'dragonmaw elite #3'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4224.608,339.7754,135.5993,6.195919,'dragonmaw elite #4'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4222.075,348.025,136.5042,5.951573,'dragonmaw elite #5'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4221.03,356.1273,137.0673,5.864306,'dragonmaw elite #6'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4182.745,320.6509,135.6589,1.762783,'dragonmaw elite #7'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4191.668,314.6634,136.2213,2.076942,'dragonmaw elite #8'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4205.275,310.4961,137.9865,1.082104,'dragonmaw elite #9'),
(10866,68,31,22331,70,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(10866,69,23,19980,0,22332,140698,7 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(10866,69,23,19980,0,22332,140699,7 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(10866,69,23,19980,0,22332,140700,7 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''), 
(10866,70,32,0,0,22332,140698,7 | 0x10,0,0,0,0,0,0,0,0,''),
(10866,70,32,0,0,22332,140699,7 | 0x10,0,0,0,0,0,0,0,0,''), 
(10866,70,32,0,0,22332,140700,7 | 0x10,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 10866 WHERE entry = 10866;
-- zuluhed - update
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, UnitFlags = 33600, movementType = 2 WHERE entry = 11980;
DELETE FROM creature_movement_template WHERE entry = 11980;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(11980,1,-4204.937,316.3974,122.5078,16000,1198001,0,0,0,0,0,0,0,0,1.36908,0,0),
(11980,2,-4204.937,316.3974,122.5078,300000,0,0,0,0,0,0,0,0,0,1.36908,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1198001; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1198001,1,0,0,0,0,0,0,2000005695,0,0,0,0,0,0,0,''),
(1198001,7,0,0,0,0,0,0,2000005696,0,0,0,0,0,0,0,''),
(1198001,12,0,0,0,0,0,0,2000005697,0,0,0,0,0,0,0,''),
(1198001,15,22,16,0x01 | 0x10 | 0x20,0,0,0,0,0,0,0,0,0,0,0,'temp faction'),
(1198001,18,15,32121,0,0,0,0x02,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000005695 AND 2000005697;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005695,'Foolish mortals. Did you think that I would not strike you down for your transgressions?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,5,NULL),
(2000005696,'Indeed, the time has come to end this charade.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,22,NULL),
(2000005697,'Destroy them! Destroy them all!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,25,NULL);
-- Dragonmaw Elite - update
UPDATE creature_template SET movementType = 0 WHERE entry = 22331;
DELETE FROM creature_linking_template WHERE entry = 22331; -- link between 'zuluhed' with 'Dragonmaw Elite'
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(22331,530,11980,17,100);
-- Demon Portal (Zuluhed) - udpade (must be rooted)
UPDATE creature_template SET movementType = 0, DynamicFlags = 8, UnitFlags = 33554432 WHERE entry = 22336;
-- Brood of Neltharaku - updates
UPDATE creature_template SET FactionAlliance = 1840, FactionHorde = 1840, movementType = 0, InhabitType = 5, UnitFlags = 33555200 WHERE entry = 22332;
-- spell should have target
DELETE FROM spell_script_target WHERE entry = 38866;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(38866,1,22331);

-- Ally of the Netherwing(q.10870) -A -H
DELETE FROM dbscripts_on_quest_start WHERE id = 10870;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10870,0,30,649,0,0,0,0,0,0,0,0,0,0,0,0,'taxi patch'),
(10870,0,18,0,0,21657,75654,7 | 0x10,0,0,0,0,0,0,0,0,'Neltharaku despawn'),
(10870,0,10,21657,56000,0,0,0,0,0,0,0,-4169.767,458.3493,154.0605,1.42089,'summon Neltharaku'),
(10870,1,18,0,0,22112,77644,7 | 0x10,0,0,0,0,0,0,0,0,'Karynaku despawn'),
(10870,2,15,5,0,22113,77645,7 | 0x10,0,0,0,0,0,0,0,0,'cast 5 on buddy'),
(10870,3,18,0,0,22113,77645,7 | 0x10,0,0,0,0,0,0,0,0,'Mordenai despawn'),
(10870,17,10,22113,51000,0,0,0,0,0,0,0,-4100.049,969.2758,24.95714,4.59702,'summon Mordenai'),
(10870,19,10,22112,36000,0,0,0,0,0,0,0,-4099.99,945.962,20.7882,1.42089,'summon Karynaku');
DELETE FROM db_script_string WHERE entry BETWEEN 2000005691 AND 2000005694;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005691,'Mother!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,NULL),
(2000005692,'Mordenaku... Your allies have saved us and destroyed the wretch, Zuluhed. Forever they will be a friend to the Netherwing.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005693,'In time, we will again require the assistance of the mortals. Across this world our birthright is shattered. It will be the mortal races that help us regain our rightful place on Draenor. Watch over them, Mordenaku...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005694,'Farewell, mortal. We are forever indebted to you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL);
-- Mordenai
DELETE FROM dbscripts_on_creature_movement WHERE id = 2211301; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2211301,4,31,21478,80,0,0,0,0,0,0,0,0,0,0,0,''), -- let check if creature is alive
(2211301,5,26,0,0,21478,80,1,0,0,0,0,0,0,0,0,'Attack on Rocknail Ripper');
UPDATE creature_template SET MinLevelHealth = 86160, MaxLevelHealth = 86160 WHERE entry = 22113; -- correct with x-savior stats
UPDATE creature SET curhealth = 86160, position_x = -4100.049, position_y = 969.2758, position_z = 24.95714, orientation = 4.59702, spawntimesecs = 65 WHERE guid = 77645; -- correct spawn point (spawntimesecs req. for quest)
DELETE FROM creature_movement_template WHERE entry = 22113;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(22113,1,-4100.049,969.2758,24.95714,12000,0,0,0,0,0,0,0,0,0,4.59702,0,0),
(22113,2,-4104.06,931.187,18.8469,1000,2211301,0,0,0,0,0,0,0,0,4.63004,0,0),
(22113,3,-4105.65,911.224,16.1353,0,0,0,0,0,0,0,0,0,0,4.67716,0,0),
(22113,4,-4106.05,889.833,14.4649,0,0,0,0,0,0,0,0,0,0,4.21142,0,0),
(22113,5,-4118.47,857.928,8.29486,0,0,0,0,0,0,0,0,0,0,4.35908,0,0),
(22113,6,-4122.4,839.518,10.4151,0,0,0,0,0,0,0,0,0,0,4.55935,0,0),
(22113,7,-4143.45,803.2,9.22043,0,0,0,0,0,0,0,0,0,0,4.53187,0,0),
(22113,8,-4150.96,769.769,6.31908,0,0,0,0,0,0,0,0,0,0,4.44428,0,0),
(22113,9,-4153.1,760.191,3.47747,0,0,0,0,0,0,0,0,0,0,4.49533,0,0),
(22113,10,-4155.08,747.368,1.8985,4000,0,0,0,0,0,0,0,0,0,4.58957,0,0),
(22113,11,-4151.37,769.929,6.42453,0,0,0,0,0,0,0,0,0,0,1.11419,0,0),
(22113,12,-4132.84,797.355,8.16607,1000,2211301,0,0,0,0,0,0,0,0,1.07686,0,0),
(22113,13,-4137.32,823.672,9.68296,0,0,0,0,0,0,0,0,0,0,0.975591,0,0),
(22113,14,-4119.16,842.164,9.89524,0,0,0,0,0,0,0,0,0,0,1.08947,0,0),
(22113,15,-4115.26,851.276,7.68533,0,0,0,0,0,0,0,0,0,0,1.46175,0,0),
(22113,16,-4109.66,883.088,13.8876,0,0,0,0,0,0,0,0,0,0,1.33923,0,0),
(22113,17,-4110.74,914.769,17.723,0,0,0,0,0,0,0,0,0,0,1.21356,0,0),
(22113,18,-4106.89,948.026,23.0078,0,0,0,0,0,0,0,0,0,0,1.36672,0,0);
 -- Karynaku <Mate of Neltharaku> - update
UPDATE creature SET spawntimesecs = 50 WHERE guid = 77644;
UPDATE creature_template SET MovementType = 2 WHERE entry = 22112;
DELETE FROM creature_template_addon WHERE entry = 22112;
DELETE FROM creature_addon WHERE guid = 77644;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(77644,0,3,1,0,0,0,NULL);
DELETE FROM creature_movement_template WHERE entry = 22112;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(22112,1,-4099.99,946.078,20.8214,45000,2211201,0,0,0,0,0,0,0,0,1.42089,0,0),
(22112,2,-4099.99,946.078,20.8214,41000,0,0,0,0,0,0,0,0,0,1.42089,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2211201,2211202);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2211201,0,32,1,0,22113,40,7,0,0,0,0,0,0,0,0,'wp pause'),
(2211201,1,0,0,0,22113,40,7,2000005691,0,0,0,0,0,0,0,''),
(2211201,3,28,8,0,22113,40,7,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(2211201,4,0,0,0,0,0,0,2000005692,0,0,0,0,0,0,0,''),
(2211201,8,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2211201,13,0,0,0,0,0,0,2000005693,0,0,0,0,0,0,0,''),
(2211201,18,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2211201,26,0,0,0,0,0,0,2000005694,0,0,0,0,0,0,0,''),
(2211201,31,1,15,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2211201,34,28,0,0,22113,40,7,0,0,0,0,0,0,0,0,'STATE_STAND'),
(2211201,35,1,254,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Neltharaku - updates
UPDATE creature SET MovementType = 2, spawndist = 0, position_x = -4160.292, position_y = 781.7564, position_z = 107.8656, orientation = 1.3028, spawntimesecs = 65 WHERE guid = 75654; -- correct spawn point
DELETE FROM creature_movement WHERE id = 75654; 
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(75654,1,-4160.292,781.7564,107.8656,0,0,0,0,0,0,0,0,0,0,1.3028,0,0),
(75654,2,-4150.894,819.7193,112.4489,0,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,3,-4147.188,852.9213,112.449,0,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,4,-4126.215,897.6987,112.449,0,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,5, -4113.534,926.0124,112.449,0,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,6,-4098.13,963.6712,112.449,0,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,7,-4063.067,1046.515,112.449,0,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,8,-4008.534,1081.363,112.449,0,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,9,-3926.171,1057.316,112.449,0,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,10,-3914.31,958.3683,114.7823,0,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,11,-3930.769,894.2169,114.2545,0,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,12,-3991.642,763.9112,112.449,0,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,13,-4060.605,579.9987,112.449,0,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,14,-4085.638,468.8222,173.4489,0,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,15,-4097.893,416.0321,177.8378,0,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,16,-4110.39,374.4871,174.2545,0,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,17,-4135.225,331.1968,174.7545,0,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,18,-4203.078,269.2113,172.4767,0,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,19,-4239.532,280.7727,169.0878,0,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,20,-4278.137,304.6405,169.1989,0,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,21,-4295.682,340.7838,173.9212,0,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,22,-4297.044,383.0331,169.0878,0,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,23,-4267.532,404.9037,169.0878,0,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,24,-4225.749,416.8825,169.0878,0,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,25,-4193.994,418.2155,169.0878,0,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,26,-4176.15,444.5788,158.2545,0,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,27,-4163.389,480.9925,149.6712,0,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,28,-4157.379,548.4786,145.2823,0,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,29,-4178.163,628.6951,101.0601,0,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,30,-4182.795,656.5566,97.31005,0,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,31,-4184.389,678.5916,98.50452,0,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,32,-4182.358,726.181,102.5323,0,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,33,-4175.015,753.1885,103.2545,0,0,0,0,0,0,0,0,0,0,0,0,0);
UPDATE creature_template SET MovementType = 2 WHERE entry = 21657;
UPDATE creature_template_addon SET moveflags = 0 WHERE entry = 21657; 
DELETE FROM creature_movement_template WHERE entry = 21657;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(21657,1,-4169.767,458.3493,154.0605,0,2165701,0,0,0,0,0,0,0,0,0,0,0),
(21657,2,-4169.767,458.3493,154.0605,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21657,3,-4077.839,866.6138,59.29763,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21657,4,-4080.072,909.3902,44.77148,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21657,5,-4082.829,949.0493,17.93121,20000,2165702,0,0,0,0,0,0,0,0,2.26034,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2165701,2165702);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2165701,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2165702,1,1,293,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2165702,4,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'wp pause'),
(2165702,30,1,254,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Peace at Last (q.11152)
DELETE FROM dbscripts_on_event WHERE id = 15385;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(15385,1,9,21607,60,0,0,0,0,0,0,0,0,0,0,0,''),
(15385,3,10,23768,60000,0,0,0,0,0,0,0,-3532.56,-4316.76,7.04,2.98,'spawn Lynn Hyal'),
(15385,3,10,23769,60000,0,0,0,0,0,0,0,-3533.17,-4318.34,7.05,2.51,'spawn Jimmy Hyal'),
(15385,6,0,0,0,23768,50,7,2000005746,0,0,0,0,0,0,0,'force buddy to: say text'),
(15385,11,0,0,0,23768,50,7,2000005747,0,0,0,0,0,0,0,'force buddy to: say text'),
(15385,16,0,0,0,23768,50,7,2000005748,0,0,0,0,0,0,0,'force buddy to: say text'),
(15385,24,0,0,0,23768,50,7,2000005749,0,0,0,0,0,0,0,'force buddy to: say text'),
(15385,30,3,0,0,23769,50,7,0,0,0,0,0,0,0,1.15404,''),
(15385,31,0,0,0,23769,50,7,2000005750,0,0,0,0,0,0,0,'force buddy to: say text'),
(15385,34,3,0,0,23768,50,7,0,0,0,0,0,0,0,4.3192,''),
(15385,35,28,8,0,23768,50,7,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(15385,36,0,0,0,23768,50,7,2000005751,0,0,0,0,0,0,0,'force buddy to: say text'),
(15385,39,8,23768,0,0,0,0,0,0,0,0,0,0,0,0,'q. credit');
DELETE FROM db_script_string WHERE entry BETWEEN 2000005746 AND 2000005751;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005746,'James? James... No, you\'re not James, but I know who you are...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005747,'You\'re the one who tracked down the brutes who did this to us.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005748,'I tried so hard to tell Jim... to tell anyone... who was behind this, but I couldn\'t find a way...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005749,'Thank you for helping us and for helping Jim. If you see him, tell him little Jimmy and I love him and that we\'re waiting for him.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005750,'Mommy, when will we see Daddy again?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005751,'I don\'t know when we\'ll see Daddy again, Jimmy, but I know he loves you and he misses you very much.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);
UPDATE creature_template SET NpcFlags = 0 WHERE entry = 23768; -- Lynn Hyal has no gossip
UPDATE gameobject SET spawntimesecs = -60 WHERE id = 186315; 

-- Raptor Horns(q.865)
DELETE FROM dbscripts_on_quest_end WHERE id = 865;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(865,0,0,0,0,0,0,0,2000005752,0,0,0,0,0,0,0,''),
(865,2,15,17550,0,0,0,0,0,0,0,0,0,0,0,0,''),
(865,6,1,34,0,0,0,0,0,0,0,0,0,0,0,0,''),
(865,10,0,0,0,0,0,0,2000005753,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 865 WHERE entry = 865;
DELETE FROM db_script_string WHERE entry IN (2000005752,2000005753);
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005752,'Now let\'s try it...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005753,'Ugh! That\'s terrible!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);

-- All Clear!(q.10436)
DELETE FROM dbscripts_on_quest_end WHERE id = 10436;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(10436,0,29,2,2,0,0,0,0,0,0,0,0,0,0,0,'20913 - npc_flag removed'),
(10436,1,0,0,0,0,0,0,2000005754,0,0,0,0,0,0,0,''),
(10436,3,3,0,0,0,0,0,0,0,0,0,4922.18,2991.38,93.9847,5.88582,''),
(10436,8,1,173,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10436,12,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10436,12,15,28730,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10436,14,9,121776,15,0,0,0,0,0,0,0,0,0,0,0,'respawn  Ethereal Repair Kit#1'),
(10436,14,9,121777,15,0,0,0,0,0,0,0,0,0,0,0,'respawn  Ethereal Repair Kit#2'),
(10436,14,9,121778,15,0,0,0,0,0,0,0,0,0,0,0,'respawn  Ethereal Repair Kit#3'),
(10436,14,9,121779,15,0,0,0,0,0,0,0,0,0,0,0,'respawn  Ethereal Repair Kit#4'),
(10436,16,0,0,0,0,0,0,2000000017,0,0,0,0,0,0,0,''),
(10436,20,3,0,0,0,0,0,0,0,0,0,4914.74,2991.92,94.1138,0,''),
(10436,23,3,0,0,0,0,0,0,0,0,0,0,0,0,0.15708,''),
(10436,23,29,2,0,0,0,0,0,0,0,0,0,0,0,0,'20913 - npc_flag added');
DELETE FROM db_script_string WHERE entry = 2000005754;
DELETE FROM db_script_string WHERE entry = 2000000017;
INSERT INTO db_script_string (entry,content_default) VALUES
('2000005754','Now to begin the repairs.'),
('2000000017','It\'s working! Ghabar will be pleased to hear the news.');
UPDATE quest_template SET CompleteScript =10436 WHERE entry =10436;

-- Sarkoth (Durotar) -- redone (this time 100% correct)
DELETE FROM dbscripts_on_quest_end WHERE id = 790;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(790,2,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(790,5,0,0,0,0,0,0,2000005089,0,0,0,0,0,0,0,''),
(790,7,28,7,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_DEATH');
UPDATE db_script_string SET content_default = 'Go swiftly, $N. My fate is in your hands.' WHERE entry = 2000005089;
UPDATE quest_template SET StartScript = 0 WHERE entry = 790;
UPDATE quest_template SET CompleteScript = 790 WHERE entry = 790;

-- Minshina's Skull(q.808)
DELETE FROM dbscripts_on_quest_end WHERE id = 808;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(808,2,10,3289,15000,0,0,0,0,0,0,0,-822.285,-4921.8,19.4009,2.6098,'summon'),
(808,5,1,2,0,3289,20,7,0,0,0,0,0,0,0,0,''),
(808,7,0,0,0,0,0,0,2000005776,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry = 2000005776;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005776,'I thank you, $N. And my brother thanks you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,2,NULL);
UPDATE quest_template SET CompleteScript = 808 WHERE entry = 808;
UPDATE creature_template SET movementType = 0 WHERE entry = 3289;

-- Report to Orgnil(q.823)
DELETE FROM dbscripts_on_quest_end WHERE id = 823;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(823,1,0,0,0,0,0,0,2000005777,0,0,0,0,0,0,0,''),
(823,4,0,0,0,0,0,0,2000005778,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry IN (2000005777, 2000005778);
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005777,'%s listens to Sigilbringer\'s report...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005778,'What?? The Burning Blade is spreading! We must investigate!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,5,NULL);
UPDATE quest_template SET CompleteScript = 823 WHERE entry = 823;

-- Dark Storms(q.806) - update (now completed)
DELETE FROM dbscripts_on_quest_end WHERE id = 806;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(806,1,0,0,0,0,0,0,2000000065,0,0,0,0,0,0,0,''),
(806,4,0,0,0,0,0,0,2000005779,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry = 2000005779;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005779,'%s smashes the dead, twisted claw. ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL);
UPDATE quest_template SET CompleteScript = 806 WHERE entry = 806;

-- Dark Storms(q.806) - update (now completed)
DELETE FROM dbscripts_on_quest_end WHERE id = 806;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(806,1,0,0,0,0,0,0,2000000065,0,0,0,0,0,0,0,''),
(806,4,0,0,0,0,0,0,2000005779,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry = 2000005779;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005779,'%s smashes the dead, twisted claw. ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL);
UPDATE quest_template SET CompleteScript = 806 WHERE entry = 806;

-- Zuluhed the Whacked(q.10866) -H -A - UPDATE
DELETE FROM dbscripts_on_quest_start WHERE id = 10866;
INSERT INTO dbscripts_on_quest_start VALUES 
(10866,2,10,11980,300000,0,0,0,0,0,0,0,-4204.937,316.3974,122.5078,1.36908,'spawn Zuluhed'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4172.627,330.287,135.9577,2.86234,'dragonmaw elite #1'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4169.85,341.2979,135.9378,3.159046,'dragonmaw elite #2'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4167.831,353.6864,138.9584,2.897247,'dragonmaw elite #3'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4224.608,339.7754,135.5993,6.195919,'dragonmaw elite #4'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4222.075,348.025,136.5042,5.951573,'dragonmaw elite #5'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4221.03,356.1273,137.0673,5.864306,'dragonmaw elite #6'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4182.745,320.6509,135.6589,1.762783,'dragonmaw elite #7'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4191.668,314.6634,136.2213,2.076942,'dragonmaw elite #8'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4205.275,310.4961,137.9865,1.082104,'dragonmaw elite #9'),
(10866,21,26,0,0,11980,100,0,0,0,0,0,0,0,0,0,''),
(10866,68,31,22331,70,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(10866,69,23,19980,0,22332,140698,7 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(10866,69,23,19980,0,22332,140699,7 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(10866,69,23,19980,0,22332,140700,7 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''), 
(10866,70,32,0,0,22332,140698,7 | 0x10,0,0,0,0,0,0,0,0,''),
(10866,70,32,0,0,22332,140699,7 | 0x10,0,0,0,0,0,0,0,0,''), 
(10866,70,32,0,0,22332,140700,7 | 0x10,0,0,0,0,0,0,0,0,'');
-- zuluhed - update
DELETE FROM dbscripts_on_creature_movement WHERE id = 1198001; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1198001,1,0,0,0,0,0,0,2000005695,0,0,0,0,0,0,0,''),
(1198001,7,0,0,0,0,0,0,2000005696,0,0,0,0,0,0,0,''),
(1198001,12,0,0,0,0,0,0,2000005697,0,0,0,0,0,0,0,''),
(1198001,15,15,32121,0,0,0,0x02,0,0,0,0,0,0,0,0,''),
(1198001,16,22,16,0x01 | 0x10 | 0x20,0,0,0,0,0,0,0,0,0,0,0,'temp faction');

-- Blast the Infernals! (q.10598) -H  (q.10564) -A
DELETE FROM dbscripts_on_event WHERE id = 13874;
INSERT INTO dbscripts_on_event VALUES
(13874,0,22,114,0x00 | 0x08,21316,74644,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,74646,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,74647,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,74645,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,74651,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,74648,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,74653,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,74643,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,74642,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,74649,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,74652,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,74650,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,74640,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,74639,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74641,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74658,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74657,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74656,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74654,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74655,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74666,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74665,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74659,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74668,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74667,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74662,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74671,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74670,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74660,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74664,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74663,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74661,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74669,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,3,15,37134,0,21512,10,1 | 0x08,0,0,0,0,0,0,0,0,'force buddy to cast 37134');
-- spell should have target
DELETE FROM spell_script_target WHERE entry = 37134;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES 
(37134,1,21316);

-- The Stagnant Oasis(q.877) -H
DELETE FROM dbscripts_on_event WHERE id = 525;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(525,1,9,121921,30,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(525,1,9,121922,30,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(525,1,9,121923,30,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(525,1,9,121924,30,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(525,1,9,121925,30,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject');
-- Fissure plant -- shouldnt be any flag set there
UPDATE gameobject_template SET flags = 0 WHERE entry = 3743;
DELETE FROM gameobject_loot_template WHERE entry = 2603;
INSERT INTO gameobject_loot_template (entry, item, ChanceorQuestChance, groupid, minCountorRef, maxCount, condition_id) VALUES
(2603, 5066, 100, 0 , 1, 1, 0); -- correct

-- Revenge of Gann(q.849) -H 
UPDATE gameobject SET spawntimesecs  = 60, animprogress = 255 WHERE guid = 13259; -- gameobject can be destroyed by spell (explode animation works)

-- The Tear of the Moons (q.857) -H
DELETE FROM dbscripts_on_quest_end WHERE id = 857;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(857,1,0,0,0,0,0,0,2000000345,0,0,0,0,0,0,0,''),
(857,3,1,4,0,0,0,0,0,0,0,0,0,0,0,0,''),
(857,6,3,0,0,0,0,0,0,0,0,0,0,0,0,5.13708,''),
(857,7,0,0,0,0,0,0,2000000346,0,0,0,0,0,0,0,''),
(857,10,0,0,0,0,0,0,2000000347,0,0,0,0,0,0,0,''),
(857,13,0,0,0,0,0,0,2000000348,0,0,0,0,0,0,0,''),
(857,15,23,724,0,0,0,0,0,0,0,0,0,0,0,0,''),
(857,16,3,0,0,0,0,0,0,0,0,0,-4217.93,-2343.5,91.6918,4.6415,''),
(857,18,15,5,0,0,0,0x02,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_creature_death WHERE id = 3421;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3421,1,23,0,0,0,0,0,0,0,0,0,0,0,0,0,'demorph');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000345 AND 2000000348;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000345,'The power of the Tear of the Moons is mine! Mine I say!',0,0,0,5,NULL),
(2000000346,'%s begins to rub the Tear of the Moons.',0,2,0,0,NULL),
(2000000347,'Power! Glorious power!',0,0,0,15,NULL),
(2000000348,'%s begins to make strange grunting noises. The Tear of the Moons drops to the ground and shatters.',0,2,0,0,NULL);
UPDATE quest_template SET CompleteScript = 857 WHERE entry = 857;
-- Feegly the Exiled
UPDATE creature SET position_x = -4218.656250, position_y = -2339.575684, position_z = 91.730965, orientation = 1.864294, spawntimesecs = 60 WHERE guid = 14138;

-- ---------------
--  Random updates 
-- ---------------
-- Morley Bates -- Undercity
UPDATE creature SET MovementType = 2,spawndist = 0 WHERE guid = 38421;
DELETE FROM creature_movement WHERE id = 38421;
UPDATE creature_template SET MovementType = 2 WHERE entry = 4571; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 4571;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,wpguid,orientation,model1,model2) VALUES
(4571,1,1692.201904,139.641846,-55.214390,0,0,0,0,0,0,0,0,0,0,6.123605,0,0),
(4571,2,1694.764893,138.542770,-55.022465,0,0,0,0,0,0,0,0,0,0,5.588755,0,0),
(4571,3,1698.867065,134.570557,-52.505413,0,0,0,0,0,0,0,0,0,0,5.520430,0,0),
(4571,4,1702.585693,131.029968,-49.612007,0,0,0,0,0,0,0,0,0,0,5.485089,0,0),
(4571,5,1705.978516,127.957245,-48.915165,0,0,0,0,0,0,0,0,0,0,5.418329,0,0),
(4571,6,1709.306274,124.367935,-49.698490,0,0,0,0,0,0,0,0,0,0,5.434034,0,0),
(4571,7,1712.874023,120.622345,-52.617626,0,0,0,0,0,0,0,0,0,0,5.390840,0,0),
(4571,8,1717.208252,116.369743,-55.215046,0,0,0,0,0,0,0,0,0,0,5.020132,0,0),
(4571,9,1715.927490,112.043648,-55.215046,0,0,0,0,0,0,0,0,0,0,3.865062,0,0),
(4571,10,1710.193848,105.648643,-60.226227,0,0,0,0,0,0,0,0,0,0,3.989156,0,0),
(4571,11,1704.670166,98.548027,-60.156685,0,0,0,0,0,0,0,0,0,0,3.708768,0,0),
(4571,12,1702.469849,96.913681,-62.183727,0,0,0,0,0,0,0,0,0,0,3.757463,0,0),
(4571,13,1696.200073,89.700615,-62.245487,0,0,0,0,0,0,0,0,0,0,4.154087,0,0),
(4571,14,1693.445557,80.922714,-62.289646,0,0,0,0,0,0,0,0,0,0,4.904924,0,0),
(4571,15,1694.970947,74.606171,-62.289646,0,0,0,0,0,0,0,0,0,0,5.439004,0,0),
(4571,16,1703.908081,68.916229,-62.289646,0,0,0,0,0,0,0,0,0,0,6.058682,0,0),
(4571,17,1716.820801,67.587296,-62.281952,0,0,0,0,0,0,0,0,0,0,0.244379,0,0),
(4571,18,1726.935669,73.529434,-62.280739,0,0,0,0,0,0,0,0,0,0,0.759600,0,0),
(4571,19,1746.531616,97.615318,-62.277756,0,0,0,0,0,0,0,0,0,0,0.680274,0,0),
(4571,20,1761.977051,112.225182,-62.282078,0,0,0,0,0,0,0,0,0,0,1.051768,0,0),
(4571,21,1764.695068,122.498894,-62.289280,0,0,0,0,0,0,0,0,0,0,1.664379,0,0),
(4571,22,1762.121338,130.429794,-62.293812,0,0,0,0,0,0,0,0,0,0,2.294268,0,0),
(4571,23,1756.816772,135.878189,-62.296608,0,0,0,0,0,0,0,0,0,0,2.690109,0,0),
(4571,24,1748.166870,137.670273,-62.280506,0,0,0,0,0,0,0,0,0,0,3.475508,0,0),
(4571,25,1742.719971,136.389114,-62.215290,0,0,0,0,0,0,0,0,0,0,3.800663,0,0),
(4571,26,1737.080444,131.298904,-62.116192,0,0,0,0,0,0,0,0,0,0,3.754325,0,0),
(4571,27,1735.050415,129.373520,-60.103340,0,0,0,0,0,0,0,0,0,0,3.699347,0,0),
(4571,28,1727.588257,123.737144,-60.372936,0,0,0,0,0,0,0,0,0,0,3.788882,0,0),
(4571,29,1721.737671,118.051208,-55.215641,0,0,0,0,0,0,0,0,0,0,3.820298,0,0),
(4571,30,1717.091797,117.097122,-55.031643,0,0,0,0,0,0,0,0,0,0,2.419933,0,0),
(4571,31,1713.285400,120.886414,-52.663830,0,0,0,0,0,0,0,0,0,0,2.383019,0,0),
(4571,32,1709.635254,123.817406,-50.022968,0,0,0,0,0,0,0,0,0,0,2.390873,0,0),
(4571,33,1705.950806,127.811539,-48.913475,0,0,0,0,0,0,0,0,0,0,2.379092,0,0),
(4571,34,1702.807983,131.052505,-49.581020,0,0,0,0,0,0,0,0,0,0,2.288771,0,0),
(4571,35,1699.202026,134.708969,-52.444389,0,0,0,0,0,0,0,0,0,0,2.363384,0,0),
(4571,36,1695.124146,138.728653,-54.968365,0,0,0,0,0,0,0,0,0,0,2.152897,0,0),
(4571,37,1694.589111,141.696426,-55.214432,0,0,0,0,0,0,0,0,0,0,1.100463,0,0),
(4571,38,1695.868896,143.529465,-55.214268,0,0,0,0,0,0,0,0,0,0,0.698551,0,0),
(4571,39,1701.858887,150.072723,-60.469513,0,0,0,0,0,0,0,0,0,0,1.418761,0,0),
(4571,40,1701.063477,158.274918,-60.438343,0,0,0,0,0,0,0,0,0,0,1.211416,0,0),
(4571,41,1704.810181,171.620438,-60.737682,0,0,0,0,0,0,0,0,0,0,1.962257,0,0),
(4571,42,1700.957275,175.207169,-62.000648,0,0,0,0,0,0,0,0,0,0,2.709171,0,0),
(4571,43,1694.132935,176.281799,-62.171570,0,0,0,0,0,0,0,0,0,0,3.569968,0,0),
(4571,44,1678.931519,164.417252,-62.156734,0,0,0,0,0,0,0,0,0,0,3.902192,0,0),
(4571,45,1661.356812,147.728577,-62.165779,0,0,0,0,0,0,0,0,0,0,4.109537,0,0),
(4571,46,1656.410156,141.673599,-62.155628,0,0,0,0,0,0,0,0,0,0,4.415842,0,0),
(4571,47,1658.164429,130.089584,-62.195759,0,0,0,0,0,0,0,0,0,0,5.289191,0,0),
(4571,48,1660.051758,128.194778,-61.495415,0,0,0,0,0,0,0,0,0,0,5.849962,0,0),
(4571,49,1670.617188,126.868576,-61.480343,0,0,0,0,0,0,0,0,0,0,0.112627,0,0),
(4571,50,1672.972656,126.964844,-60.389759,0,0,0,0,0,0,0,0,0,0,0.327826,0,0),
(4571,51,1683.947754,131.563538,-60.465267,0,0,0,0,0,0,0,0,0,0,0.822258,0,0),
(4571,52,1690.073608,137.640442,-55.214428,0,0,0,0,0,0,0,0,0,0,0.721727,0,0);
-- Ar'tor, Son of Oronok - update
DELETE FROM dbscripts_on_creature_death WHERE id = 21292;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21292,0,10,21318,1200000,0,0,0,0,0,0,0,-3801.75,2600.401,90.27156,5.759586,'summon'),
(21292,2,1,1,0,21318,25,0x04,0,0,0,0,0,0,0,0,'');
 -- Shadowmoon Valley Invisible Trigger (Tiny) - update
DELETE FROM dbscripts_on_creature_movement WHERE id = 2131001; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2131001,0,31,21292,15,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(2131001,1,15,36558,0,21292,10,0x01,0,0,0,0,0,0,0,0,'cast 36558 on buddy');
DELETE FROM creature_linking WHERE guid IN (74618,52288,52286,52285);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(74618, 84607, 144),
(52288, 84607, 144),
(52286, 84607, 144),
(52285, 84607, 144);
-- Mogg - BARRENS 
-- spawndist  = 5 must be set,without that, randommovement from script will never work
UPDATE creature SET position_x = 1017.95, position_y = -2224.33, position_z = 93.08, orientation = 4.70, MovementType = 2, spawndist = 5 WHERE guid = 13964;
UPDATE creature SET position_x = 1017.95, position_y = -2224.33, position_z = 93.08, orientation = 4.70, MovementType = 0, spawndist = 0 WHERE guid = 13980;
DELETE FROM creature_movement WHERE id = 13964;
UPDATE creature_template SET MovementType = 2 WHERE entry = 14908; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 14908;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,wpguid,orientation,model1,model2) VALUES
(14908,1,1022.235779,-2235.107910,93.311417,0,0,0,0,0,0,0,0,0,0,5.050608,0,0),
(14908,2,1023.366699,-2238.182373,92.374435,0,0,0,0,0,0,0,0,0,0,4.901490,0,0),
(14908,3,1024.204590,-2243.961182,92.469681,0,0,0,0,0,0,0,0,0,0,3.932313,0,0),
(14908,4,1022.052673,-2244.862549,92.338455,0,0,0,0,0,0,0,0,0,0,2.761287,0,0),
(14908,5,1020.207947,-2242.918213,92.232147,8000,1490801,0,0,0,0,0,0,0,0,1.911485,0,0), 
(14908,6,1034.187012,-2250.560059,92.865570,6000,1490802,0,0,0,0,0,0,0,0,5.877740,0,0),
(14908,7,1033.848511,-2258.611084,93.633789,0,0,0,0,0,0,0,0,0,0,5.175600,0,0),
(14908,8,1037.684692,-2262.024658,93.814468,0,0,0,0,0,0,0,0,0,0,5.099416,0,0),
(14908,9,1036.964111,-2269.702637,93.755440,0,0,0,0,0,0,0,0,0,0,5.317762,0,0),
(14908,10,1042.000977,-2273.459717,93.693169,5000,1490807,0,0,0,0,0,0,0,0,5.027948,0,0),
(14908,11,1042.695801,-2275.516846,93.578140,0,0,0,0,0,0,0,0,0,0,5.481912,0,0),
(14908,12,1046.523682,-2274.459717,93.604500,0,0,0,0,0,0,0,0,0,0,0.547255,0,0),
(14908,13,1050.259277,-2270.443359,93.498596,0,0,0,0,0,0,0,0,0,0,1.132377,0,0),
(14908,14,1049.739624,-2266.861816,93.347488,0,0,0,0,0,0,0,0,0,0,2.032443,0,0),
(14908,15,1048.046997,-2263.529297,93.224899,0,0,0,0,0,0,0,0,0,0,2.443207,0,0),
(14908,16,1041.046753,-2258.765625,93.452538,0,0,0,0,0,0,0,0,0,0,2.118837,0,0),
(14908,17,1039.138672,-2253.676270,92.961128,6000,1490808,0,0,0,0,0,0,0,0,1.470883,0,0),
(14908,18,1032.798584,-2253.547119,93.363281,0,0,0,0,0,0,0,0,0,0,3.619733,0,0),
(14908,19,1025.832764,-2258.538330,93.164093,0,0,0,0,0,0,0,0,0,0,4.158517,0,0),
(14908,20,1021.936951,-2266.235352,92.830612,0,0,0,0,0,0,0,0,0,0,4.826887,0,0),
(14908,21,1022.811462,-2272.140137,92.661667,0,0,0,0,0,0,0,0,0,0,5.267497,0,0),
(14908,22,1027.020386,-2277.889648,92.670853,0,0,0,0,0,0,0,0,0,0,5.707319,0,0),
(14908,23,1036.561890,-2280.122803,93.119659,0,0,0,0,0,0,0,0,0,0,0.098003,0,0),
(14908,24,1046.664185,-2275.731445,93.535553,0,0,0,0,0,0,0,0,0,0,0.818999,0,0),
(14908,25,1049.609863,-2269.771484,93.550903,0,0,0,0,0,0,0,0,0,0,1.455172,0,0),
(14908,26,1045.756592,-2261.030762,93.252167,0,0,0,0,0,0,0,0,0,0,2.531954,0,0),
(14908,27,1038.298706,-2254.306641,93.103928,6000,1490803,0,0,0,0,0,0,0,0,1.990029,0,0),
(14908,28,1028.886841,-2245.043701,92.417068,4000,1490804,0,0,0,0,0,0,0,0,2.057572,0,0),
(14908,29,1030.948975,-2242.987793,92.263474,0,0,0,0,0,0,0,0,0,0,0.737318,0,0),
(14908,30,1030.990967,-2246.370117,92.489189,0,0,0,0,0,0,0,0,0,0,4.676095,0,0),
(14908,31,1026.534058,-2244.682861,92.417534,5000,1490805,0,0,0,0,0,0,0,0,1.920917,0,0),
(14908,32,1023.985229,-2246.925537,92.415733,0,0,0,0,0,0,0,0,0,0,3.545906,0,0),
(14908,33,1022.480835,-2246.017822,92.334770,0,0,0,0,0,0,0,0,0,0,2.334821,0,0),
(14908,34,1020.937195,-2242.871338,92.286667,0,0,0,0,0,0,0,0,0,0,2.005739,0,0),
(14908,35,1022.749268,-2244.529053,92.396469,0,0,0,0,0,0,0,0,0,0,5.986138,0,0),
(14908,36,1024.250366,-2241.753418,92.434258,0,0,0,0,0,0,0,0,0,0,1.313017,0,0),
(14908,37,1023.625366,-2237.151495557,92.379318,0,0,0,0,0,0,0,0,0,0,1.831380,0,0),
(14908,38,1019.266907,-2227.937500,93.207352,0,0,0,0,0,0,0,0,0,0,2.381159,0,0),
(14908,39,1014.191467,-2225.346436,93.037804,5000,1490809,0,0,0,0,0,0,0,0,2.842187,0,0),
(14908,40,1017.351685,-2224.140381,93.069107,180000,1490806,0,0,0,0,0,0,0,0,5.143410,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1490801 AND 1490809; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1490801,1,20,1,5,14909,50,7,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(1490801,4,0,0,0,0,0,0,2000005767,0,0,0,0,0,0,0,''),
(1490801,7,0,0,0,0,0,0,2000005768,0,0,0,0,0,0,0,''),
(1490802,4,0,0,0,0,0,0,2000005769,0,0,0,0,0,0,0,''),
(1490802,5,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1490803,1,0,0,0,0,0,0,2000005772,0,0,0,0,0,0,0,''),
(1490803,2,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN OFF'),
(1490803,6,0,0,0,0,0,0,2000005773,0,0,0,0,0,0,0,''),
(1490804,0,20,0,0,14909,50,7,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(1490804,1,25,1,0,14909,50,7,0,0,0,0,0,0,0,0,'RUN ON'),
(1490804,2,3,0,0,14909,50,7,0,0,0,0,1021.28,-2233.42,93.33,5.05,'force buddy to move'),
(1490804,6,0,0,0,14909,50,7,2000005774,0,0,0,0,0,0,0,'force buddy to: say text'),
(1490804,9,0,0,0,0,0,0,2000005011,0,0,0,0,0,0,0,''), -- text_id already in DB.
(1490804,10,25,0,0,14909,50,7,0,0,0,0,0,0,0,0,'RUN OFF'),
(1490804,12,3,0,0,14909,50,7,0,0,0,0,1013.24,-2221.47,92.9837,2.50,'force buddy to move'),
(1490804,17,3,0,0,14909,50,7,0,0,0,0,1017.95,-2224.33,93.08,4.70,'force buddy to move'),
(1490804,20,20,1,5,14909,50,7,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(1490805,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1490806,0,20,1,5,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(1490806,1,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN OFF'),
(1490806,2,20,1,5,14909,50,7,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(1490806,180,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(1490807,4,0,0,0,0,0,0,2000005770,0,0,0,0,0,0,0,''),
(1490808,5,0,0,0,0,0,0,2000005771,0,0,0,0,0,0,0,''),
(1490809,4,0,0,0,0,0,0,2000005775,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000005767 AND 2000005775;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES 
(2000005767,'I am going to practice and become a warrior like my father!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005768,'Now to find an unsuspecting Harpy!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005769,'There\'s one! For the Horde!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005770,'Take that you mangy Harpy! Hyaa!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005771,'You can\'t get away from a warrior of the Horde! Take that! And that!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005772,'Now go back home where you belong!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005773,'Aaahhh... Another glorious victory for The Horde!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005774,'Mogg, get inside. It is not safe out there while your father is gone.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005775,'When is pappa comming back from the fights in Warsong? It has been so long...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);
-- Morbent Fel - update 
UPDATE creature_template SET scale = 1, UnitFlags = UnitFlags | 512 WHERE entry = 1200; -- prev value was taken with his aura (changes his size)
UPDATE creature_template SET EquipmentTemplateId = 10 WHERE entry = 24782;
UPDATE creature SET spawntimesecs = 240 WHERE guid = 5056;
DELETE FROM dbscripts_on_spell WHERE id = 8913; 
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8913,2,10,24782,120000,1200,50,7,0,0,0,0,0,0,0,0,''),
(8913,3,18,0,0,1200,50,7,0,0,0,0,0,0,0,0,'');
-- Phantasmal Lash - should respan every 3min (not every 10 secs)
UPDATE creature SET spawntimesecs = 180 WHERE guid = 42685;
-- Aerher Ray - update
UPDATE creature_template SET InhabitType = 1 WHERE entry = 22181;
-- Crildor - update
UPDATE creature_template SET NpcFlags = 0 WHERE entry = 5782;
-- Overseer Kragosh - event
UPDATE creature SET MovementType = 2 WHERE guid = 104535;
UPDATE creature_template SET MovementType = 2 WHERE entry = 36217;
DELETE FROM creature_movement_template WHERE entry = 36217;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(36217,1,1438.03,403.83,-85.2626,45000,0,0,0,0,0,0,0,0,0,3.12414,0,0),
(36217,2,1438.03,403.83,-85.2626,6000,3621701,0,0,0,0,0,0,0,0,3.12414,0,0),
(36217,3,1438.01,400.654,-85.2645,0,0,0,0,0,0,0,0,0,0,4.67316,0,0),
(36217,4,1436.25,397.342,-85.2657,0,0,0,0,0,0,0,0,0,0,3.97572,0,0),
(36217,5,1432.92,395.72,-85.2653,0,0,0,0,0,0,0,0,0,0,3.23666,0,0),
(36217,6,1430.37,397.151,-85.2619,0,0,0,0,0,0,0,0,0,0,2.48347,0,0),
(36217,7,1428.68,401,-85.2571,55000,3621702,0,0,0,0,0,0,0,0,1.86693,0,0),
(36217,8,1430.37,397.151,-85.2619,0,0,0,0,0,0,0,0,0,0,5.86461,0,0),
(36217,9,1432.92,395.72,-85.2653,0,0,0,0,0,0,0,0,0,0,0.314982,0,0),
(36217,10,1436.25,397.342,-85.2657,0,0,0,0,0,0,0,0,0,0,1.24254,0,0),
(36217,11,1438.01,400.654,-85.2645,0,0,0,0,0,0,0,0,0,0,1.58026,0,0),
(36217,12,1438.03,403.83,-85.2626,2000,0,0,0,0,0,0,0,0,0,1.72556,0,0),
(36217,13,1438.03,403.83,-85.2626,420000,0,0,0,0,0,0,0,0,0,3.12414,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3621701,3621702);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3621701,2,0,0,0,0,0,0,2000005722,0,0,0,0,0,0,0,''),
(3621702,0,1,25,0,0,0,0,0,0,0,0,0,0,0,0,''),
(3621702,4,0,0,0,0,0,0,2000005723,0,0,0,0,0,0,0,''),
(3621702,10,3,0,0,0,0,0,0,0,0,0,0,0,0,0.640137,''),
(3621702,11,0,0,0,0,0,0,2000005724,0,0,0,0,0,0,0,''),
(3621702,20,31,2055,20,0,0,0,0,0,0,0,0,0,0,0,''), -- let check if creature is alive
(3621702,21,3,0,0,2055,20,7,0,0,0,0,0,0,0,4.00321,''),
(3621702,22,0,0,0,2055,20,4,2000005725,0,0,0,0,0,0,0,'force 2055 to: say text'),
(3621702,32,0,0,0,2055,20,4,2000005726,0,0,0,0,0,0,0,'force 2055 to: say text'),
(3621702,38,0,0,0,0,0,0,2000005727,0,0,0,0,0,0,0,''),
(3621702,44,3,0,0,0,0,0,0,0,0,0,0,0,0,3.99929,''),
(3621702,46,0,0,0,0,0,0,2000005728,0,0,0,0,0,0,0,''),
(3621702,48,1,66,0,36213,140768,7 | 0x10,0,0,0,0,0,0,0,0,''),
(3621702,50,3,0,0,2055,20,7,0,0,0,0,0,0,0,2.26893,''),
(3621702,50,3,0,0,36213,140768,7 | 0x10,0,0,0,0,1420.97,389.227,-84.9886,0.0620715,''),
(3621702,51,3,0,0,36213,140768,7 | 0x10,0,0,0,0,1422.92,387.966,-84.9914,5.27633,''),
(3621702,52,3,0,0,36213,140768,7 | 0x10,0,0,0,0,1422.9,384.706,-84.9962,4.3323,''),
(3621702,53,3,0,0,36213,140768,7 | 0x10,0,0,0,0,1420.35,382.272,-84.9962,3.85478,''),
(3621702,56,0,0,0,36213,140768,7 | 0x10,2000005729,0,0,0,0,0,0,0,'force 36213 to: say text'),
(3621702,63,3,0,0,36213,140768,7 | 0x10,0,0,0,0,1418.86,388.783,-84.9909,0.942079,''),
(3621702,72,3,0,0,36213,140768,7 | 0x10,0,0,0,0,0,0,0,0.942079,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000005722 AND 2000005729;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005722,'I\'ve got my eye on you, Faranell.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005723,'No abominations protecting you. No secrecy. No plotting in the dark.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005724,'If you so much as spit without my permission, this place shuts down. Forcefully.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005725,'I assure you, overseer, the Royal Apothecary Society dearly wishes to make up for the tragic misguidance which ended so many lives.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005726,'We will cause you no trouble. We seek only to continue our research in peace.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005727,'We\'ll see about that.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005728,'Get that rotten nut to shut his trap!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,5,NULL),
(2000005729,'Shut your face, you gibbering idiot! ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,5,NULL);
-- Crag Boar
UPDATE creature SET position_x = -6070.349121, position_y = -285.940399, position_z = 428.220367, orientation = 1.496177 WHERE guid = 263;
UPDATE creature SET position_x = -6104.470703, position_y = -163.987122, position_z = 433.257080, orientation = 1.833880 WHERE guid = 1716;
UPDATE creature SET position_x = -5988.834473, position_y = -135.639069, position_z = 400.818604, orientation = 4.441411 WHERE guid = 290;
-- Mortar Combat - event
-- correct spawn possition for all involved in event
UPDATE creature SET position_x = -6009.25, position_y = -202.649994, position_z = 406.982605, orientation = 1.58825 WHERE guid = 269; -- angus
UPDATE creature SET orientation = 0.03490658 WHERE guid = 265 ; -- hegnar
UPDATE creature SET position_x = -6007.301758, position_y = -200.348206, position_z = 406.777496, orientation = 3.282219 WHERE guid = 272; -- klemmy
UPDATE creature SET position_x = -6007.458984, position_y = -202.157593, position_z = 407.447937, orientation = 2.478368 WHERE guid = 267; -- shorty
UPDATE creature SET position_x = -6010.668151495, position_y = -199.434006, position_z = 406.792480, orientation = 5.532694 WHERE guid = 268; -- middlecamp
UPDATE creature SET position_x = -6008.527832, position_y = -199.145203, position_z = 406.687225, orientation = 4.372177 WHERE guid = 266; -- wheeler
-- Angus
UPDATE creature_template SET MovementType = 2 WHERE entry = 10610;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 269;
DELETE FROM creature_movement_template WHERE entry = 10610;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(10610,1,-6009.25,-202.649994,406.982605,45000,0,0,0,0,0,0,0,0,0,1.58825,0,0),
(10610,2,-6009.25,-202.649994,406.982605,1000,1061001,0,0,0,0,0,0,0,0,1.58825,0,0),
(10610,3,-6009.25,-202.649994,406.982605,2000,1061002,0,0,0,0,0,0,0,0,1.58825,0,0),
(10610,4,-6031.16,-230.264,414.361,250000,1061003,0,0,0,0,0,0,0,0,2.18492,0,0),
(10610,5,-6009.25,-202.649994,406.982605,300000,0,0,0,0,0,0,0,0,0,1.58825,0,0),
(10610,6,-6009.25,-202.649994,406.982605,5000,1061004,0,0,0,0,0,0,0,0,1.58825,0,0),
(10610,7,-6009.25,-202.649994,406.982605,300000,0,0,0,0,0,0,0,0,0,1.58825,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1061001 AND 1061004;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1061001,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Angus - active'),
(1061001,0,21,1,0,10805,272,0x10,0,0,0,0,0,0,0,0,'Klemmy - active'),
(1061001,0,21,1,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty - active'),
(1061001,1,21,1,0,10803,266,0x10,0,0,0,0,0,0,0,0,'Wheeler - active'),
(1061001,1,21,1,0,10804,268,0x10,0,0,0,0,0,0,0,0,'Middlecamp - active'),
(1061002,0,25,1,0,10805,272,0x10,0,0,0,0,0,0,0,0,'RUN ON'),
(1061002,1,16,6598,2,0,0,0,0,0,0,0,0,0,0,0,'sound'),
(1061002,2,3,0,0,10611,267,0x10,0,0,0,0,-6031.589,-228.182,414.4035,2,'Shorty'),
(1061002,2,3,0,0,10804,268,0x10,0,0,0,0,-6034.14,-223.333,413.4,1,'Middlecamp'),
(1061002,2,3,0,0,10805,272,0x10,0,0,0,0,-6011.17,-197.021,406.765,1.97737,'Klemmy'),
(1061002,2,3,0,0,10803,266,0x10,0,0,0,0,-6011.87,-199.241,406.834,4.31443,'Wheeler'),
(1061002,3,3,0,0,10805,272,0x10,0,0,0,0,-6015.51,-184.362,407.712,2.49704,'Klemmy'),
(1061002,5,3,0,0,10805,272,0x10,0,0,0,0,-6065.18,-201.938,424.419,5,'Klemmy'),
(1061002,4,3,0,0,10803,266,0x10,0,0,0,0,-6031.929,-221.0882,413.1531,2.443461,'Wheeler'),
(1061002,15,3,0,0,10805,272,0x10,0,0,0,0,0,0,0,5.59936,'Klemmy'),
(1061002,17,3,0,0,10611,267,0x10,0,0,0,0,0,0,0,2.18492,'Shorty'),
(1061002,18,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,2.443461,'Wheeler'),
(1061002,18,3,0,0,10804,268,0x10,0,0,0,0,0,0,0,1.884956,'Middlecamp'),
(1061002,22,3,0,0,1243,265,0x10,0,0,0,0,0,0,0,3.68522,'Hegnar'),
(1061003,5,0,0,0,10804,268,7 | 0x10,2000005730,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,8,15,16768,0,10804,268,7 | 0x10,0,0,0,0,0,0,0,0,'Middlecamp'), 
(1061003,10,0,0,0,10804,268,7 | 0x10,2000005731,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,14,0,0,0,10804,268,7 | 0x10,2000005732,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,16,15,16772,0,10804,268,7 | 0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,18,0,0,0,10804,268,7 | 0x10,2000005733,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,20,3,0,0,10804,268,0x10,0,0,0,0,0,0,0,0.810652,'Middlecamp'),
(1061003,21,1,5,0,10804,268,0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,21,1,11,0,10803,266,0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,22,1,274,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,22,1,274,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,23,3,0,0,10804,268,0x10,0,0,0,0,0,0,0,1.884956,'Middlecamp'),
(1061003,24,0,0,0,10803,266,7 | 0x10,2000005734,0,0,0,0,0,0,0,'Wheeler'),
(1061003,28,15,16767,0,10803,266,7 | 0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,30,0,0,0,10803,266,7 | 0x10,2000005735,0,0,0,0,0,0,0,'Wheeler'),
(1061003,32,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,4.00565,'Wheeler'),
(1061003,33,1,25,0,10803,266,0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,33,16,6249,2,10803,266,0x10,0,0,0,0,0,0,0,0,'sound'),
(1061003,35,1,21,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,36,1,21,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,36,1,23,0,10803,266,0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,38,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,2.443461,'Wheeler'),
(1061003,41,0,0,0,10804,268,7 | 0x10,2000005736,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,43,15,16777,0,10804,268,7 | 0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,45,0,0,0,10804,268,7 | 0x10,2000005737,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,47,1,20,0,10804,268,0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,47,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,4.00565,'Wheeler'),
(1061003,48,1,6,0,10803,266,0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,48,16,6248,2,10803,266,0x10,0,0,0,0,0,0,0,0,'sound'),
(1061003,51,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,2.443461,'Wheeler'),
(1061003,51,0,0,0,10804,268,7 | 0x10,2000005738,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,53,15,16780,0,10804,268,7 | 0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,55,0,0,0,10804,268,7 | 0x10,2000005739,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,57,0,0,0,10803,266,7 | 0x10,2000005740,0,0,0,0,0,0,0,'Wheeler'),
(1061003,57,15,16775,0,10803,266,7 | 0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,59,0,0,0,10803,266,7 | 0x10,2000005741,0,0,0,0,0,0,0,'Wheeler'),
(1061003,61,15,16778,0,10803,266,7 | 0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,63,0,0,0,10803,266,7 | 0x10,2000005742,0,0,0,0,0,0,0,'Wheeler'),
(1061003,64,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,4.00565,'Wheeler'),
(1061003,65,1,5,0,10803,266,0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,65,3,0,0,10804,268,0x10,0,0,0,0,0,0,0,0.810652,'Middlecamp'),
(1061003,67,1,25,0,10804,268,0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,69,1,11,0,10804,268,0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,72,3,0,0,10804,268,0x10,0,0,0,0,0,0,0,1.884956,'Middlecamp'),
(1061003,72,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,2.443461,'Wheeler'),
(1061003,74,0,0,0,10804,268,7 | 0x10,2000005743,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,74,16,6250,2,10804,268,7 | 0x10,0,0,0,0,0,0,0,0,'sound'),
(1061003,74,15,16572,0,10804,268,7 | 0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,77,0,0,0,10804,268,7 | 0x10,2000005744,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,77,16,6250,2,10804,268,7 | 0x10,0,0,0,0,0,0,0,0,'sound'),
(1061003,77,15,16776,0,10804,268,7 | 0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,80,0,0,0,10804,268,7 | 0x10,2000005745,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,80,16,6250,2,10804,268,7 | 0x10,0,0,0,0,0,0,0,0,'sound'),
(1061003,80,15,16779,0,10804,268,7 | 0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,83,1,71,0,10804,268,0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,83,16,6246,2,10804,268,7 | 0x10,0,0,0,0,0,0,0,0,'sound'),
(1061003,87,3,0,0,10804,268,0x10,0,0,0,0,0,0,0,0.810652,'Middlecamp'),
(1061003,88,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,4.00565,'Wheeler'),
(1061003,89,1,2,0,10804,268,0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,89,1,21,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,89,1,21,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,89,1,21,0,10803,266,0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,93,3,0,0,10804,268,0x10,0,0,0,0,0,0,0,5.13852,'Middlecamp'),
(1061003,93,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,4.77803,'Wheeler'),
(1061003,93,3,0,0,10611,267,0x10,0,0,0,0,0,0,0,2.844887,'Shorty'),
(1061003,93,3,0,0,0,8,8,0,0,0,0,0,0,0,2.844887,''),
(1061003,94,25,0,0,10805,272,0x10,0,0,0,0,0,0,0,0,'RUN OFF'),
(1061003,95,1,4,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,95,1,4,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,95,16,6256,2,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,95,3,0,0,10805,272,0x10,0,0,0,0,-6077.43,-213.2565,424.0502,5.59936,'Klemmy'),
(1061003,105,10,11875,180000,0,0,0,0,0,0,0,-6076,-215,424,0,'summon 1st Mortar Team Target Dummy'),
(1061003,106,25,1,0,10805,272,0x10,0,0,0,0,0,0,0,0,'RUN ON'),
(1061003,108,3,0,0,10805,272,0x10,0,0,0,0,-6065.903,-202.2976,424.3693,5,'Klemmy'),
(1061003,111,3,0,0,10805,272,0x10,0,0,0,0,0,0,0,5.59936,'Klemmy'),
(1061003,113,1,3,0,10805,272,0x10,0,0,0,0,0,0,0,0,'Klemmy'),
(1061003,115,3,0,0,10611,267,0x10,0,0,0,0,0,0,0,4.54215,'Shorty'),
(1061003,116,3,0,0,10805,272,0x10,0,0,0,0,0,0,0,4.0985,'Klemmy'),
(1061003,116,1,16,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,117,1,69,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,122,1,0,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,124,3,0,0,10611,267,0x10,0,0,0,0,0,0,0,2.844887,'Shorty'),
(1061003,125,3,0,0,10804,268,0x10,0,0,0,0,0,0,0,2.9147,'Middlecamp'),
(1061003,125,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,3.01942,'Wheeler'),
(1061003,125,1,25,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,126,15,18655,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,128,16,7316,2,0,0,0,0,0,0,0,0,0,0,0,'sound'),
(1061003,130,15,16786,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'), 
(1061003,130,15,5,0,11875,100,7,0,0,0,0,0,0,0,0,''),
(1061003,133,1,17,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,134,25,0,0,10805,272,0x10,0,0,0,0,0,0,0,0,'RUN OFF'),
(1061003,136,3,0,0,10611,267,0x10,0,0,0,0,0,0,0,4.54215,'Shorty'),
(1061003,136,3,0,0,10805,272,0x10,0,0,0,0,-6077.43,-213.2565,424.0502,5.59936,'Klemmy'),
(1061003,137,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,137,16,6252,2,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,138,1,4,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,141,3,0,0,10611,267,0x10,0,0,0,0,0,0,0,2.844887,'Shorty'),
(1061003,146,10,11875,180000,0,0,0,0,0,0,0,-6076,-215,424,0,'summon 2nd Mortar Team Target Dummy'),
(1061003,148,3,0,0,10805,272,0x10,0,0,0,0,-6071.88,-212.831,422.929,5,'Klemmy'),
(1061003,150,3,0,0,10805,272,0x10,0,0,0,0,0,0,0,6.04228,'Klemmy'),
(1061003,151,25,1,0,10805,272,0x10,0,0,0,0,0,0,0,0,'RUN ON'),
(1061003,152,1,66,0,10805,272,0x10,0,0,0,0,0,0,0,0,'Klemmy'),
(1061003,152,3,0,0,10611,267,0x10,0,0,0,0,0,0,0,4.54215,'Shorty'),
(1061003,154,3,0,0,10805,272,0x10,0,0,0,0,-6065.903,-202.2976,424.3693,5,'Klemmy'),
(1061003,154,28,8,0,10611,267,0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1061003,156,16,6254,2,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,157,3,0,0,10805,272,0x10,0,0,0,0,0,0,0,4.0985,'Klemmy'),
(1061003,161,28,0,0,10611,267,0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1061003,162,3,0,0,10611,267,0x10,0,0,0,0,0,0,0,2.844887,'Shorty'),
(1061003,163,1,25,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,163,16,6255,2,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,164,15,18655,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,165,16,7316,2,0,0,0,0,0,0,0,0,0,0,0,'sound'),
(1061003,166,15,16786,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'), 
(1061003,166,15,5,0,11875,100,7,0,0,0,0,0,0,0,0,''),
(1061003,167,3,0,0,10611,267,0x10,0,0,0,0,0,0,0,4.54215,'Shorty'),
(1061003,167,25,0,0,10805,272,0x10,0,0,0,0,0,0,0,0,'RUN OFF'),
(1061003,168,1,25,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,168,16,6251,2,0,0,0,0,0,0,0,0,0,0,0,'sound'),
(1061003,169,3,0,0,10804,268,0x10,0,0,0,0,0,0,0,5.13852,'Middlecamp'),
(1061003,169,3,0,0,10805,272,0x10,0,0,0,0,-6077.43,-213.2565,424.0502,5.59936,'Klemmy'),
(1061003,170,1,21,0,10804,268,0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,170,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,4.77803,'Wheeler'),
(1061003,171,3,0,0,10611,267,0x10,0,0,0,0,0,0,0,2.844887,'Shorty'),
(1061003,171,1,4,0,10803,266,0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,178,10,12385,180000,0,0,0,0,0,0,0,-6076,-215,424,0,'summon Mortar Team Advanced Target Dummy'),
(1061003,180,3,0,0,10805,272,0x10,0,0,0,0,-6071.88,-212.831,422.929,5,'Klemmy'),
(1061003,182,3,0,0,10805,272,0x10,0,0,0,0,0,0,0,6.04228,'Klemmy'),
(1061003,182,15,18655,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,182,1,25,0,10805,272,0x10,0,0,0,0,0,0,0,0,'Klemmy'),
(1061003,183,1,11,0,10805,272,0x10,0,0,0,0,0,0,0,0,'Klemmy'),
(1061003,183,1,15,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,183,1,5,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,184,16,6258,2,0,0,0,0,0,0,0,0,0,0,0,'sound'),
(1061003,184,25,1,0,10805,272,0x10,0,0,0,0,0,0,0,0,'RUN ON'),
(1061003,185,16,7316,2,0,0,0,0,0,0,0,0,0,0,0,'sound'),
(1061003,185,3,0,0,10804,268,0x10,0,0,0,0,0,0,0,2.9147,'Middlecamp'),
(1061003,185,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,3.01942,'Wheeler'),
(1061003,185,3,0,0,10805,272,0x10,0,0,0,0,-6064.07,-209.851,421.98,6.10275,'Klemmy'),
(1061003,186,15,16786,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'), 
(1061003,186,15,5,0,12385,100,7,0,0,0,0,0,0,0,0,''),
(1061003,187,1,10,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,187,1,10,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,187,3,0,0,10805,272,0x10,0,0,0,0,-6061.97,-218.956,421.085,5.92054,'Klemmy'),
(1061003,190,3,0,0,10805,272,0x10,0,0,0,0,-6040.96,-221.929,414.921,5.92054,'Klemmy'),
(1061003,196,1,14,0,10805,272,0x10,0,0,0,0,0,0,0,0,'Klemmy'),
(1061003,196,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,196,1,0,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,198,1,11,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,198,1,11,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,199,1,11,0,10804,268,0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,199,1,11,0,10803,266,0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,199,1,14,0,10805,272,0x10,0,0,0,0,0,0,0,0,'Klemmy'),
(1061003,200,1,11,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,200,1,11,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,201,1,11,0,10804,268,0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,201,1,11,0,10803,266,0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,202,3,0,0,10805,272,0x10,0,0,0,0,-6007.301758,-200.348206,406.777496,3.282219,'Klemmy'),
(1061003,202,3,0,0,10611,267,0x10,0,0,0,0,-6007.458984,-202.157593,407.447937,2,'Shorty'),
(1061003,203,3,0,0,0,0,0,0,0,0,0,-6009.25,-202.649994,406.982605,2,'angus'),
(1061003,203,3,0,0,10804,268,0x10,0,0,0,0,-6010.668151495,-199.434006,406.792480,5.532694,'Middlecamp'),
(1061003,203,3,0,0,10803,266,0x10,0,0,0,0,-6008.527832,-199.145203,406.687225,4.372177,'Wheeler'),
(1061003,212,3,0,0,10805,272,0x10,0,0,0,0,0,0,0,3.282219,'Klemmy'),
(1061003,216,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,4.372177,'Wheeler'),
(1061003,228,3,0,0,0,0,0,0,0,0,0,0,0,0,1.58825,'angus'),
(1061003,219,3,0,0,10804,268,0x10,0,0,0,0,0,0,0,5.532694,'Middlecamp'),
(1061003,220,3,0,0,1243,265,0x10,0,0,0,0,0,0,0,0.03490658,'Hegnar'),
(1061003,220,3,0,0,10611,267,0x10,0,0,0,0,0,0,0,2.478368,'Shorty'),
(1061004,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Angus - unactive'),
(1061004,0,21,0,0,10805,272,0x10,0,0,0,0,0,0,0,0,'Klemmy - unactive'),
(1061004,0,21,0,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty - unactive'),
(1061004,1,21,0,0,10803,266,0x10,0,0,0,0,0,0,0,0,'Wheeler - unactive'),
(1061004,1,21,0,0,10804,268,0x10,0,0,0,0,0,0,0,0,'Middlecamp - unactive');
DELETE FROM db_script_string WHERE entry BETWEEN 2000005730 AND 2000005745;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005730,'%s picks the orc target...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,25,NULL),
(2000005731,'%s misses...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,6,NULL),
(2000005732,'%s takes a more careful aim...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6247,2,0,0,NULL),
(2000005733,'%s misses again...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005734,'%s casually points at the orc target...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,25,NULL),
(2000005735,'%s hits!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005736,'%s takes aim at the bottles...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005737,'%s misses...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,15,NULL),
(2000005738,'%s takes aim at the bottles again...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005739,'%s misses again...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,18,NULL),
(2000005740,'%s quickly shoots the middle target dead center...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005741,'%s then takes aim at the bottles...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005742,'%s only hits the side of the box!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005743,'%s quickly shoots the orc dummy...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005744,'%s turns to the paper target...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005745,'%s shoots from the hip at the bottles...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL);
-- spells updates 
DELETE FROM spell_target_position WHERE id IN (16572,16767,16768,16772,16775,16776,16777,16778,16779,16780,16786,18634);
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES 
(16572,0,-6046.85,-207.329,418.304,0),
(16767,0,-6046.73,-207.159,417.267,0),
(16768,0,-6051.39,-206.749,418.159,0),
(16772,0,-6046.84,-204.535,416.897,0),
(16775,0,-6044.47,-205.783,417.267,0),
(16776,0,-6044.54,-205.562,417.663,0),
(16777,0,-6044.53,-202.912,416.756,0),
(16778,0,-6042.18,-204.949,416.336,0),
(16779,0,-6042.02,-204.134,416.894,0),
(16780,0,-6044.79,-196.959,419.19,0),
(16786,0,-6078.3,-211.89,424.197,0),
(18634,0,-6076,-215,424,0);
-- spell should have target
DELETE FROM spell_script_target WHERE entry = 18655;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(18655,0,176557);
DELETE FROM dbscripts_on_spell WHERE id = 18655;
-- Roland Geardabbler -- stats updated (based on X-Savior stats board) 100% corrected
UPDATE creature_template SET MinLevelHealth = 2762, MaxLevelHealth = 2762, MinLevelMana = 3575, MaxLevelMana = 3575, HealthMultiplier = 2.3, PowerMultiplier = 1, UnitClass = 8 WHERE entry = 8394;
-- Hezrul Bloodmark  (unique npc)
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 13990;
UPDATE creature_template SET MovementType = 2 WHERE entry = 3396;
DELETE FROM creature_movement_template WHERE entry = 3396;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(3396,1,-1145.94,-2025.81,91.8127,0,0,0,0,0,0,0,0,0,0,0.535909,0,0),
(3396,2,-1109.87,-1999.72,86.8538,0,0,0,0,0,0,0,0,0,0,0.681207,0,0),
(3396,3,-1068.51,-1962.03,89.5984,0,0,0,0,0,0,0,0,0,0,0.783309,0,0),
(3396,4,-1050.84,-1946.6,92.1747,0,0,0,0,0,0,0,0,0,0,0.696915,0,0),
(3396,5,-1028.03,-1936.14,90.9833,0,0,0,0,0,0,0,0,0,0,0.147922,0,0),
(3396,6,-1000.62,-1947.3,91.8085,0,0,0,0,0,0,0,0,0,0,5.83578,0,0),
(3396,7,-989.498,-1965.68,91.4196,0,0,0,0,0,0,0,0,0,0,5.82007,0,0),
(3396,8,-975.014,-1989.78,90.3225,0,0,0,0,0,0,0,0,0,0,5.58052,0,0),
(3396,9,-947.048,-2017.7,85.9028,0,0,0,0,0,0,0,0,0,0,6.01485,0,0),
(3396,10,-913.754,-2023.23,84.7262,0,0,0,0,0,0,0,0,0,0,5.92295,0,0),
(3396,11,-896.969,-2035.67,81.834,0,0,0,0,0,0,0,0,0,0,5.23573,0,0),
(3396,12,-888.286,-2053.13,81.0782,10000,0,0,0,0,0,0,0,0,0,4.9687,0,0),
(3396,13,-881.169,-2066.39,82.8913,0,0,0,0,0,0,0,0,0,0,4.49276,0,0),
(3396,14,-896.265,-2085.67,86.5982,0,0,0,0,0,0,0,0,0,0,3.74663,0,0),
(3396,15,-919.527,-2102.03,86.1471,0,0,0,0,0,0,0,0,0,0,3.56128,0,0),
(3396,16,-938.943,-2103.84,85.2055,0,0,0,0,0,0,0,0,0,0,3.27697,0,0),
(3396,17,-977.091,-2112.99,82.8457,0,0,0,0,0,0,0,0,0,0,3.62647,0,0),
(3396,18,-996.166,-2129.23,84.339,0,0,0,0,0,0,0,0,0,0,4.14876,0,0),
(3396,19,-1028.04,-2167.41,84.444,0,0,0,0,0,0,0,0,0,0,4.02231,0,0),
(3396,20,-1052.2,-2223.07,84.7852,0,0,0,0,0,0,0,0,0,0,4.21473,0,0),
(3396,21,-1061.31,-2265.33,88.5924,0,0,0,0,0,0,0,0,0,0,4.13776,0,0),
(3396,22,-1079.04,-2292.94,91.0261,0,0,0,0,0,0,0,0,0,0,3.3288,0,0),
(3396,23,-1117.46,-2298.19,90.3452,0,0,0,0,0,0,0,0,0,0,2.68164,0,0),
(3396,24,-1137.66,-2278.07,86.5678,0,0,0,0,0,0,0,0,0,0,1.97006,0,0),
(3396,25,-1155.54,-2237.66,85.6437,0,0,0,0,0,0,0,0,0,0,1.86796,0,0),
(3396,26,-1191.45,-2177.87,90.7451,0,0,0,0,0,0,0,0,0,0,2.20961,0,0),
(3396,27,-1217.34,-2140.72,92.6515,0,0,0,0,0,0,0,0,0,0,2.0761,0,0),
(3396,28,-1228.96,-2114.76,92.2165,0,0,0,0,0,0,0,0,0,0,1.41793,0,0),
(3396,29,-1218.87,-2087.08,91.4139,0,0,0,0,0,0,0,0,0,0,1.11634,0,0),
(3396,30,-1202.37,-2062.52,93.2409,0,0,0,0,0,0,0,0,0,0,0.729139,0,0),
(3396,31,-1166.88,-2042.01,92.1803,0,0,0,0,0,0,0,0,0,0,0.552424,0,0);
-- Z cordinate for 2 guards
UPDATE creature SET position_z = 56.375851 WHERE guid = 125681;
UPDATE creature SET position_z = 56.381908 WHERE guid = 125682;
-- Xan'tish <Snake Vendor>
UPDATE creature SET MovementType = 2 WHERE guid = 3476;
DELETE FROM creature_movement WHERE id = 3476;
UPDATE creature_template SET MovementType = 2 WHERE entry = 8404; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 8404;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,wpguid,orientation,model1,model2) VALUES
(8404,1,1543.59,-4162,40.09,0,0,0,0,0,0,0,0,0,0,5.25211,0,0),
(8404,2,1543.59,-4162,40.09,0,0,0,0,0,0,0,0,0,0,5.25211,0,0),
(8404,3,1548.66,-4170.54,39.878,0,0,0,0,0,0,0,0,0,0,4.91597,0,0),
(8404,4,1549.69,-4182.55,40.6116,0,0,0,0,0,0,0,0,0,0,4.66386,0,0),
(8404,5,1544.56,-4204.67,42.5118,0,0,0,0,0,0,0,0,0,0,4.00727,0,0),
(8404,6,1541.77,-4209.83,42.6101,0,0,0,0,0,0,0,0,0,0,3.79758,0,0),
(8404,7,1535.78,-4211.44,42.2174,0,0,0,0,0,0,0,0,0,0,3.2745,0,0),
(8404,8,1526.93,-4211.96,41.3994,0,0,0,0,0,0,0,0,0,0,3.37893,0,0),
(8404,9,1518.28,-4215.47,40.5925,0,0,0,0,0,0,0,0,0,0,4.0206,0,0),
(8404,10,1531.65,-4212.06,41.8567,0,0,0,0,0,0,0,0,0,0,0.069258,0,0),
(8404,11,1545.37,-4209.67,42.9739,0,0,0,0,0,0,0,0,0,0,0.108934,0,0),
(8404,12,1575.68,-4208.31,43.6414,0,0,0,0,0,0,0,0,0,0,0.418381,0,0),
(8404,13,1581.05,-4205.01,42.1625,0,0,0,0,0,0,0,0,0,0,1.02235,0,0),
(8404,14,1582.41,-4200.09,41.6332,0,0,0,0,0,0,0,0,0,0,1.50145,0,0),
(8404,15,1577.94,-4182.56,39.0467,0,0,0,0,0,0,0,0,0,0,1.43312,0,0),
(8404,16,1577.95,-4166.1,36.4201,0,0,0,0,0,0,0,0,0,0,1.54979,0,0),
(8404,17,1581.97,-4153.16,34.3183,0,0,0,0,0,0,0,0,0,0,1.25527,0,0),
(8404,18,1585.48,-4145.38,33.4993,0,0,0,0,0,0,0,0,0,0,1.12567,0,0),
(8404,19,1604.63,-4121.54,29.6292,0,0,0,0,0,0,0,0,0,0,0.600243,0,0),
(8404,20,1629.61,-4107.81,29.851,0,0,0,0,0,0,0,0,0,0,0.388186,0,0),
(8404,21,1664.44,-4095.19,34.6566,0,0,0,0,0,0,0,0,0,0,0.333208,0,0),
(8404,22,1699.89,-4087.74,38.7137,0,0,0,0,0,0,0,0,0,0,0.187909,0,0),
(8404,23,1709.97,-4084.71,40.3433,0,0,0,0,0,0,0,0,0,0,0.466726,0,0),
(8404,24,1732.35,-4069.04,44.7046,0,0,0,0,0,0,0,0,0,0,0.729834,0,0),
(8404,25,1737.52,-4062.58,44.6143,0,0,0,0,0,0,0,0,0,0,1.11075,0,0),
(8404,26,1744.09,-4042.98,44.2706,0,0,0,0,0,0,0,0,0,0,1.21678,0,0),
(8404,27,1745.69,-4021.55,45.8444,0,0,0,0,0,0,0,0,0,0,1.62519,0,0),
(8404,28,1741.55,-3993.82,46.9013,0,0,0,0,0,0,0,0,0,0,1.73514,0,0),
(8404,29,1738.06,-3982.79,47.6495,0,0,0,0,0,0,0,0,0,0,2.00611,0,0),
(8404,30,1727.15,-3960.55,48.8178,0,0,0,0,0,0,0,0,0,0,2.05323,0,0),
(8404,31,1716.72,-3941.62,49.6707,0,0,0,0,0,0,0,0,0,0,2.22995,0,0),
(8404,32,1712.4,-3937.89,49.7629,0,0,0,0,0,0,0,0,0,0,2.72082,0,0),
(8404,33,1708.1,-3938.4,50.5155,0,0,0,0,0,0,0,0,0,0,4.8359,0,0),
(8404,34,1710.22,-3944.82,50.3793,0,0,0,0,0,0,0,0,0,0,5.29143,0,0),
(8404,35,1728.4,-3966.85,48.3152,0,0,0,0,0,0,0,0,0,0,5.31499,0,0),
(8404,36,1742.65,-3994.21,47.0203,0,0,0,0,0,0,0,0,0,0,4.766,0,0),
(8404,37,1745.13,-4021.8,45.8787,0,0,0,0,0,0,0,0,0,0,4.70709,0,0),
(8404,38,1743.39,-4040.77,44.4939,0,0,0,0,0,0,0,0,0,0,4.61677,0,0),
(8404,39,1738.21,-4058.59,44.3596,0,0,0,0,0,0,0,0,0,0,4.36545,0,0),
(8404,40,1733.13,-4070.14,44.4479,0,0,0,0,0,0,0,0,0,0,3.8895,0,0),
(8404,41,1711.87,-4085.21,40.1182,0,0,0,0,0,0,0,0,0,0,3.63026,0,0),
(8404,42,1691.56,-4091.83,37.8552,0,0,0,0,0,0,0,0,0,0,3.42998,0,0),
(8404,43,1655.99,-4099.88,33.3077,0,0,0,0,0,0,0,0,0,0,3.48104,0,0),
(8404,44,1629.32,-4109.29,29.6458,0,0,0,0,0,0,0,0,0,0,3.5635,0,0),
(8404,45,1608.56,-4119.25,29.608,0,0,0,0,0,0,0,0,0,0,3.78734,0,0),
(8404,46,1598.77,-4127.94,30.6464,0,0,0,0,0,0,0,0,0,0,3.97262,0,0),
(8404,47,1586.65,-4144.41,33.1692,0,0,0,0,0,0,0,0,0,0,4.09828,0,0),
(8404,48,1579.47,-4159.36,35.4998,0,0,0,0,0,0,0,0,0,0,4.37709,0,0),
(8404,49,1576.2,-4176.22,38.1288,0,0,0,0,0,0,0,0,0,0,4.6402,0,0),
(8404,50,1577.91,-4192.41,40.5278,0,0,0,0,0,0,0,0,0,0,4.84047,0,0),
(8404,51,1578.51,-4205.14,42.5391,0,0,0,0,0,0,0,0,0,0,4.34568,0,0),
(8404,52,1575.8,-4208.68,43.6726,0,0,0,0,0,0,0,0,0,0,3.43462,0,0),
(8404,53,1563.73,-4208.41,43.619,0,0,0,0,0,0,0,0,0,0,2.9948,0,0),
(8404,54,1547.49,-4208.4,43.0629,0,0,0,0,0,0,0,0,0,0,3.24612,0,0),
(8404,55,1527.74,-4212.69,41.5202,0,0,0,0,0,0,0,0,0,0,3.3443,0,0),
(8404,56,1516.82,-4216.26,40.4675,0,0,0,0,0,0,0,0,0,0,3.5917,0,0),
(8404,57,1539.83,-4210.73,42.5457,0,0,0,0,0,0,0,0,0,0,0.257683,0,0),
(8404,58,1543,-4207.62,42.651,0,0,0,0,0,0,0,0,0,0,1.09413,0,0),
(8404,59,1549.16,-4188.49,41.2349,0,0,0,0,0,0,0,0,0,0,1.36117,0,0),
(8404,60,1550.57,-4176.65,40.3661,0,0,0,0,0,0,0,0,0,0,1.58501,0,0),
(8404,61,1547.16,-4166.1,39.8663,0,0,0,0,0,0,0,0,0,0,2.02483,0,0),
(8404,62,1540.48,-4157.99,40.4082,0,0,0,0,0,0,0,0,0,0,2.63351,0,0),
(8404,63,1534.96,-4155.77,40.5611,0,0,0,0,0,0,0,0,0,0,2.90055,0,0),
(8404,64,1526.11,-4155.11,40.6068,0,0,0,0,0,0,0,0,0,0,3.23042,0,0),
(8404,65,1499.67,-4154.97,41.0505,0,0,0,0,0,0,0,0,0,0,2.90055,0,0),
(8404,66,1485.95,-4150.33,40.6375,0,0,0,0,0,0,0,0,0,0,2.8063,0,0),
(8404,67,1501.73,-4155.09,40.9359,0,0,0,0,0,0,0,0,0,0,6.13404,0,0),
(8404,68,1526.68,-4154.89,40.6253,0,0,0,0,0,0,0,0,0,0,0.0471973,0,0);
-- correct spawns for Xan'tish snakes
UPDATE creature SET position_x = 1524.162231, position_y = -4155.138184, position_z = 40.617981, orientation = 0.074240 WHERE guid = 3571;
UPDATE creature SET position_x = 1524.510864, position_y = -4153.323730, position_z = 40.792473, orientation = 0.023189 WHERE guid = 3560;
UPDATE creature SET position_x = 1524.748779, position_y = -4156.221680, position_z = 40.517262, orientation = 0.019262 WHERE guid = 3477;
-- link snakes with Xan'tish
DELETE FROM creature_linking WHERE guid IN (3571, 3560, 3477);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(3571, 3476, 656),
(3560, 3476, 656),
(3477, 3476, 656);
-- Sen'jin Watcher
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 6401;
DELETE FROM creature_movement WHERE id = 6401;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(6401,1,-827.616,-4936.48,20.8528,0,0,0,0,0,0,0,0,0,0,2.32393,0,0),
(6401,2,-830.761,-4929.45,20.5111,0,0,0,0,0,0,0,0,0,0,2.19434,0,0),
(6401,3,-839.201,-4923.22,20.6271,0,0,0,0,0,0,0,0,0,0,2.70721,0,0),
(6401,4,-841.734,-4919.66,20.5596,0,0,0,0,0,0,0,0,0,0,1.7663,0,0),
(6401,5,-841.262,-4914.79,20.2692,0,0,0,0,0,0,0,0,0,0,1.22202,0,0),
(6401,6,-838.219,-4907.74,19.9134,0,0,0,0,0,0,0,0,0,0,0.803401,0,0),
(6401,7,-830.196,-4901.08,19.8305,0,0,0,0,0,0,0,0,0,0,0.782196,0,0),
(6401,8,-820.589,-4896.57,19.2993,0,0,0,0,0,0,0,0,0,0,6.09361,0,0),
(6401,9,-813.357,-4898.34,19.1296,0,0,0,0,0,0,0,0,0,0,5.87763,0,0),
(6401,10,-805.803,-4902.86,19.3516,0,0,0,0,0,0,0,0,0,0,6.22734,0,0),
(6401,11,-799.058,-4902.18,19.4843,0,0,0,0,0,0,0,0,0,0,0.382402,0,0),
(6401,12,-795.003,-4900.82,19.5072,0,0,0,0,0,0,0,0,0,0,6.10638,0,0),
(6401,13,-791.825,-4901.95,19.5425,0,0,0,0,0,0,0,0,0,0,5.56682,0,0),
(6401,14,-789.253,-4903.92,19.5929,0,0,0,0,0,0,0,0,0,0,5.22282,0,0),
(6401,15,-789.067,-4907.64,19.6142,0,0,0,0,0,0,0,0,0,0,4.38245,0,0),
(6401,16,-790.609,-4909.58,19.5996,0,0,0,0,0,0,0,0,0,0,3.71643,0,0),
(6401,17,-794.697,-4910.41,19.548,0,0,0,0,0,0,0,0,0,0,3.3795,0,0),
(6401,18,-802.157,-4910.6,19.3913,0,0,0,0,0,0,0,0,0,0,3.5028,0,0),
(6401,19,-807.364,-4913.22,19.2282,0,0,0,0,0,0,0,0,0,0,3.85623,0,0),
(6401,20,-817.404,-4923.08,19.4963,0,0,0,0,0,0,0,0,0,0,4.15076,0,0),
(6401,21,-821.698,-4931.91,20.2532,0,0,0,0,0,0,0,0,0,0,4.71153,0,0),
(6401,22,-819.679,-4936.64,20.7199,0,0,0,0,0,0,0,0,0,0,4.82776,0,0),
(6401,23,-821.131,-4940.8,21.2849,0,0,0,0,0,0,0,0,0,0,3.98032,0,0);
-- Razor Hill Grunt -- update
UPDATE creature SET spawndist = 5, MovementType = 1 WHERE guid  IN (10278, 10279, 8424, 6388, 8417, 10276, 7668, 10274, 10427, 10273, 7669, 6385);
-- update for - Horizon Team
UPDATE creature_template SET FactionAlliance = 35, FactionHorde = 35 WHERE entry IN (8394, 8387, 8388, 8389, 8478);
UPDATE creature_template SET EquipmentTemplateId = 2502 WHERE entry IN (8388, 8389);
UPDATE creature_template SET EquipmentTemplateId = 51 WHERE entry IN (8387, 8478);
UPDATE creature SET spawndist = 2, MovementType = 1 WHERE guid = 35901;
-- DeathGuard Bartrand
UPDATE creature SET spawndist = 1, MovementType = 1 WHERE guid = 28498;
-- Mindless Zombie
UPDATE creature SET position_x = 1900.229, position_y = 1551.08, position_z = 88.96, orientation = 5.97 WHERE guid = 44961;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 44961;
DELETE FROM creature_movement WHERE id = 44961;
INSERT INTO creature_movement VALUES
(44961,1,1900.229248,1551.080688,88.962784,40000,0,0,0,0,0,0,0,0,0,5.972022,0,0),
(44961,2,1906.845459,1549.275757,88.963142,0,0,0,0,0,0,0,0,0,0,0.059717,0,0),
(44961,3,1918.237671,1550.205078,86.896423,0,0,0,0,0,0,0,0,0,0,1.092514,0,0),
(44961,4,1921.960083,1559.946167,86.194336,0,0,0,0,0,0,0,0,0,0,0.815268,0,0),
(44961,5,1934.780640,1577.855835,82.626656,40000,0,0,0,0,0,0,0,0,0,0.907945,0,0),
(44961,6,1915.648682,1587.774658,84.535027,0,0,0,0,0,0,0,0,0,0,3.187170,0,0),
(44961,7,1889.429932,1586.552246,88.860100,4000,150101,0,0,0,0,0,0,0,0,2.765410,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 150101;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(150101,0,26,0,0,1736,20,0x01,0,0,0,0,0,0,0,0,''),
(150101,1,22,21,0x01,0,0,0,0,0,0,0,0,0,0,0,'');


-- ---------------
-- TBC UPDATES
-- ---------------

-- ---------------
-- Blade's Edge Mountains
-- ---------------  
-- Nekthar (unique npc)
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 65517;
UPDATE creature_template SET MovementType = 2 WHERE entry = 18248;
DELETE FROM creature_movement_template WHERE entry = 18248;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(18248,1,2317.72,6030.27,142.57,0,1824801,0,0,0,0,0,0,0,0,3.58,0,0),
(18248,2,2307.82,6024.44,142.56,0,0,0,0,0,0,0,0,0,0,2.97,0,0),
(18248,3,2304.89,6025.77,142.96,0,0,0,0,0,0,0,0,0,0,2.44,0,0),
(18248,4,2304.89,6025.77,142.96,240000,1824802,0,0,0,0,0,0,0,0,5.63,0,0),
(18248,5,2306.93,6023.86,142.56,180000,0,0,0,0,0,0,0,0,0,5.46,0,0),
(18248,6,2317.38,6030.00,142.57,0,0,0,0,0,0,0,0,0,0,6.24,0,0),
(18248,7,2319.51,6029.16,142.62,0,0,0,0,0,0,0,0,0,0,5.50,0,0),
(18248,8,2319.51,6029.16,142.62,240000,1824803,0,0,0,0,0,0,0,0,3.88,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1824801, 1824802, 1824803); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1824801,0,0,0,0,0,0,0,2000005755,0,0,0,0,0,0,0,''),
(1824802,0,28,1,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_SIT'),
(1824802,235,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1824803,0,0,0,0,0,0,0,2000005756,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry IN (2000005755, 2000005756);
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005755,'Grunting, %s turns away from the wanted poster, returning to his warm spot by the fire.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005756,'%s begins to read the wanted poster.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL);
-- Blackscale
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 75405;
UPDATE creature_template SET inhabittype = 5, MovementType = 2 WHERE entry = 21497;
DELETE FROM creature_template_addon WHERE entry = 21497;
INSERT INTO creature_template_addon VALUES (21497,0,50331648,1,16,0,0,NULL);
DELETE FROM creature_movement_template WHERE entry = 21497;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,wpguid,orientation,model1,model2) VALUES
(21497,1,3406.09,7124.062,189.294,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,2,3406.942,7123.539,189.294,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,3,3227.074,7124.377,198.2934,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,4,3197.353,7140.334,198.2934,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,5,3174.604,7175.172,198.2934,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,6,3206.274,7208.284,193.488,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,7,3226.79,7220.991,193.488,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,8,3255.189,7222.584,193.488,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,9,3300.442,7212.049,189.294,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,10,3313.925,7200.428,189.294,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,11,3343.274,7180.307,189.294,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,12,3375.993,7142.719,189.294,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,13,3417.932,7115.399,189.294,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,14,3443.302,7078.937,189.294,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,15,3423.431,7041.686,183.6277,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,16,3389.923,7007.877,183.6277,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,17,3346.986,6983.501,183.6277,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,18,3303.022,6983.777,183.6277,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,19,3281.571,7027.427,186.3498,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,20,3283.781,7064.684,186.4331,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,21,3281.752,7085.844,187.9886,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,22,3266.412,7105.881,192.0718,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,23,3242.702,7118.664,196.0163,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,24,3227.074,7124.377,198.2934,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,25,3197.353,7140.334,198.2934,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Thunderlord Grunts
UPDATE creature_template SET SpeedWalk = 1 WHERE entry = 19449; -- source sniff

-- ---------------
-- Hellfire Peninsula 
-- ---------------
-- Stormwind Infantry -- CRITICAL update (pls stop changing it ... into wrong one taken from  The Stair of Destiny ones -- the have unique faction & flags)
UPDATE creature_template SET FactionAlliance = 1666, FactionHorde = 1666 WHERE entry = 16864;
-- Thrallmar Grunt -- CRITICAL update (pls stop changing it ... into wrong one taken from  The Stair of Destiny ones -- the have unique flags)
UPDATE creature_template SET UnitFlags = 32768 WHERE entry = 16580;
-- Thrallmar Grunts - small event between them 
UPDATE creature SET MovementType = 2, spawndist = 0, equipment_id = 32 WHERE guid = 57541;
DELETE FROM creature_movement WHERE id = 57541;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(57541,1,-1323.67,2397.49,88.731,30000,0,0,0,0,0,0,0,0,0,6.19592,0,0),
(57541,2,-1323.67,2397.49,88.731,15000,1658001,0,0,0,0,0,0,0,0,6.19592,0,0),
(57541,3,-1323.67,2397.49,88.731,120000,0,0,0,0,0,0,0,0,0,6.19592,0,0),
(57541,4,-1323.67,2397.49,88.731,29000,1658002,0,0,0,0,0,0,0,0,6.19592,0,0),
(57541,5,-1323.67,2397.49,88.731,90000,0,0,0,0,0,0,0,0,0,6.19592,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1658001 AND 1658002;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1658001,0,31,16580,5,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(1658001,1,3,0,0,0,0,0,0,0,0,0,0,0,0,4.88507,''),
(1658001,2,0,0,0,0,0,0,2000005757,0,0,0,0,0,0,0,''),
(1658001,6,3,0,0,16580,5,7,0,0,0,0,0,0,0,2.01994,'force buddy to move'),
(1658001,8,0,0,0,16580,5,7,2000005758,0,0,0,0,0,0,0,'force buddy to: say text'),
(1658001,12,3,0,0,16580,5,7,0,0,0,0,0,0,0,0.977384,'force buddy to move'),
(1658001,15,0,0,0,0,0,0,2000005759,0,0,0,0,0,0,0,''),
(1658002,0,31,16580,5,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(1658002,1,3,0,0,0,0,0,0,0,0,0,0,0,0,4.88507,''),
(1658002,2,0,0,0,0,0,0,2000005760,0,0,0,0,0,0,0,''),
(1658002,6,3,0,0,16580,5,7,0,0,0,0,0,0,0,2.01994,'force buddy to move'),
(1658002,8,0,0,0,16580,5,7,2000005761,0,0,0,0,0,0,0,'force buddy to: say text'),
(1658002,12,3,0,0,16580,5,7,0,0,0,0,0,0,0,0.977384,'force buddy to move'),
(1658002,15,3,0,0,0,0,0,0,0,0,0,0,0,0,3.036873,''),
(1658002,18,0,0,0,0,0,0,2000005762,0,0,0,0,0,0,0,''),
(1658002,23,0,0,0,19561,5,7,2000005763,0,0,0,0,0,0,0,'force buddy to: say text'),
(1658002,26,0,0,0,0,0,0,2000005764,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000005757 AND 2000005764;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES 
(2000005757,'I say we fire it. Cut the rope.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005758,'You cut the rope. You have the knife.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,5,NULL),
(2000005759,'Harumph! Coward.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005760,'You know, I think we can hit Honor Hold from here.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005761,'If General Krakork found out, he\'d eat us alive. Don\'t.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,274,NULL),
(2000005762,'Ah! We can tell him Hagash stumbled into it and fired it accidentally!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,25,NULL),
(2000005763,'I\'m blind, you stupid sow-spawn, not deaf. Don\'t even think about it.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005764,'%s sighs.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL);

-- The Stair of Destiny
-- Melgromm Highmountain - correct spawn point
UPDATE creature SET position_x = -231.061676, position_y = 1071.188843, position_z = 54.307827, orientation = 1.815549 WHERE guid = 68121;
UPDATE creature SET spawntimesecs = 10 WHERE id = 18969; -- part of invasion event
DELETE FROM creature_linking_template WHERE entry = 18969;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(18969,530,18972,1,100);
-- Justinius the Harbinger - correct spawn point
UPDATE creature SET position_x = -269.245178, position_y = 1070.407227, position_z = 54.307976, orientation = 1.280184 WHERE guid = 68118;
UPDATE creature SET spawntimesecs = 10 WHERE id = 18966; -- part of invasion event
DELETE FROM creature_linking_template WHERE entry = 18966;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(18966,530,18986,1,100);
-- Darnassian Archer - correct movementtype and spawn point
UPDATE creature SET position_x = -260.601807, position_y = 1086.432983, position_z = 46.229504, orientation = 1.647723, spawndist = 0, MovementType = 0 WHERE guid = 68113;
UPDATE creature SET spawntimesecs = 10 WHERE id = 18965; -- part of invasion event
-- Darkspear Axe Thrower - correct movement + spawn point
UPDATE creature SET position_x = -232.330551, position_y = 1086.960449, position_z = 46.168358, orientation = 1.557389, spawndist = 0, MovementType = 0 WHERE guid = 68124;
UPDATE creature SET position_x = -237.338455, position_y = 1086.745361, position_z = 46.259800, orientation = 1.557392, spawndist = 0, MovementType = 0 WHERE guid = 68123;
UPDATE creature SET position_x = -241.972076, position_y = 1086.767822, position_z = 46.197281, orientation = 1.616290, spawndist = 0, MovementType = 0 WHERE guid = 68126;
UPDATE creature SET position_x = -241.920578, position_y = 1083.706787, position_z = 48.230595, orientation = 1.547184, spawndist = 0, MovementType = 0 WHERE guid = 68122;
UPDATE creature SET position_x = -237.257050, position_y = 1083.693237, position_z = 48.287407, orientation = 1.617870, spawndist = 0, MovementType = 0 WHERE guid = 68125;
UPDATE creature SET spawntimesecs = 10 WHERE id = 18970; -- part of invasion event
-- Orgrimmar Grunt - correct movement + spawn point
UPDATE creature SET position_x = -230.824417, position_y = 1097.163208, position_z = 41.666698, orientation = 1.5708, spawndist = 0, MovementType = 0 WHERE guid = 68018;
UPDATE creature SET position_x = -232.573883, position_y = 1094.351440, position_z = 41.666763, orientation = 1.5708, spawndist = 0, MovementType = 0 WHERE guid = 68025;
UPDATE creature SET position_x = -237.510757, position_y = 1094.273560, position_z = 41.666801, orientation = 1.5708, spawndist = 0, MovementType = 0 WHERE guid = 68017;
UPDATE creature SET position_x = -250.130417, position_y = 1094.096680, position_z = 41.666718, orientation = 1.5708, spawndist = 0, MovementType = 0 WHERE guid = 68024;
UPDATE creature SET position_x = -240.407883, position_y = 1097.113403, position_z = 41.666744, orientation = 1.5708, spawndist = 0, MovementType = 0 WHERE guid = 68021;
UPDATE creature SET position_x = -245.203537, position_y = 1096.973755, position_z = 41.666683, orientation = 1.5708, spawndist = 0, MovementType = 0 WHERE guid = 68022;
UPDATE creature SET position_x = -249.263519, position_y = 1096.981689, position_z = 41.666683, orientation = 1.5708, spawndist = 0, MovementType = 0 WHERE guid = 68019;
UPDATE creature SET spawntimesecs = 10 WHERE id = 18950; -- part of invasion event
-- Orgrimmar Shaman - correct movement + spawn point
UPDATE creature SET position_x = -246.153641, position_y = 1094.066406, position_z = 41.666718, orientation = 1.5708, spawndist = 0, MovementType = 0 WHERE guid = 86072;
UPDATE creature SET position_x = -241.246765, position_y = 1094.100708, position_z = 41.666718, orientation = 1.5708, spawndist = 0, MovementType = 0 WHERE guid = 86070;
UPDATE creature SET position_x = -235.832855, position_y = 1096.927490, position_z = 41.666744, orientation = 1.5708, spawndist = 0, MovementType = 0 WHERE guid = 86071;
UPDATE creature SET spawntimesecs = 10 WHERE id = 18972; -- part of invasion event 
-- Ironforge Paladin - correct movement + spawn point
UPDATE creature SET position_x = -269.913788, position_y = 1093.962158, position_z = 41.884075, orientation = 1.5708, spawndist = 0, MovementType = 0  WHERE guid = 68262;
UPDATE creature SET position_x = -256.279510, position_y = 1094.162720, position_z = 41.666740, orientation = 1.5708, spawndist = 0, MovementType = 0  WHERE guid = 68264;
UPDATE creature SET spawntimesecs = 10 WHERE id = 18986; -- part of invasion event
-- Stormwind Soldier - correct movement + spawn point
UPDATE creature SET position_x = -265.283081, position_y = 1094.119995, position_z = 41.675983, orientation = 1.5708, spawndist = 0, MovementType = 0  WHERE guid = 68010;
UPDATE creature SET position_x = -268.991180, position_y = 1097.273682, position_z = 41.796982, orientation = 1.5708, spawndist = 0, MovementType = 0  WHERE guid = 68011;
UPDATE creature SET spawntimesecs = 10 WHERE id = 18948; -- part of invasion event
-- Undercity Mage & Stormwind Mage
UPDATE creature SET spawntimesecs = 10 WHERE id = 18971; -- part of invasion event
UPDATE creature SET spawntimesecs = 10 WHERE id = 18949; -- part of invasion event
DELETE FROM creature_linking_template WHERE entry = 18971;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(18971,530,18950,1,100);
DELETE FROM creature_linking_template WHERE entry = 18949;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(18949,530,18948,1,100);

-- Cursed Scarab - aura update -- sniff
DELETE FROM creature_template_addon WHERE entry = 21306;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(21306,0,0,1,0,0,0,31309);
-- Magic Sucker Device Buttress - movement update
UPDATE creature_template SET MovementType = 0 WHERE entry = 22267;
-- Thrallmar Marskmen -- has diff equip only in this place!
UPDATE creature SET equipment_id = 234 WHERE guid IN (57542,57543);
-- Darkspear Axe Thrower - (Hellfire Peninsula) -- spell we had is casted by totem from another creature
UPDATE creature_template_addon SET auras = NULL WHERE entry = 18970;
-- Justinius the Harbinger - (Hellfire Peninsula) -- one of his spells should be used by ACID, not in auras
UPDATE creature_template_addon SET auras = NULL WHERE entry = 18966;
-- Orgrimmar Grunt - (Hellfire Peninsula) -- spell we had is casted by totem from another creature
UPDATE creature_addon SET auras = NULL WHERE guid IN (68018,68019,68024);
-- Infernal Target (Hyjal) - update
UPDATE creature_template SET InhabitType = 5 WHERE entry = 21075;
-- Infernal relay (hellfire)#1
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 68744;
DELETE FROM creature_movement WHERE id = 68744;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(68744,1,-260.766,1093.41,41.6666,0,0,0,0,0,0,0,0,0,0,5.7179,0,0),
(68744,2,-259.812,1098.64,41.6666,0,0,0,0,0,0,0,0,0,0,6.0242,0,0),
(68744,3,-242.463,1099.17,41.6666,0,0,0,0,0,0,0,0,0,0,6.26846,0,0),
(68744,4,-242.316,1094.29,41.6666,0,0,0,0,0,0,0,0,0,0,4.72515,0,0);
-- Infernal relay (hellfire)#2
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 68745;
DELETE FROM creature_movement WHERE id = 68745;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(68745,1,-233.971,1094.96,41.668,0,0,0,0,0,0,0,0,0,0,4.65979,0,0),
(68745,2,-246.08,1094.57,41.668,0,0,0,0,0,0,0,0,0,0,2.00829,0,0),
(68745,3,-247.234,1097.84,41.668,0,0,0,0,0,0,0,0,0,0,0.171238,0,0),
(68745,4,-232.666,1097.36,41.668,0,0,0,0,0,0,0,0,0,0,6.23451,0,0);
-- pit commander
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 68001;
DELETE FROM creature_movement WHERE id = 68001;
UPDATE creature_template SET MovementType = 2 WHERE entry = 18945; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 18945;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(18945,1,-246.692,1175.22,41.75,10000,0,0,0,0,0,0,0,0,0,4.71011,0,0), 
(18945,2,-246.692,1175.22,41.75,5000,0,0,0,0,0,0,0,33393,0,4.71011,0,0),
(18945,3,-246.692,1175.22,41.75,35000,0,0,0,0,0,0,0,0,0,4.71011,0,0);
-- event 12353
DELETE FROM dbscripts_on_event WHERE id = 12353;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(12353,1,31,21075,100,0,0,0,0,0,0,0,0,0,0,0,''),  -- let check if creature is alive
(12353,1,15,5,0,21075,74081,7 | 0x10,0,0,0,0,0,0,0,0,''),
(12353,2,15,5,0,21075,74082,7 | 0x10,0,0,0,0,0,0,0,0,''),
(12353,7,1,25,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Infernal Target (Hyjal) - update
UPDATE creature_template SET InhabitType = 5 WHERE entry = 21075;
UPDATE creature SET spawntimesecs = 15 WHERE guid IN (74081,74082);
DELETE FROM dbscripts_on_creature_death WHERE id = 21075;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21075,0,31,19215,100,0,0,0,0,0,0,0,0,0,0,0,''),  -- let check if creature is alive
(21075,1,15,33240,0,19215,68744,0x01 | 0x10,0,0,0,0,0,0,0,0,'cast 33240 on buddy'),
(21075,5,10,18946,0,19215,68744,7 | 0x10,0,0,0,0,0,0,0,0,'summon infernals');
-- ATTACKERS
-- 1st wave
UPDATE creature SET spawndist = 0, MovementType = 2, position_x = -237.226822, position_y = 1136.661133, position_z = 41.666767, orientation = 4.391514955 WHERE guid = 67981;
DELETE FROM creature_movement WHERE id = 67981;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(67981,1,-237.227,1136.66,41.6668,20000,1894401,0,0,0,0,0,0,0,0,4.39946,0,0),
(67981,2,-250.716,1093.1,41.9,0,0,0,0,0,0,0,0,0,0,4.78095,0,0),
(67981,3,-252.174,1074.34,54.3073,0,0,0,0,0,0,0,0,0,0,4.70084,0,0),
(67981,4,-249.985,1046.8,54.3168,1000,1894401,0,0,0,0,0,0,0,0,4.57914,0,0),
(67981,5,-248.905,1014.4,54.3266,0,0,0,0,0,0,0,0,0,0,4.64917,0,0),
(67981,6,-248.336,993.958,68.2144,0,0,0,0,0,0,0,0,0,0,4.73163,0,0),
(67981,7,-247.975,969.204,84.3296,0,0,0,0,0,0,0,0,0,0,4.74341,0,0),
(67981,8,-248.319,920.639,84.379,0,0,0,0,0,0,0,0,0,0,4.72601,0,0),
(67981,9,-248.109,895.636,84.379,1000,1894402,0,0,0,0,0,0,0,0,4.72601,0,0);
UPDATE creature SET spawndist = 0, MovementType = 2, position_x = -215.774307, position_y = 1135.690796, position_z = 41.604073, orientation = 4.084515 WHERE guid = 67985;
DELETE FROM creature_movement WHERE id = 67985;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(67985,1,-215.774,1135.69,41.6041,20000,1894401,0,0,0,0,0,0,0,0,4.08452,0,0),
(67985,2,-248.279,1093.57,41.6667,0,0,0,0,0,0,0,0,0,0,4.41342,0,0),
(67985,3,-250.127,1071.97,54.3075,0,0,0,0,0,0,0,0,0,0,4.7024,0,0),
(67985,4,-249.985,1046.8,54.3168,1000,1894401,0,0,0,0,0,0,0,0,4.57914,0,0),
(67985,5,-248.905,1014.4,54.3266,0,0,0,0,0,0,0,0,0,0,4.64917,0,0),
(67985,6,-248.336,993.958,68.2144,0,0,0,0,0,0,0,0,0,0,4.73163,0,0),
(67985,7,-247.975,969.204,84.3296,0,0,0,0,0,0,0,0,0,0,4.74341,0,0),
(67985,8,-248.319,920.639,84.379,0,0,0,0,0,0,0,0,0,0,4.72601,0,0),
(67985,9,-248.109,895.636,84.379,1000,1894402,0,0,0,0,0,0,0,0,4.72601,0,0);
UPDATE creature SET spawndist = 0, MovementType = 2, position_x = -260.605164, position_y = 1137.083008, position_z = 41.670635, orientation = 4.621477 WHERE guid = 67984;
DELETE FROM creature_movement WHERE id = 67984;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(67984,1,-260.605,1137.08,41.6706,20000,1894401,0,0,0,0,0,0,0,0,4.62148,0,0),
(67984,2,-253.949,1093.1,41.866,0,0,0,0,0,0,0,0,0,0,4.66707,0,0),
(67984,3,-253.155,1074.04,54.3067,0,0,0,0,0,0,0,0,0,0,4.76916,0,0),
(67984,4,-249.985,1046.8,54.3168,1000,1894401,0,0,0,0,0,0,0,0,4.57914,0,0),
(67984,5,-248.905,1014.4,54.3266,0,0,0,0,0,0,0,0,0,0,4.64917,0,0),
(67984,6,-248.336,993.958,68.2144,0,0,0,0,0,0,0,0,0,0,4.73163,0,0),
(67984,7,-247.975,969.204,84.3296,0,0,0,0,0,0,0,0,0,0,4.74341,0,0),
(67984,8,-248.319,920.639,84.379,0,0,0,0,0,0,0,0,0,0,4.72601,0,0),
(67984,9,-248.109,895.636,84.379,1000,1894402,0,0,0,0,0,0,0,0,4.72601,0,0);
UPDATE creature SET spawndist = 0, MovementType = 2, position_x = -204.430954, position_y = 1128.684326, position_z = 41.589573, orientation = 3.842693 WHERE guid = 67986;
DELETE FROM creature_movement WHERE id = 67986;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(67986,1,-204.431,1128.68,41.5896,20000,1894401,0,0,0,0,0,0,0,0,3.84269,0,0),
(67986,2,-242.527,1094.53,41.6649,0,0,0,0,0,0,0,0,0,0,4.19364,0,0),
(67986,3,-245.397,1074.1,54.3068,0,0,0,0,0,0,0,0,0,0,4.60597,0,0),
(67986,4,-249.985,1046.8,54.3168,1000,1894401,0,0,0,0,0,0,0,0,4.57914,0,0),
(67986,5,-248.905,1014.4,54.3266,0,0,0,0,0,0,0,0,0,0,4.64917,0,0),
(67986,6,-248.336,993.958,68.2144,0,0,0,0,0,0,0,0,0,0,4.73163,0,0),
(67986,7,-247.975,969.204,84.3296,0,0,0,0,0,0,0,0,0,0,4.74341,0,0),
(67986,8,-248.319,920.639,84.379,0,0,0,0,0,0,0,0,0,0,4.72601,0,0),
(67986,9,-248.109,895.636,84.379,1000,1894402,0,0,0,0,0,0,0,0,4.72601,0,0);
DELETE FROM creature_linking WHERE guid IN (67986,67984,67985); -- make sure they will spawn together .. so we can synhronize attack
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(67986, 67981, 128),
(67984, 67981, 128),
(67985, 67981, 128);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1894401,1894402); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1894401,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1894402,0,15,5,0,0,0,0,0,0,0,0,0,0,0,0,''); 
-- 2nd wave
UPDATE creature SET spawndist = 0, MovementType = 2, position_x = -260.877899, position_y = 1167.174805, position_z = 41.605026, orientation = 4.368320 WHERE guid = 67982; -- master
DELETE FROM creature_movement WHERE id = 67982;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(67982,1,-260.877899,1167.174805,41.605026,50000,0,0,0,0,0,0,0,0,0,4.368320,0,0),
(67982,2,-261.333,1146.7,41.6652,20000,1894401,0,0,0,0,0,0,0,0,4.47017,0,0),
(67982,3,-250.667,1093.94,41.6678,0,0,0,0,0,0,0,0,0,0,4.935,0,0),
(67982,4,-248.356,1073.42,54.3071,0,0,0,0,0,0,0,0,0,0,4.86432,0,0),
(67982,5,-249.985,1046.8,54.3168,1000,1894401,0,0,0,0,0,0,0,0,4.57914,0,0),
(67982,6,-248.905,1014.4,54.3266,0,0,0,0,0,0,0,0,0,0,4.64917,0,0),
(67982,7,-248.336,993.958,68.2144,0,0,0,0,0,0,0,0,0,0,4.73163,0,0),
(67982,8,-247.975,969.204,84.3296,0,0,0,0,0,0,0,0,0,0,4.74341,0,0),
(67982,9,-248.319,920.639,84.379,0,0,0,0,0,0,0,0,0,0,4.72601,0,0),
(67982,10,-248.109,895.636,84.379,1000,1894402,0,0,0,0,0,0,0,0,4.72601,0,0);
UPDATE creature SET spawndist = 0, MovementType = 2, position_x = -279.496429, position_y = 1154.829712, position_z = 41.594738, orientation = 4.702899 WHERE guid = 67988;
DELETE FROM creature_movement WHERE id = 67988;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(67988,1,-279.496429,1154.829712,41.594738,50000,0,0,0,0,0,0,0,0,0,4.702899,0,0),
(67988,2,-274.189,1141.21,42.09,20000,1894401,0,0,0,0,0,0,0,0,4.59021,0,0),
(67988,3,-258.111,1093.64,41.6667,0,0,0,0,0,0,0,0,0,0,5.02533,0,0),
(67988,4,-254.94,1073.8,54.3068,0,0,0,0,0,0,0,0,0,0,4.85254,0,0),
(67988,5,-249.985,1046.8,54.3168,1000,1894401,0,0,0,0,0,0,0,0,4.57914,0,0),
(67988,6,-248.905,1014.4,54.3266,0,0,0,0,0,0,0,0,0,0,4.64917,0,0),
(67988,7,-248.336,993.958,68.2144,0,0,0,0,0,0,0,0,0,0,4.73163,0,0),
(67988,8,-247.975,969.204,84.3296,0,0,0,0,0,0,0,0,0,0,4.74341,0,0),
(67988,9,-248.319,920.639,84.379,0,0,0,0,0,0,0,0,0,0,4.72601,0,0),
(67988,10,-248.109,895.636,84.379,1000,1894402,0,0,0,0,0,0,0,0,4.72601,0,0);
UPDATE creature SET spawndist = 0, MovementType = 2, position_x = -231.076, position_y = 1168.27, position_z = 41.6, orientation = 4.22019 WHERE guid = 67983;
DELETE FROM creature_movement WHERE id = 67983;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(67983,1,-231.076,1168.27,41.6,50000,0,0,0,0,0,0,0,0,0,4.22019,0,0),
(67983,2,-232.82,1146.14,41.6493,20000,1894401,0,0,0,0,0,0,0,0,4.57451,0,0),
(67983,3,-242.018,1094.68,41.6667,0,0,0,0,0,0,0,0,0,0,4.55095,0,0),
(67983,4,-243.06,1074.05,54.3068,0,0,0,0,0,0,0,0,0,0,4.67661,0,0),
(67983,5,-249.985,1046.8,54.3168,1000,1894401,0,0,0,0,0,0,0,0,4.57914,0,0),
(67983,6,-248.905,1014.4,54.3266,0,0,0,0,0,0,0,0,0,0,4.64917,0,0),
(67983,7,-248.336,993.958,68.2144,0,0,0,0,0,0,0,0,0,0,4.73163,0,0),
(67983,8,-247.975,969.204,84.3296,0,0,0,0,0,0,0,0,0,0,4.74341,0,0),
(67983,9,-248.319,920.639,84.379,0,0,0,0,0,0,0,0,0,0,4.72601,0,0),
(67983,10,-248.109,895.636,84.379,1000,1894402,0,0,0,0,0,0,0,0,4.72601,0,0);
UPDATE creature SET spawndist = 0, MovementType = 2, position_x = -206.522, position_y = 1159.26, position_z = 42.4914, orientation = 4.77705 WHERE guid = 67980;
DELETE FROM creature_movement WHERE id = 67980;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(67980,1,-206.522,1159.26,42.4914,50000,0,0,0,0,0,0,0,0,0,4.77705,0,0),
(67980,2,-218.043,1141.49,41.6022,20000,1894401,0,0,0,0,0,0,0,0,3.87865,0,0),
(67980,3,-238.381,1095.06,41.6667,0,0,0,0,0,0,0,0,0,0,4.41351,0,0),
(67980,4,-241.495,1073.91,54.307,0,0,0,0,0,0,0,0,0,0,4.55488,0,0),
(67980,5,-249.985,1046.8,54.3168,1000,1894401,0,0,0,0,0,0,0,0,4.57914,0,0),
(67980,6,-248.905,1014.4,54.3266,0,0,0,0,0,0,0,0,0,0,4.64917,0,0),
(67980,7,-248.336,993.958,68.2144,0,0,0,0,0,0,0,0,0,0,4.73163,0,0),
(67980,8,-247.975,969.204,84.3296,0,0,0,0,0,0,0,0,0,0,4.74341,0,0),
(67980,9,-248.319,920.639,84.379,0,0,0,0,0,0,0,0,0,0,4.72601,0,0),
(67980,10,-248.109,895.636,84.379,1000,1894402,0,0,0,0,0,0,0,0,4.72601,0,0);
DELETE FROM creature_linking WHERE guid IN (67980,67983,67988); -- make sure they will spawn together .. so we can synhronize attack
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(67980, 67982, 128),
(67983, 67982, 128),
(67988, 67982, 128);
-- wave 3
UPDATE creature SET position_x = -239.507065, position_y = 1228.832764, position_z = 31.986649, orientation = 4.258552, spawndist = 0, MovementType = 2 WHERE guid = 68311;
DELETE FROM creature_movement WHERE id = 68311;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(68311,1,-242.901,1192.48,42.691,30000,0,0,0,0,0,0,0,0,0,4.55578,0,0),
(68311,2,-246.947,1159.32,41.6052,30000,0,0,0,0,0,0,0,0,0,4.52515,0,0),
(68311,3,-247.378,1148.42,41.6191,30000,1894401,0,0,0,0,0,0,0,0,4.62175,0,0),
(68311,4,-247.742,1093.66,41.6669,0,0,0,0,0,0,0,0,0,0,4.75527,0,0),
(68311,5,-246.89,1073.81,54.3068,0,0,0,0,0,0,0,0,0,0,4.75527,0,0),
(68311,6,-249.985,1046.8,54.3168,1000,1894401,0,0,0,0,0,0,0,0,4.57914,0,0),
(68311,7,-248.905,1014.4,54.3266,0,0,0,0,0,0,0,0,0,0,4.64917,0,0),
(68311,8,-248.336,993.958,68.2144,0,0,0,0,0,0,0,0,0,0,4.73163,0,0),
(68311,9,-247.975,969.204,84.3296,0,0,0,0,0,0,0,0,0,0,4.74341,0,0),
(68311,10,-248.319,920.639,84.379,0,0,0,0,0,0,0,0,0,0,4.72601,0,0),
(68311,11,-248.109,895.636,84.379,1000,1894402,0,0,0,0,0,0,0,0,4.72601,0,0);
UPDATE creature SET position_x = -244.683823, position_y = 1231.813232, position_z = 31.481995, orientation = 4.503588 WHERE guid = 67973;
UPDATE creature SET position_x = -252.279816, position_y = 1233.656616, position_z = 31.444748, orientation = 4.725847 WHERE guid = 67987;
DELETE FROM creature_linking WHERE guid IN (67978,67979,67973,67987); -- make sure they will spawn & walk together .. so we can synhronize attack
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(67978, 68311, 640),
(67979, 68311, 640),
(67973, 68311, 640),
(67987, 68311, 640);
-- wave 4
UPDATE creature SET position_x = -248.047028, position_y = 1381.634888, position_z = 10.987271, orientation = 4.641428, spawndist = 0, MovementType = 2 WHERE guid = 68313;
DELETE FROM creature_movement WHERE id = 68313;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(68313,1,-246.997,1324.84,15.4259,0,0,0,0,0,0,0,0,0,0,4.63094,0,0),
(68313,2,-238.72,1271.37,24.6796,0,0,0,0,0,0,0,0,0,0,4.72832,0,0),
(68313,3,-240.235,1220.46,33.8146,0,0,0,0,0,0,0,0,0,0,4.649,0,0),
(68313,4,-241.634,1194.53,42.3178,30000,0,0,0,0,0,0,0,0,0,4.66863,0,0),
(68313,5,-243.332,1155.89,41.626,30000,1894401,0,0,0,0,0,0,0,0,4.65685,0,0),
(68313,6,-251.312,1094.19,41.6676,0,0,0,0,0,0,0,0,0,0,4.55082,0,0),
(68313,7,-251.859,1073.77,54.3068,0,0,0,0,0,0,0,0,0,0,4.70397,0,0),
(68313,8,-249.985,1046.8,54.3168,1000,1894401,0,0,0,0,0,0,0,0,4.57914,0,0),
(68313,9,-248.905,1014.4,54.3266,0,0,0,0,0,0,0,0,0,0,4.64917,0,0),
(68313,10,-248.336,993.958,68.2144,0,0,0,0,0,0,0,0,0,0,4.73163,0,0),
(68313,11,-247.975,969.204,84.3296,0,0,0,0,0,0,0,0,0,0,4.74341,0,0),
(68313,12,-248.319,920.639,84.379,0,0,0,0,0,0,0,0,0,0,4.72601,0,0),
(68313,13,-248.109,895.636,84.379,1000,1894402,0,0,0,0,0,0,0,0,4.72601,0,0);
UPDATE creature SET position_x = -238.174774, position_y = 1385.511841, position_z = 11.133602, orientation = 4.637506 WHERE guid = 67976;
UPDATE creature SET position_x = -242.903671, position_y = 1383.753174, position_z = 11.040374, orientation = 4.606873 WHERE guid = 67974;
UPDATE creature SET position_x = -253.775238, position_y = 1382.668823, position_z = 10.934957, orientation = 4.513405 WHERE guid = 67989;
UPDATE creature SET position_x = -260.425690, position_y = 1384.189209, position_z = 10.743897, orientation = 4.606080 WHERE guid = 67990;
DELETE FROM creature_linking WHERE guid IN (67976,67974,67989,67990); -- make sure they will spawn & walk together .. so we can synhronize attack
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(67976, 68313, 640),
(67974, 68313, 640),
(67989, 68313, 640),
(67990, 68313, 640);
-- wave 5 (temp) -- req. more scripting
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 67992;
UPDATE creature SET position_x = -231.491989, position_y = 1273.215698, position_z = 24.683395, orientation = 4.544492, spawndist = 0, MovementType = 0 WHERE guid = 67975;
UPDATE creature SET position_x = -236.811157, position_y = 1269.786987, position_z = 25.028357, orientation = 4.723560, spawndist = 0, MovementType = 0 WHERE guid = 68312;
UPDATE creature SET position_x = -242.411209, position_y = 1273.053833, position_z = 24.268648, orientation = 4.672508, spawndist = 0, MovementType = 0 WHERE guid = 67991;
UPDATE creature SET position_x = -248.130219, position_y = 1276.795654, position_z = 23.578890, orientation = 4.802102, spawndist = 0, MovementType = 0 WHERE guid = 67977;
-- wave 6 (temp) -- req. more scripting
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 67998;
UPDATE creature SET position_x = -223.170578, position_y = 1517.588989, position_z = 22.488991, orientation = 4.400681, spawndist = 0, MovementType = 0 WHERE guid = 68000;
UPDATE creature SET position_x = -214.878464, position_y = 1514.611084, position_z = 22.022751, orientation = 4.118724, spawndist = 0, MovementType = 0 WHERE guid = 67997;
UPDATE creature SET position_x = -237.631012, position_y = 1521.642944, position_z = 23.232979, orientation = 4.742323, spawndist = 0, MovementType = 0 WHERE guid = 67999;
-- last wave (temp) -- req. more scripting
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 67996;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 67995;
UPDATE creature SET position_x = -200.986694, position_y = 1623.556152, position_z = 37.109047, orientation = 4.560667, spawndist = 0, MovementType = 0 WHERE guid = 68314;
UPDATE creature SET position_x = -206.727142, position_y = 1633.104736, position_z = 38.807365, orientation = 4.451498, spawndist = 0, MovementType = 0 WHERE guid = 67994;
UPDATE creature SET position_x = -211.360229, position_y = 1640.620850, position_z = 40.365330, orientation = 4.516684, spawndist = 0, MovementType = 0 WHERE guid = 67993;

-- Infernal invasion outside Thrallmar 
-- Infernal Invaders (spawned by script) -- will reuse them for missing 'Infernal Rain'
DELETE FROM creature WHERE guid IN (86036,86027,86030,86029,86026,86035,86033,86032,86028,86034,86031);
-- Arcanist Torseldori
UPDATE creature SET MovementType = 2,spawndist = 0 WHERE guid = 68780;
DELETE FROM creature_movement WHERE id = 68780;
UPDATE creature_template SET MovementType = 2 WHERE entry = 19257; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 19257;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,wpguid,orientation,model1,model2) VALUES
(19257,1,67.6326,2535.33,64.2527,15000,0,0,0,0,0,0,0,0,0,4.88692,0,0),
(19257,2,67.6326,2535.33,64.2527,120000,1925701,0,0,0,0,0,0,0,0,4.88692,0,0),
(19257,3,67.6326,2535.33,64.2527,90000,0,0,0,0,0,0,0,0,0,4.88692,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1925701; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1925701,1,0,0,0,0,0,0,2000000344,0,0,0,0,0,0,0,''),
(1925701,4,32,0,0,18729,86036,7 | 0x10,0,0,0,0,0,0,0,0,'wp unpause'),
(1925701,5,32,0,0,18729,86027,7 | 0x10,0,0,0,0,0,0,0,0,'wp unpause'),
(1925701,5,32,0,0,18729,86030,7 | 0x10,0,0,0,0,0,0,0,0,'wp unpause'),
(1925701,6,32,0,0,18729,86029,7 | 0x10,0,0,0,0,0,0,0,0,'wp unpause'),
(1925701,6,32,0,0,18729,86026,7 | 0x10,0,0,0,0,0,0,0,0,'wp unpause');
DELETE FROM db_script_string WHERE entry = 2000000344;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000000344,'INCOMING! Do not let them through! Focus fire! NOW, NOW, NOW!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,5,NULL);
-- Infernal Rain (Hellfire) - updates
UPDATE creature_template SET InhabitType = 5 WHERE entry = 18729;
-- static
-- #1
DELETE FROM creature WHERE guid = 86036;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(86036,18729,530,1,1,0,0,89.28646,2505.569,86.47188,6.178465,120,0,0,4050,0,0,2);
DELETE FROM creature_movement WHERE id = 86036; 
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(86036,1,89.28646,2505.569,86.47188,5000,1872901,0,0,0,0,0,0,0,0,6.178465,0,0),
(86036,2,89.28646,2505.569,86.47188,20000,1872902,0,0,0,0,0,0,0,0,6.178465,0,0);
-- #2
DELETE FROM creature WHERE guid = 86027;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(86027,18729,530,1,1,0,0,63.1007,2499.168,85.77042,1.047198,120,0,0,4050,0,0,2);
DELETE FROM creature_movement WHERE id = 86027; 
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(86027,1,63.1007,2499.168,85.77042,5000,1872901,0,0,0,0,0,0,0,0,1.047198,0,0),
(86027,2,63.1007,2499.168,85.77042,20000,1872903,0,0,0,0,0,0,0,0,1.047198,0,0);
-- #3
DELETE FROM creature WHERE guid = 86030;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(86030,18729,530,1,1,0,0,70.1806,2506.25,86.6115,1.00688,120,0,0,4050,0,0,2);
DELETE FROM creature_movement WHERE id = 86030; 
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(86030,1,70.1806,2506.25,86.6115,5000,1872901,0,0,0,0,0,0,0,0,1.00688,0,0),
(86030,2,70.1806,2506.25,86.6115,20000,1872904,0,0,0,0,0,0,0,0,1.00688,0,0);
-- #4
DELETE FROM creature WHERE guid = 86029;
INSERT INTO creature(guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(86029,18729,530,1,1,0,0,83.25868,2499.573,85.56516,4.939282,120,0,0,4050,0,0,2);
DELETE FROM creature_movement WHERE id = 86029; 
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(86029,1,83.25868,2499.573,85.56516,5000,1872901,0,0,0,0,0,0,0,0,4.939282,0,0),
(86029,2,83.25868,2499.573,85.56516,20000,1872905,0,0,0,0,0,0,0,0,4.939282,0,0);
-- #5
DELETE FROM creature WHERE guid = 86026;
INSERT INTO creature(guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(86026,18729,530,1,1,0,0,56.76736,2507.18,87.81073,2.234021,120,0,0,4050,0,0,2);
DELETE FROM creature_movement WHERE id = 86026; 
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(86026,1,56.76736,2507.18,87.81073,5000,1872901,0,0,0,0,0,0,0,0,2.234021,0,0),
(86026,2,56.76736,2507.18,87.81073,20000,1872902,0,0,0,0,0,0,0,0,2.234021,0,0);
-- dynamic
-- #1
DELETE FROM creature WHERE guid = 86035;
INSERT INTO creature(guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(86035,18729,530,1,1,0,0,44.6528,2511.0911,60.56541,1.145,300,20,0,4050,0,0,1);
-- #2
DELETE FROM creature WHERE guid = 86033;
INSERT INTO creature(guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(86033,18729,530,1,1,0,0,75.212,2507.39,58.0648,1.007,300,20,0,4050,0,0,1);
-- #3
DELETE FROM creature WHERE guid = 86032;
INSERT INTO creature(guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(86032,18729,530,1,1,0,0,101.216263,2504.147705,57.459,1.57,300,20,0,4050,0,0,1);
-- #4
DELETE FROM creature WHERE guid = 86028;
INSERT INTO creature(guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(86028,18729,530,1,1,0,0,73.2866,2513.66,59.6385,1.69012,300,20,0,4050,0,0,1);
-- #5
DELETE FROM creature WHERE guid = 86034;
INSERT INTO creature(guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(86034,18729,530,1,1,0,0,68.9691,2511.56,59.1739,1.65085,300,20,0,4050,0,0,1);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1872901 AND 1872905; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1872901,1,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'wp pause'),
(1872902,0,31,18729,50,0,0,0,0,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(1872902,1,15,32785,0,18729,86035,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872902,4,15,32785,0,18729,86033,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872902,8,15,32785,0,18729,86032,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872902,12,15,32785,0,18729,86028,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872902,16,15,32785,0,18729,86034,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872902,18,15,5,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1872903,0,31,18729,50,0,0,0,0,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(1872903,15,15,32785,0,18729,86035,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872903,13,15,32785,0,18729,86033,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872903,9,15,32785,0,18729,86032,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872903,5,15,32785,0,18729,86028,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872903,1,15,32785,0,18729,86034,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872903,18,15,5,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1872904,0,31,18729,50,0,0,0,0,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(1872904,16,15,32785,0,18729,86035,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872904,4,15,32785,0,18729,86033,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872904,1,15,32785,0,18729,86032,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872904,7,15,32785,0,18729,86028,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872904,11,15,32785,0,18729,86034,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872904,18,15,5,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1872905,0,31,18729,50,0,0,0,0,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(1872905,8,15,32785,0,18729,86035,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872905,1,15,32785,0,18729,86033,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872905,4,15,32785,0,18729,86032,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872905,15,15,32785,0,18729,86028,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872905,12,15,32785,0,18729,86034,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872905,18,15,5,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- missing spell 33242
 -- GUID: Full: 0xF1304B3B003954F3 Type: Unit Entry: 19259 Low: 3757299 -- sniff
 -- UNIT_CREATED_BY_SPELL: 33242  -- sniff
DELETE FROM spell_template WHERE id = 33242;
INSERT INTO `spell_template` (`id`, `attr`, `attr_ex`, `attr_ex2`, `attr_ex3`, `proc_flags`, `proc_chance`, `duration_index`, `effect0`, `effect0_implicit_target_a`, `effect0_implicit_target_b`, `effect0_radius_idx`, `effect0_apply_aura_name`, `effect0_misc_value`, `effect0_misc_value_b`, `effect0_trigger_spell`, `comments`) VALUES
('33242','384','0','4','0','0','101','21','28','18','0','7','0','19259','64','0','summon Infernal Invader');
-- Infernal Invader
UPDATE creature_template SET MovementType = 2 WHERE entry = 19259;
DELETE FROM creature_movement_template WHERE entry = 19259;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(19259,1,67.6326,2535.33,64.2527,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Sedai's corpse - update
DELETE FROM creature_template_addon WHERE entry = 16852;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(16852,0,7,1,0,0,0,NULL);

-- Urtrak
UPDATE creature_template SET equipmentTemplateid = 1335 WHERE entry = 19862;
-- Vengeful Unyielding Captain
UPDATE creature_template SET equipmentTemplateid = 249 WHERE entry = 19864;
--  Vengeful Unyielding Footman
UPDATE creature_template SET equipmentTemplateid = 249 WHERE entry = 20137;


-- ---------------
-- Nagrand
-- ---------------

-- ---------------
-- Terrokar Forest
-- ---------------
-- Disciple of Sar'this
UPDATE creature SET position_x = -2436.649414, position_y = 4755.235840, position_z = 153.149536, orientation = 3.801337, MovementType = 1, spawndist = 3 WHERE guid = 96672;
-- Evoker of Sar'this
UPDATE creature SET MovementType = 1, spawndist = 3 WHERE guid = 96673;
-- Minion of Sar'this #1
UPDATE creature SET MovementType = 2, spawndist = 0, spawntimesecs = 30 WHERE guid = 96678;
DELETE FROM creature_movement WHERE id = 96678;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(96678,1,-2417.55,4579.64,160.559,0,0,0,0,0,0,0,0,0,0,2.58249,0,0),
(96678,2,-2421,4582.46,160.57,55000,0,0,0,0,0,0,0,0,0,2.442826,0,0),
(96678,3,-2419.45,4562.04,160.513,55000,0,0,0,0,0,0,0,0,0,1.58825,0,0);
-- Minion of Sar'this #2
UPDATE creature SET MovementType = 2, spawndist = 0, spawntimesecs = 30 WHERE guid = 96675;
DELETE FROM creature_movement WHERE id = 96675;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(96675,1,-2454.89,4756.45,153.078,0,0,0,0,0,0,0,0,0,0,4.75953,0,0),
(96675,2,-2453.51,4750.02,152.925,0,0,0,0,0,0,0,0,0,0,5.37214,0,0),
(96675,3,-2445.16,4740.12,153.145,0,0,0,0,0,0,0,0,0,0,0.68252,0,0),
(96675,4,-2440.57,4742.246,153.0419,55000,0,0,0,0,0,0,0,0,0,0.7664875,0,0),
(96675,5,-2460.71,4751.69,153.264,40000,0,0,0,0,0,0,0,0,0,2.57064,0,0),
(96675,6,-2452.38,4760.84,153.077,1000,0,0,0,0,0,0,0,0,0,5,0,0),
(96675,7,-2452.38,4760.84,153.077,55000,0,0,0,0,0,0,0,0,0,5.07762,0,0);
-- Minion of Sar'this #3
UPDATE creature SET MovementType = 2, spawndist = 0, spawntimesecs = 30 WHERE guid = 96677;
DELETE FROM creature_movement WHERE id = 96677;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(96677,1,-2428.81,4653.14,160.576,0,0,0,0,0,0,0,0,0,0,3.80064,0,0),
(96677,2,-2432.53,4653.75,160.579,0,0,0,0,0,0,0,0,0,0,2.3131,0,0),
(96677,3,-2433.45,4658.36,160.583,0,0,0,0,0,0,0,0,0,0,1.58817,0,0),
(96677,4,-2432.96,4662.07,161.015,25000,0,0,0,0,0,0,0,0,0,1.43266,0,0),
(96677,5,-2429.76,4658.01,160.542,0,0,0,0,0,0,0,0,0,0,5.57056,0,0),
(96677,6,-2422.99,4654.09,160.546,0,0,0,0,0,0,0,0,0,0,5.38835,0,0),
(96677,7,-2422.99,4654.09,160.546,25000,0,0,0,0,0,0,0,0,0,3.92437,0,0),
(96677,8,-2424.75,4658.27,160.435,0,0,0,0,0,0,0,0,0,0,2.0127,0,0),
(96677,9,-2424.75,4658.27,160.435,55000,0,0,0,0,0,0,0,0,0,4.10152,0,0);
-- Minion of Sar'this #4
UPDATE creature SET MovementType = 2, spawndist = 0, spawntimesecs = 30 WHERE guid = 96676;
DELETE FROM creature_movement WHERE id = 96676;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(96676,1,-2433.32,4709.17,174.657,0,0,0,0,0,0,0,0,0,0,1.3813,0,0),
(96676,2,-2435.92,4697.7,172.99,0,0,0,0,0,0,0,0,0,0,4.89674,0,0),
(96676,3,-2433.34,4691.46,175.11,0,0,0,0,0,0,0,0,0,0,5.30043,0,0),
(96676,4,-2429.18,4683.65,171.996,0,0,0,0,0,0,0,0,0,0,5.28079,0,0),
(96676,5,-2433.49,4691.62,175.14,0,0,0,0,0,0,0,0,0,0,2.00175,0,0),
(96676,6,-2435.69,4696.69,172.972,0,0,0,0,0,0,0,0,0,0,1.67503,0,0),
(96676,7,-2432.91,4709.57,174.699,0,0,0,0,0,0,0,0,0,0,1.10247,0,0);
 -- Sar'this
UPDATE creature SET spawntimesecs = 30 WHERE guid = 96674;
-- Blackwind Valley
-- Blackwind Sabercat #1 - Terrokar Forest
UPDATE creature SET MovementType = 2, spawndist = 0, spawntimesecs = 300 WHERE guid = 75893;
DELETE FROM creature_movement WHERE id = 75893;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(75893,1,-3568.68,3139.93,315.043,0,0,0,0,0,0,0,0,0,0,1.03754,0,0),
(75893,2,-3561.34,3155.8,313.88,0,0,0,0,0,0,0,0,0,0,6.12849,0,0),
(75893,3,-3548.51,3150.03,316.169,0,0,0,0,0,0,0,0,0,0,5.82848,0,0),
(75893,4,-3539.39,3148.19,314.788,0,0,0,0,0,0,0,0,0,0,0.271785,0,0),
(75893,5,-3526.79,3156.78,315.301,0,0,0,0,0,0,0,0,0,0,0.633107,0,0),
(75893,6,-3522.28,3161.36,315.193,0,0,0,0,0,0,0,0,0,0,1.67376,0,0),
(75893,7,-3535.61,3149.71,314.956,0,0,0,0,0,0,0,0,0,0,3.60898,0,0),
(75893,8,-3545.89,3147.29,315.075,0,0,0,0,0,0,0,0,0,0,2.85186,0,0),
(75893,9,-3551.95,3152.98,316.087,0,0,0,0,0,0,0,0,0,0,2.75997,0,0),
(75893,10,-3561.65,3153.16,313.949,0,0,0,0,0,0,0,0,0,0,3.99922,0,0),
(75893,11,-3568.63,3140.61,315.063,0,0,0,0,0,0,0,0,0,0,4.2584,0,0),
(75893,12,-3582.56,3123.18,315.775,0,0,0,0,0,0,0,0,0,0,3.96388,0,0);
-- Blackwind Sabercat #2 - Terrokar Forest
UPDATE creature SET MovementType = 2, spawndist = 0, spawntimesecs = 300 WHERE guid = 75897;
DELETE FROM creature_movement WHERE id = 75897;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(75897,1,-3527.22,3178.89,316.906,0,0,0,0,0,0,0,0,0,0,4.40628,0,0),
(75897,2,-3527.43,3171.43,317.063,0,0,0,0,0,0,0,0,0,0,5.03067,0,0),
(75897,3,-3522.81,3163.53,315.422,0,0,0,0,0,0,0,0,0,0,5.80039,0,0),
(75897,4,-3513.18,3160.94,316.212,0,0,0,0,0,0,0,0,0,0,5.85144,0,0),
(75897,5,-3506.16,3153.53,314.594,0,0,0,0,0,0,0,0,0,0,5.43126,0,0),
(75897,6,-3512.24,3160.96,316.164,0,0,0,0,0,0,0,0,0,0,2.69729,0,0),
(75897,7,-3523.14,3162.26,315.303,0,0,0,0,0,0,0,0,0,0,2.15114,0,0),
(75897,8,-3528.31,3175.28,317.054,0,0,0,0,0,0,0,0,0,0,1.52047,0,0),
(75897,9,-3521.96,3187.97,316.155,0,0,0,0,0,0,0,0,0,0,0.880319,0,0);
-- Blackwind Sabercat #3 - Terrokar Forest
UPDATE creature SET MovementType = 2, spawndist = 0, spawntimesecs = 300 WHERE guid = 75899;
DELETE FROM creature_movement WHERE id = 75899;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(75899,1,-3552.02,3222.28,307.958,0,0,0,0,0,0,0,0,0,0,1.13522,0,0),
(75899,2,-3556.98,3209.75,309.921,0,0,0,0,0,0,0,0,0,0,4.90434,0,0),
(75899,3,-3552.94,3200.65,310.456,0,0,0,0,0,0,0,0,0,0,5.47079,0,0),
(75899,4,-3532.93,3189.69,314.899,0,0,0,0,0,0,0,0,0,0,5.76209,0,0),
(75899,5,-3527.84,3183.87,316.585,0,0,0,0,0,0,0,0,0,0,5.38903,0,0),
(75899,6,-3537.02,3193.84,313.544,0,0,0,0,0,0,0,0,0,0,2.73203,0,0),
(75899,7,-3553.85,3201.59,310.415,0,0,0,0,0,0,0,0,0,0,2.33278,0,0),
(75899,8,-3557.78,3208.74,310.26,0,0,0,0,0,0,0,0,0,0,2.0304,0,0);

-- ---------------
-- Shadowmoon Valley
-- ---------------
-- Shadowmoon Valley - zone entrance event
DELETE FROM dbscripts_on_creature_movement WHERE id = 2124401; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2124401,3,0,0,0,0,0,0,2000005765,0,0,0,0,0,0,0,''),
(2124401,5,10,21249,20000,0,0,0,0,0,0,0,-3040.230713,2923.361572,86.667702,0.959264,'summon - Wrathstalker'),
(2124401,5,10,21249,20000,0,0,0,0,0,0,0,-3049.942139,2944.359863,91.529282,6.221430,'summon - Wrathstalker'),
(2124401,5,10,21249,20000,0,0,0,0,0,0,0,-3018.137207,2925.356201,90.870773,1.300909,'summon - Wrathstalker'),
(2124401,5,10,21249,20000,0,0,0,0,0,0,0,-3047.662842,2927.633301,86.636345,0.723925,'summon - Wrathstalker');
DELETE FROM db_script_string WHERE entry = 2000005765;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005765,'There they are!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL); 
-- Parshah
UPDATE creature SET MovementType = 2,spawndist = 0, position_x = -3493.565918, position_y = 2277.088867, position_z = 65.308090, orientation = 0.030873 WHERE guid = 86493;
DELETE FROM creature_movement WHERE id = 86493;
UPDATE creature_template SET MovementType = 2 WHERE entry = 22024; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 22024;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,wpguid,orientation,model1,model2) VALUES
(22024,1,-3478.579346,2278.882080,64.302361,0,0,0,0,0,0,0,0,0,0,0.466765,0,0),
(22024,2,-3465.325684,2287.221191,63.411671,0,0,0,0,0,0,0,0,0,0,0.258635,0,0),
(22024,3,-3396.564209,2289.244141,62.684631,0,0,0,0,0,0,0,0,0,0,5.864808,0,0),
(22024,4,-3375.290771,2283.538574,62.290417,0,0,0,0,0,0,0,0,0,0,5.947275,0,0),
(22024,5,-3361.747803,2279.951172,61.927292,0,0,0,0,0,0,0,0,0,0,6.189178,0,0),
(22024,6,-3346.633301,2278.563232,61.327866,0,0,0,0,0,0,0,0,0,0,6.260647,0,0),
(22024,7,-3292.682129,2278.750732,60.609493,0,0,0,0,0,0,0,0,0,0,3.150710,0,0),
(22024,8,-3365.181514953,2279.233154,62.073700,0,0,0,0,0,0,0,0,0,0,2.842834,0,0),
(22024,9,-3387.639404,2287.592041,62.384487,0,0,0,0,0,0,0,0,0,0,2.897027,0,0),
(22024,10,-3399.742920,2289.471680,62.764309,0,0,0,0,0,0,0,0,0,0,3.195478,0,0),
(22024,11,-3457.017090,2289.383789,63.461361,0,0,0,0,0,0,0,0,0,0,3.329782,0,0),
(22024,12,-3465.547607,2286.994629,63.416016,0,0,0,0,0,0,0,0,0,0,3.699704,0,0),
(22024,13,-3476.516113,2280.523438,64.138481,0,0,0,0,0,0,0,0,0,0,3.412248,0,0),
(22024,14,-3494.457031,2277.872803,65.361969,0,0,0,0,0,0,0,0,0,0,0.162269,0,0);
-- Asghar
UPDATE creature SET MovementType = 2,spawndist = 0 WHERE guid = 77174;
DELETE FROM creature_movement WHERE id = 77174;
UPDATE creature_template SET MovementType =  2 WHERE entry = 22025; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 22025;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,wpguid,orientation,model1,model2) VALUES
(22025,1,-3049.036133,2036.842285,96.739182,0,0,0,0,0,0,0,0,0,0,2.817042,0,0),
(22025,2,-3058.744629,2037.585327,97.092674,0,0,0,0,0,0,0,0,0,0,3.336977,0,0),
(22025,3,-3071.713135,2031.485596,97.815742,0,0,0,0,0,0,0,0,0,0,4.013990,0,0),
(22025,4,-3081.469727,2022.889160,98.105179,0,0,0,0,0,0,0,0,0,0,4.536279,0,0),
(22025,5,-3080.402588,2018.211914,98.422974,0,0,0,0,0,0,0,0,0,0,5.480384,0,0),
(22025,6,-3068.684082,2011.325928,99.106552,0,0,0,0,0,0,0,0,0,0,5.335082,0,0),
(22025,7,-3063.356689,2002.529175,99.861031,0,0,0,0,0,0,0,0,0,0,5.642959,0,0),
(22025,8,-3052.373291,1999.890747,99.074417,0,0,0,0,0,0,0,0,0,0,0.158519,0,0),
(22025,9,-3035.000244,2000.165161,98.867294,0,0,0,0,0,0,0,0,0,0,0.244915,0,0),
(22025,10,-3018.298340,2007.633057,96.970322,0,0,0,0,0,0,0,0,0,0,1.408090,0,0),
(22025,11,-3016.291992,2040.855103,97.399490,0,0,0,0,0,0,0,0,0,0,2.276726,0,0);
-- Vilewing Chimaera - all in Shadowmoon Valley
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 84611;
DELETE FROM creature_movement WHERE id = 84611;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(84611,1,-3611.368896,2570.267822,92.870674,0,0,0,0,0,0,0,0,0,0,4.254952,0,0),
(84611,2,-3630.266113,2532.113037,96.435936,0,0,0,0,0,0,0,0,0,0,4.499214,0,0),
(84611,3,-3634.825928,2513.903076,98.418976,0,0,0,0,0,0,0,0,0,0,5.275965,0,0),
(84611,4,-3616.698975,2497.175049,97.650505,0,0,0,0,0,0,0,0,0,0,0.062476,0,0),
(84611,5,-3595.418701,2510.969238,96.382004,0,0,0,0,0,0,0,0,0,0,0.829474,0,0),
(84611,6,-3561.813721,2564.877441,94.100075,0,0,0,0,0,0,0,0,0,0,0.783920,0,0),
(84611,7,-3537.115479,2599.250000,91.225388,0,0,0,0,0,0,0,0,0,0,0.685018,0,0),
(84611,8,-3502.466553,2623.799561,90.497231,0,0,0,0,0,0,0,0,0,0,0.841313,0,0),
(84611,9,-3496.200195,2632.959473,89.131004,0,0,0,0,0,0,0,0,0,0,1.340825,0,0),
(84611,10,-3490.854492,2650.525879,87.843399,0,0,0,0,0,0,0,0,0,0,2.481224,0,0),
(84611,11,-3512.658936,2658.270264,89.692291,0,0,0,0,0,0,0,0,0,0,3.257199,0,0),
(84611,12,-3577.532471,2654.373047,100.460381,0,0,0,0,0,0,0,0,0,0,3.490462,0,0),
(84611,13,-3604.017090,2651.037842,100.266129,0,0,0,0,0,0,0,0,0,0,4.036314,0,0),
(84611,14,-3609.280762,2644.101318,99.896446,0,0,0,0,0,0,0,0,0,0,4.494200,0,0),
(84611,15,-3611.192871,2629.415771,98.465744,0,0,0,0,0,0,0,0,0,0,4.912021,0,0),
(84611,16,-3605.423584,2598.311035,96.332291,0,0,0,0,0,0,0,0,0,0,4.553094,0,0);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 84594;
DELETE FROM creature_movement WHERE id = 84594;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(84594,1,-3479.756104,2474.829346,88.543900,0,0,0,0,0,0,0,0,0,0,2.890358,0,0),
(84594,2,-3498.014648,2477.449463,91.230881,0,0,0,0,0,0,0,0,0,0,3.374949,0,0),
(84594,3,-3523.571777,2467.328857,93.498291,0,0,0,0,0,0,0,0,0,0,3.767648,0,0),
(84594,4,-3547.376465,2450.551758,94.055649,0,0,0,0,0,0,0,0,0,0,3.902736,0,0),
(84594,5,-3569.161621,2429.602051,93.961418,0,0,0,0,0,0,0,0,0,0,4.425026,0,0),
(84594,6,-3580.286377,2399.282227,98.739510,0,0,0,0,0,0,0,0,0,0,4.807513,0,0),
(84594,7,-3582.898438,2383.791016,98.279594,0,0,0,0,0,0,0,0,0,0,5.329798,0,0),
(84594,8,-3576.873535,2370.982666,97.645294,0,0,0,0,0,0,0,0,0,0,5.514363,0,0),
(84594,9,-3544.774902,2354.015381,96.193108,0,0,0,0,0,0,0,0,0,0,5.992659,0,0),
(84594,10,-3521.363281,2347.291992,93.371468,0,0,0,0,0,0,0,0,0,0,5.782953,0,0),
(84594,11,-3499.380371,2334.657715,92.363495,0,0,0,0,0,0,0,0,0,0,6.068839,0,0),
(84594,12,-3490.183838,2330.125244,90.856194,0,0,0,0,0,0,0,0,0,0,0.081747,0,0),
(84594,13,-3422.948730,2325.062500,83.290695,0,0,0,0,0,0,0,0,0,0,6.185073,0,0),
(84594,14,-3352.997070,2316.850098,81.628731,0,0,0,0,0,0,0,0,0,0,6.214918,0,0),
(84594,15,-3343.455078,2318.358887,81.070442,0,0,0,0,0,0,0,0,0,0,0.475226,0,0),
(84594,16,-3328.635254,2323.646484,79.221878,0,0,0,0,0,0,0,0,0,0,0.735979,0,0),
(84594,17,-3323.659668,2331.801514,78.822739,0,0,0,0,0,0,0,0,0,0,1.129464,0,0),
(84594,18,-3318.733643,2345.202393,86.191788,0,0,0,0,0,0,0,0,0,0,1.588922,0,0),
(84594,19,-3321.866455,2355.544922,84.351913,0,0,0,0,0,0,0,0,0,0,2.111997,0,0),
(84594,20,-3332.744385,2368.597412,83.368141,0,0,0,0,0,0,0,0,0,0,2.505482,0,0),
(84594,21,-3362.023926,2387.835693,83.317322,0,0,0,0,0,0,0,0,0,0,2.928812,0,0),
(84594,22,-3441.165771,2441.754639,83.496124,0,0,0,0,0,0,0,0,0,0,2.445008,0,0);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 84604;
DELETE FROM creature_movement WHERE id = 84604;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(84604,1,-3568.393066,2094.914551,99.509041,0,0,0,0,0,0,0,0,0,0,0.758116,0,0),
(84604,2,-3535.186035,2121.237549,107.240570,0,0,0,0,0,0,0,0,0,0,0.597109,0,0),
(84604,3,-3503.775391,2134.711914,106.060936,0,0,0,0,0,0,0,0,0,0,0.365416,0,0),
(84604,4,-3479.045654,2145.290283,105.028473,0,0,0,0,0,0,0,0,0,0,0.797386,0,0),
(84604,5,-3466.312744,2158.332031,102.154213,0,0,0,0,0,0,0,0,0,0,1.089554,0,0),
(84604,6,-3461.535889,2167.612305,101.474884,0,0,0,0,0,0,0,0,0,0,1.428846,0,0),
(84604,7,-3460.081055,2185.936279,98.335114,0,0,0,0,0,0,0,0,0,0,1.852176,0,0),
(84604,8,-3463.661377,2204.143066,96.667252,0,0,0,0,0,0,0,0,0,0,2.146701,0,0),
(84604,9,-3477.720703,2215.609131,95.721527,0,0,0,0,0,0,0,0,0,0,2.715330,0,0),
(84604,10,-3503.435547,2219.384277,98.765785,0,0,0,0,0,0,0,0,0,0,3.021635,0,0),
(84604,11,-3569.082764,2225.493408,103.886703,0,0,0,0,0,0,0,0,0,0,3.041270,0,0),
(84604,12,-3597.047363,2240.290771,103.089676,0,0,0,0,0,0,0,0,0,0,2.625008,0,0),
(84604,13,-3619.251953,2252.681885,102.351051,0,0,0,0,0,0,0,0,0,0,2.760879,0,0),
(84604,14,-3642.340088,2261.852783,100.821877,0,0,0,0,0,0,0,0,0,0,2.976858,0,0),
(84604,15,-3656.918701,2265.074463,99.963013,0,0,0,0,0,0,0,0,0,0,3.518780,0,0),
(84604,16,-3669.834229,2260.116211,98.426155,0,0,0,0,0,0,0,0,0,0,4.002585,0,0),
(84604,17,-3676.170410,2251.518555,99.122208,0,0,0,0,0,0,0,0,0,0,4.423558,0,0),
(84604,18,-3678.451904,2241.665771,98.339600,0,0,0,0,0,0,0,0,0,0,4.762064,0,0),
(84604,19,-3678.794678,2227.610840,99.023911,0,0,0,0,0,0,0,0,0,0,5.072740,0,0),
(84604,20,-3657.098877,2194.000977,98.143913,0,0,0,0,0,0,0,0,0,0,5.316205,0,0),
(84604,21,-3592.785645,2132.563965,93.700569,0,0,0,0,0,0,0,0,0,0,5.465430,0,0),
(84604,22,-3557.131104,2091.484863,96.692253,0,0,0,0,0,0,0,0,0,0,5.225884,0,0),
(84604,23,-3542.425293,2068.708984,95.124931,0,0,0,0,0,0,0,0,0,0,5.175620,0,0),
(84604,24,-3536.474609,2049.688477,93.943924,0,0,0,0,0,0,0,0,0,0,4.761719,0,0),
(84604,25,-3532.868652,2026.630493,95.739479,0,0,0,0,0,0,0,0,0,0,4.495466,0,0),
(84604,26,-3544.803467,1992.785400,91.268188,0,0,0,0,0,0,0,0,0,0,3.816887,0,0),
(84604,27,-3558.677490,1984.245850,88.870110,0,0,0,0,0,0,0,0,0,0,3.300095,0,0),
(84604,28,-3573.098145,1991.675659,88.029671,0,0,0,0,0,0,0,0,0,0,2.315990,0,0),
(84604,29,-3581.221924,2005.634644,87.652313,0,0,0,0,0,0,0,0,0,0,1.660182,0,0),
(84604,30,-3576.673828,2052.976074,89.978523,0,0,0,0,0,0,0,0,0,0,1.397074,0,0);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 84597;
DELETE FROM creature_movement WHERE id = 84597;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(84597,1,-3663.778320,1908.050659,90.424324,0,0,0,0,0,0,0,0,0,0,1.142601,0,0),
(84597,2,-3655.794922,1920.418701,90.113022,0,0,0,0,0,0,0,0,0,0,1.159879,0,0),
(84597,3,-3651.612793,1940.969482,89.817291,0,0,0,0,0,0,0,0,0,0,1.692379,0,0),
(84597,4,-3654.833740,1955.869019,93.180367,0,0,0,0,0,0,0,0,0,0,2.186395,0,0),
(84597,5,-3663.443848,1968.311890,97.033104,0,0,0,0,0,0,0,0,0,0,2.523331,0,0),
(84597,6,-3677.542969,1978.274414,102.428551,0,0,0,0,0,0,0,0,0,0,2.927811,0,0),
(84597,7,-3686.979736,1981.697876,107.489418,0,0,0,0,0,0,0,0,0,0,3.392766,0,0),
(84597,8,-3696.116699,1981.102661,108.098900,0,0,0,0,0,0,0,0,0,0,3.599327,0,0),
(84597,9,-3718.828369,1983.591797,110.482811,0,0,0,0,0,0,0,0,0,0,4.003021,0,0),
(84597,10,-3725.259766,1972.979126,113.532349,0,0,0,0,0,0,0,0,0,0,4.662757,0,0),
(84597,11,-3722.226318,1947.640015,110.894951,0,0,0,0,0,0,0,0,0,0,4.938426,0,0),
(84597,12,-3714.275391,1890.526245,104.869942,0,0,0,0,0,0,0,0,0,0,4.800981,0,0),
(84597,13,-3740.644775,1835.556274,108.447395,0,0,0,0,0,0,0,0,0,0,4.105906,0,0),
(84597,14,-3774.654541,1785.059204,109.778931,0,0,0,0,0,0,0,0,0,0,3.860865,0,0),
(84597,15,-3808.656494,1757.526001,108.409180,0,0,0,0,0,0,0,0,0,0,4.016375,0,0),
(84597,16,-3830.378662,1730.292236,107.971931,0,0,0,0,0,0,0,0,0,0,4.234715,0,0),
(84597,17,-3841.585938,1709.142212,104.855019,0,0,0,0,0,0,0,0,0,0,4.271623,0,0),
(84597,18,-3852.908936,1679.122314,105.057152,0,0,0,0,0,0,0,0,0,0,3.980240,0,0),
(84597,19,-3871.790771,1664.816406,107.177109,0,0,0,0,0,0,0,0,0,0,3.492508,0,0),
(84597,20,-3891.962158,1665.316772,107.706398,0,0,0,0,0,0,0,0,0,0,2.956078,0,0),
(84597,21,-3903.931641,1674.255371,113.028008,0,0,0,0,0,0,0,0,0,0,2.092139,0,0),
(84597,22,-3908.868164,1691.982910,114.310196,0,0,0,0,0,0,0,0,0,0,1.452039,0,0),
(84597,23,-3906.306152,1706.391724,116.011742,0,0,0,0,0,0,0,0,0,0,1.086045,0,0),
(84597,24,-3899.777588,1717.326416,116.721497,0,0,0,0,0,0,0,0,0,0,0.572394,0,0),
(84597,25,-3874.449463,1732.204956,116.096756,0,0,0,0,0,0,0,0,0,0,0.687848,0,0),
(84597,26,-3860.922119,1742.378052,114.307365,0,0,0,0,0,0,0,0,0,0,1.017715,0,0),
(84597,27,-3812.426025,1804.012085,109.053261,0,0,0,0,0,0,0,0,0,0,0.805657,0,0),
(84597,28,-3772.260254,1832.271973,105.076889,0,0,0,0,0,0,0,0,0,0,0.542549,0,0),
(84597,29,-3731.463867,1854.278442,98.095711,0,0,0,0,0,0,0,0,0,0,0.479717,0,0),
(84597,30,-3706.877197,1869.893311,93.587502,0,0,0,0,0,0,0,0,0,0,0.895978,0,0);
UPDATE creature SET MovementType = 2, spawndist = 0, position_x = -3362.459,  position_y = 1708.176, position_z = 132.83, orientation = 5.005 WHERE guid = 84490;
DELETE FROM creature_movement WHERE id = 84490;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(84490,1,-3342.156982,1671.627441,129.943649,0,0,0,0,0,0,0,0,0,0,5.538446,0,0),
(84490,2,-3324.736328,1654.288574,120.786301,0,0,0,0,0,0,0,0,0,0,5.913859,0,0),
(84490,3,-3262.072021,1625.126953,104.115616,0,0,0,0,0,0,0,0,0,0,5.785053,0,0),
(84490,4,-3201.143799,1588.498413,87.529175,0,0,0,0,0,0,0,0,0,0,5.518804,0,0),
(84490,5,-3156.435791,1563.462524,68.962105,0,0,0,0,0,0,0,0,0,0,5.756783,0,0),
(84490,6,-3109.656250,1530.263428,51.191109,0,0,0,0,0,0,0,0,0,0,5.674315,0,0),
(84490,7,-3094.711914,1515.090820,53.628048,0,0,0,0,0,0,0,0,0,0,5.325596,0,0),
(84490,8,-3079.099121,1510.417480,55.686764,0,0,0,0,0,0,0,0,0,0,4.723984,0,0),
(84490,9,-3072.979736,1480.648804,50.728527,0,0,0,0,0,0,0,0,0,0,4.614022,0,0),
(84490,10,-3077.086182,1431.521484,40.709660,0,0,0,0,0,0,0,0,0,0,4.487575,0,0),
(84490,11,-3092.359375,1397.288208,30.094070,0,0,0,0,0,0,0,0,0,0,3.591435,0,0),
(84490,12,-3152.199463,1410.376587,59.037113,0,0,0,0,0,0,0,0,0,0,2.211491,0,0),
(84490,13,-3174.706543,1452.191895,64.890503,0,0,0,0,0,0,0,0,0,0,1.886336,0,0),
(84490,14,-3184.409912,1493.908447,71.753479,0,0,0,0,0,0,0,0,0,0,1.291004,0,0),
(84490,15,-3172.292480,1532.884766,78.821472,0,0,0,0,0,0,0,0,0,0,1.575321,0,0),
(84490,16,-3171.236328,1549.149292,80.446640,0,0,0,0,0,0,0,0,0,0,1.896550,0,0),
(84490,17,-3183.668151495,1572.144287,80.130974,0,0,0,0,0,0,0,0,0,0,2.439260,0,0),
(84490,18,-3210.317627,1594.073608,85.446411,0,0,0,0,0,0,0,0,0,0,2.781693,0,0),
(84490,19,-3261.544922,1629.859863,96.933914,0,0,0,0,0,0,0,0,0,0,1.774811,0,0),
(84490,20,-3274.597412,1674.894897,94.915573,0,0,0,0,0,0,0,0,0,0,2.121957,0,0),
(84490,21,-3290.819092,1710.060669,101.770279,0,0,0,0,0,0,0,0,0,0,2.309668,0,0),
(84490,22,-3315.459717,1740.153931,107.109711,0,0,0,0,0,0,0,0,0,0,2.573561,0,0),
(84490,23,-3334.167969,1743.577637,132.191345,0,0,0,0,0,0,0,0,0,0,3.695110,0,0),
(84490,24,-3355.311279,1730.864258,136.542542,0,0,0,0,0,0,0,0,0,0,4.532345,0,0),
(84490,25,-3362.459717,1708.176025,132.831116,0,0,0,0,0,0,0,0,0,0,5.005152,0,0);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 84630;
DELETE FROM creature_movement WHERE id = 84630;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(84630,1,-3074.928223,1188.864624,38.727676,0,0,0,0,0,0,0,0,0,0,5.814104,0,0),
(84630,2,-3035.105713,1165.305664,35.012142,0,0,0,0,0,0,0,0,0,0,5.286310,0,0),
(84630,3,-3019.730469,1151.130737,35.135128,0,0,0,0,0,0,0,0,0,0,4.827647,0,0),
(84630,4,-3016.605713,1123.099609,34.198219,0,0,0,0,0,0,0,0,0,0,4.498572,0,0),
(84630,5,-3027.222900,1079.760742,30.075525,0,0,0,0,0,0,0,0,0,0,4.184415,0,0),
(84630,6,-3045.877686,1054.689087,24.740713,0,0,0,0,0,0,0,0,0,0,3.501118,0,0),
(84630,7,-3067.380127,1055.212036,26.689623,0,0,0,0,0,0,0,0,0,0,2.651317,0,0),
(84630,8,-3079.451172,1063.555176,30.561924,0,0,0,0,0,0,0,0,0,0,2.241338,0,0),
(84630,9,-3086.671143,1077.830688,33.812710,0,0,0,0,0,0,0,0,0,0,1.719048,0,0),
(84630,10,-3088.037109,1090.907715,40.121784,0,0,0,0,0,0,0,0,0,0,1.279225,0,0),
(84630,11,-3082.301025,1104.322876,40.654446,0,0,0,0,0,0,0,0,0,0,0.987056,0,0),
(84630,12,-3064.729736,1124.938965,40.342823,0,0,0,0,0,0,0,0,0,0,1.026326,0,0),
(84630,13,-3057.821289,1140.250488,41.165596,0,0,0,0,0,0,0,0,0,0,1.538406,0,0),
(84630,14,-3055.511475,1153.653320,40.470516,0,0,0,0,0,0,0,0,0,0,1.990010,0,0),
(84630,15,-3083.907959,1211.609741,33.558655,0,0,0,0,0,0,0,0,0,0,2.545286,0,0),
(84630,16,-3104.265625,1231.584839,37.455032,0,0,0,0,0,0,0,0,0,0,3.070718,0,0),
(84630,17,-3137.428711,1230.343384,48.755661,0,0,0,0,0,0,0,0,0,0,2.834312,0,0),
(84630,18,-3158.721436,1239.769775,53.397682,0,0,0,0,0,0,0,0,0,0,2.331657,0,0),
(84630,19,-3171.762451,1255.581543,54.391323,0,0,0,0,0,0,0,0,0,0,1.954666,0,0),
(84630,20,-3175.608154,1271.741333,51.287609,0,0,0,0,0,0,0,0,0,0,1.533693,0,0),
(84630,21,-3173.245605,1283.960083,49.660275,0,0,0,0,0,0,0,0,0,0,1.024755,0,0),
(84630,22,-3168.400635,1292.349365,48.071590,0,0,0,0,0,0,0,0,0,0,0.500109,0,0),
(84630,23,-3157.363281,1297.827148,44.843872,0,0,0,0,0,0,0,0,0,0,0.085418,0,0),
(84630,24,-3142.567139,1296.686890,40.344707,0,0,0,0,0,0,0,0,0,0,5.897367,0,0),
(84630,25,-3124.683838,1284.346191,37.574924,0,0,0,0,0,0,0,0,0,0,5.437119,0,0),
(84630,26,-3110.239746,1268.306030,34.933510,0,0,0,0,0,0,0,0,0,0,5.225066,0,0),
(84630,27,-3097.649170,1231.279907,39.947163,0,0,0,0,0,0,0,0,0,0,5.419842,0,0);
-- Coilskar point
-- Coilskar Siren - update
UPDATE creature SET position_x = -2993.461426, position_y = 1601.787354, position_z = 58.337994, orientation = 4.515264 WHERE guid = 84756;
-- Coilskar Defender - updates
UPDATE creature_template SET InhabitType = 1 WHERE entry = 19762;
-- Coilskar Waterkeeper
UPDATE creature SET MovementType = 2,spawndist = 0 WHERE guid = 70812;
DELETE FROM creature_movement WHERE id = 70812;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(70812,1,-2898.153320,1686.593872,59.577206,0,0,0,0,0,0,0,0,0,0,1.630491,0,0),
(70812,2,-2895.214844,1671.085083,57.874622,0,0,0,0,0,0,0,0,0,0,4.431222,0,0),
(70812,3,-2898.215820,1664.947754,57.592976,0,0,0,0,0,0,0,0,0,0,3.800551,0,0),
(70812,4,-2905.862061,1659.551636,58.135105,0,0,0,0,0,0,0,0,0,0,3.575928,0,0),
(70812,5,-2929.096191,1649.143921,56.422482,0,0,0,0,0,0,0,0,0,0,3.769922,0,0),
(70812,6,-2916.629883,1654.797852,57.280041,0,0,0,0,0,0,0,0,0,0,0.363647,0,0),
(70812,7,-2905.561035,1660.645264,57.957443,0,0,0,0,0,0,0,0,0,0,0.503448,0,0),
(70812,8,-2897.399658,1667.853027,57.933395,0,0,0,0,0,0,0,0,0,0,1.079145,0,0);
-- Coilskar Cistern
-- Domesticated Felboar - updates
UPDATE creature_template SET InhabitType = 1 WHERE entry = 21195;
-- Coilskar Muckwatcher #1
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 70809;
DELETE FROM creature_movement WHERE id = 70809;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(70809,1,-2852.866455,1255.128296,6.961742,0,0,0,0,0,0,0,0,0,0,4.962936,0,0),
(70809,2,-2840.698242,1245.456787,6.808123,0,0,0,0,0,0,0,0,0,0,5.648589,0,0),
(70809,3,-2853.377930,1253.613037,6.896011,0,0,0,0,0,0,0,0,0,0,1.968212,0,0),
(70809,4,-2853.498291,1265.237427,6.831838,0,0,0,0,0,0,0,0,0,0,1.202449,0,0),
(70809,5,-2844.452393,1277.688721,7.263540,0,0,0,0,0,0,0,0,0,0,1.277848,0,0),
(70809,6,-2844.499023,1286.847168,7.576293,0,0,0,0,0,0,0,0,0,0,2.012195,0,0),
(70809,7,-2851.521729,1296.286377,6.807400,0,0,0,0,0,0,0,0,0,0,2.706488,0,0),
(70809,8,-2879.308105,1305.236206,5.525154,0,0,0,0,0,0,0,0,0,0,2.593390,0,0),
(70809,9,-2895.635254,1310.304810,6.691669,0,0,0,0,0,0,0,0,0,0,2.852572,0,0),
(70809,10,-2911.896729,1316.411987,6.315593,0,0,0,0,0,0,0,0,0,0,2.746543,0,0),
(70809,11,-2880.525391,1304.876587,5.370248,0,0,0,0,0,0,0,0,0,0,5.931331,0,0),
(70809,12,-2876.302246,1303.851807,6.388385,0,0,0,0,0,0,0,0,0,0,6.005943,0,0),
(70809,13,-2853.456543,1297.450928,6.807506,0,0,0,0,0,0,0,0,0,0,5.577900,0,0),
(70809,14,-2845.330078,1287.647217,7.376515,0,0,0,0,0,0,0,0,0,0,4.960579,0,0),
(70809,15,-2842.592285,1279.801392,7.943965,0,0,0,0,0,0,0,0,0,0,4.457927,0,0),
(70809,16,-2844.919922,1273.738525,7.368398,0,0,0,0,0,0,0,0,0,0,3.979623,0,0),
(70809,17,-2849.865723,1268.152710,7.507886,0,0,0,0,0,0,0,0,0,0,4.135918,0,0),
(70809,18,-2852.459229,1259.204468,7.028551,0,0,0,0,0,0,0,0,0,0,4.524688,0,0);
-- Coilskar Muckwatcher #2
UPDATE creature SET MovementType = 2,spawndist = 0 WHERE guid = 70808;
DELETE FROM creature_movement WHERE id = 70808;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(70808,1,-2809.513916,1358.351440,37.421818,0,0,0,0,0,0,0,0,0,0,4.777214,0,0),
(70808,2,-2807.756836,1345.417358,36.643299,0,0,0,0,0,0,0,0,0,0,5.127497,0,0),
(70808,3,-2801.977295,1334.782837,35.369717,0,0,0,0,0,0,0,0,0,0,5.542971,0,0),
(70808,4,-2790.252930,1326.803833,33.724636,0,0,0,0,0,0,0,0,0,0,5.998498,0,0),
(70808,5,-2781.893555,1324.964600,33.585182,0,0,0,0,0,0,0,0,0,0,0.263515,0,0),
(70808,6,-2775.221436,1327.681152,33.736526,0,0,0,0,0,0,0,0,0,0,0.787375,0,0),
(70808,7,-2770.930420,1335.768311,34.076717,0,0,0,0,0,0,0,0,0,0,1.353648,0,0),
(70808,8,-2768.316650,1352.887573,34.706768,0,0,0,0,0,0,0,0,0,0,1.638747,0,0),
(70808,9,-2769.591064,1365.682739,36.162888,0,0,0,0,0,0,0,0,0,0,1.881436,0,0),
(70808,10,-2776.399658,1375.486694,37.072037,0,0,0,0,0,0,0,0,0,0,2.507398,0,0),
(70808,11,-2786.434082,1380.662354,37.805660,0,0,0,0,0,0,0,0,0,0,3.070529,0,0),
(70808,12,-2797.033203,1379.113647,38.019535,0,0,0,0,0,0,0,0,0,0,3.598316,0,0),
(70808,13,-2804.693359,1370.212280,37.794846,0,0,0,0,0,0,0,0,0,0,4.290251,0,0);
-- Coilskar Sorceress - update + should talk to 19765 on hers wp
UPDATE creature_template SET EquipmentTemplateId = 127 WHERE entry = 19767;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1976701; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1976701,0,31,19765,10,0,0,0,-5000,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(1976701,2,1,3,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1976701,4,1,1,0,19765,10,0x04,0,0,0,0,0,0,0,0,'force 19765 to: emote');
-- Captured water Spirit - update
UPDATE creature SET position_x = -2708.877930, position_y = 1239.098022, position_z = 38.192089, orientation = 3.089233 WHERE guid = 86808;
UPDATE creature SET position_x = -2711.530029, position_y = 1230.921997, position_z = 37.322121, orientation = 2.548181 WHERE guid = 86806;
UPDATE creature SET position_x = -2713.188965, position_y = 1221.688965, position_z = 38.143211, orientation = 2.094395 WHERE guid = 86801;
UPDATE creature SET position_x = -2729.854004, position_y = 1215.225952, position_z = 48.214142, orientation = 1.570796 WHERE guid = 86800;
UPDATE creature SET position_x = -2721.247070, position_y = 1216.489990, position_z = 41.778198, orientation = 1.797689 WHERE guid = 86807;
UPDATE creature_template SET FactionAlliance = 7, FactionHorde = 7, UnitFlags = 33024, InhabitType = 5 WHERE entry = 21029;
DELETE FROM creature_template_addon WHERE entry = 21029;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(21029,0,0,1,0,0,0,35929);
-- Earthmender Wilda Trigger - updates + script (all npcs added in new_guids)
UPDATE creature_template SET UnitFlags = 33555200, InhabitType = 4 WHERE entry = 21041;
DELETE FROM dbscripts_on_creature_movement WHERE id = 2104101; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2104101,0,31,21027,40,0,0,0,0,0,0,0,0,0,0,0,''), -- let check if creature is alive
(2104101,1,3,0,0,21027,40,0x08,0,0,0,0,-2616.361084,1372.072021,46.028641,3.857178,''),
(2104101,2,15,35928,0,21027,40,1,0,0,0,0,0,0,0,0,'watery prison - channel');
-- Earthmender Wilda
UPDATE creature SET position_x = -2616.361084, position_y = 1372.072021, position_z = 46.028641, orientation = 3.857178, spawntimesecs = 300 WHERE guid = 86832;
UPDATE creature_template SET UnitFlags = 32768, NpcFlags = 2, InhabitType = 3 WHERE entry = 21027; -- q.flag is set by event 
DELETE FROM creature_template_addon WHERE entry = 21027;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(21027,0,0,1,0,0,0,35921);
-- Keeper of the Cistern
UPDATE creature_template SET FactionAlliance = 1826, FactionHorde = 1826 WHERE entry = 20795;
UPDATE creature SET position_x = -2593.757813, position_y = 1384.134766, position_z = 44.286011, orientation = 0.561506, spawntimesecs = 300 WHERE guid = 86872;
DELETE FROM dbscripts_on_creature_death WHERE id = 20795;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20795,0,31,21027,25,0,0,0,0,0,0,0,0,0,0,0,''), -- let check if creature is alive
(20795,1,29,2,0x02,21027,25,0x04,0,0,0,0,0,0,0,0,''),
(20795,1,3,0,0,21027,25,0x04,0,0,0,0,-2638.89,1358.96,35.9607,0,''),
(20795,10,14,35921,0,21027,50,0x04,0,0,0,0,0,0,0,0,''),
(20795,14,0,0,0,21027,50,0x04,2000005766,0,0,0,0,0,0,0,''),
(20795,16,29,2,0x01,21027,50,0x04,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry = 2000005766;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005766,'Thank you, kind soul. You have freed me from the watery prison of Coilskar but many more are being held prisoner nearby. Will you assist me in freeing them as well?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL);

-- Enraged Fire Spirit - all in Shadowmoon Valley
-- Enraged Fire Spirit - updates
UPDATE creature_template SET InhabitType = 1 WHERE entry = 21061;
UPDATE creature SET position_x = -3682.017090, position_y = 1735.518799, position_z = 39.628796, orientation = 0.131099, spawndist = 5, MovementType = 1 WHERE guid = 74024;
UPDATE creature SET position_x = -3764.947998, position_y = 1646.007690, position_z = 39.719563, orientation = 2.949425 WHERE guid = 74023;
UPDATE creature SET position_x = -3817.987061, position_y = 1470.743042, position_z = 44.122883, orientation = 5.707718 WHERE guid = 74019;
UPDATE creature SET position_x = -3694.663574, position_y = 1647.987671, position_z = 39.881718, orientation = 1.053506 WHERE guid = 74032;
-- Enraged Fire Spirit #1
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74012;
DELETE FROM creature_movement WHERE id = 74012;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(74012,1,-3846.195068,1363.642212,40.851978,0,0,0,0,0,0,0,0,0,0,1.273996,0,0),
(74012,2,-3841.328125,1378.156372,39.785717,0,0,0,0,0,0,0,0,0,0,1.556739,0,0),
(74012,3,-3839.727051,1389.478027,39.423538,0,0,0,0,0,0,0,0,0,0,1.769581,0,0),
(74012,4,-3841.834717,1403.790405,39.791061,0,0,0,0,0,0,0,0,0,0,1.757015,0,0),
(74012,5,-3844.524414,1416.042236,40.086765,0,0,0,0,0,0,0,0,0,0,1.768795,0,0),
(74012,6,-3841.644775,1395.771484,39.422878,0,0,0,0,0,0,0,0,0,0,4.800430,0,0),
(74012,7,-3842.135254,1378.813965,39.827480,0,0,0,0,0,0,0,0,0,0,4.419513,0,0),
(74012,8,-3846.776855,1349.218994,40.616627,0,0,0,0,0,0,0,0,0,0,4.816137,0,0),
(74012,9,-3848.199463,1327.060669,39.424561,0,0,0,0,0,0,0,0,0,0,4.275786,0,0),
(74012,10,-3864.122314,1307.699463,39.640980,0,0,0,0,0,0,0,0,0,0,4.192537,0,0),
(74012,11,-3873.697998,1291.151733,39.888130,0,0,0,0,0,0,0,0,0,0,4.276571,0,0),
(74012,12,-3890.034424,1260.608154,39.967388,0,0,0,0,0,0,0,0,0,0,4.311911,0,0),
(74012,13,-3870.437012,1290.671387,39.437202,0,0,0,0,0,0,0,0,0,0,1.052508,0,0),
(74012,14,-3858.252686,1327.987671,41.851032,0,0,0,0,0,0,0,0,0,0,1.284201,0,0);
-- Enraged Fire Spirit #2
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74010;
DELETE FROM creature_movement WHERE id = 74010;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(74010,1,-3838.326172,1339.890869,39.679127,0,0,0,0,0,0,0,0,0,0,2.485078,0,0),
(74010,2,-3845.816162,1348.884033,40.481323,0,0,0,0,0,0,0,0,0,0,2.143429,0,0),
(74010,3,-3858.004883,1368.138916,40.105995,0,0,0,0,0,0,0,0,0,0,2.159137,0,0),
(74010,4,-3869.950439,1399.025024,39.393257,0,0,0,0,0,0,0,0,0,0,1.801781,0,0),
(74010,5,-3864.750732,1378.347778,40.433006,0,0,0,0,0,0,0,0,0,0,4.959087,0,0),
(74010,6,-3854.033691,1365.311523,40.322079,0,0,0,0,0,0,0,0,0,0,5.410688,0,0),
(74010,7,-3843.046631,1340.538818,39.898426,0,0,0,0,0,0,0,0,0,0,5.409903,0,0),
(74010,8,-3835.042969,1338.908813,39.922791,0,0,0,0,0,0,0,0,0,0,6.191370,0,0),
(74010,9,-3824.309814,1338.807861,40.255920,0,0,0,0,0,0,0,0,0,0,0.041700,0,0),
(74010,10,-3832.898682,1338.197266,40.190769,0,0,0,0,0,0,0,0,0,0,3.281500,0,0);
-- Enraged Fire Spirit #3
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74009;
DELETE FROM creature_movement WHERE id = 74009;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(74009,1,-4054.979004,1329.807739,40.801224,0,0,0,0,0,0,0,0,0,0,0.687020,0,0),
(74009,2,-3997.711182,1363.837646,39.641212,0,0,0,0,0,0,0,0,0,0,0.330736,0,0),
(74009,3,-3983.934570,1369.024780,39.637756,0,0,0,0,0,0,0,0,0,0,0.358226,0,0),
(74009,4,-4017.294189,1357.051880,39.385571,0,0,0,0,0,0,0,0,0,0,3.853249,0,0),
(74009,5,-4028.906250,1349.502686,38.773022,0,0,0,0,0,0,0,0,0,0,3.707332,0,0);
-- Enraged Fire Spirit #4
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74025;
DELETE FROM creature_movement WHERE id = 74025;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(74025,1,-3559.886230,1699.506836,39.850990,0,0,0,0,0,0,0,0,0,0,4.197893,0,0),
(74025,2,-3564.114258,1692.038818,39.721752,0,0,0,0,0,0,0,0,0,0,3.685816,0,0),
(74025,3,-3572.404297,1690.466309,39.712170,0,0,0,0,0,0,0,0,0,0,2.942044,0,0),
(74025,4,-3577.244141,1694.272339,39.849777,0,0,0,0,0,0,0,0,0,0,1.723106,0,0),
(74025,5,-3571.291748,1712.859497,39.663181,0,0,0,0,0,0,0,0,0,0,1.490628,0,0),
(74025,6,-3566.329346,1742.497681,39.574017,0,0,0,0,0,0,0,0,0,0,1.642210,0,0),
(74025,7,-3567.489258,1756.302734,39.214058,0,0,0,0,0,0,0,0,0,0,2.014488,0,0),
(74025,8,-3579.901611,1774.918151495,39.055790,0,0,0,0,0,0,0,0,0,0,1.888039,0,0),
(74025,9,-3581.278564,1785.543701,39.792999,0,0,0,0,0,0,0,0,0,0,1.124632,0,0),
(74025,10,-3577.571289,1790.180420,39.750645,0,0,0,0,0,0,0,0,0,0,0.605483,0,0),
(74025,11,-3570.380127,1791.656982,39.690193,0,0,0,0,0,0,0,0,0,0,0.076125,0,0),
(74025,12,-3558.971191,1791.784180,39.417141,0,0,0,0,0,0,0,0,0,0,5.860590,0,0),
(74025,13,-3576.411621,1790.503052,39.720089,0,0,0,0,0,0,0,0,0,0,4.204185,0,0),
(74025,14,-3581.364258,1781.916992,39.511158,0,0,0,0,0,0,0,0,0,0,4.819938,0,0),
(74025,15,-3579.156494,1769.406738,39.313389,0,0,0,0,0,0,0,0,0,0,5.178077,0,0),
(74025,16,-3567.903809,1748.264648,39.483555,0,0,0,0,0,0,0,0,0,0,4.885123,0,0),
(74025,17,-3559.448975,1704.930542,39.660011,0,0,0,0,0,0,0,0,0,0,4.936172,0,0);
-- Enraged Fire Spirit #5
UPDATE creature SET position_x = -3604.046631, position_y = 1797.811768, position_z = 39.656643, orientation = 2.412686, MovementType = 2, spawndist = 0 WHERE guid = 74031;
DELETE FROM creature_movement WHERE id = 74031;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(74031,1,-3617.447266,1804.358521,39.764160,0,0,0,0,0,0,0,0,0,0,3.120324,0,0),
(74031,2,-3640.799805,1800.557129,39.625957,0,0,0,0,0,0,0,0,0,0,3.623765,0,0),
(74031,3,-3654.481445,1791.969360,39.621109,0,0,0,0,0,0,0,0,0,0,3.993687,0,0),
(74031,4,-3661.470215,1783.241943,39.642189,0,0,0,0,0,0,0,0,0,0,4.435863,0,0),
(74031,5,-3662.236328,1774.897949,39.622753,0,0,0,0,0,0,0,0,0,0,4.725671,0,0),
(74031,6,-3659.632080,1786.029175,39.624077,0,0,0,0,0,0,0,0,0,0,0.944764,0,0),
(74031,7,-3652.408936,1793.561035,39.620708,0,0,0,0,0,0,0,0,0,0,0.627464,0,0),
(74031,8,-3640.748291,1801.082642,39.620174,0,0,0,0,0,0,0,0,0,0,0.255970,0,0),
(74031,9,-3615.342285,1803.995483,39.752888,0,0,0,0,0,0,0,0,0,0,5.845651,0,0),
(74031,10,-3605.901123,1798.453369,39.718403,0,0,0,0,0,0,0,0,0,0,4.774671,0,0),
(74031,11,-3609.395508,1770.178711,39.777660,0,0,0,0,0,0,0,0,0,0,4.738232,0,0),
(74031,12,-3606.962646,1724.272461,39.604599,0,0,0,0,0,0,0,0,0,0,1.644137,0,0),
(74031,13,-3609.615723,1777.833374,39.785160,0,0,0,0,0,0,0,0,0,0,1.302489,0,0),
(74031,14,-3607.008301,1797.140625,39.798298,0,0,0,0,0,0,0,0,0,0,1.915099,0,0);
-- Enraged Fire Spirit #6
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74028;
DELETE FROM creature_movement WHERE id = 74028;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(74028,1,-3467.010986,1727.532104,80.341957,0,0,0,0,0,0,0,0,0,0,3.871508,0,0),
(74028,2,-3476.325684,1717.079102,72.664696,0,0,0,0,0,0,0,0,0,0,4.053719,0,0),
(74028,3,-3486.913574,1701.502319,66.438675,0,0,0,0,0,0,0,0,0,0,4.279125,0,0),
(74028,4,-3489.807129,1693.493286,63.737061,0,0,0,0,0,0,0,0,0,0,4.542233,0,0),
(74028,5,-3491.357666,1683.330200,59.958420,0,0,0,0,0,0,0,0,0,0,4.286978,0,0),
(74028,6,-3492.780273,1678.502930,57.278198,0,0,0,0,0,0,0,0,0,0,4.432278,0,0),
(74028,7,-3498.009521,1669.833862,49.509212,0,0,0,0,0,0,0,0,0,0,3.726209,0,0),
(74028,8,-3501.708252,1666.100830,46.463818,0,0,0,0,0,0,0,0,0,0,3.937482,0,0),
(74028,9,-3504.910645,1663.563232,45.975742,0,0,0,0,0,0,0,0,0,0,3.796110,0,0),
(74028,10,-3500.515625,1668.427368,47.560513,0,0,0,0,0,0,0,0,0,0,0.866575,0,0),
(74028,11,-3493.849854,1675.918213,55.527012,0,0,0,0,0,0,0,0,0,0,1.165812,0,0),
(74028,12,-3490.829102,1689.250977,62.355751,0,0,0,0,0,0,0,0,0,0,1.432847,0,0),
(74028,13,-3487.906738,1699.827637,65.774681,0,0,0,0,0,0,0,0,0,0,1.030723,0,0),
(74028,14,-3482.273193,1707.706177,69.129219,0,0,0,0,0,0,0,0,0,0,0.953754,0,0),
(74028,15,-3475.362549,1718.226563,73.349861,0,0,0,0,0,0,0,0,0,0,0.949827,0,0),
(74028,16,-3467.111816,1727.616821,80.312614,0,0,0,0,0,0,0,0,0,0,0.396907,0,0),
(74028,17,-3458.540527,1729.605835,83.453857,0,0,0,0,0,0,0,0,0,0,0.648234,0,0),
(74028,18,-3448.852051,1737.152466,91.521782,0,0,0,0,0,0,0,0,0,0,0.714993,0,0),
(74028,19,-3439.660156,1742.241333,96.386360,0,0,0,0,0,0,0,0,0,0,0.491155,0,0),
(74028,20,-3431.528076,1747.294434,99.761780,0,0,0,0,0,0,0,0,0,0,0.573622,0,0),
(74028,21,-3438.066406,1743.678101,97.230766,0,0,0,0,0,0,0,0,0,0,3.723068,0,0),
(74028,22,-3447.634766,1736.637695,91.812401,0,0,0,0,0,0,0,0,0,0,3.742703,0,0),
(74028,23,-3461.307617,1730.620728,82.665756,0,0,0,0,0,0,0,0,0,0,3.672016,0,0);
-- Enraged Fire Spirit #7
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74029;
DELETE FROM creature_movement WHERE id = 74029;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(74029,1,-3386.534668,1680.418823,99.950859,0,0,0,0,0,0,0,0,0,0,2.329757,0,0),
(74029,2,-3394.987305,1689.722900,99.826988,0,0,0,0,0,0,0,0,0,0,1.894646,0,0),
(74029,3,-3393.533203,1700.587646,101.722290,0,0,0,0,0,0,0,0,0,0,1.481527,0,0),
(74029,4,-3390.240967,1722.795532,100.836090,0,0,0,0,0,0,0,0,0,0,1.430476,0,0),
(74029,5,-3393.843750,1699.974243,101.758476,0,0,0,0,0,0,0,0,0,0,4.583844,0,0),
(74029,6,-3392.999512,1686.690674,99.501984,0,0,0,0,0,0,0,0,0,0,5.781574,0,0),
(74029,7,-3385.755127,1679.740601,99.771248,0,0,0,0,0,0,0,0,0,0,5.697533,0,0),
(74029,8,-3377.450439,1675.936279,98.378250,0,0,0,0,0,0,0,0,0,0,5.889953,0,0),
(74029,9,-3361.713867,1670.050415,94.663925,0,0,0,0,0,0,0,0,0,0,5.640195,0,0),
(74029,10,-3356.403320,1663.421875,90.909996,0,0,0,0,0,0,0,0,0,0,5.018948,0,0),
(74029,11,-3355.299316,1658.171631,87.426849,0,0,0,0,0,0,0,0,0,0,4.829906,0,0),
(74029,12,-3355.264648,1651.613525,82.771057,0,0,0,0,0,0,0,0,0,0,4.376731,0,0),
(74029,13,-3362.166748,1638.422241,74.643501,0,0,0,0,0,0,0,0,0,0,4.203946,0,0),
(74029,14,-3365.688477,1627.690430,68.810814,0,0,0,0,0,0,0,0,0,0,4.747435,0,0),
(74029,15,-3362.734375,1619.184448,61.100243,0,0,0,0,0,0,0,0,0,0,4.800838,0,0),
(74029,16,-3362.980225,1607.159790,51.606964,0,0,0,0,0,0,0,0,0,0,4.663400,0,0),
(74029,17,-3363.577637,1615.618286,57.098583,0,0,0,0,0,0,0,0,0,0,1.806119,0,0),
(74029,18,-3365.995850,1625.432251,66.795067,0,0,0,0,0,0,0,0,0,0,1.374150,0,0),
(74029,19,-3360.840332,1639.688965,75.360352,0,0,0,0,0,0,0,0,0,0,1.158165,0,0),
(74029,20,-3355.079102,1652.479248,83.419128,0,0,0,0,0,0,0,0,0,0,1.411195,0,0),
(74029,21,-3355.262939,1662.151001,90.080475,0,0,0,0,0,0,0,0,0,0,1.998674,0,0),
(74029,22,-3361.813721,1670.348022,94.783272,0,0,0,0,0,0,0,0,0,0,2.583795,0,0),
(74029,23,-3377.158691,1675.288208,98.324844,0,0,0,0,0,0,0,0,0,0,2.841412,0,0);
-- Enraged Earth Spirit - all in Shadowmoon Valley
-- Enraged Earth Spirit - updates
UPDATE creature_template SET InhabitType = 1 WHERE entry = 21050;
UPDATE creature SET position_x = -3462.146484, position_y  = 1890.386475, position_z  = 97.566963, orientation  = 0.289832 WHERE guid  = 73942;
-- Enraged Earth Spirit #1
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 73931;
DELETE FROM creature_movement WHERE id = 73931;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(73931,1,-3794.498047,1526.695557,45.176956,0,0,0,0,0,0,0,0,0,0,5.035007,0,0),
(73931,2,-3792.602783,1509.832764,45.747349,0,0,0,0,0,0,0,0,0,0,4.389412,0,0),
(73931,3,-3798.208496,1502.605469,45.404530,0,0,0,0,0,0,0,0,0,0,3.830997,0,0),
(73931,4,-3817.259766,1496.327026,43.122253,0,0,0,0,0,0,0,0,0,0,3.304780,0,0),
(73931,5,-3841.421387,1496.972412,41.975342,0,0,0,0,0,0,0,0,0,0,2.740079,0,0),
(73931,6,-3850.301025,1500.382935,43.176193,0,0,0,0,0,0,0,0,0,0,2.174592,0,0),
(73931,7,-3852.324707,1512.101196,41.858387,0,0,0,0,0,0,0,0,0,0,1.484227,0,0),
(73931,8,-3848.501465,1524.372192,42.171787,0,0,0,0,0,0,0,0,0,0,1.455952,0,0),
(73931,9,-3845.266113,1537.631592,42.359135,0,0,0,0,0,0,0,0,0,0,0.728673,0,0),
(73931,10,-3827.659180,1546.432129,42.009449,0,0,0,0,0,0,0,0,0,0,6.025600,0,0),
(73931,11,-3822.120605,1541.400513,41.787140,0,0,0,0,0,0,0,0,0,0,5.379313,0,0),
(73931,12,-3818.873291,1532.519653,42.919800,0,0,0,0,0,0,0,0,0,0,5.965170,0,0),
(73931,13,-3798.249756,1529.823364,45.416763,0,0,0,0,0,0,0,0,0,0,5.463177,0,0);
-- Enraged Earth Spirit #2
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 73937;
DELETE FROM creature_movement WHERE id = 73937;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(73937,1,-3634.544922,1741.793823,41.031586,0,0,0,0,0,0,0,0,0,0,5.441656,0,0),
(73937,2,-3624.219971,1732.875488,40.907177,0,0,0,0,0,0,0,0,0,0,5.121830,0,0),
(73937,3,-3617.871826,1714.129150,41.219341,0,0,0,0,0,0,0,0,0,0,0.200886,0,0),
(73937,4,-3603.287598,1712.727417,40.641975,0,0,0,0,0,0,0,0,0,0,0.297955,0,0),
(73937,5,-3593.356689,1717.871460,41.077122,0,0,0,0,0,0,0,0,0,0,0.892501,0,0),
(73937,6,-3587.038818,1736.520752,40.755508,0,0,0,0,0,0,0,0,0,0,1.161881,0,0),
(73937,7,-3595.257080,1716.999878,41.045315,0,0,0,0,0,0,0,0,0,0,3.874647,0,0),
(73937,8,-3604.956299,1714.014404,40.480831,0,0,0,0,0,0,0,0,0,0,3.247899,0,0),
(73937,9,-3616.226807,1714.981812,41.132874,0,0,0,0,0,0,0,0,0,0,2.453861,0,0),
(73937,10,-3622.335693,1721.973755,40.113445,0,0,0,0,0,0,0,0,0,0,2.017515,0,0),
(73937,11,-3625.314453,1733.013184,40.996578,0,0,0,0,0,0,0,0,0,0,2.032264,0,0),
(73937,12,-3629.303955,1736.014160,41.091080,0,0,0,0,0,0,0,0,0,0,2.291445,0,0),
(73937,13,-3635.101074,1746.716431,40.783840,0,0,0,0,0,0,0,0,0,0,1.454998,0,0);
-- Spawn of Uvuros - Shadowmoon Valley
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74142;
DELETE FROM creature_movement WHERE id = 74142;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(74142,1,-3836.615967,1471.822754,42.491615,0,0,0,0,0,0,0,0,0,0,0.657228,0,0),
(74142,2,-3790.704834,1508.232178,45.722668,0,0,0,0,0,0,0,0,0,0,0.526559,0,0),
(74142,3,-3722.587158,1543.971680,46.979603,0,0,0,0,0,0,0,0,0,0,0.366338,0,0),
(74142,4,-3655.047363,1575.366455,47.831264,0,0,0,0,0,0,0,0,0,0,0.217113,0,0),
(74142,5,-3591.681885,1588.392456,47.257187,0,0,0,0,0,0,0,0,0,0,0.070243,0,0),
(74142,6,-3494.604736,1587.539063,46.016644,0,0,0,0,0,0,0,0,0,0,6.102097,0,0),
(74142,7,-3444.952393,1587.447144,46.376995,0,0,0,0,0,0,0,0,0,0,5.870036,0,0),
(74142,8,-3406.115479,1533.522583,49.494617,0,0,0,0,0,0,0,0,0,0,5.555443,0,0),
(74142,9,-3384.124756,1517.093994,51.845646,0,0,0,0,0,0,0,0,0,0,0.381238,0,0),
(74142,10,-3369.890869,1527.722290,50.266872,0,0,0,0,0,0,0,0,0,0,1.692849,0,0),
(74142,11,-3424.217041,1584.742676,46.729050,0,0,0,0,0,0,0,0,0,0,2.698162,0,0),
(74142,12,-3492.859619,1618.743042,43.864006,0,0,0,0,0,0,0,0,0,0,2.957348,0,0),
(74142,13,-3555.144287,1645.891235,41.967567,0,0,0,0,0,0,0,0,0,0,2.812050,0,0),
(74142,14,-3590.355957,1643.216064,42.256214,0,0,0,0,0,0,0,0,0,0,3.613157,0,0),
(74142,15,-3637.770020,1599.436768,46.530117,0,0,0,0,0,0,0,0,0,0,3.670267,0,0),
(74142,16,-3757.973389,1582.008667,43.218494,0,0,0,0,0,0,0,0,0,0,3.260838,0,0),
(74142,17,-3814.898193,1578.625610,39.404610,0,0,0,0,0,0,0,0,0,0,3.578923,0,0),
(74142,18,-3861.346191,1551.096802,39.934593,0,0,0,0,0,0,0,0,0,0,3.798838,0,0),
(74142,19,-3902.943115,1523.798218,42.188572,0,0,0,0,0,0,0,0,0,0,3.227068,0,0),
(74142,20,-3926.726563,1521.826294,39.677380,0,0,0,0,0,0,0,0,0,0,3.642544,0,0),
(74142,21,-3951.355469,1495.364136,41.658684,0,0,0,0,0,0,0,0,0,0,4.396522,0,0),
(74142,22,-3961.923584,1433.762329,39.641724,0,0,0,0,0,0,0,0,0,0,4.639206,0,0),
(74142,23,-3967.208740,1378.363159,42.167240,0,0,0,0,0,0,0,0,0,0,5.082951,0,0),
(74142,24,-3962.060303,1335.552490,40.948776,0,0,0,0,0,0,0,0,0,0,5.404960,0,0),
(74142,25,-3945.645752,1325.865234,39.607433,0,0,0,0,0,0,0,0,0,0,6.219103,0,0),
(74142,26,-3908.473145,1316.835205,40.037518,0,0,0,0,0,0,0,0,0,0,5.352029,0,0),
(74142,27,-3898.763428,1290.095947,39.670227,0,0,0,0,0,0,0,0,0,0,4.800683,0,0),
(74142,28,-3899.697998,1263.196289,40.556377,0,0,0,0,0,0,0,0,0,0,4.623972,0,0),
(74142,29,-3904.328369,1243.671997,41.759430,0,0,0,0,0,0,0,0,0,0,4.732358,0,0),
(74142,30,-3900.948486,1229.754150,43.092270,0,0,0,0,0,0,0,0,0,0,5.472199,0,0),
(74142,31,-3887.954102,1226.243774,44.205093,0,0,0,0,0,0,0,0,0,0,6.279587,0,0),
(74142,32,-3876.384277,1231.478516,44.407707,0,0,0,0,0,0,0,0,0,0,1.260108,0,0),
(74142,33,-3875.338623,1246.452271,43.624580,0,0,0,0,0,0,0,0,0,0,1.628625,0,0),
(74142,34,-3876.195068,1264.435425,39.631760,0,0,0,0,0,0,0,0,0,0,1.612917,0,0),
(74142,35,-3871.827393,1286.183960,39.417225,0,0,0,0,0,0,0,0,0,0,0.968891,0,0),
(74142,36,-3859.672119,1329.700073,42.168983,0,0,0,0,0,0,0,0,0,0,1.432276,0,0),
(74142,37,-3859.108643,1375.978271,40.757214,0,0,0,0,0,0,0,0,0,0,1.554013,0,0),
(74142,38,-3854.397217,1429.916260,41.105610,0,0,0,0,0,0,0,0,0,0,1.440130,0,0);
-- Felboar - updates
UPDATE creature_template SET InhabitType = 1 WHERE entry = 21878;
UPDATE creature SET position_x = -3543.934326, position_y = 2412.462158, position_z = 75.652390, orientation = 3.159382 WHERE guid = 86886;
UPDATE creature SET position_x = -3556.121338, position_y = 2390.312744, position_z = 79.543335, orientation = 1.816334 WHERE guid = 86889;
UPDATE creature SET position_x = -3538.031982, position_y = 2348.650879, position_z = 79.510910, orientation = 3.811249 WHERE guid = 86894;
UPDATE creature SET position_x = -3506.653564, position_y = 2392.436035, position_z = 71.904778, orientation = 6.159566 WHERE guid = 76597;
UPDATE creature SET position_x = -3315.004639, position_y = 2322.925537, position_z = 61.888039, orientation = 5.546986 WHERE guid = 86884;
-- Felfire Diemetradon - updates
UPDATE creature_template SET InhabitType = 1 WHERE entry = 21408;
-- Dreadwarden - Warden's Cage
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 70666;
DELETE FROM creature_movement WHERE id = 70666;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(70666,1,-3724.751221,1023.834473,67.822807,0,0,0,0,0,0,0,0,0,0,3.319563,0,0),
(70666,2,-3742.801025,1017.387939,70.967796,0,0,0,0,0,0,0,0,0,0,3.768025,0,0),
(70666,3,-3760.412598,1004.154602,74.549637,0,0,0,0,0,0,0,0,0,0,3.980083,0,0),
(70666,4,-3781.968506,973.388245,79.405861,0,0,0,0,0,0,0,0,0,0,3.928245,0,0),
(70666,5,-3750.698975,1010.474182,72.538391,0,0,0,0,0,0,0,0,0,0,0.528256,0,0),
(70666,6,-3725.746094,1023.661499,67.857620,0,0,0,0,0,0,0,0,0,0,0.759163,0,0),
(70666,7,-3704.059326,1048.485107,67.742035,0,0,0,0,0,0,0,0,0,0,0.955513,0,0),
(70666,8,-3710.420410,1036.489746,68.067818,0,0,0,0,0,0,0,0,0,0,3.933740,0,0);
-- Lady Sinestra - event
-- Dragonmaw Enforcer - update 
UPDATE creature SET position_x = -5146.516113, position_y = 639.383606, position_z = 81.791901, orientation = 2.504820 WHERE guid = 52110; -- correct spawn point
UPDATE creature SET position_x = -5162.109863, position_y = 629.679016, position_z = 79.580055, orientation = 2.007457 WHERE guid = 52108; -- correct spawn point
-- Lady Sinestra - dragon form 
UPDATE creature_template SET InhabitType = 5, MovementType = 2 WHERE entry = 23283;
DELETE FROM creature_template_addon WHERE entry = 23283; -- let her fly
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(23283,0,50331648,1,16,0,0,NULL);
DELETE FROM creature_movement_template WHERE entry = 23283;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(23283,1,-5157.33,639.52,85.1946,1000,2328301,0,0,0,0,0,0,0,0,2.21527,0,0),
(23283,2,-5169.544,650.3057,111.4463,0,0,0,0,0,0,0,0,0,0,0,0,0),
(23283,3,-5181.662,667.6545,111.4463,0,0,0,0,0,0,0,0,0,0,0,0,0),
(23283,4,-5195.687,680.8401,111.4463,0,0,0,0,0,0,0,0,0,0,0,0,0),
(23283,5,-5225.382,701.7169,111.4463,0,0,0,0,0,0,0,0,0,0,0,0,0),
(23283,6,-5258.488,726.2752,111.4463,0,0,0,0,0,0,0,0,0,0,0,0,0),
(23283,7,-5281.199,739.957,111.4463,0,0,0,0,0,0,0,0,0,0,0,0,0),
(23283,8,-5281.199,739.957,111.4463,1000,2328303,0,0,0,0,0,0,0,0,0,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2328301,2328302,2328303);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2328301,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2328301,0,23,21401,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(2328301,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2328302,2,23,20577,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(2328302,2,10,23284,0,0,0,0,0,0,0,0,-5174.463,653.561,74.50871,5.61422,'summon Lady Sinestra - humanoid form'),
(2328302,3,15,5,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2328303,0,23,20577,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(2328303,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
(2328303,1,15,5,0,0,0,0,0,0,0,0,0,0,0,0,'');
 -- Lady Sinestra - event (creature guid part)
INSERT INTO creature (guid,id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140704,23283,530,1,1,0,0,-5238.41,776.695,181.833,5.21307,600,0,0,151760,0,0,2);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(140704,1,-5238.409,776.6948,181.833,0,2328301,0,0,0,0,0,0,0,0,5.21307,0,0),
(140704,2,-5238.002,775.7813,181.833,0,0,0,0,0,0,0,0,0,0,0,0,0),
(140704,3,-5245.779,722.9154,173.0642,0,0,0,0,0,0,0,0,0,0,0,0,0),
(140704,4,-5220.587,696.059,139.8698,0,0,0,0,0,0,0,0,0,0,0,0,0),
(140704,5,-5198.417,674.9192,95.42538,0,0,0,0,0,0,0,0,0,0,0,0,0),
(140704,6,-5182.404,660.5963,79.78647,3000,2328302,0,0,0,0,0,0,0,0,0,0,0);
-- Lady Sinestra - humanoid form
UPDATE creature_template SET MovementType = 2 WHERE entry = 23284; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 23284;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,wpguid,orientation,model1,model2) VALUES
(23284,1,-5174.463,653.561,74.50871,2000,2328401,0,0,0,0,0,0,0,0,5.61422,0,0),
(23284,2,-5165.44,646.0718,76.92961,15000,2328402,0,0,0,0,0,0,0,0,5.5983,0,0),
(23284,3,-5151.85,630.924,81.2474,0,0,0,0,0,0,0,0,0,0,5.33569,0,0),
(23284,4,-5124.81,602.463,84.488,0,0,0,0,0,0,0,0,0,0,4.89014,0,0),
(23284,5,-5122.96,595.403,84.8122,0,0,0,0,0,0,0,0,0,0,5.64961,0,0),
(23284,6,-5121.1,593.849,84.7659,0,0,0,0,0,0,0,0,0,0,6.16012,0,0),
(23284,7,-5100.86,592.517,85.869,0,0,0,0,0,0,0,0,0,0,5.62761,0,0),
(23284,8,-5090.69,585.07,86.909,76000,2328403,0,0,0,0,0,0,0,0,5.49253,0,0),
(23284,9,-5100,592.709,85.9701,0,0,0,0,0,0,0,0,0,0,2.45623,0,0),
(23284,10,-5114.07,606.045,85.083,0,0,0,0,0,0,0,0,0,0,2.74212,0,0),
(23284,11,-5128.75,606.723,84.0949,0,0,0,0,0,0,0,0,0,0,2.3557,0,0),
(23284,12,-5139.37,616.387,82.8233,0,0,0,0,0,0,0,0,0,0,2.23962,0,0),
(23284,13,-5147.5,627.142,82.0156,0,0,0,0,0,0,0,0,0,0,2.21527,0,0),
(23284,14,-5157.33,639.52,79.1886,1000,2328404,0,0,0,0,0,0,0,0,2.21527,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2328401,2328402,2328403,2328404);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2328401,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2328401,4,31,23146,70,0,0,0,0,0,0,0,0,0,0,0,''), -- let check if creature is alive
(2328401,1,3,0,700,23146,52110,7 | 0x10,0,0,0,0,-5152.22,637.5932,80.5629,2.504820,'force buddy to move'),
(2328401,1,3,0,700,23146,52108,7 | 0x10,0,0,0,0,-5161.051,630.9047,79.48904,2.007457,'force buddy to move'),
(2328401,2,3,0,700,23146,52110,7 | 0x10,0,0,0,0,-5155.424,635.3028,80.25078,2,'force buddy to move'),
(2328401,2,3,0,700,23146,52108,7 | 0x10,0,0,0,0,-5152.491,640.6303,80.31548,2,'force buddy to move'),
(2328401,4,3,0,700,23146,52110,7 | 0x10,0,0,0,0,0,0,0,2.504820,'force buddy to move'),
(2328401,4,3,0,700,23146,52108,7 | 0x10,0,0,0,0,0,0,0,2.007457,'force buddy to move'),
(2328402,0,31,23146,30,0,0,0,0,0,0,0,0,0,0,0,''), -- let check if creature is alive
(2328402,1,0,0,0,0,0,0,2000005698,0,0,0,0,0,0,0,''),
(2328402,3,1,396,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2328402,5,3,0,700,23146,52110,7 | 0x10,0,0,0,0,-5146.516113,639.383606,81.791901,2,'force buddy to move'),
(2328402,5,3,0,700,23146,52108,7 | 0x10,0,0,0,0,-5162.109863,629.679016,79.580055,2,'force buddy to move'),
(2328402,8,3,0,700,23146,52110,7 | 0x10,0,0,0,0,0,0,0,2.504820,'force buddy to move'),
(2328402,8,3,0,700,23146,52108,7 | 0x10,0,0,0,0,0,0,0,2.007457,'force buddy to move'),
(2328402,9,0,0,0,0,0,0,2000005699,0,0,0,0,0,0,0,''),
(2328402,13,0,0,0,0,0,0,2000005700,0,0,0,0,0,0,0,''),
(2328403,0,31,23139,10,0,0,0,-75000,0,0,0,0,0,0,0,''), -- let check if creature is alive 
(2328403,1,29,3,2,23139,20,7,0,0,0,0,0,0,0,0,'23139 - npc_flag removed'),
(2328403,4,0,0,0,0,0,0,2000005701,0,0,0,0,0,0,0,''),
(2328403,8,0,0,0,0,0,0,2000005702,0,0,0,0,0,0,0,''),
(2328403,12,0,0,0,23139,20,7,2000005703,0,0,0,0,0,0,0,'force buddy to: say text'),
(2328403,16,1,1,0,23139,20,7,0,0,0,0,0,0,0,0,'force buddy to: emote'),
(2328403,20,0,0,0,0,0,0,2000005704,0,0,0,0,0,0,0,''),
(2328403,28,0,0,0,23139,20,7,2000005705,0,0,0,0,0,0,0,'force buddy to: say text'),
(2328403,30,1,6,0,23139,20,7,0,0,0,0,0,0,0,0,'force buddy to: emote'),
(2328403,34,0,0,0,0,0,0,2000005706,0,0,0,0,0,0,0,''),
(2328403,37,0,0,0,0,0,0,2000005707,0,0,0,0,0,0,0,''),
(2328403,39,1,274,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2328403,43,0,0,0,0,0,0,2000005708,0,0,0,0,0,0,0,''),
(2328403,46,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2328403,51,0,0,0,23139,20,7,2000005709,0,0,0,0,0,0,0,'force buddy to: say text'),
(2328403,54,0,0,0,23139,20,7,2000005710,0,0,0,0,0,0,0,'force buddy to: say text'),
(2328403,58,1,2,0,23139,20,7,0,0,0,0,0,0,0,0,'force buddy to: emote'),
(2328403,62,0,0,0,0,0,0,2000005711,0,0,0,0,0,0,0,''),
(2328403,65,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2328403,69,0,0,0,0,0,0,2000005712,0,0,0,0,0,0,0,''),
(2328403,71,29,3,1,23139,20,7,0,0,0,0,0,0,0,0,'23139 - npc_flag added'),
(2328403,74,1,2,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2328404,0,10,23283,0,0,0,0,0,0,0,0,-5157.33,639.52,85.1946,2.21527,'summon Lady Sinestra - dragon form'),
(2328404,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
(2328404,1,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000005698 AND 2000005712;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005698,'Step aside lest I add you as another adornment to my armor. Your leader and I have matters to attend...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,397,NULL),
(2000005699,'%s smiles.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005700,'I thought you would see it my way...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,153,NULL),
(2000005701,'Overlord Mor\'ghor, I presume... A pleasure to finally make your acquaintance.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,2,NULL),
(2000005702,'I am Lady Sinestra.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005703,'I will not drag this out any further than it needs, Lady Sinestra. You have bent my ear, now tell me what it is that you want from Dragonmaw.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005704,'You have no doubt heard about Nefarian\'s failures on Azeroth... While he has fallen, the experiments continue. My master... He continues the work that his progeny began.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005705,'The... The master? He lives?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,5,NULL),
(2000005706,'%s nods.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,273,NULL),
(2000005707,'You were once a chief lieutenant, Mor\'ghor. Your work in Grim Batol is not easily forgotten.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005708,'Now... We need the eggs that you recover. The Netherwing eggs. They are, after all, a product of the master. We will pay whatever price that you ask.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005709,'%s stammers.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005710,'Ye... Yes, yes... Of course. We need only the crystals and ore from this place. There is... We will need mounts.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005711,'The master will be most pleased with this news. The Black Dragonflight will provide you all that you ask. You will be allowed to ride upon the backs of our drakes as needed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005712,'I thank you for your graciousness, Mor\'ghor. I must now take my leave.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL);
-- Nethermine Flayer
UPDATE creature SET position_x = -5133.281250, position_y = 143.919907, position_z = -12.059948, orientation = 3.1602, spawndist = 5, movementType = 1 WHERE guid = 48229;
UPDATE creature SET position_x = -5080.07, position_y = 331.384, position_z = 5.33698, orientation = 5.38985, spawndist = 5, movementType = 1 WHERE guid = 48234;
UPDATE creature SET position_x = -5054.73, position_y = 289.862, position_z = -8.25169, orientation = 0.673524, spawndist = 5, movementType = 1 WHERE guid = 48230;
UPDATE creature SET position_x = -5066.69, position_y = 281.725, position_z = -9.63928, orientation = 3.95257, spawndist = 5, movementType = 1 WHERE guid = 48233;
UPDATE creature SET position_x = -5038.34, position_y = 318.713, position_z = -3.53934, orientation = 4.12143, spawndist = 5, movementType = 1 WHERE guid = 48232;
UPDATE creature SET position_x = -5037.87, position_y = 351.615, position_z = 2.6555, orientation = 4.67906, spawndist = 5, movementType = 1 WHERE guid = 48231;
UPDATE creature SET position_x = -5064.150391, position_y = 155.636948, position_z = -11.828770, orientation = 5.346395, spawndist = 5, movementType = 1 WHERE guid = 48237;
UPDATE creature SET position_x = -5117.404297, position_y = 128.745499, position_z = -13.194, orientation = 1.5811, spawndist = 5, movementType = 1 WHERE guid = 48243;
UPDATE creature SET spawndist = 5, MovementType = 1 WHERE guid = 48242;
-- Murkblood Overseer
UPDATE creature SET position_x = -4979.738770, position_y = 161.614395, position_z = -15.508134, orientation = 2.670354 WHERE guid = 43919;
-- Nethermine Ravager
UPDATE creature SET position_x = -5106.44, position_y = 155.733, position_z = -10.613, orientation = 1.01959, spawndist = 5, movementType = 1 WHERE guid = 48253;
UPDATE creature SET position_x = -5093.55, position_y = 179.92, position_z = -8.47583, orientation = 2.5786, spawndist = 5, movementType = 1 WHERE guid = 48246;
UPDATE creature SET position_x = -5136.94, position_y = 147.682, position_z = -11.7786, orientation = 3.12053, spawndist = 5, movementType = 1 WHERE guid = 48245;
-- Mine Car
DELETE FROM creature_template_addon WHERE entry = 23289;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(23289,0,0,0,0,0,0,40684);
-- Crazed Murkblood Miner - correct spawn point and movement
UPDATE creature SET spawndist = 10, MovementType = 1, spawntimesecs = 300, position_x = -5248.768555, position_y = 221.875381, position_z = -13.072626, orientation = 2.955024 WHERE guid = 52019;
UPDATE creature SET spawndist = 10, MovementType = 1, spawntimesecs = 300, position_x = -5247.79, position_y = 211.694, position_z = -13.8962, orientation = 2.23737 WHERE guid = 52023;
UPDATE creature SET spawndist = 10, MovementType = 1, spawntimesecs = 300, position_x = -5222.98, position_y = 205.444, position_z = -12.7066, orientation = 5.3122 WHERE guid = 52022;
UPDATE creature SET spawndist = 10, MovementType = 1, spawntimesecs = 300, position_x = -5190.77, position_y = 155.717, position_z = -12.1798, orientation = 5.60202 WHERE guid = 48257;
UPDATE creature SET spawndist = 10, MovementType = 1, spawntimesecs = 300, position_x = -5174.98, position_y = 135.391, position_z = -12.2516, orientation = 1.54151 WHERE guid = 52024;
UPDATE creature_template SET EquipmentTemplateId = 53 WHERE entry = 23324;
-- Murkblood Miner
UPDATE creature_template SET EquipmentTemplateId = 53 WHERE entry = 23287;
-- Tornaku - correct spawn point 
UPDATE creature SET position_x = -5133.719, position_y = 227.1979, position_z = -26.26821, orientation = 2.059489 WHERE guid = 40740;
UPDATE creature_template SET InhabitType = 5 WHERE entry = 23164;
-- Ronag the Slave Driver - update
DELETE FROM creature_template_addon WHERE entry = 23166;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(23166,0,8,0,0,0,0,NULL);
-- spell.40214 schould be active in Netherwing Mines and in Skyway.
DELETE FROM spell_area WHERE spell = 40214 AND area = 3965;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES 
(40214,3965,11013,1,0,0,0,0,2,1); -- 3965 Netherwing Mines 
DELETE FROM spell_area WHERE spell = 40214 AND area = 3967;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES 
(40214,3967,11013,1,0,0,0,0,2,1); -- 3967 Dragonmaw Skyway  
-- Dragonmaw Foreman - 1
UPDATE creature SET position_x = -5134.009766, position_y = 702.179016, position_z = 41.687000, orientation = 1.773743 WHERE guid = 40727;
-- Cleric of Karabor 
-- correct auras ( should be visible only with (Spectrecles)
DELETE FROM creature_template_addon WHERE entry = 21815;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(21815,0,0,0,0,0,0,'37497 37509');
DELETE FROM creature_addon WHERE guid BETWEEN 76347 AND 76376; -- invidual aruras are not needed 
UPDATE creature SET Spawndist = 5, MovementType = 1 WHERE id = 21815; -- the all do random movement
UPDATE creature SET position_x = -3804.760, position_y = 685.848, position_z = 5.1086 WHERE guid = 76363;
UPDATE creature SET position_x = -3759.218, position_y = 683.203, position_z = 7.2961 WHERE guid = 76364;
UPDATE creature SET position_x = -3836.664, position_y = 667.391, position_z = 2.8676 WHERE guid = 76368;
UPDATE creature SET position_x = -3762.867, position_y = 666.487, position_z = 6.6777 WHERE guid = 76373;
-- INFERNAL INVADERS - Shadowmoon Valley - FINALL UPDATE 
-- Invis Infernal Caster 
UPDATE creature_template SET MovementType = 0 WHERE entry = 21417;
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE id = 21417; -- for all of them
-- Infernal Attacker
UPDATE creature_template SET factionAlliance = 90, factionHorde = 90, MovementType = 1, unitFlags = 0x2020100 WHERE entry = 21419; -- correct from sniff (checked his spawn -- lot of sniffs shows while he is in combat) 
DELETE FROM dbscripts_on_creature_death WHERE id = 21419; -- creature must come back to his default model before spawn.
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21419,2,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(21419,10,23,20577,0,0,0,0x08,0,0,0,0,0,0,0,0,'temp model removed!');
-- spell -- must be casted!!
DELETE FROM dbscripts_on_spell WHERE id = 37277; 
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(37277,0,31,21419,30,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(37277,1,22,90,0x01 | 0x10 | 0x40 | 0x80,21419,30,0,0,0,0,0,0,0,0,0,'temp faction'),
(37277,2,23,17312,0,21419,30,0x08,0,0,0,0,0,0,0,0,'temp model'),
(37277,2,20,1,5,21419,30,2,0,0,0,0,0,0,0,0,'movement chenged to 1:random');
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2141901 AND 2141904; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- event Horde ver. 
(2141901,1,31,21417,30,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(2141901,3,15,37277,0,21417,30,3 | 0x08,0,0,0,0,0,0,0,0,'cast 37277 b->s'),
(2141902,4,31,21417,30,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(2141902,6,15,37277,0,21417,30,3 | 0x08,0,0,0,0,0,0,0,0,'cast 37277 b->s'),
-- event Aliance ver.
(2141903,1,31,21417,30,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(2141903,3,15,37277,0,21417,30,3 | 0x08,0,0,0,0,0,0,0,0,'cast 37277 b->s'),
(2141904,4,31,21417,30,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(2141904,6,15,37277,0,21417,30,3 | 0x08,0,0,0,0,0,0,0,0,'cast 37277 b->s');
-- Defenders
UPDATE creature SET MovementType = 1, spawndist = 1 WHERE id = 21749; -- for all of them
UPDATE creature SET MovementType = 1, spawndist = 1 WHERE id = 21736; -- for all of them

-- Legion Hold - infernal launch - update 
-- WARLOCKs - part
UPDATE creature_movement SET waittime = 35000 WHERE id = 74601 AND point = 4; 
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2130201, 2130202, 2130203); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2130201,0,10,21316,53000,0,0,0,0,0,0,0,-3441.13,2974.6,171.87,6.24828,'summon infernal'),
(2130201,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2130202,0,31,21316,20,0,0,0,0,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(2130202,1,15,36632,0,21316,5,1,0,0,0,0,0,0,0,0,''),
(2130202,5,14,16245,0,21316,5,0,0,0,0,0,0,0,0,0,''),
(2130202,6,20,2,0,21316,5,7,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(2130203,11,31,21316,20,0,0,0,0,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(2130203,12,15,33346,0,21316,10,1 | 0x08,0,0,0,0,0,0,0,0,''),
(2130203,20,15,36656,0,21316,10,1 | 0x08,0,0,0,0,0,0,0,0,''),
(2130203,25,31,21348,20,0,0,0,0,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(2130203,26,3,0,2300,21348,20,7,0,0,0,0,-3329.58,2934.13,300,0,'');
-- Deathforged Infernal - part
UPDATE creature SET spawntimesecs = 45 WHERE id = 21316; -- for all of them
UPDATE creature_movement_template SET waittime = 40000 WHERE entry = 21316 AND point = 2;
DELETE FROM dbscripts_on_creature_movement WHERE id = 2131601; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2131601,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Deathforged Infernal active'),
(2131601,3,31,20683,20,0,0,0,0,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(2131601,6,22,114,0x01 | 0x08,0,0,0,0,0,0,0,0,0,0,0,'temp faction'),
(2131601,8,15,33346,0,20683,10,0x08,0,0,0,0,0,0,0,0,'force buddy to cast 33346'),
(2131601,17,15,36656,0,20683,10,0x08,0,0,0,0,0,0,0,0,'force buddy to cast 36656'),
(2131601,19,10,21348,10000,0,0,0,0,0,0,0,-3411.01,2979.66,170.004,0,'summon invis'),
(2131601,20,15,36658,0,21348,7 | 0x08,0,0,0,0,0,0,0,0,0,'cast 36658 target-self'),
(2131601,21,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'despawn');

-- ---------------
-- New Buddy system
-- ---------------
DELETE FROM dbscripts_on_creature_movement WHERE id = 2361601;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2361601,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON');
DELETE FROM dbscripts_on_quest_end WHERE id = 10349;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10349,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'19294 - npc_flag removed'),
(10349,1,0,0,0,0,0,0,2000000182,0,0,0,0,0,0,0,''),
(10349,2,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'19294 - movement chenged to 2:waypoint'),
(10349,20,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'19294 - npc_flag added');
-- Gruk
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1485001,1485002,1485003);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1485001,3,0,0,0,0,0,0,2000005314,0,0,0,0,0,0,0,''),
(1485001,8,0,0,0,14859,5,4,2000005315,0,0,0,0,0,0,0,''),
(1485001,12,0,0,0,0,0,0,2000005316,0,0,0,0,0,0,0,''),
(1485002,3,0,0,0,0,0,0,2000005317,0,0,0,0,0,0,0,''),
(1485002,7,0,0,0,14859,5,4,2000005318,0,0,0,0,0,0,0,''),
(1485002,12,0,0,0,0,0,0,2000005319,0,0,0,0,0,0,0,''),
(1485003,0,20,1,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(1485003,235,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint');
-- Peon
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1490101,1490102,1490103);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1490101,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1490102,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN OFF'),
(1490103,0,20,1,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 1:random');
-- Darrowshire Spirit
DELETE FROM dbscripts_on_gossip WHERE id = 3141;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3141,0,8,11064,1,0,0,0,0,0,0,0,0,0,0,0,''),
(3141,2,29,1,2,0,0,0,0,0,0,0,0,0,0,0,'');
-- Battle-Mage Dathric <Kirin Tor>
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1954301,1954302);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1954301,0,22,35,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for quest'),
(1954302,0,22,1810,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for his guid');
-- Conjurer Luminrath <Kirin Tor>
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1954401,1954402);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1954401,0,22,35,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for quest'),
(1954402,0,22,1811,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for his guid');
-- Cohlien Frostweaver <Kirin Tor>
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1954501,1954502);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1954501,0,22,35,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for quest'),
(1954502,0,22,1809,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for his guid');
-- Abjurist Belmara <Kirin Tor>
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1954601,1954602);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1954601,0,22,35,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for quest'),
(1954602,0,22,1808,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for his guid');
-- William and Donna
DELETE FROM dbscripts_on_creature_movement WHERE id IN (253301,253302,253303,253304,253305,253306);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(253301,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(253301,1,0,0,0,0,0,0,2000005059,0,0,0,0,0,0,0,''),
(253301,2,31,2532,15,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(253301,3,0,0,0,2532,15,4,2000005063,0,0,0,0,0,0,0,''),
(253302,1,0,0,0,0,0,0,2000005057,0,0,0,0,0,0,0,''),
(253302,2,31,2532,15,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(253302,3,0,0,0,2532,15,4,2000005062,0,0,0,0,0,0,0,''),
(253303,1,0,0,0,0,0,0,2000005058,0,0,0,0,0,0,0,''),
(253303,2,31,2532,15,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(253303,3,0,0,0,2532,15,4,2000005062,0,0,0,0,0,0,0,''),
(253304,1,0,0,0,0,0,0,2000005059,0,0,0,0,0,0,0,''),
(253304,2,31,2532,15,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(253304,3,0,0,0,2532,15,4,2000005063,0,0,0,0,0,0,0,''),
(253305,1,0,0,0,0,0,0,2000005060,0,0,0,0,0,0,0,''),
(253305,2,31,2532,15,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(253305,3,0,0,0,2532,15,4,2000005062,0,0,0,0,0,0,0,''),
(253306,1,0,0,0,0,0,0,2000005061,0,0,0,0,0,0,0,''),
(253306,2,31,2532,15,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(253306,3,0,0,0,2532,15,4,2000005062,0,0,0,0,0,0,0,'');
-- Defias Thug
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3801,3802,3803);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3801,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'Defias Thug - RUN ON'),
(3802,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'Defias Thug - RUN OFF'),
(3803,0,20,1,5,0,0,0,0,0,0,0,0,0,0,0,'Defias Thug - movement chenged to 1:random'),
(3803,20,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'Defias Thug - movement chenged to 2:waypoint');
-- Mordant Grimsby - Event
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2384301,2384302,2384303);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2384301,0,29,2,2,0,0,0,0,0,0,0,0,0,0,0,'23843 - npc_flag removed for event'),
(2384302,3,1,381,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2384302,4,9,90623,45,0,0,0,0,0,0,0,-2954.89,-3883.94,32.9969,2.60053,''),
(2384302,6,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2384302,8,0,0,0,0,0,0,2000005328,0,0,0,0,0,0,0,''),
(2384302,14,0,0,0,0,0,0,2000005329,0,0,0,0,0,0,0,''),
(2384302,19,0,0,0,0,0,0,2000005330,0,0,0,0,0,0,0,''),
(2384302,25,1,6,0,4792,10,0,0,0,0,0,0,0,0,0,''),
(2384302,25,0,0,0,4792,10,4,2000005331,0,0,0,0,0,0,0,''),
(2384302,30,0,0,0,0,0,0,2000005332,0,0,0,0,0,0,0,''),
(2384302,36,0,0,0,4792,10,4,2000005333,0,0,0,0,0,0,0,''),
(2384302,36,1,1,0,4792,10,0,0,0,0,0,0,0,0,0,''),
(2384302,41,0,0,0,0,0,0,2000005334,0,0,0,0,0,0,0,''),
(2384302,41,1,5,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2384302,49,1,381,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2384302,53,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2384303,0,29,2,1,0,0,0,0,0,0,0,0,0,0,0,'23843 - npc_flag added after event');
UPDATE db_script_string SET emote = 1 WHERE entry = 2000005328;
UPDATE db_script_string SET emote = 25 WHERE entry = 2000005329;
UPDATE db_script_string SET emote = 1 WHERE entry = 2000005332;
UPDATE db_script_string SET emote = 5 WHERE entry = 2000005334;
-- Wretched Ghoul
DELETE FROM dbscripts_on_creature_movement WHERE id IN (150201,150202);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(150201,1,26,1,0,1736,20,0,0,0,0,0,0,0,0,0,'W.Ghuol - Attack on Guards'),
(150201,0,22,21,1,0,0,0,0,0,0,0,0,0,0,0,'W.Ghuol - Faction change'),
(150202,0,20,1,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(150202,45,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint');
-- Deserter Agitator
DELETE FROM dbscripts_on_gossip WHERE id = 8762;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8762,0,0,0,0,0,0,0,2000000314,2000000315,2000000316,0,0,0,0,0,'Say'),
(8762,0,26,0,0,0,0,0,0,0,0,0,0,0,0,0,'start attack'),
(8762,0,29,1,2,0,0,0,0,0,0,0,0,0,0,0,'change NPC_flag'),
(8762,0,22,1883,1,0,0,0,0,0,0,0,0,0,0,0,'change faction');
-- Theramore Guard
DELETE FROM dbscripts_on_gossip WHERE id = 8851;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8851,0,8,4979,0,0,0,0,0,0,0,0,0,0,0,0,''),
(8851,0,29,1,2,0,0,0,0,0,0,0,0,0,0,0,'change NPC_flag'),
(8851,0,0,0,0,0,0,0,2000005517,0,0,0,0,0,0,0,'Say text'),
(8851,0,15,42734,0,0,0,6,0,0,0,0,0,0,0,0,''),
(8851,1,0,2,0,0,0,0,2000005518,0,0,0,0,0,0,0,'Say emote'),
(8851,3,0,0,0,0,0,0,2000005511,2000005512,2000005519,2000005514,0,0,0,0,'Say text'),
(8851,5,0,0,0,0,0,0,2000005515,2000005516,2000005513,2000005520,0,0,0,0,'Say text'),
(8851,120,29,1,0,0,0,0,0,0,0,0,0,0,0,0,'change NPC_flag');
-- Distracting Jarven(q.308)
DELETE FROM dbscripts_on_quest_end WHERE id = 308;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(308,0,0,0,0,0,0,0,2000000077,0,0,0,0,0,0,0,''),
(308,0,29,2,2,0,0,0,0,0,0,0,0,0,0,0,'1373 - npc_flag removed'),
(308,1,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'1373 - movement chenged to 2:waypoint'),
(308,12,9,35875,55,0,0,0,0,0,0,0,-5607.24,-547.934,392.985,0.471239,''),
(308,23,0,0,0,0,0,0,2000000056,0,0,0,0,0,0,0,'');
-- Collection of Goods(q.7642)
DELETE FROM dbscripts_on_quest_end WHERE id = 7642;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(7642,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'1416 - npc_flag removed'),
(7642,2,0,0,0,0,0,0,2000000063,0,0,0,0,0,0,0,''),
(7642,4,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'1416 - movement chenged to 2:waypoint'),
(7642,105,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'1416 - npc_flag added');
-- Teron Gorefiend, I am...(q.10639) -H  (q.10645) -A  -- UPDATES
DELETE FROM dbscripts_on_quest_start WHERE id = 10639;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10639,0,0,0,0,0,0,0,2000000031,0,0,0,0,0,0,0,''),
(10639,3,23,21867,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10639,5,10,21877,300000,0,0,0,0,0,0,0,-4536.58,1028.76,8.8266,3.72963,'summon - Karsius the Ancient Watcher'),
(10639,8,0,0,0,21872,40,0,2000005473,0,0,0,0,0,0,0,''),
(10639,9,22,90,0x01,21877,50,7,0,0,0,0,0,0,0,0,'temp faction');
DELETE FROM db_script_string WHERE entry = 2000005473; 
INSERT INTO db_script_string (entry, content_default, type) VALUES
(2000005473,'Waste no time, fool! Use our power to kill those what stand in our way! Destroy Krasius before you are subdued!', 4);
-- Karsius the Ancient Watcher
DELETE FROM creature_linking_template WHERE entry = 21876; -- link between Karsius the Ancient Watcher and Chain of Shadows 
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(21876,530,21877,8208,100); -- 16 + 8192
DELETE FROM dbscripts_on_creature_death WHERE id = 21877;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21877,1,14,37748,0,0,0,0x02,0,0,0,0,0,0,0,0,'');
-- Ancient Shadowmoon Spirit
DELETE FROM dbscripts_on_creature_death WHERE id = 21797;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21797,0,23,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(21797,3,18,0,0,21877,50,7,0,0,0,0,0,0,0,0,'Karsius the Ancient Watcher despawn'),
(21797,3,14,37748,0,0,0,0x02,0,0,0,0,0,0,0,0,'');
-- Teron Gorefiend - update
UPDATE creature_template SET MovementType = 2, equipmentTemplateid = 321, SpeedRun = 1.5 WHERE entry = 21867;
UPDATE creature_template_addon SET mount = 10720 WHERE entry = 21867;  -- need his mount 
DELETE FROM creature_movement_template WHERE entry = 21867;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(21867,1,-4542.21,1023.72,9.66909,17000,2186701,0,0,0,0,0,0,0,0,0.864165,0,0),
(21867,2,-4527.459473,1015.657593,10.890298,0,0,0,0,0,0,0,0,0,0,5.282815,0,0),
(21867,3,-4520.572266,1000.627075,12.485450,0,0,0,0,0,0,0,0,0,0,4.782524,0,0),
(21867,4,-4521.288086,982.703003,11.543771,0,0,0,0,0,0,0,0,0,0,4.804492,0,0),
(21867,5,-4519.058594,964.810120,12.235850,0,0,0,0,0,0,0,0,0,0,4.878321,0,0),
(21867,6,-4512.545410,944.781250,4.226434,0,0,0,0,0,0,0,0,0,0,4.973356,0,0),
(21867,7,-4505.491211,931.839050,-0.856650,0,0,0,0,0,0,0,0,0,0,5.517634,0,0),
(21867,8,-4493.015625,922.165771,5.736859,0,0,0,0,0,0,0,0,0,0,5.511348,0,0),
(21867,9,-4463.642090,907.782104,7.652451,0,0,0,0,0,0,0,0,0,0,5.856919,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2186701; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2186701,0,23,21797,0,21797,100,7,0,0,0,0,0,0,0,0,''),
(2186701,1,18,0,0,21797,100,7,0,0,0,0,0,0,0,0,''),
(2186701,7,0,0,0,0,0,0,2000005471,0,0,0,0,0,0,0,''),
(2186701,8,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2186701,10,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2186701,12,0,0,0,0,0,0,2000005472,0,0,0,0,0,0,0,''),
(2186701,13,1,22,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry IN (2000005471,2000005472);
INSERT INTO db_script_string (entry, content_default, type) VALUES
(2000005471,'We will meet again... Someday.', 0),
(2000005472,'Death incarnate has been released upon the world once more! Teron Gorefiend has returned...', 6);
-- Lord Illidan Stormrage(q.11108) -H -A
DELETE FROM dbscripts_on_quest_start WHERE id = 11108;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11108,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(11108,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'23139 - npc_flag removed'),
(11108,1,0,0,0,0,0,0,2000000034,0,0,0,0,0,0,0,''),
(11108,5,3,0,0,0,0,0,0,0,0,0,-5108.58,598.509,85.4239,2.47553,''),
(11108,18,0,1,0,0,0,0,2000000035,0,0,0,0,0,0,0,''),
(11108,25,0,0,0,0,0,0,2000000036,0,0,0,0,0,0,0,''),
(11108,28,10,23467,76000,0,0,0,0,0,0,0,-5113.25,606.427,85.0531,5.2527,'spawn Lord Illidan'),
(11108,32,0,1,0,0,0,0,2000000037,0,0,0,0,0,0,0,''),
(11108,37,28,8,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11108,40,0,0,0,0,0,0,2000000038,0,0,0,0,0,0,0,''),
(11108,44,1,5,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11108,48,0,0,0,23467,20,4,2000005348,0,0,0,0,0,0,0,'force 23467 to: say text'),
(11108,52,0,0,0,0,0,0,2000000039,0,0,0,0,0,0,0,''),
(11108,55,0,0,0,23467,20,4,2000005349,0,0,0,0,0,0,0,'force 23467 to: say text'),
(11108,60,0,0,0,23467,20,4,2000005350,0,0,0,0,0,0,0,'force 23467 to: say text'),
(11108,65,0,0,0,23467,20,4,2000005351,0,0,0,0,0,0,0,'force 23467 to: say text'),
(11108,70,0,0,0,23467,20,4,2000005352,0,0,0,0,0,0,0,'force 23467 to: say text'),
(11108,71,15,41528,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11108,72,6,530,0,0,0,0,0,0,0,0,-5122.05,603.562,84.678,0.0421238,''),
(11108,73,14,42016,0,0,0,0x02,0,0,0,0,0,0,0,0,''),
(11108,80,0,0,0,23467,20,4,2000005353,0,0,0,0,0,0,0,'force 23467 to: say text'),
(11108,90,0,0,0,23467,20,4,2000005354,0,0,0,0,0,0,0,'force 23467 to: say text'),
(11108,101,28,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11108,103,0,0,0,0,0,0,2000000040,0,0,0,0,0,0,0,''),
(11108,103,1,254,0,23467,15,0,0,0,0,0,0,0,0,0,'force 23467 to: emote'),
(11108,109,0,0,0,0,0,0,2000000041,0,0,0,0,0,0,0,''),
(11108,119,7,11108,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11108,125,0,0,0,23141,30,0x00,2000005355,0,0,0,0,0,0,0,'force 23141 to: say text'),
(11108,126,14,41528,0,0,0,0x02,0,0,0,0,0,0,0,0,''),
(11108,126,14,41519,0,0,0,0x02,0,0,0,0,0,0,0,0,''),
(11108,128,15,6273,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11108,129,3,0,0,0,0,0,0,0,0,0,-5085,578.657,86.6483,2,''),
(11108,129,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'23139 - npc_flag added'),
(11108,129,15,41540,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11108,150,3,0,0,0,0,0,0,0,0,0,0,0,0,2.36871,''),
(11108,151,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
UPDATE db_script_string SET emote = 1 WHERE entry IN (2000000034,2000000036,2000000038,2000005348,2000005349,2000005350,2000005351,2000005352,2000005353,2000005354);
UPDATE db_script_string SET emote = 6 WHERE entry IN (2000000039);
UPDATE db_script_string SET emote = 22 WHERE entry IN (2000000035);
UPDATE db_script_string SET emote = 25 WHERE entry IN (2000000041);
UPDATE db_script_string SET emote = 66 WHERE entry IN (2000000037);
-- Gul'dan 
DELETE FROM dbscripts_on_creature_movement WHERE id = 1700803 AND delay IN (26,27); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1700803,26,14,35996,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- must stop prev. spell
(1700803,27,31,21052,30,0,0,0,0,0,0,0,0,0,0,0,''); -- check if creature is alive
-- Consortium Nether Runner
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1966701 AND 1966703;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(1966701,0,15,34427,0,0,0,4,0,0,0,0,0,0,0,0,'spawn effect'),
(1966702,0,31,18265,50,0,0,0,-13000,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(1966702,1,0,0,0,0,0,0,2000005362,2000005363,0,0,0,0,0,0,''),
(1966702,2,3,0,0,18265,15,0x04,0,0,0,0,-2087.02,8562.94,22.0969,0.66592,'force buddy to move'),
(1966702,7,0,0,0,18265,15,0x04,2000005364,2000005365,0,0,0,0,0,0,''),
(1966702,10,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1966702,12,0,0,0,0,0,0,2000005366,0,0,0,0,0,0,0,''),
(1966702,12,3,0,0,18265,50,0x04,0,0,0,0,0,0,0,2.51327,'force buddy to move'),
(1966703,1,15,34427,0,0,0,4,0,0,0,0,0,0,0,0,'despawn effect'),
(1966703,3,18,0,0,0,0,4,0,0,0,0,0,0,0,0,'despawn self');
-- Deathguard Phillip
UPDATE creature_movement_template SET waittime = 2000, script_id = 173901 WHERE entry = 1739 AND point = 7;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (173901,173902);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(173901,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'Phillip - RUN ON'),
(173902,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'Phillip - RUN OFF');
-- Deathguard Oliver
DELETE FROM dbscripts_on_creature_movement WHERE id = 173701;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(173701,0,20,1,5,0,0,0,0,0,0,0,0,0,0,0,'Oliver movement changed to 1:random'),
(173701,35,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'Oliver movement changed to 2:waypoint');
-- Tormented Spirit
DELETE FROM dbscripts_on_creature_movement WHERE id = 153301;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(153301,0,20,1,5,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(153301,175,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'movement changed to 2:waypoint');

-- ---------------
-- Creature_movement(template) prepared for unnused colums drop
-- ---------------
-- creature_movement_template: 100% completed 
-- Jarven Thunderbrew
DELETE FROM creature_movement_template WHERE entry = 1373;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(1373,1,-5601.64,-541.38,392.42,0,0,0,0,0,0,0,0,0,0,0.5,0,0),
(1373,2,-5597.94,-542.04,392.42,0,0,0,0,0,0,0,0,0,0,5.5,0,0),
(1373,3,-5597.95,-548.43,395.48,0,0,0,0,0,0,0,0,0,0,4.7,0,0),
(1373,4,-5605.31,-549.33,399.09,0,0,0,0,0,0,0,0,0,0,3.1,0,0),
(1373,5,-5607.55,-546.63,399.09,0,0,0,0,0,0,0,0,0,0,1.5,0,0),
(1373,6,-5597.52,-538.75,399.09,0,0,0,0,0,0,0,0,0,0,1.5,0,0),
(1373,7,-5597.62,-530.24,399.65,0,0,0,0,0,0,0,0,0,0,3,0,0),
(1373,8,-5603.67,-529.91,399.65,20000,0,0,0,0,0,0,0,0,0,4.2,0,0),
(1373,9,-5603.67,-529.91,399.65,0,0,0,0,0,0,0,0,0,0,4.2,0,0),
(1373,10,-5597.62,-530.24,399.65,0,0,0,0,0,0,0,0,0,0,3,0,0),
(1373,11,-5597.52,-538.75,399.09,0,0,0,0,0,0,0,0,0,0,1.5,0,0),
(1373,12,-5607.55,-546.63,399.09,0,0,0,0,0,0,0,0,0,0,1.5,0,0),
(1373,13,-5605.31,-549.33,399.09,0,0,0,0,0,0,0,0,0,0,3.1,0,0),
(1373,14,-5597.95,-548.43,395.48,0,0,0,0,0,0,0,0,0,0,4.7,0,0),
(1373,15,-5597.94,-542.04,392.42,0,0,0,0,0,0,0,0,0,0,5.5,0,0),
(1373,16,-5601.64,-541.38,392.42,1000,137301,0,0,0,0,0,0,0,0,0,0,0),
(1373,17,-5605.96,-544.451,392.43,0,0,0,0,0,0,0,0,0,0,0.5,0,0),
(1373,18,-5605.96,-544.451,392.43,2000,137302,0,0,0,0,0,0,0,0,0.977384,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (137301,137302); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(137301,0,0,0,0,0,0,0,2000000078,0,0,0,0,0,0,0,''),
(137302,0,0,0,0,0,0,0,2000000079,0,0,0,0,0,0,0,''),
(137302,1,29,2,1,0,0,0,0,0,0,0,0,0,0,0,'1373 - npc_flag added'),
(137302,2,20,1,0,0,0,0,0,0,0,0,0,0,0,0,'1373 - movement chenged to 0:idle');
-- Grimand Elmore
DELETE FROM creature_movement_template WHERE entry = 1416;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(1416,1,-8393.09,687.41,95.27,0,0,0,0,0,0,0,0,0,0,3.72,0,0),
(1416,2,-8400.51,681.85,95.96,0,0,0,0,0,0,0,0,0,0,5,0,0),
(1416,3,-8388.72,646.85,94.82,0,0,0,0,0,0,0,0,0,0,3.92,0,0),
(1416,4,-8422.25,618.12,95.46,10000,141601,0,0,0,0,0,0,0,0,3.2,0,0), 
(1416,5,-8421.99,617.93,95.45,9000,141602,0,0,0,0,0,0,0,0,5.34,0,0), 
(1416,6,-8388.72,646.85,94.82,0,0,0,0,0,0,0,0,0,0,1.98295,0,0),
(1416,7,-8400.51,681.85,95.96,0,0,0,0,0,0,0,0,0,0,0.798564,0,0),
(1416,8,-8393.09,687.41,95.27,0,0,0,0,0,0,0,0,0,0,6.03867,0,0),
(1416,9,-8387,685.202,95.356,0,0,0,0,0,0,0,0,0,0,2.47925,0,0),
(1416,10,-8387,685.202,95.356,2000,141603,0,0,0,0,0,0,0,0,2.47925,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (141601,141602,141603); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(141601,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(141601,9,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(141602,3,1,233,0,0,0,0,0,0,0,0,0,0,0,0,''),
(141602,8,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(141602,9,0,0,0,0,0,0,2000000064,0,0,0,0,0,0,0,''),
(141603,2,20,1,0,0,0,0,0,0,0,0,0,0,0,0,'1416 - movement chenged to 0:idle');
-- Nurse Lillian
DELETE FROM creature_movement_template WHERE entry = 5042;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(5042,1,-8759.62,812.343,97.635,0,0,0,0,0,0,0,0,0,0,3.86606,0,0),
(5042,2,-8761.61,810.579,97.635,0,0,0,0,0,0,0,0,0,0,2.0785,0,0),
(5042,3,-8762.09,811.25,97.635,15000,141601,0,0,0,0,0,0,0,0,2.08714,0,0),
(5042,4,-8765.12,809.343,97.635,0,0,0,0,0,0,0,0,0,0,2.33218,0,0),
(5042,5,-8768.82,813.976,97.635,0,0,0,0,0,0,0,0,0,0,0.817934,0,0),
(5042,6,-8765.6,816.682,97.635,0,0,0,0,0,0,0,0,0,0,5.0206,0,0),
(5042,7,-8765.49,816.11,97.635,15000,0,0,0,0,0,0,0,0,0,4.90279,0,0),
(5042,8,-8766.14,815.698,97.635,0,0,0,0,0,0,0,0,0,0,3.76789,0,0),
(5042,9,-8762.85,818.44,97.635,0,0,0,0,0,0,0,0,0,0,6.00235,0,0),
(5042,10,-8757.2,817.107,97.635,0,0,0,0,0,0,0,0,0,0,5.2413,0,0),
(5042,11,-8755.51,815.287,97.635,0,0,0,0,0,0,0,0,0,0,5.48793,0,0),
(5042,12,-8755.65,815.128,97.635,15000,0,0,0,0,0,0,0,0,0,4.32318,0,0),
(5042,13,-8755.62,815.616,97.635,0,0,0,0,0,0,0,0,0,0,2.83609,0,0),
(5042,14,-8766.1,820.151,97.635,0,0,0,0,0,0,0,0,0,0,3.84219,0,0),
(5042,15,-8766.37,820.027,97.635,15000,141601,0,0,0,0,0,0,0,0,3.58301,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 504201; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(141601,5,0,0,0,0,0,0,2000005085,2000005086,2000005087,0,0,0,0,0,'');
-- Bartleby <Drunk> -- not req. no more.
DELETE FROM creature_movement_template WHERE entry = 6090;
UPDATE creature_template SET MovementType = 0 WHERE entry = 6090;
-- Erk
DELETE FROM creature_movement_template WHERE entry = 14857;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(14857,1,-29.4619,-2615.94,97.1569,2000,1485701,0,0,0,0,0,0,0,0,2.81206,0,0),
(14857,2,-25.8713,-2613.07,97.2377,10000,1485702,0,0,0,0,0,0,0,0,0.434565,0,0),
(14857,3,-19.1492,-2619.64,97.2062,0,0,0,0,0,0,0,0,0,0,5.9402,0,0),
(14857,4,-11.7613,-2621.95,95.72,0,0,0,0,0,0,0,0,0,0,0.001017,0,0),
(14857,5,-9.08595,-2621.67,94.9584,0,0,0,0,0,0,0,0,0,0,0.104689,0,0),
(14857,6,-3.63306,-2621.64,92.1312,0,0,0,0,0,0,0,0,0,0,0.006514,0,0),
(14857,7,3.79072,-2621.66,89.8122,35000,1485703,0,0,0,0,0,0,0,0,0.018295,0,0),
(14857,8,-0.125211,-2621.11,91.288,0,0,0,0,0,0,0,0,0,0,4.4955,0,0),
(14857,9,-4.09707,-2636.68,91.9798,0,0,0,0,0,0,0,0,0,0,3.88053,0,0),
(14857,10,-9.7202,-2640.14,95.6607,0,0,0,0,0,0,0,0,0,0,3.69832,0,0),
(14857,11,-21.9055,-2647.23,95.8334,0,0,0,0,0,0,0,0,0,0,2.72835,0,0),
(14857,12,-29.9285,-2641.6,96.0804,0,0,0,0,0,0,0,0,0,0,2.42597,0,0),
(14857,13,-33.6012,-2638.69,96.4458,0,0,0,0,0,0,0,0,0,0,2.25083,0,0),
(14857,14,-33.7544,-2634.78,96.275,0,0,0,0,0,0,0,0,0,0,1.4403,0,0),
(14857,15,-31.7804,-2631.54,95.9905,0,0,0,0,0,0,0,0,0,0,0.610917,0,0),
(14857,16,-30.3169,-2631.18,95.9409,0,0,0,0,0,0,0,0,0,0,0.021083,0,0),
(14857,17,-29.1425,-2632.01,95.9483,11000,1485704,0,0,0,0,0,0,0,0,5.85468,0,0),
(14857,18,-32.0825,-2632.89,96.0727,0,0,0,0,0,0,0,0,0,0,3.654,0,0),
(14857,19,-32.9846,-2638.7,96.3846,0,0,0,0,0,0,0,0,0,0,4.78104,0,0),
(14857,20,-31.5213,-2644.06,96.1429,0,0,0,0,0,0,0,0,0,0,5.35438,0,0),
(14857,21,-24.4697,-2646.37,95.8326,0,0,0,0,0,0,0,0,0,0,6.02855,0,0),
(14857,22,-18.6414,-2646.82,95.8326,0,0,0,0,0,0,0,0,0,0,0.601453,0,0),
(14857,23,-9.77005,-2641.35,95.5894,0,0,0,0,0,0,0,0,0,0,0.554329,0,0),
(14857,24,-8.47826,-2640.57,95.2277,0,0,0,0,0,0,0,0,0,0,0.522913,0,0),
(14857,25,-3.89023,-2637.86,92.0007,0,0,0,0,0,0,0,0,0,0,0.467935,0,0),
(14857,26,4.77875,-2632.61,89.838,20000,1485705,0,0,0,0,0,0,0,0,0.48757,0,0),
(14857,27,4.56817,-2635.55,90.4474,0,0,0,0,0,0,0,0,0,0,5.1604,0,0),
(14857,28,10.7483,-2640.52,90.3865,0,0,0,0,0,0,0,0,0,0,5.61985,0,0),
(14857,29,34.7806,-2655.09,91.9127,0,0,0,0,0,0,0,0,0,0,5.74159,0,0),
(14857,30,53.317,-2671.72,91.6669,0,0,0,0,0,0,0,0,0,0,5.2193,0,0),
(14857,31,63.5888,-2689.05,92.9446,0,0,0,0,0,0,0,0,0,0,4.81483,0,0),
(14857,32,60.2265,-2698.29,92.0961,0,0,0,0,0,0,0,0,0,0,4.02158,0,0),
(14857,33,55.9701,-2699.55,91.9007,0,0,0,0,0,0,0,0,0,0,2.39266,0,0),
(14857,34,55.0459,-2698.41,91.9447,20000,1485706,0,0,0,0,0,0,0,0,2.02666,0,0),
(14857,35,45.8985,-2702.47,91.7002,0,0,0,0,0,0,0,0,0,0,3.10109,0,0),
(14857,36,31.0409,-2703.29,91.6676,0,0,0,0,0,0,0,0,0,0,2.65891,0,0),
(14857,37,23.5055,-2699.47,91.7346,0,0,0,0,0,0,0,0,0,0,2.2937,0,0),
(14857,38,10.4826,-2681.7,91.7507,0,0,0,0,0,0,0,0,0,0,2.18767,0,0),
(14857,49,-0.678281,-2668.66,91.9212,0,0,0,0,0,0,0,0,0,0,2.2937,0,0),
(14857,40,-8.81453,-2659.54,95.5593,0,0,0,0,0,0,0,0,0,0,2.31726,0,0),
(14857,41,-14.4874,-2643.52,95.8315,0,0,0,0,0,0,0,0,0,0,1.86173,0,0),
(14857,42,-17.0888,-2620.45,96.3303,0,0,0,0,0,0,0,0,0,0,2.72331,0,0),
(14857,43,-19.1079,-2619.6,97.1972,0,0,0,0,0,0,0,0,0,0,2.74138,0,0),
(14857,44,-29.4619,-2615.94,97.1569,0,0,0,0,0,0,0,0,0,0,2.81206,0,0),
(14857,45,-29.4619,-2615.94,97.1569,240000,1485707,0,0,0,0,0,0,0,0,2.81206,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1485701,1485702,1485703,1485704,1485705,1485706,1485707);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1485701,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1485702,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN OFF'),
(1485702,5,0,0,0,0,0,0,2000005307,0,0,0,0,0,0,0,''),
(1485703,3,0,0,0,0,0,0,2000005308,0,0,0,0,0,0,0,''),
(1485703,31,0,0,0,0,0,0,2000005309,0,0,0,0,0,0,0,''),
(1485704,10,0,0,0,0,0,0,2000005310,0,0,0,0,0,0,0,''),
(1485705,15,0,0,0,0,0,0,2000005311,0,0,0,0,0,0,0,''),
(1485705,18,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1485706,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN OFF'),
(1485706,3,0,0,0,0,0,0,2000005312,0,0,0,0,0,0,0,''),
(1485706,8,0,0,0,14893,5,4,2000005313,0,0,0,0,0,0,0,''),
(1485706,9,1,21,0,14893,5,0,0,0,0,0,0,0,0,0,''),
(1485706,14,1,7,0,3501,5,0,0,0,0,0,0,0,0,0,''),
(1485706,14,1,7,0,14893,5,0,0,0,0,0,0,0,0,0,''),
(1485706,21,0,0,0,0,0,0,2000005010,0,0,0,0,0,0,0,''),
(1485707,0,20,1,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(1485707,235,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint');
-- Okla
DELETE FROM creature_movement_template WHERE entry = 14873;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(14873,1,270.076,-3036.6,97.6192,0,0,0,0,0,0,0,0,0,0,3.69769,0,0),
(14873,2,262.171,-3043.45,96.5053,21000,1487301,0,0,0,0,0,0,0,0,4.01577,0,0),
(14873,3,251.328,-3055.55,96.1454,0,0,0,0,0,0,0,0,0,0,4.326,0,0),
(14873,4,246.888,-3070.92,95.2793,0,0,0,0,0,0,0,0,0,0,4.4713,0,0),
(14873,5,242.449,-3081.3,91.82,0,0,0,0,0,0,0,0,0,0,4.18071,0,0),
(14873,6,232.826,-3106.67,93.3165,0,0,0,0,0,0,0,0,0,0,4.37706,0,0),
(14873,7,226.41,-3120.76,93.3475,0,0,0,0,0,0,0,0,0,0,4.37392,0,0),
(14873,8,213.921,-3151.01,91.2851,5000,1487302,0,0,0,0,0,0,0,0,1.33448,0,0),
(14873,9,221.681,-3147.9,91.374,5000,0,0,0,0,0,0,0,0,0,0.340951,0,0),
(14873,10,214.549,-3134.64,91.9876,0,0,0,0,0,0,0,0,0,0,2.04134,0,0),
(14873,11,210.931,-3139.95,91.6514,0,0,0,0,0,0,0,0,0,0,1.95494,0,0),
(14873,12,214.059,-3139.64,91.7,0,0,0,0,0,0,0,0,0,0,0.097475,0,0),
(14873,13,213.426,-3131.78,92.1297,10000,1487305,0,0,0,0,0,0,0,0,1.66434,0,0),
(14873,14,220.194,-3140.72,91.7517,0,0,0,0,0,0,0,0,0,0,5.37928,0,0),
(14873,15,225.395,-3139.1,92.0847,0,0,0,0,0,0,0,0,0,0,0.325237,0,0),
(14873,16,220.857,-3140.83,91.7662,0,0,0,0,0,0,0,0,0,0,3.5061,0,0),
(14873,17,218.769,-3132.79,92.4983,5000,0,0,0,0,0,0,0,0,0,1.78215,0,0),
(14873,18,226.814,-3137.56,92.169,10000,1487306,0,0,0,0,0,0,0,0,5.7327,0,0),
(14873,19,225.496,-3132.89,92.7818,0,0,0,0,0,0,0,0,0,0,1.84498,0,0),
(14873,20,213.603,-3148.39,91.4489,0,0,0,0,0,0,0,0,0,0,4.02839,0,0),
(14873,21,219.055,-3151.2,91.2139,5000,0,0,0,0,0,0,0,0,0,5.82302,0,0),
(14873,22,220.469,-3141.93,91.6344,0,0,0,0,0,0,0,0,0,0,1.40909,0,0),
(14873,23,214.852,-3148.32,91.4558,0,0,0,0,0,0,0,0,0,0,3.67889,0,0),
(14873,24,218.373,-3144.99,91.5714,10000,1487307,0,0,0,0,0,0,0,0,2.13165,0,0),
(14873,25,224.091,-3149.02,91.2304,0,0,0,0,0,0,0,0,0,0,5.66987,0,0),
(14873,26,224.591,-3145.02,91.4801,5000,0,0,0,0,0,0,0,0,0,1.33054,0,0),
(14873,27,219.022,-3147.38,91.4735,0,0,0,0,0,0,0,0,0,0,3.58071,0,0),
(14873,28,220.167,-3139.75,91.8958,4000,0,0,0,0,0,0,0,0,0,1.40516,0,0),
(14873,29,225.033,-3133.14,92.8028,10000,1487308,0,0,0,0,0,0,0,0,0.6551,0,0),
(14873,30,222.021,-3128.32,93.0422,0,0,0,0,0,0,0,0,0,0,2.13558,0,0),
(14873,31,228.338,-3126.35,92.9595,2000,0,0,0,0,0,0,0,0,0,0.337014,0,0),
(14873,32,229.495,-3129.22,92.6818,3000,0,0,0,0,0,0,0,0,0,5.09653,0,0),
(14873,33,232.12,-3128.11,92.5988,0,0,0,0,0,0,0,0,0,0,0.399846,0,0),
(14873,34,227.003,-3137.58,92.1461,3000,0,0,0,0,0,0,0,0,0,4.25615,0,0),
(14873,35,220.002,-3132.38,92.659,10000,1487309,0,0,0,0,0,0,0,0,1.85283,0,0),
(14873,36,225.874,-3102.36,93.6962,0,0,0,0,0,0,0,0,0,0,1.38159,0,0),
(14873,37,233.086,-3085.54,91.6788,0,0,0,0,0,0,0,0,0,0,1.15775,0,0),
(14873,38,235.152,-3069.81,91.8706,0,0,0,0,0,0,0,0,0,0,1.33447,0,0),
(14873,39,239.821,-3061.03,95.4022,0,0,0,0,0,0,0,0,0,0,1.05173,0,0),
(14873,40,256.123,-3047.91,96.2473,3000,1487303,0,0,0,0,0,0,0,0,0.652743,0,0),
(14873,41,267.05,-3039.04,96.9212,0,0,0,0,0,0,0,0,0,0,0.647245,0,0),
(14873,42,271.093,-3035.98,97.6501,0,0,0,0,0,0,0,0,0,0,0.647245,0,0),
(14873,43,278.975,-3029.68,97.3919,3000,1487302,0,0,0,0,0,0,0,0,0.670807,0,0),
(14873,44,280.125,-3029.01,97.3502,240000,1487304,0,0,0,0,0,0,0,0,3.76837,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1487301 AND 1487309;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1487301,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1487301,5,0,0,0,0,0,0,2000005320,0,0,0,0,0,0,0,''),
(1487301,13,0,0,0,5907,30,4,2000005321,0,0,0,0,0,0,0,''),
(1487301,20,0,0,0,0,0,0,2000005322,0,0,0,0,0,0,0,''),
(1487302,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN OFF'),
(1487303,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1487304,0,20,1,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(1487304,235,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(1487305,9,0,0,0,0,0,0,2000005323,0,0,0,0,0,0,0,''),
(1487306,9,0,0,0,0,0,0,2000005324,0,0,0,0,0,0,0,''),
(1487307,9,0,0,0,0,0,0,2000005325,0,0,0,0,0,0,0,''),
(1487308,9,0,0,0,0,0,0,2000005326,0,0,0,0,0,0,0,''),
(1487309,9,0,0,0,0,0,0,2000005327,0,0,0,0,0,0,0,'');
-- Battle-Mage Dathric <Kirin Tor>
DELETE FROM creature_movement_template WHERE entry = 19543;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(19543,1,2236.11,2320.3,92.4652,0,1954301,0,0,0,0,0,0,0,0,3.97722,0,0),
(19543,2,2229.81,2315.17,90.2113,0,0,0,0,0,0,0,0,0,0,4.19949,0,0),
(19543,3,2229.04,2313.74,89.7226,11000,1954303,0,0,0,0,0,0,0,0,4.20892,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1954301 AND 1954303;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1954301,0,22,35,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for quest'),
(1954302,0,22,1810,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for his guid'),
(1954303,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1954303,7,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1954303,8,0,0,0,0,0,0,2000005380,0,0,0,0,0,0,0,'');
-- Conjurer Luminrath <Kirin Tor>
DELETE FROM creature_movement_template WHERE entry = 19544;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(19544,1,2198.5,2333.17,89.213,1000,1954401,0,0,0,0,0,0,0,0,2.33355,0,0),
(19544,2,2194.71,2339.86,90.392,2000,0,0,0,0,0,0,0,0,0,2.33197,0,0),
(19544,3,2194.71,2339.86,90.392,17000,1954403,0,0,0,0,0,0,0,0,3.89963,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1954401 AND 1954403;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1954401,0,22,35,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for quest'),
(1954402,0,22,1811,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for his guid'),
(1954403,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1954403,7,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1954403,8,0,0,0,0,0,0,2000005381,0,0,0,0,0,0,0,''),
(1954403,13,0,0,0,0,0,0,2000005382,0,0,0,0,0,0,0,''),
(1954403,13,23,19008,0,0,0,0x08,0,0,0,0,0,0,0,0,'');
-- Cohlien Frostweaver <Kirin Tor>
DELETE FROM creature_movement_template WHERE entry = 19545;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(19545,1,2212.27,2399.45,108.288,0,1954501,0,0,0,0,0,0,0,0,2.13592,0,0),
(19545,2,2203.2,2411.26,108.721,0,0,0,0,0,0,0,0,0,0,2.35263,0,0),
(19545,3,2203.2,2411.26,108.721,13000,1954503,0,0,0,0,0,0,0,0,2.35263,0,0),
(19545,4,2203.85,2410.99,108.81,5000,1954504,0,0,0,0,0,0,0,0,5.34107,0,0),
(19545,5,2203.85,2410.99,108.81,3000,0,0,0,0,0,0,10,0,0,5.34107,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1954501 AND 1954504;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1954501,0,22,35,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for quest'),
(1954502,0,22,1809,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for his guid'),
(1954503,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1954503,7,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1954503,9,0,0,0,0,0,0,2000005379,0,0,0,0,0,0,0,''),
(1954503,9,23,19005,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(1954504,3,1,10,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Abjurist Belmara <Kirin Tor>
DELETE FROM creature_movement_template WHERE entry = 19546;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(19546,1,2236.71,2392.84,112.165,1000,1954601,0,0,0,0,0,0,0,0,0.576619,0,0),
(19546,2,2238.63,2393.47,112.776,0,0,0,0,0,0,0,0,0,0,5.83721,0,0),
(19546,3,2240.88,2391.2,112.802,13000,1954603,0,0,0,0,0,0,0,0,4.93637,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1954601 AND 1954603;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1954601,0,22,35,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for quest'),
(1954602,0,22,1808,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for his guid'),
(1954603,4,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1954603,4,0,0,0,0,0,0,2000005383,0,0,0,0,0,0,0,''),
(1954603,8,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Morgroron
DELETE FROM creature_movement_template WHERE entry = 21500;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(21500,1,-3342.87,2941.55,169.88,5000,0,0,0,0,0,0,0,0,0,2.50724,0,0),
(21500,2,-3348.61,2968.61,170.043,0,0,0,0,0,0,0,0,0,0,2.37111,0,0),
(21500,3,-3371.9,2990.27,169.947,10000,0,0,0,0,0,0,0,0,0,2.59685,0,0),
(21500,4,-3380.8,2998.32,170.333,0,0,0,0,0,0,0,0,0,0,3.14427,0,0),
(21500,5,-3421.18,2996.89,170.164,0,0,0,0,0,0,0,0,0,0,3.95166,0,0),
(21500,6,-3431.01,2985.65,170.578,0,0,0,0,0,0,0,0,0,0,4.80067,0,0),
(21500,7,-3431.16,2976.08,170.543,10000,0,0,0,0,0,0,0,0,0,4.69778,0,0),
(21500,8,-3431.63,2961.85,170.481,0,0,0,0,0,0,0,0,0,0,6.00388,0,0),
(21500,9,-3401.55,2956.34,169.881,0,0,0,0,0,0,0,0,0,0,5.62817,0,0),
(21500,10,-3391.49,2941.6,169.879,10000,0,0,0,0,0,0,0,0,0,5.30381,0,0),
(21500,11,-3342.87,2941.55,169.88,9000,2150001,0,0,0,0,0,0,0,0,2.50724,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2150001; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2150001,6,1,15,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- creature_movement:
-- Thal'trak Proudtusk <Kargath Expeditionary Force>
UPDATE creature_movement SET waittime = 1000, script_id = 908201, textid1 = 0 WHERE id = 6885 AND point = 27;
DELETE FROM dbscripts_on_creature_movement WHERE id = 908201; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(908201,1,0,0,0,0,0,0,2000005009,0,0,0,0,0,0,0,'');
-- "Dirty" Michael Crowe <Fish Merchant>
UPDATE creature_movement SET script_id = 2389601, textid1 = 0, emote = 0 WHERE id = 30649 AND point = 2;
DELETE FROM dbscripts_on_creature_movement WHERE id = 2389601; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2389601,2,0,0,0,0,0,0,2000005019,0,0,0,0,0,0,0,'');
UPDATE db_script_string SET emote = 15 WHERE entry = 2000005019;
-- Opus
DELETE FROM creature_movement WHERE id = 4567;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(4567,1,-7455.58,-2194.28,165.373,60000,0,0,0,0,0,0,0,0,0,3.40339,0,0),
(4567,2,-7455.58,-2194.28,165.373,1000,1026201,0,0,0,0,0,0,0,0,3.40339,0,0),
(4567,3,-7455.58,-2194.28,165.373,180000,0,0,0,0,0,0,0,0,0,3.40339,0,0),
(4567,4,-7455.58,-2194.28,165.373,1000,1026202,0,0,0,0,0,0,0,0,3.40339,0,0),
(4567,5,-7455.58,-2194.28,165.373,120000,0,0,0,0,0,0,0,0,0,3.40339,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1026201,1026202); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1026201,1,0,0,0,0,0,0,2000005001,2000005002,2000005003,2000005004,0,0,0,0,''),
(1026202,1,0,0,0,0,0,0,2000005005,2000005006,2000005007,2000005008,0,0,0,0,'');
-- Blackheart the Inciter
UPDATE creature_movement SET script_id = 1866701, textid2 = 0, textid4 = 0 WHERE id = 66937 AND point = 1;
UPDATE creature_movement SET script_id = 1866702, textid1 = 0, textid3 = 0, textid5 = 0 WHERE id = 66937 AND point = 2;
UPDATE creature_movement SET script_id = 1866703, textid1 = 0, textid3 = 0 WHERE id = 66937 AND point = 3;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1866701,1866702,1866703); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1866701,1,0,0,0,0,0,0,2000005220,2000005235,0,0,0,0,0,0,''),
(1866702,1,0,0,0,0,0,0,2000005043,2000005230,2000005236,0,0,0,0,0,''),
(1866703,1,0,0,0,0,0,0,2000005044,2000005231,0,0,0,0,0,0,'');
-- Thomas Miller <Baker> - c.3518
DELETE FROM creature_movement WHERE id = 79723;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(79723,1,-8831.81,543.054,96.8538,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,2,-8823.8,554.302,95.1343,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,3,-8816.18,563.58,94.1516,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,4,-8812.27,575.284,94.8673,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,5,-8798.45,588.131,97.2749,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,6,-8781.38,601.002,97.395,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,7,-8770.7,609.208,97.2416,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,8,-8761.96,617.745,99.1796,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,9,-8757.63,628.577,102.216,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,10,-8759.15,642.457,103.654,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,11,-8770.64,661.869,103.528,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,12,-8787.04,680.217,102.245,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,13,-8804.12,683.305,100.683,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,14,-8815.72,680.448,98.2183,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,15,-8831.55,674.228,98.3358,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,16,-8843.12,667.22,97.8051,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,17,-8852.2,659.229,96.9603,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,18,-8841.74,637.862,95.1661,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,19,-8834.06,634.756,94.3203,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,20,-8817.96,641.332,94.2293,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,21,-8811.88,634.469,94.2293,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,22,-8813.45,625.373,94.1306,60000,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,23,-8827.66,620.367,94.2332,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,24,-8846.61,601.6,92.6069,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,25,-8859.18,589.015,92.709,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,26,-8874.99,572.27,93.4734,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,27,-8883.26,572.174,92.8046,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,28,-8886.9,579.094,92.9168,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,29,-8889.38,585.29,93.3191,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,30,-8869.45,596.649,92.4409,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,31,-8860.44,601.856,92.161,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,32,-8847.27,610.523,92.6533,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,33,-8837.06,617.396,93.0252,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,34,-8834.75,618.401,93.3229,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,35,-8827.87,621.207,94.1001,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,36,-8809.26,603.528,96.2749,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,37,-8806.62,593.729,97.1852,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,38,-8820.32,573.328,94.1915,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,39,-8830.69,558.865,94.8851,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,40,-8834.06,549.867,96.194,0,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,41,-8831.28,543.109,96.8344,60000,0,0,0,0,0,0,0,0,0,0,0,0);
DELETE FROM db_script_string WHERE entry IN (2000005099,2000005100,2000005101,2000005102); -- all done by OOC in ACID - entry can be reused.
-- Northshire Peasant #1 c.11260
UPDATE creature_movement SET script_id = 1126002, emote = 0 WHERE id = 80119 AND point = 1;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1126001,1126002); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1126001,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1126002,1,1,234,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Northshire Peasant #2 c.11260
UPDATE creature_movement SET waittime = 1000, script_id = 1126001, emote = 0 WHERE id = 80127 AND point = 1;
UPDATE creature_movement SET script_id = 1126002, emote = 0 WHERE id = 80127 AND point = 7;
-- Northshire Peasant #3 c.11260
UPDATE creature_movement SET waittime = 1000, script_id = 1126001, emote = 0 WHERE id = 80137 AND point = 1;
UPDATE creature_movement SET script_id = 1126002, emote = 0 WHERE id = 80137 AND point = 5;
-- Northshire Peasant #4 c.11260
UPDATE creature_movement SET waittime = 1000, script_id = 1126001, emote = 0 WHERE id = 80145 AND point = 1;
UPDATE creature_movement SET script_id = 1126002, emote = 0 WHERE id = 80145 AND point = 4;
-- Northshire Peasant #5 c.11260
UPDATE creature_movement SET waittime = 1000, script_id = 1126001, emote = 0 WHERE id = 80262 AND point = 1;
UPDATE creature_movement SET script_id = 1126002, emote = 0 WHERE id = 80262 AND point = 9;
-- Artificer Daelo <Engineering Trainer> c.17222
UPDATE creature_movement SET script_id = 1722201, textid1 = 0, textid2 = 0 WHERE id = 84582 AND point = 1;
UPDATE creature_movement SET script_id = 1722202, textid1 = 0, textid2 = 0 WHERE id = 84582 AND point = 3;
UPDATE creature_movement SET script_id = 1722203, textid1 = 0, textid2 = 0 WHERE id = 84582 AND point = 5;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1722201,1722202,1722203); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1722201,4,0,0,0,0,0,0,2000005143,2000005224,0,0,0,0,0,0,''),
(1722202,4,0,0,0,0,0,0,2000005144,2000005225,0,0,0,0,0,0,''),
(1722203,4,0,0,0,0,0,0,2000005145,2000005226,0,0,0,0,0,0,'');
-- Krixil Slogswitch <Food & Drink> c.23573
UPDATE creature_movement SET script_id = 2357301, textid1 = 0, emote = 0 WHERE id = 18597 AND point = 2;
DELETE FROM dbscripts_on_creature_movement WHERE id = 351201; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2357301,1,0,0,0,0,0,0,2000005013,0,0,0,0,0,0,0,'');
UPDATE db_script_string SET emote = 6 WHERE entry = 2000005013;
-- Inspector Tarem c.23567
UPDATE creature_movement SET script_id = 2356701, textid1 = 0, emote = 0 WHERE id = 18594 AND point = 2;
DELETE FROM dbscripts_on_creature_movement WHERE id = 2356701; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2356701,1,0,0,0,0,0,0,2000005012,0,0,0,0,0,0,0,'');
UPDATE db_script_string SET emote = 16 WHERE entry = 2000005012;
-- Ol' Emma c.3520
UPDATE creature_movement SET waittime = 0, script_id = 352001, textid1 = 0 WHERE id = 79796 AND point = 7;
UPDATE creature_movement SET waittime = 0, script_id = 352002, textid1 = 0 WHERE id = 79796 AND point = 10;
UPDATE creature_movement SET waittime = 0, script_id = 352003, textid1 = 0 WHERE id = 79796 AND point = 13;
UPDATE creature_movement SET waittime = 0, script_id = 352004, textid1 = 0 WHERE id = 79796 AND point = 16;
UPDATE creature_movement SET waittime = 0, script_id = 352005, textid1 = 0 WHERE id = 79796 AND point = 22;
UPDATE creature_movement SET waittime = 0, script_id = 352006, textid1 = 0 WHERE id = 79796 AND point = 27;
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 352001 AND 352006; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(352001,0,0,0,0,0,0,0,2000005103,0,0,0,0,0,0,0,''),
(352002,0,0,0,0,0,0,0,2000005104,0,0,0,0,0,0,0,''),
(352003,0,0,0,0,0,0,0,2000005105,0,0,0,0,0,0,0,''),
(352004,0,0,0,0,0,0,0,2000005106,0,0,0,0,0,0,0,''),
(352005,0,0,0,0,0,0,0,2000005107,0,0,0,0,0,0,0,''),
(352006,0,0,0,0,0,0,0,2000005108,0,0,0,0,0,0,0,'');
-- Deserter Agitator c.23602
DELETE FROM creature_movement WHERE id = 31046;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(31046,1,-3647.42,-4449.24,15.1955,10000,0,0,0,0,0,0,0,0,0,0.68068,0,0),
(31046,2,-3647.42,-4449.24,15.1955,15000,2360201,0,0,0,0,0,0,0,0,0.68068,0,0),
(31046,3,-3647.42,-4449.24,15.1955,45000,0,0,0,0,0,0,0,0,0,0.68068,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2360201; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2360201,1,0,0,0,0,0,0,2000005020,0,0,0,0,0,0,0,''),
(2360201,6,0,0,0,0,0,0,2000005021,0,0,0,0,0,0,0,''),
(2360201,13,0,0,0,0,0,0,2000005022,0,0,0,0,0,0,0,'');
UPDATE db_script_string SET emote = 1 WHERE entry IN (2000005020,2000005021,2000005022);
-- Lhara <Pet & Mount Prizes> c.14846
UPDATE creature_movement SET script_id = 1484601, textid1 = 0 WHERE id = 43671 AND point = 3;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1484601; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1484601,1,0,0,0,0,0,0,2000005023,0,0,0,0,0,0,0,'');
-- Flik c.14860
UPDATE creature_movement SET script_id = 1486001, textid1 = 0, textid2 = 0 WHERE id = 56625 AND point = 7;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1486001; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1486001,1,0,0,0,0,0,0,2000005024,2000005211,0,0,0,0,0,0,'');
-- Gelvas Grimegate <Souvenir & Toy Prizes> c.14828
UPDATE creature_movement SET script_id = 1482801, textid1 = 0, textid2 = 0 WHERE id = 43679 AND point = 3;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1482801; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1482801,1,0,0,0,0,0,0,2000005025,2000005212,0,0,0,0,0,0,'');

-- Spirit of the Past#1 c.21049
UPDATE creature_movement SET script_id = 2104901, textid1 = 0, textid2 = 0, textid3 = 0, emote = 0 WHERE id = 73921 AND point = 1;
UPDATE creature_movement SET script_id = 2104901, textid1 = 0, textid2 = 0, textid3 = 0, emote = 0 WHERE id = 73921 AND point = 2;
UPDATE creature_movement SET script_id = 2104901, textid1 = 0, textid2 = 0, textid3 = 0, emote = 0 WHERE id = 73921 AND point = 3;
UPDATE db_script_string SET emote = 15 WHERE entry IN (2000005452,2000005455,2000005456);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2104901; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2104901,1,0,0,0,0,0,0,2000005452,2000005455,2000005456,0,0,0,0,0,'');
-- Spirit of the Past#2 c.21049
UPDATE creature_movement SET script_id = 2104902, textid1 = 0, textid2 = 0, textid3 = 0, textid4 = 0, emote = 0 WHERE id = 73908 AND point = 1;
UPDATE creature_movement SET script_id = 2104902, textid1 = 0, textid2 = 0, textid3 = 0, textid4 = 0, emote = 0 WHERE id = 73908 AND point = 2;
UPDATE creature_movement SET script_id = 2104902, textid1 = 0, textid2 = 0, textid3 = 0, textid4 = 0, emote = 0 WHERE id = 73908 AND point = 3;
UPDATE db_script_string SET emote = 20 WHERE entry IN (2000005453,2000005454,2000005457,2000005458);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2104902; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2104902,1,0,0,0,0,0,0,2000005453,2000005454,2000005457,2000005458,0,0,0,0,'');
-- Erich Lohan c.3627
UPDATE creature_movement SET script_id = 362701, textid1 = 0 WHERE id = 90445 AND point = 2;
UPDATE creature_movement SET script_id = 362702, textid1 = 0 WHERE id = 90445 AND point = 4;
UPDATE creature_movement SET script_id = 362703, textid1 = 0 WHERE id = 90445 AND point = 7;
UPDATE creature_movement SET script_id = 362704, textid1 = 0 WHERE id = 90445 AND point = 12;
UPDATE creature_movement SET script_id = 362705, textid1 = 0 WHERE id = 90445 AND point = 17;
UPDATE creature_movement SET script_id = 362706, textid1 = 0 WHERE id = 90445 AND point = 21;
UPDATE creature_movement SET script_id = 362707, textid1 = 0 WHERE id = 90445 AND point = 26;
UPDATE creature_movement SET script_id = 362708, textid1 = 0 WHERE id = 90445 AND point = 30;
UPDATE creature_movement SET script_id = 362709, textid1 = 0 WHERE id = 90445 AND point = 35;
UPDATE creature_movement SET script_id = 362710, textid1 = 0 WHERE id = 90445 AND point = 39;
UPDATE creature_movement SET script_id = 362711, textid1 = 0 WHERE id = 90445 AND point = 43;
UPDATE creature_movement SET script_id = 362712, textid1 = 0 WHERE id = 90445 AND point = 47;
UPDATE creature_movement SET script_id = 362713, textid1 = 0 WHERE id = 90445 AND point = 52;
UPDATE creature_movement SET script_id = 362714, textid1 = 0 WHERE id = 90445 AND point = 57;
UPDATE creature_movement SET script_id = 362715, textid1 = 0 WHERE id = 90445 AND point = 61;
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 362701 AND 362715; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(362701,0,0,0,0,0,0,0,2000005185,0,0,0,0,0,0,0,''),
(362702,0,0,0,0,0,0,0,2000005186,0,0,0,0,0,0,0,''),
(362703,0,0,0,0,0,0,0,2000005187,0,0,0,0,0,0,0,''),
(362704,0,0,0,0,0,0,0,2000005188,0,0,0,0,0,0,0,''),
(362705,0,0,0,0,0,0,0,2000005189,0,0,0,0,0,0,0,''),
(362706,0,0,0,0,0,0,0,2000005190,0,0,0,0,0,0,0,''),
(362707,0,0,0,0,0,0,0,2000005191,0,0,0,0,0,0,0,''),
(362708,0,0,0,0,0,0,0,2000005192,0,0,0,0,0,0,0,''),
(362709,0,0,0,0,0,0,0,2000005193,0,0,0,0,0,0,0,''),
(362710,0,0,0,0,0,0,0,2000005194,0,0,0,0,0,0,0,''),
(362711,0,0,0,0,0,0,0,2000005195,0,0,0,0,0,0,0,''),
(362712,0,0,0,0,0,0,0,2000005196,0,0,0,0,0,0,0,''),
(362713,0,0,0,0,0,0,0,2000005197,0,0,0,0,0,0,0,''),
(362714,0,0,0,0,0,0,0,2000005198,0,0,0,0,0,0,0,''),
(362715,0,0,0,0,0,0,0,2000005199,0,0,0,0,0,0,0,'');
-- Sayge c.14822
UPDATE creature_movement SET script_id = 1482201, textid1 = 0, textid2 = 0, textid3 = 0, textid4 = 0 WHERE id = 45476 AND point = 5;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1482201; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1482201,1,0,0,0,0,0,0,2000005026,2000005213,2000005227,2000005232,0,0,0,0,'');
-- Professor Thaddeus Paleo <Darkmoon Cards> c.14847
UPDATE creature_movement SET script_id = 1484701, textid1 = 0 WHERE id = 49446 AND point = 3;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1484701; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1484701,1,0,0,0,0,0,0,2000005030,0,0,0,0,0,0,0,'');
-- Silas Darkmoon c.14823
UPDATE creature_movement SET script_id = 1482301, textid1 = 0, textid2 = 0 WHERE id = 56348 AND point = 2;
UPDATE creature_movement SET script_id = 1482302, textid1 = 0, textid2 = 0 WHERE id = 56348 AND point = 6;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1482301,1482302); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1482301,1,0,0,0,0,0,0,2000005033,2000005216,0,0,0,0,0,0,''),
(1482302,1,0,0,0,0,0,0,2000005034,2000005217,0,0,0,0,0,0,'');
-- Darkmoon Carnie#1 c.14849
UPDATE creature_movement SET script_id = 1484901, textid1 = 0, textid2 = 0 WHERE id = 70025 AND point = 12;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1484901; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1484901,1,0,0,0,0,0,0,2000005048,2000005221,0,0,0,0,0,0,'');
-- Darkmoon Carnie#2 c.14849
UPDATE creature_movement SET script_id = 1484902, textid1 = 0, textid2 = 0 WHERE id = 83350 AND point = 13;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1484902; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1484902,1,0,0,0,0,0,0,2000005133,2000005223,0,0,0,0,0,0,''); 
-- Vectus c.10432
DELETE FROM creature_movement WHERE id = 48805;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(48805,1,143.481,99.0964,104.659,300000,0,0,0,0,0,0,0,0,0,3.26377,0,0),
(48805,2,143.481,99.0964,104.659,21000,1043201,0,0,0,0,0,0,0,0,3.26377,0,0),
(48805,3,143.481,99.0964,104.659,30000,0,0,0,0,0,0,0,0,0,3.26377,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1043201; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1043201,1,0,0,0,0,0,0,2000005027,0,0,0,0,0,0,0,''),
(1043201,10,0,0,0,0,0,0,2000005028,0,0,0,0,0,0,0,''),
(1043201,20,0,0,0,0,0,0,2000005029,0,0,0,0,0,0,0,'');
-- Junior Apothecary Holland <Royal Apothecary Society> c.10665
UPDATE creature_movement SET script_id = 1066501, textid1 = 0 WHERE id = 28412 AND point = 5;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1066501; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1066501,1,0,0,0,0,0,0,2000005018,0,0,0,0,0,0,0,''); 
-- Caretaker Alen <The Argent Dawn> c.11038
UPDATE creature_movement SET script_id = 1103801, textid1 = 0, textid2 = 0, textid3 = 0, textid4 = 0 WHERE id = 54749 AND point = 2;
UPDATE creature_movement SET script_id = 1103802, textid1 = 0, textid2 = 0, textid3 = 0, textid4 = 0 WHERE id = 54749 AND point = 6;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1103801,1103802); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1103801,1,0,0,0,0,0,0,2000005031,2000005214,2000005228,2000005233,0,0,0,0,''),
(1103802,1,0,0,0,0,0,0,2000005032,2000005215,2000005229,2000005234,0,0,0,0,'');
-- Justin c.1368
UPDATE creature_movement SET script_id = 136801, textid1 = 0 WHERE id = 79815 AND point = 3;
UPDATE creature_movement SET script_id = 136802, textid1 = 0 WHERE id = 79815 AND point = 7;
UPDATE creature_movement SET script_id = 136803, textid1 = 0 WHERE id = 79815 AND point = 10;
UPDATE creature_movement SET script_id = 136804, textid1 = 0 WHERE id = 79815 AND point = 13;
UPDATE creature_movement SET script_id = 136805, textid1 = 0 WHERE id = 79815 AND point = 16;
UPDATE creature_movement SET script_id = 136806, textid1 = 0 WHERE id = 79815 AND point = 18;
UPDATE creature_movement SET script_id = 136807, textid1 = 0 WHERE id = 79815 AND point = 19;
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 136801 AND 136807; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(136801,0,0,0,0,0,0,0,2000005109,0,0,0,0,0,0,0,''),
(136802,0,0,0,0,0,0,0,2000005110,0,0,0,0,0,0,0,''),
(136803,0,0,0,0,0,0,0,2000005111,0,0,0,0,0,0,0,''),
(136804,0,0,0,0,0,0,0,2000005112,0,0,0,0,0,0,0,''),
(136805,0,0,0,0,0,0,0,2000005113,0,0,0,0,0,0,0,''),
(136806,0,0,0,0,0,0,0,2000005114,0,0,0,0,0,0,0,''),
(136807,0,0,0,0,0,0,0,2000005115,0,0,0,0,0,0,0,'');
-- Roman c.1371
UPDATE creature_movement SET script_id = 137101, textid1 = 0 WHERE id = 79816 AND point = 2;
UPDATE creature_movement SET script_id = 137102, textid1 = 0 WHERE id = 79816 AND point = 5;
UPDATE creature_movement SET script_id = 137103, textid1 = 0 WHERE id = 79816 AND point = 8;
UPDATE creature_movement SET script_id = 137104, textid1 = 0 WHERE id = 79816 AND point = 11;
UPDATE creature_movement SET script_id = 137105, textid1 = 0 WHERE id = 79816 AND point = 14;
UPDATE creature_movement SET script_id = 137106, textid1 = 0 WHERE id = 79816 AND point = 17;
UPDATE creature_movement SET script_id = 137107, textid1 = 0 WHERE id = 79816 AND point = 20;
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 137101 AND 137107; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(137101,0,0,0,0,0,0,0,2000005116,0,0,0,0,0,0,0,''),
(137102,0,0,0,0,0,0,0,2000005117,0,0,0,0,0,0,0,''),
(137103,0,0,0,0,0,0,0,2000005118,0,0,0,0,0,0,0,''),
(137104,0,0,0,0,0,0,0,2000005119,0,0,0,0,0,0,0,''),
(137105,0,0,0,0,0,0,0,2000005120,0,0,0,0,0,0,0,''),
(137106,0,0,0,0,0,0,0,2000005121,0,0,0,0,0,0,0,''),
(137107,0,0,0,0,0,0,0,2000005122,0,0,0,0,0,0,0,'');
-- Brandon c.1370
UPDATE creature_movement SET script_id = 137001, textid1 = 0 WHERE id = 79817 AND point = 1;
UPDATE creature_movement SET script_id = 137002, textid1 = 0 WHERE id = 79817 AND point = 4;
UPDATE creature_movement SET script_id = 137003, textid1 = 0 WHERE id = 79817 AND point = 7;
UPDATE creature_movement SET script_id = 137004, textid1 = 0 WHERE id = 79817 AND point = 10;
UPDATE creature_movement SET script_id = 137005, textid1 = 0 WHERE id = 79817 AND point = 13;
UPDATE creature_movement SET script_id = 137006, textid1 = 0 WHERE id = 79817 AND point = 16;
UPDATE creature_movement SET script_id = 137007, textid1 = 0 WHERE id = 79817 AND point = 17;
UPDATE creature_movement SET script_id = 137008, textid1 = 0 WHERE id = 79817 AND point = 19;
UPDATE creature_movement SET script_id = 137009, textid1 = 0 WHERE id = 79817 AND point = 20;
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 137001 AND 137009; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(137001,0,0,0,0,0,0,0,2000005123,0,0,0,0,0,0,0,''),
(137002,0,0,0,0,0,0,0,2000005124,0,0,0,0,0,0,0,''),
(137003,0,0,0,0,0,0,0,2000005125,0,0,0,0,0,0,0,''),
(137004,0,0,0,0,0,0,0,2000005126,0,0,0,0,0,0,0,''),
(137005,0,0,0,0,0,0,0,2000005127,0,0,0,0,0,0,0,''),
(137006,0,0,0,0,0,0,0,2000005128,0,0,0,0,0,0,0,''),
(137007,0,0,0,0,0,0,0,2000005129,0,0,0,0,0,0,0,''),
(137008,0,0,0,0,0,0,0,2000005130,0,0,0,0,0,0,0,''),
(137009,0,0,0,0,0,0,0,2000005131,0,0,0,0,0,0,0,'');
-- Wretched Skulker c.24688
DELETE FROM creature_movement WHERE id = 96825;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(96825,1,231.335,2.77129,-2.96215,80000,2468801,0,0,0,0,0,0,0,0,5.1577,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2468801; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2468801,0,1,398,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2468801,40,0,0,0,0,0,0,2000005210,0,0,0,0,0,0,0,''),
(2468801,41,1,398,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Wretched Bruiser c.24689
DELETE FROM creature_movement WHERE id = 96830;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(96830,1,232.15,-2.02771,-2.95377,80000,2468901,0,0,0,0,0,0,0,0,0.869425,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2468901; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2468901,0,1,398,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Mack c.23718
DELETE FROM creature_movement WHERE id = 94484;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(94484,1,6740.69,-7607.24,126.194,35000,2371801,0,0,0,0,0,0,0,0,4.01019,0,0),
(94484,2,6771.95,-7585.33,127.31,10000,2371802,0,0,0,0,0,0,0,0,0.534801,0,0),
(94484,3,6751.85,-7549.6,126.132,4000,2371803,0,0,0,0,0,0,0,0,2.59961,0,0),
(94484,4,6743.03,-7551.57,126.327,1200000,0,0,0,0,0,0,0,0,0,3.40335,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2371801 AND 2371803; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2371801,2,0,0,0,0,0,0,2000005202,0,0,0,0,0,0,0,''),
(2371801,20,0,0,0,0,0,0,2000005203,0,0,0,0,0,0,0,''),
(2371802,2,0,0,0,0,0,0,2000005204,0,0,0,0,0,0,0,''),
(2371803,2,1,61,0,0,0,0,0,0,0,0,0,0,0,0,'');
UPDATE db_script_string SET emote = 1 WHERE entry IN (2000005202,2000005203);
UPDATE db_script_string SET emote = 16 WHERE entry = 2000005204;
-- Captain Dranarus c.25138
UPDATE creature_movement SET script_id = 2513801, emote = 0 WHERE id = 96619 AND point = 2;
UPDATE creature_movement SET script_id = 2513801, emote = 0 WHERE id = 96619 AND point = 5;
DELETE FROM dbscripts_on_creature_movement WHERE id = 2513801; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2513801,2,1,412,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2513801,48,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Crildor c.5782
UPDATE creature_movement SET waittime = 60000, script_id = 578201, emote = 0 WHERE id = 46816 AND point = 1;
UPDATE creature_movement SET waittime = 60000, script_id = 578201, emote = 0 WHERE id = 46816 AND point = 22;
UPDATE creature_movement SET waittime = 60000, script_id = 578201, emote = 0 WHERE id = 46816 AND point = 53;
DELETE FROM dbscripts_on_creature_movement WHERE id = 578201; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(578201,3,28,1,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_SIT'),
(578201,58,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND');
-- Engineering Crewmember c.19737
DELETE FROM creature_movement WHERE id = 70615;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(70615,1,3033.73,3656.38,143.69,0,0,0,0,0,0,0,0,0,0,5.30927,0,0),
(70615,2,3051.05,3664.98,142.87,0,0,0,0,0,0,0,0,0,0,1.15609,0,0),
(70615,3,3050.97,3674.26,142.603,0,0,0,0,0,0,0,0,0,0,2.72802,0,0),
(70615,4,3036.52,3680.33,143.52,0,0,0,0,0,0,0,0,0,0,3.68935,0,0),
(70615,5,3033.28,3677.93,143.556,43000,1973701,0,0,0,0,0,0,0,0,3.33121,0,0),
(70615,6,3051.94,3669.52,142.825,0,0,0,0,0,0,0,0,0,0,3.28802,0,0),
(70615,7,3049.33,3668.68,143.187,43000,1973701,0,0,0,0,0,0,0,0,3.50086,0,0),
(70615,8,3051.88,3668.62,142.873,0,0,0,0,0,0,0,0,0,0,5.47221,0,0),
(70615,9,3051.16,3664.56,142.802,0,0,0,0,0,0,0,0,0,0,3.48908,0,0),
(70615,10,3035.72,3656.05,143.452,0,0,0,0,0,0,0,0,0,0,2.51676,0,0),
(70615,11,3032.03,3657.24,144.012,43000,1973701,0,0,0,0,0,0,0,0,2.51676,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1973701; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1973701,3,1,133,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1973701,30,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Irradiated Worker#1 c.19610
DELETE FROM creature_movement WHERE id = 70032;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(70032,1,3000.88,3690.43,143.65,0,0,0,0,0,0,0,0,0,0,1.45832,0,0),
(70032,2,3003.27,3695.3,143.877,0,0,0,0,0,0,0,0,0,0,0.01005,0,0),
(70032,3,3010.29,3695.2,136.593,0,0,0,0,0,0,0,0,0,0,0.494639,0,0),
(70032,4,3017.39,3710.27,137.82,0,0,0,0,0,0,0,0,0,0,0.80282,0,0),
(70032,5,3036.61,3727.59,139.759,40000,1961002,0,0,0,0,0,0,0,0,0.641028,0,0),
(70032,6,3019.64,3715.8,138.534,0,0,0,0,0,0,0,0,0,0,4.02217,0,0),
(70032,7,3011.46,3696.68,136.635,0,0,0,0,0,0,0,0,0,0,4.54602,0,0),
(70032,8,3009.01,3679.22,133.286,0,0,0,0,0,0,0,0,0,0,4.59551,0,0),
(70032,9,3016.51,3662.83,129.835,0,0,0,0,0,0,0,0,0,0,4.83348,0,0),
(70032,10,3013.62,3636.53,131.778,0,0,0,0,0,0,0,0,0,0,4.5366,0,0),
(70032,11,3009.93,3628.43,134.04,40000,1961003,0,0,0,0,0,0,0,0,4.00803,0,0),
(70032,12,3013.64,3635.49,131.995,0,0,0,0,0,0,0,0,0,0,1.2285,0,0),
(70032,13,3014.94,3650.03,129.107,0,0,0,0,0,0,0,0,0,0,1.53677,0,0),
(70032,14,3015.81,3662.53,130.335,0,0,0,0,0,0,0,0,0,0,2.10618,0,0),
(70032,15,3009.98,3674.81,131.394,0,0,0,0,0,0,0,0,0,0,1.98837,0,0),
(70032,16,3010.07,3695.38,136.597,0,0,0,0,0,0,0,0,0,0,2.93949,0,0),
(70032,17,3003.69,3695.46,143.857,0,0,0,0,0,0,0,0,0,0,3.10757,0,0),
(70032,18,2998.99,3694.04,144.017,0,0,0,0,0,0,0,0,0,0,5.32337,0,0),
(70032,19,3001.78,3690.79,143.653,0,0,0,0,0,0,0,0,0,0,4.37628,0,0),
(70032,20,3013.45,3685.54,143.647,0,0,0,0,0,0,0,0,0,0,5.90781,0,0),
(70032,21,3021.31,3684.95,143.631,35000,1961001,0,0,0,0,0,0,0,0,5.90781,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1961002,1961003); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1961002,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1961002,15,0,0,0,0,0,0,2000005258,2000005259,0,0,0,0,0,0,''),
(1961002,37,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1961003,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1961003,15,0,0,0,0,0,0,2000005260,0,0,0,0,0,0,0,''),
(1961003,37,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Irradiated Worker#2 c.19610
UPDATE creature_movement SET script_id = 1961005, emote = 0 WHERE id = 70033 AND point = 6;
UPDATE creature_movement SET script_id = 1961004, emote = 0 WHERE id = 70033 AND point = 12;
UPDATE creature_movement SET waittime = 55000, script_id = 1961005, emote = 0 WHERE id = 70033 AND point = 19;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1961004,1961005); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1961004,3,1,233,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1961004,50,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1961005,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1961005,50,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Irradiated Worker#3 c.19610 
UPDATE creature_movement SET script_id = 1961005, emote = 0 WHERE id = 70030 AND point = 2;
UPDATE creature_movement SET script_id = 1961004, emote = 0 WHERE id = 70030 AND point = 4;
-- Severed Spirit <Kirin Tor> c.19881
UPDATE creature_movement SET script_id = 1988101, emote = 0 WHERE id = 71007 AND point = 4;
UPDATE creature_movement SET script_id = 1988101, emote = 0 WHERE id = 71007 AND point = 8;
UPDATE creature_movement SET script_id = 1988101, emote = 0 WHERE id = 71007 AND point = 11;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1988101; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1988101,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1988101,35,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Tormented Soul <Kirin Tor> c.20512
UPDATE creature_movement SET script_id = 2051201, emote = 0 WHERE id = 72634 AND point = 8;
UPDATE creature_movement SET script_id = 2051201, emote = 0 WHERE id = 72634 AND point = 13;
UPDATE creature_movement SET script_id = 2051202, emote = 0 WHERE id = 72634 AND point = 4;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2051201,2051202); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2051201,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2051201,17,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2051202,3,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(2051202,55,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND');
-- Gardok Ripjaw c.19002
DELETE FROM creature_movement WHERE id = 68307;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(68307,1,-2675.03,4419.42,36.8669,16000,1900201,0,0,0,0,0,0,0,0,1.64135,0,0),
(68307,2,-2675.47,4425.67,37.1236,16000,1900201,0,0,0,0,0,0,0,0,1.64135,0,0),
(68307,3,-2682.4,4426.03,37.1226,16000,1900201,0,0,0,0,0,0,0,0,1.99867,0,0),
(68307,4,-2691.72,4425.58,37.1219,16000,1900201,0,0,0,0,0,0,0,0,1.37899,0,0),
(68307,5,-2691.72,4425.58,37.1219,16000,1900201,0,0,0,0,0,0,0,0,1.64288,0,0),
(68307,6,-2694.04,4420.25,37.1019,16000,1900201,0,0,0,0,0,0,0,0,4.74521,0,0),
(68307,7,-2691.36,4419.17,37.0531,16000,1900201,0,0,0,0,0,0,0,0,1.28946,0,0),
(68307,8,-2687.2,4419.84,37.0773,16000,1900201,0,0,0,0,0,0,0,0,0.874766,0,0),
(68307,9,-2687.26,4425.15,37.1222,16000,1900201,0,0,0,0,0,0,0,0,1.05305,0,0),
(68307,10,-2675.51,4425.16,37.123,16000,1900201,0,0,0,0,0,0,0,0,0.000617,0,0),
(68307,11,-2675.51,4425.16,37.123,16000,1900201,0,0,0,0,0,0,0,0,1.72849,0,0),
(68307,12,-2675.22,4418.99,36.8082,16000,1900201,0,0,0,0,0,0,0,0,1.84395,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1900201; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1900201,3,1,5,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Stonebreaker Grunt c.18973
UPDATE creature_movement SET script_id = 1897301, emote = 0 WHERE id IN (68134,68135,68136,68137,68138,68140) AND point = 1;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1897301; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1897301,1,1,36,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Donna Brascoe c.23858
DELETE FROM creature_movement WHERE id = 2070;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(2070,1,6764.76,-7610.55,128.535,10000,0,0,0,0,0,0,0,0,0,0.935795,0,0),
(2070,2,6757.96,-7613.65,128.073,120000,2385801,0,0,0,0,0,0,0,0,0.935795,0,0),
(2070,3,6764.76,-7610.55,128.535,900000,0,0,0,0,0,0,0,0,0,0.935795,0,0),
(2070,4,6770.57,-7607.24,128.457,120000,2385801,0,0,0,0,0,0,0,0,2.92678,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2385801; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2385801,3,1,173,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2385801,115,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Flik c.14860
UPDATE creature_movement SET script_id = 1486001, textid1 = 0, textid2 = 0 WHERE id = 56625 AND point = 6;
UPDATE creature_movement SET script_id = 1486001, textid1 = 0, textid2 = 0 WHERE id = 43673 AND point = 7;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1486001; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1486001,1,0,0,0,0,0,0,2000005035,2000005218,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry IN (2000005211,2000005024); -- duplicate with (2000005218,2000005035)
-- Curator Thorius c.8256
UPDATE creature_movement SET script_id = 825601, emote = 0 WHERE id = 1887 AND point = 15;
UPDATE creature_movement SET script_id = 825602, textid1 = 0 WHERE id = 1887 AND point = 16;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (825601,825602); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(825601,3,1,11,0,0,0,0,0,0,0,0,0,0,0,0,''),
(825602,1,0,0,0,0,0,0,2000005000,0,0,0,0,0,0,0,'');
-- Apprentice Morlann <Tabetha's Apprentice> c.23600
DELETE FROM creature_movement WHERE id = 18604;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(18604,1,-4044.27,-3393.28,38.1284,0,0,0,0,0,0,0,0,0,0,2.01224,0,0),
(18604,2,-4044.27,-3393.28,38.1284,4000,2360001,0,0,0,0,0,0,0,0,2.01224,0,0),
(18604,3,-4045.51,-3394.92,38.1749,2000,0,0,0,0,0,0,0,0,0,4.18308,0,0),
(18604,4,-4042.77,-3396.91,38.1887,0,0,0,0,0,0,0,0,0,0,6.00834,0,0),
(18604,5,-4040.72,-3397.23,38.1476,2000,0,0,0,0,0,0,0,0,0,0.379286,0,0),
(18604,6,-4040.72,-3397.23,38.1476,4000,2360002,0,0,0,0,0,0,0,0,0.379286,0,0),
(18604,7,-4040.72,-3397.23,38.1476,3000,2360003,0,0,0,0,0,0,0,0,0.379286,0,0),
(18604,10,-4043.43,-3395.4,38.2663,240000,0,0,0,0,0,0,0,0,0,3.87463,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2360001,2360002,2360003); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2360001,1,0,0,0,0,0,0,2000005242,0,0,0,0,0,0,0,''),
(2360002,1,0,0,0,0,0,0,2000005243,0,0,0,0,0,0,0,''),
(2360003,1,0,0,0,0,0,0,2000005244,0,0,0,0,0,0,0,'');
UPDATE db_script_string SET emote = 6 WHERE entry = 2000005242;
UPDATE db_script_string SET emote = 1 WHERE entry = 2000005243;
UPDATE db_script_string SET emote = 16 WHERE entry = 2000005244;
-- Miss Danna <School Mistress> c.3513
UPDATE creature_movement SET script_id = 351301, textid1 = 0, emote = 0 WHERE id = 84028 AND point = 20;
UPDATE creature_movement SET emote = 0 WHERE id = 84028 AND point = 21;
UPDATE creature_movement SET textid1 = 0, emote = 0 WHERE id = 84028 AND point = 23;
UPDATE creature_movement SET textid1 = 0, emote = 0 WHERE id = 84028 AND point = 24;
UPDATE creature_movement SET textid1 = 0, emote = 0 WHERE id = 84028 AND point = 24;
UPDATE creature_movement SET script_id = 351302, textid1 = 0 WHERE id = 84028 AND point = 38;
UPDATE creature_movement SET script_id = 351303, textid1 = 0 WHERE id = 84028 AND point = 39;
UPDATE creature_movement SET emote = 0 WHERE id = 84028 AND point = 40;
UPDATE creature_movement SET script_id = 351304, textid1 = 0, emote = 0 WHERE id = 84028 AND point = 41;
UPDATE creature_movement SET emote = 0 WHERE id = 84028 AND point = 43;
UPDATE creature_movement SET script_id = 351305, textid1 = 0 WHERE id = 84028 AND point = 57;
UPDATE creature_movement SET script_id = 351306, textid1 = 0 WHERE id = 84028 AND point = 58;
UPDATE creature_movement SET script_id = 351307, textid1 = 0, emote = 0 WHERE id = 84028 AND point = 59;
UPDATE creature_movement SET emote = 0 WHERE id = 84028 AND point = 60;
UPDATE creature_movement SET emote = 0 WHERE id = 84028 AND point = 61;
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 351301 AND 351307; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(351301,2,0,0,0,0,0,0,2000005134,0,0,0,0,0,0,0,''),
(351301,11,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(351301,30,0,0,0,0,0,0,2000005135,0,0,0,0,0,0,0,''),
(351301,40,0,0,0,0,0,0,2000005136,0,0,0,0,0,0,0,''),
(351302,0,0,0,0,0,0,0,2000005137,0,0,0,0,0,0,0,''),
(351303,0,0,0,0,0,0,0,2000005138,0,0,0,0,0,0,0,''),
(351304,1,0,0,0,0,0,0,2000005139,0,0,0,0,0,0,0,''),
(351304,15,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(351305,1,0,0,0,0,0,0,2000005140,0,0,0,0,0,0,0,''),
(351306,1,0,0,0,0,0,0,2000005141,0,0,0,0,0,0,0,''),
(351307,1,0,0,0,0,0,0,2000005142,0,0,0,0,0,0,0,''),
(351307,9,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(351307,17,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Jimmy c.3512
UPDATE creature_movement SET script_id = 351201, textid1 = 0, emote = 0 WHERE id = 87082 AND point = 24;
DELETE FROM dbscripts_on_creature_movement WHERE id = 351201; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(351201,1,0,0,0,0,0,0,2000005167,0,0,0,0,0,0,0,'');
UPDATE db_script_string SET emote = 1 WHERE entry = 2000005167;
-- Steven c.3511
UPDATE creature_movement SET script_id = 351101, textid1 = 0 WHERE id = 87089 AND point = 42;
UPDATE creature_movement SET emote = 0 WHERE id = 87089 AND point = 43;
DELETE FROM dbscripts_on_creature_movement WHERE id = 351101; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(351101,9,0,0,0,0,0,0,2000005168,0,0,0,0,0,0,0,'');
UPDATE db_script_string SET emote = 1 WHERE entry IN (2000005134,2000005135,2000005136,2000005139,2000005142,2000005167,2000005168);
-- Neophyte Narama c.25644
DELETE FROM creature_movement WHERE id = 48381;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(48381,1,1758.71,924.822,15.5845,0,0,0,0,0,0,0,0,0,0,6.18404,0,0),
(48381,2,1769.22,924.316,15.5845,0,0,0,0,0,0,0,0,0,0,6.12513,0,0),
(48381,3,1771.61,922.168,15.5893,10000,2564401,0,0,0,0,0,0,0,0,5.57929,0,0),
(48381,4,1769.97,924.453,15.5861,0,0,0,0,0,0,0,0,0,0,2.85395,0,0),
(48381,5,1758.45,924.509,15.5847,0,0,0,0,0,0,0,0,0,0,3.17989,0,0),
(48381,6,1757.05,925.586,15.5831,10000,2564401,0,0,0,0,0,0,0,0,2.48482,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2564401; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2564401,3,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(2564401,8,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND');
UPDATE creature_template_addon SET bytes1 = 0 WHERE entry = 25644;
-- Anchorite Elbadon c.25639
DELETE FROM creature_movement WHERE id = 48391;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(48391,1,1761.42,930.421,15.5735,25000,2563901,0,0,0,0,0,0,0,0,4.74014,0,0),
(48391,2,1777.23,930.708,15.5721,0,0,0,0,0,0,0,0,0,0,6.23632,0,0),
(48391,3,1777.12,925.108,15.5831,0,0,0,0,0,0,0,0,0,0,4.64981,0,0),
(48391,4,1772.16,919.292,15.5941,25000,2563901,0,0,0,0,0,0,0,0,1.61009,0,0),
(48391,5,1754.3,918.357,15.597,0,0,0,0,0,0,0,0,0,0,4.71238,0,0),
(48391,6,1752.33,918.417,15.597,0,0,0,0,0,0,0,0,0,0,1.63388,0,0),
(48391,7,1752.1,929.531,15.5757,0,0,0,0,0,0,0,0,0,0,1.59069,0,0),
(48391,8,1755.95,930.602,15.5723,25000,2563901,0,0,0,0,0,0,0,0,3.14159,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2563901; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2563901,3,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(2563901,11,15,45859,0,25661,10,0x01,0,0,0,0,0,0,0,0,'cast 45859 on buddy'),
(2563901,15,0,0,0,0,0,0,2000005676,2000005677,2000005678,0,0,0,0,0,''),
(2563901,23,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND');
DELETE FROM db_script_string WHERE entry IN (2000005676,2000005677,2000005678); -- missing text added
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005676,'My the light bless you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005677,'Your wounds are severe, but you will live.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005678,'Rest now, you have fought well today.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);
-- Sunspring Post Orphan c.18296
UPDATE creature_movement SET script_id = 1829601, textid1 = 0 WHERE id = 84718 AND point = 5;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1829601; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1829601,1,0,0,0,0,0,0,2000005147,0,0,0,0,0,0,0,'');
-- Underwater Construction Worker c.28573
UPDATE creature_movement SET script_id = 2857301, emote = 0 WHERE id = 85178 AND point = 1;
UPDATE creature_movement SET script_id = 2857301, emote = 0 WHERE id = 85178 AND point = 6;
DELETE FROM dbscripts_on_creature_movement WHERE id = 2857301; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2857301,2,1,233,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2857301,28,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Shatterspear Troll c.10919
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85375 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85375 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85378 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85378 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85379 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85379 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85380 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85380 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85529 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85529 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85530 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85530 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85545 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85545 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85546 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85546 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85547 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85547 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85548 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85548 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85549 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85549 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85550 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85550 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85551 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85551 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85552 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85552 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85553 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85553 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85554 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85554 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85555 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85555 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85561 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85561 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85562 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85562 AND point = 2;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1091901; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1091901,0,1,10,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Shatterspear Drummer c.11196
UPDATE creature_movement SET script_id = 1119601, emote = 0 WHERE id = 85558 AND point = 1;
UPDATE creature_movement SET script_id = 1119601, emote = 0 WHERE id = 85558 AND point = 3;
UPDATE creature_movement SET script_id = 1119601, emote = 0 WHERE id = 85559 AND point = 1;
UPDATE creature_movement SET waittime = 3500 WHERE id = 85559 AND point = 2;
UPDATE creature_movement SET script_id = 1119601, emote = 0 WHERE id = 85559 AND point = 3;
UPDATE creature_movement SET script_id = 1119601, emote = 0 WHERE id = 85560 AND point = 1;
UPDATE creature_movement SET script_id = 1119601, emote = 0 WHERE id = 85560 AND point = 3;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1119601; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1119601,0,1,36,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Matron Drakia c.18302
UPDATE creature_movement SET script_id = 1830201, textid1 = 0, emote = 0 WHERE id = 65638 AND point = 1;
UPDATE creature_movement SET script_id = 1830202, emote = 0 WHERE id = 65638 AND point = 3;
UPDATE creature_movement SET script_id = 1830202, emote = 0 WHERE id = 65638 AND point = 6;
UPDATE creature_movement SET script_id = 1830202, emote = 0 WHERE id = 65638 AND point = 7;
UPDATE creature_movement SET script_id = 1830202, emote = 0 WHERE id = 65638 AND point = 8;
UPDATE creature_movement SET script_id = 1830202, emote = 0 WHERE id = 65638 AND point = 9;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1830201,1830202); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1830201,3,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1830201,10,0,0,0,0,0,0,2000005041,0,0,0,0,0,0,0,''),
(1830201,28,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1830202,3,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1830202,12,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND');
-- Borgrim Stouthammer <Explorers' League> c.21151
DELETE FROM creature_movement WHERE id = 74215;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(74215,1,2069.85,6816.89,175.598,12500,0,0,0,0,0,0,0,0,0,3.87498,0,0),
(74215,2,2069.85,6816.89,175.598,3000,2115101,0,0,0,0,0,0,0,0,3.87498,0,0),
(74215,3,2069.85,6816.89,175.598,15000,0,0,0,0,0,0,0,0,0,3.87498,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2115101; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2115101,1,1,7,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Bronwyn Stouthammer <Explorers' League> c.21197
DELETE FROM creature_movement WHERE id = 74332;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(74332,1,2055.93,6816.51,175.598,40000,0,0,0,0,0,0,0,0,0,1.96886,0,0),
(74332,2,2055.93,6816.51,175.598,24000,2119701,0,0,0,0,0,0,0,0,1.96886,0,0),
(74332,3,2055.93,6816.51,175.598,180000,0,0,0,0,0,0,0,0,0,1.96886,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2119701; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2119701,0,31,21151,50,0,0,0,0,0,0,0,0,0,0,0,''), -- let check if creature is alive
(2119701,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2119701,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2119701,1,3,0,0,0,0,0,0,0,0,0,0,0,0,0.0192242,''),
(2119701,5,0,0,0,0,0,0,2000005679,0,0,0,0,0,0,0,''),
(2119701,10,0,0,0,21151,50,7,2000005680,2000005056,0,0,0,0,0,0,'force buddy to: say text'), -- 'old text id here' only 1st one is new.
(2119701,15,0,0,0,0,0,0,2000005681,0,0,0,0,0,0,0,''),
(2119701,18,0,0,0,21151,50,7,2000005682,0,0,0,0,0,0,0,'force buddy to: say text'),
(2119701,20,3,0,0,0,0,0,0,0,0,0,0,0,0,1.96886,''),
(2119701,22,1,69,0,0,0,0,0,0,0,0,0,0,0,0,'');
UPDATE creature_template_addon SET emote = 69 WHERE entry = 21197;
UPDATE db_script_string SET emote = 6 WHERE entry = 2000005056;
DELETE FROM db_script_string WHERE entry IN (2000005679,2000005680,2000005681,2000005682); -- missing text added
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005679,'Borgrim, this is no time for drinking. We just got here. We need to get settled in.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,6,NULL),
(2000005680,'I thought this was going to be our chance to get away from it all? Our vacation?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,6,NULL),
(2000005681,'Men!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005682,'Women!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);
-- Innkeeper Coryth Stoktron <Innkeeper> c.18907
UPDATE creature_movement SET script_id = 1890701, emote = 0 WHERE id = 67880 AND point = 2;
UPDATE creature_movement SET script_id = 1890702, emote = 0 WHERE id = 67880 AND point = 4;
UPDATE creature_movement SET script_id = 1890701, emote = 0 WHERE id = 67880 AND point = 6;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1890701,1890702); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1890701,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1890702,0,1,6,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Naka <Cooking Trainer & Supplies> c.18993
UPDATE creature_movement SET script_id = 1899301, emote = 0 WHERE id = 68273 AND point = 1;
UPDATE creature_movement SET script_id = 1899301, emote = 0 WHERE id = 68273 AND point = 3;
UPDATE creature_movement SET script_id = 1899302, emote = 0 WHERE id = 68273 AND point = 5;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1899301,1899302); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1899301,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1899302,0,1,6,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Warden Moi'bff Jill c.18408
UPDATE creature_movement SET script_id = 1840801, textid1 = 0, textid2 = 0, emote = 0  WHERE id = 65800 AND point = 6;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1840801; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1840801,0,1,173,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1840801,10,0,0,0,0,0,0,2000005042,2000005219,0,0,0,0,0,0,''),
(1840801,27,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Allerian Defender c.18999
DELETE FROM creature_movement WHERE id IN (68291,68293);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(68293,1,-2969.74,3975.3,1.29151,60000,0,0,0,0,0,0,0,0,0,1.46608,0,0),
(68293,2,-2969.74,3975.3,1.29151,20000,1899901,0,0,0,0,0,0,0,0,1.46608,0,0),
(68293,3,-2969.74,3975.3,1.29151,180000,0,0,0,0,0,0,0,0,0,1.46608,0,0);
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid = 68291;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1899901; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1899901,5,0,0,0,0,0,0,2000005683,2000005046,2000005684,2000005685,0,0,0,0,''), -- 2000005046 allready in DB (do not change it)
(1899901,10,0,0,0,18999,20,7,2000005686,2000005047,2000005687,2000005688,0,0,0,0,'force buddy to: say text'); -- 2000005047 allready in DB (do not change it)
DELETE FROM db_script_string WHERE entry BETWEEN 2000005683 AND 2000005688; -- missing text added
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005683,'Hey, did you read the bounty on this wanted poster?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,6,NULL),
(2000005684,'This wanted poster says that they\'re offering gold to these so-called adventurers to go kill things. Isn\'t that what we do? I don\'t think I\'m being paid enough!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005685,'This poster has a bounty on bonelashers. You think I should do that?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,6,NULL),
(2000005686,'Is that wanted poster all that you\'re going to talk about today?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,6,NULL),
(2000005687,'I could use the extra money.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005688,'The bonelashers of the wastes are no laughing matter. I hear they carry diseases!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL);
UPDATE db_script_string SET emote = 1 WHERE entry IN (2000005046,2000005047);
-- Allerian Peasant c.19147
UPDATE creature_movement SET waittime = 4000, script_id = 1914701, emote = 0 WHERE id = 68468 AND point = 3;
UPDATE creature_movement SET waittime = 4000, script_id = 1914701, emote = 0 WHERE id = 68468 AND point = 9;
UPDATE creature_movement SET script_id = 1914702, emote = 0 WHERE id = 68469 AND point = 2;
UPDATE creature_movement SET waittime = 4000, script_id = 1914701, emote = 0 WHERE id = 68469 AND point = 6;
UPDATE creature_movement SET waittime = 4000, script_id = 1914701, emote = 0 WHERE id = 68470 AND point = 1;
UPDATE creature_movement SET waittime = 4000, script_id = 1914701, emote = 0 WHERE id = 68470 AND point = 6;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1914701,1914702); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1914701,1,1,381,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1914701,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1914702,0,1,69,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Dockmaster c.6846
UPDATE creature_movement SET script_id = 684601, textid1 = 0 WHERE id = 80737 AND point = 6;
DELETE FROM dbscripts_on_creature_movement WHERE id = 684601; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(684601,1,0,0,0,0,0,0,2000005132,0,0,0,0,0,0,0,'');
UPDATE db_script_string SET emote = 5 WHERE entry = 2000005132;
-- Dawnblade Blood Knight c.24976
UPDATE creature_movement SET waittime = 5000, script_id = 2497601, textid1 = 0 WHERE id = 94309 AND point = 1;
UPDATE creature_movement SET script_id = 2497602, spell = 0 WHERE id = 94309 AND point = 2;
UPDATE creature_movement SET waittime = 5000, script_id = 2497601, textid1 = 0 WHERE id = 94325 AND point = 1;
UPDATE creature_movement SET script_id = 2497602, spell = 0 WHERE id = 94325 AND point = 2;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2497601,2497602); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2497601,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2497601,2,1,25,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2497601,5,0,0,0,0,0,0,2000005200,0,0,0,0,0,0,0,''),
(2497602,1,15,45105,0,0,0,0,0,0,0,0,0,0,0,0,'cast 45105'),
(2497602,2,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN OFF');
-- Whirligig Wafflefry <Gnomish Inventor> c.25885 and Harbinger Haronem c.19475
DELETE FROM creature_movement WHERE id IN (96594,96592);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(96594,1,-1918.05,5334.41,-12.428,120000,0,0,0,0,0,0,0,0,0,3.35103,0,0),
(96594,2,-1918.05,5334.41,-12.428,20000,2588501,0,0,0,0,0,0,0,0,3.35103,0,0),
(96594,3,-1918.05,5334.41,-12.428,120000,0,0,0,0,0,0,0,0,0,3.35103,0,0),
(96594,4,-1918.05,5334.41,-12.428,60000,2588502,0,0,0,0,0,0,0,0,3.35103,0,0),
(96594,5,-1918.05,5334.41,-12.428,60000,2588503,0,0,0,0,0,0,0,0,3.35103,0,0),
(96594,6,-1918.05,5334.41,-12.428,60000,2588504,0,0,0,0,0,0,0,0,3.35103,0,0),
(96594,7,-1918.05,5334.41,-12.428,60000,2588505,0,0,0,0,0,0,0,0,3.35103,0,0),
(96594,8,-1918.05,5334.41,-12.428,300000,0,0,0,0,0,0,0,0,0,3.35103,0,0);
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid = 96592;
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2588501 AND 2588505; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2588501,5,0,0,0,0,0,0,2000005201,0,0,0,0,0,0,0,''),
(2588501,7,3,0,0,19475,50,7,0,0,0,0,0,0,0,0.452172,'force buddy to move'),
(2588501,10,0,0,0,19475,50,7,2000005205,0,0,0,0,0,0,0,'force buddy to: say text'),
(2588501,15,3,0,0,19475,50,7,0,0,0,0,0,0,0,3.4383,'force buddy to move'),
(2588502,5,0,0,0,0,0,0,2000005206,0,0,0,0,0,0,0,''),
(2588503,5,0,0,0,0,0,0,2000005207,0,0,0,0,0,0,0,''),
(2588504,5,0,0,0,0,0,0,2000005208,0,0,0,0,0,0,0,''),
(2588505,5,0,0,0,0,0,0,2000005209,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry = 2000005201; -- this was duplicate with 2000005200 so i'll reuse it.
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005201,'Hey, harbringer, how\'s that research coming along? There might be an Ultra-Kinetic Waffle Iron in it for you if you\'re prompt with the results!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL);
UPDATE db_script_string SET emote = 6 WHERE entry = 2000005205;
UPDATE db_script_string SET emote = 1 WHERE entry IN (2000005206,2000005207,2000005208,2000005209);
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
-- Jero'me <Mo'rrisroe's Minion> c.19882
DELETE FROM creature_movement WHERE id = 71028;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 71028;
UPDATE creature_template SET MovementType = 2 WHERE entry = 19882; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 19882;
INSERT INTO creature_movement_template VALUES
(19882,1,9369.102539,-7271.153320,6.438106,0,0,0,0,0,0,0,0,0,0,5.085822,0,0),
(19882,2,9369.939453,-7282.010742,6.028701,0,0,0,0,0,0,0,0,0,0,4.553330,0,0),
(19882,3,9367.662109,-7287.407715,6.043704,0,0,0,0,0,0,0,0,0,0,4.564327,0,0),
(19882,4,9366.739258,-7291.028320,6.033945,0,0,0,0,0,0,0,0,0,0,4.897333,0,0),
(19882,5,9367.386719,-7293.759766,6.077849,0,0,0,0,0,0,0,0,0,0,5.193422,0,0),
(19882,6,9368.846680,-7295.332031,6.055447,0,0,0,0,0,0,0,0,0,0,5.785610,0,0),
(19882,7,9370.839844,-7296.559570,6.002626,55000,1988202,0,0,0,0,0,0,0,0,6.148458,0,0),
(19882,8,9373.992188,-7295.152832,6.033075,0,0,0,0,0,0,0,0,0,0,0.843879,0,0),
(19882,9,9375.615234,-7291.850586,6.082792,0,0,0,0,0,0,0,0,0,0,1.828768,0,0),
(19882,10,9374.558594,-7288.240234,6.066258,0,0,0,0,0,0,0,0,0,0,2.287441,0,0),
(19882,11,9371.155273,-7283.691406,6.009543,0,0,0,0,0,0,0,0,0,0,1.835837,0,0),
(19882,12,9371.009766,-7271.752441,6.361491,0,0,0,0,0,0,0,0,0,0,1.140760,0,0),
(19882,13,9372.469727,-7269.143555,6.486478,0,0,0,0,0,0,0,0,0,0,0.796755,0,0),
(19882,14,9377.165039,-7264.609375,6.426595,0,1988201,0,0,0,0,0,0,0,0,1.187883,0,0),
(19882,15,9373.852539,-7267.435059,6.522054,0,0,0,0,0,0,0,0,0,0,3.550361,0,0),
(19882,16,9371.667969,-7268.265137,6.558457,0,0,0,0,0,0,0,0,0,0,4.092286,0,0),
(19882,17,9370.189453,-7271.831055,6.386025,0,0,0,0,0,0,0,0,0,0,4.233657,0,0),
(19882,18,9369.839844,-7275.256836,6.207770,35000,1988203,0,0,0,0,0,0,0,0,4.526608,0,0),
(19882,19,9370.421875,-7270.666992,6.410407,0,0,0,0,0,0,0,0,0,0,1.083419,0,0),
(19882,20,9374.119141,-7267.657715,6.508181,0,0,0,0,0,0,0,0,0,0,0.982103,0,0),
(19882,21,9376.311523,-7265.423340,6.455277,0,0,0,0,0,0,0,0,0,0,1.425853,0,0),
(19882,22,9376.176758,-7262.510742,6.530025,0,0,0,0,0,0,0,0,0,0,2.065953,0,0),
(19882,23,9374.440430,-7260.192871,6.534329,55000,1988202,0,0,0,0,0,0,0,0,2.813652,0,0),
(19882,24,9371.209961,-7259.106445,6.511824,0,0,0,0,0,0,0,0,0,0,3.709792,0,0),
(19882,25,9367.897461,-7261.349121,6.499341,0,0,0,0,0,0,0,0,0,0,4.533675,0,0),
(19882,26,9367.320313,-7264.825195,6.546020,0,0,0,0,0,0,0,0,0,0,5.035542,0,0),
(19882,27,9369.051758,-7269.129883,6.489475,0,0,0,0,0,0,0,0,0,0,4.761436,0,0),
(19882,28,9369.851563,-7283.979492,6.017700,0,1988201,0,0,0,0,0,0,0,0,4.341251,0,0),
(19882,29,9367.793945,-7288.122559,6.054633,0,0,0,0,0,0,0,0,0,0,4.638915,0,0),
(19882,30,9366.956055,-7292.995117,6.050140,0,0,0,0,0,0,0,0,0,0,5.143135,0,0),
(19882,31,9369.373047,-7296.413086,6.028101,0,0,0,0,0,0,0,0,0,0,6.036128,0,0),
(19882,32,9373.168945,-7295.947266,5.989172,0,0,0,0,0,0,0,0,0,0,0.751967,0,0),
(19882,33,9375.589844,-7292.797363,6.073355,0,0,0,0,0,0,0,0,0,0,1.700728,0,0),
(19882,34,9375.041992,-7289.183594,6.063882,0,0,0,0,0,0,0,0,0,0,2.262288,0,0),
(19882,35,9371.691406,-7283.854004,6.024440,0,0,0,0,0,0,0,0,0,0,1.749422,0,0),
(19882,36,9370.669922,-7277.214844,6.121726,0,0,0,0,0,0,0,0,0,0,1.621403,0,0),
(19882,37,9370.479492,-7273.188477,6.290309,0,0,0,0,0,0,0,0,0,0,1.249909,0,0),
(19882,38,9373.418945,-7268.357910,6.507642,0,1988201,0,0,0,0,0,0,0,0,0.867420,0,0),
(19882,39,9375.408203,-7261.919922,6.549405,0,0,0,0,0,0,0,0,0,0,2.264647,0,0),
(19882,40,9372.599609,-7259.901855,6.525498,0,0,0,0,0,0,0,0,0,0,3.263674,0,0),
(19882,41,9368.984375,-7260.939941,6.542140,0,0,0,0,0,0,0,0,0,0,3.976816,0,0),
(19882,42,9367.355469,-7262.934570,6.537172,0,0,0,0,0,0,0,0,0,0,4.726868,0,0),
(19882,43,9368.758789,-7268.067383,6.530116,0,0,0,0,0,0,0,0,0,0,4.860382,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1988201 AND 1988203; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1988201,1,0,0,0,0,0,0,2000005052,2000005053,2000005054,2000005055,0,0,0,0,''),
(1988202,1,0,0,0,0,0,0,2000000342,0,0,0,0,0,0,0,''),
(1988202,2,15,34664,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1988202,50,14,34664,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1988202,51,0,0,0,0,0,0,2000000343,0,0,0,0,0,0,0,''),
(1988203,2,28,1,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_SIT'),
(1988203,30,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1988203,31,0,0,0,0,0,0,2000005052,2000005053,2000005054,2000005055,0,0,0,0,'');
UPDATE db_script_string SET emote = 1 WHERE entry = 2000005052;
UPDATE db_script_string SET emote = 71 WHERE entry = 2000005053;
UPDATE db_script_string SET content_default = 'Spare some change for a starving artist?', emote = 1 WHERE entry = 2000005054;
UPDATE db_script_string SET content_default = 'What up son! Wait....is anyone there? ', emote = 6 WHERE entry = 2000005055;
DELETE FROM db_script_string WHERE entry BETWEEN 2000000342 AND 2000000343;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000000342,'%s falls into drunken sleep.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000000343,'%s wakes up and slowly rises to his feet.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL);
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

-- ----------------
-- UNIT_CLASS UPDATE - PART OF STATS SYSTEM - NOT COMPLETED YET
-- ----------------

UPDATE creature_template SET UnitClass = 2 WHERE entry = 1840; -- Grand Inquisitor Isillien
UPDATE creature_template SET UnitClass = 2 WHERE entry = 1860; -- Voidwalker    
UPDATE creature_template SET UnitClass = 2 WHERE entry = 1896; -- Moonrage Elder 
UPDATE creature_template SET UnitClass = 8 WHERE entry = 2160; -- Gravelflint Geomancer
UPDATE creature_template SET UnitClass = 2 WHERE entry = 2283; -- Ravenclaw Regent
UPDATE creature_template SET UnitClass = 8 WHERE entry = 2453; -- Lo\'Grosh
UPDATE creature_template SET UnitClass = 2 WHERE entry = 2605; -- Zalas Witherbark
UPDATE creature_template SET UnitClass = 8 WHERE entry = 2638; -- Syndicate Spectre
UPDATE creature_template SET UnitClass = 2 WHERE entry = 2755; -- Myzrael
UPDATE creature_template SET UnitClass = 2 WHERE entry = 2887; -- Prismatic Exile
UPDATE creature_template SET UnitClass = 8 WHERE entry = 3569; -- Bogling
UPDATE creature_template SET UnitClass = 2 WHERE entry = 3672; -- Boahn
UPDATE creature_template SET UnitClass = 2 WHERE entry = 3773; -- Akkrilus
UPDATE creature_template SET UnitClass = 2 WHERE entry = 3799; -- Severed Druid
UPDATE creature_template SET UnitClass = 8 WHERE entry = 3899; -- Balizar the Umbrage
UPDATE creature_template SET UnitClass = 2 WHERE entry = 3900; -- Caedakar the Vicious
UPDATE creature_template SET UnitClass = 2 WHERE entry = 4842; -- Earthcaller Halmgar
UPDATE creature_template SET UnitClass = 2 WHERE entry = 4978; -- Aku\'mai Servant
UPDATE creature_template SET UnitClass = 2 WHERE entry = 5893; -- Minor Manifestation of Fire
UPDATE creature_template SET UnitClass = 2 WHERE entry = 5894; -- Corrupt Minor Manifestation of Water
UPDATE creature_template SET UnitClass = 2 WHERE entry = 5916; -- Sentinel Amarassan
UPDATE creature_template SET UnitClass = 2 WHERE entry = 6047; -- Aqua Guardian	
UPDATE creature_template SET UnitClass = 2 WHERE entry = 6070; -- Maraudine Khan Advisor
UPDATE creature_template SET UnitClass = 2 WHERE entry = 6228; -- Dark Iron Ambassador
UPDATE creature_template SET UnitClass = 2 WHERE entry = 6490; -- Azshir the Sleepless
UPDATE creature_template SET UnitClass = 2 WHERE entry = 6550; -- Mana Surge
UPDATE creature_template SET UnitClass = 2 WHERE entry = 7411; -- Spirit of Sathrah 
UPDATE creature_template SET UnitClass = 2 WHERE entry = 7734; -- Ilifar
UPDATE creature_template SET UnitClass = 2 WHERE entry = 7735; -- Felcular
UPDATE creature_template SET UnitClass = 2 WHERE entry = 8075; -- Edana Hatetalon  
UPDATE creature_template SET UnitClass = 8 WHERE entry = 8202; -- Cyclok the Mad
UPDATE creature_template SET UnitClass = 2 WHERE entry = 8217; -- Mith\'rethis the Enchanter
UPDATE creature_template SET UnitClass = 8 WHERE entry = 8394; -- Roland Geardabbler           
UPDATE creature_template SET UnitClass = 8 WHERE entry = 8578; -- Magus Rimtori
UPDATE creature_template SET UnitClass = 2 WHERE entry = 9031; -- Anub\'shiah
UPDATE creature_template SET UnitClass = 2 WHERE entry = 9437; -- Dark Keeper Vorfalk
UPDATE creature_template SET UnitClass = 2 WHERE entry = 9438; -- Dark Keeper Bethek
UPDATE creature_template SET UnitClass = 2 WHERE entry = 9439; -- Dark Keeper Uggel
UPDATE creature_template SET UnitClass = 2 WHERE entry = 9441; -- Dark Keeper Zimrel
UPDATE creature_template SET UnitClass = 2 WHERE entry = 9442; -- Dark Keeper Ofgut
UPDATE creature_template SET UnitClass = 2 WHERE entry = 9443; -- Dark Keeper Pelver
UPDATE creature_template SET UnitClass = 2 WHERE entry = 9523; -- Kolkar Stormseer
UPDATE creature_template SET UnitClass = 2 WHERE entry = 9604; -- Gorgon\'och
UPDATE creature_template SET UnitClass = 2 WHERE entry = 10373; -- Xabraxxis
UPDATE creature_template SET UnitClass = 2 WHERE entry = 10389; -- Wrath Phantom
UPDATE creature_template SET UnitClass = 8 WHERE entry = 10393; -- Skul
UPDATE creature_template SET UnitClass = 2 WHERE entry = 10584; -- Urok Doomhowl
UPDATE creature_template SET UnitClass = 2 WHERE entry = 10602; -- Urok Ogre Magus
UPDATE creature_template SET UnitClass = 2 WHERE entry = 11143; -- Postmaster Malown
UPDATE creature_template SET UnitClass = 2 WHERE entry = 11497; -- The Razza
UPDATE creature_template SET UnitClass = 2 WHERE entry = 11713; -- Blackwood Tracker
UPDATE creature_template SET UnitClass = 2 WHERE entry = 11714; -- Marosh the Devious
UPDATE creature_template SET UnitClass = 2 WHERE entry = 12126; -- Lord Tirion Fordring
UPDATE creature_template SET UnitClass = 2 WHERE entry = 12128; -- Crimson Elite
UPDATE creature_template SET UnitClass = 2 WHERE entry = 12238; -- Zaetar\'s Spirit
UPDATE creature_template SET UnitClass = 8 WHERE entry = 12319; -- Burning Blade Toxicologist
UPDATE creature_template SET UnitClass = 2 WHERE entry = 12321; -- Stormscale Toxicologist
UPDATE creature_template SET UnitClass = 8 WHERE entry = 12339; -- Demetria
UPDATE creature_template SET UnitClass = 2 WHERE entry = 12352; -- Scarlet Trooper
UPDATE creature_template SET UnitClass = 2 WHERE entry = 12876; -- Baron Aquanis
UPDATE creature_template SET UnitClass = 2 WHERE entry = 12976; -- Kolkar Waylayer
UPDATE creature_template SET UnitClass = 2 WHERE entry = 13537; -- Seasoned Coldmine Surveyor
UPDATE creature_template SET UnitClass = 2 WHERE entry = 13538; -- Veteran Coldmine Surveyor
UPDATE creature_template SET UnitClass = 2 WHERE entry = 13540; -- Seasoned Irondeep Explorer
UPDATE creature_template SET UnitClass = 2 WHERE entry = 13716; -- Celebras the Redeemed
UPDATE creature_template SET UnitClass = 2 WHERE entry = 14275; -- Tamra Stormpike
UPDATE creature_template SET UnitClass = 8 WHERE entry = 14487; -- Gluggle
UPDATE creature_template SET UnitClass = 2 WHERE entry = 14506; -- Lord Hel\'nurath
UPDATE creature_template SET UnitClass = 2 WHERE entry = 14511; -- Shadowed Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 14512; -- Corrupted Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 14514; -- Banal Spirit
UPDATE creature_template SET UnitClass = 2 WHERE entry = 14516; -- Death Knight Darkreaver
UPDATE creature_template SET UnitClass = 2 WHERE entry = 14518; -- Aspect of Banality
UPDATE creature_template SET UnitClass = 1 WHERE entry = 14519; -- Aspect of Corruption
UPDATE creature_template SET UnitClass = 2 WHERE entry = 14521; -- Aspect of Shadow
UPDATE creature_template SET UnitClass = 2 WHERE entry = 15206; -- The Duke of Cynders
UPDATE creature_template SET UnitClass = 1 WHERE entry = 15211; -- Azure Templar
UPDATE creature_template SET UnitClass = 2 WHERE entry = 15260; -- Demented Druid Spirit
UPDATE creature_template SET UnitClass = 2 WHERE entry = 15449; -- Hive\'Zora Abomination
UPDATE creature_template SET UnitClass = 2 WHERE entry = 15495; -- Nighthaven Defender
UPDATE creature_template SET UnitClass = 8 WHERE entry = 15607; -- Elder Farwhisper
UPDATE creature_template SET UnitClass = 2 WHERE entry = 15620; -- Hive\'Regal Hunter-Killer
UPDATE creature_template SET UnitClass = 8 WHERE entry = 15623; -- Xandivious
UPDATE creature_template SET UnitClass = 2 WHERE entry = 15634; -- Priestess of the Moon
UPDATE creature_template SET UnitClass = 8 WHERE entry = 15958; -- Gharsul the Remorseless
UPDATE creature_template SET UnitClass = 8 WHERE entry = 16033; -- Bodley
UPDATE creature_template SET UnitClass = 2 WHERE entry = 16073; -- Spirit of Lord Valthalak
UPDATE creature_template SET UnitClass = 2 WHERE entry = 16080; -- Mor Grayhoof
UPDATE creature_template SET UnitClass = 2 WHERE entry = 16097; -- Isalien
UPDATE creature_template SET UnitClass = 2 WHERE entry = 16101; -- Jarien
UPDATE creature_template SET UnitClass = 2 WHERE entry = 16102; -- Sothos
UPDATE creature_template SET UnitClass = 2 WHERE entry = 16104; -- Spirit of Sothos
UPDATE creature_template SET UnitClass = 2 WHERE entry = 16118; -- Kormok
UPDATE creature_template SET UnitClass = 2 WHERE entry = 16120; -- Bone Mage
UPDATE creature_template SET UnitClass = 2 WHERE entry = 16237; -- Magister Sylastor
UPDATE creature_template SET UnitClass = 2 WHERE entry = 16254; -- Field Marshal Chambers
UPDATE creature_template SET UnitClass = 2 WHERE entry = 16358; -- Kel\'gash the Wicked
UPDATE creature_template SET UnitClass = 2 WHERE entry = 16994; -- Draenei Anchorite
UPDATE creature_template SET UnitClass = 2 WHERE entry = 16996; -- Draenei Vindicator
UPDATE creature_template SET UnitClass = 2 WHERE entry = 17086; -- Enraged Wraith
UPDATE creature_template SET UnitClass = 2 WHERE entry = 17207; -- Naias
UPDATE creature_template SET UnitClass = 2 WHERE entry = 17540; -- Fiendish Hound
UPDATE creature_template SET UnitClass = 8 WHERE entry = 17612; -- Quel\'dorei Magewraith
UPDATE creature_template SET UnitClass = 2 WHERE entry = 17652; -- Image of Arcanagos
UPDATE creature_template SET UnitClass = 2 WHERE entry = 17716; -- Sangrias Stillblade
UPDATE creature_template SET UnitClass = 2 WHERE entry = 17809; -- Champion Bloodwrath
UPDATE creature_template SET UnitClass = 2 WHERE entry = 17810; -- Champion Lightrend
UPDATE creature_template SET UnitClass = 2 WHERE entry = 17811; -- Champion Swiftblade
UPDATE creature_template SET UnitClass = 2 WHERE entry = 17812; -- Champion Sunstriker
UPDATE creature_template SET UnitClass = 2 WHERE entry = 17870; -- Angered Nether-wraith
UPDATE creature_template SET UnitClass = 2 WHERE entry = 17879; -- Chrono Lord Deja
UPDATE creature_template SET UnitClass = 8 WHERE entry = 17903; -- Skeleton Mage
UPDATE creature_template SET UnitClass = 2 WHERE entry = 17910; -- Gregor the Justiciar
UPDATE creature_template SET UnitClass = 2 WHERE entry = 17911; -- Cathela the Seeker
UPDATE creature_template SET UnitClass = 2 WHERE entry = 17912; -- Nemas the Arbiter
UPDATE creature_template SET UnitClass = 2 WHERE entry = 17913; -- Aelmar the Vanquisher
UPDATE creature_template SET UnitClass = 2 WHERE entry = 17914; -- Vicar Hieronymus
UPDATE creature_template SET UnitClass = 2 WHERE entry = 18056; -- Fiendish Hound (1)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 18154; -- Ssslith
UPDATE creature_template SET UnitClass = 8 WHERE entry = 18337; -- Priest Kath\'mar
UPDATE creature_template SET UnitClass = 2 WHERE entry = 18679; -- Vorakem Doomspeaker
UPDATE creature_template SET UnitClass = 2 WHERE entry = 18685; -- Okrek
UPDATE creature_template SET UnitClass = 2 WHERE entry = 18686; -- Doomsayer Jurim
UPDATE creature_template SET UnitClass = 2 WHERE entry = 18693; -- Speaker Mar\'grom
UPDATE creature_template SET UnitClass = 2 WHERE entry = 18698; -- Ever-Core the Punisher
UPDATE creature_template SET UnitClass = 8 WHERE entry = 18806; -- Solarium Priest
UPDATE creature_template SET UnitClass = 2 WHERE entry = 18994; -- Infinite Executioner
UPDATE creature_template SET UnitClass = 2 WHERE entry = 18995; -- Infinite Vanquisher
UPDATE creature_template SET UnitClass = 2 WHERE entry = 19493; -- Ekkorash the Inquisitor
UPDATE creature_template SET UnitClass = 2 WHERE entry = 19599; -- Void Servant
UPDATE creature_template SET UnitClass = 2 WHERE entry = 19878; -- Spirit of Exarch Maladaar
UPDATE creature_template SET UnitClass = 2 WHERE entry = 19963; -- Doomcryer
UPDATE creature_template SET UnitClass = 2 WHERE entry = 20021; -- Nether Whelp
UPDATE creature_template SET UnitClass = 2 WHERE entry = 20032; -- Bloodwarder Vindicator
UPDATE creature_template SET UnitClass = 2 WHERE entry = 20033; -- Astromancer
UPDATE creature_template SET UnitClass = 2 WHERE entry = 20034; -- Star Scryer
UPDATE creature_template SET UnitClass = 2 WHERE entry = 20036; -- Bloodwarder Squire
UPDATE creature_template SET UnitClass = 2 WHERE entry = 20037; -- Tempest Falconer
UPDATE creature_template SET UnitClass = 2 WHERE entry = 20043; -- Apprentice Star Scryer
UPDATE creature_template SET UnitClass = 2 WHERE entry = 20044; -- Novice Astromancer
UPDATE creature_template SET UnitClass = 2 WHERE entry = 20045; -- Nether Scryer
UPDATE creature_template SET UnitClass = 2 WHERE entry = 20046; -- Astromancer Lord
UPDATE creature_template SET UnitClass = 2 WHERE entry = 20047; -- Crimson Hand Battle Mage
UPDATE creature_template SET UnitClass = 2 WHERE entry = 20049; -- Crimson Hand Blood Knight
UPDATE creature_template SET UnitClass = 2 WHERE entry = 20050; -- Crimson Hand Inquisitor
UPDATE creature_template SET UnitClass = 8 WHERE entry = 20062; -- Grand Astromancer Capernian
UPDATE creature_template SET UnitClass = 2 WHERE entry = 20319; -- Spirit of Exarch Maladaar (1)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 20554; -- Arconus the Insatiable
UPDATE creature_template SET UnitClass = 1 WHERE entry = 20669; -- Shade of Mal\'druk
UPDATE creature_template SET UnitClass = 2 WHERE entry = 20738; -- Chrono Lord Deja (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 20740; -- Infinite Assassin (1)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 20742; -- Infinite Executioner (1)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 20743; -- Infinite Vanquisher (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 20744; -- Rift Lord (1)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 20795; -- Keeper of the Cistern
UPDATE creature_template SET UnitClass = 2 WHERE entry = 20905; -- Blazing Trickster
UPDATE creature_template SET UnitClass = 2 WHERE entry = 20909; -- Sulfuron Magma-Thrower
UPDATE creature_template SET UnitClass = 2 WHERE entry = 20912; -- Harbinger Skyriss
UPDATE creature_template SET UnitClass = 1 WHERE entry = 20992; -- Blood Guard Porung (1)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21027; -- Earthmender Wilda
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21029; -- Captured Water Spirit
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21104; -- Rift Keeper
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21138; -- Infinite Executioner
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21139; -- Infinite Vanquisher
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21183; -- Oronok Torn-heart
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21220; -- Coilfang Priestess
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21224; -- Tidewalker Depth-Seer
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21226; -- Tidewalker Shaman
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21228; -- Tidewalker Hydromancer
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21229; -- Greyheart Tidecaller
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21230; -- Greyheart Nether-Mage
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21255; -- Umberhowl
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21299; -- Coilfang Fathom-Witch
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21339; -- Coilfang Hate-Screamer
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21409; -- Envoy Icarius
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21410; -- Blood Lord Zarath
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21425; -- Nexus-King Salhadaar
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21465; -- David Wayne
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21589; -- Blazing Trickster (1)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21601; -- Harbinger Skyriss (1)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21616; -- Sulfuron Magma-Thrower (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 21685; -- Oronok Torn-heart
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21697; -- Infinite Chrono-Lord
UPDATE creature_template SET UnitClass = 8 WHERE entry = 21703; -- Corrupt Fire Totem
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21706; -- Corrupted Fire Elemental
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21707; -- Corrupted Air Elemental
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21708; -- Corrupted Earth Elemental
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21710; -- Uylaru
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21712; -- Infinite Chrono-Lord (1)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21735; -- Infernal Oversoul
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21790; -- Plexi
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21795; -- Shadowmoon Harbinger
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21806; -- Greyheart Spellbinder
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21865; -- Coilfang Ambusher
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21894; -- Xeleth
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21919; -- Coilfang Ambusher (1)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21925; -- Avatar of Sathal
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21938; -- Earthmender Splinthoof
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21964; -- Fathom-Guard Caribdis
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21965; -- Fathom-Guard Tidalvess
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21966; -- Fathom-Guard Sharkkis
UPDATE creature_template SET UnitClass = 2 WHERE entry = 21976; -- Area 52 Death Machine
UPDATE creature_template SET UnitClass = 2 WHERE entry = 22022; -- Arcane Burst
UPDATE creature_template SET UnitClass = 2 WHERE entry = 22076; -- Torloth the Magnificent
UPDATE creature_template SET UnitClass = 2 WHERE entry = 22166; -- Infinite Executioner (1)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 22168; -- Infinite Vanquisher (1)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 22170; -- Rift Keeper (1)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 22171; -- Rift Keeper (1)
UPDATE creature_template SET UnitClass = 8 WHERE entry = 22189; -- Marmot
UPDATE creature_template SET UnitClass = 2 WHERE entry = 22232; -- Grishna Arakkoa
UPDATE creature_template SET UnitClass = 2 WHERE entry = 22238; -- Serpentshrine Tidecaller
UPDATE creature_template SET UnitClass = 8 WHERE entry = 22299; -- Spore Strider                          -- no sure??????
UPDATE creature_template SET UnitClass = 8 WHERE entry = 22300; -- Spore Strider (1)                      -- both are wrong i guess
UPDATE creature_template SET UnitClass = 2 WHERE entry = 22408; -- Furious Nether-wraith
UPDATE creature_template SET UnitClass = 1 WHERE entry = 22473; -- Baron Sablemane
UPDATE creature_template SET UnitClass = 1 WHERE entry = 22727; -- Alterac Ram (1)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 22754; -- Seasoned Coldmine Surveyor (1)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 22755; -- Seasoned Irondeep Explorer (1)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 22773; -- Veteran Coldmine Surveyor (1)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 22820; -- Seer Olum
UPDATE creature_template SET UnitClass = 2 WHERE entry = 22910; -- Skulloc Soulgrinder
UPDATE creature_template SET UnitClass = 8 WHERE entry = 22911; -- Vim\'gol the Vile
UPDATE creature_template SET UnitClass = 2 WHERE entry = 22912; -- Sundered Spirit
UPDATE creature_template SET UnitClass = 2 WHERE entry = 22932; -- Sai\'kkal the Elder
UPDATE creature_template SET UnitClass = 1 WHERE entry = 22933; -- Ancient Raven-Priest
UPDATE creature_template SET UnitClass = 2 WHERE entry = 22988; -- Illidari Shadowlord
UPDATE creature_template SET UnitClass = 1 WHERE entry = 22989; -- Maiev Shadowsong
UPDATE creature_template SET UnitClass = 8 WHERE entry = 22990; -- Akama                            
UPDATE creature_template SET UnitClass = 2 WHERE entry = 22993; -- Guardian of the Eagle
UPDATE creature_template SET UnitClass = 8 WHERE entry = 22994; -- Guardian of the Falcon
UPDATE creature_template SET UnitClass = 2 WHERE entry = 23002; -- Rizzle Sprysprocket                            
UPDATE creature_template SET UnitClass = 1 WHERE entry = 23025; -- Rizzle\'s Depth Charge
UPDATE creature_template SET UnitClass = 2 WHERE entry = 23036; -- Captive Sparrowhawk
UPDATE creature_template SET UnitClass = 1 WHERE entry = 23122; -- Anzu (1)                            
UPDATE creature_template SET UnitClass = 2 WHERE entry = 23153; -- Bash\'ir Surveyor
UPDATE creature_template SET UnitClass = 2 WHERE entry = 23154; -- Mana-debt Slave
UPDATE creature_template SET UnitClass = 2 WHERE entry = 23220; -- Shivan Assassin                            
UPDATE creature_template SET UnitClass = 1 WHERE entry = 23242; -- Skyguard Ranger
UPDATE creature_template SET UnitClass = 2 WHERE entry = 23247; -- Bash\'ir Subprimal
UPDATE creature_template SET UnitClass = 2 WHERE entry = 23333; -- The Grand Collector                            
UPDATE creature_template SET UnitClass = 2 WHERE entry = 23338; -- Arthorn\'s Sparrowhawk
UPDATE creature_template SET UnitClass = 2 WHERE entry = 23353; -- Braxxus
UPDATE creature_template SET UnitClass = 2 WHERE entry = 23354; -- Mo\'arg Incinerator                            
UPDATE creature_template SET UnitClass = 2 WHERE entry = 23355; -- Zarcsin
UPDATE creature_template SET UnitClass = 1 WHERE entry = 23364; -- Black Dragon Whelpling
UPDATE creature_template SET UnitClass = 2 WHERE entry = 23365; -- Torkus Jr.
UPDATE creature_template SET UnitClass = 2 WHERE entry = 23368; -- Bash\'ir Controller
UPDATE creature_template SET UnitClass = 2 WHERE entry = 23414; -- Bash\'ir Inquisitor
UPDATE creature_template SET UnitClass = 1 WHERE entry = 23430; -- Skyguard Lieutenant
UPDATE creature_template SET UnitClass = 2 WHERE entry = 24039; -- Sundered Ghost
UPDATE creature_template SET UnitClass = 2 WHERE entry = 25087; -- Dawnblade Reservist
UPDATE creature_template SET UnitClass = 2 WHERE entry = 25144; -- Shattered Sun Bombardier
UPDATE creature_template SET UnitClass = 2 WHERE entry = 25164; -- Shattered Sun Recruit
UPDATE creature_template SET UnitClass = 2 WHERE entry = 25236; -- Unrestrained Dragonhawk
UPDATE creature_template SET UnitClass = 2 WHERE entry = 25373; -- Shadowsword Soulbinder
UPDATE creature_template SET UnitClass = 2 WHERE entry = 25461; -- Farseer Grimwalker
UPDATE creature_template SET UnitClass = 2 WHERE entry = 25483; -- Shadowsword Manafiend
UPDATE creature_template SET UnitClass = 2 WHERE entry = 25494; -- Purifying Totem
UPDATE creature_template SET UnitClass = 2 WHERE entry = 25506; -- Shadowsword Lifeshaper
UPDATE creature_template SET UnitClass = 1 WHERE entry = 25588; -- Hand of the Deceiver
UPDATE creature_template SET UnitClass = 2 WHERE entry = 25597; -- Oblivion Mage
UPDATE creature_template SET UnitClass = 1 WHERE entry = 25598; -- Volatile Felfire Fien
UPDATE creature_template SET UnitClass = 1 WHERE entry = 25708; -- Sinister Reflection
UPDATE creature_template SET UnitClass = 1 WHERE entry = 25738; -- Clayton J Dubin (1)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 25742; -- Alluvius
UPDATE creature_template SET UnitClass = 1 WHERE entry = 25757; -- Ahunite Frostwind
UPDATE creature_template SET UnitClass = 2 WHERE entry = 25799; -- Shadowsword Fury Mage
UPDATE creature_template SET UnitClass = 2 WHERE entry = 25851; -- Volatile Fiend
UPDATE creature_template SET UnitClass = 8 WHERE entry = 25863; -- Twilight Firesworn
UPDATE creature_template SET UnitClass = 8 WHERE entry = 25924; -- Twilight Speaker Viktor
UPDATE creature_template SET UnitClass = 1 WHERE entry = 25949; -- Ice Caller Briatha
UPDATE creature_template SET UnitClass = 2 WHERE entry = 26101; -- Fire Fiend
UPDATE creature_template SET UnitClass = 1 WHERE entry = 26116; -- Frostwave Lieutenant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 26178; -- Hailstone Lieutenant
UPDATE creature_template SET UnitClass = 8 WHERE entry = 26222; -- Twilight Cryomancer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 26289; -- Shattered Sun Riftwaker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 26302; -- Enchantments Vendor
UPDATE creature_template SET UnitClass = 1 WHERE entry = 26341; -- Ahunite Frostwind (1)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 26810; -- Roanauk Icemist
UPDATE creature_template SET UnitClass = 2 WHERE entry = 26966; -- Shadowy Tormentor
UPDATE creature_template SET UnitClass = 1 WHERE entry = 27717; -- Rustblood
UPDATE creature_template SET UnitClass = 1 WHERE entry = 29174; -- Defender of the Light
UPDATE creature_template SET UnitClass = 1 WHERE entry = 29177; -- Commander Eligor Dawnbringer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 29178; -- Lord Maxwell Tyrosus
UPDATE creature_template SET UnitClass = 1 WHERE entry = 29181; -- Rayne
UPDATE creature_template SET UnitClass = 1 WHERE entry = 29182; -- Rimblat Earthshatter
UPDATE creature_template SET UnitClass = 1 WHERE entry = 29228; -- Darion Mograine
UPDATE creature_template SET UnitClass = 8 WHERE entry = 29560; -- Lord-Commander Arete
UPDATE creature_template SET UnitClass = 1 WHERE entry = 29572; -- Landgren\'s Soul
UPDATE creature_template SET UnitClass = 1 WHERE entry = 29861; -- Stormforged Eradicator
UPDATE creature_template SET UnitClass = 2 WHERE entry = 30024; -- Gargoral the Water Lord
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30053; -- Icebound Revenant
UPDATE creature_template SET UnitClass = 8 WHERE entry = 30063; -- Stormforged Decimator
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30190; -- Attendant Tock
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30202; -- Reanimated Crusader
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30236; -- Argent Cannon
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30301; -- Tamed Jormungar
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30322; -- Earthen Jormungar Handler
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30374; -- Elder Muraco
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30375; -- Elder Stonebeard
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30474; -- The North Wind
UPDATE creature_template SET UnitClass = 2 WHERE entry = 30482; -- Wrathstrike Gargoyle
UPDATE creature_template SET UnitClass = 2 WHERE entry = 30543; -- Forgotten Depths High Priest
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30550; -- Image of the North Wind
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30591; -- Stormforged Amplifier
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30593; -- Forgotten Depths Slayer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30672; -- Crusader of Virtue
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30686; -- Crusade Architect Silas
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30703; -- Ebon Blade Champion
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30704; -- Argent Paladin
UPDATE creature_template SET UnitClass = 2 WHERE entry = 30813; -- Torkus Jr. (1)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 30829; -- Salranax the Flesh Render
UPDATE creature_template SET UnitClass = 2 WHERE entry = 30831; -- High Priest Yath\'amon
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30839; -- Jayde
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30840; -- Munch
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30919; -- Argent Battle-priest
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30984; -- Scourge Drudge
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30986; -- Reanimated Captain
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30989; -- Halof the Deathbringer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 31003; -- Crusader Lord Dalfors
UPDATE creature_template SET UnitClass = 1 WHERE entry = 31235; -- Crusader Olakin Sainrith
UPDATE creature_template SET UnitClass = 1 WHERE entry = 31306; -- Margrave Dhakar
UPDATE creature_template SET UnitClass = 1 WHERE entry = 31314; -- Ebon Blade Veteran
UPDATE creature_template SET UnitClass = 1 WHERE entry = 31428; -- Crusader Olakin Sainrith
UPDATE creature_template SET UnitClass = 1 WHERE entry = 31432; -- Ghostwing
UPDATE creature_template SET UnitClass = 1 WHERE entry = 31482; -- Apothecary Chemist
UPDATE creature_template SET UnitClass = 1 WHERE entry = 31516; -- Blight Doctor
UPDATE creature_template SET UnitClass = 1 WHERE entry = 31524; -- Apothecary Collaborator
UPDATE creature_template SET UnitClass = 1 WHERE entry = 31526; -- Blight Slinger
UPDATE creature_template SET UnitClass = 1 WHERE entry = 31529; -- Ravishing Betrayer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 31531; -- Perfidious Dreadlord
UPDATE creature_template SET UnitClass = 1 WHERE entry = 31638; -- Alliance Siege Vehicle
UPDATE creature_template SET UnitClass = 1 WHERE entry = 31831; -- Blight Spreader
UPDATE creature_template SET UnitClass = 2 WHERE entry = 32162; -- Grimkor the Wicked
UPDATE creature_template SET UnitClass = 2 WHERE entry = 32234; -- Swirling Water Revenant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 32239; -- Highlord Tirion Fordring
UPDATE creature_template SET UnitClass = 1 WHERE entry = 32241; -- Disguised Crusader
UPDATE creature_template SET UnitClass = 1 WHERE entry = 32270; -- Legion Dreadwhisperer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 32271; -- Legion Overlord
UPDATE creature_template SET UnitClass = 1 WHERE entry = 32272; -- High Invoker Basaleph
UPDATE creature_template SET UnitClass = 1 WHERE entry = 32309; -- Ebon Knight
UPDATE creature_template SET UnitClass = 1 WHERE entry = 32311; -- Koltira Deathweaver
UPDATE creature_template SET UnitClass = 2 WHERE entry = 32357; -- Old Crystalbark
UPDATE creature_template SET UnitClass = 1 WHERE entry = 32430; -- Fringe Engineer Tezzla
UPDATE creature_template SET UnitClass = 1 WHERE entry = 32443; -- The Lich King
UPDATE creature_template SET UnitClass = 1 WHERE entry = 32500; -- Dirkee
UPDATE creature_template SET UnitClass = 2 WHERE entry = 32554; -- Swirling Water Revenant (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 32800; -- Father Kamaros
UPDATE creature_template SET UnitClass = 1 WHERE entry = 33163; -- Iron Honor Guard (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 33164; -- Iron Honor Guard (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 33255; -- Titanium Stormlord
UPDATE creature_template SET UnitClass = 1 WHERE entry = 33330; -- Battle-Priest Gina
UPDATE creature_template SET UnitClass = 1 WHERE entry = 33331; -- Amira Blazeweaver
UPDATE creature_template SET UnitClass = 1 WHERE entry = 33332; -- Spiritwalker Tara
UPDATE creature_template SET UnitClass = 1 WHERE entry = 33333; -- Kar Greycloud
UPDATE creature_template SET UnitClass = 1 WHERE entry = 33495; -- Ysera
UPDATE creature_template SET UnitClass = 1 WHERE entry = 33536; -- Alexstrasza
UPDATE creature_template SET UnitClass = 1 WHERE entry = 33567; -- Deathsworn Zealo
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34112; -- Titanium Stormlord (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34113; -- Steelforged Defender (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34247; -- Steelforged Defender (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34298; -- Kologarn (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34310; -- Keristrasza
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34320; -- Venomhide Hatchling
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34327; -- Dino Meat Feeding Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34336; -- Silithid Meat Feeding Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34337; -- The Postmaster
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34338; -- Silithid Egg Feeding Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34360; -- Wabbit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34364; -- Calico Cat
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34386; -- High-Oracle Soo-roo
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34393; -- Test Vendor
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34425; -- Furious Gladiator\'s Frost Wyrm
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34428; -- MiniZep
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34434; -- ELM Daze Target
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34435; -- Cheerful Human Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34436; -- ELM Attacker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34437; -- Isle of Conquest Battlemaster
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34460; -- Kavina Grovesong
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34461; -- Tyrius Duskblade
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34463; -- Shaabad
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34465; -- Velanaa
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34466; -- Anthar Forgemender
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34467; -- Alyssia Moonstalker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34468; -- Noozle Whizzlestick
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34469; -- Melador Valestrider
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34470; -- Saamul
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34471; -- Baelnor Lightbearer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34472; -- Irieth Shadowstep
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34473; -- Brienna Nightfell
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34474; -- Serissa Grimdabbler
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34475; -- Shocuul
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34476; -- Cheerful Forsaken Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34477; -- Cheerful Orc Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34478; -- Cheerful Dwarf Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34479; -- Cheerful Night Elf Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34480; -- Cheerful Tauren Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34481; -- Cheerful Gnome Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34482; -- Cheerful Troll Spiri
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34483; -- Cheerful Blood Elf Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34484; -- Cheerful Draenei Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34489; -- Winterfin Playmate
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34515; -- XT-005 Debugger
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34531; -- Roo
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34532; -- Kekek
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34533; -- ScottM Test Creature
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34561; -- Forsaken Prankster
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34562; -- [DND] Stink Bomb Target
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34565; -- Innocuous Townsman
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34579; -- Venomhide Hatchling (1.25)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34580; -- Venomhide Hatchling (1.50)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34581; -- Venomhide Hatchling (1.75)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34612; -- Danowe Thunderhorn
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34644; -- Edward Winslow
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34645; -- Elizabeth Barker Winslow
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34653; -- Bountiful Table Hostess
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34654; -- Bountiful Feast Hostess
UPDATE creature_template SET UnitClass = 2 WHERE entry = 34657; -- Jaelyne Evensong
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34658; -- Jaelyne Evensong\'s Mount
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34675; -- Gregory Tabor
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34676; -- Isaac Allerton
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34677; -- Miles Standish
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34678; -- Dokin Farplain
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34679; -- Francis Eaton
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34681; -- Ikaneba Summerset
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34682; -- Wilmina Holbeck
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34683; -- Rose Standish
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34684; -- Laha Farplain
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34685; -- Dalni Tallgrass
UPDATE creature_template SET UnitClass = 2 WHERE entry = 34702; -- Ambrose Boltspark
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34708; -- Caitrin Ironkettle
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34709; -- Silver Riding Dragonhawk
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34710; -- Ellen Moore
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34711; -- Mary Allerton
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34712; -- Roberta Carter
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34713; -- Ondani Greatmill
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34714; -- Mahara Goldwheat
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34724; -- Shimmering Wyrmling
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34737; -- Spice Bread Stuffing Proxy
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34738; -- Slow-roasted Turkey Proxy
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34739; -- Candied Sweet Potato Proxy
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34740; -- Pumpkin Pie Proxy
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34741; -- Cranberry Chutney Proxy
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34744; -- Jasper Moore
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34755; -- Healing Marker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34768; -- William Mullins
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34770; -- Macabre Marionette
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34783; -- Ranisa Whiteboug
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34785; -- Alnar Whitebough
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34786; -- Alice Rigsdale
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34787; -- John Rigsdale
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34798; -- Acidmaw (Mobile)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34801; -- Incinerated Skeleton
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34806; -- Bountiful Table Kill Credit Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34812; -- The Turkey Chair
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34819; -- The Stuffing Chair
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34822; -- The Pie Chair
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34823; -- The Cranberry Chair
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34824; -- The Sweet Potato Chair
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34827; -- Argent Coliseum PTR Beast Master
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34875; -- Ice Turret (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34889; -- [PH] Goss Test NPC
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34891; -- [PH] Tournament Hippogryph Quest Mount
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34893; -- [PH] Stabled Argent Hippogryph
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34895; -- Jend Jow (Test)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34899; -- Snowblind Follower Proxy
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34921; -- Felflame Infernal Ball
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34930; -- Jade Tiger
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34942; -- Memory of Hogger
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34971; -- Hotoro
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34980; -- Drottinn Hrothgar
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34993; -- Larina Heartforge
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35003; -- Horde Gunship Captain
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35004; -- Jaeren Sunsworn
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35012; -- Ornolf the Scarred
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35018; -- Stalker Koralon
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35019; -- Bruka Woebringer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35021; -- Marog
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35026; -- Marsa Keybrand
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35027; -- Erutor
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35028; -- Memory of VanCleef
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35029; -- Memory of Mutanus
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35031; -- Memory of Lucifron
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35032; -- Memory of Thunderaan
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35033; -- Memory of Chromaggus
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35034; -- Memory of Hakkar
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35036; -- Memory of Vek\'nilash
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35037; -- Memory of Kalithresh
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35038; -- Memory of Malchezaar
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35039; -- Memory of Gruul
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35040; -- Memory of Vashj
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35041; -- Memory of Archimonde
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35043; -- Memory of Delrissa
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35044; -- Memory of Entropius
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35045; -- Memory of Ingvar
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35048; -- Memory of Onyxia
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35050; -- Memory of Ignis
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35051; -- Memory of Vezax
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35052; -- Memory of Algalon
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35055; -- Fallen Hero\'s Spirit Proxy
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35066; -- [ph] Argent Raid Spectator - FX - Alliance Fireworks NOT USED
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35067; -- Imp in a Bottle
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35074; -- Quest - Wintergrasp - Southern Tower Kill
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35085; -- Foreman Fisk
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35086; -- Labor Captain Grabbit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35087; -- Malynea Skyreaver
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35088; -- Custer Clubnik
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35091; -- Horzak Zignibble
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35107; -- Argent Coliseum PTR Eredar Master
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35108; -- Argent Coliseum PTR Faction Champion Master
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35109; -- Argent Coliseum PTR Val\'kyr Master
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35110; -- Argent Coliseum PTR Anub\'arak Master
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35116; -- Cult Saboteur
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35127; -- Cult Assassin
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35145; -- Dreadscale (Sessile)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35146; -- Argent Hippogryph (Bombing Run)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35147; -- Silver Covenant Hippogryph
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35148; -- Sunreaver Dragonhawk
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35155; -- Mana Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35156; -- Jade Panda
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35157; -- Tiny Jade Dragon
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35179; -- Argent Charger
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35180; -- Argent Warhorse
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35189; -- Skoll
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35228; -- Invisible Burrowed Jormungar
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35242; -- Kvaldir Invader
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35243; -- Ghostly Blood Elf Celebrant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35244; -- Ghostly Forsaken Celebrant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35246; -- Ghostly Draenei Celebrant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35247; -- Ghostly Dwarf Celebrant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35248; -- Ghostly Gnome Celebrant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35249; -- Ghostly Human Celebrant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35250; -- Ghostly Night Elf Celebrant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35251; -- Ghostly Orc Celebrant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35252; -- Ghostly Tauren Celebrant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35253; -- Ghostly Troll Celebrant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35254; -- Ghostly Dalaran Celebrant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35256; -- Cheerful Dalaran Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35258; -- Ghostly Aldor Celebrant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35259; -- Ghostly Scryer Celebrant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35260; -- Cheerful Aldor Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35261; -- Cheerful Scryer Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35285; -- Argent Colt
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35297; -- Icecrown Cultist Proxy
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35328; -- Stormwind Champion
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35329; -- Ironforge Champion
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35330; -- Exodar Champion
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35331; -- Gnomeregan Champion
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35332; -- Darnassus Champion
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35337; -- Bountiful Barrel
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35338; -- Bountiful Barrel
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35340; -- Bountiful Barrel
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35341; -- Bountiful Barrel
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35342; -- Bountiful Barrel
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35343; -- Bountiful Barrel
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35346; -- Goblin Mechanic
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35362; -- Relentless Gladiator\'s Frost Wyrm
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35387; -- Leaping Hatchling
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35394; -- Razzashi Hatchling
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35395; -- Deviate Hatchling
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35396; -- Darting Hatchling
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35397; -- Ravasaur Hatchling
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35398; -- Razormaw Hatchling
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35399; -- Obsidian Hatchling
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35400; -- Gundrak Hatchling
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35405; -- Overlord Agmar (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35425; -- Goblin Mechanic (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35445; -- Argent Warhorse
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35459; -- The Lich King
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35468; -- Onyx Panther
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35492; -- Zephyr Guard
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35493; -- Vengeful Frostwyrm
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35519; -- Memory of Algalon (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35520; -- Memory of Archimonde (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35521; -- Memory of Chromaggus (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35523; -- Memory of Delrissa (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35525; -- Memory of Entropius (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35527; -- Memory of Gruul (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35528; -- Memory of Hakkar (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35531; -- Memory of Hogger (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35532; -- Memory of Ignis (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35534; -- Memory of Ingvar (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35535; -- Memory of Kalithresh (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35536; -- Memory of Lucifron (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35537; -- Memory of Malchezaar (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35538; -- Memory of Mutanus (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35539; -- Memory of Onyxia (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35540; -- Memory of Thunderaan (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35541; -- Memory of VanCleef (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35542; -- Memory of Vashj (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35543; -- Memory of Vek\'nilash (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35544; -- Memory of Vezax (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35545; -- Risen Jaeren Sunsworn
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35546; -- Risen Jaeren Sunsworn (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35547; -- The Black Knight
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35557; -- The Black Knight
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35559; -- The Black Knight (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35560; -- The Black Knight (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35586; -- Argent Hippogryph (Herald Mount)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35588; -- Coliseum Master of Patchwerks
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35633; -- Ambrose Boltspark\'s Mount
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35636; -- Lana Stouthammer\'s Mount
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35637; -- Marshal Jacob Alerius\' Mount
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35642; -- Jeeves
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35644; -- Argent Warhorse
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35646; -- Wormhole
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35662; -- Alyssia Moonstalker (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35663; -- Alyssia Moonstalker (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35664; -- Alyssia Moonstalker (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35665; -- Anthar Forgemender (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35666; -- Anthar Forgemender (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35667; -- Anthar Forgemender (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35668; -- Baelnor Lightbearer (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35669; -- Baelnor Lightbearer (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35670; -- Baelnor Lightbearer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35674; -- Brienna Nightfell (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35675; -- Brienna Nightfell (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35676; -- Brienna Nightfell (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35699; -- Irieth Shadowstep (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35700; -- Irieth Shadowstep (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35701; -- Irieth Shadowstep (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35702; -- Kavina Grovesong (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35703; -- Kavina Grovesong (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35704; -- Kavina Grovesong (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35714; -- Melador Valestrider (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35715; -- Melador Valestrider (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35716; -- Melador Valestrider (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35721; -- Noozle Whizzlestick (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35722; -- Noozle Whizzlestick (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35723; -- Noozle Whizzlestick (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35728; -- Saamul (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35729; -- Saamul (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35730; -- Saamul (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35731; -- Serissa Grimdabbler (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35732; -- Serissa Grimdabbler (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35733; -- Serissa Grimdabbler (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35734; -- Shaabad (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35735; -- Shaabad (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35736; -- Shaabad (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35737; -- Shocuul (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35738; -- Shocuul (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35739; -- Shocuul (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35743; -- Tyrius Duskblade (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35744; -- Tyrius Duskblade (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35745; -- Tyrius Duskblade (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35746; -- Velanaa (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35747; -- Velanaa (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35748; -- Velanaa (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35768; -- Colosos\' Mount
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35809; -- Swift Horde Wolf
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35876; -- Crusader\'s White Warhorse
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35878; -- Crusader\'s Black Warhorse
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35895; -- Barrett Ramsey
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35910; -- Barrett Ramsey
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35983; -- [DNT] Test Dragonhawk
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36021; -- The Brewmaiden
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36024; -- The Black Brewmaiden
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36064; -- Marked Immortal Guardian
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36067; -- Marked Immortal Guardian (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36071; -- [DND] Argent Charger
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36072; -- [DND] Swift Burgundy Wolf
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36074; -- [DND] Swift Horde Wolf
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36075; -- [DND] White Stallion
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36076; -- [DND] Swift Alliance Steed
UPDATE creature_template SET UnitClass = 2 WHERE entry = 36082; -- Ambrose Boltspark (1)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 36086; -- Jaelyne Evensong (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36128; -- Frostwyrm Rider
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36164; -- Kor\'kron Reaver
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36168; -- Dan\'s Test Colossus
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36189; -- Hardknuckle Charger Proxy
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36209; -- [DND]Northrend Children\'s Week Trigger 2
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36215; -- Schweitzermobile
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36235; -- Auctioneer Rockbone
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36284; -- Flint Ironstag
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36350; -- Honorable Defender Trigger, 25 yd (Horde)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36351; -- Slab Bulkhead
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36352; -- Trunk Slamchest
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36359; -- Auctioneer Plankchest
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36360; -- Auctioneer Slabrock
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36380; -- Buff Hardback
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36390; -- Blast Thickneck
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36431; -- Dark Iron Guard
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36482; -- Tuskarr Kite
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36483; -- Little White Stallion
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36484; -- Little Ivory Raptor
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36503; -- Devourer of Souls
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36504; -- Devourer of Souls
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36510; -- Durotar Sand Vortex
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36511; -- Spectral Tiger Cub
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36532; -- Unstable Searing Totem
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36533; -- Unstable Fire Elemental
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36537; -- Unstable Earth Elemental [mini]
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36542; -- Unstable Healing Stream Totem
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36543; -- Unstable Water Elemental [mini]
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36544; -- Night Elf Mohawk
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36545; -- Unstable Water Elemental
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36546; -- Unstable Air Elemental
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36547; -- Unstable Air Elemental [mini]
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36550; -- Unstable Stoneskin Totem
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36553; -- Unstable Fire Elemental [mini]
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36554; -- Unstable Earth Elemental
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36556; -- Unstable Wrath of Air Totem
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36558; -- Argent Battleworg
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36568; -- Crazed Apothecary
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36573; -- Justin\'s test Boss A
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36574; -- Justin\'s Test Boss B
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36597; -- The Lich King
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36598; -- Strangulate Vehicle
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36605; -- Unstable Lightwell
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36607; -- Onyxian Whelpling
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36609; -- Val\'kyr Shadowguard
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36633; -- Ice Sphere
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36644; -- Ahmo Thunderhorn
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36648; -- Baine Bloodhoof (Leader)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36677; -- Skeletal Miner (Cosmetic)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36679; -- Frostsworn Lieutenant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36701; -- Raging Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36710; -- [DND] Apothecary Table (Spell Effect)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36715; -- Quel\'Delar Krasus Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36726; -- [PH] Icecrown Reanimated Crusader
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36737; -- Invisible Stalker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36757; -- Frostsworn Berserker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36763; -- Frostsworn Battle-Mage
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36769; -- Frostsworn Marksman
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36792; -- [PH] Unused Quarry Overseer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36796; -- Corrupted Champion
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36804; -- Matt\'s Test Priest
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36823; -- Terenas Menethil
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36824; -- Spirit Warden
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36837; -- Onyxian Drake
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36839; -- Horde Gunship Cannon
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36857; -- Blood Elf Warrior
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36858; -- Dwarf Mage
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36859; -- Dwarf Shaman
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36860; -- Gnome Priest
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36861; -- Human Hunter
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36862; -- Night Elf Mage
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36863; -- Orc Mage
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36864; -- Tauren Paladin
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36865; -- Tauren Priest
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36866; -- Troll Druid
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36867; -- Undead Hunter
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36871; -- Core Hound Pup
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36875; -- [PH] Icecrown Gauntlet Ghoul
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36904; -- Gryphon Hatchling 3.3.0
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36908; -- Gryphon Hatchling
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36909; -- Wind Rider Cub
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36910; -- Zipao Tiger
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36911; -- Pandaren Monk
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36912; -- Chen Stormstout
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36923; -- Hogger (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36949; -- [PH] Scaling Fire Elemental
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36950; -- Skybreaker Marine
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36961; -- Skybreaker Sergeant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36963; -- [PH] Scaling Earth Elemental
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36964; -- [PH] Scaling Air Elemental
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36965; -- Furious Water Elemental
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36966; -- [DND] Town Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36969; -- Skybreaker Rifleman
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36971; -- Orgrim\'s Hammer Crew
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36977; -- Soulbound Fire Elemental
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36978; -- Skybreaker Mortar Soldier
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36979; -- Lil\' K.T.
UPDATE creature_template SET UnitClass = 2 WHERE entry = 36990; -- Lady Sylvanas Windrunner
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36991; -- Sunwell Guardian
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37000; -- Sunwell Visual Bunny
UPDATE creature_template SET UnitClass = 8 WHERE entry = 37021; -- Skybreaker Vicar
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37036; -- Rippling Water Elemental
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37037; -- Acanthurus
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37039; -- [DND]Ground Cover Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37044; -- Kor\'kron Battle Standard
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37063; -- Stormwind City Guard
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37074; -- Argent Warhose TEST
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37094; -- Crucible of Souls
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37100; -- Alliance Brigadier General (Stormwind Visual)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37101; -- Horde Warbringer - Orgrimmar Appearance (DND)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 37116; -- Skybreaker Sorcerer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37118; -- Elemental Stone
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37128; -- [PH] Icecrown Shade
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37130; -- Mirror Image
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37131; -- Mirror Image Bug Test
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37158; -- Quel\'Delar
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37168; -- [DND] Summon Bunny 1
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37172; -- Detective Snap Snagglebolt
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37189; -- Kor\'kron General
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37191; -- [PH] Ice Stone 2
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37192; -- [PH] Ice Stone 3
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37193; -- Balistoides
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37194; -- Chaetodon
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37201; -- [DND] Summon Bunny 2
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37202; -- [DND] Summon Bunny 3
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37205; -- Thalorien Dawnseeker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37211; -- Sunwell Defender
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37214; -- Crown Lackey
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37221; -- Lady Jaina Proudmoore
UPDATE creature_template SET UnitClass = 2 WHERE entry = 37223; -- Lady Sylvanas Windrunner
UPDATE creature_template SET UnitClass = 2 WHERE entry = 37225; -- Uther the Lightbringer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37226; -- The Lich King
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37233; -- Aerie Gryphon (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37234; -- Aggi Rumblestomp (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37235; -- Alliance Sentinel (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37236; -- Alliance Spirit Guide (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37237; -- Alterac Ram (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37238; -- Alterac Yeti (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37239; -- Arch Druid Renferal (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37240; -- Athramanis (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37241; -- Blizzard Elemental (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37242; -- Brogus Thunderbrew (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37243; -- Captain Balinda Stonehearth (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37244; -- Captain Galvangar (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37245; -- Champion Coldmine Explorer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37246; -- Champion Coldmine Guard (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37247; -- Champion Coldmine Invader (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37248; -- Champion Coldmine Surveyor (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37249; -- Champion Commando (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37250; -- Champion Defender (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37251; -- Champion Guardian (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37252; -- Champion Guardsman (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37253; -- Champion Irondeep Explorer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37254; -- Champion Irondeep Guard (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37255; -- Champion Irondeep Raider (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37256; -- Champion Irondeep Surveyor (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37257; -- Champion Legionnaire (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37258; -- Champion Mountaineer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37259; -- Champion Outrunner (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37260; -- Champion Ranger (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37261; -- Champion Reaver (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37262; -- Champion Sentinel (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37263; -- Champion Warrior (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37264; -- Coldmine Explorer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37265; -- Coldmine Guard (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37266; -- Coldmine Invader (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37267; -- Coldmine Miner (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37268; -- Coldmine Peon (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37269; -- Coldmine Surveyor (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37270; -- Commander Dardosh <old> (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37271; -- Commander Duffy (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37272; -- Commander Karl Philips (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37273; -- Commander Louis Philips (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37274; -- Commander Malgor (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37275; -- Commander Mortimer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37276; -- Commander Mulfort (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37277; -- Commander Randolph (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37278; -- Corporal Noreg Stormpike (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37279; -- Corporal Teeka Bloodsnarl (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37280; -- Deathstalker Agent (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37281; -- Dirk Swindle (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37282; -- Drakan (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37283; -- Drek\'Thar (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37284; -- Druid of the Grove (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37285; -- Dun Baldar North Marshal (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37286; -- Dun Baldar North Warmaster (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37287; -- Dun Baldar South Marshal (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37289; -- Duros (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37290; -- East Frostwolf Marshal (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37291; -- East Frostwolf Warmaster (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37292; -- Field Marshal Teravaine (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37293; -- Fjordune the Greater (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37294; -- Frostwolf (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37295; -- Frostwolf Battleguard (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37296; -- Frostwolf Bloodhound (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37297; -- Frostwolf Bowman (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37298; -- Frostwolf Emissary (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37299; -- Frostwolf Explosives Expert (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37300; -- Frostwolf Guardian (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37301; -- Frostwolf Herald (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37302; -- Frostwolf Legionnaire (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37303; -- Frostwolf Mine Layer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37304; -- Frostwolf Outrunner (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37305; -- Frostwolf Quartermaster (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37306; -- Frostwolf Reaver (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37307; -- Frostwolf Reclaimer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37308; -- Frostwolf Shaman (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37309; -- Frostwolf Shredder Unit (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37310; -- Frostwolf Stable Master (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37311; -- Frostwolf Warrior (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37312; -- Frostwolf Wolf Rider (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37313; -- Frostwolf Wolf Rider Commander (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37314; -- Furis (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37315; -- Gaelden Hammersmith (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37316; -- Gahz\'ranka Herald (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37317; -- Gash\'nak the Cannibal (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37318; -- Grelkor (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37319; -- Grimtooth (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37320; -- Grunnda Wolfheart (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37321; -- Guse\'s War Rider (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37322; -- Herald (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37323; -- Horde Spirit Guide (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37324; -- Ice Giant (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37326; -- Iceblood Warmaster (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37327; -- Icewing Marshal (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37329; -- Ichman\'s Gryphon (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37330; -- Irondeep Cave Lurker UNUSED (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37331; -- Irondeep Explorer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37332; -- Irondeep Geomancer UNUSED (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37335; -- Irondeep Peon (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37336; -- Irondeep Raider (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37337; -- Irondeep Shaman (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37338; -- Irondeep Skullthumper (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37339; -- Irondeep Surveyor (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37340; -- Irondeep Trogg (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37341; -- Ivus the Forest Lord (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37342; -- Jekyll Flandring (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37343; -- Jeztor\'s War Rider (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37344; -- Jonivera Farmountain (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37345; -- Jotek (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37346; -- Keetar (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37348; -- Kurdrum Barleybeard (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37349; -- Lana Thunderbrew (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37350; -- Lieutenant Greywand (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37351; -- Lieutenant Grummus (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37352; -- Lieutenant Haggerdin (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37353; -- Lieutenant Largent (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37354; -- Lieutenant Lewis (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37355; -- Lieutenant Lonadin (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37356; -- Lieutenant Mancuso (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37357; -- Lieutenant Murp <old> (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37358; -- Lieutenant Rugba (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37359; -- Lieutenant Spencer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37360; -- Lieutenant Stouthandle (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37361; -- Lieutenant Stronghoof (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37362; -- Lieutenant Vol\'talar (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37363; -- Lokholar the Ice Lord (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37364; -- Masha Swiftcut (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37365; -- Master Engineer Zinfizzlex (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37366; -- Morloch (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37367; -- Mountaineer Boombellow (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37368; -- Mulverick\'s War Rider (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37369; -- Murgot Deepforge (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37370; -- Najak Hexxen (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37371; -- Primalist Thurloga (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37373; -- Rarck (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37374; -- Ravak Grimtotem (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37375; -- Rezrelek (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37376; -- Risen Ancient (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37377; -- Ryson\'s Eye in the Sky (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37378; -- Seasoned Coldmine Explorer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37379; -- Seasoned Coldmine Guard (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37380; -- Seasoned Coldmine Invader (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37381; -- Seasoned Coldmine Surveyor (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37382; -- Seasoned Commando (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37383; -- Seasoned Defender (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37384; -- Seasoned Guardian (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37385; -- Seasoned Guardsman (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37386; -- Seasoned Irondeep Explorer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37387; -- Seasoned Irondeep Guard (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37388; -- Seasoned Irondeep Raider (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37389; -- Seasoned Irondeep Surveyor (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37390; -- Seasoned Legionnaire (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37391; -- Seasoned Mountaineer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37392; -- Seasoned Outrunner (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37393; -- Seasoned Ranger (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37394; -- Seasoned Reaver (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37395; -- Seasoned Sentinel (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37396; -- Seasoned Warrior (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37397; -- Sergeant Durgen Stormpike (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37398; -- Sergeant Yazra Bloodsnarl (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37399; -- Shrye Ragefist (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37400; -- Slidore\'s Gryphon (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37401; -- Smith Regzar (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37402; -- Snowblind Ambusher (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37403; -- Snowblind Harpy (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37404; -- Snowblind Windcaller (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37405; -- Stabled Alterac Ram (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37406; -- Stabled Frostwolf (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37407; -- Stonehearth Marshal (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37409; -- Stormpike Battleguard (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37410; -- Stormpike Bowman (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37411; -- Stormpike Commando (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37412; -- Stormpike Defender (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37413; -- Stormpike Emissary (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37414; -- Stormpike Explosives Expert (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37415; -- Stormpike Guardsman (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37416; -- Stormpike Herald (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37417; -- Stormpike Mine Layer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37418; -- Stormpike Mountaineer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37419; -- Stormpike Owl (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37420; -- Stormpike Quartermaster (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37421; -- Stormpike Ram Rider (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37422; -- Stormpike Ram Rider Commander (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37423; -- Stormpike Ranger (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37424; -- Stormpike Reclaimer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37425; -- Stormpike Shredder Unit (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37426; -- Stormpike Stable Master (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37427; -- Svalbrad Farmountain (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37428; -- Syndicate Agent (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37429; -- Syndicate Brigand (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37430; -- Syndicate Master Ryson (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37431; -- Taskmaster Snivvle (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37432; -- Tatterhide (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37433; -- Thanthaldis Snowgleam (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37434; -- Tower Point Marshal (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37435; -- Tower Point Warmaster (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37436; -- Trigger Guse (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37437; -- Trigger Ichman (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37438; -- Trigger Jeztor (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37439; -- Trigger Mulverick (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37440; -- Trigger Slidore (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37441; -- Trigger Vipore (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37442; -- Umi Thorson (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37443; -- Ushalac the Gloomdweller (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37444; -- Vanndar Stormpike (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37445; -- Veteran Coldmine Explorer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37446; -- Veteran Coldmine Guard (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37447; -- Veteran Coldmine Invader (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37448; -- Veteran Coldmine Surveyor (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37449; -- Veteran Commando (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37450; -- Veteran Defender (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37451; -- Veteran Guardian (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37452; -- Veteran Guardsman (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37453; -- Veteran Irondeep Explorer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37454; -- Veteran Irondeep Guard (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37455; -- Veteran Irondeep Raider (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37456; -- Veteran Irondeep Surveyor (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37457; -- Veteran Legionnaire (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37458; -- Veteran Mountaineer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37459; -- Veteran Outrunner (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37460; -- Veteran Ranger (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37461; -- Veteran Reaver (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37462; -- Veteran Sentinel (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37463; -- Veteran Warrior (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37464; -- Vipore\'s Gryphon (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37465; -- Voggah Deathgrip (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37466; -- War Rider (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37467; -- West Frostwolf Marshal (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37468; -- West Frostwolf Warmaster (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37469; -- Whitewhisker Digger (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37470; -- Whitewhisker Geomancer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37471; -- Whitewhisker Overseer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37472; -- Whitewhisker Tunnel Rat (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37473; -- Whitewhisker Vermin (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37474; -- Wildpaw Alpha (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37475; -- Wildpaw Brute (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37476; -- Wildpaw Gnoll (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37477; -- Wildpaw Mystic (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37478; -- Wildpaw Shaman (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37479; -- Wing Commander Guse (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37480; -- Wing Commander Ichman (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37481; -- Wing Commander Jeztor (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37482; -- Wing Commander Mulverick (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37483; -- Wing Commander Slidore (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37484; -- Wing Commander Vipore (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37485; -- Yaelika Farclaw (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37486; -- Zora Guthrek (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37491; -- Captain Arnath
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37493; -- Captain Brandon
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37494; -- Captain Grondel
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37495; -- Captain Rupert
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37509; -- Shattered Sun Sentry
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37510; -- Shattered Sun Archmage
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37512; -- Shattered Sun Warrior
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37523; -- Warden of the Sunwell
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37527; -- Halduron Brightwing
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37530; -- Slimy Tentacle
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37535; -- Ooze Covered Tentacle
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37538; -- Scourge Zombie
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37539; -- Ghoul Invader
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37541; -- Crypt Raider
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37542; -- Morlen Coldgrip
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37552; -- Thalorien Dawnseeker\'s Remains
UPDATE creature_template SET UnitClass = 8 WHERE entry = 37554; -- Lady Sylvanas Windrunner
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37558; -- [DND]Something Stinks Kill Credit Bunny
UPDATE creature_template SET UnitClass = 2 WHERE entry = 37577; -- Freed Horde Slave
UPDATE creature_template SET UnitClass = 2 WHERE entry = 37578; -- Freed Horde Slave
UPDATE creature_template SET UnitClass = 2 WHERE entry = 37579; -- Freed Horde Slave
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37581; -- Gorkun Ironskull
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37583; -- Dark Ranger Kalira
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37584; -- Coliseum Champion
UPDATE creature_template SET UnitClass = 2 WHERE entry = 37587; -- Coliseum Champion
UPDATE creature_template SET UnitClass = 8 WHERE entry = 37588; -- Coliseum Champion
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37592; -- Gorkun Ironskull
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37593; -- Icecrown Dungeon Horde Gunship Cannon
UPDATE creature_template SET UnitClass = 2 WHERE entry = 37596; -- Lady Sylvanas Windrunner
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37601; -- Thalorien Dawnseeker Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37607; -- Gorkun Ironskull (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37608; -- Dark Ranger Kalira (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37618; -- Gorkun Ironskull (1)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 37619; -- Freed Horde Slave (1)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 37620; -- Freed Horde Slave (1)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 37621; -- Freed Horde Slave (1)
UPDATE creature_template SET UnitClass = 8 WHERE entry = 37623; -- Coliseum Champion (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37624; -- Coliseum Champion (1)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 37625; -- Coliseum Champion (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37630; -- Lady Jaina Proudmoore (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37631; -- Lady Jaina Proudmoore (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37632; -- Lady Sylvanas Windrunner (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37633; -- Lady Sylvanas Windrunner (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37639; -- Wrathbone Siegesmith (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37657; -- Corrupted Champion (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37658; -- [PH] Unused Quarry Overseer (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37671; -- Crown Supply Guard
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37672; -- Mutated Abomination
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37691; -- Guardian Shade
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37693; -- Commander Aliocha Segard [Icecrown Raid]
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37695; -- Drudge Ghoul
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37698; -- Shambling Horror
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37699; -- RN Test Honor Guard
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37700; -- RN Test Royal Guard
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37703; -- Surging Water Elemental
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37707; -- Silvermoon Builder
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37721; -- Spiritual Reflection (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37722; -- Spiritual Reflection (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37732; -- [PH] Stormwind City Mage
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37734; -- Evacuation Portal
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37745; -- Quel\'Delar
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37746; -- Sunwell Caster Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37749; -- Dwarf Air Totem
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37750; -- Dwarf Earth Totem
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37751; -- Dwarf Fire Totem
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37752; -- Dwarf Water Totem
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37763; -- Grand Magister Rommath
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37764; -- Lor\'themar Theron
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37765; -- Captain Auric Sunchaser
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37766; -- Orc Air Totem
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37767; -- Orc Earth Totem
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37768; -- Troll Earth Totem
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37769; -- Troll Air Totem
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37770; -- Orc Fire Totem
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37771; -- Troll Fire Totem
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37772; -- Orc Water Totem
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37773; -- Troll Water Totem
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37775; -- Ironforge Guard
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37779; -- Dark Ranger Loralen
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37781; -- Sunwell Honor Guard
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37787; -- [PH] Citizen
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37788; -- [PH] Runner Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37790; -- Darnassus Sentinel
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37797; -- Dark Ranger Loralen (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37798; -- Exodar Peacekeeper
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37799; -- Vile Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37800; -- Silvermoon City Guardian
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37801; -- Shadow\'s Edge Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37814; -- Shadow\'s Edge Axe Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37820; -- [TEST] High Overlord Omar
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37825; -- Kor\'kron Overseer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37828; -- Image of Thalorien Dawnseeker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37829; -- Image of Alexstrasza
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37831; -- [PH] Captain
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37833; -- Sky-Reaver Korm Blackscar
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37844; -- Image of Anasterian
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37845; -- Image of Morlen Coldgrip
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37846; -- Blood-Queen Lana\'thel
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37860; -- Bluffwatcher
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37864; -- Lord Marrowgar Image
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37865; -- Perky Pug
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37869; -- Orgrimmar Grunt
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37882; -- The Frozen Throne
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37883; -- Bug 174037
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37898; -- Skybreaker Engineer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37902; -- Alliance Mason
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37906; -- Imprisoned Soul
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37917; -- Crown Thug
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37919; -- Empowered Vampiric Fiend
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37920; -- Kor\'kron Reaver
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37930; -- Warsong Peon
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37932; -- Orgrim\'s Hammer Siege Engineer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37935; -- Apothecary Candith Tomas
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37936; -- Morgan Dayblaze
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37937; -- Dark Iron Troublemaker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37944; -- Stormwind City Patroller
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37950; -- Valithria Dreamwalker
UPDATE creature_template SET UnitClass = 2 WHERE entry = 37955; -- Blood-Queen Lana\'thel
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37964; -- [DND] Love Boat Summoner 02
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37966; -- Undercity Love Boat
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37982; -- Furious Fire Elemental
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37983; -- Searing Fire Elemental
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37984; -- Crown Duster
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37985; -- Dream Cloud
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37990; -- [DND] Sample Quest Kill Credit Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37991; -- Ikfirus the Vile
UPDATE creature_template SET UnitClass = 2 WHERE entry = 37992; -- Tortunok
UPDATE creature_template SET UnitClass = 2 WHERE entry = 37993; -- Gerardo the Suave
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37994; -- Water Elemental
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38006; -- Crown Hoodlum
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38009; -- Reanimated Fanatic
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38010; -- Reanimated Adherent
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38011; -- Sunreaver Disguise (Male)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38012; -- Sunreaver Disguise (Female)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38013; -- Silver Covenant Disguise (Female)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38014; -- Silver Covenant Disguise (Male)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38016; -- Crown Agent
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38019; -- Anolis
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38020; -- Basiliscus
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38021; -- Conolophus
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38030; -- Crown Underling
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38042; -- Kwee Q. Peddlefeet
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38043; -- Kwee Q. Peddlefeet
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38044; -- Kwee Q. Peddlefeet
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38045; -- Kwee Q. Peddlefeet
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38047; -- Blood Elf Pilgrim
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38048; -- High Elf Pilgrim
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38049; -- Young Pilgrim
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38050; -- Orgrimmar Grunt
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38052; -- Lady Liadrin
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38053; -- [DND] Fire Creature
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38056; -- Chamberlain Galiros
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38067; -- [PH] Orgrimmar Citizen
UPDATE creature_template SET UnitClass = 8 WHERE entry = 38085; -- Skybreaker Vicar (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38116; -- Image of the Sunwell
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38121; -- Soul Feast Kill Credit Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38135; -- Deformed Fanatic
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38136; -- Empowered Adherent
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38154; -- Warhawk
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38158; -- [PH] Orgrimmar Mage
UPDATE creature_template SET UnitClass = 2 WHERE entry = 38161; -- Lady Sylvanas Windrunner
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38162; -- Trapped Citizen
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38163; -- Swarming Shadows
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38164; -- [PH] Captain (Orgrimmar)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38180; -- Cleansing Totem
UPDATE creature_template SET UnitClass = 8 WHERE entry = 38181; -- Haragg the Unseen
UPDATE creature_template SET UnitClass = 2 WHERE entry = 38189; -- Lady Sylvanas Windrunner
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38191; -- Shadow\'s Edge
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38201; -- Sunreaver Agent
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38204; -- Big Love Rocket
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38207; -- Flying Big Love Rocket
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38211; -- Wrath of the Lich King Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38216; -- Mutated Professor Putricide
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38226; -- [DND] Fire Wall - No Scaling
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38230; -- [DND] Fire Wall
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38236; -- [DND] Fire Strat
UPDATE creature_template SET UnitClass = 2 WHERE entry = 38256; -- Skybreaker Sorcerer (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38260; -- Invincible
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38261; -- Skybreaker Sergeant (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38264; -- Dark Rune Giant Transform
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38271; -- Vrykul Illusion
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38273; -- Taunka Illusion
UPDATE creature_template SET UnitClass = 8 WHERE entry = 38284; -- Uvlus Banefire
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38285; -- Mutated Abomination
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38289; -- Unholy Infusion KC Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38291; -- Melee Trinket - Tuskarr
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38292; -- Melee Trinket - Taunka
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38295; -- Junior Detective
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38310; -- Invisible Stalker (Float, Uninteractible, LargeAOI) (3.00)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38319; -- Blood Queen Door
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38328; -- Roka
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38334; -- Snivel Rustrocket
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38335; -- Snivel Rustrocket
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38336; -- Snivel Rustrocket
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38337; -- Snivel Rustrocket
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38338; -- Snivel Rustrocket
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38339; -- Snivel Rustrocket
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38349; -- Captain Arnath (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38350; -- Captain Brandon (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38351; -- Captain Grondel (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38352; -- Captain Rupert (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38353; -- Blood Queen Orb
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38361; -- Wrathful Gladiator\'s Frost Wyrm
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38367; -- Tesla Coil Stalker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38374; -- Toxic Wasteling
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38386; -- Patchwerk (PTR All-Around Test)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38388; -- Patchwerk (PTR All-Around Test) (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38391; -- Val\'kyr Guardian
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38392; -- Val\'kyr Protector
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38395; -- Deformed Fanatic (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38396; -- Empowered Adherent (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38397; -- Reanimated Adherent (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38398; -- Reanimated Fanatic (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38404; -- Kor\'kron Reaver (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38407; -- Skybreaker Mortar Soldier (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38408; -- Skybreaker Rifleman (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38421; -- Nightmare Cloud
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38429; -- Nightmare Portal (Pre-effect)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38430; -- Nightmare Portal
UPDATE creature_template SET UnitClass = 2 WHERE entry = 38434; -- Blood-Queen Lana\'thel (1)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 38435; -- Blood-Queen Lana\'thel (2)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 38436; -- Blood-Queen Lana\'thel (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38453; -- Arcturis
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38485; -- Darnavan
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38490; -- Rotting Frost Giant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38491; -- Kor\'kron Lieutenant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38492; -- Skybreaker Lieutenant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38494; -- Rotting Frost Giant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38495; -- Kor\'kron Lieutenant (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38496; -- Skybreaker Lieutenant (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38497; -- Argent Crusader (Mounted)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38503; -- Blood Infusion Quest Credit Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38527; -- Shadowmourne Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38528; -- Shadowmourne Axe Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38529; -- Shadowmourne
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38545; -- Invincible
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38546; -- Frost Infusion Quest Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38547; -- Sindragosa Quest Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38548; -- Vile Gas Stalker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38551; -- Alrin the Agile
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38552; -- Alrin the Agile (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38556; -- Malleable Ooze Stalker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38557; -- Minchar Beam Stalker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38558; -- Infiltrator Minchar
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38566; -- Phantom Hallucination
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38572; -- Bug 181860
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38579; -- Terenas Menethil
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38580; -- [PH] Matt Test NPC
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38581; -- [PH] Matt Test NPC 2
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38584; -- Frostmourne Trigger
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38587; -- Professor Putricide Proxy Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38588; -- Blood Queen Proxy Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38589; -- Valithria Dreamwalker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38590; -- Valithria Dreamwalker (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38595; -- Argent Valiant Credit (Aspirant Test)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38601; -- Empowered Vampiric Fiend (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38605; -- Mutated Abomination (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38606; -- Lady Jaina Proudmoore
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38607; -- Muradin Bronzebeard
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38608; -- Uther the Lightbringer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38609; -- Lady Sylvanas Windrunner
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38610; -- Highlord Alexandros Mograine
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38630; -- Reanimated Fanatic (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38631; -- Reanimated Fanatic (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38632; -- Empowered Adherent (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38633; -- Empowered Adherent (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38634; -- Deformed Fanatic (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38635; -- Deformed Fanatic (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38667; -- Combat Trigger
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38679; -- Kor\'kron Reaver (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38680; -- Kor\'kron Reaver (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38687; -- Skybreaker Mortar Soldier (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38688; -- Skybreaker Mortar Soldier (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38689; -- Skybreaker Rifleman (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38690; -- Skybreaker Rifleman (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38691; -- Skybreaker Sergeant (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38692; -- Skybreaker Sergeant (3)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 38693; -- Skybreaker Sorcerer (2)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 38694; -- Skybreaker Sorcerer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38695; -- Icebound Frostbrood Vanquisher
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38710; -- Frostmourne Soul Transform Visual
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38716; -- Magister Thelos
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38757; -- Defile
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38763; -- Summoned Cadaver
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38778; -- Bloodbathed Frostbrood Vanquisher
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38786; -- Mutated Abomination (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38787; -- Mutated Abomination (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38788; -- Mutated Abomination (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38789; -- Mutated Abomination (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38790; -- Mutated Abomination (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38825; -- Aerin
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38830; -- [PH] Grimtotem Protector
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38831; -- Slain Bluffwatcher
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38839; -- Dark Iron Guard
UPDATE creature_template SET UnitClass = 2 WHERE entry = 38841; -- Vol\'guk
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38843; -- [PH] Grimtotem Collector
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38846; -- [PH] Slain Druid
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38857; -- PattyMacks LK
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38860; -- Bug 184688
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38863; -- Unkillable Test Dummy 83 Rogue
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38870; -- [DND] Dark Iron Guard Move To Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38877; -- Dark Iron Citizen
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38882; -- [DND] Mole Machine Spawner
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38883; -- ScottG Test
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38900; -- Auctioneer Kavarn
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38901; -- Ironforge Civilian
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38903; -- Queue trigger
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38905; -- [PH] Grimtotem Vendor
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38906; -- Auctioneer Sarnkin
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38907; -- Queue Controller
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38919; -- [PH] Grimtotem Banker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38920; -- [PH] Grimtotem Banker 2
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38921; -- [PH] Grimtotem Banker 3
UPDATE creature_template SET UnitClass = 2 WHERE entry = 38995; -- Highlord Tirion Fordring
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39000; -- Reanimated Adherent (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39001; -- Reanimated Adherent (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39019; -- Quest - Wintergrasp - PvP Kill - Horde
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39021; -- Agitated Earth Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39023; -- [DND] TB Event Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39045; -- Azure Deathcharger
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39046; -- Crimson Deathcharger
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39047; -- Agitated Fire Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39048; -- Sylvanas\' Lamenter
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39055; -- Gavan Grayfeather
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39057; -- [DND] Fire Strat Auto
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39058; -- [PH] Orc Firefighter
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39060; -- Brann Bronzebeard (Prologue)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39089; -- Item: Frostborn Illusion
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39090; -- Durak Flamespeaker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39091; -- Darnavan Kill Credit 10
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39092; -- Darnavan Kill Credit 25
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39101; -- Courier Tormun
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39103; -- Twilight Seeker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39120; -- Val\'kyr Shadowguard (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39121; -- Val\'kyr Shadowguard (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39122; -- Val\'kyr Shadowguard (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39123; -- Blood Quickening Credit 25
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39125; -- Val\'kyr Shadowguard (Hover Height 20 Visual)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39130; -- Blazing Servant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39131; -- Watery Servant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39132; -- Earthen Servant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39135; -- Prologue Portal Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39137; -- Shadow Trap
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39158; -- Phalanx 2.0
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39166; -- The Lich King (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39167; -- The Lich King (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39168; -- The Lich King (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39189; -- Spirit Bomb
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39190; -- Wicked Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39217; -- Terenas Menethil
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39229; -- [DND] Flying Machine
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39231; -- The Lich King (Temp)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39232; -- The Lich King (Temp) (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39233; -- The Lich King (Temp) (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39234; -- The Lich King (Temp) (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39265; -- Rescued Gnomeregan Evacuee
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39283; -- Seer Bahura
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39284; -- Vile Spirit (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39285; -- Vile Spirit (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39286; -- Vile Spirit (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39287; -- Wicked Spirit (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39288; -- Wicked Spirit (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39289; -- Wicked Spirit (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39296; -- Spirit Warden (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39299; -- Shambling Horror (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39300; -- Shambling Horror (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39301; -- Shambling Horror (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39302; -- Raging Spirit (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39303; -- Raging Spirit (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39304; -- Raging Spirit (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39305; -- Ice Sphere (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39306; -- Ice Sphere (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39307; -- Ice Sphere (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39309; -- Drudge Ghoul (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39310; -- Drudge Ghoul (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39311; -- Drudge Ghoul (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39328; -- Doomsayer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39343; -- Orgrimmar Citizen
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39355; -- [DND] Salute Quest Credit Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39356; -- [DND] Roar Quest Credit Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39361; -- [DND] Dance Quest Credit Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39362; -- [DND] Cheer Quest Credit Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39372; -- Garrosh Hellscream
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39421; -- Radiageigatron
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39448; -- Blood Guard Torek
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39454; -- Doomsayer Speech Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39462; -- Owen Test Vendor
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39466; -- Motivated Citizen
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39508; -- Captain Anton
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39581; -- Poster Marker - Orgrimmar
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39624; -- Motivated Citizen
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39632; -- Orgrimmar Citizen
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39633; -- Sen\'jin Watcher
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39639; -- Restless Zombie
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39647; -- Zalazane
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39648; -- Doomsday Cultist
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39654; -- Vol\'jin
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39672; -- Poster Marker - Stormwind
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39682; -- Ejector Mechano-Tank
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39683; -- [DND] Quest Credit Bunny - Eject
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39686; -- Stormwind Citizen
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39691; -- [DND] Quest Credit Bunny - Move 1
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39692; -- [DND] Quest Credit Bunny - Move 2
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39695; -- [DND] Quest Credit Bunny - Move 3
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39703; -- [DND] Quest Credit Bunny - Attack
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39712; -- High Tinker Mekkatorque
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39713; -- Scuttling Mechano-Tank
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39714; -- Shooting Mechano-Tank
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39757; -- Cultist Kagarn
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39758; -- Cultist Agtar
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39760; -- Cultist Tokka
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39763; -- Cultist Rokaga
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39794; -- Zarithrian Spawn Stalker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39798; -- [PH] Mother Trogg
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39805; -- General Zarithrian (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39807; -- Image of Cho\'Gall
UPDATE creature_template SET UnitClass = 2 WHERE entry = 39814; -- Onyx Flamecaller
UPDATE creature_template SET UnitClass = 2 WHERE entry = 39815; -- Onyx Flamecaller (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39817; -- [DND] Summoning Pad
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39818; -- Irradiated Mechano-Tank
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39821; -- Cho\'Gall Speech Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39823; -- Saviana Ragefire (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39825; -- Overseer Golbaz
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39827; -- Overseer Jintak
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39842; -- Invisible Stalker (Hostile, Ignore Combat, Float, Uninteractible, Large AOI)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39852; -- Raging Fire Elemental
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39856; -- Raging Storm Elemental
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39861; -- Worried Citizen
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39863; -- Halion
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39864; -- Halion (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39872; -- Cult Recruitment Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39888; -- Gnomeregan Medic
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39891; -- Doomsday Cultist
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39920; -- Baltharus the Warborn (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39922; -- Baltharus the Warborn (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39934; -- Zeppelin Sentry
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39938; -- Twilight Seeker\'s Mount
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39940; -- Dead Seeker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39944; -- Halion (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39945; -- Halion (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39967; -- Cultist Lethelyn
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39968; -- Cultist Kaima
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39969; -- Cultist Wyman
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39970; -- Cultist Orlunn
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39973; -- Swift Orange Mechanostrider
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39975; -- East Zeppelin Tower Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39976; -- West Zeppelin Tower Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39977; -- Razor Hill Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40001; -- Combustion
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40006; -- Durak\'s Shield
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40010; -- Gnomeregan Mechano-Suit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40029; -- Meteor Strike
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40037; -- Durak\'s Shield (stage 2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40038; -- Durak\'s Shield (stage 3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40039; -- Durak\'s Shield (stage 4)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40041; -- Meteor Strike
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40042; -- Meteor Strike
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40043; -- Meteor Strike
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40044; -- Meteor Strike
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40055; -- Meteor Strike
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40057; -- Mekkatorque\'s Swift Blue Mechanostrider
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40081; -- Orb Carrier
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40083; -- Shadow Orb
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40091; -- Orb Rotation Focus
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40097; -- Overseer Talathor
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40098; -- Overseer Sylandra
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40100; -- Shadow Orb
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40101; -- Valley of Heroes Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40102; -- Westbrook Garrison Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40103; -- Goldshire Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40104; -- Raging Wind Elemental
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40110; -- Worried Citizen
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40120; -- Gnomeregan Mechano-Tank
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40122; -- Gnomeregan Infantry
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40124; -- Doomsayer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40125; -- Stormwind Citizen
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40135; -- Consumption
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40138; -- Stormwind City Guard (Corpse)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40141; -- Tormun\'s Shield
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40142; -- Halion
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40143; -- Halion (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40144; -- Halion (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40145; -- Halion (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40146; -- Halion Controller
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40151; -- Combat Stalker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40165; -- Blazing Hippogryph
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40175; -- Gnomeregan Mechano-Tank
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40176; -- Sen\'jin Frog
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40182; -- Bwonsamdi
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40184; -- Vanira
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40187; -- Vanira\'s Sentry Totem
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40188; -- Attuned Frog
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40189; -- Jun\'do the Traitor
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40191; -- Wooly White Rhino
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40192; -- Vanira
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40195; -- Mindless Troll
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40196; -- Zen\'tabra
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40198; -- Frigid Frostling
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40199; -- Tiki Warrior
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40203; -- Recon Bat
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40204; -- Handler Marnlek
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40205; -- Zom Bocom
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40206; -- Big Zokk Torquewrench
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40207; -- Kezzik the Striker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40208; -- Leeni \"Smiley\" Smalls
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40209; -- Grex Brainboiler
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40210; -- Xazi Smolderpipe
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40211; -- Nargle Lashcord
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40212; -- Trapjaw Rix
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40213; -- Ecton Brasstumbler
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40214; -- Evee Copperspring
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40215; -- Argex Irongut
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40216; -- Blazzek the Biter
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40217; -- Echo Isle Animal
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40218; -- Spy Frog Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40220; -- [ph] Summoned Crab - Pet
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40222; -- Scout Bat
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40225; -- Hexed Dire Troll
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40231; -- Hexed Troll
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40241; -- Darkspear Warrior
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40246; -- Instant Statue Pedestal
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40253; -- Champion Uru\'zin
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40256; -- Troll Citizen
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40257; -- Troll Citizen
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40260; -- Troll Volunteer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40263; -- Tiki Warrior
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40264; -- Troll Volunteer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40265; -- [DND] Zen\'tabra Cat Form
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40274; -- Restless Zombie
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40279; -- Bwonsamdi
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40281; -- Crashin\' Thrashin\' Racer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40295; -- Clockwork Rocket Bot
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40301; -- Tiger Matriarch Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40305; -- Spirit of the Tiger
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40312; -- Tiger Matriarch
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40329; -- Zen\'tabra
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40352; -- Witch Doctor Hez\'tok
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40354; -- [DND] Zen\'tabra Travel Form
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40356; -- Ritual Dancer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40361; -- Troll Dance Leader
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40363; -- Dance Participant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40368; -- Zalazane\'s Remains
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40373; -- Ritual Drummer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40374; -- Voice of the Spirits
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40387; -- Omen Event Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40388; -- Darkspear Ancestor
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40391; -- Vol\'jin
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40392; -- Darkspear Warrior
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40404; -- Tyrantus
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40405; -- Kieupid
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40413; -- Alenjon Sunblade
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40414; -- Bones of Bwonsamdi
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40415; -- Scout\'s Bat
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40416; -- Darkspear Scout
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40418; -- Charscale Invoker (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40420; -- Charscale Assaulter (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40422; -- Charscale Elite (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40424; -- Charscale Commander (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40425; -- Voodoo Troll
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40426; -- Tiny Mooncloth Carpet
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40428; -- [DND] Quest Credit Bunny - ET Battle
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40435; -- Headless Ghost
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40437; -- Battered Brewer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40438; -- Steamwheedle Shyster
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40468; -- Shadow Orb
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40469; -- Shadow Orb
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40470; -- Orb Carrier (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40471; -- Orb Carrier (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40472; -- Orb Carrier (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40479; -- Camera Vehicle
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40481; -- Troll Celebrant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40492; -- Zild\'jian
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40502; -- Zalazane
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40533; -- Frosty Flying Carpet
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40606; -- Knight-Lieutenant T\'Maire Sydes
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40624; -- Celestial Dragon
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40625; -- Celestial Steed
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40670; -- Combustion (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40671; -- Combustion (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40672; -- Combustion (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40673; -- Consumption (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40674; -- Consumption (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40675; -- Consumption (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40681; -- Living Inferno
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40682; -- Living Inferno (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40683; -- Living Ember
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40684; -- Living Ember (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40703; -- Lil\' XT
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40704; -- Vrykul Proto-dragon Mount
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40721; -- Murkimus the Gladiator
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40724; -- Crafticus Jones
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40725; -- X-53 Touring Rocket
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40842; -- Ruby Drake
UPDATE creature_template SET UnitClass = 1 WHERE entry = 41839; -- [DND] Controller
UPDATE creature_template SET UnitClass = 1 WHERE entry = 42078; -- Mini Thor
UPDATE creature_template SET UnitClass = 1 WHERE entry = 43280; -- Orb Rotation Focus (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 43281; -- Orb Rotation Focus (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 43282; -- Orb Rotation Focus (3)


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

-- ----------------
-- Scriptdev2
-- ----------------
-- 2861
UPDATE creature_template SET ScriptName='' WHERE entry IN (17909,19052,22427);
UPDATE creature_template SET ScriptName='' WHERE entry=14822;
UPDATE creature_template SET ScriptName='' WHERE entry IN (384,1261,1460,2357,3362,3685,4730,4731,4885,7952,7955,16264,17584);
UPDATE creature_template SET ScriptName='' WHERE entry=28776;
-- 2863
UPDATE creature_template SET ScriptName='npc_feather_vortex' WHERE entry=24136;
-- 2873
UPDATE creature_template SET ScriptName='npc_power_blue_flight' WHERE entry=25653;
-- 2874
UPDATE creature_template SET ScriptName='npc_snufflenose_gopher' WHERE entry=4781;
-- 2875 
UPDATE creature_template SET ScriptName='npc_therylune' WHERE entry=3584;
-- 2878
UPDATE creature_template SET ScriptName='' WHERE entry=31218;
UPDATE creature_template SET ScriptName='' WHERE entry=31219;
UPDATE creature_template SET ScriptName='npc_flame_tsunami' WHERE entry=30616;
-- 2879
UPDATE creature_template SET ScriptName='npc_fire_cyclone' WHERE entry=30648;
-- 2880
UPDATE gameobject_template SET ScriptName='go_sapphiron_birth' WHERE entry=181356;
-- 2885
UPDATE creature_template SET ScriptName='boss_zumrah' WHERE entry=7271;
-- 2891
DELETE FROM scripted_event_id WHERE id IN (2609);
INSERT INTO scripted_event_id VALUES
(2609,'event_spell_unlocking');
UPDATE creature_template SET ScriptName='' WHERE entry=7604;
UPDATE creature_template SET ScriptName='' WHERE entry=7607;
-- 2893
UPDATE creature_template SET ScriptName='' WHERE entry IN (27263,27264,27265);
UPDATE gameobject_template SET ScriptName='' WHERE entry IN (185547,185553,185551);
-- 2894
UPDATE creature_template SET ScriptName='npc_domesticated_felboar' WHERE entry=21195;
UPDATE creature_template SET ScriptName='npc_shadowmoon_tuber_node' WHERE entry=21347;
-- 2896
UPDATE creature_template SET ScriptName='boss_ahune' WHERE entry=25740;
UPDATE creature_template SET ScriptName='npc_frozen_core' WHERE entry=25865;
UPDATE creature_template SET ScriptName='npc_ice_spear_bunny' WHERE entry=25985;
-- 2897
UPDATE creature_template SET ScriptName='npc_veneratus_spawn_node' WHERE entry=21334;
-- 2898
UPDATE creature_template SET ScriptName='' WHERE entry IN (19998,20334,21296,21975);
UPDATE creature_template SET ScriptName='npc_bloodmaul_stout_trigger' WHERE entry=21241;
-- 2899
UPDATE creature_template SET ScriptName='npc_demonic_vapor' WHERE entry=25265;
-- 2902
UPDATE creature_template SET ScriptName='npc_simon_game_bunny' WHERE entry=22923;
-- 2904
UPDATE creature_template SET ScriptName='npc_anchorite_truuen' WHERE entry=17238;
-- 2905
UPDATE creature_template SET ScriptName='npc_lich_king_village' WHERE entry=24248;
-- 2907
UPDATE creature_template SET ScriptName='npc_king_ymiron' WHERE entry=24321;
DELETE FROM scripted_areatrigger WHERE entry IN (4779);
INSERT INTO scripted_areatrigger VALUES (4779,'at_nifflevar');
-- 2908
UPDATE creature_template SET ScriptName='npc_echo_of_medivh' WHERE entry=16816;
UPDATE creature_template SET ScriptName='npc_king_llane' WHERE entry=21684;
UPDATE creature_template SET ScriptName='npc_warchief_blackhand' WHERE entry=21752;
UPDATE creature_template SET ScriptName='npc_human_conjurer' WHERE entry=21683;
UPDATE creature_template SET ScriptName='npc_orc_warlock' WHERE entry=21750;
UPDATE creature_template SET ScriptName='npc_human_footman' WHERE entry=17211;
UPDATE creature_template SET ScriptName='npc_orc_grunt' WHERE entry=17469;
UPDATE creature_template SET ScriptName='npc_water_elemental' WHERE entry=21160;
UPDATE creature_template SET ScriptName='npc_summoned_daemon' WHERE entry=21726;
UPDATE creature_template SET ScriptName='npc_human_charger' WHERE entry=21664;
UPDATE creature_template SET ScriptName='npc_orc_wolf' WHERE entry=21748;
UPDATE creature_template SET ScriptName='npc_human_cleric' WHERE entry=21682;
UPDATE creature_template SET ScriptName='npc_orc_necrolyte' WHERE entry=21747;
-- 2912
UPDATE gameobject_template SET ScriptName='' WHERE entry IN (187982,187995,187996,187997,187998,187999,188000,188001,188002,188003,188004,188005,188006,188007,188008);
-- 2915
UPDATE creature_template SET ScriptName='npc_kinelory' WHERE entry=2713;
-- 2916
UPDATE creature_template SET ScriptName='npc_stinky_ignatz' WHERE entry=4880;
-- 2917
UPDATE creature_template SET ScriptName='npc_rabid_bear' WHERE entry=2164;
-- 2918
UPDATE creature_template SET ScriptName='npc_kernobee' WHERE entry=7850;
-- 2920
UPDATE creature_template SET ScriptName='' WHERE entry IN (30890, 31214);
UPDATE creature_template SET ScriptName='mob_twilight_eggs' WHERE entry IN (31204);
UPDATE creature_template SET ScriptName='npc_tenebron_egg_controller' WHERE entry=31138;
-- 2921
UPDATE creature_template SET ScriptName='npc_netherspite_portal' WHERE entry IN (17367,17368,17369);
-- 2923
UPDATE creature_template SET ScriptName='boss_ignis' WHERE entry=33118;
UPDATE creature_template SET ScriptName='npc_iron_construct' WHERE entry=33121;
UPDATE creature_template SET ScriptName='npc_scorch' WHERE entry=33221;
DELETE FROM scripted_event_id WHERE id IN (21620);
INSERT INTO scripted_event_id VALUES
(21620,'event_ulduar');
-- 2925
UPDATE creature_template SET ScriptName='boss_xt_002' WHERE entry=33293;
-- 2926
UPDATE creature_template SET ScriptName='boss_heart_deconstructor' WHERE entry=33329;
UPDATE creature_template SET ScriptName='npc_xt_toy_pile' WHERE entry=33337;
-- 2927
UPDATE creature_template SET ScriptName='boss_razorscale' WHERE entry=33186;
UPDATE creature_template SET ScriptName='npc_expedition_commander' WHERE entry=33210;
-- 2929
UPDATE creature_template SET ScriptName='npc_razorscale_spawner' WHERE entry=33245;
UPDATE creature_template SET ScriptName='npc_harpoon_fire_state' WHERE entry=33282;
DELETE FROM scripted_event_id WHERE id IN (20964);
INSERT INTO scripted_event_id VALUES
(20964,'event_spell_harpoon_shot');
-- 2930
UPDATE creature_template SET ScriptName='boss_flame_leviathan' WHERE entry=33113;
-- 2932
UPDATE gameobject_template SET ScriptName='go_ulduar_teleporter' WHERE entry=194569;
-- 2933
UPDATE creature_template SET ScriptName='npc_keeper_norgannon' WHERE entry=33686;
UPDATE creature_template SET ScriptName='npc_brann_ulduar' WHERE entry=33579;
DELETE FROM scripted_event_id WHERE id IN (21030,21031,21032,21033);
INSERT INTO scripted_event_id VALUES
(21030,'event_go_ulduar_tower'),        -- Tower of Life destroyed event
(21031,'event_go_ulduar_tower'),        -- Tower of Storms destroyed event
(21032,'event_go_ulduar_tower'),        -- Tower of Frost destroyed event
(21033,'event_go_ulduar_tower');        -- Tower of Flame destroyed event
-- 2935
UPDATE creature_template SET ScriptName='npc_hodir_fury_reticle' WHERE entry=33108;
UPDATE creature_template SET ScriptName='npc_hodir_fury' WHERE entry=33212;
UPDATE creature_template SET ScriptName='npc_freya_ward' WHERE entry=33367;
UPDATE creature_template SET ScriptName='npc_mimiron_inferno' WHERE entry=33370;
DELETE FROM scripted_event_id WHERE id IN (21605);
INSERT INTO scripted_event_id VALUES
(21605,'event_ulduar');
-- 2938
UPDATE creature_template SET ScriptName='npc_scrapbot' WHERE entry=33343;
DELETE FROM scripted_event_id WHERE id IN (21606);
INSERT INTO scripted_event_id VALUES
(21606,'event_ulduar');
-- 2939
UPDATE creature_template SET ScriptName='boss_kologarn' WHERE entry=32930;
-- 2940
UPDATE creature_template SET ScriptName='npc_focused_eyebeam' WHERE entry IN (33802,33632);
-- 2942
UPDATE creature_template SET ScriptName='npc_rubble_stalker' WHERE entry=33809;
-- 2944
UPDATE creature_template SET ScriptName='npc_storm_tempered_keeper' WHERE entry IN (33699,33722);
UPDATE creature_template SET ScriptName='npc_charged_sphere' WHERE entry=33715;
-- 2946
UPDATE creature_template SET ScriptName='boss_algalon' WHERE entry=32871;
UPDATE gameobject_template SET ScriptName='go_celestial_access' WHERE entry IN (194628,194752);
-- 2947
UPDATE creature_template SET ScriptName='npc_living_constellation' WHERE entry=33052;
UPDATE creature_template SET ScriptName='npc_worm_hole' WHERE entry=34099;
UPDATE creature_template SET ScriptName='npc_black_hole' WHERE entry=32953;
UPDATE creature_template SET ScriptName='npc_collapsing_star' WHERE entry=32955;
-- 2948
UPDATE creature_template SET ScriptName='boss_hodir' WHERE entry=32845;
-- 2951
UPDATE creature_template SET ScriptName='npc_flash_freeze' WHERE entry IN (32926,32938);
UPDATE creature_template SET ScriptName='npc_icicle_target' WHERE entry=33174;
DELETE FROM scripted_event_id WHERE id IN (20907,21045);
INSERT INTO scripted_event_id VALUES
(20907,'event_boss_hodir'),
(21045,'event_boss_hodir');
-- 2954
UPDATE creature_template SET ScriptName='boss_thorim' WHERE entry=32865;
-- 2955
UPDATE creature_template SET ScriptName='npc_cenarion_sparrowhawk' WHERE entry=22972;
-- 2958
UPDATE creature_template SET ScriptName='boss_sif' WHERE entry=33196;
UPDATE creature_template SET ScriptName='npc_thunder_orb' WHERE entry=33378;
-- 2959
UPDATE creature_template SET ScriptName='npc_runic_colossus' WHERE entry=32872;
-- 2962
UPDATE creature_template SET ScriptName='boss_freya' WHERE entry=32906;
-- 2963
UPDATE creature_template SET ScriptName='npc_eonars_gift' WHERE entry=33228;
UPDATE creature_template SET ScriptName='npc_nature_bomb' WHERE entry=34129;
-- 2964
UPDATE creature_template SET ScriptName='npc_iron_roots' WHERE entry IN (33088,33168);
-- 2965
UPDATE creature_template SET ScriptName='npc_healthy_spore' WHERE entry=33215;
UPDATE creature_template SET ScriptName='npc_water_spirit' WHERE entry=33202;
UPDATE creature_template SET ScriptName='npc_snaplasher' WHERE entry=32916;
UPDATE creature_template SET ScriptName='npc_storm_lasher' WHERE entry=32919;
-- 2967
UPDATE creature_template SET ScriptName='boss_leviathan_mk2' WHERE entry=33432;
-- 2969
UPDATE creature_template SET ScriptName='' WHERE entry IN (22208,22212,22213);
-- 2970
UPDATE creature_template SET ScriptName='boss_mimiron' WHERE entry=33350;
UPDATE creature_template SET ScriptName='boss_vx001' WHERE entry=33651;
UPDATE creature_template SET ScriptName='boss_aerial_unit' WHERE entry=33670;
UPDATE gameobject_template SET ScriptName='go_big_red_button' WHERE entry=194739;
-- 2971
UPDATE creature_template SET ScriptName='npc_proximity_mine' WHERE entry=34362;
UPDATE creature_template SET ScriptName='npc_bot_trigger' WHERE entry=33856;
UPDATE creature_template SET ScriptName='boss_leviathan_mk2_turret' WHERE entry=34071;
-- 2972
UPDATE creature_template SET ScriptName='npc_rocket_strike' WHERE entry=34047;
UPDATE creature_template SET ScriptName='npc_mimiron_flames' WHERE entry IN (34363,34121);
UPDATE creature_template SET ScriptName='npc_computer' WHERE entry=34143;
UPDATE creature_template SET ScriptName='npc_frost_bomb' WHERE entry=34149;
-- 2973
UPDATE creature_template SET ScriptName='spell_dummy_npc_crates_bunny' WHERE entry=27827;
DELETE FROM scripted_areatrigger WHERE entry=5291;
INSERT INTO scripted_areatrigger VALUES
(5291,'at_culling_of_stratholme');
-- 2974
UPDATE creature_template SET ScriptName='boss_sara' WHERE entry=33134;
-- 2977
UPDATE creature_template SET ScriptName='npc_ominous_cloud' WHERE entry=33292;
UPDATE creature_template SET ScriptName='npc_voice_yogg_saron' WHERE entry=33280;
-- 2978
UPDATE creature_template SET ScriptName='npc_ulduar_keeper' WHERE entry IN (33241,33242,33244,33213);
-- 2980
UPDATE creature_template SET ScriptName='spell_dummy_npc' WHERE entry IN (30169);
-- 2981
UPDATE creature_template SET ScriptName='npc_floating_spirit' WHERE entry IN (30141,30143,30145);
UPDATE creature_template SET ScriptName='npc_restless_frostborn' WHERE entry IN (29974,30135,30144);
UPDATE creature_template SET ScriptName='' WHERE entry=30996;
-- 2982
UPDATE creature_template SET ScriptName='npc_beryl_sorcerer' WHERE entry=25316;
UPDATE creature_template SET ScriptName='npc_captured_beryl_sorcerer' WHERE entry=25474;
-- 2984
UPDATE creature_template SET ScriptName='npc_nexus_drake_hatchling' WHERE entry=26127;
-- 2985
UPDATE creature_template SET ScriptName='npc_rethhedron' WHERE entry=22357;
-- 2987
UPDATE creature_template SET ScriptName='npc_drijya' WHERE entry=20281;
-- 2988
UPDATE creature_template SET ScriptName='npc_firecrackers_bunny' WHERE entry=24230;
-- 2989
UPDATE creature_template SET ScriptName='npc_ghoul_feeding_bunny' WHERE entry=28591;
UPDATE creature_template SET ScriptName='npc_decaying_ghoul' WHERE entry=28565;
-- 2992
UPDATE creature_template SET ScriptName='npc_scourged_flamespitter' WHERE entry=25582;
-- 2994
UPDATE creature_template SET ScriptName='npc_anchorite_barada' WHERE entry=22431;
UPDATE creature_template SET ScriptName='npc_colonel_jules' WHERE entry=22432;
-- 2995
UPDATE creature_template SET ScriptName='npc_dorius_stonetender' WHERE entry=8284;
-- 2996
UPDATE creature_template SET ScriptName='npc_fhwoor' WHERE entry=17877;
-- 2997
UPDATE creature_template SET ScriptName='npc_nagrand_captive' WHERE entry IN (18209,18210);
-- 2998
UPDATE creature_template SET ScriptName="npc_skyguard_prisoner" WHERE entry=23383;
-- 2999
UPDATE creature_template SET ScriptName='npc_bonker_togglevolt' WHERE entry=25589;
-- 3002
UPDATE creature_template SET ScriptName='npc_squad_leader' WHERE entry IN (31737,31833);
UPDATE creature_template SET ScriptName='npc_infantry' WHERE entry IN (31701,31832);
-- 3004
UPDATE creature_template SET ScriptName='npc_father_kamaros' WHERE entry IN (31279,32800);
-- 3005
UPDATE creature_template SET ScriptName='npc_injured_miner' WHERE entry=29434;
-- 3006
UPDATE creature_template SET ScriptName='npc_harrison_jones' WHERE entry=26814;
-- 3007
UPDATE creature_template SET ScriptName='npc_apothecary_hanes' WHERE entry=23784;
-- 3008
UPDATE creature_template SET ScriptName='npc_taelan_fordring' WHERE entry=1842;
UPDATE creature_template SET ScriptName='npc_isillien' WHERE entry=1840;
UPDATE creature_template SET ScriptName='npc_tirion_fordring' WHERE entry=12126;
-- 3010
DELETE FROM scripted_areatrigger WHERE entry IN (4052);
INSERT INTO scripted_areatrigger VALUES
(4052,'at_temple_ahnqiraj');
-- 3011
UPDATE creature_template SET ScriptName='boss_tethyr' WHERE entry=23899;
-- 3012
UPDATE creature_template SET ScriptName='npc_shay_leafrunner' WHERE entry=7774;
-- 3013
DELETE FROM scripted_areatrigger WHERE entry IN (5710,5711,5712,5714,5715,5716);
INSERT INTO scripted_areatrigger VALUES
(5710, 'at_hot_on_the_trail'),
(5711, 'at_hot_on_the_trail'),
(5712, 'at_hot_on_the_trail'),
(5714, 'at_hot_on_the_trail'),
(5715, 'at_hot_on_the_trail'),
(5716, 'at_hot_on_the_trail');
-- 3014
UPDATE creature_template SET ScriptName='npc_saronite_mine_slave' WHERE entry=31397;
-- 3015
UPDATE creature_template SET ScriptName='npc_tipsy_mcmanus' WHERE entry=28566;
UPDATE creature_template SET ScriptName='npc_wants_fruit_credit' WHERE entry IN (28535,28536,28537);
UPDATE gameobject_template SET ScriptName='go_quest_still_at_it_credit' WHERE entry IN (190635,190636);
-- 3017
UPDATE creature_template SET ScriptName='boss_head_of_horseman' WHERE entry=23775;
-- 3019
UPDATE creature_template SET ScriptName = 'npc_scalawag_frog' WHERE entry = 26503;
UPDATE creature_template SET ScriptName = 'npc_crystalline_ice_giant' WHERE entry = 26809;
-- 3022
UPDATE creature_template SET ScriptName = 'npc_guardian_of_yogg' WHERE entry = 33136;
UPDATE creature_template SET ScriptName = 'boss_yogg_saron' WHERE entry = 33288;
-- 3023
UPDATE creature_template SET ScriptName = 'npc_captured_arkonarin' WHERE entry = 11016;
-- 3024
UPDATE creature_template SET ScriptName='npc_arei' WHERE entry=9598;
-- 3028
UPDATE creature_template SET ScriptName='npc_death_ray' WHERE entry=33881;
UPDATE creature_template SET ScriptName='npc_immortal_guardian' WHERE entry=33988;
UPDATE creature_template SET ScriptName='npc_constrictor_tentacle' WHERE entry=33983;
-- 3029
UPDATE creature_template SET ScriptName='npc_brain_yogg_saron' WHERE entry=33890;
UPDATE creature_template SET ScriptName='npc_descent_madness' WHERE entry=34072;
UPDATE creature_template SET ScriptName='npc_laughing_skull' WHERE entry=33990;
-- 3031
UPDATE creature_template SET ScriptName='npc_keeper_mimiron' WHERE entry=33412;
UPDATE creature_template SET ScriptName='npc_keeper_thorim' WHERE entry=33413;


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

