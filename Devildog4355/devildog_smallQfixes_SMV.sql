-- q57852
DELETE FROM dbscripts_on_spell WHERE id = 57852;
INSERT INTO dbscripts_on_spell (id, command, comments) VALUES (57852, 8, 'quest credit q13119');
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE id IN (30742, 30744, 30745, 30950);

-- q11607
DELETE FROM item_required_target WHERE entry = 34711;
INSERT INTO item_required_target VALUES
(34711, 1, 25321),
(34711, 1, 25322);
DELETE FROM dbscripts_on_spell WHERE id = 45504;
INSERT INTO dbscripts_on_spell (id, command, comments) VALUES (45504, 8, 'quest credit q12094');

-- Quest 10866. Impossible QuestCredit, Requires MUCH more scripting.
UPDATE quest_template SET ReqSpellCast1 = 0 WHERE entry = 10866;
DELETE FROM dbscripts_on_go_template_use WHERE id = 185156;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, comments) VALUES
(185156, 1, 8, 22112, 'quest 10866: at least make completable');

-- Port from ytdb, http://www.wowhead.com/quest=12240
DELETE FROM dbscripts_on_event WHERE id = 17868;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, x, y, z, o, comments) VALUES
(17868, 5, 10, 27238, 600000, 2797.68, -201.873, 139.161, 3.5791, 'Summon Npc for quest 12240');

-- Quest 4740 | WANTED: Murkdeep!
UPDATE creature_template SET MovementType = 0 WHERE entry IN (2202, 2205, 2206, 10323);
-- item UPDATE
DELETE FROM item_required_target WHERE entry IN (22783, 22784);
INSERT INTO item_required_target (entry, type, targetEntry) VALUES
(22784, 1, 16329),
(22783, 1, 16329);

UPDATE quest_template SET ReqSpellCast1 = 0 WHERE entry IN (6129, 6124, 9303);
UPDATE quest_template SET ReqSpellCast1 = 0 WHERE entry IN (9931, 11147);


DELETE FROM spell_script_target WHERE entry = 11757;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(11757, 0, 144050);
-- quest 5581
DELETE FROM dbscripts_on_go_template_use WHERE id = 177398;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, comments) VALUES 
(177398, 1, 10, 11937, 60000, 'Demon Portal - Summon Demon Portal Guardian');

-- quest 10406
DELETE FROM dbscripts_on_quest_start WHERE id = 10406;
INSERT INTO dbscripts_on_quest_start (id, command, datalong, data_flags, comments) VALUES
(10406, 15, 35679, 6, 'Cast Protectorate Demolitionist');
UPDATE quest_template set StartScript = 10406 WHERE entry = 10406;
UPDATE creature_template SET MovementType = 0 WHERE entry = 20802;

-- quest 10223
DELETE FROM spell_script_target WHERE entry = 34526;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(34526, 1, 19723),
(34526, 1, 19724);

DELETE FROM dbscripts_on_spell WHERE id = 34526;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, data_flags, comments) VALUES
(34526, 0, 8, 0, 0, 'quest 10223 kill credit'),
(34526, 0, 15, 34539, 6, 'cast Explosion (spell may not be correct)'),
(34526, 1, 18, 0, 0, 'despawn 10223 trigger despawn');

-- quest 9991
DELETE FROM dbscripts_on_gossip WHERE id = 7715 AND command = 7;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, comments) VALUES
(7715, 105, 7, 9991, 'quest 9991 credit');

-- quest 11008
DELETE FROM spell_script_target WHERE entry = 39844 AND targetEntry = 185549;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(39844, 0, 185549);
DELETE FROM dbscripts_on_spell WHERE id = 39844;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, data_flags, comments) VALUES
(39844, 0, 8, 0, 0, 'quest 11008 kill credit'),
(39844, 1, 18, 0, 0, 'despawn 11008 trigger despawn');

