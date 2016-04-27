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

-- Quest 9545 - Requires some additional core fix for spell 30489  (summoning does not work)
-- Also requires some proper scripting, but the proper scripting is to be done with this event_script if possible
DELETE FROM dbscripts_on_event WHERE id = 10745 AND command = 7;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, comments) VALUES
(10745, 1, 7,9545, 'hack? - add quest completed');

-- Nexus 70, Telestra'shere, should be GO_FLAG_NO_INTERACT
UPDATE gameobject_template SET flags = flags | 16 WHERE entry = 188526;

-- Port from ytdb, http://www.wowhead.com/quest=12240
DELETE FROM dbscripts_on_event WHERE id = 17868;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, x, y, z, o, comments) VALUES
(17868, 5, 10, 27238, 600000, 2797.68, -201.873, 139.161, 3.5791, 'Summon Npc for quest 12240');

-- remove gender requirement from a quest-spell (quest 12498)
UPDATE spell_area SET gender = 2 WHERE spell = 50426;
-- Cooking quest 13571 - Fletcher's Lost and Found
DELETE FROM creature_questrelation WHERE quest = 13571;
INSERT INTO creature_questrelation (id, quest) VALUES
(32516, 13571);
DELETE FROM creature_involvedrelation WHERE quest = 13571;
INSERT INTO creature_involvedrelation (id, quest) VALUES
(32516, 13571);

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
