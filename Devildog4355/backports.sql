-- Missing NPC at "The Stair of Destiny"
-- Darkspear Axe Thrower - (Hellfire Peninsula)
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(140485,18970,530,1,0,300,-232.374,1083.71,48.3245,1.55738,25,0,0,13084,0,0,0);
-- Stormwind Soldier - (Hellfire Peninsula)
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(140486,18948,530,1,0,3,-252.769,1093.94,41.668,1.5708,25,0,0,13084,0,0,0),
(140487,18948,530,1,0,3,-272.204,1097.1,41.9803,1.5708,25,0,0,12652,0,0,0);

-- Terokkar Trigger
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(140581,23102,530,1,0,0,-2443.7,4634.14,158.221,1.10586,25,0,0,4120,0,0,0),
(140582,23102,530,1,0,0,-2482.24,4661.68,161.413,3.51227,25,0,0,4120,0,0,0),
(140583,23102,530,1,0,0,-2384.98,4552.59,165.69,4.99611,25,0,0,4120,0,0,0),
(140584,23102,530,1,0,0,-2432.75,4458.1,166.076,0.907029,25,0,0,4120,0,0,0);
-- Rat - missing in undercity
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(140586,4075,0,1,0,0,1412.15,417.707,-84.9654,3.36426,180,5,0,8,0,0,1),
(140587,4075,0,1,0,0,1428.02,406.496,-85.2519,3.37997,180,20,0,8,0,0,1),
(140588,4075,0,1,0,0,1452.04,401.733,-84.9925,0.222665,180,5,0,8,0,0,1),
(140589,4075,0,1,0,0,1407.63,370.503,-84.953,3.96901,180,5,0,8,0,0,1);
-- Crag Boar -- Dun Morogh
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(140590,1125,0,1,0,0,-6119.69,-200.734,434.551,0.361272,180,5,0,102,0,0,1);
-- Horizont Missing team
-- Roland Geardabbler
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140775,8394,1,1,0,0,1746.45,-5861.29,-91.4165,3.20841,300,0,0,2762,3575,0,0);
DELETE FROM creature_template_addon WHERE entry = 8394;
-- Horizon Scout Cook
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140776,8388,1,1,0,0,1747.62,-5862.27,-90.9249,3.17332,300,0,0,2666,0,0,0);
-- Horizon Scout First Mate 
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140777,8387,1,1,0,0,1747.24,-5859.6,-90.3817,3.98543,300,0,0,2766,0,0,0);
-- Horizon Scout Engineer
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140778,8389,1,1,0,0,1748.87,-5863.46,-90.2665,2.83088,300,0,0,2666,0,0,0);
-- Second Mate Shandril
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140779,8478,1,1,0,0,1916.44,-5733.37,10.1936,4.10397,300,0,0,2766,0,0,0);
DELETE FROM creature_template_addon WHERE entry = 8478;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(8478,0,8,1,0,0,0,NULL);
-- add link to the midsummer event for all 3 creatures
DELETE FROM game_event_creature WHERE guid IN (140591, 140592, 140593);
INSERT INTO game_event_creature (guid, event) VALUES
(140591, 1),
(140592, 1),
(140593, 1);
-- Veneratus spawn node npc
DELETE FROM creature WHERE guid = 140594;
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140594,21334, 530, 1, 0, 0, -4051.381, 2616.373, 127.9368, 5.078908, 300, 0, 0, 9250, 0, 0, 0);
-- Witherbark Trolls event - (Arathi Highlands)
DELETE FROM creature WHERE guid BETWEEN 140693 AND 140697;
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140693,2556,0,1,0,62,-1234.76,-3536.47,46.5823,5.929,120,0,0,1342,0,0,0),
(140694,2552,0,1,0,0,-1232.1,-3535.9,46.4729,5.6706,120,0,0,1107,0,0,0),
(140695,2552,0,1,0,0,-1230.75,-3533.46,46.0261,5.83082,120,0,0,1107,0,0,0),
(140696,2552,0,1,0,0,-1229.85,-3535.1,46.3087,5.918,120,0,0,1050,0,0,0),
(140697,2553,0,1,0,9,-1233.3,-3533.72,46.0859,5.80098,120,0,0,847,2253,0,2); -- master
DELETE FROM creature_movement WHERE id = 140697;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(140697,1,-1233.3,-3533.72,46.0859,100000,0,0,0,0,0,0,0,0,5.80098,0,0),
(140697,2,-1233.3,-3533.72,46.0859,3000,255301,0,0,0,0,0,0,0,5.80098,0,0),
(140697,3,-1233.3,-3533.72,46.0859,1000,255302,0,0,0,0,0,0,0,5.80098,0,0),
(140697,4,-1162.87,-3563.07,50.5074,0,0,0,0,0,0,0,0,0,0.0411459,0,0),
(140697,5,-1032.97,-3550.54,55.9796,0,0,0,0,0,0,0,0,0,6.22908,0,0);
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
-- Blackwind Sabercat #1 - Terrokar Forest  -- missing spawn
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140769,21723,530,1,0,0,-3522.41,3254.19,300.692,0.0237059,300,0,0,9082,0,0,2);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(140769,1,-3512.91,3253.65,298.684,0,0,0,0,0,0,0,0,0,5.52543,0,0),
(140769,2,-3509.42,3247.42,297.527,0,0,0,0,0,0,0,0,0,4.89712,0,0),
(140769,3,-3508.96,3238.18,291.435,0,0,0,0,0,0,0,0,0,2.40741,0,0),
(140769,4,-3509.74,3247.4,297.482,0,0,0,0,0,0,0,0,0,1.56703,0,0),
(140769,5,-3510.9,3254.41,298.329,0,0,0,0,0,0,0,0,0,2.41352,0,0),
(140769,6,-3520.29,3251.55,300.414,0,0,0,0,0,0,0,0,0,3.74712,0,0),
(140769,7,-3529.47,3244.12,301.703,0,0,0,0,0,0,0,0,0,3.60732,0,0),
(140769,8,-3544.26,3234.75,303.708,0,0,0,0,0,0,0,0,0,3.92855,0,0),
(140769,9,-3550.47,3226.39,307.004,0,0,0,0,0,0,0,0,0,4.16495,0,0),
(140769,10,-3543.36,3236.64,303.118,0,0,0,0,0,0,0,0,0,0.771562,0,0),
(140769,11,-3523.98,3253.32,300.861,0,0,0,0,0,0,0,0,0,0.200578,0,0);
-- Blackwind Sabercat #2 - Terrokar Forest  -- missing spawn
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140770,21723,530,1,0,0,-3491.7,3240.65,299.471,5.0402,300,0,0,9335,0,0,2);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(140770,1,-3491.98,3230.37,298.39,0,0,0,0,0,0,0,0,0,4.26973,0,0),
(140770,2,-3499.64,3217.43,296.899,0,0,0,0,0,0,0,0,0,4.19904,0,0),
(140770,3,-3490.54,3233.88,298.693,0,0,0,0,0,0,0,0,0,1.81536,0,0),
(140770,4,-3497.68,3253.86,299.642,0,0,0,0,0,0,0,0,0,1.66849,0,0),
(140770,5,-3499.37,3269.09,301.012,0,0,0,0,0,0,0,0,0,1.70383,0,0),
(140770,6,-3501.71,3273.94,300.778,0,0,0,0,0,0,0,0,0,4.20925,0,0),
(140770,7,-3498.72,3268.99,301.056,0,0,0,0,0,0,0,0,0,5.13994,0,0),
(140770,8,-3498.38,3254.15,299.717,0,0,0,0,0,0,0,0,0,4.93181,0,0),
(140770,9,-3491.69,3241.45,299.476,0,0,0,0,0,0,0,0,0,5.19491,0,0);