-- quest 11147 (ytdb)
DELETE FROM dbscripts_on_event WHERE id = 15363;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, x, y, z, o, comments) VALUES
(15363,1,10,23741,60000,-2471.05,-3170.48,33.8162,0.462961,''),
(15363,2,10,23741,60000,-2458.02,-3184.27,33.1414,3.33516,''),
(15363,3,10,23741,60000,-2450.9,-3167.18,35.7501,1.62142,''),
(15363,4,10,23741,60000,-2452.22,-3135.79,35.3755,5.06382,''),
(15363,5,10,23741,60000,-2467.96,-3151.07,34.4696,5.80917,''),
(15363,6,8,23727,0,0,0,0,0,'quest 11147 kill credit');

-- quest is not shareable
UPDATE dbscripts_on_event SET datalong2 = 0 WHERE id = 11669 AND command = 8;

-- Quest 10556
DELETE FROM spell_script_target WHERE entry = 36904;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(36904, 0, 300106);

-- quest 11133 (ytdb)
UPDATE gossip_menu_option SET action_script_id = 8851 WHERE menu_id = 8851;
DELETE FROM dbscripts_on_gossip WHERE id = 8851;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, comments) VALUES
(8851,0,0,0,0,4979,10,0,2000005517,0,0,0,'Say text'),
(8851,1,0,2,0,4979,10,0,2000005518,0,0,0,'Say emote'),
(8851,3,0,0,0,4979,10,0,2000005511,2000005512,2000005519,2000005514,'Say text'),
(8851,5,0,0,0,4979,10,0,2000005515,2000005516,2000005513,2000005520,'Say text'),
(8851,0,29,1,2,4979,10,0,0,0,0,0,'change NPC_flag'),
(8851,0,15,42734,0,0,0,6,0,0,0,0,''),
(8851,0,8,4979,0,0,0,0,0,0,0,0,''),
(8851,120,29,1,0,4979,1,0,0,0,0,0,'change NPC_flag');
DELETE FROM db_script_string WHERE entry BETWEEN 2000005511 AND 2000005520;
INSERT INTO db_script_string (entry, content_default) VALUES
(2000005511,'...to create a fund for the purchase of hair gel? I like my hair the way it is, thanks!'),
(2000005512,'...as a deserter, you\'ll enjoy activities like tethered swimming and dog grooming? How ridiculous!'),
(2000005513,'I\'d never join anything like this. Better keep this, though. It\'ll come in handy in the privy...'),
(2000005514,'...the deserters seek a Theramore where citizens will be free to juggle at all hours of the day? What is this nonsense?'),
(2000005515,'That\'s the funniest thing I\'ve read in a long time. You\'ve just made my day!'),
(2000005516,'This... this is a joke, right?'),
(2000005517,'Hey, thanks.'),
(2000005518,'%s reads the leaflet.'),
(2000005519,'...receive 50 percent off deserter undergarments? What is this garbage?'),
(2000005520,'What a bunch of lunatics! You actually believe this stuff?');

-- quest 9948
DELETE FROM db_script_string WHERE entry BETWEEN 2000005521 AND 2000005524;
INSERT INTO db_script_string (entry, content_default) VALUES
(2000005521, 'Thank you, $r! Your service to the Mag\'har will not be forgotten.'),
(2000005522, 'Many Thanks, hero!'),
(2000005523, 'Spirits watch for you, $r.'),
(2000005524, 'Death to the ogres!');
UPDATE quest_template SET ReqSpellCast1 = 0 WHERE entry = 9948;
-- quest 10518 - movement for the summoned ogres
UPDATE creature_template SET MovementType = 2 WHERE entry IN (19991, 19952, 21238, 19956, 21294, 20116);
DELETE FROM creature_movement_template WHERE entry IN (19991, 19952, 21238, 19956, 21294, 20116);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime) VALUES
(19991,1,1731.760, 6327.382, 10.82,0),
(19991,2,1704.577, 6332.419, 23.47,0),
(19991,3,1691.857, 6321.263, 31.08,0),
(19991,4,1700.945, 6308.828, 33.00,0),

