-- Updatepack_407

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
-- ------------------
-- NPC w/ script, waypoint, pool or game event
-- ------------------
-- clean up
DELETE FROM creature WHERE guid BETWEEN 140623 AND 140771;
DELETE FROM creature_addon WHERE guid BETWEEN 140623 AND 140774;
DELETE FROM creature_movement WHERE id BETWEEN 140623 AND 140774;
DELETE FROM creature_linking WHERE guid BETWEEN 140623 AND 140774;
-- ---------------
-- Schmoo_fix
-- ---------------
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

