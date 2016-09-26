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