(19952,1,1731.760, 6327.382, 10.82,0),
(19952,2,1704.577, 6332.419, 23.47,0),
(19952,3,1691.857, 6321.263, 31.08,0),
(19952,4,1700.945, 6308.828, 33.00,0),

(21238,1,1731.760, 6327.382, 10.82,0),
(21238,2,1704.577, 6332.419, 23.47,0),
(21238,3,1691.857, 6321.263, 31.08,0),
(21238,4,1700.945, 6308.828, 33.00,0),

(19956,1,1731.760, 6327.382, 10.82,0),
(19956,2,1704.577, 6332.419, 23.47,0),
(19956,3,1691.857, 6321.263, 31.08,0),
(19956,4,1700.945, 6308.828, 33.00,0),

(21294,1,1731.760, 6327.382, 10.82,0),
(21294,2,1704.577, 6332.419, 23.47,0),
(21294,3,1691.857, 6321.263, 31.08,0),
(21294,4,1700.945, 6308.828, 33.00,0),

(20116,1,1731.760, 6327.382, 10.82,0),
(20116,2,1704.577, 6332.419, 23.47,0),
(20116,3,1691.857, 6321.263, 31.08,0),
(20116,4,1700.945, 6308.828, 33.00,0);

-- quest 6651
UPDATE quest_template SET ReqSpellCast1 = 0 WHERE entry = 6661;
DELETE FROM spell_script_target WHERE entry = 21052;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(21052, 1, 13017);
UPDATE quest_template SET CompleteScript = 6661 WHERE entry =6661;
DELETE FROM dbscripts_on_quest_end WHERE id = 6661;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, comments) VALUES 
(6661,1,15, 21052, 'Cast Monty Bashes Rats (DND)');
DELETE FROM dbscripts_on_spell WHERE id = 21052;
INSERT INTO dbscripts_on_spell (id, command, datalong, data_flags, comments) VALUES
(21052, 15, 8329, 6, 'Enthralled Deeprun Rat - Cast Suicide');

-- quest 10458
DELETE FROM creature_template_addon WHERE entry = 21109;
INSERT INTO creature_template_addon (entry, auras) VALUES (21109, '36169');
DELETE FROM spell_script_target WHERE entry = 36035;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(36035, 1, 21071, 0);
UPDATE creature_template SET MovementType = 0 WHERE entry IN (21073, 21097, 21109, 21116);

-- quest 10309
UPDATE creature_template SET factionAlliance = 14, factionHorde = 14 WHERE entry = 20287;
DELETE FROM dbscripts_on_event WHERE id = 13052;
INSERT INTO dbscripts_on_event (id, delay, command, buddy_entry, search_radius, data_flags, comments) VALUES
(13052, 0, 20, 20243, 20, 3, 'Scrapped Fel Reaver attack');
-- Harlan Needs a Resupply (forum - thx Axel, that he found this bug)
UPDATE creature_movement_template SET orientation = 2.66 WHERE entry = 1433 AND POINT = 15;

