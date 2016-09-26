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