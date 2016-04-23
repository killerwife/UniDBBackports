select * from gameobject_template where entry in(185523,185541);
select * from gameobject where id in(185523,184683);
select * from gameobject where id in(185541);
select count(*) from gameobject where id = 185541;
select * from gameobject_template;

DELETE FROM gameobject_template WHERE entry = 185523;
INSERT INTO gameobject_template (entry, type, displayId, name, IconName, castBarCaption, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, ScriptName) VALUES
(185523,5,7356,'The Book of the Raven','','',0,0,0.5,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- missing object added: The Book of the Raven
DELETE FROM gameobject WHERE id=185523;
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES 
(121700, 185523, 530, 1,3024.36, 5509, 145.957, 2.29514, 0, 0, 0.911768, 0.410706, -600, 255, 1);

DELETE FROM gameobject WHERE guid BETWEEN 121724 AND 121768;
-- Raven Stone Fragment - (Terrokar Forest) - all misiing added Killerwife Note: we allready had some in TBC-DB
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(121724, 185541, 530, 1,-3522.93, 3591.24, 279.984, 3.13623, 0, 0, 0.999996, 0.00268371, -320, 255, 1),
(121725, 185541, 530, 1,-3614.71, 3668.21, 277.876, 3.06554, 0, 0, 0.999277, 0.0380174, -320, 255, 1),
(121726, 185541, 530, 1,-3687.49, 3676.91, 275.849, 3.17157, 0, 0, 0.999888, -0.014987, -320, 255, 1),
(121727, 185541, 530, 1,-3591.01, 3724.4, 286.046, 2.90092, 0, 0, 0.992768, 0.120047, -320, 255, 1),
(121728, 185541, 530, 1,-3660.47, 3804.44, 256.671, 0.921711, 0, 0, 0.444715, 0.895672, -320, 255, 1),
(121729, 185541, 530, 1,-3709.67, 3744.53, 277.062, 2.56712, 0, 0, 0.959031, 0.283302, -320, 255, 1),
(121730, 185541, 530, 1,-3758.52, 3732.27, 276.852, 6.07391, 0, 0, 0.104445, -0.994531, -320, 255, 1),
(121731, 185541, 530, 1,-3945.16, 3664.53, 287.184, 3.24256, 0, 0, 0.998726, -0.0504627, -320, 255, 1),
(121732, 185541, 530, 1,-3869.19, 3813.33, 293.27, 2.40611, 0, 0, 0.933142, 0.359508, -320, 255, 1),
(121733, 185541, 530, 1,-3928.52, 3803.6, 296.713, 0.84317, 0, 0, 0.409207, 0.912442, -320, 255, 1),
(121734, 185541, 530, 1,-4015.58, 3704.01, 296.699, 2.70849, 0, 0, 0.976644, 0.214862, -320, 255, 1),
(121735, 185541, 530, 1,-4048.37, 3670.2, 306.466, 5.85008, 0, 0, 0.214865, -0.976644, -320, 255, 1),
(121736, 185541, 530, 1,-4035.57, 3604.6, 289.111, 4.36568, 0, 0, 0.818477, -0.57454, -320, 255, 1),
(121737, 185541, 530, 1,-4114.9, 3445.98, 291.461, 4.78586, 0, 0, 0.680659, -0.732601, -320, 255, 1),
(121738, 185541, 530, 1,-4164.12, 3408.89, 293.794, 5.79116, 0, 0, 0.243536, -0.969892, -320, 255, 1),
(121739, 185541, 530, 1,-4145.64, 3367.12, 286.617, 2.18226, 0, 0, 0.88715, 0.461482, -320, 255, 1),
(121740, 185541, 530, 1,-4057.38, 3349.27, 285.711, 3.79233, 0, 0, 0.947534, -0.319656, -320, 255, 1),
(121741, 185541, 530, 1,-4085.77, 3318.1, 288.168, 4.21251, 0, 0, 0.860035, -0.510236, -320, 255, 1),
(121742, 185541, 530, 1,-4134.75, 3296.82, 291.336, 3.47031, 0, 0, 0.986524, -0.163619, -320, 255, 1),
(121743, 185541, 530, 1,-4196.13, 3308.13, 284.064, 0.587893, 0, 0, 0.289732, 0.957108, -320, 255, 1),
(121744, 185541, 530, 1,-4189.54, 3257.55, 292.043, 2.70455, 0, 0, 0.976219, 0.216787, -320, 255, 1),
(121745, 185541, 530, 1,-4087.81, 3247.68, 298.522, 4.46776, 0, 0, 0.788098, -0.61555, -320, 255, 1),
(121746, 185541, 530, 1,-4180.37, 3124.99, 321.346, 3.64701, 0, 0, 0.968238, -0.250029, -320, 255, 1),
(121747, 185541, 530, 1,-4180.98, 2998.87, 314.479, 6.08959, 0, 0, 0.0966446, -0.995319, -320, 255, 1),
(121748, 185541, 530, 1,-4066.43, 3066.54, 318.051, 0.458292, 0, 0, 0.227146, 0.973861, -320, 255, 1),
(121749, 185541, 530, 1,-3976.59, 3165.93, 315.712, 0.415095, 0, 0, 0.206061, 0.978539, -320, 255, 1),
(121750, 185541, 530, 1,-3913.84, 3258.51, 299.482, 5.97571, 0, 0, 0.153131, -0.988206, -320, 255, 1),
(121751, 185541, 530, 1,-3825.82, 3296.92, 276.039, 0.332628, 0, 0, 0.165548, 0.986202, -320, 255, 1),
(121752, 185541, 530, 1,-3896.6, 3304.55, 285.785, 3.59988, 0, 0, 0.973861, -0.227146, -320, 255, 1),
(121753, 185541, 530, 1,-3888.72, 3199.02, 313.575, 5.30419, 0, 0, 0.470182, -0.88257, -320, 255, 1),
(121754, 185541, 530, 1,-3862.88, 3234.32, 308.008, 0.199102, 0, 0, 0.0993868, 0.995049, -320, 255, 1),
(121755, 185541, 530, 1,-3777.72, 3341.68, 276.476, 0.937377, 0, 0, 0.451716, 0.892162, -320, 255, 1),
(121756, 185541, 530, 1,-3897.6, 3146.29, 326.375, 4.31067, 0, 0, 0.833968, -0.551813, -320, 255, 1),
(121757, 185541, 530, 1,-3868.82, 3107.8, 333.388, 4.93506, 0, 0, 0.624167, -0.781291, -320, 255, 1),
(121758, 185541, 530, 1,-3919.64, 3054.12, 358.956, 1.711, 0, 0, 0.754898, 0.655842, -320, 255, 1),
(121759, 185541, 530, 1,-3994.67, 3021.64, 358.166, 1.28295, 0, 0, 0.598378, 0.801214, -320, 255, 1),
(121760, 185541, 530, 1,-4002.35, 3003.2, 361.913, 4.85259, 0, 0, 0.655844, -0.754897, -320, 255, 1),
(121761, 185541, 530, 1,-3716.99, 3343.28, 287.33, 0.0734353, 0, 0, 0.0367094, 0.999326, -320, 255, 1),
(121762, 185541, 530, 1,-3652.02, 3308.09, 285.399, 0.689972, 0, 0, 0.338184, 0.94108, -320, 255, 1),
(121763, 185541, 530, 1,-3689.99, 3391.04, 282.229, 1.88378, 0, 0, 0.808671, 0.588262, -320, 255, 1),
(121764, 185541, 530, 1,-3623.51, 3372.87, 294.724, 5.37488, 0, 0, 0.438702, -0.898633, -320, 255, 1),
(121765, 185541, 530, 1,-3467.18, 3487.59, 286.371, 4.38136, 0, 0, 0.813945, -0.580942, -320, 255, 1),
(121766, 185541, 530, 1,-3642.29, 3189.84, 314.527, 4.04758, 0, 0, 0.899141, -0.437659, -320, 255, 1),
(121767, 185541, 530, 1,-4116.15, 3212.55, 299.799, 5.08038, 0, 0, 0.565801, -0.824542, -320, 255, 1),
(121768, 185541, 530, 1,-4108.74, 3544.24, 296.961, 1.6953, 0, 0, 0.749729, 0.661745, -320, 255, 1);

-- Grz3s
-- Raven Stone Fragment should be spawned 'only' by Cenarion Sparrowhawk in q.10988.
DELETE FROM gameobject WHERE guid IN (39908,39909,39910,39911,39912,39913,39914,39915,39916,39917,39918,39919,39920);
-- Cenarion Sparrowhawk should be spawned 'only' in q.10988.
DELETE FROM creature WHERE guid = 78965;
-- Skettis - Invis Raven Stone - (Terrokar Forest)
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(140488,22986,530,1,0,0,-3709.53,3744.06,277.073,1.62054,320,0,0,41,60,0,0),
(140489,22986,530,1,0,0,-3758.84,3732.39,276.846,5.73288,320,0,0,41,60,0,0),
(140490,22986,530,1,0,0,-3687.76,3677.07,275.927,5.73288,320,0,0,41,60,0,0),
(140491,22986,530,1,0,0,-3591.33,3724.59,285.996,5.73288,320,0,0,41,60,0,0),
(140492,22986,530,1,0,0,-3615.09,3667.87,277.788,1.00477,320,0,0,41,60,0,0),
(140493,22986,530,1,0,0,-3642.5,3189.22,314.596,1.50114,320,0,0,41,60,0,0),
(140494,22986,530,1,0,0,-3967.37,3323.17,289.012,1.50114,320,0,0,41,60,0,0),
(140495,22986,530,1,0,0,-3523.61,3591.08,279.754,0.483256,320,0,0,41,60,0,0);

-- ---------------
-- Druids flight form chain
-- ---------------
-- quest 10961 'The Ward of Wakening' - Druid
DELETE FROM dbscripts_on_quest_end WHERE id = 10961;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10961,0,29,3,0,0,0,0,0,0,0,0,0,0,0,0,'22832 - npc_flag removed'),
(10961,1,0,0,0,0,0,0,2000005665,0,0,0,0,0,0,0,''),
(10961,6,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10961,7,0,0,0,0,0,0,2000005666,0,0,0,0,0,0,0,''),
(10961,10,0,0,0,0,0,0,2000005667,0,0,0,0,0,0,0,''),
(10961,14,0,0,0,0,0,0,2000005668,0,0,0,0,0,0,0,''),
(10961,15,29,3,0,0,0,0,0,0,0,0,0,0,0,0,'22832 - npc_flag added');
DELETE FROM db_script_string WHERE entry BETWEEN 2000005665 AND 2000005668;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005665,'There are few left in the world who can prepare the Ward of Waking, $N. We are fortunate that I am among them.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005666,'%s kneels, filling the vial with water from the moonwell.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005667,'%s combines the herbs with the moonwell water to create the Ward of Waking',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005668,'The potion is finished. I can only hope Clintar forgives us for interrupting his sojourn in the Emerald Dream.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL);
UPDATE quest_template SET CompleteScript = 10961, NextQuestInChain = 10964 WHERE entry = 10961;
-- quest 10964 'Waking the Sleeper' - Druid
DELETE FROM dbscripts_on_quest_end WHERE id = 10964;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10964,0,29,3,0,0,0,0,0,0,0,0,0,0,0,0,'22832 - npc_flag removed'),
(10964,3,0,2,0,0,0,0,2000005669,0,0,0,0,0,0,0,''),
(10964,4,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'), 
(10964,8,0,0,0,0,0,0,2000000067,0,0,0,0,0,0,0,''),
(10964,11,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(10964,12,3,0,0,0,0,0,0,0,0,0,0,0,0,0.911676,''),
(10964,12,0,2,0,0,0,0,2000005670,0,0,0,0,0,0,0,''),
(10964,15,0,0,0,0,0,0,2000000068,0,0,0,0,0,0,0,''),
(10964,17,3,0,700,0,0,0,0,0,0,0,7453,-3116.32,439.604,5,''),
(10964,19,3,0,0,0,0,0,0,0,0,0,7453,-3116.32,439.604,5.54,''),
(10964,22,0,0,0,0,0,0,2000000069,0,0,0,0,0,0,0,''),
(10964,22,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10964,24,29,3,0,0,0,0,0,0,0,0,0,0,0,0,'22832 - npc_flag added'),
(10964,54,3,0,0,0,0,0,0,0,0,0,7459.48,-3123.03,438.398,5,''),
(10964,59,3,0,0,0,0,0,0,0,0,0,7459.48,-3123.03,438.398,5.51524,''),
(10964,64,28,3,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND');
DELETE FROM db_script_string WHERE entry BETWEEN 2000005669 AND 2000005670;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005669,'%s snaps up to a kneeling position, but seems as though he\'s somewhere else.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005670,'%s gets to his feet, beginning to recognize his surroundings.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL);
UPDATE db_script_string SET emote = 6 WHERE entry = 2000000067;
UPDATE db_script_string SET emote = 1 WHERE entry = 2000000068;
UPDATE quest_template SET CompleteScript = 10964, NextQuestInChain = 10965, CompleteEmote = 0 WHERE entry =10964;
-- quest 10987 'To Catch A Sparrowhawk' - Druid
DELETE FROM dbscripts_on_quest_end WHERE id = 10987;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10987,2,10,23036,17000,0,0,0,0,0,0,0,-1272.48,9164.06,217.776,4.20625,'summon'),
(10987,4,0,0,0,0,0,0,2000005671,0,0,0,0,0,0,0,''),
(10987,6,3,0,0,23036,50,7,0,0,0,0,-1273.05,9161.96,217.298,4.34369,'force buddy to move'),
(10987,6,0,0,0,0,0,0,2000005672,0,0,0,0,0,0,0,''),
(10987,10,0,0,0,0,0,0,2000005673,0,0,0,0,0,0,0,''),
(10987,14,0,0,0,0,0,0,2000005674,0,0,0,0,0,0,0,''),
(10987,15,25,1,0,23036,50,7,0,0,0,0,0,0,0,0,'RUN ON'),
(10987,16,3,0,700,23036,50,7,0,0,0,0,-1335.43,9128.58,251.388,3.6604,'force buddy to move');
DELETE FROM db_script_string WHERE entry BETWEEN 2000005671 AND 2000005674;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005671,'Come closer, young one. There\'s nothing to fear from me or $n.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005672,'%s cautiously approaches Wather Elaira.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005673,'I\'m going to train you to help $N with very important task. After that, I promose you\'ll be free to return home.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005674,'You will hear the call when you are needed. Fly east, to Skettis, and wait there for $N\'s signal.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL);
UPDATE quest_template SET CompleteScript = 10987 WHERE entry = 10987;
DELETE FROM dbscripts_on_spell WHERE id = 39810; -- target need to be despawned by spell
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(39810,2,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'despawn'); 
UPDATE creature_template SET MovementType = 0, InhabitType = 5 WHERE entry = 23036; -- update for "Captive Sparrowhawk"
-- quest 10988 'The Raven Stones' - Druid
DELETE FROM dbscripts_on_quest_end WHERE id = 10988;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10988,0,29,3,0,0,0,0,0,0,0,0,0,0,0,0,'22924 - npc_flag removed'),
(10988,2,10,23036,17000,0,0,0,0,0,0,0,3021.95,5513.31,146.41,5.55244,'summon'),
(10988,4,0,0,0,0,0,0,2000005675,0,0,0,0,0,0,0,''),
(10988,7,0,0,0,0,0,0,2000000070,0,0,0,0,0,0,0,''),
(10988,8,25,1,0,23036,50,7,0,0,0,0,0,0,0,0,'RUN ON'),
(10988,12,3,0,700,23036,50,7,0,0,0,0,2972.54,5519.14,170.419,3.01223,'force buddy to move'),
(10988,13,3,0,0,0,0,0,0,0,0,0,0,0,0,4.87912,''),
(10988,14,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10988,17,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10988,17,9,121700,600,0,0,0,0,0,0,0,0,0,0,0,'resp o185523'),
(10988,18,0,0,0,0,0,0,2000000071,0,0,0,0,0,0,0,''),
(10988,22,0,0,0,0,0,0,2000000072,0,0,0,0,0,0,0,''),
(10988,28,0,0,0,0,0,0,2000000073,0,0,0,0,0,0,0,''),
(10988,36,0,0,0,0,0,0,2000000074,0,0,0,0,0,0,0,''),
(10988,43,0,0,0,0,0,0,2000000075,0,0,0,0,0,0,0,''),
(10988,48,3,0,0,0,0,0,0,0,0,0,0,0,0,2.36604,''),
(10988,49,29,3,0,0,0,0,0,0,0,0,0,0,0,0,'22832 - npc_flag added');
UPDATE quest_template SET CompleteScript = 10988 WHERE entry = 10988;
DELETE FROM db_script_string WHERE entry = 2000005675;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005675,'%s greets the sparrowhawk that helped locate the raven stones.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,21,NULL);
UPDATE db_script_string SET emote = 1 WHERE entry IN (2000000070,2000000072,2000000073,2000000074,2000000075);
UPDATE db_script_string SET emote = 4 WHERE entry = 2000000071;
UPDATE creature_template SET MovementType = 0, InhabitType = 5 WHERE entry = 22972; -- update for "Cenarion Sparrowhawk"
-- despawn the stones and sync the spawn time between the stones and the triggers
-- also make sure that you sync the spawn locations
UPDATE gameobject SET spawntimesecs  =  -320 WHERE id = 185541; -- thx xfurry
UPDATE creature SET spawntimesecs = 320 WHERE id = 22986; -- thx xfurry
-- quest 10988 'The Eagle's Essence' - Druid
DELETE FROM dbscripts_on_go_template_use WHERE id = 185547;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(185547,2,10,22993,600000,0,0,0,0,0,0,0,-2623.6,4573.66,138.827,1.64381,'summon');
UPDATE creature_template SET MovementType = 0 WHERE entry = 22993; -- update for 'Guardian of the Eagle' 
DELETE FROM creature_linking_template WHERE entry = 23167; -- link between 'Anzuli Hatchling' and 'Guardian of the Eagle'
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(23167,530,22993,17,100);
-- quest 10991 'The Falcon's Essence' - Druid
DELETE FROM dbscripts_on_go_template_use WHERE id = 185553;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(185553,2,10,22994,600000,0,0,0,0,0,0,0,-3166.13,3809.05,59.7824,1.84486,'summon');
UPDATE creature_template SET MovementType = 0 WHERE entry = 22994; -- update for 'Guardian of the Falcon'
-- quest 10992 'The Hawk's Essence' - Druid 
DELETE FROM dbscripts_on_go_template_use WHERE id = 185551;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(185551,2,10,22992,600000,0,0,0,0,0,0,0,-4362.77,4626.06,-39.2711,0.86199,'summon');
UPDATE creature_template SET MovementType = 0 WHERE entry = 22992; -- update for 'Guardian of the Hawk'
-- quest 10994 'Chasing the Moonstone' - Druid 
UPDATE creature_template SET MovementType = 0, InhabitType = 3 WHERE entry = 23002; -- update for 'Rizzle Sprysprocket'