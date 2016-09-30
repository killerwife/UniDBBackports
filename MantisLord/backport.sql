-- UDB_029
-- Disrupt Their Reinforcements (10144,10208)
DELETE FROM gameobject WHERE guid BETWEEN 39908 AND 39911;
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(39908, 183816, 530, 1, -84.5415, 1881.739, 73.82645, 3.35296, 0, 0, 0.984807, 0.1736523, -60, 255, 1), -- Xilus
(39909, 183816, 530, 1, 147.0184, 1717.341, 37.46404, -0.9424766, 0, 0, -0.45399, 0.8910068, -60, 255, 1), -- Kruul
(39910, 183816, 530, 1, -545.2587, 1781.167, 56.22634, 2.146753, 0, 0, 0.8788166, 0.4771597, -60, 255, 1), -- Kaalez
(39911, 183816, 530, 1, -418.627, 1847.49, 80.7808, 1.48097, 0, 0, 0.674647, 0.738141, -60, 255, 1); -- Grimh

-- Gateway Murketh
UPDATE gameobject SET position_x = -144.4861, position_y = 1511.453, position_z = 29.58671, orientation = 3.028119, rotation0 = -0.04258156, rotation1 = -0.05868149, rotation2 = 0.9958963, rotation3 = 0.05416433 WHERE id = 183350; 
-- Gateway Shaadraz 
UPDATE gameobject SET position_x = -303.5573, position_y = 1526.004, position_z = 33.8859, orientation = -2.993238, rotation0 = -0.06276989, rotation1 = 0.0825901, rotation2 = -0.9922237, rotation3 = 0.06878129 WHERE id = 183351; 
-- 'Portal Grimh'
UPDATE gameobject SET position_x = -418.401, position_y = 1848.877, position_z = 78.58884, orientation = 1.53589, rotation0 = 0.07789183, rotation1 = -0.1241655, rotation2 = 0.6839972, rotation3 = 0.7146074 WHERE id = 184414; 
-- 'Portal Kaalez'
UPDATE gameobject SET position_x = -548.9393, position_y = 1783.983, position_z = 56.2879, orientation = 2.652893, rotation0 = 0.1065927, rotation1 = -0.07565403, rotation2 = 0.9605389, rotation3 = 0.245519 WHERE id = 184415;
-- 'Portal Xilus'
UPDATE gameobject SET position_x = -84.78993, position_y = 1881.726, position_z = 72.19016, orientation = 2.54818, rotation0 = 0.101759, rotation1 = 0.005214691, rotation2 = 0.9523001, rotation3 = 0.28765 WHERE id = 184290;
-- 'Portal Kruul'
UPDATE gameobject SET position_x = 147.0052, position_y = 1718.116, position_z = 35.80159, orientation = 3.14126, rotation0 = 0.06085968, rotation1 = -0.07831287, rotation2 = 0.9950571, rotation3 = 0.004954683 WHERE id = 184289;

-- UDB_034
-- Nether Technician
-- equip (not for all)
UPDATE creature SET equipment_id = 5316 WHERE guid IN (71807,71809,71816,71818);
UPDATE creature_template SET EquipmentTemplateId = 0 WHERE entry = 20203;