UPDATE item_template SET ContainerSlots = 8 WHERE entry = 11845; -- Handmade Leather Bag - from Faxe_the_Slayer
-- Gossip text & Options for Tracy Proudwell -- from Malcrom
DELETE FROM gossip_menu WHERE entry IN (20020, 8544);
INSERT INTO gossip_menu (entry, text_id) VALUES (8544,10689);
UPDATE gossip_menu_option SET action_menu_id = 8544 WHERE menu_id = 7892 AND id = 1;
UPDATE gossip_menu_option SET menu_id = 8544 WHERE menu_id = 20020;-- Shadowforge Brazier -- shouldn't have any flags (flag 16 will be added by spell) -- from Mightylink
UPDATE gameobject_template SET flags = 0 WHERE entry = 174744;
-- Deer Critter  -- from Axel
UPDATE creature SET MovementType = 1, spawndist = 20 WHERE guid = 32676;
-- Chieftain Earthbind - equip - from Axel
UPDATE creature_template SET EquipmentTemplateID = 1343 WHERE entry = 12791;
DELETE FROM creature_template_addon WHERE entry = 12791;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(12791,0,0,2,0,0,0,NULL);
-- Isha Awak - from Axel 
UPDATE creature SET MovementType = 2 WHERE guid = 15085;
DELETE FROM creature_movement WHERE id = 15085;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(15085, 1, -1949.31, -3817.22, -6.52593, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.23346, 0, 0),
(15085, 2, -1876.07, -3848.77, -9.3871, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.83291, 0, 0),
(15085, 3, -1807.86, -3875.06, -3.79004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.85254, 0, 0),
(15085, 4, -1768.57, -3918.63, -3.28865, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.46238, 0, 0),
(15085, 5, -1728, -3959.94, -7.35339, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.44504, 0, 0),
(15085, 6, -1683.23, -3962.82, -2.32115, 90000, 0, 0, 0, 0, 0, 0, 0, 0, 5.88708, 0, 0),
(15085, 7, -1728, -3959.94, -7.35339, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.79423, 0, 0),
(15085, 8, -1768.57, -3918.63, -3.28865, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.38422, 0, 0),
(15085, 9, -1807.86, -3875.06, -3.79004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.39994, 0, 0),
(15085, 10, -1876.07, -3848.77, -9.3871, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.80443, 0, 0),
(15085, 11, -1949.31, -3817.22, -6.52593, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.02435, 0, 0),
(15085, 12, -2025.94, -3814.75, -7.26146, 180000, 0, 0, 0, 0, 0, 0, 0, 0, 3.77136, 0, 0);
-- quest 11521 (Rediscovering your roots)
DELETE FROM spell_script_target WHERE entry = 44941;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(44941, 0, 187073, 0);
-- quest 11691 (Summon Ahune)
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