-- The Summoning Chamber (q.10602) -H  (q.10585) -A
DELETE FROM dbscripts_on_event WHERE id = 13980;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES
(13980,1,10,21735,300000,0,0,0,0,0,0,0,-3368.91,2145.37,-8.39026,4.4855,'summon - Infernal Oversoul'),
(13980,1,15,7,0,21207,100,7,0,0,0,0,0,0,0,0,'cast death - 1st target'),
(13980,2,15,7,0,21210,100,7,0,0,0,0,0,0,0,0,'cast death - 2nd target'),
(13980,3,15,7,0,21210,100,7,0,0,0,0,0,0,0,0,'cast death - 3rd target'),
(13980,4,15,7,0,21210,100,7,0,0,0,0,0,0,0,0,'cast death - 4th target'),
(13980,5,15,7,0,21210,100,7,0,0,0,0,0,0,0,0,'cast death - 5th target'),
(13980,6,15,7,0,21210,100,7,0,0,0,0,0,0,0,0,'cast death - 6th target');
-- Infernal Oversoul shouldnt be friendly - must be killed in q.
UPDATE creature_template SET factionalliance = 90, factionhorde = 90 WHERE entry = 21735;
-- spell should have target
DELETE FROM spell_script_target WHERE entry = 37285;
INSERT INTO spell_script_target (entry,TYPE,targetEntry) VALUES
(37285, 1, 21211);
-- The Fel and the Furious (q.10612) -A (q.10613) -H
DELETE FROM dbscripts_on_quest_start WHERE id IN (10612, 10613);
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES
(10612,1,0,0,0,0,0,0,2000005459,0,0,0,0,0,0,0,''),
(10612,3,1,25,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10613,1,0,0,0,0,0,0,2000005459,0,0,0,0,0,0,0,''),
(10613,3,1,25,0,0,0,0,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 10612 WHERE entry = 10612; -- Alliance
UPDATE quest_template SET StartScript = 10613 WHERE entry = 10613; -- Horde
DELETE FROM db_script_string WHERE entry = 2000005459;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES 
(2000005459,'I\'ve rigged a few control consoles down the slope. Get one quickly and take control of the fel reaver! You\'ll only have a limited amount of time.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
-- fix for fel reaver possession (fixed for both sides -A and -H)
-- spell must have target for possession -A -H 
DELETE FROM spell_script_target WHERE entry IN (38003, 38121, 38123, 38126, 38128,38130);
INSERT INTO spell_script_target (entry, TYPE, targetEntry) VALUES 
(38003, 1, 21949),(38121, 1, 21949),(38123, 1, 21949),(38126, 1, 21949),(38128, 1, 21949),(38130, 1, 21949);
-- link between console and Fel Reaver -A -H 
DELETE FROM dbscripts_on_spell WHERE id IN (38002, 38120, 38122, 38125, 38127, 38129);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES
(38002,0,15,38003,0,0,0,0,0,0,0,0,0,0,0,0,''),
(38120,0,15,38121,0,0,0,0,0,0,0,0,0,0,0,0,''),
(38122,0,15,38123,0,0,0,0,0,0,0,0,0,0,0,0,''),
(38125,0,15,38126,0,0,0,0,0,0,0,0,0,0,0,0,''),
(38127,0,15,38128,0,0,0,0,0,0,0,0,0,0,0,0,''),
(38129,0,15,38130,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- 38055 casted by us should trigger 38054(with target script 184979)
DELETE FROM dbscripts_on_spell WHERE id = 38055;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES
(38055,0,15,38054,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM spell_script_target WHERE entry = 38054;
INSERT INTO spell_script_target (entry, TYPE, targetEntry) VALUES 
(38054, 0, 184979);
-- activated gobject should force our possessed npc to cast kill credit on himself
DELETE FROM dbscripts_on_go_template_use WHERE id = 184979;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES
(184979,0,31,21949,20,0,0,0,0,0,0,0,0,0,0,0,''), -- prevent from any error logs if player use object
(184979,1,15,38022,0,21949,20,15,0,0,0,0,0,0,0,0,'');
-- Fel Reaver Sentinel - updates
UPDATE creature_template SET factionalliance = 14, factionhorde = 14, unitflags = 256, speedwalk = 2.1, speedrun = 1.7 WHERE entry = 21949;
-- Pusillin (Dire Maul) - scripted
UPDATE creature SET MovementType = 2,spawndist = 0 WHERE guid = 125700;
DELETE FROM creature_movement WHERE id = 125700;
UPDATE creature_template SET MovementType = 2, speedrun = 1.3, factionalliance = 35, factionhorde = 35 WHERE entry = 14354; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 14354;
INSERT INTO creature_movement_template (entry, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
-- WPs
(14354,1,87.6813,-198.631,-4.13498,1000,1435401,0,0,0,0,0,0,0,5.82043,0,0), -- paused untill gossip will be activated
(14354,2,-161.902,-199.74,-4.15296,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,3,-150.171,-278.348,-4.14787,1000,1435402,0,0,0,0,0,0,0,0,0,0), -- 'Pusillin first stop'
(14354,4,-153.059,-302.431,-4.14555,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,5,-139.489,-315.995,-4.08367,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,6,-153.976,-350.542,-4.15124,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,7,-78.3584,-348.637,-4.06238,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,8,-22.424,-353.666,-4.10318,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,9,82.9147,-348.141,-4.0564,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,10,110.87,-358.995,-4.14949,1000,1435402,0,0,0,0,0,0,0,0,0,0), -- 'Pusillin second stop'
(14354,11,111.679,-468.421,-2.71884,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,12,111.693,-485.157,-6.84356,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,13,111.718,-515.394,-6.91479,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,14,111.73,-529.729,-10.8699,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,15,106.518,-539.857,-11.0802,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,16,92.8557,-545.29,-11.0808,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,17,79.3301,-544.812,-15.0739,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,18,67.4017,-548.451,-15.2879,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,19,55.4995,-557.068,-19.2782,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,20,50.3342,-566.387,-19.4475,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,21,50.0126,-585.944,-23.5729,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,22,51.0541,-633.703,-25.1224,1000,1435402,0,0,0,0,0,0,0,0,0,0), -- 'Pusillin third stop'
(14354,23,30.5916,-688.038,-25.1611,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,24,3.28358,-700.483,-25.1611,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,25,2.90135,-668.58,-12.6426,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,26,16.8739,-671.39,-12.6426,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,27,16.4463,-703.771,-12.6426,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,28,8.53742,-704.414,-12.6426,1000,1435402,0,0,0,0,0,0,0,0,0,0); -- 'Pusillin fourth stop'
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1435401, 1435402); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES
(1435401,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'PAUSE ON'),
(1435401,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1435402,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'PAUSE ON'),
(1435402,0,29,3,0x01,0,0,0,0,0,0,0,0,0,0,0,'npc_flag added');
-- gossip
DELETE FROM gossip_menu WHERE entry = 5709; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(5709, 6877, 0, 719),
(5709, 6878, 0, 720),
(5709, 6879, 0, 721),
(5709, 6880, 0, 722),
(5709, 6881, 0, 723);
DELETE FROM gossip_menu_option WHERE menu_id = 5709; 
INSERT INTO gossip_menu_option (menu_id, id, option_text, option_id, npc_option_npcflag, action_menu_id, action_script_id, condition_id) VALUES
(5709, 0, 'Game? Are you crazy?', 1, 1, -1, 570901, 719),
(5709, 1, 'Why you little...', 1, 1, -1, 570902, 720),
(5709, 2, 'Mark my words, I will catch you, imp. And when I do!', 1, 1, -1, 570903, 721),
(5709, 3, 'DIE!', 1, 1, -1, 570904, 722),
(5709, 4, 'Prepare to meet your maker.', 1, 1, -1, 570905, 723);
DELETE FROM conditions WHERE condition_entry IN (719, 720, 721, 722, 723); 
INSERT INTO conditions (condition_entry, TYPE, value1, value2) VALUES
(719, 33, 1, 0), -- wp0 
(720, 33, 3, 0), -- on wp 3
(721, 33, 10, 0), -- on wp 12
(722, 33, 22, 0), -- on wp 22
(723, 33, 28, 0); -- on wp 28
DELETE FROM dbscripts_on_gossip WHERE id IN (570901, 570902, 570903, 570904, 570905); 
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES 
(570901,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,'UNPAUSE'),
(570901,0,29,3,0x02,0,0,0,0,0,0,0,0,0,0,0,'npc_flag removed'),
(570901,1,0,0,0,0,0,0,2000005460,0,0,0,0,0,0,0,''),
(570902,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,'UNPAUSE'),
(570902,0,29,3,0x02,0,0,0,0,0,0,0,0,0,0,0,'npc_flag removed'),
(570902,1,0,0,0,0,0,0,2000005461,0,0,0,0,0,0,0,''),
(570903,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,'UNPAUSE'),
(570903,0,29,3,0x02,0,0,0,0,0,0,0,0,0,0,0,'npc_flag removed'),
(570903,1,0,0,0,0,0,0,2000005462,0,0,0,0,0,0,0,''),
(570904,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,'UNPAUSE'),
(570904,0,29,3,0x02,0,0,0,0,0,0,0,0,0,0,0,'npc_flag removed'),
(570904,1,0,0,0,0,0,0,2000005463,0,0,0,0,0,0,0,''),
(570905,0,29,3,0x02,0,0,0,0,0,0,0,0,0,0,0,'npc_flag removed'),
(570905,1,0,0,0,0,0,0,2000005464,0,0,0,0,0,0,0,''),
(570905,3,10,13276,120000,0,0,0,0,0,0,0,14.7965,-696.322,-12.6426,4.4823,'summon - Wildspawn Imp'),
(570905,3,10,13276,120000,0,0,0,0,0,0,0,18.8891,-697.389,-12.6426,4.35271,'summon - Wildspawn Imp'),
(570905,3,10,13276,120000,0,0,0,0,0,0,0,21.4274,-700.227,-12.6426,4.06997,'summon - Wildspawn Imp'),
(570905,3,10,13276,120000,0,0,0,0,0,0,0,22.2017,-705.459,-12.6426,3.48092,'summon - Wildspawn Imp'),
(570905,4,15,22735,0,0,0,0,0,0,0,0,0,0,0,0,'TRANSFORM'),
(570905,4,22,90,0x01,0,0,0,0,0,0,0,0,0,0,0,'set DemonFaction');
DELETE FROM db_script_string WHERE entry BETWEEN 2000005460 AND 2000005464;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(2000005460,'If you want the key, you\'ll have to catch me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005461,'Chase me if you dare! I run without a care!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005462,'Why would you ever want to harm me!? Come. Friends we can be!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005463,'DIE?! You make Pusillin cry!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005464,'Say hello to my little friends!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- Dissension Amongst the Ranks... (q.10769) -H  (q.10776) -A
DELETE FROM dbscripts_on_spell WHERE id = 38223; 
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES 
(38223,0,8,22051,1,0,0,0,0,0,0,0,0,0,0,0,'Quest Credit: Crazed Colossus');

-- Teron Gorefiend, I am...(q.10639) -H  (q.10645) -A
DELETE FROM dbscripts_on_quest_start WHERE id = 10639;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES
(10639,0,0,0,0,0,0,0,2000000031,0,0,0,0,0,0,0,''),
(10639,3,23,21867,0,21797,50,5,0,0,0,0,0,0,0,0,''),
(10639,5,10,21877,300000,0,0,0,0,0,0,0,-4536.58,1028.76,8.8266,3.72963,'summon - Karsius the Ancient Watcher'),
(10639,8,0,4,0,21872,40,0,2000005473,0,0,0,0,0,0,0,''),
(10639,9,22,90,0x01,21877,50,7,0,0,0,0,0,0,0,0,'temp faction');
UPDATE quest_template SET StartScript = 10639 WHERE entry = 10645; -- Alliance
UPDATE quest_template SET StartScript = 10639 WHERE entry = 10613; -- Horde
UPDATE dbscripts_on_event SET datalong2 = 300000 WHERE id = 14092; -- aura works 5min. so event should do the same
DELETE FROM db_script_string WHERE entry = 2000005473;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(2000005473,'Waste no time, fool! Use our power to kill those what stand in our way! Destroy Krasius before you are subdued!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
-- Hellfire Fire -- objects respawned only in q.10895
UPDATE gameobject SET spawntimesecs =-90 WHERE guid IN (24683, 24684, 24685, 24686, 32137, 32138, 32139, 32141, 32142, 32143);
