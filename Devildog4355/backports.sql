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