-- quest 11405 (Call the headless Horseman)
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
-- Morley Bates -- Undercity
UPDATE creature SET MovementType = 2,spawndist = 0 WHERE guid = 38421;
DELETE FROM creature_movement WHERE id = 38421;
UPDATE creature_template SET MovementType = 2 WHERE entry = 4571; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 4571;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,orientation,model1,model2) VALUES
(4571,1,1692.201904,139.641846,-55.214390,0,0,0,0,0,0,0,0,0,6.123605,0,0),
(4571,2,1694.764893,138.542770,-55.022465,0,0,0,0,0,0,0,0,0,5.588755,0,0),
(4571,3,1698.867065,134.570557,-52.505413,0,0,0,0,0,0,0,0,0,5.520430,0,0),
(4571,4,1702.585693,131.029968,-49.612007,0,0,0,0,0,0,0,0,0,5.485089,0,0),
(4571,5,1705.978516,127.957245,-48.915165,0,0,0,0,0,0,0,0,0,5.418329,0,0),
(4571,6,1709.306274,124.367935,-49.698490,0,0,0,0,0,0,0,0,0,5.434034,0,0),
(4571,7,1712.874023,120.622345,-52.617626,0,0,0,0,0,0,0,0,0,5.390840,0,0),
(4571,8,1717.208252,116.369743,-55.215046,0,0,0,0,0,0,0,0,0,5.020132,0,0),
(4571,9,1715.927490,112.043648,-55.215046,0,0,0,0,0,0,0,0,0,3.865062,0,0),
(4571,10,1710.193848,105.648643,-60.226227,0,0,0,0,0,0,0,0,0,3.989156,0,0),
(4571,11,1704.670166,98.548027,-60.156685,0,0,0,0,0,0,0,0,0,3.708768,0,0),
(4571,12,1702.469849,96.913681,-62.183727,0,0,0,0,0,0,0,0,0,3.757463,0,0),
(4571,13,1696.200073,89.700615,-62.245487,0,0,0,0,0,0,0,0,0,4.154087,0,0),
(4571,14,1693.445557,80.922714,-62.289646,0,0,0,0,0,0,0,0,0,4.904924,0,0),
(4571,15,1694.970947,74.606171,-62.289646,0,0,0,0,0,0,0,0,0,5.439004,0,0),
(4571,16,1703.908081,68.916229,-62.289646,0,0,0,0,0,0,0,0,0,6.058682,0,0),
(4571,17,1716.820801,67.587296,-62.281952,0,0,0,0,0,0,0,0,0,0.244379,0,0),
(4571,18,1726.935669,73.529434,-62.280739,0,0,0,0,0,0,0,0,0,0.759600,0,0),
(4571,19,1746.531616,97.615318,-62.277756,0,0,0,0,0,0,0,0,0,0.680274,0,0),
(4571,20,1761.977051,112.225182,-62.282078,0,0,0,0,0,0,0,0,0,1.051768,0,0),
(4571,21,1764.695068,122.498894,-62.289280,0,0,0,0,0,0,0,0,0,1.664379,0,0),
(4571,22,1762.121338,130.429794,-62.293812,0,0,0,0,0,0,0,0,0,2.294268,0,0),
(4571,23,1756.816772,135.878189,-62.296608,0,0,0,0,0,0,0,0,0,2.690109,0,0),
(4571,24,1748.166870,137.670273,-62.280506,0,0,0,0,0,0,0,0,0,3.475508,0,0),
(4571,25,1742.719971,136.389114,-62.215290,0,0,0,0,0,0,0,0,0,3.800663,0,0),
(4571,26,1737.080444,131.298904,-62.116192,0,0,0,0,0,0,0,0,0,3.754325,0,0),
(4571,27,1735.050415,129.373520,-60.103340,0,0,0,0,0,0,0,0,0,3.699347,0,0),
(4571,28,1727.588257,123.737144,-60.372936,0,0,0,0,0,0,0,0,0,3.788882,0,0),
(4571,29,1721.737671,118.051208,-55.215641,0,0,0,0,0,0,0,0,0,3.820298,0,0),
(4571,30,1717.091797,117.097122,-55.031643,0,0,0,0,0,0,0,0,0,2.419933,0,0),
(4571,31,1713.285400,120.886414,-52.663830,0,0,0,0,0,0,0,0,0,2.383019,0,0),
(4571,32,1709.635254,123.817406,-50.022968,0,0,0,0,0,0,0,0,0,2.390873,0,0),
(4571,33,1705.950806,127.811539,-48.913475,0,0,0,0,0,0,0,0,0,2.379092,0,0),
(4571,34,1702.807983,131.052505,-49.581020,0,0,0,0,0,0,0,0,0,2.288771,0,0),
(4571,35,1699.202026,134.708969,-52.444389,0,0,0,0,0,0,0,0,0,2.363384,0,0),
(4571,36,1695.124146,138.728653,-54.968365,0,0,0,0,0,0,0,0,0,2.152897,0,0),
(4571,37,1694.589111,141.696426,-55.214432,0,0,0,0,0,0,0,0,0,1.100463,0,0),
(4571,38,1695.868896,143.529465,-55.214268,0,0,0,0,0,0,0,0,0,0.698551,0,0),
(4571,39,1701.858887,150.072723,-60.469513,0,0,0,0,0,0,0,0,0,1.418761,0,0),
(4571,40,1701.063477,158.274918,-60.438343,0,0,0,0,0,0,0,0,0,1.211416,0,0),
(4571,41,1704.810181,171.620438,-60.737682,0,0,0,0,0,0,0,0,0,1.962257,0,0),
(4571,42,1700.957275,175.207169,-62.000648,0,0,0,0,0,0,0,0,0,2.709171,0,0),
(4571,43,1694.132935,176.281799,-62.171570,0,0,0,0,0,0,0,0,0,3.569968,0,0),
(4571,44,1678.931519,164.417252,-62.156734,0,0,0,0,0,0,0,0,0,3.902192,0,0),
(4571,45,1661.356812,147.728577,-62.165779,0,0,0,0,0,0,0,0,0,4.109537,0,0),
(4571,46,1656.410156,141.673599,-62.155628,0,0,0,0,0,0,0,0,0,4.415842,0,0),
(4571,47,1658.164429,130.089584,-62.195759,0,0,0,0,0,0,0,0,0,5.289191,0,0),
(4571,48,1660.051758,128.194778,-61.495415,0,0,0,0,0,0,0,0,0,5.849962,0,0),
(4571,49,1670.617188,126.868576,-61.480343,0,0,0,0,0,0,0,0,0,0.112627,0,0),
(4571,50,1672.972656,126.964844,-60.389759,0,0,0,0,0,0,0,0,0,0.327826,0,0),
(4571,51,1683.947754,131.563538,-60.465267,0,0,0,0,0,0,0,0,0,0.822258,0,0),
(4571,52,1690.073608,137.640442,-55.214428,0,0,0,0,0,0,0,0,0,0.721727,0,0);
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
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(36217,1,1438.03,403.83,-85.2626,45000,0,0,0,0,0,0,0,0,3.12414,0,0),
(36217,2,1438.03,403.83,-85.2626,6000,3621701,0,0,0,0,0,0,0,3.12414,0,0),
(36217,3,1438.01,400.654,-85.2645,0,0,0,0,0,0,0,0,0,4.67316,0,0),
(36217,4,1436.25,397.342,-85.2657,0,0,0,0,0,0,0,0,0,3.97572,0,0),
(36217,5,1432.92,395.72,-85.2653,0,0,0,0,0,0,0,0,0,3.23666,0,0),
(36217,6,1430.37,397.151,-85.2619,0,0,0,0,0,0,0,0,0,2.48347,0,0),
(36217,7,1428.68,401,-85.2571,55000,3621702,0,0,0,0,0,0,0,1.86693,0,0),
(36217,8,1430.37,397.151,-85.2619,0,0,0,0,0,0,0,0,0,5.86461,0,0),
(36217,9,1432.92,395.72,-85.2653,0,0,0,0,0,0,0,0,0,0.314982,0,0),
(36217,10,1436.25,397.342,-85.2657,0,0,0,0,0,0,0,0,0,1.24254,0,0),
(36217,11,1438.01,400.654,-85.2645,0,0,0,0,0,0,0,0,0,1.58026,0,0),
(36217,12,1438.03,403.83,-85.2626,2000,0,0,0,0,0,0,0,0,1.72556,0,0),
(36217,13,1438.03,403.83,-85.2626,420000,0,0,0,0,0,0,0,0,3.12414,0,0);
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
INSERT INTO creature_movement_template (entry, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(10610,1,-6009.25,-202.649994,406.982605,45000,0,0,0,0,0,0,0,0,1.58825,0,0),
(10610,2,-6009.25,-202.649994,406.982605,1000,1061001,0,0,0,0,0,0,0,1.58825,0,0),
(10610,3,-6009.25,-202.649994,406.982605,2000,1061002,0,0,0,0,0,0,0,1.58825,0,0),
(10610,4,-6031.16,-230.264,414.361,250000,1061003,0,0,0,0,0,0,0,2.18492,0,0),
(10610,5,-6009.25,-202.649994,406.982605,300000,0,0,0,0,0,0,0,0,1.58825,0,0),
(10610,6,-6009.25,-202.649994,406.982605,5000,1061004,0,0,0,0,0,0,0,1.58825,0,0),
(10610,7,-6009.25,-202.649994,406.982605,300000,0,0,0,0,0,0,0,0,1.58825,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1061001 AND 1061004;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES
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
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, TYPE, LANGUAGE, emote, COMMENT) VALUES
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
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(18248,1,2317.72,6030.27,142.57,0,1824801,0,0,0,0,0,0,0,3.58,0,0),
(18248,2,2307.82,6024.44,142.56,0,0,0,0,0,0,0,0,0,2.97,0,0),
(18248,3,2304.89,6025.77,142.96,0,0,0,0,0,0,0,0,0,2.44,0,0),
(18248,4,2304.89,6025.77,142.96,240000,1824802,0,0,0,0,0,0,0,5.63,0,0),
(18248,5,2306.93,6023.86,142.56,180000,0,0,0,0,0,0,0,0,5.46,0,0),
(18248,6,2317.38,6030.00,142.57,0,0,0,0,0,0,0,0,0,6.24,0,0),
(18248,7,2319.51,6029.16,142.62,0,0,0,0,0,0,0,0,0,5.50,0,0),
(18248,8,2319.51,6029.16,142.62,240000,1824803,0,0,0,0,0,0,0,3.88,0,0);
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
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,orientation,model1,model2) VALUES
(21497,1,3406.09,7124.062,189.294,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,2,3406.942,7123.539,189.294,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,3,3227.074,7124.377,198.2934,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,4,3197.353,7140.334,198.2934,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,5,3174.604,7175.172,198.2934,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,6,3206.274,7208.284,193.488,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,7,3226.79,7220.991,193.488,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,8,3255.189,7222.584,193.488,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,9,3300.442,7212.049,189.294,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,10,3313.925,7200.428,189.294,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,11,3343.274,7180.307,189.294,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,12,3375.993,7142.719,189.294,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,13,3417.932,7115.399,189.294,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,14,3443.302,7078.937,189.294,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,15,3423.431,7041.686,183.6277,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,16,3389.923,7007.877,183.6277,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,17,3346.986,6983.501,183.6277,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,18,3303.022,6983.777,183.6277,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,19,3281.571,7027.427,186.3498,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,20,3283.781,7064.684,186.4331,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,21,3281.752,7085.844,187.9886,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,22,3266.412,7105.881,192.0718,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,23,3242.702,7118.664,196.0163,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,24,3227.074,7124.377,198.2934,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,25,3197.353,7140.334,198.2934,0,0,0,0,0,0,0,0,0,0,0,0);
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
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(57541,1,-1323.67,2397.49,88.731,30000,0,0,0,0,0,0,0,0,6.19592,0,0),
(57541,2,-1323.67,2397.49,88.731,15000,1658001,0,0,0,0,0,0,0,6.19592,0,0),
(57541,3,-1323.67,2397.49,88.731,120000,0,0,0,0,0,0,0,0,6.19592,0,0),
(57541,4,-1323.67,2397.49,88.731,29000,1658002,0,0,0,0,0,0,0,6.19592,0,0),
(57541,5,-1323.67,2397.49,88.731,90000,0,0,0,0,0,0,0,0,6.19592,0,0);
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
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_Flags, emote, moveflags, auras) VALUES
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
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(68744,1,-260.766,1093.41,41.6666,0,0,0,0,0,0,0,0,0,5.7179,0,0),
(68744,2,-259.812,1098.64,41.6666,0,0,0,0,0,0,0,0,0,6.0242,0,0),
(68744,3,-242.463,1099.17,41.6666,0,0,0,0,0,0,0,0,0,6.26846,0,0),
(68744,4,-242.316,1094.29,41.6666,0,0,0,0,0,0,0,0,0,4.72515,0,0);
-- Infernal relay (hellfire)#2
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 68745;
DELETE FROM creature_movement WHERE id = 68745;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(68745,1,-233.971,1094.96,41.668,0,0,0,0,0,0,0,0,0,4.65979,0,0),
(68745,2,-246.08,1094.57,41.668,0,0,0,0,0,0,0,0,0,2.00829,0,0),
(68745,3,-247.234,1097.84,41.668,0,0,0,0,0,0,0,0,0,0.171238,0,0),
(68745,4,-232.666,1097.36,41.668,0,0,0,0,0,0,0,0,0,6.23451,0,0);
-- pit commander
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 68001;
DELETE FROM creature_movement WHERE id = 68001;
UPDATE creature_template SET MovementType = 2 WHERE entry = 18945; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 18945;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(18945,1,-246.692,1175.22,41.75,10000,0,0,0,0,0,0,0,0,4.71011,0,0), 
(18945,2,-246.692,1175.22,41.75,5000,0,0,0,0,0,0,33393,0,4.71011,0,0),
(18945,3,-246.692,1175.22,41.75,35000,0,0,0,0,0,0,0,0,4.71011,0,0);
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
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(67981,1,-237.227,1136.66,41.6668,20000,1894401,0,0,0,0,0,0,0,4.39946,0,0),
(67981,2,-250.716,1093.1,41.9,0,0,0,0,0,0,0,0,0,4.78095,0,0),
(67981,3,-252.174,1074.34,54.3073,0,0,0,0,0,0,0,0,0,4.70084,0,0),
(67981,4,-249.985,1046.8,54.3168,1000,1894401,0,0,0,0,0,0,0,4.57914,0,0),
(67981,5,-248.905,1014.4,54.3266,0,0,0,0,0,0,0,0,0,4.64917,0,0),
(67981,6,-248.336,993.958,68.2144,0,0,0,0,0,0,0,0,0,4.73163,0,0),
(67981,7,-247.975,969.204,84.3296,0,0,0,0,0,0,0,0,0,4.74341,0,0),
(67981,8,-248.319,920.639,84.379,0,0,0,0,0,0,0,0,0,4.72601,0,0),
(67981,9,-248.109,895.636,84.379,1000,1894402,0,0,0,0,0,0,0,4.72601,0,0);
UPDATE creature SET spawndist = 0, MovementType = 2, position_x = -215.774307, position_y = 1135.690796, position_z = 41.604073, orientation = 4.084515 WHERE guid = 67985;
DELETE FROM creature_movement WHERE id = 67985;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(67985,1,-215.774,1135.69,41.6041,20000,1894401,0,0,0,0,0,0,0,4.08452,0,0),
(67985,2,-248.279,1093.57,41.6667,0,0,0,0,0,0,0,0,0,4.41342,0,0),
(67985,3,-250.127,1071.97,54.3075,0,0,0,0,0,0,0,0,0,4.7024,0,0),
(67985,4,-249.985,1046.8,54.3168,1000,1894401,0,0,0,0,0,0,0,4.57914,0,0),
(67985,5,-248.905,1014.4,54.3266,0,0,0,0,0,0,0,0,0,4.64917,0,0),
(67985,6,-248.336,993.958,68.2144,0,0,0,0,0,0,0,0,0,4.73163,0,0),
(67985,7,-247.975,969.204,84.3296,0,0,0,0,0,0,0,0,0,4.74341,0,0),
(67985,8,-248.319,920.639,84.379,0,0,0,0,0,0,0,0,0,4.72601,0,0),
(67985,9,-248.109,895.636,84.379,1000,1894402,0,0,0,0,0,0,0,4.72601,0,0);
UPDATE creature SET spawndist = 0, MovementType = 2, position_x = -260.605164, position_y = 1137.083008, position_z = 41.670635, orientation = 4.621477 WHERE guid = 67984;
DELETE FROM creature_movement WHERE id = 67984;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(67984,1,-260.605,1137.08,41.6706,20000,1894401,0,0,0,0,0,0,0,4.62148,0,0),
(67984,2,-253.949,1093.1,41.866,0,0,0,0,0,0,0,0,0,4.66707,0,0),
(67984,3,-253.155,1074.04,54.3067,0,0,0,0,0,0,0,0,0,4.76916,0,0),
(67984,4,-249.985,1046.8,54.3168,1000,1894401,0,0,0,0,0,0,0,4.57914,0,0),
(67984,5,-248.905,1014.4,54.3266,0,0,0,0,0,0,0,0,0,4.64917,0,0),
(67984,6,-248.336,993.958,68.2144,0,0,0,0,0,0,0,0,0,4.73163,0,0),
(67984,7,-247.975,969.204,84.3296,0,0,0,0,0,0,0,0,0,4.74341,0,0),
(67984,8,-248.319,920.639,84.379,0,0,0,0,0,0,0,0,0,4.72601,0,0),
(67984,9,-248.109,895.636,84.379,1000,1894402,0,0,0,0,0,0,0,4.72601,0,0);
UPDATE creature SET spawndist = 0, MovementType = 2, position_x = -204.430954, position_y = 1128.684326, position_z = 41.589573, orientation = 3.842693 WHERE guid = 67986;
DELETE FROM creature_movement WHERE id = 67986;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(67986,1,-204.431,1128.68,41.5896,20000,1894401,0,0,0,0,0,0,0,3.84269,0,0),
(67986,2,-242.527,1094.53,41.6649,0,0,0,0,0,0,0,0,0,4.19364,0,0),
(67986,3,-245.397,1074.1,54.3068,0,0,0,0,0,0,0,0,0,4.60597,0,0),
(67986,4,-249.985,1046.8,54.3168,1000,1894401,0,0,0,0,0,0,0,4.57914,0,0),
(67986,5,-248.905,1014.4,54.3266,0,0,0,0,0,0,0,0,0,4.64917,0,0),
(67986,6,-248.336,993.958,68.2144,0,0,0,0,0,0,0,0,0,4.73163,0,0),
(67986,7,-247.975,969.204,84.3296,0,0,0,0,0,0,0,0,0,4.74341,0,0),
(67986,8,-248.319,920.639,84.379,0,0,0,0,0,0,0,0,0,4.72601,0,0),
(67986,9,-248.109,895.636,84.379,1000,1894402,0,0,0,0,0,0,0,4.72601,0,0);
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
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(67982,1,-260.877899,1167.174805,41.605026,50000,0,0,0,0,0,0,0,0,4.368320,0,0),
(67982,2,-261.333,1146.7,41.6652,20000,1894401,0,0,0,0,0,0,0,4.47017,0,0),
(67982,3,-250.667,1093.94,41.6678,0,0,0,0,0,0,0,0,0,4.935,0,0),
(67982,4,-248.356,1073.42,54.3071,0,0,0,0,0,0,0,0,0,4.86432,0,0),
(67982,5,-249.985,1046.8,54.3168,1000,1894401,0,0,0,0,0,0,0,4.57914,0,0),
(67982,6,-248.905,1014.4,54.3266,0,0,0,0,0,0,0,0,0,4.64917,0,0),
(67982,7,-248.336,993.958,68.2144,0,0,0,0,0,0,0,0,0,4.73163,0,0),
(67982,8,-247.975,969.204,84.3296,0,0,0,0,0,0,0,0,0,4.74341,0,0),
(67982,9,-248.319,920.639,84.379,0,0,0,0,0,0,0,0,0,4.72601,0,0),
(67982,10,-248.109,895.636,84.379,1000,1894402,0,0,0,0,0,0,0,4.72601,0,0);
UPDATE creature SET spawndist = 0, MovementType = 2, position_x = -279.496429, position_y = 1154.829712, position_z = 41.594738, orientation = 4.702899 WHERE guid = 67988;
DELETE FROM creature_movement WHERE id = 67988;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(67988,1,-279.496429,1154.829712,41.594738,50000,0,0,0,0,0,0,0,0,4.702899,0,0),
(67988,2,-274.189,1141.21,42.09,20000,1894401,0,0,0,0,0,0,0,4.59021,0,0),
(67988,3,-258.111,1093.64,41.6667,0,0,0,0,0,0,0,0,0,5.02533,0,0),
(67988,4,-254.94,1073.8,54.3068,0,0,0,0,0,0,0,0,0,4.85254,0,0),
(67988,5,-249.985,1046.8,54.3168,1000,1894401,0,0,0,0,0,0,0,4.57914,0,0),
(67988,6,-248.905,1014.4,54.3266,0,0,0,0,0,0,0,0,0,4.64917,0,0),
(67988,7,-248.336,993.958,68.2144,0,0,0,0,0,0,0,0,0,4.73163,0,0),
(67988,8,-247.975,969.204,84.3296,0,0,0,0,0,0,0,0,0,4.74341,0,0),
(67988,9,-248.319,920.639,84.379,0,0,0,0,0,0,0,0,0,4.72601,0,0),
(67988,10,-248.109,895.636,84.379,1000,1894402,0,0,0,0,0,0,0,4.72601,0,0);
UPDATE creature SET spawndist = 0, MovementType = 2, position_x = -231.076, position_y = 1168.27, position_z = 41.6, orientation = 4.22019 WHERE guid = 67983;
DELETE FROM creature_movement WHERE id = 67983;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(67983,1,-231.076,1168.27,41.6,50000,0,0,0,0,0,0,0,0,4.22019,0,0),
(67983,2,-232.82,1146.14,41.6493,20000,1894401,0,0,0,0,0,0,0,4.57451,0,0),
(67983,3,-242.018,1094.68,41.6667,0,0,0,0,0,0,0,0,0,4.55095,0,0),
(67983,4,-243.06,1074.05,54.3068,0,0,0,0,0,0,0,0,0,4.67661,0,0),
(67983,5,-249.985,1046.8,54.3168,1000,1894401,0,0,0,0,0,0,0,4.57914,0,0),
(67983,6,-248.905,1014.4,54.3266,0,0,0,0,0,0,0,0,0,4.64917,0,0),
(67983,7,-248.336,993.958,68.2144,0,0,0,0,0,0,0,0,0,4.73163,0,0),
(67983,8,-247.975,969.204,84.3296,0,0,0,0,0,0,0,0,0,4.74341,0,0),
(67983,9,-248.319,920.639,84.379,0,0,0,0,0,0,0,0,0,4.72601,0,0),
(67983,10,-248.109,895.636,84.379,1000,1894402,0,0,0,0,0,0,0,4.72601,0,0);
UPDATE creature SET spawndist = 0, MovementType = 2, position_x = -206.522, position_y = 1159.26, position_z = 42.4914, orientation = 4.77705 WHERE guid = 67980;
DELETE FROM creature_movement WHERE id = 67980;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(67980,1,-206.522,1159.26,42.4914,50000,0,0,0,0,0,0,0,0,4.77705,0,0),
(67980,2,-218.043,1141.49,41.6022,20000,1894401,0,0,0,0,0,0,0,3.87865,0,0),
(67980,3,-238.381,1095.06,41.6667,0,0,0,0,0,0,0,0,0,4.41351,0,0),
(67980,4,-241.495,1073.91,54.307,0,0,0,0,0,0,0,0,0,4.55488,0,0),
(67980,5,-249.985,1046.8,54.3168,1000,1894401,0,0,0,0,0,0,0,4.57914,0,0),
(67980,6,-248.905,1014.4,54.3266,0,0,0,0,0,0,0,0,0,4.64917,0,0),
(67980,7,-248.336,993.958,68.2144,0,0,0,0,0,0,0,0,0,4.73163,0,0),
(67980,8,-247.975,969.204,84.3296,0,0,0,0,0,0,0,0,0,4.74341,0,0),
(67980,9,-248.319,920.639,84.379,0,0,0,0,0,0,0,0,0,4.72601,0,0),
(67980,10,-248.109,895.636,84.379,1000,1894402,0,0,0,0,0,0,0,4.72601,0,0);
DELETE FROM creature_linking WHERE guid IN (67980,67983,67988); -- make sure they will spawn together .. so we can synhronize attack
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(67980, 67982, 128),
(67983, 67982, 128),
(67988, 67982, 128);
-- wave 3
UPDATE creature SET position_x = -239.507065, position_y = 1228.832764, position_z = 31.986649, orientation = 4.258552, spawndist = 0, MovementType = 2 WHERE guid = 68311;
DELETE FROM creature_movement WHERE id = 68311;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(68311,1,-242.901,1192.48,42.691,30000,0,0,0,0,0,0,0,0,4.55578,0,0),
(68311,2,-246.947,1159.32,41.6052,30000,0,0,0,0,0,0,0,0,4.52515,0,0),
(68311,3,-247.378,1148.42,41.6191,30000,1894401,0,0,0,0,0,0,0,4.62175,0,0),
(68311,4,-247.742,1093.66,41.6669,0,0,0,0,0,0,0,0,0,4.75527,0,0),
(68311,5,-246.89,1073.81,54.3068,0,0,0,0,0,0,0,0,0,4.75527,0,0),
(68311,6,-249.985,1046.8,54.3168,1000,1894401,0,0,0,0,0,0,0,4.57914,0,0),
(68311,7,-248.905,1014.4,54.3266,0,0,0,0,0,0,0,0,0,4.64917,0,0),
(68311,8,-248.336,993.958,68.2144,0,0,0,0,0,0,0,0,0,4.73163,0,0),
(68311,9,-247.975,969.204,84.3296,0,0,0,0,0,0,0,0,0,4.74341,0,0),
(68311,10,-248.319,920.639,84.379,0,0,0,0,0,0,0,0,0,4.72601,0,0),
(68311,11,-248.109,895.636,84.379,1000,1894402,0,0,0,0,0,0,0,4.72601,0,0);
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
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(68313,1,-246.997,1324.84,15.4259,0,0,0,0,0,0,0,0,0,4.63094,0,0),
(68313,2,-238.72,1271.37,24.6796,0,0,0,0,0,0,0,0,0,4.72832,0,0),
(68313,3,-240.235,1220.46,33.8146,0,0,0,0,0,0,0,0,0,4.649,0,0),
(68313,4,-241.634,1194.53,42.3178,30000,0,0,0,0,0,0,0,0,4.66863,0,0),
(68313,5,-243.332,1155.89,41.626,30000,1894401,0,0,0,0,0,0,0,4.65685,0,0),
(68313,6,-251.312,1094.19,41.6676,0,0,0,0,0,0,0,0,0,4.55082,0,0),
(68313,7,-251.859,1073.77,54.3068,0,0,0,0,0,0,0,0,0,4.70397,0,0),
(68313,8,-249.985,1046.8,54.3168,1000,1894401,0,0,0,0,0,0,0,4.57914,0,0),
(68313,9,-248.905,1014.4,54.3266,0,0,0,0,0,0,0,0,0,4.64917,0,0),
(68313,10,-248.336,993.958,68.2144,0,0,0,0,0,0,0,0,0,4.73163,0,0),
(68313,11,-247.975,969.204,84.3296,0,0,0,0,0,0,0,0,0,4.74341,0,0),
(68313,12,-248.319,920.639,84.379,0,0,0,0,0,0,0,0,0,4.72601,0,0),
(68313,13,-248.109,895.636,84.379,1000,1894402,0,0,0,0,0,0,0,4.72601,0,0);
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
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,orientation,model1,model2) VALUES
(19257,1,67.6326,2535.33,64.2527,15000,0,0,0,0,0,0,0,0,4.88692,0,0),
(19257,2,67.6326,2535.33,64.2527,120000,1925701,0,0,0,0,0,0,0,4.88692,0,0),
(19257,3,67.6326,2535.33,64.2527,90000,0,0,0,0,0,0,0,0,4.88692,0,0);
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
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(86036,18729,530,1,0,0,89.28646,2505.569,86.47188,6.178465,120,0,0,4050,0,0,2);
DELETE FROM creature_movement WHERE id = 86036; 
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(86036,1,89.28646,2505.569,86.47188,5000,1872901,0,0,0,0,0,0,0,6.178465,0,0),
(86036,2,89.28646,2505.569,86.47188,20000,1872902,0,0,0,0,0,0,0,6.178465,0,0);
-- #2
DELETE FROM creature WHERE guid = 86027;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(86027,18729,530,1,0,0,63.1007,2499.168,85.77042,1.047198,120,0,0,4050,0,0,2);
DELETE FROM creature_movement WHERE id = 86027; 
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(86027,1,63.1007,2499.168,85.77042,5000,1872901,0,0,0,0,0,0,0,1.047198,0,0),
(86027,2,63.1007,2499.168,85.77042,20000,1872903,0,0,0,0,0,0,0,1.047198,0,0);
-- #3
DELETE FROM creature WHERE guid = 86030;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(86030,18729,530,1,0,0,70.1806,2506.25,86.6115,1.00688,120,0,0,4050,0,0,2);
DELETE FROM creature_movement WHERE id = 86030; 
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(86030,1,70.1806,2506.25,86.6115,5000,1872901,0,0,0,0,0,0,0,1.00688,0,0),
(86030,2,70.1806,2506.25,86.6115,20000,1872904,0,0,0,0,0,0,0,1.00688,0,0);
-- #4
DELETE FROM creature WHERE guid = 86029;
INSERT INTO creature(guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(86029,18729,530,1,0,0,83.25868,2499.573,85.56516,4.939282,120,0,0,4050,0,0,2);
DELETE FROM creature_movement WHERE id = 86029; 
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(86029,1,83.25868,2499.573,85.56516,5000,1872901,0,0,0,0,0,0,0,4.939282,0,0),
(86029,2,83.25868,2499.573,85.56516,20000,1872905,0,0,0,0,0,0,0,4.939282,0,0);
-- #5
DELETE FROM creature WHERE guid = 86026;
INSERT INTO creature(guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(86026,18729,530,1,0,0,56.76736,2507.18,87.81073,2.234021,120,0,0,4050,0,0,2);
DELETE FROM creature_movement WHERE id = 86026; 
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(86026,1,56.76736,2507.18,87.81073,5000,1872901,0,0,0,0,0,0,0,2.234021,0,0),
(86026,2,56.76736,2507.18,87.81073,20000,1872902,0,0,0,0,0,0,0,2.234021,0,0);
-- dynamic
-- #1
DELETE FROM creature WHERE guid = 86035;
INSERT INTO creature(guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(86035,18729,530,1,0,0,44.6528,2511.0911,60.56541,1.145,300,20,0,4050,0,0,1);
-- #2
DELETE FROM creature WHERE guid = 86033;
INSERT INTO creature(guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(86033,18729,530,1,0,0,75.212,2507.39,58.0648,1.007,300,20,0,4050,0,0,1);
-- #3
DELETE FROM creature WHERE guid = 86032;
INSERT INTO creature(guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(86032,18729,530,1,0,0,101.216263,2504.147705,57.459,1.57,300,20,0,4050,0,0,1);
-- #4
DELETE FROM creature WHERE guid = 86028;
INSERT INTO creature(guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(86028,18729,530,1,0,0,73.2866,2513.66,59.6385,1.69012,300,20,0,4050,0,0,1);
-- #5
DELETE FROM creature WHERE guid = 86034;
INSERT INTO creature(guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(86034,18729,530,1,0,0,68.9691,2511.56,59.1739,1.65085,300,20,0,4050,0,0,1);
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
INSERT INTO `spell_template` (`id`, `attr_ex`, `attr_ex2`, `attr_ex3`, `proc_flags`, `proc_chance`, `duration_index`, `effect0`, `effect0_implicit_target_a`, `effect0_implicit_target_b`, `effect0_radius_idx`, `effect0_apply_aura_name`, `effect0_misc_value`, `effect0_misc_value_b`, `effect0_trigger_spell`, `comments`) VALUES
('33242','0','4','0','0','101','21','28','18','0','7','0','19259','64','0','summon Infernal Invader');
-- Infernal Invader
UPDATE creature_template SET MovementType = 2 WHERE entry = 19259;
DELETE FROM creature_movement_template WHERE entry = 19259;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(19259,1,67.6326,2535.33,64.2527,0,0,0,0,0,0,0,0,0,0,0,0);
-- Sedai's corpse - update
DELETE FROM creature_template_addon WHERE entry = 16852;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(16852,0,7,1,0,0,0,NULL);

-- Urtrak
UPDATE creature_template SET equipmentTemplateid = 1335 WHERE entry = 19862;
-- Vengeful Unyielding Captain
UPDATE creature_template SET equipmentTemplateid = 249 WHERE entry = 19864;
--  Vengeful Unyielding Footman
UPDATE creature_template SET equipmentTemplateid = 249 WHERE entry = 20137;



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
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(3396,1,-1145.94,-2025.81,91.8127,0,0,0,0,0,0,0,0,0,0.535909,0,0),
(3396,2,-1109.87,-1999.72,86.8538,0,0,0,0,0,0,0,0,0,0.681207,0,0),
(3396,3,-1068.51,-1962.03,89.5984,0,0,0,0,0,0,0,0,0,0.783309,0,0),
(3396,4,-1050.84,-1946.6,92.1747,0,0,0,0,0,0,0,0,0,0.696915,0,0),
(3396,5,-1028.03,-1936.14,90.9833,0,0,0,0,0,0,0,0,0,0.147922,0,0),
(3396,6,-1000.62,-1947.3,91.8085,0,0,0,0,0,0,0,0,0,5.83578,0,0),
(3396,7,-989.498,-1965.68,91.4196,0,0,0,0,0,0,0,0,0,5.82007,0,0),
(3396,8,-975.014,-1989.78,90.3225,0,0,0,0,0,0,0,0,0,5.58052,0,0),
(3396,9,-947.048,-2017.7,85.9028,0,0,0,0,0,0,0,0,0,6.01485,0,0),
(3396,10,-913.754,-2023.23,84.7262,0,0,0,0,0,0,0,0,0,5.92295,0,0),
(3396,11,-896.969,-2035.67,81.834,0,0,0,0,0,0,0,0,0,5.23573,0,0),
(3396,12,-888.286,-2053.13,81.0782,10000,0,0,0,0,0,0,0,0,4.9687,0,0),
(3396,13,-881.169,-2066.39,82.8913,0,0,0,0,0,0,0,0,0,4.49276,0,0),
(3396,14,-896.265,-2085.67,86.5982,0,0,0,0,0,0,0,0,0,3.74663,0,0),
(3396,15,-919.527,-2102.03,86.1471,0,0,0,0,0,0,0,0,0,3.56128,0,0),
(3396,16,-938.943,-2103.84,85.2055,0,0,0,0,0,0,0,0,0,3.27697,0,0),
(3396,17,-977.091,-2112.99,82.8457,0,0,0,0,0,0,0,0,0,3.62647,0,0),
(3396,18,-996.166,-2129.23,84.339,0,0,0,0,0,0,0,0,0,4.14876,0,0),
(3396,19,-1028.04,-2167.41,84.444,0,0,0,0,0,0,0,0,0,4.02231,0,0),
(3396,20,-1052.2,-2223.07,84.7852,0,0,0,0,0,0,0,0,0,4.21473,0,0),
(3396,21,-1061.31,-2265.33,88.5924,0,0,0,0,0,0,0,0,0,4.13776,0,0),
(3396,22,-1079.04,-2292.94,91.0261,0,0,0,0,0,0,0,0,0,3.3288,0,0),
(3396,23,-1117.46,-2298.19,90.3452,0,0,0,0,0,0,0,0,0,2.68164,0,0),
(3396,24,-1137.66,-2278.07,86.5678,0,0,0,0,0,0,0,0,0,1.97006,0,0),
(3396,25,-1155.54,-2237.66,85.6437,0,0,0,0,0,0,0,0,0,1.86796,0,0),
(3396,26,-1191.45,-2177.87,90.7451,0,0,0,0,0,0,0,0,0,2.20961,0,0),
(3396,27,-1217.34,-2140.72,92.6515,0,0,0,0,0,0,0,0,0,2.0761,0,0),
(3396,28,-1228.96,-2114.76,92.2165,0,0,0,0,0,0,0,0,0,1.41793,0,0),
(3396,29,-1218.87,-2087.08,91.4139,0,0,0,0,0,0,0,0,0,1.11634,0,0),
(3396,30,-1202.37,-2062.52,93.2409,0,0,0,0,0,0,0,0,0,0.729139,0,0),
(3396,31,-1166.88,-2042.01,92.1803,0,0,0,0,0,0,0,0,0,0.552424,0,0);
-- Z cordinate for 2 guards
UPDATE creature SET position_z = 56.375851 WHERE guid = 125681;
UPDATE creature SET position_z = 56.381908 WHERE guid = 125682;

-- Xan'tish <Snake Vendor>
UPDATE creature SET MovementType = 2 WHERE guid = 3476;
DELETE FROM creature_movement WHERE id = 3476;
UPDATE creature_template SET MovementType = 2 WHERE entry = 8404; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 8404;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,orientation,model1,model2) VALUES
(8404,1,1543.59,-4162,40.09,0,0,0,0,0,0,0,0,0,5.25211,0,0),
(8404,2,1543.59,-4162,40.09,0,0,0,0,0,0,0,0,0,5.25211,0,0),
(8404,3,1548.66,-4170.54,39.878,0,0,0,0,0,0,0,0,0,4.91597,0,0),
(8404,4,1549.69,-4182.55,40.6116,0,0,0,0,0,0,0,0,0,4.66386,0,0),
(8404,5,1544.56,-4204.67,42.5118,0,0,0,0,0,0,0,0,0,4.00727,0,0),
(8404,6,1541.77,-4209.83,42.6101,0,0,0,0,0,0,0,0,0,3.79758,0,0),
(8404,7,1535.78,-4211.44,42.2174,0,0,0,0,0,0,0,0,0,3.2745,0,0),
(8404,8,1526.93,-4211.96,41.3994,0,0,0,0,0,0,0,0,0,3.37893,0,0),
(8404,9,1518.28,-4215.47,40.5925,0,0,0,0,0,0,0,0,0,4.0206,0,0),
(8404,10,1531.65,-4212.06,41.8567,0,0,0,0,0,0,0,0,0,0.069258,0,0),
(8404,11,1545.37,-4209.67,42.9739,0,0,0,0,0,0,0,0,0,0.108934,0,0),
(8404,12,1575.68,-4208.31,43.6414,0,0,0,0,0,0,0,0,0,0.418381,0,0),
(8404,13,1581.05,-4205.01,42.1625,0,0,0,0,0,0,0,0,0,1.02235,0,0),
(8404,14,1582.41,-4200.09,41.6332,0,0,0,0,0,0,0,0,0,1.50145,0,0),
(8404,15,1577.94,-4182.56,39.0467,0,0,0,0,0,0,0,0,0,1.43312,0,0),
(8404,16,1577.95,-4166.1,36.4201,0,0,0,0,0,0,0,0,0,1.54979,0,0),
(8404,17,1581.97,-4153.16,34.3183,0,0,0,0,0,0,0,0,0,1.25527,0,0),
(8404,18,1585.48,-4145.38,33.4993,0,0,0,0,0,0,0,0,0,1.12567,0,0),
(8404,19,1604.63,-4121.54,29.6292,0,0,0,0,0,0,0,0,0,0.600243,0,0),
(8404,20,1629.61,-4107.81,29.851,0,0,0,0,0,0,0,0,0,0.388186,0,0),
(8404,21,1664.44,-4095.19,34.6566,0,0,0,0,0,0,0,0,0,0.333208,0,0),
(8404,22,1699.89,-4087.74,38.7137,0,0,0,0,0,0,0,0,0,0.187909,0,0),
(8404,23,1709.97,-4084.71,40.3433,0,0,0,0,0,0,0,0,0,0.466726,0,0),
(8404,24,1732.35,-4069.04,44.7046,0,0,0,0,0,0,0,0,0,0.729834,0,0),
(8404,25,1737.52,-4062.58,44.6143,0,0,0,0,0,0,0,0,0,1.11075,0,0),
(8404,26,1744.09,-4042.98,44.2706,0,0,0,0,0,0,0,0,0,1.21678,0,0),
(8404,27,1745.69,-4021.55,45.8444,0,0,0,0,0,0,0,0,0,1.62519,0,0),
(8404,28,1741.55,-3993.82,46.9013,0,0,0,0,0,0,0,0,0,1.73514,0,0),
(8404,29,1738.06,-3982.79,47.6495,0,0,0,0,0,0,0,0,0,2.00611,0,0),
(8404,30,1727.15,-3960.55,48.8178,0,0,0,0,0,0,0,0,0,2.05323,0,0),
(8404,31,1716.72,-3941.62,49.6707,0,0,0,0,0,0,0,0,0,2.22995,0,0),
(8404,32,1712.4,-3937.89,49.7629,0,0,0,0,0,0,0,0,0,2.72082,0,0),
(8404,33,1708.1,-3938.4,50.5155,0,0,0,0,0,0,0,0,0,4.8359,0,0),
(8404,34,1710.22,-3944.82,50.3793,0,0,0,0,0,0,0,0,0,5.29143,0,0),
(8404,35,1728.4,-3966.85,48.3152,0,0,0,0,0,0,0,0,0,5.31499,0,0),
(8404,36,1742.65,-3994.21,47.0203,0,0,0,0,0,0,0,0,0,4.766,0,0),
(8404,37,1745.13,-4021.8,45.8787,0,0,0,0,0,0,0,0,0,4.70709,0,0),
(8404,38,1743.39,-4040.77,44.4939,0,0,0,0,0,0,0,0,0,4.61677,0,0),
(8404,39,1738.21,-4058.59,44.3596,0,0,0,0,0,0,0,0,0,4.36545,0,0),
(8404,40,1733.13,-4070.14,44.4479,0,0,0,0,0,0,0,0,0,3.8895,0,0),
(8404,41,1711.87,-4085.21,40.1182,0,0,0,0,0,0,0,0,0,3.63026,0,0),
(8404,42,1691.56,-4091.83,37.8552,0,0,0,0,0,0,0,0,0,3.42998,0,0),
(8404,43,1655.99,-4099.88,33.3077,0,0,0,0,0,0,0,0,0,3.48104,0,0),
(8404,44,1629.32,-4109.29,29.6458,0,0,0,0,0,0,0,0,0,3.5635,0,0),
(8404,45,1608.56,-4119.25,29.608,0,0,0,0,0,0,0,0,0,3.78734,0,0),
(8404,46,1598.77,-4127.94,30.6464,0,0,0,0,0,0,0,0,0,3.97262,0,0),
(8404,47,1586.65,-4144.41,33.1692,0,0,0,0,0,0,0,0,0,4.09828,0,0),
(8404,48,1579.47,-4159.36,35.4998,0,0,0,0,0,0,0,0,0,4.37709,0,0),
(8404,49,1576.2,-4176.22,38.1288,0,0,0,0,0,0,0,0,0,4.6402,0,0),
(8404,50,1577.91,-4192.41,40.5278,0,0,0,0,0,0,0,0,0,4.84047,0,0),
(8404,51,1578.51,-4205.14,42.5391,0,0,0,0,0,0,0,0,0,4.34568,0,0),
(8404,52,1575.8,-4208.68,43.6726,0,0,0,0,0,0,0,0,0,3.43462,0,0),
(8404,53,1563.73,-4208.41,43.619,0,0,0,0,0,0,0,0,0,2.9948,0,0),
(8404,54,1547.49,-4208.4,43.0629,0,0,0,0,0,0,0,0,0,3.24612,0,0),
(8404,55,1527.74,-4212.69,41.5202,0,0,0,0,0,0,0,0,0,3.3443,0,0),
(8404,56,1516.82,-4216.26,40.4675,0,0,0,0,0,0,0,0,0,3.5917,0,0),
(8404,57,1539.83,-4210.73,42.5457,0,0,0,0,0,0,0,0,0,0.257683,0,0),
(8404,58,1543,-4207.62,42.651,0,0,0,0,0,0,0,0,0,1.09413,0,0),
(8404,59,1549.16,-4188.49,41.2349,0,0,0,0,0,0,0,0,0,1.36117,0,0),
(8404,60,1550.57,-4176.65,40.3661,0,0,0,0,0,0,0,0,0,1.58501,0,0),
(8404,61,1547.16,-4166.1,39.8663,0,0,0,0,0,0,0,0,0,2.02483,0,0),
(8404,62,1540.48,-4157.99,40.4082,0,0,0,0,0,0,0,0,0,2.63351,0,0),
(8404,63,1534.96,-4155.77,40.5611,0,0,0,0,0,0,0,0,0,2.90055,0,0),
(8404,64,1526.11,-4155.11,40.6068,0,0,0,0,0,0,0,0,0,3.23042,0,0),
(8404,65,1499.67,-4154.97,41.0505,0,0,0,0,0,0,0,0,0,2.90055,0,0),
(8404,66,1485.95,-4150.33,40.6375,0,0,0,0,0,0,0,0,0,2.8063,0,0),
(8404,67,1501.73,-4155.09,40.9359,0,0,0,0,0,0,0,0,0,6.13404,0,0),
(8404,68,1526.68,-4154.89,40.6253,0,0,0,0,0,0,0,0,0,0.0471973,0,0);
-- correct spawns for Xan'tish snakes
UPDATE creature SET position_x = 1524.162231, position_y = -4155.138184, position_z = 41.617981, orientation = 0.074240 WHERE guid = 3571;
UPDATE creature SET position_x = 1524.510864, position_y = -4153.323730, position_z = 41.792473, orientation = 0.023189 WHERE guid = 3560;
UPDATE creature SET position_x = 1524.748779, position_y = -4156.221680, position_z = 41.517262, orientation = 0.019262 WHERE guid = 3477;
-- link snakes with Xan'tish
DELETE FROM creature_linking WHERE guid IN (3571, 3560, 3477);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(3571, 3476, 656),
(3560, 3476, 656),
(3477, 3476, 656);

-- Razor Hill Grunt -- update
UPDATE creature SET spawndist = 5, MovementType = 1 WHERE guid  IN (10278, 10279, 8424, 6388, 8417, 10276, 7668, 10274, 10427, 10273, 7669, 6385);
-- update for - Horizon Team
UPDATE creature_template SET FactionAlliance = 35, FactionHorde = 35 WHERE entry IN (8394, 8387, 8388, 8389, 8478);
UPDATE creature_template SET EquipmentTemplateId = 2502 WHERE entry IN (8388, 8389);
UPDATE creature_template SET EquipmentTemplateId = 51 WHERE entry IN (8387, 8478);
UPDATE creature SET spawndist = 2, MovementType = 1 WHERE guid = 35901;