-- UDB_039
-- Test of Lore (q.6628) -- missing text added
DELETE FROM dbscripts_on_gossip WHERE id = 476402 AND delay = 1;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(476402,1,0,0,0,0,0,0,2000000259,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry = 2000000259;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000000259,'You have done well, $N. Continue your search for knowledge, and remember the history you have learned.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL);

-- UDB_041
-- Honor the Fallen (q.10258)
-- Vengeful Unyielding Knight
UPDATE creature_template SET EquipmentTemplateId = 118 WHERE entry = 20117;

-- UDB_050
-- q.5541 'Ammo for Rumbleshot'
-- Event: Mortar Combat - update
-- Angus (q.5541req.)
UPDATE creature_movement_template SET waittime = 1000 WHERE entry = 10610 AND point = 1;
UPDATE creature_movement_template SET waittime = 420000 WHERE entry = 10610 AND point = 7;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1061001 AND delay IN (0,1); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(1061001,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Angus - active'),
(1061001,0,21,1,0,10805,272,0x10,0,0,0,0,0,0,0,0,'Klemmy - active'),
(1061001,0,21,1,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty - active'),
(1061001,1,29,3,2,1243,265,7 | 0x10,0,0,0,0,0,0,0,0,'1243 - NPCFlags removed'),
(1061001,1,21,1,0,10803,266,0x10,0,0,0,0,0,0,0,0,'Wheeler - active'),
(1061001,1,21,1,0,10804,268,0x10,0,0,0,0,0,0,0,0,'Middlecamp - active');
DELETE FROM dbscripts_on_creature_movement WHERE id = 1061003 AND delay = 229; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(1061003,229,29,3,1,1243,265,7 | 0x10,0,0,0,0,0,0,0,0,'1243 - NPCFlags added');

-- UDB_051
-- NPCFLags - fix
-- 29 SCRIPT_COMMAND_MODIFY_NPC_FLAGS -- some were broken in 407_UPDATEPACK.

-- quest 10988 'The Raven Stones' - Druid
UPDATE dbscripts_on_quest_end SET datalong2 = 2 WHERE id = 10988 AND delay = 0;
UPDATE dbscripts_on_quest_end SET datalong2 = 1 WHERE id = 10988 AND delay = 49;
-- quest 10964 'Waking the Sleeper' - Druid
UPDATE dbscripts_on_quest_end SET datalong2 = 2 WHERE id = 10964 AND delay = 0;
UPDATE dbscripts_on_quest_end SET datalong2 = 1 WHERE id = 10964 AND delay = 24;
-- quest 10961 'The Ward of Wakening' - Druid
UPDATE dbscripts_on_quest_end SET datalong2 = 2 WHERE id = 10961 AND delay = 0;
UPDATE dbscripts_on_quest_end SET datalong2 = 1 WHERE id = 10961 AND delay = 15;
-- All Clear!(q.10436)
UPDATE dbscripts_on_quest_end SET datalong2 = 1 WHERE id = 10436 AND delay = 23;

-- UDB_055
-- UDB_056
-- fix wrong used spell. thanks to @cala
DELETE FROM creature_template_spells WHERE entry = 6066;
INSERT INTO creature_template_spells VALUES
(6066, 8377, 0, 0, 0);

-- UDB_061
-- signboards in "The Library" Irongorge -- rotation update 
-- Roc Talon 
UPDATE gameobject SET rotation0 = 0.607692, rotation1 = -0.361538, rotation2 = 0.607693, rotation3 = 0.361539 WHERE guid = 5398;
-- The Skull of Tyrannistrasz
UPDATE gameobject SET orientation = 1.5708, rotation0 = 0.147016, rotation1 = -0.691655, rotation2 = 0.147016, rotation3 = 0.691655 WHERE guid = 5425;
-- Fossilized Egg
UPDATE gameobject SET orientation = 2.21004, rotation0 = 0.607692, rotation1 = -0.361538, rotation2 = 0.607693, rotation3 = 0.361539 WHERE guid = 5405;
-- Toothgnasher's Skeleton
UPDATE gameobject SET orientation = 4.71239, rotation0 = 0.61994, rotation1 = -0.340111, rotation2 = 0.619939, rotation3 = 0.34011 WHERE guid = 5382;
-- Horde Catapult
UPDATE gameobject SET orientation = -0.521631, rotation0 = 0.309975, rotation1 = -0.635543, rotation2 = 0.309974, rotation3 = 0.635543 WHERE guid = 5205;
-- Uldaman Reliefs
UPDATE gameobject SET orientation = 2.30151, rotation0 = 0.681389, rotation1 = -0.188966, rotation2 = 0.68139, rotation3 = 0.188967 WHERE guid = 5141;

-- UDB_066
-- Bubbly Fissure - Lushwater Oasis -- correct spawn point and rotation
UPDATE gameobject SET position_x = -1040.198, position_y = -2078.984, position_z = 50.57693, orientation = 3.13287, rotation0 = -0.1300697, rotation1 = 0.05677509, rotation2 = 0.9898081, rotation3 = 0.01176444 WHERE guid = 13380;

-- UDB_067
-- Kyle the Frenzied - Bloodhoof Village - waypoints update
DELETE FROM creature_movement WHERE id = 24762;
DELETE FROM creature_movement_template WHERE entry = 23616;
INSERT INTO creature_movement_template VALUES
(23616, 1, -2459.23, -484.062, -9.01284, 1000, 2361601, 0, 0, 0, 0, 0, 0, 0, 0.663225, 0, 0),
(23616, 2, -2402.03, -450.559, -8.75533, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.74381, 0, 0),
(23616, 3, -2360.14, -480.905, -7.3224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.8357, 0, 0),
(23616, 4, -2335.06, -490.048, -8.65025, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.098364, 0, 0),
(23616, 5, -2299.56, -488.846, -7.72652, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.441582, 0, 0),
(23616, 6, -2269.57, -479.933, -7.41176, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.868053, 0, 0),
(23616, 7, -2254.12, -436.36, -9.42435, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.56869, 0, 0),
(23616, 8, -2254.84, -371.069, -9.42435, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.16069, 0, 0),
(23616, 9, -2293.09, -370.06, -9.40226, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.78927, 0, 0),
(23616, 10, -2313.55, -353.517, -9.42137, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.97541, 0, 0),
(23616, 11, -2324.3, -357.078, -8.96122, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.05182, 0, 0),
(23616, 12, -2334.89, -373.074, -8.33575, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.17356, 0, 0),
(23616, 13, -2350.42, -407.086, -9.47326, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.95951, 0, 0),
(23616, 14, -2386.38, -436.415, -8.6381, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.55111, 0, 0),
(23616, 15, -2429.66, -437.721, -3.88648, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.64064, 0, 0),
(23616, 16, -2471, -469.379, -8.11428, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.79596, 0, 0),
(23616, 17, -2461.07, -486.177, -9.19011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.536736, 0, 0);

DELETE FROM dbscripts_on_creature_movement WHERE id = 2361601;
INSERT INTO dbscripts_on_creature_movement VALUES
(2361601, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'RUN ON');

-- UDB_073
-- Thief Catcher Shadowdelve
SET @SHADOWDELVE := 14363;
SET @GUID := (SELECT guid FROM creature WHERE id = @SHADOWDELVE);
SET @POINT := 0;
UPDATE creature SET position_x = -4896.550, position_y = -996.0091, position_z = 504.0237, orientation = 0.6960631, MovementType = 2 WHERE id = @SHADOWDELVE;
DELETE FROM creature_movement WHERE id = @GUID;
DELETE FROM creature_movement_template WHERE entry = @SHADOWDELVE;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(@SHADOWDELVE, (@POINT := @POINT + 1), -4885.096, -986.4387, 503.9404, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4888.364, -983.6744, 503.9405, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4895.207, -985.1433, 503.9404, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4904.652, -975.4191, 501.4508, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4908.016, -960.3723, 501.5012, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4880.324, -920.6398, 501.5753, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4833.688, -904.1839, 501.6598, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4797.364, -906.4210, 497.9217, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4780.092, -905.9431, 499.2118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4763.683, -907.0504, 501.6255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4721.881, -922.5632, 501.6541, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4691.694, -946.5085, 501.6670, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4679.948, -969.9567, 501.6992, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4650.121, -982.7744, 501.6564, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4635.554, -960.3665, 501.6609, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4651.672, -935.2123, 501.6579, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4687.276, -922.1450, 501.6603, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4721.487, -905.8834, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4757.437, -890.9809, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4785.496, -884.3284, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4815.042, -883.2499, 501.6677, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4846.717, -886.1057, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4886.973, -891.7634, 501.6593, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4906.807, -884.8439, 501.6595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4929.052, -856.4695, 501.6614, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4952.721, -869.0760, 501.6613, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4988.777, -898.9862, 501.6362, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -5017.839, -932.5099, 501.6595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4985.217, -957.6404, 501.6595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4958.795, -941.6141, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4947.842, -930.1240, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4950.354, -921.7192, 504.2645, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4961.114, -913.8481, 503.8348, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4956.323, -904.1819, 503.8368, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4950.286, -908.2200, 503.8357, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4950.209, -918.2828, 504.2613, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4942.204, -927.9940, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4935.647, -936.2831, 503.0424, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4931.629, -949.3468, 501.6228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4915.165, -957.8141, 501.5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4906.877, -973.0106, 501.4532, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4898.353, -983.7513, 503.9404, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@SHADOWDELVE, (@POINT := @POINT + 1), -4891.350, -992.1207, 503.9404, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
 -- Thief Catcher Farmountain
SET @FARMOUNTAIN := 14365;
SET @GUID := (SELECT guid FROM creature WHERE id = @FARMOUNTAIN);
SET @POINT := 0;
UPDATE creature SET position_x = -4956.434, position_y = -906.7910, position_z = 503.9225, orientation = 3.836208, MovementType = 2 WHERE id = @FARMOUNTAIN;
DELETE FROM creature_movement WHERE id = @GUID;
DELETE FROM creature_movement_template WHERE entry = @FARMOUNTAIN;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(@FARMOUNTAIN, (@POINT := @POINT + 1), -4963.365, -912.5651, 503.8351, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -4955.276, -916.4485, 504.2614, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -4944.974, -929.2750, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -4973.284, -956.8936, 501.6595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -4992.383, -979.8217, 501.6595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -4994.909, -996.2097, 501.6608, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -5007.273, -1025.464, 501.6562, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -5014.620, -1054.751, 501.7294, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -5016.097, -1099.324, 501.6745, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -5011.856, -1112.884, 501.6742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -5007.002, -1116.343, 501.6876, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -5003.024, -1142.076, 501.6595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -4998.460, -1179.694, 501.6604, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -4982.609, -1226.394, 501.6788, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -4944.211, -1255.974, 501.6630, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -4925.567, -1250.108, 501.6418, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -4923.098, -1236.333, 501.6560, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -4945.754, -1214.150, 501.6548, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -4969.667, -1187.341, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -4991.060, -1151.823, 501.6537, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -4997.530, -1115.960, 501.6314, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -4994.735, -1091.497, 501.6595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -4992.421, -1058.819, 497.9618, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -4992.421, -1058.819, 497.9618, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -4989.006, -1039.414, 501.6601, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -4983.643, -1019.235, 501.6526, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -4962.486, -981.2289, 501.6595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -4929.968, -957.3575, 501.5874, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -4915.203, -960.3139, 501.4894, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -4904.061, -976.8671, 501.4414, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -4896.077, -987.4464, 503.9404, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -4896.048, -992.9202, 503.9404, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -4889.553, -993.4305, 503.9404, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -4884.642, -985.4946, 503.9404, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -4888.783, -984.3502, 503.9405, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -4894.861, -986.5887, 503.9404, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -4899.702, -980.8641, 503.9404, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -4904.338, -974.5950, 501.4507, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -4914.213, -959.8905, 501.5282, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -4935.674, -935.8187, 503.0679, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -4949.081, -919.8021, 504.2644, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FARMOUNTAIN, (@POINT := @POINT + 1), -4959.338, -908.1340, 503.8360, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- Thief Catcher Thunderbrew
SET @THUNDERBREW := 14367;
SET @GUID := (SELECT guid FROM creature WHERE id = @THUNDERBREW);
SET @POINT := 0;
UPDATE creature SET position_x = -4824.520, position_y = -1168.4150, position_z = 502.2844, orientation = 0.05302288, MovementType = 2 WHERE id = @THUNDERBREW;
DELETE FROM creature_movement WHERE id = @GUID;
DELETE FROM creature_movement_template WHERE entry = @THUNDERBREW;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(@THUNDERBREW, (@POINT := @POINT + 1), -4789.093, -1166.5350, 502.2258, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4758.693, -1159.6350, 502.2123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4730.106, -1194.2480, 501.6978, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4719.517, -1218.3540, 501.6595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4740.718, -1244.5340, 501.6592, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4724.864, -1277.6100, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4694.163, -1265.8870, 501.9927, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4682.361, -1259.1080, 501.9927, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4664.030, -1243.1180, 501.9927, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4643.821, -1214.2370, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4647.422, -1189.8260, 501.6544, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4683.809, -1195.8010, 501.6590, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4708.729, -1200.7670, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4732.161, -1176.4560, 501.6978, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4747.495, -1152.9930, 502.2064, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4734.040, -1106.0400, 502.2181, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4738.371, -1074.0730, 502.2418, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4762.797, -1042.3680, 502.2115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4788.038, -1030.8930, 502.2079, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4816.683, -1027.2800, 502.1957, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4826.917, -1014.3390, 502.2123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4838.749, -977.66580, 501.8416, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4850.542, -941.90900, 501.5055, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4866.628, -946.19140, 501.4519, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4883.959, -942.70810, 501.4178, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4908.408, -967.71200, 501.4664, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4901.270, -979.61580, 503.0475, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4894.480, -986.55600, 503.9404, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4886.826, -988.18080, 503.9404, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4894.627, -994.62760, 503.9404, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4895.386, -986.91030, 503.9404, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4905.212, -975.29350, 501.4462, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4915.479, -959.21370, 501.5359, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4936.558, -935.24610, 503.1360, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4951.304, -916.99350, 504.2646, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4951.812, -906.41910, 503.8361, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4960.936, -907.57750, 503.8362, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4962.912, -915.03820, 503.8346, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4952.596, -917.66530, 504.2635, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4938.362, -936.40620, 503.1531, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4927.755, -951.20630, 501.6015, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4937.900, -980.27130, 501.4769, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4943.053, -998.15500, 501.4404, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4943.612, -1014.5180, 501.4404, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4948.514, -1023.7060, 501.4620, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4924.298, -1036.7850, 501.7220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4885.191, -1057.8440, 502.1472, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4873.420, -1069.6380, 502.2016, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4872.613, -1106.7500, 502.1995, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4858.562, -1134.9510, 502.1884, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4842.917, -1155.2710, 502.1171, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THUNDERBREW, (@POINT := @POINT + 1), -4820.896, -1169.2980, 502.2008, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- Ironforge Guard #144
SET @GUID := 144;
SET @POINT := 0;
UPDATE creature SET position_x = -5050.712, position_y = -810.2087, position_z = 495.2109, orientation = 1.361725, MovementType = 2 WHERE guid = @GUID;
DELETE FROM creature_movement WHERE id=@GUID;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(@GUID, (@POINT := @POINT + 1), -5045.773, -786.9305, 495.2132, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5061.846, -752.7072, 481.8096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5097.768, -740.2383, 468.6567, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5133.368, -741.2177, 459.3947, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5166.305, -739.1543, 450.9035, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5187.297, -733.2242, 447.4483, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5203.363, -699.6258, 438.4007, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5218.088, -666.4339, 430.1400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5228.595, -633.1194, 421.7410, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5237.807, -599.4499, 413.6968, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5241.627, -566.6175, 403.4313, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5243.015, -532.7789, 391.0985, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5256.577, -498.8654, 386.2344, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 1.951077, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5243.385, -533.1536, 391.2333, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5242.362, -566.6934, 403.3719, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5238.352, -599.8167, 413.7559, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5229.088, -633.2765, 421.6609, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5218.850, -666.7302, 430.0223, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5204.014, -699.4961, 438.3316, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5188.978, -733.1346, 447.0623, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5166.568, -740.9424, 450.8019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5133.428, -742.4106, 459.3805, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5100.030, -742.1588, 467.9603, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5066.893, -749.7949, 479.0317, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5054.690, -766.5782, 488.9085, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5050.706, -799.8795, 495.2132, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5050.173, -811.2641, 495.2521, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5045.451, -815.5643, 495.2521, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5050.712, -810.2087, 495.2521, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5050.712, -810.2087, 495.2521, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 4.729842, 0, 0);
 -- Ironforge Guard #1894
SET @GUID := 1894;
SET @POINT := 0;
UPDATE creature SET position_x = -4800.571, position_y = -1027.3610, position_z = 502.2889, orientation = 6.120802, MovementType = 2 WHERE guid = @GUID;
DELETE FROM creature_movement WHERE id = @GUID;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(@GUID, (@POINT := @POINT + 1), -4783.109, -1030.2210, 502.2087, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4764.898, -1039.7820, 502.2114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4746.893, -1056.7650, 502.2387, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4734.417, -1080.3780, 502.2124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4732.405, -1105.0680, 502.2192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4738.651, -1131.4270, 502.2089, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4747.607, -1146.2290, 502.2102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4760.845, -1144.4210, 502.2124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4770.223, -1134.0510, 499.9824, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4785.496, -1120.5330, 498.8060, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4792.576, -1112.7070, 498.8072, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4792.646, -1105.1830, 498.8072, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4803.730, -1091.7740, 499.4382, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4813.405, -1078.9990, 502.2188, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4812.579, -1064.7830, 502.1976, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4810.207, -1046.0230, 502.1970, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4809.493, -1036.1500, 502.2053, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4800.306, -1026.9120, 502.2059, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- Ironforge Guard #1895
SET @GUID := 1895; 
SET @POINT := 0;
UPDATE creature SET position_x = -4874.089, position_y = -1090.3040, position_z = 502.2973, orientation = 4.767289, MovementType = 2 WHERE guid = @GUID;
DELETE FROM creature_movement WHERE id = @GUID;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(@GUID, (@POINT := @POINT + 1), -4873.168, -1107.0780, 502.1995, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4866.706, -1125.3990, 502.1795, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4855.071, -1143.8020, 502.1944, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4836.417, -1159.5780, 502.1925, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4814.893, -1167.7510, 502.2046, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4790.182, -1167.7950, 502.2260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4765.064, -1160.0570, 502.1873, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4763.539, -1152.7280, 502.2124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4778.483, -1131.8860, 498.8080, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4795.002, -1115.8850, 498.8072, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4804.095, -1112.7490, 498.8071, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4807.448, -1107.6990, 498.8071, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4808.890, -1101.9740, 498.8071, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4822.939, -1086.6750, 502.2159, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4833.822, -1085.0890, 502.2042, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4856.700, -1084.2080, 502.1920, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4866.897, -1084.1640, 502.2027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4874.189, -1090.3630, 502.2141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- Theramore Sentry #33988
SET @GUID := 33988;
SET @POINT := 0;
UPDATE creature SET position_x = -2890.87, position_y = -3421.01, position_z = 74.4463, orientation = 1.93648, MovementType = 2 WHERE guid = @GUID;
DELETE FROM creature_movement WHERE id = @GUID;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(@GUID, (@POINT := @POINT + 1), -2890.87, -3421.01, 74.4463, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 1.93648, 0, 0),
(@GUID, (@POINT := @POINT + 1), -2889.81,-3424,74.4304,0,0,0,0,0,0,0,0,0,5.06237,0,0),
(@GUID, (@POINT := @POINT + 1), -2886.89,-3431.63,68.8635,0,0,0,0,0,0,0,0,0,5.51004,0,0),
(@GUID, (@POINT := @POINT + 1), -2883.69,-3432.35,68.8632,0,0,0,0,0,0,0,0,0,0.593447,0,0),
(@GUID, (@POINT := @POINT + 1), -2881.05,-3427.56,66.8511,0,0,0,0,0,0,0,0,0,1.532,0,0),
(@GUID, (@POINT := @POINT + 1), -2882.24,-3422.5,64.44,0,0,0,0,0,0,0,0,0,2.46348,0,0),
(@GUID, (@POINT := @POINT + 1), -2884.42,-3421.01,63.4094,0,0,0,0,0,0,0,0,0,2.96142,0,0),
(@GUID, (@POINT := @POINT + 1), -2891.6,-3420.3,63.1928,0,0,0,0,0,0,0,0,0,3.49314,0,0),
(@GUID, (@POINT := @POINT + 1), -2894.5,-3422.34,61.3742,0,0,0,0,0,0,0,0,0,4.12853,0,0),
(@GUID, (@POINT := @POINT + 1), -2896.25,-3427.01,58.6742,0,0,0,0,0,0,0,0,0,4.9744,0,0),
(@GUID, (@POINT := @POINT + 1), -2894.06,-3434.03,58.6045,0,0,0,0,0,0,0,0,0,5.51553,0,0),
(@GUID, (@POINT := @POINT + 1), -2889.64,-3436.63,55.9873,0,0,0,0,0,0,0,0,0,6.27344,0,0),
(@GUID, (@POINT := @POINT + 1), -2883.76,-3435.69,53.067,0,0,0,0,0,0,0,0,0,0.746636,0,0),
(@GUID, (@POINT := @POINT + 1), -2879.35,-3430.94,52.9223,0,0,0,0,0,0,0,0,0,1.20295,0,0),
(@GUID, (@POINT := @POINT + 1), -2878.35,-3427.05,50.965,0,0,0,0,0,0,0,0,0,1.77472,0,0),
(@GUID, (@POINT := @POINT + 1), -2879.3,-3423.19,49.2916,0,0,0,0,0,0,0,0,0,2.28209,0,0),
(@GUID, (@POINT := @POINT + 1), -2881.97,-3420.16,47.2928,0,0,0,0,0,0,0,0,0,2.66693,0,0),
(@GUID, (@POINT := @POINT + 1), -2889.17,-3417.8,46.7486,0,0,0,0,0,0,0,0,0,3.27562,0,0),
(@GUID, (@POINT := @POINT + 1), -2894.42,-3420.39,44.1282,0,0,0,0,0,0,0,0,0,3.96598,0,0),
(@GUID, (@POINT := @POINT + 1), -2896.7,-3424.19,44.1198,0,0,0,0,0,0,0,0,0,4.41523,0,0),
(@GUID, (@POINT := @POINT + 1), -2897.57,-3428.99,42.1217,0,0,0,0,0,0,0,0,0,4.88097,0,0),
(@GUID, (@POINT := @POINT + 1), -2894.54,-3434.74,39.3619,0,0,0,0,0,0,0,0,0,5.56819,0,0),
(@GUID, (@POINT := @POINT + 1), -2888.88,-3434.01,39.3582,0,0,0,0,0,0,0,0,0,0.614677,0,0),
(@GUID, (@POINT := @POINT + 1), -2880.31,-3425.55,39.3549,0,0,0,0,0,0,0,0,0,0.128399,0,0),
(@GUID, (@POINT := @POINT + 1), -2872.39,-3424.52,39.3517,10000,0,0,0,0,0,0,0,0,0.195158,0,0),
(@GUID, (@POINT := @POINT + 1), -2880.4,-3426.19,39.3532,0,0,0,0,0,0,0,0,0,3.76165,0,0),
(@GUID, (@POINT := @POINT + 1), -2887.3,-3433.28,39.3555,0,0,0,0,0,0,0,0,0,3.54488,0,0),
(@GUID, (@POINT := @POINT + 1), -2892.93,-3432.99,39.4073,0,0,0,0,0,0,0,0,0,2.48077,0,0),
(@GUID, (@POINT := @POINT + 1), -2897.05,-3431.31,41.1585,0,0,0,0,0,0,0,0,0,1.85549,0,0),
(@GUID, (@POINT := @POINT + 1), -2897.92,-3426.75,42.9612,0,0,0,0,0,0,0,0,0,1.28372,0,0),
(@GUID, (@POINT := @POINT + 1), -2896.77,-3423.87,44.1282,0,0,0,0,0,0,0,0,0,0.945212,0,0),
(@GUID, (@POINT := @POINT + 1), -2894.23,-3420.42,44.1284,0,0,0,0,0,0,0,0,0,0.92165,0,0),
(@GUID, (@POINT := @POINT + 1), -2892.68,-3418.86,45.4239,0,0,0,0,0,0,0,0,0,0.420566,0,0),
(@GUID, (@POINT := @POINT + 1), -2888.74,-3417.84,46.788,0,0,0,0,0,0,0,0,0,0.0420037,0,0),
(@GUID, (@POINT := @POINT + 1), -2882.41,-3419.79,47.2422,0,0,0,0,0,0,0,0,0,5.75185,0,0),
(@GUID, (@POINT := @POINT + 1), -2879.51,-3422.97,49.158,0,0,0,0,0,0,0,0,0,5.21778,0,0),
(@GUID, (@POINT := @POINT + 1), -2878.85,-3428.03,51.3309,0,0,0,0,0,0,0,0,0,4.55491,0,0),
(@GUID, (@POINT := @POINT + 1), -2880.01,-3431.39,53.0185,0,0,0,0,0,0,0,0,0,3.9745,0,0),
(@GUID, (@POINT := @POINT + 1), -2883.93,-3435.23,53.0676,0,0,0,0,0,0,0,0,0,3.95707,0,0),
(@GUID, (@POINT := @POINT + 1), -2887.65,-3437.12,54.9482,0,0,0,0,0,0,0,0,0,3.20545,0,0),
(@GUID, (@POINT := @POINT + 1), -2891.7,-3436.23,57.023,0,0,0,0,0,0,0,0,0,2.50723,0,0),
(@GUID, (@POINT := @POINT + 1), -2893.96,-3433.69,58.6146,0,0,0,0,0,0,0,0,0,2.04227,0,0),
(@GUID, (@POINT := @POINT + 1), -2896.18,-3426.95,58.6731,0,0,0,0,0,0,0,0,0,1.77131,0,0),
(@GUID, (@POINT := @POINT + 1), -2895.73,-3423.92,60.3482,0,0,0,0,0,0,0,0,0,1.08173,0,0),
(@GUID, (@POINT := @POINT + 1), -2891.62,-3420.81,63.1991,0,0,0,0,0,0,0,0,0,0.457775,0,0),
(@GUID, (@POINT := @POINT + 1), -2889.61,-3420.21,63.3588,0,0,0,0,0,0,0,0,0,6.14956,0,0),
(@GUID, (@POINT := @POINT + 1), -2884.92,-3421.07,63.3588,0,0,0,0,0,0,0,0,0,6.1739,0,0),
(@GUID, (@POINT := @POINT + 1), -2881.79,-3423.6,65.1294,0,0,0,0,0,0,0,0,0,5.47726,0,0),
(@GUID, (@POINT := @POINT + 1), -2880.99,-3427.01,66.6605,0,0,0,0,0,0,0,0,0,4.75413,0,0),
(@GUID, (@POINT := @POINT + 1), -2881.9,-3430.48,68.0874,0,0,0,0,0,0,0,0,0,4.14467,0,0),
(@GUID, (@POINT := @POINT + 1), -2883.9,-3432.35,68.8631,0,0,0,0,0,0,0,0,0,3.62945,0,0),
(@GUID, (@POINT := @POINT + 1), -2885.51,-3433.05,68.8631,0,0,0,0,0,0,0,0,0,2.70503,0,0),
(@GUID, (@POINT := @POINT + 1), -2887.05,-3431.72,68.8636,0,0,0,0,0,0,0,0,0,1.91728,0,0),
(@GUID, (@POINT := @POINT + 1), -2889.99,-3423.89,74.4466,0,0,0,0,0,0,0,0,0,1.99189,0,0),
(@GUID, (@POINT := @POINT + 1), -2890.92,-3421.04,74.4466,0,0,0,0,0,0,0,0,0,1.8623,0,0);

-- UDB_078
-- Req. cmangos 12805
-- Minshina's Skull(q.808)
-- both npc's will 'face' player after q. completed
 DELETE FROM dbscripts_on_quest_end WHERE id = 808;
 INSERT INTO dbscripts_on_quest_end VALUES 
 (808,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
 (808,2,10,3289,14000,0,0,0,0,0,0,0,-822.91,-4923.33,19.6365,3.41642,'summon'),
 (808,5,36,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
 (808,5,36,0,0,3289,20,0,0,0,0,0,0,0,0,0,''),
 (808,7,1,2,0,3289,20,7,0,0,0,0,0,0,0,0,''),
 (808,7,0,0,0,0,0,0,2000005776,0,0,0,0,0,0,0,''),
 (808,11,36,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
 (808,12,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
 
 -- UDB_087
-- ######################
-- DM: Tribute run script
-- ######################
-- texts
SET @DB_STRING_ENTRY:=2000005822;
DELETE FROM db_script_string WHERE entry BETWEEN @DB_STRING_ENTRY AND @DB_STRING_ENTRY+1;
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(@DB_STRING_ENTRY+0,'OH NOES! Da king is dead! Uh... hail to da new king! Yeah!',0,1,0,0,'mizzle the crafty - new king 1'),
(@DB_STRING_ENTRY+1,'Yar, he\'s dead all right. That makes you da new king... well, all of you! Gordok is yours now, boss! You should talk to me so you can learn everything there is about being da king! I was... is his assistant! Yeah, that\'s why I\'m called da crafty one!',0,0,0,0,'mizzle the crafty - new king 2');
-- movement
DELETE FROM creature_movement_template WHERE entry=14353;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(14353, 1, 683.2966, 484.3845, 29.54451, 0, 1435301, 0.017),
(14353, 2, 728.9432, 483.2973, 28.18182, 0, 0, 0),
(14353, 3, 757.3987, 482.5078, 28.17787, 0, 0, 0),
(14353, 4, 768.0496, 482.5014, 29.54162, 0, 0, 0),
(14353, 5, 778.0708, 482.7376, 34.93199, 0, 0, 0),
(14353, 6, 784.5805, 481.7013, 37.19804, 0, 0, 0),
(14353, 7, 816.5302, 482.3017, 37.31819, 1000, 1435307, 3.159),
(14353, 8, 816.5302, 482.3017, 37.31819, 1000, 1435308, 3.159);
-- movement script
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1435301,1435307,1435308);
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(1435301,1,0,0,0,0,0,0,@DB_STRING_ENTRY+0,'Mizzle - say new king 1'),
(1435307,0,32,1,0,0,0,0,0,'Mizzle - pause WP Movement'),
(1435307,0,0,0,0,0,0,0,@DB_STRING_ENTRY+1,'Mizzle - say new king 2'),
(1435308,0,32,1,0,0,0,0,0,'Mizzle - pause WP Movement'),
(1435308,0,9,35834,3600,0,0,0,0,'Mizzle - spawn tribute chest');
-- gossip conditions
SET @DB_CONDITION:=3159;
DELETE FROM conditions WHERE condition_entry BETWEEN @DB_CONDITION+0 AND @DB_CONDITION+3;
INSERT INTO conditions VALUES
(@DB_CONDITION+0,1,22799,0), -- has King of Gortok aura
(@DB_CONDITION+1,-3,@DB_CONDITION+0,0), -- has not King of Gortok aura
(@DB_CONDITION+2,33,7,0), -- has WP == 7
(@DB_CONDITION+3,-1,@DB_CONDITION+0,@DB_CONDITION+2); -- has WP == 7 and has King of Gortok aura
-- gossip
UPDATE gossip_menu SET condition_id=@DB_CONDITION+1 WHERE entry=5708 AND text_id=6876;
UPDATE gossip_menu SET condition_id=@DB_CONDITION+3 WHERE entry=5708 AND text_id=6895;
UPDATE gossip_menu_option SET condition_id=@DB_CONDITION+1, action_script_id=570801 WHERE menu_id=5708 AND id=0;
UPDATE gossip_menu_option SET condition_id=@DB_CONDITION+3 WHERE menu_id=5708 AND id=1;
UPDATE gossip_menu_option SET action_script_id=574001 WHERE menu_id=5740;
-- gossip scripts
DELETE FROM dbscripts_on_gossip where id = 5740;
DELETE FROM dbscripts_on_gossip WHERE id IN (570801,574001);
INSERT INTO dbscripts_on_gossip (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(570801,0,15,22799,0,0,0,0,0,'Mizzle - cast King of the Gordok'),
(574001,0,32,0,0,0,0,0,0,'Mizzle - resume WP Movement');
-- Broken Trap quest (partially complete - requires more research and investigation)
-- spell script target
DELETE FROM spell_script_target WHERE entry=5249;
INSERT INTO spell_script_target VALUES
(5249,1,14323,0);
-- ToDo: script spell 5249 to freeze npc 14323 and despawn the traps
-- Fixed trap GO spawn
DELETE FROM gameobject WHERE guid=121926;
INSERT INTO gameobject (guid,id,map,spawnMask,position_x,position_y,position_z,orientation,rotation0,rotation1,rotation2,rotation3,spawntimesecs,animprogress,state) VALUES
(121926, 179512, 429, 1, 558.652, 550.057, -25.4008, 0, 0, 0, -0.771625, 0.636078, -7200, 255, 1);
-- ToDo: fix GO data (faction and radius)
-- Broken trap script
UPDATE quest_template SET CompleteScript=1193 WHERE entry=1193;
DELETE FROM dbscripts_on_quest_end WHERE id IN (1193);
INSERT INTO dbscripts_on_quest_end (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(1193,0,9,121926,3600,0,0,0,0,'spawn Fixed trap');
-- ToDo: this part might require updates (such as despawn the Quest provider GO)

-- UDB_104
-- Sunfury Warlock
DELETE FROM creature_movement WHERE id IN (75408,75409,75410,75411,75412);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES 
(75409,1,-3821.185059,388.192596,120.564316,120000,2150301,3.542035,0,0),
(75410,1,-3844.86499,388.54379,120.416885,120000,2150301,5.969026,0,0),
(75411,1,-3841.58496,376.102,120.403328,120000,2150301,0.9948376,0,0),
(75412,1,-3824.62988,374.3699,120.57457,120000,2150301,2.234,0,0),
(75408,1,-3839.98,403.547,120.641,120000,2150301,5.25344,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2150301; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2150301,0,15,38722,0,21506,30,1 | 0x08,0,0,0,0,0,0,0,0,'visual - channel'),
(2150301,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle');

-- UDB_106
-- Cannoneer Whessan
UPDATE creature SET position_x = -2087.010986, position_y = -3500.132568, position_z = 130.084259, orientation = 3.583393 WHERE guid = 12166;

-- Classic [0897]
-- Dire Maul: North -- UPDATES
UPDATE creature_template SET MeleeBaseAttackTime = 1500, RangedBaseAttackTime = 1500 WHERE Entry = 13036; -- Gordok Mastiff
UPDATE creature_template SET MeleeBaseAttackTime = 1500, RangedBaseAttackTime = 1500 WHERE Entry = 13160; -- Carrion Swarmer
UPDATE creature_template SET MeleeBaseAttackTime = 1500, RangedBaseAttackTime = 1500 WHERE Entry = 14325; -- Captain Kromcrush

-- Classic [0894]
-- BRD - Thunderbrew Lager Kegs are now spawned correctly.
DELETE FROM gameobject WHERE id = 164911;
DELETE FROM gameobject WHERE guid IN (66158,66161,66163);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(66158, 164911, 230, 914.3752, -146.9912, -49.75655, 0, 0, 0, -0.9636297, 0.2672410, 604800, 100, 1),
(66161, 164911, 230, 915.7144, -149.2887, -49.75705, 0, 0, 0, -0.9681473, 0.2503814, 604800, 100, 1),
(66163, 164911, 230, 917.0272, -151.5825, -49.75756, 0, 0, 0, -0.9681473, 0.2503814, 604800, 100, 1);

-- Classic [0893]
-- Fixed quest text of quest 348 (Stranglethorn Fever) because it was obviously manually added and wrong
UPDATE quest_template SET Objectives = 'Sick...so...very s-s-sick....$b$b...have contracted Stranglethorn Fever...deadly v-v-virus...$b$b...only cure...is...is...to eat the heart of M-m-m-m-mokk the Savage...elusive white beast...$b$b...Witch doctor Unbagwa...only one who can s-s-summon....$b$b...seek Unbagwa in hidden cave on southern cape...$b$b...hurry...dying...dying....' WHERE entry = 348;

-- Classic [0890]
-- Felvine Shards are not available until you kill Alzzin and were slighty off position.
DELETE FROM gameobject WHERE id = 179559;
DELETE FROM gameobject WHERE guid IN (66151,66153,66154,66155,66157);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(66151, 179559, 429, 275.8198, -424.0976, -119.9618, 0, 0, 0, -0.8241262, 0.56640610, -604800, 0, 1),
(66153, 179559, 429, 274.3399, -424.0255, -119.9618, 0, 0, 0, 0.30901620, 0.95105680, -604800, 0, 1),
(66154, 179559, 429, 275.1532, -424.8906, -119.9618, 0, 0, 0, -0.6494474, 0.76040640, -604800, 0, 1),
(66155, 179559, 429, 275.2957, -423.4662, -119.9618, 0, 0, 0, -0.9816265, 0.19081240, -604800, 0, 1),
(66157, 179559, 429, 275.3406, -422.5365, -119.9618, 0, 0, 0, 0.98325440, 0.18223800, -604800, 0, 1);

-- Classic [0867]
UPDATE creature_template SET ExtraFlags = ExtraFlags | 0x1000, FactionAlliance = 7, FactionHorde = 7, MovementType = 2 WHERE entry = 412;
UPDATE creature_template SET ExtraFlags = ExtraFlags | 0x1000 WHERE Entry = 468; -- Makes Town Crier an active object

UPDATE quest_template SET CompleteScript = 252 WHERE entry = 252;

DELETE FROM dbscripts_on_quest_end WHERE id = 252;
INSERT INTO dbscripts_on_quest_end VALUES
(252, 0, 34, 486, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Terminate if Stitches already spawned'),
(252, 1, 10, 412, 3600000, 0, 0, 8, 0, 0, 0, 0, -10290.2, 72.7811, 38.8811, 4.8015, 'Spawn Stitches');

-- Classic [0919]
-- Huntress Skymane was tired of listening to Archaelogist Greywhiskers
-- 'stories' all day everyday and has joined her colleagues patrolling
-- around Darnassus
DELETE FROM creature_movement_template WHERE entry = 14378;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES 
(14378,1,9934.84,2504.61,1317.88,0,0,100,0,0),
(14378,2,9933.5,2502.29,1317.88,0,0,100,0,0),
(14378,3,9931.78,2500.85,1317.92,0,0,100,0,0),
(14378,4,9929.06,2500.65,1318,0,0,100,0,0),
(14378,5,9918.98,2508.1,1317.51,0,0,100,0,0),
(14378,6,9917.28,2509.89,1317.31,0,0,100,0,0),
(14378,7,9915.53,2521.38,1317.15,0,0,100,0,0),
(14378,8,9914.63,2523.59,1316.93,0,0,100,0,0),
(14378,9,9913.53,2525.35,1316.69,0,0,100,0,0),
(14378,10,9907.01,2533.01,1316.18,0,0,100,0,0),
(14378,11,9905.48,2533.7,1315.97,0,0,100,0,0),
(14378,12,9903.21,2534.1,1315.59,0,0,100,0,0),
(14378,13,9896.53,2534.52,1316.01,0,0,100,0,0),
(14378,14,9886.23,2534.43,1318.75,0,0,100,0,0),
(14378,15,9854.98,2533.49,1320.89,0,0,100,0,0),
(14378,16,9825.17,2532.56,1321.05,0,0,100,0,0),
(14378,17,9789.95,2531.94,1319.85,0,0,100,0,0),
(14378,18,9776.55,2531.54,1318.93,0,0,100,0,0),
(14378,19,9769.36,2531.15,1320.45,0,0,100,0,0),
(14378,20,9767.59,2531.53,1321.09,0,0,100,0,0),
(14378,21,9764.53,2532.3,1322.16,0,0,100,0,0),
(14378,22,9736.58,2537.27,1331.96,0,0,100,0,0),
(14378,23,9726.99,2538.13,1335.33,0,0,100,0,0),
(14378,24,9723.63,2540.35,1335.68,0,0,100,0,0),
(14378,25,9721.65,2542.9,1335.68,0,0,100,0,0),
(14378,26,9710.68,2562.7,1335.68,0,0,100,0,0),
(14378,27,9691.4,2586.07,1335.68,0,0,100,0,0),
(14378,28,9666.76,2605.76,1335.68,0,0,100,0,0),
(14378,29,9663.6,2607.97,1335.68,0,0,100,0,0),
(14378,30,9661.93,2610.4,1335.68,0,0,100,0,0),
(14378,31,9661.1,2613.19,1335.68,0,0,100,0,0),
(14378,32,9659.82,2627.53,1335.68,0,0,100,0,0),
(14378,33,9658.55,2628.94,1335.68,0,0,100,0,0),
(14378,34,9654.96,2629.39,1335.68,0,0,100,0,0),
(14378,35,9652.2,2626.19,1335.68,0,0,100,0,0),
(14378,36,9652.26,2623.64,1335.68,0,0,100,0,0),
(14378,37,9653.91,2602.25,1335.68,0,0,100,0,0),
(14378,38,9654.32,2600.85,1335.68,0,0,100,0,0),
(14378,39,9656.18,2598.45,1335.68,0,0,100,0,0),
(14378,40,9661.17,2596.11,1335.68,0,0,100,0,0),
(14378,41,9663.25,2594.92,1335.68,0,0,100,0,0),
(14378,42,9665.19,2593.21,1335.68,0,0,100,0,0),
(14378,43,9683.42,2575.19,1335.68,0,0,100,0,0),
(14378,44,9702.04,2556.37,1335.68,0,0,100,0,0),
(14378,45,9711.03,2542.86,1335.68,0,0,100,0,0),
(14378,46,9712.06,2513.48,1335.68,0,0,100,0,0),
(14378,47,9709.94,2499.13,1335.68,0,0,100,0,0),
(14378,48,9686.86,2471.14,1335.68,0,0,100,0,0),
(14378,49,9661.4,2446.29,1335.68,0,0,100,0,0),
(14378,50,9659.7,2443.97,1335.68,0,0,100,0,0),
(14378,51,9658.9,2441.08,1335.68,0,0,100,0,0),
(14378,52,9658.38,2437.55,1335.68,0,0,100,0,0),
(14378,53,9654.82,2413.7,1335.68,0,0,100,0,0),
(14378,54,9655.17,2410.48,1335.68,0,0,100,0,0),
(14378,55,9656.12,2408.8,1335.68,0,0,100,0,0),
(14378,56,9660.05,2406.62,1335.68,0,0,100,0,0),
(14378,57,9662.48,2407.19,1335.68,0,0,100,0,0),
(14378,58,9664.22,2408.92,1335.68,0,0,100,0,0),
(14378,59,9665.18,2411.42,1335.68,0,0,100,0,0),
(14378,60,9665.35,2414.14,1335.68,0,0,100,0,0),
(14378,61,9664.27,2432.98,1335.68,0,0,100,0,0),
(14378,62,9665.23,2435.96,1335.68,0,0,100,0,0),
(14378,63,9695.22,2463.22,1335.68,0,0,100,0,0),
(14378,64,9713.3,2489.69,1335.68,0,0,100,0,0),
(14378,65,9719.5,2512.31,1335.68,0,0,100,0,0),
(14378,66,9720.29,2513.85,1335.68,0,0,100,0,0),
(14378,67,9722.42,2515.67,1335.68,0,0,100,0,0),
(14378,68,9729.86,2518.51,1334.59,0,0,100,0,0),
(14378,69,9735.12,2520.27,1332.73,0,0,100,0,0),
(14378,70,9736.73,2520.53,1332.17,0,0,100,0,0),
(14378,71,9766.79,2522.69,1321.45,0,0,100,0,0),
(14378,72,9776.27,2523.3,1318.89,0,0,100,0,0),
(14378,73,9807.24,2524.39,1320.61,0,0,100,0,0),
(14378,74,9827.92,2524.93,1321.11,0,0,100,0,0),
(14378,75,9852.38,2525.86,1321.08,0,0,100,0,0),
(14378,76,9878.07,2526.71,1319.32,0,0,100,0,0),
(14378,77,9894.91,2529.19,1316.54,0,0,100,0,0),
(14378,78,9909.73,2533.67,1316.38,0,0,100,0,0),
(14378,79,9910.85,2535.16,1316.36,0,0,100,0,0),
(14378,80,9913.32,2539.02,1316.66,0,0,100,0,0),
(14378,81,9922.6,2545.77,1317.31,0,0,100,0,0),
(14378,82,9939.89,2553.77,1316.84,0,0,100,0,0),
(14378,83,9944.88,2555.72,1316.44,0,0,100,0,0),
(14378,84,9946.14,2555.79,1316.32,0,0,100,0,0),
(14378,85,9970.48,2541.57,1316.55,0,0,100,0,0),
(14378,86,9982.52,2526.08,1316.41,0,0,100,0,0),
(14378,87,9983.06,2524.38,1316.47,0,0,100,0,0),
(14378,88,9982.89,2522.09,1316.49,0,0,100,0,0),
(14378,89,9978.96,2519.39,1317.08,0,0,100,0,0),
(14378,90,9968.58,2510.83,1317.69,0,0,100,0,0),
(14378,91,9966.94,2506.63,1317.39,0,0,100,0,0),
(14378,92,9964.4,2498.46,1316.62,0,0,100,0,0),
(14378,93,9963.43,2496.6,1316.49,0,0,100,0,0),
(14378,94,9961.62,2494.32,1316.54,0,0,100,0,0),
(14378,95,9949.46,2481.62,1316.24,0,0,100,0,0),
(14378,96,9949.14,2478.52,1316.24,0,0,100,0,0),
(14378,97,9949.9,2444.03,1323.01,0,0,100,0,0),
(14378,98,9950.92,2406.31,1328.16,0,0,100,0,0),
(14378,99,9951.81,2372.26,1330.05,0,0,100,0,0),
(14378,100,9952.05,2347.56,1330.74,0,0,100,0,0),
(14378,101,9953.08,2310.86,1336.55,0,0,100,0,0),
(14378,102,9953.78,2289.47,1341.39,0,0,100,0,0),
(14378,103,9953.67,2270.07,1340.67,0,0,100,0,0),
(14378,104,9955.03,2250.6,1334.95,0,0,100,0,0),
(14378,105,9954.9,2229.24,1331.78,0,0,100,0,0),
(14378,106,9955.75,2200.32,1328.33,0,0,100,0,0),
(14378,107,9955.95,2176.62,1327.58,0,0,100,0,0),
(14378,108,9955.34,2148.66,1327.83,0,0,100,0,0),
(14378,109,9953.31,2119.95,1327.77,0,0,100,0,0),
(14378,110,9957.02,2095.75,1327.8,0,0,100,0,0),
(14378,111,9952.51,2076.1,1327.8,0,0,100,0,0),
(14378,112,9952.51,2073.93,1327.8,0,0,100,0,0),
(14378,113,9954.76,2069.54,1327.93,0,0,100,0,0),
(14378,114,9973.54,2042.18,1328.14,0,0,100,0,0),
(14378,115,9974,2040.55,1328.14,0,0,100,0,0),
(14378,116,9972.79,2038.65,1328.14,0,0,100,0,0),
(14378,117,9969.6,2038.98,1328.14,0,0,100,0,0),
(14378,118,9967.37,2040.95,1328.04,0,0,100,0,0),
(14378,119,9957.31,2052.81,1328.37,0,0,100,0,0),
(14378,120,9955.88,2055,1328.33,0,0,100,0,0),
(14378,121,9954.63,2057.55,1328.37,0,0,100,0,0),
(14378,122,9946.69,2073.5,1327.79,0,0,100,0,0),
(14378,123,9946.45,2077.42,1327.8,0,0,100,0,0),
(14378,124,9951.13,2094.52,1327.8,0,0,100,0,0),
(14378,125,9951.55,2096.97,1327.8,0,0,100,0,0),
(14378,126,9951.2,2099.71,1327.8,0,0,100,0,0),
(14378,127,9950.03,2136.16,1327.7,0,0,100,0,0),
(14378,128,9949.29,2181.96,1327.6,0,0,100,0,0),
(14378,129,9948.41,2224.65,1330.97,0,0,100,0,0),
(14378,130,9949.03,2253.35,1335.41,0,0,100,0,0),
(14378,131,9950.26,2270.03,1340.69,0,0,100,0,0),
(14378,132,9949.62,2288.9,1341.39,0,0,100,0,0),
(14378,133,9948.97,2311.09,1336.55,0,0,100,0,0),
(14378,134,9947.62,2346.41,1330.76,0,0,100,0,0),
(14378,135,9947.48,2372.31,1330.04,0,0,100,0,0),
(14378,136,9947.57,2406.61,1328.11,0,0,100,0,0),
(14378,137,9946.79,2444.89,1322.82,0,0,100,0,0),
(14378,138,9947.04,2473.77,1316.54,0,0,100,0,0),
(14378,139,9946.34,2481.54,1316.24,0,0,100,0,0),
(14378,140,9943.71,2484.51,1316.52,0,0,100,0,0),
(14378,141,9941.13,2486.06,1316.74,0,0,100,0,0),
(14378,142,9933.91,2491.38,1317.77,0,0,100,0,0),
(14378,143,9933.14,2494.48,1317.9,0,0,100,0,0),
(14378,144,9933.66,2496.92,1317.87,0,0,100,0,0),
(14378,145,9936.65,2504.63,1317.88,0,0,100,0,0),
(14378,146,9937.35,2506.57,1317.88,0,0,100,0,0),
(14378,147,9936.72,2507.74,1317.88,0,0,100,0,0);

-- Classic [0907]
-- Blackrock Depths - The Phalanx 
UPDATE creature_template SET MovementType = 0 WHERE Entry = 9502;

-- UDB_149
-- Fix for old bugs....
-- movement chenged to 0:idle (was wrongly set to random)
-- Jarven Thunderbrew
UPDATE dbscripts_on_creature_movement SET datalong = 0 WHERE id = 137302 AND delay = 2;
-- Grimand Elmore
UPDATE dbscripts_on_creature_movement SET datalong = 0 WHERE id = 141603 AND delay = 2;

-- UDB_203
-- Nagrand
-- Murkblood Invader - Southern group
DELETE FROM creature_movement WHERE id = 65506;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(65506,1,-2114,8540.97,21.6609,0,0,1.69045,0,0),(65506,2,-2116.74,8563.22,18.8982,0,0,1.81612,0,0),(65506,3,-2121.28,8577.2,18.2144,0,0,1.6237,0,0),
(65506,4,-2123.59,8600.54,17.0157,0,0,1.37656,0,0),(65506,5,-2121.05,8610.07,17.2115,0,0,1.03335,0,0),(65506,6,-2095.63,8641.19,17.3336,0,0,0.893545,0,0),
(65506,7,-2072.63,8674.07,18.2208,0,0,0.712118,0,0),(65506,8,-2053.18,8692.6,18.0131,0,0,0.727826,0,0),(65506,9,-2032.84,8708.34,18.4604,0,0,0.540901,0,0),
(65506,10,-2014.81,8717.41,19.3475,0,0,0.210248,0,0),(65506,11,-1991.24,8719,20.2555,0,0,6.24211,0,0),(65506,12,-1961.48,8717.67,22.1747,0,0,0.193754,0,0),
(65506,13,-1922.69,8726.31,24.1223,5000,0,0.103434,0,0),(65506,14,-1957.51,8719.2,22.4158,0,0,3.17984,0,0),(65506,15,-1986.21,8717.92,20.5196,0,0,3.11465,0,0),
(65506,16,-2010.96,8719.18,19.5189,0,0,3.48065,0,0),(65506,17,-2026.05,8713.06,18.6949,0,0,3.61416,0,0),(65506,18,-2052.3,8693.82,17.933,0,0,3.80266,0,0),
(65506,19,-2067.75,8681.47,18.8638,0,0,3.94796,0,0),(65506,20,-2088.98,8651.36,17.4626,0,0,4.09325,0,0),(65506,21,-2109.52,8625.68,17.0178,0,0,4.05006,0,0),
(65506,22,-2120.54,8608.14,17.1577,0,0,4.6336,0,0),(65506,23,-2123.62,8588.89,17.3189,0,0,4.92498,0,0),(65506,24,-2116.93,8560.67,19.0643,0,0,4.90928,0,0),
(65506,25,-2114.2,8544.9,21.2733,0,0,4.78362,0,0),(65506,26,-2110.35,8517.2,23.1965,0,0,4.9132,0,0),(65506,27,-2107,8490.6,23.6432,0,0,4.76398,0,0),
(65506,28,-2106.07,8465.5,22.0591,0,0,4.99567,0,0),(65506,29,-2097.13,8448.45,21.7315,0,0,5.25878,0,0),(65506,30,-2086.01,8430.91,21.2486,0,0,5.03494,0,0),
(65506,31,-2075.78,8405.72,19.0172,0,0,5.25877,0,0),(65506,32,-2047.59,8359.41,17.0068,0,0,5.23129,0,0),(65506,33,-2041.92,8339.47,15.0923,0,0,4.97996,0,0),
(65506,34,-2036.57,8328.36,13.879,0,0,5.37423,0,0),(65506,35,-2012.22,8299.83,10.9893,0,0,5.44099,0,0),(65506,36,-1991.31,8275.25,9.14579,0,0,5.33104,0,0),
(65506,37,-1984.31,8262.11,6.92359,0,0,5.01688,0,0),(65506,38,-1982.4,8250.58,4.59313,0,0,4.77733,0,0),(65506,39,-1986.4,8205.41,0.977083,0,0,4.3006,0,0),
(65506,40,-1995.71,8191.48,-0.0648872,0,0,4.06499,0,0),(65506,41,-2017.96,8166.87,0.230461,0,0,4.03357,0,0),(65506,42,-2043.02,8136.3,2.41803,0,0,4.00216,0,0),
(65506,43,-2060.48,8116.36,2.61751,0,0,3.97859,0,0),(65506,44,-2073.88,8100.45,2.68867,0,0,4.05713,0,0),(65506,45,-2086.91,8079.41,2.55276,0,0,4.17494,0,0),
(65506,46,-2101.96,8055.87,2.2554,0,0,4.05714,0,0),(65506,47,-2112.85,8040.26,1.89121,0,0,4.12782,0,0),(65506,48,-2122.31,8022.82,1.44427,0,0,4.30453,0,0),
(65506,49,-2127.07,8002.84,1.78789,0,0,4.56371,0,0),(65506,50,-2132.32,7981.63,-1.49405,0,0,4.41056,0,0),(65506,51,-2139.69,7957.81,-4.22691,0,0,4.58335,0,0),
(65506,52,-2142.67,7923.39,-7.45212,0,0,4.64618,0,0),(65506,53,-2146.24,7887.79,-10.5239,0,0,4.59906,0,0), (65506,54,-2150.9,7850.28,-11.8882,5000,0,4.69723,0,0),
(65506,55,-2146.32,7888.51,-10.4643,0,0,1.45353,0,0),(65506,56,-2142.38,7919.59,-7.73704,0,0,1.46924,0,0),(65506,57,-2139.8,7957.17,-4.32855,0,0,1.4928,0,0),
(65506,58,-2134.51,7980.34,-1.89184,0,0,1.30431,0,0),(65506,59,-2125.9,8010.97,0.446152,0,0,1.33965,0,0),(65506,60,-2118.5,8030.54,1.77208,0,0,1.09225,0,0),
(65506,61,-2102.07,8056.03,2.23708,0,0,0.98622,0,0),(65506,62,-2085.48,8082.49,2.62174,0,0,1.02549,0,0),(65506,63,-2066.38,8109.69,2.4755,0,0,0.931242,0,0),
(65506,64,-2048.25,8130.69,2.54083,0,0,0.864484,0,0),(65506,65,-2020.25,8164.08,0.282843,0,0,0.899827,0,0),(65506,66,-1997.74,8189.36,-0.113347,0,0,0.821287,0,0),
(65506,67,-1986.3,8206.65,0.936384,0,0,1.31609,0,0),(65506,68,-1982.24,8239.88,4.10747,0,0,1.50458,0,0),(65506,69,-1983.01,8258.15,6.16102,0,0,1.80303,0,0),
(65506,70,-1989.82,8272.75,8.79162,0,0,2.26642,0,0),(65506,71,-2006.22,8292.39,10.7762,0,0,2.26642,0,0),(65506,72,-2023.96,8313.5,11.8595,0,0,2.27035,0,0),
(65506,73,-2038.11,8331.37,14.2917,0,0,2.07007,0,0),(65506,84,-2046.88,8357.56,16.9689,0,0,1.9719,0,0),(65506,85,-2062.12,8383.65,17.8571,0,0,2.11327,0,0),
(65506,86,-2078.21,8410.31,19.5278,0,0,2.06222,0,0),(65506,87,-2087.42,8433.05,21.2959,0,0,2.07007,0,0),(65506,88,-2103.29,8458.69,21.6851,0,0,1.91692,0,0),
(65506,89,-2106.71,8467.22,22.089,0,0,1.76376,0,0),(65506,90,-2108.85,8510.73,23.4202,0,0,1.7402,0,0);

-- UDB_232
-- Classic [1013]
-- BWL - Swingtimers
UPDATE creature_template SET MeleeBaseAttackTime = 4000, RangedBaseAttackTime = 4000 WHERE Entry = 12435;
UPDATE creature_template SET MeleeBaseAttackTime = 2400, RangedBaseAttackTime = 2400 WHERE Entry = 12467;
UPDATE creature_template SET FactionAlliance = 103, FactionHorde = 103, MeleeBaseAttackTime = 1000, RangedBaseAttackTime = 1000 WHERE Entry = 14605;

-- Classic [1005] 
-- Faction templates and swing timers of AQ40's inhabitants! 
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, MeleeBaseAttackTime = 2500, RangedBaseAttackTime = 2500 WHERE Entry = 15544;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, MeleeBaseAttackTime = 1500, RangedBaseAttackTime = 1500 WHERE Entry = 15621;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, MeleeBaseAttackTime = 2500, RangedBaseAttackTime = 2500 WHERE Entry = 15511;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 1200, RangedBaseAttackTime = 1200 WHERE Entry = 15516;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 1600, RangedBaseAttackTime = 1600 WHERE Entry = 15984;
UPDATE creature_template SET MeleeBaseAttackTime = 1300, RangedBaseAttackTime = 1300 WHERE Entry = 15299;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 1600, RangedBaseAttackTime = 1600 WHERE Entry = 15249;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, MeleeBaseAttackTime = 2700, RangedBaseAttackTime = 2700 WHERE Entry = 15517;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, MeleeBaseAttackTime = 1000, RangedBaseAttackTime = 1000 WHERE Entry = 15718;
UPDATE creature_template SET FactionAlliance = 370, FactionHorde = 370, Scale = 0, MeleeBaseAttackTime = 2500, RangedBaseAttackTime = 2500 WHERE Entry = 15589;
UPDATE creature_template SET MinLevel = 60, FactionAlliance = 16, FactionHorde = 16, Scale = 0, MeleeBaseAttackTime = 1000, RangedBaseAttackTime = 1000 WHERE Entry = 15725;
UPDATE creature_template SET MinLevel = 60, FactionAlliance = 16, FactionHorde = 16, Scale = 0, MeleeBaseAttackTime = 1000, RangedBaseAttackTime = 1000 WHERE Entry = 15726;
UPDATE creature_template SET FactionAlliance = 370, FactionHorde = 370, Scale = 0, MeleeBaseAttackTime = 2500, RangedBaseAttackTime = 2500 WHERE Entry = 15728;

-- Classic [1004] 
-- Faction templates and swing timers of AQ20's inhabitants! 
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, RangedBaseAttackTime = 1500 WHERE Entry = 15343;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 1300, RangedBaseAttackTime = 1300 WHERE Entry = 15344;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 800, RangedBaseAttackTime = 800 WHERE Entry = 15323;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, Scale = 0, MeleeBaseAttackTime = 2500, RangedBaseAttackTime = 2500 WHERE Entry = 15370;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 15336, RangedBaseAttackTime = 15336 WHERE Entry = 15336;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, MeleeBaseAttackTime = 1200, RangedBaseAttackTime = 1200 WHERE Entry = 15369;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, MeleeBaseAttackTime = 1800, RangedBaseAttackTime = 1800 WHERE Entry = 15339;
UPDATE creature_template SET MeleeBaseAttackTime = 1300, RangedBaseAttackTime = 1300 WHERE Entry = 15538;
UPDATE creature_template SET FactionAlliance = 1878, FactionHorde = 1878, MeleeBaseAttackTime = 1200, RangedBaseAttackTime = 1200 WHERE Entry = 15505;

-- Classic [0996]
-- Horde should respawn at far-east graveyard
DELETE FROM game_graveyard_zone WHERE id = 1472; -- Dun Morogh, Dun Morogh, East Road
INSERT INTO game_graveyard_zone VALUES
(1472, 1, 0),
(1472, 1537, 67);

-- Classic [1066]
-- Fixed faction and movement of the Dark Keepers: they are Dark Iron Dwarves and not wolves.
-- Only NPC 9438 (Dark Keeper Bethek) should move (WP movement)
UPDATE creature_template SET FactionAlliance = 54, FactionHorde = 54, MovementType = 0 WHERE Entry IN (9437, 9445, 9439, 9441, 9442, 9443);
UPDATE creature_template SET FactionAlliance = 54, FactionHorde = 54, MovementType = 2 WHERE Entry = 9438;

-- Classic [1064]
-- Added missing lore in quest 3701 
-- Added missing lore text to GOs 153556 (Thaurissan Relic) in Burning Steppes
-- Grz3s: 8887 must be around to send whisper
DELETE FROM dbscripts_on_go_use WHERE id IN (4511, 4512, 4538, 4539, 4540, 4594, 4611, 6782, 6786, 6797, 6811, 6845, 6848, 4542, 4513, 4514, 4515, 4541, 4612, 6770, 6784, 6793, 6802, 6841, 6847, 6853);
INSERT INTO dbscripts_on_go_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(4511, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7716.94, -2033.14, 133.439, 0, ''),
(4511, 2, 0, 0, 0, 8887, 10, 3, 2000000544, 2000000545, 2000000546, 2000000547, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(4512, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7766.91, -2013.52, 135.337, 0, ''),
(4512, 2, 0, 0, 0, 8887, 10, 3, 2000000545, 2000000546, 2000000547, 2000000548, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(4538, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7793.7, -1961.65, 134.118, 0, ''),
(4538, 2, 0, 0, 0, 8887, 10, 3, 2000000546, 2000000547, 2000000548, 2000000549, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(4539, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7891.04, -2188.15, 133.436, 0, ''),
(4539, 2, 0, 0, 0, 8887, 10, 3, 2000000547, 2000000548, 2000000549, 2000000550, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(4540, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7779.31, -1855.2, 134.131, 0, ''),
(4540, 2, 0, 0, 0, 8887, 10, 3, 2000000548, 2000000549, 2000000550, 2000000551, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(4594, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7835.78, -2067.96, 136.252, 0, ''),
(4594, 2, 0, 0, 0, 8887, 10, 3, 2000000549, 2000000550, 2000000551, 2000000544, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(4611, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7800.4, -1900.31, 135.089, 0, ''),
(4611, 2, 0, 0, 0, 8887, 10, 3, 2000000550, 2000000551, 2000000544, 2000000545, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6782, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7844.55, -1945.58, 137.301, 0, ''),
(6782, 2, 0, 0, 0, 8887, 10, 3, 2000000551, 2000000544, 2000000545, 2000000546, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6786, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7725.99, -2125.54, 133.439, 0, ''),
(6786, 2, 0, 0, 0, 8887, 10, 3, 2000000544, 2000000545, 2000000546, 2000000547, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6797, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7741.42, -1948.2, 136.462, 0, ''),
(6797, 2, 0, 0, 0, 8887, 10, 3, 2000000545, 2000000546, 2000000547, 2000000548, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6811, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7774.49, -2235, 134.134, 0, ''),
(6811, 2, 0, 0, 0, 8887, 10, 3, 2000000546, 2000000547, 2000000548, 2000000549, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6845, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7804.24, -2103.44, 133.439, 0, ''),
(6845, 2, 0, 0, 0, 8887, 10, 3, 2000000547, 2000000548, 2000000549, 2000000550, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6848, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7892.84, -2144.82, 120.545, 0, ''),
(6848, 2, 0, 0, 0, 8887, 10, 3, 2000000548, 2000000549, 2000000550, 2000000551, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(4542, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7888.89, -2004.36, 135.828, 0, ''),
(4542, 2, 0, 0, 0, 8887, 10, 3, 2000000549, 2000000550, 2000000551, 2000000544, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(4513, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7820.68, -2203.07, 133.439, 0, ''),
(4513, 2, 0, 0, 0, 8887, 10, 3, 2000000550, 2000000551, 2000000544, 2000000545, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(4514, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7715.64, -1846.73, 135.942, 0, ''),
(4514, 2, 0, 0, 0, 8887, 10, 3, 2000000551, 2000000544, 2000000545, 2000000546, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(4515, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7884.96, -2246.48, 136.311, 0, ''),
(4515, 2, 0, 0, 0, 8887, 10, 3, 2000000544, 2000000545, 2000000546, 2000000547, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(4541, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7741.91, -2292.93, 136.29, 0, ''),
(4541, 2, 0, 0, 0, 8887, 10, 3, 2000000545, 2000000546, 2000000547, 2000000548, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(4612, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7748.03, -2078.4, 133.439, 0, ''),
(4612, 2, 0, 0, 0, 8887, 10, 3, 2000000546, 2000000547, 2000000548, 2000000549, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6770, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7843.89, -1992.06, 139.809, 0, ''),
(6770, 2, 0, 0, 0, 8887, 10, 3, 2000000547, 2000000548, 2000000549, 2000000550, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6784, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7775.43, -2313.51, 137.082, 0, ''),
(6784, 2, 0, 0, 0, 8887, 10, 3, 2000000548, 2000000549, 2000000550, 2000000551, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6793, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7793.45, -1804.18, 132.184, 0, ''),
(6793, 2, 0, 0, 0, 8887, 10, 3, 2000000549, 2000000550, 2000000551, 2000000544, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6802, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7710.73, -2178.15, 131.896, 0, ''),
(6802, 2, 0, 0, 0, 8887, 10, 3, 2000000550, 2000000551, 2000000544, 2000000545, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6841, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7828.93, -2265.71, 137.186, 0, ''),
(6841, 2, 0, 0, 0, 8887, 10, 3, 2000000551, 2000000544, 2000000545, 2000000546, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6847, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7693.64, -2387.06, 147.656, 0, ''),
(6847, 2, 0, 0, 0, 8887, 10, 3, 2000000544, 2000000545, 2000000546, 2000000547, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6853, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7757.94, -2159.73, 133.439, 0, ''),
(6853, 2, 0, 0, 0, 8887, 10, 3, 2000000545, 2000000546, 2000000547, 2000000548, 0, 0, 0, 0, 'Thaurissan relic - random whisper');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000544 AND 2000000551;
DELETE FROM db_script_string WHERE entry BETWEEN 2000000494 AND 2000000501;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000544, 'You will perish here. <Your mind fills with visions of chaos and destruction.>', 0, 4, 0, 0, NULL),
(2000000545, 'Leave this place. <The relic emits a white hot arc of flame. A memory has been gained: A lone Dark Iron dwarf is surrounded by seven corpses, kneeling before a monolith of flame.>', 0, 4, 0, 0, NULL),
(2000000546, 'Defiler... you will be punished for this incursion. <A symbol of flame radiates from the relic before it crumbles to the earth.>', 0, 4, 0, 0, NULL),
(2000000547, 'Help us, outsider. <The relic crumbles to dust. A vision of eight Dark Iron dwarves performing some sort of ritual fills your head.>', 0, 4, 0, 0, NULL),
(2000000548, 'Your existence is acknowledged. <The relic turns to dust. Your head throbs with newfound wisdom. Something evil lurks in the heart of the mountain.>', 0, 4, 0, 0, NULL),
(2000000549, 'Leave this place. <The relic emits a white hot arc of flame. A memory has been gained: A lone Dark Iron dwarf is surrounded by seven corpses, kneeling before a monolith of flame.>', 0, 4, 0, 0, NULL),
(2000000550, 'He cannot be defeated. <The relic burns to nothing. The memories it held are now your own. This city was destroyed by a being not of this world.>', 0, 4, 0, 0, NULL),
(2000000551, 'Do not taint these ruins, mortal. <You are engulfed in a blinding flash of light. A creature composed entirely of flame is the only thing you can remember seeing.>', 0, 4, 0, 0, NULL);

-- Classic [1056]
-- Quest: A Terrible Purpose
-- The item "Nature's Whisper" will be mailed to players who complete this quest. 
UPDATE quest_template SET RewMailTemplateId = 0, RewMailDelaySecs = 0 WHERE entry = 8287;

-- KEY/ID FIX ONLY
-- Classic [1052]
-- BRD - Fineous Darkvire - 47631
DELETE FROM creature_movement_template WHERE entry = 9056;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(9056, 1, 975.1074, -354.1521, -69.12189, 0, 0, 0, 0, 0),
(9056, 2, 984.4438, -363.9444, -65.90663, 0, 0, 0, 0, 0),
(9056, 3, 984.3798, -372.8271, -66.40864, 0, 0, 0, 0, 0),
(9056, 4, 976.4786, -381.1849, -63.92666, 0, 0, 0, 0, 0),
(9056, 5, 962.8773, -395.4465, -60.83775, 0, 0, 0, 0, 0),
(9056, 6, 950.4175, -408.5885, -57.13513, 0, 0, 0, 0, 0),
(9056, 7, 941.7361, -417.3307, -55.03955, 0, 0, 0, 0, 0),
(9056, 8, 931.4461, -413.3182, -55.3833, 0, 0, 0, 0, 0),
(9056, 9, 923.4091, -403.9856, -51.10405, 0, 0, 0, 0, 0),
(9056, 10, 914.4991, -394.1788, -49.44118, 3000, 0, 0, 0, 0),
(9056, 11, 905.6043, -403.5466, -48.72953, 0, 0, 0, 0, 0),
(9056, 12, 905.6043, -403.5466, -48.72953, 15000, 905601, 4.39823, 0, 0),
(9056, 13, 912.6644, -392.947, -49.27441, 0, 0, 0, 0, 0),
(9056, 14, 918.4413, -398.0002, -49.63673, 0, 0, 0, 0, 0),
(9056, 15, 926.4142, -407.2958, -52.62156, 0, 0, 0, 0, 0),
(9056, 16, 930.0383, -418.3499, -55.38773, 0, 0, 0, 0, 0),
(9056, 17, 930.1507, -424.8481, -55.86452, 0, 0, 0, 0, 0),
(9056, 18, 927.5943, -433.7152, -56.52362, 0, 0, 0, 0, 0),
(9056, 19, 927.5943, -433.7152, -56.52362, 15000, 905602, 4.049164, 0, 0),
(9056, 20, 936.1234, -427.9398, -56.10722, 0, 0, 0, 0, 0),
(9056, 21, 939.6413, -426.6046, -55.76141, 0, 0, 0, 0, 0),
(9056, 22, 944.4061, -426.6593, -54.99844, 0, 0, 0, 0, 0),
(9056, 23, 946.326, -428.0528, -54.6023, 0, 0, 0, 0, 0),
(9056, 24, 946.326, -428.0528, -54.6023, 3000, 905603, 0.1570796, 0, 0),
(9056, 25, 943.7764, -418.105, -54.94675, 0, 0, 0, 0, 0),
(9056, 26, 947.0441, -410.4389, -55.96638, 0, 0, 0, 0, 0),
(9056, 27, 955.1072, -403.4389, -59.51071, 0, 0, 0, 0, 0),
(9056, 28, 961.6575, -396.6303, -60.83775, 0, 0, 0, 0, 0),
(9056, 29, 968.2845, -389.0584, -60.83775, 0, 0, 0, 0, 0),
(9056, 30, 978.0145, -379.6125, -64.63842, 0, 0, 0, 0, 0),
(9056, 31, 986.5466, -370.8159, -66.56243, 90000, 905604, 0, 0, 0),
(9056, 32, 974.0306, -355.6249, -69.1521, 0, 0, 0, 0, 0),
(9056, 33, 967.597, -349.4773, -71.39046, 0, 0, 0, 0, 0),
(9056, 34, 963.2667, -343.7354, -71.73941, 210000, 0, 0, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (4763101, 4763102, 4763103, 4763104);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (905601, 905602, 905603, 905604);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(905601, 3, 1, 133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fineous Darkvire - state_usestanding_nosheathe'),
(905601, 13, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fineous Darkvire - oneshot_none'),
(905602, 3, 1, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fineous Darkvire - state_work'),
(905602, 13, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fineous Darkvire - oneshot_none'),
(905603, 1, 1, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fineous Darkvire - oneshot_kneel'),
(905604, 0, 20, 1, 3, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Fineous Darkvire - movementtype_random'),
(905604, 90, 20, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fineous Darkvire - movementtype_waypoint'); 

-- UDB_257
-- q.10097 'Brother Against Brother'
-- Lakka - correct gossip script
-- wrong submenus removed (they belong to Isfar.)
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 7868, condition_id = 1013 WHERE menu_id = 7868;
DELETE FROM dbscripts_on_gossip WHERE id = 7868;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(7868,1,8,18956,1,0,0,0,0,0,0,0,0,0,0,0,''),
(7868,1,0,0,0,18956,132569,0x10,2000000398,0,0,0,0,0,0,0,''),
(7868,4,13,0,0,183051,50,1,0,0,0,0,0,0,0,0,''),
(7868,4,20,2,0,18956,132569,0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint');
-- gossip should be available only with q. active
DELETE FROM conditions WHERE condition_entry = 806;
DELETE FROM conditions WHERE condition_entry = 1013; 
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1013, 9, 10097, 0);
-- Lakka and Cage should be available also in heroic mode
UPDATE creature SET spawnmask = 3, spawntimesecs = 10800 WHERE id = 18956;
-- movement will be set by script
DELETE FROM creature_movement_template WHERE entry = 18956;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(18956,1,-160.813,157.043,0.094095,2000,1895601,1.0821,0,0),
(18956,2,-155.998,160.411,0.0106601,0,0,0.343763,0,0),
(18956,3,-117.237,173.875,0.0106601,0,0,6.23975,0,0),
(18956,4,-80.6773,172.487,0.00989608,0,0,5.85883,0,0),
(18956,5,-71.2708,164.192,0.00886592,0,0,4.81269,0,0),
(18956,6,-69.2754,127.699,0.00747229,5000,1895602,5.26037,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1895601,1895602); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1895601,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Lakka - active'),
(1895602,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(1895602,2,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Lakka - unactive'),
(1895602,3,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'Lakka - despawn');
DELETE FROM db_script_string WHERE entry IN (2000009018);
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000009018, 'Well done! Hurry, though, we don\'t want to be caught!', 0, 1, 0, 0, NULL);
-- Lakka must yell after Darkweaver Syth's death
DELETE FROM dbscripts_on_creature_death WHERE id = 18472;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(18472,1,0,0,0,18956,132569,0x10,2000009018,0,0,0,0,0,0,0,'');

-- UDB_261
-- Mana Tombs
-- Ethereal Darkcaster
UPDATE creature SET position_x = -223.980988, position_y = -203.967545, position_z = -0.436449, orientation = 5.690035, MovementType = 0, spawndist = 0 WHERE guid = 83345;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 83344;
DELETE FROM creature_movement WHERE id = 83345;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(83344,1,-208.172,-210.751,0.903686,0,0,0,0,0),
(83344,2,-204.231,-217.482,-0.111034,0,0,0,0,0),
(83344,3,-201.505,-257.165,-0.959805,3000,0,0,0,0),
(83344,4,-205.784,-254.577,-1.06834,0,0,0,0,0),
(83344,5,-207.901,-218.211,-0.215018,0,0,0,0,0),
(83344,6,-211.192,-211.565,0.673288,0,0,0,0,0),
(83344,7,-236.121,-196.07,-0.952327,3000,0,0,0,0),
(83344,8,-230.744,-195.317,-0.953007,0,0,0,0,0);
-- link
DELETE FROM creature_linking WHERE guid = 83345;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(83345, 83344, 515);

-- Nexus Stalker
DELETE FROM creature_movement WHERE id = 83329;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(83329,1,-372.874,-237.685,-0.957908,0,0,0,0,0),
(83329,2,-373.266,-189.421,-0.959992,0,0,0,0,0);

-- Nexus Terror
UPDATE creature SET position_x = -283.658905, position_y = -4.813263, position_z = 16.685390, orientation = 4.643475, MovementType = 2, spawndist = 0 WHERE guid = 91201;

DELETE FROM creature_movement WHERE id IN (91201,91194);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #1
(91201,1,-278.857,9.17837,16.7958,0,0,0,0,0),
(91201,2,-273.323,23.9944,21.3366,0,0,0,0,0),
(91201,3,-271.953,34.1728,26.0065,0,0,0,0,0),
(91201,4,-273.504,22.6042,20.8346,0,0,0,0,0),
(91201,5,-279.271,8.99804,16.7877,0,0,0,0,0),
(91201,6,-283.195,-4.9794,16.6853,2000,0,0,0,0),
-- #2
(91194,1,-193.705,9.06087,16.7627,2000,0,0,0,0),
(91194,2,-242.656,9.1325,16.789,2000,0,0,0,0);

-- Ethereal Spellbinder 
UPDATE creature SET spawndist = 2, MovementType = 1 WHERE guid = 91204;
UPDATE creature SET spawndist = 2, MovementType = 1 WHERE guid = 91205;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 91203;
UPDATE creature SET position_x = -306.308014, position_y = 4.561267, position_z = 16.790335, orientation = 0.095032, spawndist = 0, MovementType = 2 WHERE guid = 91202;
DELETE FROM creature_movement WHERE id IN (91203,91202);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(91202,1,-261.468,6.85981,16.7853,0,0,0,0,0),
(91202,2,-266.375,9.69355,17.001,2000,0,3.05009,0,0),
(91202,3,-322.067,10.8099,16.835,0,0,0,0,0),
(91202,4,-318.001,6.78594,16.7929,2000,0,0,0,0);

-- link
DELETE FROM creature_linking WHERE guid = 91203;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(91203, 91202, 515);

-- UDB_264
-- Auchenai Crypts

-- Phasing Stalker 
-- Missing added - UDB free guids reused
DELETE FROM creature WHERE guid IN (44376,44377,44378,44415,44416);
INSERT INTO creature (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecs, curhealth, curmana, spawndist, MovementType) VALUES
(44376, 18559, 558, 3, 60.7609, 14.71426, 3.013803, 4.572762, 120, 4892, 8538, 0, 2),
(44377, 18559, 558, 3, 108.4743, -168.0823, 14.76628, 4.031711, 120, 4892, 8538, 0, 2),
(44378, 18559, 558, 3, 252.8566, -143.3315, 31.52239, 3.944444, 120, 4892, 8538, 0, 2),
(44415, 18559, 558, 3, 244.7959, -108.7978, 26.6746, 5.410521, 120, 4892, 8538, 0, 2),
(44416, 18559, 558, 3, -133.7521, -394.2897, 26.58947, 5.358066, 120, 4892, 8538, 0, 2);

DELETE FROM dbscripts_on_creature_movement WHERE id = 1855901;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1855901,1,15,33422,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1855901,4,14,33422,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- waypoints
DELETE FROM creature_movement WHERE id IN (44376,44377,44378,44415,44416);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #44376
(44376,1,60.7609, 14.71426, 3.013803,4000,1855901,4.572762,0,0),
(44376,2,60.93705,-19.73963,2.797255,2000,1,4.91534,0,0),
-- #44377
(44377,1,108.4743,-168.0823,14.76628,4000,1855901,4.031711,0,0),
(44377,2,93.5499,-166.973,15.2408,0,0,0,0,0),
(44377,3,87.3811,-167.817,15.2925,0,0,0,0,0),
(44377,4,83.1063,-169.717,15.299,0,0,0,0,0),
(44377,5,80.6213,-173.26,15.3327,2000,1,0,0,0),
-- #44415
(44415,1,244.7959,-108.7978,26.6746,4000,1855901,5.410521,0,0),
(44415,2,244.18,-83.3991,26.5913,0,0,0,0,0),
(44415,3,244.243,-61.4379,26.5913,2000,1,1.7439,0,0),
-- #44378
(44378,1,252.8566,-143.3315,31.52239,4000,1855901,3.944444,0,0),
(44378,2,239.474,-140.565,26.592,0,0,0,0,0),
(44378,3,232.99,-142.095,26.5913,0,0,0,0,0),
(44378,4,226.853,-145.607,26.5924,0,0,0,0,0),
(44378,5,223.005,-149.411,26.5913,0,0,0,0,0),
(44378,6,219.412,-156.105,26.5913,0,0,0,0,0),
(44378,7,218.315,-163.06,26.5913,0,0,0,0,0),
(44378,8,219.385,-170.84,26.5913,0,0,0,0,0),
(44378,9,222.656,-177.147,26.5913,0,0,0,0,0),
(44378,10,229.725,-182.67,26.5913,0,0,0,0,0),
(44378,11,233.935,-186.756,26.5913,0,0,0,0,0),
(44378,12,235.006,-191.854,26.5913,2000,1,0,0,0),
-- #44416
(44416,1,-133.7521,-394.2897,26.58947,4000,1855901,3.944444,0,0),
(44416,2,-149.727,-393.6,26.5896,0,0,0,0,0),
(44416,3,-151.597,-388.018,26.5896,0,0,0,0,0),
(44416,4,-151.722,-368.615,26.5891,2000,1,0,0,0);

-- Phasing Soldier
-- Missing added - UDB free guids reused
DELETE FROM creature WHERE guid IN (44422,56027,56029,56030);
INSERT INTO creature (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecs, curhealth, curmana, spawndist, MovementType) VALUES
(44422, 18556, 558, 3, 126.1766, 27.94813, -0.04512966, 5.288348, 60, 6116, 0, 0, 2),
(56027, 18556, 558, 3, 170.2127, -18.67884, 1.893939, 6.126106, 60, 6116, 0, 0, 2),
(56029, 18556, 558, 3, 234.8801, -118.7665, 26.67463, 0.6283185, 60, 6116, 0, 0, 2),
(56030, 18556, 558, 3, 254.0859, 16.28111, 1.211097, 3.996804, 60, 6116, 0, 0, 2);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1855601;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1855601,1,15,33422,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1855601,4,14,33422,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- waypoints
DELETE FROM creature_movement WHERE id IN (44422,56027,56029,56030);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #44422
(44422,1,126.1766,27.94813,-0.04512966,4000,1855601,5.288348,0,0),
(44422,2,130.413,14.816,-0.128968,0,0,4.73591,0,0),
(44422,3,133.132,0.717417,-0.128914,0,0,5.1286,0,0),
(44422,4,143.315,-5.41157,1.58459,0,0,5.92184,0,0),
(44422,5,158.808,-6.77153,1.31353,0,0,5.84487,0,0),
(44422,6,163.114,-11.3245,1.29405,0,0,5.18357,0,0),
(44422,7,166.81,-15.4839,2.5976,2000,1,5.37599,0,0),
-- #56027
(56027,1,170.2127,-18.67884,1.893939,4000,1855601,6.126106,0,0),
(56027,2,184.873,-19.2238,-0.123683,0,0,0.673793,0,0),
(56027,3,192.66,-5.28754,-0.120491,0,0,1.47881,0,0),
(56027,4,193.01,4.14019,-0.120491,0,0,1.76234,0,0),
(56027,5,190.2,11.8762,-0.121558,0,0,1.31317,0,0),
(56027,6,191.501,15.6137,2.23181,2000,1,1.85266,0,0),
-- #56029
(56029,1,234.8801,-118.7665,26.67463,4000,1855601,0.6283185,0,0),
(56029,2,234.39,-90.9739,26.5913,0,0,1.40655,0,0),
(56029,3,235.578,-85.3769,26.5913,0,0,1.70814,0,0),
(56029,4,232.895,-74.7759,26.5913,2000,1,1.64609,0,0),
-- #56030
(56030,1,254.0859,16.28111,1.211097,4000,1855601,3.996804,0,0),
(56030,2,248.956,13.8873,-0.0516049,0,0,4.57014,0,0),
(56030,3,247.572,-5.56347,-0.05535,0,0,4.1853,0,0),
(56030,4,240.99,-13.6141,-0.0627278,0,0,4.28347,0,0),
(56030,5,239.211,-17.6737,-0.0641297,0,0,4.53873,0,0),
(56030,6,241.667,-27.1563,-0.0669469,0,0,5.4537,0,0),
(56030,7,244.899,-29.4505,2.24718,2000,1,5.77571,0,0);

-- Phasing Cleric
-- Missing added - UDB free guids reused
DELETE FROM creature WHERE guid IN (56031,56033,56034,56035);
INSERT INTO creature (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecs, curhealth, curmana, spawndist, MovementType) VALUES
(56031, 18557, 558, 3, 103.5104, -31.66116, 2.187038, 1.361357, 90, 4892, 8370, 0, 2), 
(56033, 18557, 558, 3, -138.9091, -205.6192, 26.67431, 2.75762, 90, 4892, 8370, 0, 2),
(56034, 18557, 558, 3, 186.351, -184.6046, 26.61729, 1.586355, 90, 4892, 8370, 0, 2), 
(56035, 18557, 558, 3, 265.7227, -167.3999, 26.67464, 3.647738, 90, 4892, 8370, 0, 2);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1855701;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1855701,1,15,33422,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1855701,4,14,33422,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- waypoints
DELETE FROM creature_movement WHERE id IN (56031,56033,56034,56035);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #56031
(56031,1,103.5104,-31.66116,2.187038,4000,1855701,1.361357,0,0),
(56031,2,104.433,-26.1661,-0.0697232,0,0,1.6325,0,0),
(56031,3,102.222,-12.2622,0.17732,0,0,1.4675,0,0),
(56031,4,105.19,-1.24617,-0.0426896,0,0,1.56018,0,0),
(56031,5,104.13,9.48964,0.251931,0,0,1.71947,0,0),
(56031,6,103.15,15.0193,-0.0717281,0,0,1.56396,0,0),
(56031,7,106.842,21.3685,0.224192,0,0,0.659183,0,0),
(56031,8,112.74,22.792,-0.0508767,2000,1,0.164383,0,0),
-- #56033
(56033,1,-138.9091,-205.6192,26.67431,4000,1855701,2.75762,0,0),
(56033,2,-140.285,-181.608,26.5911,0,0,1.47598,0,0),
(56033,3,-138.759,-174.98,26.5916,0,0,1.22465,0,0),
(56033,4,-136.741,-171.113,26.5926,0,0,0.732993,0,0),
(56033,5,-133.77,-169.383,26.591,0,0,0.248402,0,0),
(56033,6,-129.733,-169.142,26.5893,2000,1,0.223269,0,0),
-- #56034
(56034,1,186.351,-184.6046,26.61729,4000,1855701,1.586355,0,0),
(56034,2,186.827,-139.192,26.5154,2000,1,2.37055,0,0),
-- #56035
(56035,1,265.7227,-167.3999,26.67464,4000,1855701,3.647738,0,0),
(56035,2,255.79,-172.018,26.5913,0,0,3.93556,0,0),
(56035,3,248.786,-179.103,29.9438,0,0,3.71048,0,0),
(56035,4,242.514,-182.389,28.7502,0,0,3.35077,0,0),
(56035,5,237.058,-182.979,26.5913,0,0,3.06253,0,0),
(56035,6,231.523,-180.122,26.5913,0,0,3.28951,0,0),
(56035,7,227.297,-181.833,26.5913,0,0,3.6987,0,0),
(56035,8,222.569,-185.367,26.5913,2000,1,3.92565,0,0);

-- Phasing Sorcerer
-- Missing added - UDB free guids reused
DELETE FROM creature WHERE guid IN (56036,56038,56045,56047,56048,56050,56051);
INSERT INTO creature (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecs, curhealth, curmana, spawndist, MovementType) VALUES
(56036, 18558, 558, 3, 235.8882, 37.07132, 26.68999, 6.230825, 180, 4731, 8538, 0, 2),
(56038, 18558, 558, 3, 127.6753, -9.820141, 0.9926163, 4.747295, 180, 4731, 8538, 0, 2),
(56045, 18558, 558, 3, -150.5842, -157.2742, 26.67392, 2.111848, 180, 4731, 8538, 0, 2),
(56047, 18558, 558, 3, 63.40744, -175.2639, 15.4378, 6.143559, 180, 4731, 8538, 0, 2),
(56048, 18558, 558, 3, 163.4202, -22.14446, 3.989299, 3.508112, 180, 4731, 8538, 0, 2),
(56050, 18558, 558, 3, 219.379, 0.330607, 28.41068, 3.909538, 180, 4731, 8538, 0, 2),
(56051, 18558, 558, 3, 182.6577, -140.5554, 26.481, 2.251475, 180, 4731, 8538, 0, 2);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1855801;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1855801,1,15,33422,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1855801,4,14,33422,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- waypoints
DELETE FROM creature_movement WHERE id IN (56036,56038,56045,56047,56048,56050,56051);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #56036
(56036,1,235.8882,37.07132,26.68999,4000,1855801,6.230825,0,0),
(56036,2,239.259,37.7349,26.6029,0,0,0.0645036,0,0),
(56036,3,256.93,38.6263,13.3965,0,0,0.0095253,0,0),
(56036,4,269.565,37.909,13.4,0,0,5.97698,0,0),
(56036,5,272.876,36.4516,13.4071,0,0,5.51203,0,0),
(56036,6,274.621,31.0997,13.4011,0,0,4.88842,0,0),
(56036,7,274.341,20.9334,13.395,0,0,4.73348,0,0),
(56036,8,274.476,2.9775,-0.0701511,2000,1,4.74526,0,0),
-- #56038
(56038,1,127.6753,-9.820141,0.9926163,4000,1855801,4.747295,0,0),
(56038,2,129.718,-18.8049,5.70304,0,0,4.75462,0,0),
(56038,3,130.379,-25.2794,8.45543,0,0,5.11433,0,0),
(56038,4,133.553,-30.3262,11.2518,0,0,5.57378,0,0),
(56038,5,139.812,-33.5707,13.4815,0,0,5.96333,0,0),
(56038,6,162.159,-39.9172,12.2277,2000,1,5.94841,0,0),
-- #56045
(56045,1,-150.5842,-157.2742,26.67392,4000,1855801,2.111848,0,0),
(56045,2,-149.429,-185.735,26.5896,0,0,4.56091,0,0),
(56045,3,-150.932,-204.497,26.5896,2000,1,4.51771,0,0),
-- #56047
(56047,1,63.40744,-175.2639,15.4378,4000,1855801,6.143559,0,0),
(56047,2,64.7937,-157.134,15.3266,0,0,1.75359,0,0),
(56047,3,63.5111,-153.674,15.2878,0,0,2.37484,0,0),
(56047,4,60.752,-151.984,15.3325,0,0,2.9953,0,0),
(56047,5,58.266,-151.812,15.3223,0,0,3.70452,0,0),
(56047,6,54.7178,-154.831,15.2635,0,0,3.49953,0,0),
(56047,7,37.6081,-157.491,14.737,0,0,3.13589,0,0),
(56047,8,33.8367,-155.836,14.4978,2000,1,2.64423,0,0),
-- #56048
(56048,1,163.4202,-22.14446,3.989299,4000,1855801,3.508112,0,0),
(56048,2,161.65,-24.0089,3.37202,0,0,3.68489,0,0),
(56048,3,155.926,-27.0396,7.4329,0,0,3.21914,0,0),
(56048,4,148.549,-26.228,9.19468,0,0,3.24506,0,0),
(56048,5,132.089,-33.6267,12.8042,0,0,3.71394,0,0),
(56048,6,126.817,-37.1354,12.2635,2000,1,3.73358,0,0),
-- #56050
(56050,1,219.379,0.330607,28.41068,4000,1855801,3.909538,0,0),
(56050,2,214.701,-6.09303,27.1319,0,0,4.23051,0,0),
(56050,3,212.107,-14.6145,27.3325,0,0,4.67976,0,0),
(56050,4,212.901,-23.2855,26.8425,0,0,5.13371,0,0),
(56050,5,216.698,-27.9429,26.5917,0,0,5.67642,0,0),
(56050,6,224.025,-30.2683,27.3426,0,0,0.171554,0,0),
(56050,7,251.498,-29.3868,26.6004,0,0,6.11557,0,0),
(56050,8,274.178,-32.1791,26.5917,2000,1,6.2216,0,0),
-- #56051
(56051,1,182.6577,-140.5554,26.481,4000,1855801,2.251475,0,0),
(56051,2,180.946,-148.912,26.3075,0,0,4.15175,0,0),
(56051,3,173.12,-151.982,26.3432,0,0,3.34908,0,0),
(56051,4,161.632,-153.271,25.9648,0,0,3.1221,0,0),
(56051,5,145.97,-152.706,13.7712,2000,1,3.13306,0,0);

-- Auchenai Monk
-- emote shouldnt be for all.
DELETE FROM creature_addon WHERE guid IN (83389,83390,83391,83392,83394,83395,83404,83406,83407,83408,83409);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(83389,0,8,1,0,0,0,NULL),
(83390,0,0,1,0,0,0,NULL),
(83391,0,0,1,0,0,0,NULL),
(83392,0,0,1,0,0,0,NULL),
(83394,0,0,1,0,375,0,NULL),
(83395,0,8,1,0,0,0,NULL),
(83404,0,0,1,0,0,0,NULL),
(83406,0,0,1,0,0,0,NULL),
(83407,0,8,1,0,0,0,NULL),
(83408,0,8,1,0,0,0,NULL),
(83409,0,0,1,0,375,0,NULL);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1849701;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1849701,2,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1849701,8,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND');

-- #83390
UPDATE creature SET position_x = 125.4166, position_y = -3.267882, position_z = 0.2067913, orientation = 2.443461, MovementType = 2, spawndist = 0 WHERE guid = 83390;
DELETE FROM creature_movement WHERE id = 83390;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(83390,1,141.006,2.68584,-0.128801,0,0,0,0,0),
(83390,2,159.988,3.10692,-0.127278,0,0,0,0,0),
(83390,3,164.698,7.8893,-0.12723,0,0,0,0,0),
(83390,4,164.759,26.825,-0.0149954,0,0,0,0,0),
(83390,5,159.95,30.5454,-0.107823,0,0,0,0,0),
(83390,6,154.02,33.0068,-0.0870224,0,0,0,0,0),
(83390,7,153.852,38.8914,4.25014,10000,1849701,1.58277,0,0),
(83390,8,150.685,32.9604,-0.0868603,0,0,0,0,0),
(83390,9,132.422,30.3528,-0.107012,0,0,0,0,0),
(83390,10,129.487,24.9777,-0.127918,0,0,0,0,0),
(83390,11,129.114,-2.94603,0.100162,0,0,0,0,0),
(83390,12,125.4166,-3.267882,0.2067913,10000,1849701,2.443461,0,0);
-- #83394
UPDATE creature SET position_x = -127.4433, position_y = -159.4812, position_z = 26.589, orientation = 6.056293, MovementType = 0, spawndist = 0 WHERE guid = 83394;
-- #83404
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 83404;
DELETE FROM creature_movement WHERE id = 83404;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(83404,1,223.202,16.427,-0.0725319,9000,0,3.08626,0,0),
(83404,2,237.233,16.056,-0.0609689,9000,0,6.27105,0,0);
-- #83406
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid = 83406;
DELETE FROM creature_movement WHERE id = 83406;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(83406, 83386, 515); -- must be linked
-- #83391
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid = 83391;
DELETE FROM creature_movement WHERE id = 83391;
DELETE FROM creature_linking WHERE guid = 83391;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(83391, 83372, 515); -- must be linked
-- #83392
UPDATE creature SET id = 18495, equipment_id = 0, curhealth = 13720, curmana = 8370 WHERE guid = 83392;
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid IN (83378,83385);
DELETE FROM creature_movement WHERE id IN (83378,83385);
DELETE FROM creature_linking WHERE guid IN (83378,83385);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(83378, 83392, 515),
(83385, 83392, 515);

-- UDB_271
-- Shadow Labyrinth -- Part 1.
-- Cabal Cultist
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1863101,1863102);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1863101,1,1,1,0,0,0,0,5,273,11,0,0,0,0,0,''),
(1863102,1,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1863102,7,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1863102,13,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1863102,20,1,4,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- UDB_272
-- Shadow Labyrinth -- Part 2.
-- 4th group
DELETE FROM creature_movement WHERE id = 67248;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(67248,1,-277.385162,-264.977478,12.680085,18000,1883002,0.0211422,0,0),
(67248,2,-275.271,-270.603,12.681,0,0,5.49971,0,0),
(67248,3,-264.933,-276.956,12.681,0,0,5.91872,0,0),
(67248,4,-256.194,-279.953,13.1726,18000,1883003,1.39639,0,0),
(67248,5,-248.819,-280.789,16.7317,0,0,6.19124,0,0),
(67248,7,-241.553,-278.927,17.0864,0,0,0.71466,0,0),
(67248,8,-236.515,-274.199,17.0864,0,0,1.01547,0,0),
(67248,9,-234.851,-261.641,17.0864,18000,1883004,3.20202,0,0),
(67248,10,-234.427,-255.882,17.0864,0,0,1.83228,0,0),
(67248,11,-237.841,-251.432,17.0864,0,0,2.63339,0,0),
(67248,12,-246.472,-248.127,17.0864,0,0,3.06379,0,0),
(67248,13,-257.26,-247.805,12.6795,0,0,3.3049,0,0),
(67248,14,-264.555,-249.428,12.0578,0,0,3.4934,0,0),
(67248,15,-271.395,-252.176,12.6814,0,0,3.91516,0,0),
(67248,16,-276.107,-256.337,12.6814,0,0,4.26152,0,0),
(67248,17,-278.227,-260.905,12.6814,0,0,4.63536,0,0),
(67248,18,-277.385162,-264.977478,12.680085,0,0,0.0211422,0,0);

-- UDB_280
-- Classic [1147]
-- Master Elemental Shaper Krixix
DELETE FROM creature_template_spells WHERE entry = 14401;
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4) VALUES
(14401, 22968, 0, 0, 0); 

-- Classic [1146]
-- Kurmokk
DELETE FROM creature WHERE guid BETWEEN 98913 AND 98922;
DELETE FROM pool_creature_template WHERE id = 14491;
DELETE FROM pool_template WHERE entry = 1120;
UPDATE creature_template SET ModelId1 = 3188, FactionAlliance = 72, FactionHorde = 72, MovementType = 2 WHERE Entry = 14491;
UPDATE creature SET modelid = 0, MovementType = 2 WHERE guid = 49126;
DELETE FROM creature_movement WHERE id = (SELECT guid FROM creature WHERE id = 14491);
DELETE FROM creature_movement_template WHERE entry = 14491;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(14491, 1, -13771.36, -194.1479, 23.58299, 0, 0, 100, 0, 0),
(14491, 2, -13800.65, -171.2549, 16.75194, 0, 0, 100, 0, 0),
(14491, 3, -13825.32, -138.9485, 17.06193, 0, 0, 100, 0, 0),
(14491, 4, -13839.20, -104.7389, 15.74479, 0, 0, 100, 0, 0),
(14491, 5, -13854.54, -89.10059, 16.51101, 0, 0, 100, 0, 0),
(14491, 6, -13880.08, -68.98720, 22.91978, 0, 0, 100, 0, 0),
(14491, 7, -13884.61, -54.92849, 27.63699, 0, 0, 100, 0, 0),
(14491, 8, -13903.91, -29.40885, 29.51131, 0, 0, 100, 0, 0),
(14491, 9, -13907.90, -7.800998, 27.44344, 0, 0, 100, 0, 0),
(14491, 10, -13917.54, 25.832030, 15.02404, 0, 0, 100, 0, 0),
(14491, 11, -13918.52, 50.220270, 15.45375, 0, 0, 100, 0, 0),
(14491, 12, -13935.58, 86.903320, 15.89105, 0, 0, 100, 0, 0),
(14491, 13, -13958.01, 96.246320, 15.29974, 0, 0, 100, 0, 0),
(14491, 14, -13977.52, 107.88300, 13.94238, 0, 0, 100, 0, 0),
(14491, 15, -13996.92, 126.20390, 14.47534, 0, 0, 100, 0, 0),
(14491, 16, -14008.00, 152.99420, 13.52247, 0, 0, 100, 0, 0),
(14491, 17, -14009.72, 182.66020, 13.35314, 0, 0, 100, 0, 0),
(14491, 18, -14022.42, 197.13040, 13.20641, 0, 0, 100, 0, 0),
(14491, 19, -14057.04, 213.87030, 13.23114, 0, 0, 100, 0, 0),
(14491, 20, -14022.42, 197.13040, 13.20641, 0, 0, 100, 0, 0),
(14491, 21, -14009.72, 182.66020, 13.35314, 0, 0, 100, 0, 0),
(14491, 22, -14008.00, 152.99420, 13.52247, 0, 0, 100, 0, 0),
(14491, 23, -13996.92, 126.20390, 14.47534, 0, 0, 100, 0, 0),
(14491, 24, -13977.52, 107.88300, 13.94238, 0, 0, 100, 0, 0),
(14491, 25, -13958.01, 96.246320, 15.29974, 0, 0, 100, 0, 0),
(14491, 26, -13935.58, 86.903320, 15.89105, 0, 0, 100, 0, 0),
(14491, 27, -13918.52, 50.220270, 15.45375, 0, 0, 100, 0, 0),
(14491, 28, -13917.63, 26.220700, 14.77404, 0, 0, 100, 0, 0),
(14491, 29, -13907.90, -7.800998, 27.44344, 0, 0, 100, 0, 0),
(14491, 30, -13903.91, -29.40885, 29.51131, 0, 0, 100, 0, 0),
(14491, 31, -13884.61, -54.92849, 27.63699, 0, 0, 100, 0, 0),
(14491, 32, -13880.08, -68.98720, 22.91978, 0, 0, 100, 0, 0),
(14491, 33, -13854.54, -89.10059, 16.51101, 0, 0, 100, 0, 0),
(14491, 34, -13839.20, -104.7389, 15.74479, 0, 0, 100, 0, 0),
(14491, 35, -13825.32, -138.9485, 17.06193, 0, 0, 100, 0, 0),
(14491, 36, -13800.65, -171.2549, 16.75194, 0, 0, 100, 0, 0),
(14491, 37, -13771.36, -194.1479, 23.58299, 0, 0, 100, 0, 0),
(14491, 38, -13768.64, -210.9160, 28.39240, 0, 0, 100, 0, 0);

-- Classic [1140]
-- Azurous, Hematos, Volchan
-- Azurous
UPDATE creature_template SET MovementType = 2 WHERE Entry = 10202;
UPDATE creature SET  MovementType = 2 WHERE guid = 51890;

-- UDB_281
-- Classic [1172]
-- Elwynn Forest - Ridgepoint Tower
DELETE FROM creature_movement WHERE id = 81362;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(81362, 1, -9787.19, -1384.73, 62.7444, 0, 0, 100, 0, 0),
(81362, 2, -9796.35, -1393.70, 62.8526, 0, 0, 100, 0, 0),
(81362, 3, -9799.68, -1403.43, 62.7082, 0, 0, 100, 0, 0),
(81362, 4, -9797.45, -1413.29, 62.7204, 0, 0, 100, 0, 0),
(81362, 5, -9791.16, -1420.47, 62.6992, 0, 0, 100, 0, 0),
(81362, 6, -9780.90, -1422.89, 62.6632, 0, 0, 100, 0, 0),
(81362, 7, -9771.84, -1421.92, 62.6978, 0, 0, 100, 0, 0),
(81362, 8, -9762.63, -1412.12, 62.8456, 0, 0, 100, 0, 0),
(81362, 9, -9760.81, -1402.71, 62.7160, 0, 0, 100, 0, 0),
(81362, 10, -9763.66, -1392.01, 62.8187, 0, 0, 100, 0, 0),
(81362, 11, -9760.81, -1402.71, 62.7160, 0, 0, 100, 0, 0),
(81362, 12, -9762.63, -1412.12, 62.8456, 0, 0, 100, 0, 0),
(81362, 13, -9771.84, -1421.92, 62.6978, 0, 0, 100, 0, 0),
(81362, 14, -9780.90, -1422.89, 62.6632, 0, 0, 100, 0, 0),
(81362, 15, -9791.16, -1420.47, 62.6992, 0, 0, 100, 0, 0),
(81362, 16, -9797.45, -1413.29, 62.7204, 0, 0, 100, 0, 0),
(81362, 17, -9799.68, -1403.43, 62.7082, 0, 0, 100, 0, 0),
(81362, 18, -9796.35, -1393.70, 62.8526, 0, 0, 100, 0, 0),
(81362, 19, -9787.19, -1384.73, 62.7444, 0, 0, 100, 0, 0),
(81362, 20, -9776.63, -1383.53, 62.7928, 0, 0, 100, 0, 0);

DELETE FROM creature_movement WHERE id = 81365;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(81365, 1, -9788.50, -1399.94, 97.8873, 0, 0, 100, 0, 0),
(81365, 2, -9788.50, -1399.94, 97.8873, 60000, 0, 2.78471, 0, 0),
(81365, 3, -9783.52, -1412.02, 97.8873, 0, 0, 100, 0, 0),
(81365, 4, -9783.52, -1412.02, 97.8873, 60000, 0, 4.16309, 0, 0),
(81365, 5, -9771.30, -1406.96, 97.8868, 0, 0, 100, 0, 0),
(81365, 6, -9771.30, -1406.96, 97.8868, 60000, 0, 5.89876, 0, 0),
(81365, 7, -9776.59, -1394.81, 97.8873, 0, 0, 100, 0, 0),
(81365, 8, -9776.59, -1394.81, 97.8873, 60000, 0, 1.34973, 0, 0);

-- Classic [1152]
-- Ro'Bark
UPDATE creature_template SET MovementType = 2 WHERE Entry = 14278;
UPDATE creature SET  MovementType = 2 WHERE guid = 15973;
DELETE FROM creature_movement WHERE id = 15973;
DELETE FROM creature_movement_template WHERE entry = 14278;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(14278, 1, -899.7490, -1039.656, 30.37254, 0, 0, 100, 0, 0),
(14278, 2, -925.4506, -1045.888, 30.47285, 0, 0, 100, 0, 0),
(14278, 3, -956.1846, -1014.903, 30.77754, 0, 0, 100, 0, 0),
(14278, 4, -954.6239, -983.0110, 30.47286, 0, 0, 100, 0, 0),
(14278, 5, -943.6620, -964.6547, 30.45305, 0, 0, 100, 0, 0),
(14278, 6, -922.4212, -948.1688, 31.49447, 0, 0, 100, 0, 0),
(14278, 7, -901.6521, -959.9968, 30.36947, 0, 0, 100, 0, 0),
(14278, 8, -879.9400, -972.8907, 30.47107, 0, 0, 100, 0, 0),
(14278, 9, -869.3699, -999.7962, 30.47107, 0, 0, 100, 0, 0),
(14278, 10, -879.4504, -1032.248, 30.47285, 0, 0, 100, 0, 0);

-- UDB_282
-- Classic [1183]
-- Temple of Ahn'Qiraj 
-- This should fix the door right after Prophet Skeram.
UPDATE gameobject SET rotation2 = -0.9824495, rotation3 = 0.1865285, spawntimesecs = 7200, animprogress = 100 WHERE guid = 54972;

-- Classic [1180]
-- Small updates for the Grim Guzzler 
-- Made some of the Grim Guzzler patrons dance on the tables
DELETE FROM creature_addon WHERE guid IN (90741, 91011, 48168, 91066, 46620, 90738, 90888);
INSERT INTO creature_addon VALUES
(46620, 0, 0, 1, 16, 10, 0, NULL),
(48168, 0, 0, 1, 16, 10, 0, NULL),
(90738, 0, 0, 1, 16, 10, 0, NULL),
(90741, 0, 0, 1, 16, 10, 0, NULL),
(90888, 0, 0, 1, 16, 10, 0, NULL),
(91011, 0, 0, 1, 16, 10, 0, NULL),
(91066, 0, 0, 1, 16, 10, 0, NULL);

-- Classic [1173]
-- Elwynn Forest - Forest's Edge
DELETE FROM creature_movement WHERE id = 80484;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(80484, 20, -9798.45, 695.196, 33.1121, 0, 0, 100, 0, 0),
(80484, 19, -9787.98, 698.690, 33.0633, 0, 0, 100, 0, 0),
(80484, 18, -9780.42, 708.031, 33.1796, 0, 0, 100, 0, 0),
(80484, 17, -9779.39, 719.580, 33.0247, 0, 0, 100, 0, 0),
(80484, 16, -9784.11, 729.628, 33.0265, 0, 0, 100, 0, 0),
(80484, 15, -9790.60, 734.172, 33.0179, 0, 0, 100, 0, 0),
(80484, 14, -9800.77, 735.681, 32.9617, 0, 0, 100, 0, 0),
(80484, 13, -9810.42, 732.059, 33.0151, 0, 0, 100, 0, 0),
(80484, 12, -9817.44, 723.679, 33.1373, 0, 0, 100, 0, 0),
(80484, 11, -9818.05, 711.803, 33.0275, 0, 0, 100, 0, 0),
(80484, 10, -9812.93, 700.995, 33.1397, 0, 0, 100, 0, 0),
(80484, 9, -9818.05, 711.803, 33.0275, 0, 0, 100, 0, 0),
(80484, 8, -9817.44, 723.679, 33.1373, 0, 0, 100, 0, 0),
(80484, 7, -9810.42, 732.059, 33.0151, 0, 0, 100, 0, 0),
(80484, 6, -9800.77, 735.681, 32.9617, 0, 0, 100, 0, 0),
(80484, 5, -9790.60, 734.172, 33.0179, 0, 0, 100, 0, 0),
(80484, 4, -9784.11, 729.628, 33.0265, 0, 0, 100, 0, 0),
(80484, 3, -9779.39, 719.580, 33.0247, 0, 0, 100, 0, 0),
(80484, 2, -9780.44, 707.820, 33.1363, 0, 0, 100, 0, 0),
(80484, 1, -9787.98, 698.690, 33.0633, 0, 0, 100, 0, 0);