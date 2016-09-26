-- Updatepack_408
-- -----------------
select * from quest_template where entry in (1193);
select * from quest_template where offerrewardtext like '%You\'ve found even more beached creatures, $N?  Sea turtles were commonly found frolicking along the base of Nordrassil before it was destroyed.  With the birth of Teldrassil, however, these creatures have been seen in ever decreasing numbers.  Some, as we have discovered, end their lives here for some unknown reason.$B$BYour aid will perhaps unlock the mystery before us.  Please accept this in exchange for the remains you have provided for our study.%';
select * from creature_template where entry IN (7228);
select * from creature_template where name like '%tamed ravager%';
select * from creature where id=9099 order by guid asc;
select * from creature where guid in (54080);
select * from creature_movement where id=33988;
select * from creature_movement where script_id=1785503;
select * from creature_linking where guid=78754;
select * from creature_movement_template where entry=23616;
select * from dbscripts_on_creature_movement where id in (2241001,2241002);
select * from dbscripts_on_quest_end where id=411;
select * from db_script_string where content_default like '%you served me well,%';
select * from gossip_menu_option where option_text like '%ady! Let\'s finis%';
select * from dbscripts_on_gossip where id=8851;
select * from db_script_string where entry='2000000349';
select * from creature_equip_template where entry=5531;
select * from creature_equip_template where equipentry1=13222;
select * from creature_equip_template_raw where entry=1455;
select * from dbscripts_on_go_template_use where id in (184289,184290,184414,184415);
select * from gameobject where guid in (121926);
select * from gameobject where id = 179512;
select * from gameobject_template where entry IN (97700, 104600);
select * from gameobject_questrelation where id=175233;

-- UDB_059
-- Headless Horseman 
UPDATE creature_template SET EquipmentTemplateId = 2494 WHERE entry = 23682;
-- UDB_115
-- Ironaya
UPDATE creature_template SET EquipmentTemplateId = 17 WHERE entry = 7228;

-- Classic [0867]
-- Improved Stitches script used at end of quest 252 (Translation to Ello) to make it closer
-- to what it was on retail:
-- Stitches is now neutral at spawn and will no longer kill Abercombrie
-- Stitches turns hostile when reaching the road
-- Stitches now attacks the Night Watch guards on its way to Darkshire
-- Town Crier (creature 468) now has several yells to inform players of Stitches progress toward Darkshire
-- Prevented Stitches to spawn twice
-- Source: http://www.wowwiki.com/Quest:Translation_to_Ello
-- http://www.wowwiki.com/Stitches
-- http://www.youtube.com/watch?v=rS0rjcQ6YMc
SET @NIGHTWATCH := 888;
SET @NIGHTWATCH2 := 499;
SET @TOWNCRIER := 468;
SET @CRIER_GUID := (SELECT guid FROM creature WHERE id = @TOWNCRIER);
SET @SEARCH_RANGE := 100000;
UPDATE creature_template SET FactionAlliance = 7, FactionHorde = 7,  ExtraFlags = ExtraFlags | 0x1000 WHERE Entry = 412;
UPDATE creature_template SET ExtraFlags = ExtraFlags | 0x1000 WHERE Entry = 468; -- Makes Town Crier an active object
UPDATE dbscripts_on_quest_end SET delay = 1 WHERE id = 252;
DELETE FROM dbscripts_on_quest_end WHERE id = 252 AND delay = 0;
INSERT INTO dbscripts_on_quest_end VALUES
(252, 0, 34, 980, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'stop if stitches already spawned');
DELETE FROM conditions WHERE condition_entry = 980;
INSERT INTO conditions VALUES
(980, 37, 412, @SEARCH_RANGE);
DELETE FROM dbscripts_on_creature_movement WHERE id = 41204 AND command = 22;
INSERT INTO dbscripts_on_creature_movement VALUES
(41204, 0, 22, 93, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'stitches faction hostile');
UPDATE creature_movement_template SET script_id = 41204 WHERE entry = 412 AND point = 35;
DELETE FROM dbscripts_on_creature_movement WHERE id = 41205;
INSERT INTO dbscripts_on_creature_movement VALUES
(41205, 0, 0, 6, 0, @TOWNCRIER, @CRIER_GUID, 0x10, 2000000458, 0, 0, 0, 0, 0, 0, 0, 'stitches - town crier 1st yell');
UPDATE creature_movement_template SET script_id = 41205 WHERE entry = 412 AND point = 47;
DELETE FROM dbscripts_on_creature_movement WHERE id = 41206;
INSERT INTO dbscripts_on_creature_movement VALUES
(41206, 0, 26, 0, 0, @NIGHTWATCH, 50, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'stitches attacks night watch'),
(41206, 1, 26, 0, 0, @NIGHTWATCH2, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2nd night watch attacks stitches');
UPDATE creature_movement_template SET script_id = 41206, waittime = 0 WHERE entry = 412 AND point = 49;
DELETE FROM dbscripts_on_creature_movement WHERE id = 41202 AND delay = 4;
INSERT INTO dbscripts_on_creature_movement VALUES
(41202, 4, 0, 6, 0, @TOWNCRIER, @CRIER_GUID, 0x10, 2000000459, 0, 0, 0, 0, 0, 0, 0, 'stitches - town crier 2nd yell');
UPDATE creature_movement_template SET script_id = 0 WHERE entry = 412 AND point = 69;
UPDATE creature_movement_template SET script_id = 41202 WHERE entry = 412 AND point = 50;
DELETE FROM dbscripts_on_creature_death WHERE id = 412;
INSERT INTO dbscripts_on_creature_death VALUES
(412, 5, 0, 6, 0, @TOWNCRIER, @CRIER_GUID, 0x10, 2000000460, 0, 0, 0, 0, 0, 0, 0, 'stitches - town crier 3rd yell');
DELETE FROM db_script_string WHERE entry IN (2000000458, 2000000459, 2000000460);
INSERT INTO db_script_string VALUES
(2000000458, 'An abomination of the undead is approaching!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 7, 0, NULL),
(2000000459, 'The abomination has overrun the Night Watch camp! Quickly, we must intercept it before it reaches town!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 7, 0, NULL),
(2000000460, 'The beast is slain! All is well in Darkshire.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 7, 0, NULL);
UPDATE db_script_string SET type = 6 WHERE entry IN (2000000161, 2000000162);
-- Classic [0866]
-- Fixed quest 2882 (Cuergo's Gold) by adding script on GO use
-- for GO 142189 (Inconspicuous Landmark)
DELETE FROM dbscripts_on_go_template_use WHERE id = 142189;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES  
(142189, 0, 15, 11462, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- summons NPC trigger 7898
(142189, 3, 15, 11487, 0, 7898, 50, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(142189, 4, 15, 11485, 0, 7898, 50, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(142189, 9, 15, 11463, 0, 7898, 50, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(142189, 10, 15, 11463, 0, 7898, 50, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(142189, 11, 15, 11487, 0, 7898, 50, 2, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE creature_template SET MovementType = 1 WHERE Entry IN (7899, 7902, 7901);
-- Classic [0854]
-- Diremaul - Wandering Eyes of Kilrogg -- should remember their name, no one ever called them Idling Eyes of Kilrogg.
SET @EYEOFKILROGG := 14386;
DELETE FROM creature WHERE id = @EYEOFKILROGG;
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(128634, @EYEOFKILROGG, 429, 0, 0, 560.9175, 545.4094, -25.31721, 1.005476, 900, 0, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry=@EYEOFKILROGG), (SELECT MaxLevelMana FROM creature_template WHERE Entry=@EYEOFKILROGG), 0, 2),
(128635, @EYEOFKILROGG, 429, 0, 0, 446.8329, 542.6426, -21.81278, 3.261362, 900, 0, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry=@EYEOFKILROGG), (SELECT MaxLevelMana FROM creature_template WHERE Entry=@EYEOFKILROGG), 0, 2);
SET @POINT := 0;
DELETE FROM creature_movement WHERE id = 128634;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(128634, (@POINT := @POINT + 1), 577.1039, 570.9245, -25.40290, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 572.0755, 582.9881, -25.40273, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 544.6523, 593.1812, -25.40273, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 500.8310, 579.0237, -25.40101, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 484.0373, 575.8411, -25.40182, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 476.5366, 584.7387, -25.40356, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 494.3848, 591.6921, -20.39891, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 534.3132, 590.4163, -4.754774, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 550.6912, 591.4011, -4.754772, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 568.8508, 584.2122, -4.754771, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 581.8668, 574.6851, -4.755718, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 587.1575, 556.0428, -1.718680, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 587.0223, 535.8848, 6.7701660, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 568.9283, 535.3513, 13.090810, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 545.4929, 534.3782, 25.665700, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 568.9283, 535.3513, 13.090810, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 587.0223, 535.8848, 6.7701660, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 587.1575, 556.0428, -1.718680, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 581.8668, 574.6851, -4.755718, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 568.8508, 584.2122, -4.754771, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 550.6912, 591.4011, -4.754772, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 534.3132, 590.4163, -4.754774, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 494.3848, 591.6921, -20.39891, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 481.7606, 590.6141, -25.40754, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 484.0373, 575.8411, -25.40182, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 500.8310, 579.0237, -25.40101, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 544.6523, 593.1812, -25.40273, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 572.0755, 582.9881, -25.40273, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 577.1039, 570.9245, -25.40290, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 563.5419, 547.6833, -25.39905, 0, 0, 0, 0, 0);
SET @POINT := 0;
DELETE FROM creature_movement WHERE id = 128635;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(128635, (@POINT := @POINT + 1), 428.5866, 550.3541, -18.33062, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 413.2478, 549.2036, -18.33061, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 410.8050, 537.9805, -18.00485, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 399.8401, 525.5711, -12.77508, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 389.6866, 500.6979, -12.01533, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 385.3872, 475.1862, -7.219529, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 395.8070, 468.8721, -7.219531, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 396.1824, 455.4167, -7.219535, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 388.5278, 448.8068, -7.219536, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 384.2072, 434.8414, -5.553133, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 384.5225, 423.3623, -3.128052, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 385.2957, 413.9088, -1.672135, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 384.2072, 434.8414, -5.553133, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 388.5278, 448.8068, -7.219536, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 396.1824, 455.4167, -7.219535, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 395.8070, 468.8721, -7.219531, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 385.3872, 475.1862, -7.219529, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 389.6866, 500.6979, -12.01533, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 399.6569, 525.3637, -12.77500, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 410.8050, 537.9805, -18.00485, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 413.2478, 549.2036, -18.33061, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 428.5866, 550.3541, -18.33062, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 445.9710, 542.5389, -21.56523, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 494.6815, 542.8771, -25.38725, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 445.9710, 542.5389, -21.56523, 0, 0, 0, 0, 0);
-- Classic [0853]
-- should only be usable if you are on certain quests
-- was incorrectly positioned
UPDATE gameobject SET position_x = 129.4811, position_y = 544.9671, position_z = -48.46632, orientation = 0, rotation2 = 0.7253742, rotation3 = 0.6883547, spawntimesecs = 0, animprogress = 100 WHERE id = 179517;
UPDATE gameobject_template SET flags = 4 WHERE entry = 179517;
-- Classic [0852]
-- Diremaul - Doors and Keys
-- Both, the Gordok Courtyard Key and the Gordok Inner Door Key are now bound to Diremaul and will be destroyed if their holders make it out of the dungeon alive.
-- The Gordok Inner Door will now require the use of the Gordok Inner Door Key in order to be opened.
-- Lots of doors in the western and northern wing of Diremaul had their size and opening animation fixed.
UPDATE gameobject SET position_x = 491.2043, position_y = 515.1331, position_z = 29.467530, orientation = 0, rotation2 = 0.70710660, rotation3 = 0.7071069, spawntimesecs = 0, animprogress = 100 WHERE id = 177217;
UPDATE gameobject SET position_x = 385.3268, position_y = 374.2315, position_z = -1.343140, orientation = 0, rotation2 = 0.70710660, rotation3 = 0.7071069, spawntimesecs = 0, animprogress = 100 WHERE id = 177219;
UPDATE gameobject SET position_x = 351.5679, position_y = 88.67347, position_z = -36.39297, orientation = 0, rotation2 = 0.70710660, rotation3 = 0.7071069, spawntimesecs = 0, animprogress = 100 WHERE id = 179549;
UPDATE gameobject SET position_x = 83.25511, position_y = 630.5456, position_z = -24.63151, orientation = 0, rotation2 = -0.3131638, rotation3 = 0.9496992, spawntimesecs = 0, animprogress = 100 WHERE id = 179550;
UPDATE gameobject SET position_x = 50.58631, position_y = 501.9406, position_z = -23.14985, orientation = 0, rotation2 = -0.7071066, rotation3 = 0.7071069, spawntimesecs = 0, animprogress = 100 WHERE id = 177221;
UPDATE gameobject_template SET flags = 34, size = 1.482917 WHERE entry = 177217;
UPDATE gameobject_template SET flags = 34 WHERE entry = 177219;
UPDATE gameobject_template SET faction = 0 WHERE entry = 179549;
UPDATE gameobject_template SET size = 1.02 WHERE entry = 179550;
UPDATE gameobject_template SET size = 0.465763 WHERE entry = 177221;
UPDATE item_template SET area = 2557, Map = 429 WHERE entry = 18268;
UPDATE item_template SET area = 2557, Map = 429 WHERE entry = 18266;
-- Classic [0850]
-- DM:N - Misc 
-- Cho'Rush the Observer was moved and will now assist the Ogre King.
UPDATE creature SET position_x = 833.9951, position_y = 489.5435, position_z = 37.40153, orientation = 3.211406, MovementType = 0 WHERE id = 14324;
-- Guard Fengus will now move constantly around.
SET @FENGUS := 14321; -- Guard Fengus
SET @GUID := (SELECT guid FROM creature WHERE id = @FENGUS);
SET @POINT := 0;
UPDATE creature SET position_x = 356.795, position_y = 258.3065, position_z = 11.65384, orientation = 3.142583, MovementType = 2 WHERE id = @FENGUS;
DELETE FROM creature_movement WHERE id = @GUID;
DELETE FROM creature_movement_template WHERE entry = @FENGUS;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(@FENGUS, (@POINT := @POINT + 1), 316.5439, 258.2672, 11.22405, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 287.7441, 260.7287, 2.869437, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 290.6053, 280.1005, 2.848812, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 289.7671, 310.0473, 2.853041, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 300.0063, 328.7043, 2.852961, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 294.1508, 290.1005, 2.849759, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 288.6681, 260.1472, 2.870163, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 318.0658, 258.1307, 11.22347, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 352.2249, 259.8816, 11.20577, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 379.2898, 259.8564, 11.43955, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 383.1255, 280.3708, 12.23591, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 384.3981, 315.2444, 11.21198, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 385.5048, 342.4915, 2.862235, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 350.4333, 341.1977, 2.853369, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 313.9085, 338.8922, 2.852938, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 356.0100, 342.2071, 2.853216, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 388.9794, 340.4667, 2.864845, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 423.3712, 340.0448, 2.853797, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 454.4482, 336.7815, 2.855228, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 417.1513, 339.7217, 2.853512, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 390.7901, 340.0213, 2.865798, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 386.5863, 316.9394, 10.87668, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 385.8260, 281.0563, 12.23588, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 385.6659, 260.2018, 11.43955, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 407.4470, 256.0239, 12.23423, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 444.0919, 255.3879, 11.20982, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 407.4797, 258.5080, 12.23421, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 384.6136, 256.4120, 11.43955, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 358.8656, 258.3085, 12.23409, 0, 0, 0, 0, 0);
-- The Tribute and Fengus's Chest were moved.
UPDATE gameobject SET position_x = 808.3697, position_y = 482.1281, position_z = 37.31820, orientation = 0, rotation2 = -0.9996567, rotation3 = 0.02620165 WHERE guid = 35834;
UPDATE gameobject SET position_x = 380.6145, position_y = 260.0570, position_z = 11.43955, orientation = 0, rotation2 = -0.4848089, rotation3 = 0.87462010 WHERE guid = 35832;
-- Classic [0849]
-- DM:N - Guard Slip'Kik is now constatly moving through the Halls of Destruction and no longer easy to skip on your Tribute Run.
SET @SLIPKIK := 14323; -- Guard SlipKik
SET @GUID := (SELECT guid FROM creature WHERE id = @SLIPKIK);
SET @POINT := 0;
UPDATE creature SET position_x = 550.3804, position_y = 533.7247, position_z = -25.31852, orientation = 3.926991, MovementType = 2 WHERE id = @SLIPKIK;
DELETE FROM creature_movement WHERE id = @GUID;
DELETE FROM creature_movement_template WHERE entry = @SLIPKIK;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(@SLIPKIK, (@POINT := @POINT + 1), 558.6339, 549.9158, -25.39908, 0, 0, 0, 0, 0),
(@SLIPKIK, (@POINT := @POINT + 1), 573.5057, 563.2197, -25.40176, 0, 0, 0, 0, 0),
(@SLIPKIK, (@POINT := @POINT + 1), 573.2263, 586.4570, -25.40273, 0, 0, 0, 0, 0),
(@SLIPKIK, (@POINT := @POINT + 1), 524.0547, 587.0665, -25.40254, 0, 0, 0, 0, 0),
(@SLIPKIK, (@POINT := @POINT + 1), 510.3508, 606.5667, -25.40364, 0, 0, 0, 0, 0),
(@SLIPKIK, (@POINT := @POINT + 1), 486.8481, 606.4826, -25.40477, 0, 0, 0, 0, 0),
(@SLIPKIK, (@POINT := @POINT + 1), 478.1636, 594.9525, -25.40531, 0, 0, 0, 0, 0),
(@SLIPKIK, (@POINT := @POINT + 1), 477.4341, 579.6123, -25.40210, 0, 0, 0, 0, 0),
(@SLIPKIK, (@POINT := @POINT + 1), 504.7797, 574.7651, -25.40086, 0, 0, 0, 0, 0),
(@SLIPKIK, (@POINT := @POINT + 1), 477.4341, 579.6123, -25.40210, 0, 0, 0, 0, 0),
(@SLIPKIK, (@POINT := @POINT + 1), 478.1636, 594.9525, -25.40531, 0, 0, 0, 0, 0),
(@SLIPKIK, (@POINT := @POINT + 1), 486.8481, 606.4826, -25.40477, 0, 0, 0, 0, 0),
(@SLIPKIK, (@POINT := @POINT + 1), 510.3508, 606.5667, -25.40364, 0, 0, 0, 0, 0),
(@SLIPKIK, (@POINT := @POINT + 1), 524.0547, 587.0665, -25.40254, 0, 0, 0, 0, 0),
(@SLIPKIK, (@POINT := @POINT + 1), 573.2263, 586.4570, -25.40273, 0, 0, 0, 0, 0),
(@SLIPKIK, (@POINT := @POINT + 1), 573.5057, 563.2197, -25.40176, 0, 0, 0, 0, 0),
(@SLIPKIK, (@POINT := @POINT + 1), 558.6339, 549.9158, -25.39908, 0, 0, 0, 0, 0),
(@SLIPKIK, (@POINT := @POINT + 1), 550.9423, 528.1198, -25.40169, 0, 0, 0, 0, 0);
-- Classic [0848]
-- STV - Item: Encrusted Tail Fin * should only drop from Murlcos located in the Vile Reef.
-- ( Patch 1.2.0 (18-Dec-2004): Murkgill Murlocs in Stranglethorn no longer drop Encrusted Tail Fin.)
DELETE FROM creature_loot_template WHERE item = 5796 AND entry IN (4457, 4458, 4459, 4460, 4461);
-- Classic [0846]
-- Hearthsinger Forresten - Stratholme
DELETE FROM creature WHERE id = 10558;
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(128630, 10558, 329, 0, 0, 3595.755, -3509.928, 137.5008, 5.742133, 604800, 0, 0, 6960, 0, 0, 0),
(128631, 10558, 329, 0, 0, 3680.273, -3512.372, 136.1522, 2.042035, 604800, 0, 0, 6960, 0, 0, 0),
(128632, 10558, 329, 0, 0, 3692.933, -3363.162, 130.7527, 3.246312, 604800, 0, 0, 6960, 0, 0, 0),
(128633, 10558, 329, 0, 0, 3683.747, -3334.066, 125.3195, 3.141593, 604800, 0, 0, 6960, 0, 0, 0);
DELETE FROM pool_template WHERE entry = 25480;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25480, 1, 'Stratholme - Hearthsinger Forresten');
DELETE FROM pool_creature WHERE pool_entry = 25480;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(128630, 25480, 25, 'Stratholme - Hearthsinger Forresten'),
(128631, 25480, 25, 'Stratholme - Hearthsinger Forresten'),
(128632, 25480, 25, 'Stratholme - Hearthsinger Forresten'),
(128633, 25480, 25, 'Stratholme - Hearthsinger Forresten');
-- Classic [0838]
-- Fixed drop chance of item 5339 (Serpent Bloom) in Wailing Caverns
-- Though a quest objective, it is lootable by everyone and should have a 100% drop chance
-- Also removed wrong loot content in GO 13891 (Serpent Bloom)
-- Thanks TheTrueAnimal for reporting, Sinoxan for researching.
UPDATE gameobject_loot_template SET ChanceOrQuestChance = 100 WHERE item = 5339;
DELETE FROM gameobject_loot_template WHERE entry = 2772 AND item <> 5339;
-- Classic [0837]
-- Fixed respawntime of GO 177287 (Unfinished Painting) 
-- Thanks TheTrueAnimal for reporting. This closes #676  
 -- Source: https://www.youtube.com/watch?v=2Dm3YwxxJUo 
 UPDATE gameobject SET spawntimesecs = 0 WHERE id = 177287; 
-- Classic [0836]
-- Fixed graveyard for Alliance in Ratchet. Thanks Metalica for pointing.
DELETE FROM game_graveyard_zone WHERE id = 249 AND ghost_zone = 215;
UPDATE game_graveyard_zone SET faction = 0 WHERE id = 249 AND ghost_zone = 17;
-- Alliance players dying in Mulgore and Thunder Bluff are now ported to Bloodhoof Village graveyard
-- as they should instead of Ratchet
-- Source: http://www.wowwiki.com/Mulgore#Patch_changes
UPDATE game_graveyard_zone SET faction = 0 WHERE id = 89 AND ghost_zone = 215;
UPDATE game_graveyard_zone SET id = 89 WHERE faction = 469 AND ghost_zone = 1638;
-- Classic [0835]
-- Added missing GO 175966 (Enchanted Scarlet Thread) in Stratholme
-- Also put them into a pool
DELETE FROM gameobject WHERE guid IN (66149, 66150);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(66149, 175966, 329, 3457.5, -3111.17, 137.482, 2.023, 0, 0, 0.847629, 0.53059, 43200, 100, 1),
(66150, 175966, 329, 3585.85, -3061.59, 136.515, 5.31, 0, 0, 0.467617, -0.883931, 43200, 100, 1);
DELETE FROM pool_gameobject_template WHERE id = 175966;
INSERT INTO pool_gameobject_template VALUES
(175966, 25479, 0, 'Enchanted Scarlet Thread (175966)');
DELETE FROM pool_template WHERE entry = 25479;
INSERT INTO pool_template VALUES
(25479, 2, 'Enchanted Scarlet Thread (175966) - Stratholme');
-- Classic [0823]
-- Added missing rare spawns NPCs in Zul'Farrak
-- Source: http://www.wowhead.com/npc=10080#comments
-- http://www.wowhead.com/npc=10081#comments
-- http://www.wowhead.com/npc=10082#comments
-- ----------------------------
-- Sandarr Dunereaver (10080)
-- ----------------------------
DELETE FROM creature WHERE guid IN (54080,128620);
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(54080, 10080, 209, 0, 0, 1546.25, 1017.14, 8.87683, 0.0109968, 7200, 0, 0, 5544, 0, 0, 0), -- Sandarr Dunereaver
(128620, 7269, 209, 0, 0, 1546.25, 1017.14, 8.87683, 0.0109968, 60, 5, 0, 1782, 0, 0, 1); -- Sandarr Dunereaver placeholder
DELETE FROM pool_creature WHERE guid IN (54080, 128620);
INSERT INTO pool_creature VALUES
(54080, 25476, 10, 'Zul\'Farrak - Sandarr Dunereaver (Zul\'Farrak)'),
(128620, 25476, 0, 'Zul\'Farrak - Sandarr Dunereaver placeholder (Zul\'Farrak)');
DELETE FROM pool_template WHERE entry = 25476;
INSERT INTO pool_template VALUES
(25476, 1, 'Zul\'Farrak - Sandarr Dunereaver/Sandarr Dunereaver placeholder');
-- ----------------------------
-- Dustwraith (10081)
-- ----------------------------
DELETE FROM creature WHERE guid IN (128627, 128628);
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(128627, 10081, 209, 0, 0, 1627.47, 1186.85, 8.87693, 0.647954, 7200, 15, 0, 5757, 0, 0, 1), -- Dustwraith
(128628, 7269, 209, 0, 0, 1627.47, 1186.85, 8.87693, 0.647954, 60, 5, 0, 1782, 0, 0, 1); -- Dustwraith placeholder
DELETE FROM pool_creature WHERE guid IN (128627, 128628);
INSERT INTO pool_creature VALUES
(128627, 25477, 10, 'Zul\'Farrak - Dustwraith'),
(128628, 25477, 0, 'Zul\'Farrak - Dustwraith placeholder');
DELETE FROM pool_template WHERE entry = 25477;
INSERT INTO pool_template VALUES
(25477, 1, 'Zul\'Farrak - Dustwraith/Dustwraith placeholder');
-- ----------------------------
-- Zerillis (10082)
-- ----------------------------
DELETE FROM creature WHERE guid = 128629;
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(128629, 10082, 209, 0, 0, 1628.94, 952.042, 8.87684, 5.43152, 7200, 0, 0, 5544, 0, 0, 2); -- Zerillis
UPDATE creature_template SET MovementType = 2 WHERE Entry = 10082;
DELETE FROM creature_movement_template WHERE entry = 10082;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id, waittime, orientation) VALUES
(10082, 1, 1648.93, 929.182, 9.0735, 0, 400, 0),
(10082, 2, 1676.93, 909.081, 8.8778, 0, 400, 0),
(10082, 3, 1679.64, 896.14, 8.8778, 0, 0, 0),
(10082, 4, 1662.26, 892.587, 8.87689, 0, 300, 0),
(10082, 5, 1653.05, 908.666, 8.87689, 0, 0, 0),
(10082, 6, 1649.56, 928.862, 8.97394, 0, 0, 0),
(10082, 7, 1628.18, 951.86, 8.87694, 0, 1000, 0);
DELETE FROM pool_creature WHERE guid IN (128629, 44170);
INSERT INTO pool_creature VALUES
(128629, 25478, 30, 'Zul\'Farrak - Zerillis'),
(44170, 25478, 0, 'Zul\'Farrak - Zerillis placeholder');
DELETE FROM pool_template WHERE entry = 25478;
INSERT INTO pool_template VALUES
(25478, 1, 'Zul\'Farrak - Zerillis/Zerillis placeholder');
-- Classic [0822]
-- Fixed loot table of bosses in Zul'Farrak.
-- Thanks Patman for reporting.
UPDATE creature_loot_template SET ChanceOrQuestChance = 40 WHERE entry = 7271 AND item = 18083;
UPDATE creature_loot_template SET ChanceOrQuestChance = 20 WHERE entry = 7271 AND item = 18082;
DELETE FROM creature_loot_template WHERE entry = 7271 AND item IN (24036, 24041, 24043, 24045);
INSERT INTO creature_loot_template VALUES
(7271, 24036, 10, 0, -24036, 1, 0), -- grey items
(7271, 24041, 10, 1, -24041, 1, 0), -- green items
(7271, 24043, 10, 1, -24043, 1, 0), -- green items
(7271, 24045, 10, 1, -24045, 1, 0); -- green items
DELETE FROM creature_loot_template WHERE entry = 7275 AND item IN (24036, 24041, 24043, 24045);
INSERT INTO creature_loot_template VALUES
(7275, 24036, 10, 0, -24036, 1, 0), -- grey items
(7275, 24041, 10, 1, -24041, 1, 0), -- green items
(7275, 24045, 10, 1, -24045, 1, 0); -- green items
UPDATE creature_loot_template SET maxcount = 4 WHERE item IN (4338, 4306) AND entry IN (8127, 7272, 7271, 7796, 7795, 7273, 7275, 7797, 7267);
UPDATE creature_loot_template SET mincountOrRef = 2, maxcount = 5 WHERE item = 9523 AND entry IN (8127, 7272, 7271, 7796, 7795, 7273, 7275, 7797, 7267);
--  Classic [0821]
-- Added waypoint movement to creature 7795 (Hydromancer Velratha) in Zul'Farrak.
-- She will now move around the sacred pool.
UPDATE creature SET MovementType = 2 WHERE id = 7795;
UPDATE creature_template SET MovementType = 2 WHERE Entry = 7795;
DELETE FROM creature_movement_template WHERE entry = 7795;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id, waittime, orientation) VALUES
(7795, 1, 1704.96, 1202.13, 9.24427, 0, 0, 0),
(7795, 2, 1684.78, 1225.34, 8.87707, 0, 0, 0),
(7795, 3, 1706.28, 1200.92, 9.22012, 0, 0, 0),
(7795, 4, 1681.82, 1180.19, 8.89546, 0, 0, 0);
-- Fixed walk speed for creature 7273 (Gahz'rilla) in Zul'Farrak because it was moving way to quickly 
UPDATE creature_template SET SpeedWalk = 1.14286 WHERE Entry = 7273;
-- Fixed addon for creature 5648 (Sandfury Shadowcaster) because they were using an aura addon and an EventAI 
-- script to add the same spell 20798 (Demon Skin) resulting in the spell being self canceled 
DELETE FROM creature_addon WHERE auras = '20798' AND guid IN (SELECT guid FROM creature WHERE id = 5648); 
-- Classic [0819]
-- Fixed spawn time of NPC 11489 (Tendris Warpwood) in Dire Maul
-- Thanks TheTrueAnimal for pointing.
UPDATE creature SET spawntimesecs = 3 * 3600 WHERE id = 11489;

-- UDB_123
-- Classic [0970]
-- You have to loot more than just one box to get your equipment.
UPDATE gameobject_loot_template SET ChanceOrQuestChance = -10 WHERE entry = 9677 and item = 10715;
UPDATE gameobject_loot_template SET ChanceOrQuestChance = -10 WHERE entry = 9677 and item = 10717;
UPDATE gameobject_loot_template SET ChanceOrQuestChance = -10 WHERE entry = 9677 and item = 10718;
UPDATE gameobject_loot_template SET ChanceOrQuestChance = -10 WHERE entry = 9677 and item = 10722;
-- Classic [0969]
-- Fixed quest 5581 (Portal of the Legion) in Desolace
DELETE FROM dbscripts_on_go_template_use WHERE id IN (177243,177365,177366,177367,177368,177369,177397,177398,177399,177400);
INSERT INTO dbscripts_on_go_template_use VALUES 
(177243, 0, 10, 11937, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Summon Demon Portal Guardian'),
(177365, 0, 10, 11937, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Summon Demon Portal Guardian'),
(177366, 0, 10, 11937, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Summon Demon Portal Guardian'),
(177367, 0, 10, 11937, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Summon Demon Portal Guardian'),
(177368, 0, 10, 11937, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Summon Demon Portal Guardian'),
(177369, 0, 10, 11937, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Summon Demon Portal Guardian'),
(177397, 0, 10, 11937, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Summon Demon Portal Guardian'),
(177398, 0, 10, 11937, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Summon Demon Portal Guardian'),
(177399, 0, 10, 11937, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Summon Demon Portal Guardian'),
(177400, 0, 10, 11937, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Summon Demon Portal Guardian');
-- Classic [0968]
-- Fixed NPC vendors items for vendors 10856 (Argent Quartermaster Hasana ), 10857 (Argent Quartermaster Lightspark ) & 11536 (Quartermaster Miranda Breechlock )
-- items are now available only once the related quests are completed
-- Also removed repeat flag for quest 5517, 5521, 5524 (Chromatic Mantle of the Dawn)
-- Prevented players to complete all Mantle of the Dawn quests as they should be able to do only one by tier (two tiers)
DELETE FROM conditions WHERE condition_entry BETWEEN 991 AND 1000;
INSERT INTO conditions VALUES 
(991, 8, 5513, 0),
(992, 8, 5507, 0),
(993, 8, 5504, 0),
(994, -2, 991, 992),
(995, -2, 993, 994),
(996, 8, 5524, 0),
(997, 8, 5521, 0),
(998, 8, 5517, 0),
(999, -2, 996, 997),
(1000, -2, 998, 999);
UPDATE npc_vendor SET condition_id = 995 WHERE item IN (18169,18170,18171,18172,18173);
UPDATE npc_vendor SET condition_id = 1000 WHERE item = 18182;
UPDATE quest_template SET ExclusiveGroup = 5504 WHERE entry IN (5504,5507,5513);
UPDATE quest_template SET ExclusiveGroup = 5517, SpecialFlags = 0 WHERE entry IN (5517,5521,5524);
-- Classic [0967] 
-- Fixed rewards of quest 8867 (Lunar Fireworks)
DELETE FROM item_loot_template WHERE entry IN (21740, 21743);
INSERT INTO item_loot_template VALUES 
(21740, 21724, 0, 1, 1, 1, 0),
(21740, 21725, 0, 1, 1, 1, 0),
(21740, 21726, 0, 1, 1, 1, 0),
(21743, 21733, 0, 1, 1, 1, 0),
(21743, 21734, 0, 1, 1, 1, 0),
(21743, 21735, 0, 1, 1, 1, 0);
-- Classic [0965]
-- Removed spawns of NPC 11258 from Scholomance : this NPC is summoned 
DELETE FROM creature WHERE id = 11258 AND map = 289;
DELETE FROM creature_addon WHERE guid IN (91405,91406,91407,91421,91422,91427);
-- Classic [0943] and part of [945]
-- Quest: An Imp's Request should have quest level 50/52, instead of 52/60
-- Creature: Sea Elemental should deal frost instead of physical melee damage.
-- Creature: Sea Spray should also deal frost damage
UPDATE creature_template SET DamageSchool = 4 WHERE Entry = 5461;
UPDATE creature_template SET DamageSchool = 4 WHERE Entry = 5462;
UPDATE quest_template SET MinLevel = 50, QuestLevel = 52, RewMoneyMaxLevel = 2280 WHERE entry = 8419;
-- Classic [0938]
-- Quest 7046 (The Scepter of Celebras) needs quest 7044 (Legends of Maraudon) as prerequist
UPDATE quest_template SET PrevQuestId= 7044 WHERE entry = 7046;
-- Classic [0937]
-- Added patrol of NPC 13599 (Stolid Snapjaw) in Maraudon
DELETE FROM creature_linking WHERE guid IN (55115, 55116, 55117);
INSERT INTO creature_linking VALUES
(55115, 55118, 512),
(55116, 55118, 512),
(55117, 55118, 512);
UPDATE creature SET MovementType = 2 WHERE guid = 55118;
DELETE FROM creature_movement WHERE id = 55118;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(55118, 1, 560.44, 74.1416, -96.3128, 0, 0, 1.94883, 0, 0),(55118, 2, 556.001, 97.5598, -96.3128, 0, 0, 1.35115, 0, 0),(55118, 3, 562.821, 116.938, -96.3128, 0, 0, 0.716542, 0, 0),
(55118, 4, 558.737, 80.2023, -96.3128, 0, 0, 4.70244, 0, 0),(55118, 5, 567.894, 47.7771, -96.3128, 0, 0, 4.88465, 0, 0),(55118, 6, 573.623, 24.1758, -96.3128, 0, 0, 5.21452, 0, 0),
(55118, 7, 583.107, 6.90322, -96.3128, 0, 0, 5.56323, 0, 0),(55118, 8, 597.509, 5.07898, -96.3128, 0, 0, 1.18385, 0, 0),(55118, 9, 600.013, 21.6183, -96.3128, 0, 0, 2.22686, 0, 0),
(55118, 10, 575.202, 46.2133, -96.3128, 0, 0, 2.10748, 0, 0);
-- Classic [0936]
-- Fixed speed of NPC 12222 (Creeping Sludge) in Maraudon
UPDATE creature_template SET SpeedWalk = 0.3, SpeedRun = 0.4 WHERE Entry = 12222;
-- Classic [0934] 
-- Added missing NPCs 12224 and 12237 in Maraudon 
-- Spawned missing NPCs in Maraudon : 12224 (Cavern Shambler)
-- Added movement to some of the spawns
-- Fixed rank (is rare elite) and movement of  NPC 12237 (Meshlok the Harvester)
-- Placed NPC 12237 (Meshlok the Harvester) into a pool with its placeholder
DELETE FROM creature WHERE guid IN (54571, 54645);
-- Spawned missing NPCs in Maraudon : 12224 (Cavern Shambler)
DELETE FROM creature WHERE guid BETWEEN 128720 AND 128725;
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(128720, 12237, 349, 0, 0, 632.101, -92.409, -57.4999, 3.49563, 7200, 0, 0, 5757, 0, 0, 2),
(128721, 12224, 349, 0, 0, 748.725, -81.8362, -57.4696, 0.620471, 7200, 0, 0, 4434, 2301, 0, 2),
(128722, 12224, 349, 0, 0, 632.101, -92.409, -57.4999, 3.49563, 7200, 0, 0, 4434, 2301, 0, 2),
(128723, 12224, 349, 0, 0, 818.573, -215.097, -77.1489, 4.14281, 7200, 0, 0, 4434, 2301, 0, 2),
(128724, 12224, 349, 0, 0, 813.453, -370.449, -59.2094, 6.02488, 7200, 5, 0, 4434, 2301, 0, 1),
(128725, 12224, 349, 0, 0, 719.899, -83.8715, -57.2155, 3.48941, 7200, 5, 0, 4434, 2301, 0, 1);
-- Added movement to some of the spawns
DELETE FROM creature_movement WHERE id IN (128721, 128722, 128723);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- NPC 1
(128721, 1, 747.806, -79.9688, -57.4744, 0, 0, 3.30872, 0, 0),(128721, 2, 750.866, -86.8807, -57.4595, 0, 0, 2.95922, 0, 0),(128721, 3, 741.016, -94.8653, -57.4978, 0, 0, 1.6319, 0, 0),
(128721, 4, 745.803, -84.0748, -57.4833, 0, 0, 1.16459, 0, 0),(128721, 5, 738.607, -70.5452, -57.4977, 0, 0, 4.23156, 0, 0),(128721, 6, 751.253, -70.6902, -57.3912, 0, 0, 4.39257, 0, 0),
(128721, 7, 744.367, -78.7708, -57.4887, 0, 0, 5.06801, 0, 0),(128721, 8, 756.588, -80.4979, -57.3727, 0, 0, 3.98809, 0, 0),(128721, 9, 736.461, -89.3428, -57.4996, 0, 0, 3.35192, 0, 0),
(128721, 10, 734.7, -80.3283, -57.4996, 0, 0, 0.198547, 0, 0),(128721, 11, 744.209, -79.5844, -57.4915, 0, 0, 0.045395, 0, 0),(128721, 12, 734.044, -71.701, -57.4977, 0, 0, 4.40828, 0, 0),
-- NPC 2
(128722, 1, 632.101, -92.409, -57.4999, 0, 0, 0.240159, 0, 0),(128722, 2, 642.895, -89.225, -57.4999, 0, 0, 0.306918, 0, 0),(128722, 3, 654.193, -88.5337, -57.4999, 0, 0, 6.19348, 0, 0),
(128722, 4, 666.728, -91.7718, -57.4999, 0, 0, 6.01284, 0, 0),(128722, 5, 675.549, -93.9197, -57.4999, 0, 0, 6.13457, 0, 0),(128722, 6, 690.764, -89.7546, -57.4999, 0, 0, 0.61715, 0, 0),
(128722, 7, 702.83, -84.753, -57.4631, 0, 0, 0.173401, 0, 0),(128722, 8, 715.159, -83.791, -57.1193, 0, 0, 0.114496, 0, 0),(128722, 9, 708.503, -83.9885, -57.2554, 0, 0, 3.35426, 0, 0),
(128722, 10, 699.353, -86.647, -57.5, 0, 0, 3.55454, 0, 0),(128722, 11, 681.834, -93.4817, -57.5, 0, 0, 3.35034, 0, 0),(128722, 12, 674.938, -93.0037, -57.5, 0, 0, 2.78878, 0, 0),
(128722, 13, 665.508, -90.6338, -57.5, 0, 0, 2.91051, 0, 0),(128722, 14, 652.935, -87.6942, -57.5, 0, 0, 3.10686, 0, 0),(128722, 15, 634.167, -92.0013, -57.5, 0, 0, 3.60559, 0, 0),
-- NPC 3
(128723, 1, 818.873, -216.343, -77.1489, 0, 0, 2.28534, 0, 0),(128723, 2, 813.487, -210.328, -77.1489, 0, 0, 2.30105, 0, 0),(128723, 3, 806.875, -204.634, -77.1489, 0, 0, 2.43064, 0, 0),
(128723, 4, 804.811, -193.5, -77.1489, 0, 0, 1.55099, 0, 0),(128723, 5, 806.356, -184.124, -77.1489, 0, 0, 1.35857, 0, 0),(128723, 6, 813.319, -173.6, -77.2995, 0, 0, 0.541757, 0, 0),
(128723, 7, 808.847, -175.006, -77.3074, 0, 0, 5.0146, 0, 0),(128723, 8, 805.501, -182.277, -77.1489, 0, 0, 4.41377, 0, 0),(128723, 9, 804.538, -193.051, -77.1489, 0, 0, 4.92428, 0, 0),
(128723, 10, 807.906, -203.501, -77.1489, 0, 0, 5.34446, 0, 0);
-- Fixed rank (is rare elite) and movement of  NPC 12237 (Meshlok the Harvester)
UPDATE creature_template SET MovementType = 2 WHERE Entry = 12237;
DELETE FROM creature_movement_template WHERE entry = 12237;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(12237, 1, 632.101, -92.409, -57.4999, 0, 0, 0.240159, 0, 0),(12237, 2, 642.895, -89.225, -57.4999, 0, 0, 0.306918, 0, 0),(12237, 3, 654.193, -88.5337, -57.4999, 0, 0, 6.19348, 0, 0),
(12237, 4, 666.728, -91.7718, -57.4999, 0, 0, 6.01284, 0, 0),(12237, 5, 675.549, -93.9197, -57.4999, 0, 0, 6.13457, 0, 0),(12237, 6, 690.764, -89.7546, -57.4999, 0, 0, 0.61715, 0, 0),
(12237, 7, 702.83, -84.753, -57.4631, 0, 0, 0.173401, 0, 0),(12237, 8, 715.159, -83.791, -57.1193, 0, 0, 0.114496, 0, 0),(12237, 9, 708.503, -83.9885, -57.2554, 0, 0, 3.35426, 0, 0),
(12237, 10, 699.353, -86.647, -57.5, 0, 0, 3.55454, 0, 0),(12237, 11, 681.834, -93.4817, -57.5, 0, 0, 3.35034, 0, 0),(12237, 12, 674.938, -93.0037, -57.5, 0, 0, 2.78878, 0, 0),
(12237, 13, 665.508, -90.6338, -57.5, 0, 0, 2.91051, 0, 0),(12237, 14, 652.935, -87.6942, -57.5, 0, 0, 3.10686, 0, 0),(12237, 15, 634.167, -92.0013, -57.5, 0, 0, 3.60559, 0, 0);
-- Placed NPC 12237 (Meshlok the Harvester) into a pool with its placeholder
DELETE FROM pool_creature WHERE guid IN (54652, 128720, 128723);
INSERT INTO pool_creature VALUES
(128720, 1211, 30, 'Maraudon - Meshlok the Harvester'),
(128723, 1211, 0, 'Maraudon - Meshlok the Harvester placeholder'),
(54652, 1211, 0, 'Maraudon - Meshlok the Harvester placeholder');
DELETE FROM pool_template WHERE entry = 1211;
INSERT INTO pool_template VALUES
(1211, 1, 'Maraudon - Meshlok the Harvester');
-- Classic [0933]
-- Linked NPC 11784 (Theradrim Guardian) with its small adds 11783 (Theradrim Shardling) in Maraudon
-- The adds will engage along with their master and follow it
DELETE FROM creature_linking_template WHERE entry = 11783;
INSERT creature_linking_template VALUES
(11783, 349, 11784, 1 + 2 + 512, 15);
-- Removed all spawns of NPC 11783 (Theradrim Shardling) in Maraudon
-- because they are summoned
DELETE FROM creature WHERE id = 11783;
-- Removed duplicate NPC 11784 (Theradrim Guardian)
DELETE FROM creature WHERE guid = 55466;
-- Theradrim Guardians now patrol in the last part of Maraudon
UPDATE creature SET MovementType = 2 WHERE id = 11784;
DELETE FROM creature_movement WHERE id = 55465;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id,  orientation, model1, model2) VALUES
(55465, 1, 248.538, -93.024, -129.62, 0, 0, 3.48821, 0, 0),(55465, 2, 219.021, -92.1171, -129.607, 0, 0, 1.77761, 0, 0),(55465, 3, 258.14, -97.1733, -129.619, 0, 0, 4.76526, 0, 0),
(55465, 4, 246.967, -145.304, -130.844, 0, 0, 4.31759, 0, 0),(55465, 5, 213.934, -199.873, -131.159, 0, 0, 4.56106, 0, 0),(55465, 6, 248.627, -140.739, -131.005, 0, 0, 1.24747, 0, 0),
(55465, 7, 259.8, -98.2245, -129.619, 0, 0, 2.83554, 0, 0);
DELETE FROM creature_movement WHERE id = 55471;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id,  orientation, model1, model2) VALUES
(55471, 1, 200.354, -133.505, -101.058, 0, 0, 0.888545, 0, 0),(55471, 9, 199.686, -134.684, -101.541, 0, 0, 4.06627, 0, 0),(55471, 8, 226.955, -112.811, -89.7437, 0, 0, 3.15442, 0, 0),
(55471, 7, 276.408, -121.048, -83.6496, 0, 0, 2.72323, 0, 0),(55471, 6, 299.577, -148.794, -69.9433, 0, 0, 1.75562, 0, 0),(55471, 5, 298.76, -178.312, -59.8991, 0, 0, 4.52729, 0, 0),
(55471, 4, 300.187, -149.075, -69.7502, 0, 0, 4.81004, 0, 0),(55471, 3, 278.173, -121.002, -83.4807, 0, 0, 5.93787, 0, 0),(55471, 2, 230.841, -109.688, -88.8687, 0, 0, 0.20996, 0, 0),
(55471, 10, 183.329, -185.544, -111.375, 0, 0, 4.68595, 0, 0);
DELETE FROM creature_movement WHERE id = 88989;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id,  orientation, model1, model2) VALUES
(88989, 1, 109.037, -268.553, -108.677, 0, 0, 6.01719, 0, 0),(88989, 2, 151.884, -275.712, -108.677, 0, 0, 0.864195, 0, 0),(88989, 3, 143.666, -231.173, -108.852, 0, 0, 2.20251, 0, 0),
(88989, 4, 156.17, -275.286, -108.676, 0, 0, 3.58089, 0, 0),(88989, 5, 138.876, -278.577, -108.676, 0, 0, 2.8379, 0, 0),(88989, 6, 79.5604, -259.988, -108.678, 0, 0, 2.8379, 0, 0),
(88989, 7, 62.416, -207.188, -109.659, 0, 0, 1.94569, 0, 0),(88989, 8, 8.187, -127.348, -123.845, 0, 0, 1.395, 0, 0),(88989, 9, 28.705, -38.025, -128.761, 0, 0, 1.282, 0, 0),
(88989, 10, 8.187, -127.348, -123.845, 0, 0, 5.134, 0, 0),(88989, 11, 62.416, -207.188, -109.659, 0, 0, 1.94569, 0, 0),(88989, 12, 79.0383, -255.555, -108.677, 0, 0, 5.96536, 0, 0);
DELETE FROM creature_movement WHERE id = 56485;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id,  orientation, model1, model2) VALUES
(56485, 1, 150.49, -193.898, -171.747, 0, 0, 4.68202, 0, 0),(56485, 2, 152.233, -231.891, -170.382, 0, 0, 4.4087, 0, 0),(56485, 3, 125.841, -257.66, -168.113, 0, 0, 5.52554, 0, 0),
(56485, 4, 155.987, -284.034, -168.989, 0, 0, 5.89625, 0, 0),(56485, 5, 148.455, -238.759, -169.543, 0, 0, 1.08961, 0, 0),(56485, 6, 155.062, -199.53, -171.957, 0, 0, 3.02876, 0, 0),
(56485, 7, 104.937, -185.658, -167.457, 0, 0, 2.76329, 0, 0),(56485, 8, 100.198, -176.082, -167.457, 0, 0, 1.16972, 0, 0),(56485, 9, 111.893, -160.596, -167.328, 0, 0, 5.89781, 0, 0),
(56485, 10, 121.304, -176.939, -167.457, 0, 0, 5.01502, 0, 0),(56485, 11, 128.284, -191.12, -168.26, 0, 0, 5.77529, 0, 0);
DELETE FROM creature_movement WHERE id = 56501;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id,  orientation, model1, model2) VALUES
(56501, 1, 177.079, -304.031, -172.328, 0, 0, 3.46308, 0, 0),(56501, 2, 146.519, -316.403, -174.591, 0, 0, 4.85009, 0, 0),(56501, 3, 153.733, -376.576, -175.003, 0, 0, 5.94886, 0, 0),
(56501, 4, 211.381, -381.672, -160.691, 0, 0, 6.21354, 0, 0),(56501, 5, 156.615, -376.11, -175.002, 0, 0, 1.73206, 0, 0),(56501, 6, 148.461, -317.13, -174.589, 0, 0, 0.314416, 0, 0);
DELETE FROM creature_movement WHERE id = 56515;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id,  orientation, model1, model2) VALUES
(56515, 1, 312.737, -343.241, -117.348, 0, 0, 1.19013, 0, 0),(56515, 11, 251.778, -396.72, -139.555, 0, 0, 6.22297, 0, 0),(56515, 10, 256.965, -328.427, -140.451, 0, 0, 1.59383, 0, 0),
(56515, 9, 250.345, -396.668, -139.555, 0, 0, 3.10022, 0, 0),(56515, 8, 325.14, -394.223, -124.867, 0, 0, 4.68437, 0, 0),(56515, 7, 317.848, -331.827, -116.777, 0, 0, 4.80689, 0, 0),
(56515, 6, 331.665, -290.395, -118.061, 0, 0, 4.19978, 0, 0),(56515, 5, 345.634, -276.933, -117.941, 0, 0, 4.20528, 0, 0),(56515, 4, 337.697, -262.309, -118.049, 0, 0, 6.10123, 0, 0),
(56515, 3, 320.637, -268.75, -117.912, 0, 0, 0.612865, 0, 0),(56515, 2, 328.91, -288.013, -118.069, 0, 0, 1.41947, 0, 0),(56515, 12, 319.125, -403.751, -124.866, 0, 0, 1.55692, 0, 0);
-- Classic [0930]
-- Linked NPC 12225 (Celebras the Cursed) with its 3 adds 13743 (Corrupt Force of Nature) in Maraudon
-- The adds will engage along with their master, respawn when it evades, despawn when it dies
DELETE FROM creature_linking_template WHERE entry = 13743;
INSERT creature_linking_template VALUES
(13743, 349, 12225, 1 + 2 + 4 + 16, 0);
-- Classic [0928]
-- Linked NPC 12236 (Lord Vyletongue) in Maraudon to its two adds
DELETE FROM creature_linking WHERE guid IN (54676, 54675);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(54675, 54579, 3),
(54676, 54579, 3);
-- Classic [0927]
-- Fixed stats of NPC 12238 (Zaetar's Spirit) in Maraudon
UPDATE creature_template SET UnitClass = 2, MinLevelHealth = 3297, MaxLevelHealth = 3297, MinLevelMana = 2434, MaxLevelMana = 2434, HealthMultiplier = 1.35, ArmorMultiplier = 1 WHERE Entry = 12238;
-- Classic [0926]
-- Prevent NPCs 12238 (Zaetar's Spirit) and 13716 (Celebras the Redeemed) to roam
-- around their spawn point. Now, players will be able to speak with them
-- and get the quest they offer without having the window abruptly closed
-- every few seconds
UPDATE creature_template SET MovementType = 0 WHERE Entry IN (12238, 13716);
-- Classic [0925]
-- BRD - Vault Improvements 
-- Relic Coffer are not selectable by default, to prevent abuse. They should become acessible as soon as you open the doors
DELETE FROM dbscripts_on_go_template_use WHERE buddy_entry = 160836;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(174554, 0, 27, 8, 0, 160836, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Relic Coffer Door - Access: Relic Coffer'),
(174555, 0, 27, 8, 0, 160836, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Relic Coffer Door - Access: Relic Coffer'),
(174556, 0, 27, 8, 0, 160836, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Relic Coffer Door - Access: Relic Coffer'),
(174557, 0, 27, 8, 0, 160836, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Relic Coffer Door - Access: Relic Coffer'),
(174558, 0, 27, 8, 0, 160836, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Relic Coffer Door - Access: Relic Coffer'),
(174559, 0, 27, 8, 0, 160836, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Relic Coffer Door - Access: Relic Coffer'),
(174560, 0, 27, 8, 0, 160836, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Relic Coffer Door - Access: Relic Coffer'),
(174561, 0, 27, 8, 0, 160836, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Relic Coffer Door - Access: Relic Coffer'),
(174562, 0, 27, 8, 0, 160836, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Relic Coffer Door - Access: Relic Coffer'),
(174563, 0, 27, 8, 0, 160836, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Relic Coffer Door - Access: Relic Coffer'),
(174564, 0, 27, 8, 0, 160836, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Relic Coffer Door - Access: Relic Coffer'),
(174566, 0, 27, 8, 0, 160836, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Relic Coffer Door - Access: Relic Coffer');
-- Classic [0922] 
-- Fixed model of NPC 12423 (Guard Roberts) and 1642 (Northshire Guard) who were using wrong alternate model
-- Fixed model of NPC 1281 (Mountaineer Zaren) who were using an male alternate model though she is female.
UPDATE creature_model_info SET modelid_other_gender = 0 WHERE modelid IN (3257, 3258);
UPDATE creature_template SET modelid2 = 0 WHERE Entry = 1642; -- Northshire Guard
UPDATE creature_model_info SET modelid_other_gender = 3167 WHERE modelid = 5446;
UPDATE creature_model_info SET modelid_other_gender = 0 WHERE modelid IN (1812, 4887);
-- Classic [0921]
-- Fixed stats of NPC 13696 (Noxxious Scion) in Maraudon in order to make the quest 7029 and 7041 (Vyletongue Corruption - Alliance and Horde)
-- completable as the spawns were too strong
UPDATE creature_template SET Rank = 0, MinLevelHealth = 1848, MaxLevelHealth = 1919, HealthMultiplier = 1,
DamageMultiplier = 1.57, MinMeleeDmg = 72, MaxMeleeDmg = 96 WHERE Entry = 13696;
-- Classic [0920]
-- Removed duplicate NPC 12219 (Barbed Lasher) in Maraudon
DELETE FROM creature WHERE guid = 54310;
-- Classic [0919]
-- Huntress Skymane was tired of listening to Archaelogist Greywhiskers
-- 'stories' all day everyday and has joined her colleagues patrolling
-- around Darnassus
UPDATE creature SET MovementType = 2 WHERE id = 14378;
UPDATE creature_template SET MovementType = 2 WHERE Entry = 14378;
DELETE FROM creature_movement_template WHERE entry = 14378;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES 
(14378, 1, 9656.18, 2598.45, 1335.68, 0, 0, 5.42763, 0, 0),(14378, 2, 9660.32, 2598.62, 1335.68, 0, 0, 5.67758, 0, 0),(14378, 3, 9664.55, 2596.83, 1335.68, 0, 0, 5.59118, 0, 0),
(14378, 4, 9668.79, 2593.05, 1335.68, 0, 0, 5.54799, 0, 0),(14378, 5, 9681.01, 2581.18, 1335.68, 0, 0, 5.4773, 0, 0),(14378, 6, 9700.06, 2560.13, 1335.68, 0, 0, 5.46553, 0, 0),
(14378, 7, 9704.62, 2554.05, 1335.68, 0, 0, 5.25347, 0, 0),(14378, 8, 9706.54, 2550.39, 1335.68, 0, 0, 5.09247, 0, 0),(14378, 9, 9710.17, 2537.88, 1335.68, 0, 0, 4.80187, 0, 0),
(14378, 10, 9710.75, 2520.64, 1335.69, 0, 0, 4.75475, 0, 0),(14378, 11, 9710.52, 2513.64, 1335.69, 0, 0, 4.68406, 0, 0),(14378, 12, 9709.42, 2508.07, 1335.68, 0, 0, 4.47201, 0, 0),
(14378, 13, 9707.4, 2500.94, 1335.68, 0, 0, 4.40525, 0, 0),(14378, 14, 9705.06, 2494.84, 1335.68, 0, 0, 4.23247, 0, 0),(14378, 15, 9701.5, 2489.61, 1335.68, 0, 0, 4.00078, 0, 0),
(14378, 16, 9696.14, 2483, 1335.68, 0, 0, 3.99292, 0, 0),(14378, 17, 9689.93, 2476.24, 1335.68, 0, 0, 3.96936, 0, 0),(14378, 18, 9671.14, 2457.36, 1335.68, 0, 0, 3.87904, 0, 0),
(14378, 19, 9665.81, 2451.59, 1335.68, 0, 0, 4.03612, 0, 0),(14378, 20, 9662.34, 2445.56, 1335.68, 0, 0, 4.28744, 0, 0),(14378, 21, 9658.51, 2433.99, 1335.68, 0, 0, 4.58196, 0, 0),
(14378, 22, 9656.64, 2416.64, 1335.68, 0, 0, 4.6605, 0, 0),(14378, 23, 9656.21, 2411.23, 1335.68, 0, 0, 5.33201, 0, 0),(14378, 24, 9657.62, 2407.5, 1335.68, 0, 0, 0.087112, 0, 0),
(14378, 25, 9660.41, 2404.48, 1335.68, 0, 0, 1.0885, 0, 0),(14378, 26, 9663.79, 2405, 1335.68, 0, 0, 1.52832, 0, 0),(14378, 27, 9666.78, 2408.15, 1335.68, 0, 0, 1.1631, 0, 0),
(14378, 28, 9667.68, 2414.61, 1335.68, 0, 0, 1.60685, 0, 0),(14378, 29, 9666.67, 2431.41, 1335.68, 0, 0, 1.52438, 0, 0),(14378, 30, 9666.84, 2434.89, 1335.68, 0, 0, 1.4105, 0, 0),
(14378, 31, 9668.17, 2437.16, 1335.68, 0, 0, 0.923555, 0, 0),(14378, 32, 9671.37, 2439.07, 1335.68, 0, 0, 0.534783, 0, 0),(14378, 33, 9682.48, 2445.66, 1335.68, 0, 0, 0.534783, 0, 0),
(14378, 34, 9686.26, 2448.24, 1335.68, 0, 0, 0.6683, 0, 0),(14378, 35, 9689.86, 2451.4, 1335.68, 0, 0, 0.735059, 0, 0),(14378, 36, 9699.59, 2460.19, 1335.68, 0, 0, 0.617249, 0, 0),
(14378, 37, 9704.56, 2466.22, 1335.68, 0, 0, 0.970683, 0, 0),(14378, 38, 9711.66, 2477.24, 1335.68, 0, 0, 0.998172, 0, 0),(14378, 39, 9716.87, 2487.32, 1335.68, 0, 0, 1.15918, 0, 0),
(14378, 40, 9723.13, 2504.55, 1335.68, 0, 0, 1.24557, 0, 0),(14378, 41, 9723.82, 2507.46, 1335.68, 0, 0, 0.954975, 0, 0),(14378, 42, 9725.99, 2508.91, 1335.68, 0, 0, 0.562276, 0, 0),
(14378, 43, 9728.13, 2509.97, 1335.11, 0, 0, 0.358073, 0, 0),(14378, 47, 9765.19, 2520.92, 1322.01, 0, 0, 0.275602, 0, 0),(14378, 48, 9769, 2521.82, 1320.64, 0, 0, 0.161719, 0, 0),
(14378, 49, 9777.07, 2522.24, 1318.95, 0, 0, 0.043909, 0, 0),(14378, 50, 9887.82, 2524.85, 1318.66, 0, 0, 0.024274, 0, 0),(14378, 51, 9893.16, 2527.88, 1317.06, 0, 0, 0.177427, 0, 0),
(14378, 52, 9900.56, 2529.79, 1315.35, 0, 0, 0.338434, 0, 0),(14378, 53, 9905.75, 2532.06, 1316.06, 0, 0, 0.515148, 0, 0),(14378, 54, 9909.68, 2535.14, 1316.31, 0, 0, 0.809673, 0, 0),
(14378, 55, 9913.72, 2539.99, 1316.71, 0, 0, 0.872505, 0, 0),(14378, 56, 9916.63, 2543.21, 1316.93, 0, 0, 0.73506, 0, 0),(14378, 57, 9921.87, 2547.48, 1317.18, 0, 0, 0.487659, 0, 0),
(14378, 58, 9928.26, 2550.77, 1317.37, 0, 0, 0.436608, 0, 0),(14378, 59, 9942.23, 2554.12, 1316.52, 0, 0, 0.126376, 0, 0),(14378, 60, 9948.7, 2553.54, 1316.38, 0, 0, 6.06791, 0, 0),
(14378, 61, 9954.08, 2551.81, 1316.45, 0, 0, 5.85979, 0, 0),(14378, 62, 9969.74, 2542.73, 1316.55, 0, 0, 5.67915, 0, 0),(14378, 63, 9975.08, 2537.6, 1316.39, 0, 0, 5.4828, 0, 0),
(14378, 64, 9981.07, 2529.62, 1316.28, 0, 0, 5.1176, 0, 0),(14378, 65, 9982.52, 2524.88, 1316.41, 0, 0, 4.75631, 0, 0),(14378, 66, 9981.29, 2520.33, 1316.73, 0, 0, 4.19083, 0, 0),
(14378, 67, 9974.37, 2515.55, 1317.4, 0, 0, 3.66461, 0, 0),(14378, 68, 9970.36, 2511.68, 1317.56, 0, 0, 4.22617, 0, 0),(14378, 69, 9967.51, 2504.84, 1317.04, 0, 0, 4.37147, 0, 0),
(14378, 70, 9964.53, 2499.52, 1316.68, 0, 0, 4.10051, 0, 0),(14378, 71, 9955.46, 2488.89, 1316.39, 0, 0, 4.00233, 0, 0),(14378, 72, 9952.66, 2484.78, 1316.27, 0, 0, 4.24581, 0, 0),
(14378, 73, 9951.14, 2479.14, 1316.13, 0, 0, 4.6817, 0, 0),(14378, 74, 9951.26, 2476.07, 1316.13, 0, 0, 4.7838, 0, 0),(14378, 75, 9954.01, 2390.72, 1329.11, 0, 0, 4.7406, 0, 0),
(14378, 76, 9954.07, 2376.3, 1329.95, 0, 0, 4.69348, 0, 0),(14378, 77, 9953.15, 2341.6, 1330.78, 0, 0, 4.68562, 0, 0),(14378, 78, 9952.9, 2336.6, 1331.57, 0, 0, 4.69348, 0, 0),
(14378, 79, 9952.84, 2329.64, 1333.63, 0, 0, 4.71704, 0, 0),(14378, 80, 9952.91, 2323.1, 1335.56, 0, 0, 4.72882, 0, 0),(14378, 81, 9954.13, 2282.49, 1341.39, 0, 0, 4.7406, 0, 0),
(14378, 82, 9954.13, 2273.11, 1341.39, 0, 0, 4.71311, 0, 0),(14378, 83, 9954.69, 2263.74, 1338.3, 0, 0, 4.85448, 0, 0),(14378, 84, 9955.94, 2257.77, 1336.06, 0, 0, 4.98799, 0, 0),
(14378, 85, 9956.46, 2254.1, 1335.34, 0, 0, 4.77594, 0, 0),(14378, 86, 9955.66, 2143.38, 1327.65, 0, 0, 4.70526, 0, 0),(14378, 87, 9955.42, 2140.11, 1327.64, 0, 0, 4.45393, 0, 0),
(14378, 88, 9953.75, 2133.55, 1327.65, 0, 0, 4.47357, 0, 0),(14378, 89, 9953.16, 2129.89, 1327.65, 0, 0, 4.64242, 0, 0),(14378, 90, 9952.9, 2125.32, 1327.65, 0, 0, 4.68169, 0, 0),
(14378, 91, 9953.07, 2118.56, 1327.64, 0, 0, 4.81521, 0, 0),(14378, 92, 9953.7, 2114.02, 1327.64, 0, 0, 5.02726, 0, 0),(14378, 93, 9954.83, 2110.26, 1327.7, 0, 0, 4.96836, 0, 0),
(14378, 94, 9955.46, 2106.18, 1327.72, 0, 0, 4.7406, 0, 0),(14378, 95, 9955.73, 2095.28, 1327.72, 0, 0, 4.73274, 0, 0),(14378, 96, 9955.64, 2091.79, 1327.72, 0, 0, 4.52069, 0, 0),
(14378, 97, 9954.58, 2088.01, 1327.7, 0, 0, 4.40288, 0, 0),(14378, 98, 9952.2, 2079.61, 1327.69, 0, 0, 4.50891, 0, 0),(14378, 99, 9951.83, 2074.18, 1327.75, 0, 0, 4.77987, 0, 0),
(14378, 100, 9952.93, 2071.12, 1327.79, 0, 0, 5.19613, 0, 0),(14378, 101, 9958.11, 2062.54, 1327.98, 0, 0, 5.28252, 0, 0),(14378, 102, 9960.81, 2058.57, 1328.06, 0, 0, 5.17649, 0, 0),
(14378, 103, 9962.73, 2054.9, 1328.13, 0, 0, 5.32964, 0, 0),(14378, 104, 9965.36, 2051.71, 1328.16, 0, 0, 5.50635, 0, 0),(14378, 105, 9966.79, 2050.07, 1328.16, 0, 0, 5.26288, 0, 0),
(14378, 106, 9967.93, 2046.62, 1328.15, 0, 0, 4.73274, 0, 0),(14378, 107, 9966.99, 2045.42, 1328.17, 0, 0, 4.02588, 0, 0),(14378, 108, 9964.74, 2044.57, 1328.21, 0, 0, 3.26012, 0, 0),
(14378, 109, 9962.34, 2046.65, 1328.25, 0, 0, 2.37262, 0, 0),(14378, 110, 9960.36, 2049.51, 1328.27, 0, 0, 2.20376, 0, 0),(14378, 111, 9959.07, 2052.04, 1328.26, 0, 0, 2.00741, 0, 0),
(14378, 112, 9950.28, 2069.64, 1327.87, 0, 0, 2.0349, 0, 0),(14378, 113, 9948.29, 2074.48, 1327.77, 0, 0, 1.90531, 0, 0),(14378, 114, 9948.3, 2084.36, 1327.76, 0, 0, 1.43799, 0, 0),
(14378, 115, 9949.6, 2089.89, 1327.76, 0, 0, 1.36731, 0, 0),(14378, 116, 9951.77, 2094.43, 1327.73, 0, 0, 1.5558, 0, 0),(14378, 117, 9951.88, 2102.69, 1327.76, 0, 0, 1.73252, 0, 0),
(14378, 118, 9951.08, 2106.76, 1327.74, 0, 0, 1.81891, 0, 0),(14378, 119, 9949.91, 2112.98, 1327.66, 0, 0, 1.67754, 0, 0),(14378, 120, 9949.73, 2123.24, 1327.65, 0, 0, 1.56366, 0, 0),
(14378, 121, 9950.77, 2216.92, 1330.02, 0, 0, 1.55973, 0, 0),(14378, 122, 9950.73, 2222.15, 1330.64, 0, 0, 1.59115, 0, 0),(14378, 123, 9950.12, 2272.14, 1341.39, 0, 0, 1.57544, 0, 0),
(14378, 124, 9949.18, 2292.22, 1341.39, 0, 0, 1.60293, 0, 0),(14378, 125, 9948.65, 2319.06, 1336.55, 0, 0, 1.60293, 0, 0),(14378, 126, 9945.79, 2405.51, 1328.19, 0, 0, 1.599, 0, 0),
(14378, 127, 9944.77, 2436.95, 1324.25, 0, 0, 1.60293, 0, 0),(14378, 128, 9943.98, 2461.62, 1319.47, 0, 0, 1.30448, 0, 0),(14378, 129, 9946.07, 2472.11, 1316.96, 0, 0, 1.38302, 0, 0),
(14378, 130, 9946.62, 2477.31, 1316.07, 0, 0, 1.58329, 0, 0),(14378, 131, 9945.8, 2482.44, 1316.18, 0, 0, 1.7443, 0, 0),(14378, 132, 9944.39, 2485.33, 1316.42, 0, 0, 2.39225, 0, 0),
(14378, 133, 9939.86, 2488.75, 1317.01, 0, 0, 2.56112, 0, 0),(14378, 134, 9937.21, 2490.67, 1317.35, 0, 0, 2.36476, 0, 0),(14378, 135, 9935.45, 2493.64, 1317.81, 0, 0, 1.91709, 0, 0),
(14378, 136, 9935.56, 2497.12, 1317.81, 0, 0, 1.44978, 0, 0),(14378, 137, 9936.5, 2501.6, 1317.84, 0, 0, 1.1042, 0, 0),(14378, 138, 9938.76, 2506.57, 1317.83, 0, 0, 1.23379, 0, 0),
(14378, 139, 9937.61, 2510.13, 1317.81, 0, 0, 2.74568, 0, 0),(14378, 140, 9933.53, 2505.2, 1317.86, 0, 0, 4.1594, 0, 0),(14378, 141, 9932.98, 2502.82, 1317.82, 0, 0, 3.87273, 0, 0),
(14378, 142, 9930.73, 2501.57, 1317.82, 0, 0, 3.22478, 0, 0),(14378, 143, 9926.17, 2501.67, 1318.13, 0, 0, 2.97345, 0, 0),(14378, 144, 9921.99, 2503.47, 1317.86, 0, 0, 2.46687, 0, 0),
(14378, 145, 9918.42, 2506.99, 1317.34, 0, 0, 2.2823, 0, 0),(14378, 146, 9916.02, 2511.1, 1317.06, 0, 0, 1.99955, 0, 0),(14378, 147, 9915.6, 2522.91, 1317.01, 0, 0, 2.21161, 0, 0),
(14378, 148, 9911.31, 2527.55, 1316.39, 0, 0, 2.41189, 0, 0),(14378, 149, 9901.36, 2531.99, 1315.34, 0, 0, 2.75746, 0, 0),(14378, 150, 9890.5, 2534.01, 1317.81, 0, 0, 2.94988, 0, 0),
(14378, 151, 9884.43, 2535.28, 1318.87, 0, 0, 3.15801, 0, 0),(14378, 152, 9777.34, 2532, 1318.99, 0, 0, 3.16587, 0, 0),(14378, 153, 9735.71, 2535.47, 1332.35, 0, 0, 3.29153, 0, 0),
(14378, 154, 9730.37, 2536.56, 1334.2, 0, 0, 2.95774, 0, 0),(14378, 155, 9727.23, 2537.47, 1335.28, 0, 0, 2.62001, 0, 0),(14378, 156, 9723.26, 2538.83, 1335.68, 0, 0, 2.43937, 0, 0),
(14378, 157, 9719.95, 2541.6, 1335.68, 0, 0, 2.08202, 0, 0),(14378, 158, 9717.02, 2545.67, 1335.68, 0, 0, 1.96421, 0, 0),(14378, 159, 9712.54, 2553.65, 1335.68, 0, 0, 1.91708, 0, 0),
(14378, 160, 9708.45, 2562.34, 1335.68, 0, 0, 2.04275, 0, 0),(14378, 161, 9704.53, 2567.86, 1335.68, 0, 0, 2.21946, 0, 0),(14378, 162, 9694.25, 2580.62, 1335.68, 0, 0, 2.29407, 0, 0),
(14378, 163, 9689.33, 2585.89, 1335.68, 0, 0, 2.34512, 0, 0),(14378, 164, 9683.97, 2591, 1335.68, 0, 0, 2.41581, 0, 0),(14378, 165, 9678.26, 2595.75, 1335.68, 0, 0, 2.47079, 0, 0),
(14378, 166, 9672.37, 2599.93, 1335.68, 0, 0, 2.56896, 0, 0),(14378, 167, 9665.34, 2604.32, 1335.68, 0, 0, 2.47471, 0, 0),(14378, 168, 9662.25, 2608.53, 1335.68, 0, 0, 2.99308, 0, 0),
(14378, 169, 9660.53, 2612.76, 1335.68, 0, 0, 3.48395, 0, 0),(14378, 170, 9660.33, 2624.77, 1335.68, 0, 0, 4.03373, 0, 0),(14378, 171, 9659.92, 2629.83, 1335.68, 0, 0, 5.29429, 0, 0),
(14378, 172, 9656.99, 2633.21, 1335.68, 0, 0, 2.63898, 0, 0),(14378, 173, 9652.51, 2633.65, 1335.68, 0, 0, 3.23588, 0, 0),(14378, 174, 9650.51, 2632.43, 1335.68, 0, 0, 3.95845, 0, 0),
(14378, 175, 9649.64, 2628.57, 1335.68, 0, 0, 4.30794, 0, 0),(14378, 176, 9649.42, 2625.32, 1335.68, 0, 0, 4.78703, 0, 0),(14378, 177, 9650.64, 2608.98, 1335.68, 0, 0, 4.78703, 0, 0),
(14378, 178, 9653.03, 2601.61, 1335.68, 0, 0, 5.16009, 0, 0);
-- Classic [0918]
-- Blackrock Depths - Lord Roccor -- Waypoints
SET @POINT := 0;
UPDATE creature SET position_x = 654.6364, position_y = -172.4347, position_z = -73.61314, orientation = 5.094945, modelid = 0, spawndist = 0 WHERE id = 9025;
DELETE FROM creature_movement WHERE id = (SELECT guid FROM creature WHERE id = 9025);
DELETE FROM creature_movement_template WHERE entry = 9025;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(9025, @POINT := @POINT + 1, 657.9712, -180.7225, -74.74625, 0, 0, 0, 0, 0),
(9025, @POINT := @POINT + 1, 658.9824, -196.5155, -76.57832, 0, 0, 0, 0, 0),
(9025, @POINT := @POINT + 1, 657.6954, -216.0597, -80.31235, 0, 0, 0, 0, 0),
(9025, @POINT := @POINT + 1, 640.0506, -245.6001, -83.58563, 0, 0, 0, 0, 0),
(9025, @POINT := @POINT + 1, 615.5219, -267.3967, -83.59071, 0, 0, 0, 0, 0),
(9025, @POINT := @POINT + 1, 601.0486, -274.4931, -83.14562, 0, 0, 0, 0, 0),
(9025, @POINT := @POINT + 1, 578.9769, -274.0088, -80.12082, 0, 0, 0, 0, 0),
(9025, @POINT := @POINT + 1, 556.1347, -263.5568, -73.27393, 0, 0, 0, 0, 0),
(9025, @POINT := @POINT + 1, 578.9769, -274.0088, -80.12082, 0, 0, 0, 0, 0),
(9025, @POINT := @POINT + 1, 601.0486, -274.4931, -83.14562, 0, 0, 0, 0, 0),
(9025, @POINT := @POINT + 1, 615.5219, -267.3967, -83.59071, 0, 0, 0, 0, 0),
(9025, @POINT := @POINT + 1, 640.0062, -245.6395, -83.58392, 0, 0, 0, 0, 0),
(9025, @POINT := @POINT + 1, 657.6954, -216.0597, -80.31235, 0, 0, 0, 0, 0),
(9025, @POINT := @POINT + 1, 658.9824, -196.5155, -76.57832, 0, 0, 0, 0, 0),
(9025, @POINT := @POINT + 1, 657.9712, -180.7225, -74.74625, 0, 0, 0, 0, 0),
(9025, @POINT := @POINT + 1, 651.8094, -164.6052, -72.57027, 0, 0, 0, 0, 0);
-- Classic [0914]
-- Hillsbrad Foothills - Quest: Elixir of Suffering, Pain & Agony 
-- These chains are not consecutive, you can have all three in your questlog.
UPDATE quest_template SET PrevQuestId = 0 WHERE entry = 509; 
UPDATE quest_template SET PrevQuestId = 0 WHERE entry = 501; 
-- Classic [0912]
UPDATE quest_template SET PrevQuestId = 0 WHERE entry = 3761;
-- Classic [0911]
-- 1k Needles - Vile Sting should move around and enjoy his life.
UPDATE creature SET spawndist = 30, MovementType = 1 WHERE id = 5937;
-- Classic [0910]
-- Blackrock Depths - Mistress Nagmara wasn't serving the lower part of Plugger Spazzring's bar.
SET @POINT := 0;
UPDATE creature SET position_x = 874.3762, position_y = -187.6327, position_z = -43.62038, orientation = 2.164208, modelid = 0, spawndist = 0 WHERE id = 9500;
DELETE FROM creature_movement WHERE id = (SELECT guid FROM creature WHERE id = 9500);
DELETE FROM creature_movement_template WHERE entry = 9500;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(9500, @POINT := @POINT + 1, 876.3792, -197.3044, -43.70371, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 865.9424, -201.7926, -43.70371, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 856.1331, -216.7420, -43.70494, 0, 0, 0, 0, 0),
-- (9500, @POINT := @POINT + 1, 847.7590, -219.7263, -43.70203, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 847.7590, -219.7263, -43.70203, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 842.4940, -211.2741, -43.69165, 0, 0, 0, 0, 0),
-- (9500, @POINT := @POINT + 1, 834.2650, -195.0288, -49.75323, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 834.2650, -195.0288, -49.75323, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 827.3196, -180.0794, -49.75323, 0, 0, 0, 0, 0),
-- (9500, @POINT := @POINT + 1, 830.1271, -170.9186, -49.75323, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 830.1271, -170.9186, -49.75323, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 837.7622, -167.4380, -49.75323, 0, 0, 0, 0, 0),
-- (9500, @POINT := @POINT + 1, 834.8788, -158.4584, -49.75323, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 834.8788, -158.4584, -49.75323, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 850.8875, -158.5179, -49.75803, 0, 0, 0, 0, 0),
-- (9500, @POINT := @POINT + 1, 860.3868, -144.9282, -49.75497, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 860.3868, -144.9282, -49.75497, 0, 0, 0, 0, 0),
-- (9500, @POINT := @POINT + 1, 873.7460, -150.5549, -49.75750, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 873.7460, -150.5549, -49.75750, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 871.8535, -157.4179, -49.75930, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 860.0489, -158.3442, -49.75855, 0, 0, 0, 0, 0),
-- (9500, @POINT := @POINT + 1, 843.7286, -164.5333, -49.75323, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 843.7286, -164.5333, -49.75323, 0, 0, 0, 0, 0),
-- (9500, @POINT := @POINT + 1, 831.4695, -174.8025, -49.75323, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 831.4695, -174.8025, -49.75323, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 832.6170, -186.6620, -49.75323, 0, 0, 0, 0, 0),
-- (9500, @POINT := @POINT + 1, 839.8559, -204.9304, -46.02564, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 839.8559, -204.9304, -46.02564, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 849.8252, -218.7138, -43.70274, 0, 0, 0, 0, 0),
-- (9500, @POINT := @POINT + 1, 855.3878, -214.2639, -43.70450, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 855.3878, -214.2639, -43.70450, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 867.6884, -203.8905, -43.70837, 0, 0, 0, 0, 0),
-- (9500, @POINT := @POINT + 1, 890.0127, -185.4018, -43.70371, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 890.0127, -185.4018, -43.70371, 0, 0, 0, 0, 0);
-- Classic [0907]
-- Blackrock Depths - The Phalanx 
UPDATE creature_template SET MovementType = 0 WHERE Entry = 9502;
UPDATE creature SET modelid = 0, position_x = 847.848, position_y = -230.0667, position_z = -43.61398, orientation = 1.64061, spawntimesecs = 604800 WHERE id = 9502;
-- Classic [0905]
-- Fixed drop chance of item 20378 (Twilight Tablet Fragment) in Silithus
-- The item should not drop 100% of the time for players on the quest as
-- the main source intented are the GO on the ground
UPDATE creature_loot_template SET ChanceOrQuestChance = -5 WHERE item = 20378;
-- Classic [0904]
-- Fixed Z position of GO 30856 (Atal'ai Artifact) in Swamp of Sorrows
UPDATE gameobject SET position_z = 18.79 WHERE guid = 30561;
-- Classic [0903]
-- Added missing recipes/plans loots in item 20469 (Decoded True Believer Clippings)
-- Source: http://www.wowhead.com/item=20469#contains
DELETE FROM item_loot_template WHERE entry = 20469 AND item IN (20546, 20547, 20548, 20553, 20554, 20555);
INSERT INTO item_loot_template VALUES
(20469, 20546, 5, 0, 1, 1, 0),
(20469, 20547, 5, 0, 1, 1, 0),
(20469, 20548, 5, 0, 1, 1, 0),
(20469, 20553, 5, 0, 1, 1, 0),
(20469, 20554, 5, 0, 1, 1, 0),
(20469, 20555, 5, 0, 1, 1, 0);
-- Classic [0902]
-- Fixed drop chance of item 4892 (Durotar Tiger Fur) which was too low
UPDATE creature_loot_template SET ChanceOrQuestChance = -35 WHERE item = 4892;

-- UDB_124
-- q.11128 'Propaganda War'
DELETE FROM dbscripts_on_quest_end WHERE id = 11128;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11128,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Calia active'),
(11128,1,29,2,2,0,0,0,0,0,0,0,0,0,0,0,'npc_flag removed'),
(11128,1,0,0,0,0,0,0,2000000464,0,0,0,0,0,0,0,''),
(11128,3,3,0,0,0,0,0,0,0,0,0,-3817.38,-4566.12,8.84245,1.07843,''),
(11128,5,3,0,0,0,0,0,0,0,0,0,-3816.62,-4564.31,8.97211,1.1499,''),
(11128,6,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11128,15,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11128,15,3,0,0,0,0,0,0,0,0,0,-3817.38,-4566.12,8.84245,0,''),
(11128,16,3,0,0,0,0,0,0,0,0,0,-3819.74,-4562.35,9.14216,2.40855,''),
(11128,17,0,0,0,0,0,0,2000000465,0,0,0,0,0,0,0,''),
(11128,19,29,2,1,0,0,0,0,0,0,0,0,0,0,0,'npc_flag added'),
(11128,20,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Calia unactive');
UPDATE quest_template SET CompleteScript = 11128 WHERE entry = 11128;
DELETE FROM db_script_string WHERE entry IN (2000000464,2000000465);
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000464,'It would be a shame to let these leaflets go to waste, wouldn\'t it?',0,0,0,1,NULL),
(2000000465,'With just a little creative editing, these are much more useful... ',0,0,0,0,NULL);

-- UDB_125
-- Theramore -- Update
-- Sergeant Amelyn -- waypoints
-- Theramore Guards came back frome future (cata) -- and now have correct (wotlk) waypoints
-- Missing ones added
-- also small update for: Stitched Horror - correct spawn
-- Sergeant Amelyn -- waypoints
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 18589;
DELETE FROM creature_movement WHERE id = 18589;
UPDATE creature_template SET MovementType = 2 WHERE entry = 23835;
DELETE FROM creature_movement_template WHERE entry = 23835;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(23835,1,-3845.5,-4561.34,8.42438,0,0,5.89954,0,0),(23835,2,-3838.69,-4562.43,8.51284,0,0,0.255656,0,0),(23835,3,-3834.04,-4560.31,8.67834,0,0,0.699406,0,0),
(23835,4,-3831.14,-4555.43,8.90911,0,0,1.3183,0,0),(23835,5,-3832.25,-4547.09,9.17283,0,0,2.25921,0,0),(23835,6,-3837.1,-4542.97,9.21158,0,0,2.65074,0,0),
(23835,7,-3843.13,-4541.69,9.09676,0,0,3.36152,0,0),(23835,8,-3849.58,-4544.78,8.78854,0,0,3.84454,0,0),(23835,9,-3852.47,-4549.77,8.59729,0,0,4.50507,0,0),
(23835,10,-3850.63,-4556.64,8.43525,0,0,5.49623,0,0),(23835,11,-3846.7,-4558.22,8.51499,0,0,5.51351,0,0),(23835,12,-3846.7,-4558.22,8.51499,150000,0,3.89208,0,0);
-- Theramore Guards -- spawn point corrected
UPDATE creature SET position_x = -3864.047119, position_y = -4574.887207, position_z = 8.050746, orientation = 3.975231, spawndist = 15, MovementType = 1 WHERE guid = 30656;
-- Theramore Guards should work in pairs
-- 30634 and 30634 - wrong wps fixed. + link 
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 30634;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 30633;
DELETE FROM creature_movement WHERE id IN (30634,30633);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(30634,1,-3618.87,-4338.46,8.92569,0,0,0.670259,0,0),(30634,2,-3605.54,-4327.62,9.43362,0,0,0.685966,0,0),(30634,3,-3595.24,-4319,7.52476,3000,0,0.639628,0,0),
(30634,4,-3596.5,-4325.37,8.36596,0,0,3.70033,0,0),(30634,5,-3611.79,-4337.68,9.46105,0,0,3.80636,0,0),(30634,6,-3623.07,-4346.82,7.74394,0,0,3.80089,0,0),
(30634,7,-3629.41,-4351.74,5.99012,0,0,3.80089,0,0),(30634,8,-3651.49,-4369.54,9.3791,2000,0,3.8417,0,0),(30634,9,-3649.29,-4363.62,9.23098,0,0,0.660052,0,0),
(30634,10,-3631.88,-4349.01,6.05115,0,0,0.692253,0,0);
DELETE FROM creature_linking WHERE guid = 30633;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(30633, 30634, 512);
-- 30644 and 30643 - wrong wps fixed + link
UPDATE creature SET position_x = -3684.833740, position_y = -4475.191895, position_z = 11.761748, orientation = 0.844338 WHERE guid = 30643;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 30643;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 30644;
DELETE FROM creature_movement WHERE id IN (30643,30644);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(30643,1,-3679.7,-4468.75,11.5796,1000,497901,1.15329,0,0),(30643,2,-3675.39,-4456.55,11.4846,0,0,1.47138,0,0),(30643,3,-3673.94,-4419.96,11.2135,0,0,1.54599,0,0),
(30643,4,-3674.24,-4400.51,10.7088,0,0,1.73213,0,0),(30643,5,-3675.96,-4394.77,10.624,0,0,2.19316,0,0),(30643,6,-3680.25,-4392.75,10.6125,0,0,3.02568,0,0),
(30643,7,-3696.75,-4392.7,13.5437,0,0,3.12464,0,0),(30643,8,-3703.1,-4392.73,15.9825,0,0,3.57782,0,0),(30643,9,-3707.81,-4395.67,17.7928,0,0,3.92187,0,0),
(30643,10,-3711.49,-4401.82,20.4451,0,0,4.24388,0,0),(30643,11,-3714.61,-4409.16,23.324,0,0,4.08602,0,0),(30643,12,-3721.77,-4415.38,26.1858,3000,0,3.83941,0,0),
(30643,13,-3720.04,-4409.84,24.4707,0,0,0.827402,0,0),(30643,14,-3716.21,-4404.82,22.4493,0,0,1.12585,0,0),(30643,15,-3713.1,-4397.83,19.645,0,0,0.982126,0,0),
(30643,16,-3709.22,-4392.7,17.7584,0,0,0.61613,0,0),(30643,17,-3704.55,-4390.33,16.2071,0,0,0.273697,0,0),(30643,18,-3696.17,-4389.93,13.1989,0,0,6.25843,0,0),
(30643,19,-3689.48,-4389.6,11.1495,0,0,0.27998,0,0),(30643,20,-3682.87,-4387.13,10.6097,0,0,0.118188,0,0),(30643,21,-3676.26,-4387.96,10.4594,0,0,5.65368,0,0),
(30643,22,-3671.9,-4393.95,10.5895,0,0,4.95546,0,0),(30643,23,-3670.12,-4407.01,10.613,0,0,4.78111,0,0),(30643,24,-3670.61,-4434.57,11.2723,0,0,4.65937,0,0),
(30643,25,-3671.58,-4453.53,11.3598,0,0,4.48344,0,0),(30643,26,-3675.29,-4467.09,11.3622,0,0,4.17007,0,0),(30643,27,-3681.77,-4477.23,11.4931,0,0,3.91561,0,0),
(30643,28,-3691.84,-4485.12,11.9509,0,0,3.68313,0,0),(30643,29,-3704.93,-4492,12.2934,0,0,3.56532,0,0),(30643,30,-3722.11,-4499.53,12.6519,0,0,3.52212,0,0),
(30643,31,-3737.38,-4504.39,12.7619,0,0,3.41217,0,0),(30643,32,-3755.25,-4509.12,12.5852,0,0,3.41452,0,0),(30643,33,-3771.1,-4512.03,12.2303,0,0,3.3242,0,0),
(30643,34,-3795.2,-4513.99,11.5415,0,0,3.46636,0,0),(30643,35,-3807.35,-4521.96,9.75797,0,0,3.91168,0,0),(30643,36,-3822.92,-4537.21,9.21865,0,0,3.91718,0,0),
(30643,37,-3830.78,-4545.17,9.21865,0,0,4.06797,0,0),(30643,38,-3830.35,-4551.46,9.06977,0,0,4.6688,0,0),(30643,39,-3831.51,-4558.27,8.85811,0,0,4.346,0,0),
(30643,40,-3836.16,-4563.35,8.56187,0,0,3.5881,0,0),(30643,41,-3843.31,-4564.34,8.37255,0,0,3.01683,0,0),(30643,42,-3850.33,-4561.42,8.30779,0,0,2.45291,0,0),
(30643,43,-3854.74,-4554.54,8.38975,0,0,1.717,0,0),(30643,44,-3852.95,-4546.57,8.63064,0,0,1.10351,0,0),(30643,45,-3848.58,-4542.12,9.00319,0,0,0.421784,0,0),
(30643,46,-3840.52,-4541.22,9.1465,0,0,6.15755,0,0),(30643,47,-3835.21,-4543.37,9.18398,0,0,0.279628,0,0),(30643,48,-3825.16,-4533.75,9.21787,0,0,0.79485,0,0),
(30643,49,-3809.29,-4519.13,9.85881,0,0,0.649551,0,0),(30643,50,-3800.73,-4512.63,11.4626,0,0,0.429639,0,0),(30643,51,-3793.88,-4509.93,11.5422,0,0,0.0589311,0,0),
(30643,52,-3777.41,-4509.2,12.2954,0,0,0.122582,0,0),(30643,53,-3755.42,-4504.67,12.9063,0,0,0.17756,0,0),(30643,54,-3731.24,-4498.58,13.0048,0,0,0.236465,0,0),
(30643,55,-3716.4,-4493.13,12.7937,0,0,0.377837,0,0),(30643,56,-3701.82,-4486.44,12.3934,0,0,0.436742,0,0),(30643,57,-3691.81,-4480.81,12.0252,0,0,0.625237,0,0),
(30643,58,-3685.02,-4475.38,11.7683,1000,497902,0.774463,0,0);
DELETE FROM creature_linking WHERE guid = 30644;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(30644, 30643, 512);
-- 30638 and 30639 - wrong wps fixed + link
UPDATE creature SET position_x = -3692.260010, position_y = -4377.211914, position_z = 10.612564, orientation = 5.529586 WHERE guid = 30638;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 30638;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 30639;
DELETE FROM creature_movement WHERE id IN (30638,30639);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(30639,1,-3680.76,-4381.97,10.5645,1000,497901,5.72122,0,0),(30639,2,-3673.04,-4391.08,10.5271,0,0,5.05442,0,0),(30639,3,-3669.26,-4409.72,10.6197,0,0,4.77561,0,0),
(30639,4,-3669.39,-4431.5,11.264,0,0,4.68529,0,0),(30639,5,-3671.5,-4454.84,11.3452,0,0,4.66094,0,0),(30639,6,-3675.31,-4467.79,11.3624,0,0,4.14415,0,0),
(30639,7,-3687.56,-4481.97,11.7599,0,0,3.86063,0,0),(30639,8,-3706.28,-4492.55,12.3353,0,0,3.57003,0,0),(30639,9,-3727.55,-4501.54,12.7,0,0,3.37761,0,0),
(30639,10,-3749.83,-4508,12.6542,0,0,3.4208,0,0),(30639,11,-3768.59,-4511.94,12.275,0,0,3.33441,0,0),(30639,12,-3784.12,-4513.69,11.8161,0,0,3.22053,0,0),
(30639,13,-3791.71,-4513.16,11.5189,0,0,2.81605,0,0),(30639,14,-3798.05,-4508.75,11.5403,0,0,2.26705,0,0),(30639,15,-3806.97,-4489.25,11.9206,0,0,1.96389,0,0),
(30639,16,-3814.24,-4470.58,12.6997,0,0,1.80759,0,0),(30639,17,-3814.65,-4447.15,12.7041,0,0,1.54527,0,0),(30639,18,-3814.78,-4427.61,12.7665,0,0,1.60025,0,0),
(30639,19,-3811.63,-4414.81,12.7831,0,0,1.23504,0,0),(30639,20,-3804.17,-4401.99,11.7984,0,0,0.700967,0,0),(30639,21,-3790.15,-4393.62,10.4463,0,0,0.286277,0,0),
(30639,22,-3766.9,-4387.99,10.8432,0,0,0.422151,0,0),(30639,23,-3735.79,-4371.46,10.6132,0,0,0.492837,0,0),(30639,24,-3720.68,-4364.3,10.6123,0,0,0.313766,0,0),
(30639,25,-3706.65,-4364.11,10.613,0,0,5.8901,0,0),(30639,26,-3691.2,-4375.61,10.6133,1000,497902,5.81774,0,0);
DELETE FROM creature_linking WHERE guid = 30638;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(30638, 30639, 512);
-- 54310 and 54571 -- missing added + link
-- UDB empty guids reused
DELETE FROM creature WHERE guid IN (54310,54571);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(54310,4979,1,1,1,0,0,-3807.06,-4479.2,12.6748,5.12423,360,0,0,5071,0,0,2),
(54571,4979,1,1,1,0,0,-3808.67,-4479.9,12.6631,5.12423,360,0,0,5071,0,0,0);
DELETE FROM creature_movement WHERE id IN (54310,54571);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(54310,1,-3800.44,-4494.17,11.5613,1000,497901,5.11638,0,0),(54310,2,-3797.36,-4503.56,11.5546,0,0,4.77001,0,0),(54310,3,-3798.16,-4511.52,11.5428,0,0,4.30035,0,0),
(54310,4,-3805.8,-4520.85,9.95399,0,0,3.96577,0,0),(54310,5,-3822.64,-4538.08,9.21827,0,0,3.93435,0,0),(54310,6,-3830.74,-4544.93,9.21827,0,0,3.76785,0,0),
(54310,7,-3836.15,-4546.38,9.25034,0,0,2.96046,0,0),(54310,8,-3842.03,-4544.86,9.22394,0,0,3.08933,0,0),(54310,9,-3847.31,-4546.23,8.90135,0,0,3.79383,0,0),
(54310,10,-3850.49,-4551.63,8.63787,0,0,4.67868,0,0),(54310,11,-3848.9,-4557.78,8.43152,0,0,5.3981,0,0),(54310,12,-3843.6,-4561.7,8.45701,0,0,6.18977,0,0),
(54310,13,-3836.59,-4560.35,8.69577,0,0,0.54119,0,0),(54310,14,-3832.98,-4555.53,8.8495,0,0,1.20407,0,0),(54310,15,-3832.91,-4548.91,9.08172,0,0,1.73028,0,0),
(54310,16,-3831.78,-4542.91,9.21922,0,0,0.994365,0,0),(54310,17,-3825.16,-4534.65,9.21922,0,0,0.721831,0,0),(54310,18,-3802.37,-4512.15,11.3335,3000,0,0.803513,0,0),
(54310,19,-3801.35,-4504.08,11.573,0,0,1.7185,0,0),(54310,20,-3804.61,-4493.02,11.66,0,0,1.88736,0,0),(54310,21,-3811.27,-4476.45,12.6976,0,0,1.75542,0,0),
(54310,22,-3813.51,-4466.46,12.6997,0,0,1.62347,0,0),(54310,23,-3813.86,-4450.22,12.7001,0,0,1.58027,0,0),(54310,24,-3813.57,-4428.9,12.7114,0,0,1.43026,0,0),
(54310,25,-3811.28,-4417.94,12.7054,0,0,1.13809,0,0),(54310,26,-3804.17,-4404.95,12.0706,0,0,0.908756,0,0),(54310,27,-3795.55,-4396.78,10.7908,0,0,0.428092,0,0),
(54310,28,-3783.55,-4392.79,10.6013,0,0,0.251378,0,0),(54310,29,-3764.57,-4388,10.7648,0,0,0.395891,0,0),(54310,30,-3744.72,-4376.1,10.6153,0,0,0.549044,0,0),
(54310,31,-3722.36,-4366.04,10.6126,0,0,0.415526,0,0),(54310,32,-3718.78,-4363.55,10.6126,0,0,0.970803,0,0),(54310,33,-3717.35,-4355.41,10.6126,0,0,1.50723,0,0),
(54310,34,-3716.43,-4347.11,10.6126,0,0,1.2504,0,0),(54310,35,-3712.34,-4341.61,10.6126,4000,0,0.890489,0,0),(54310,36,-3715.46,-4364.03,10.6124,0,0,4.14754,0,0),
(54310,37,-3722.47,-4368.69,10.6124,0,0,3.7428,0,0),(54310,38,-3743.64,-4379.64,10.6884,0,0,3.60536,0,0),(54310,39,-3763.98,-4390.51,10.7454,0,0,3.49147,0,0),
(54310,40,-3791.73,-4398.1,10.5897,0,0,3.37759,0,0),(54310,41,-3800.01,-4403.57,11.464,0,0,3.85904,0,0),(54310,42,-3808.22,-4416.12,12.7012,0,0,4.39704,0,0),
(54310,43,-3810.66,-4428.11,12.7104,0,0,4.78345,0,0),(54310,44,-3811.06,-4452.62,12.7018,0,0,4.68135,0,0),(54310,45,-3811.04,-4466.99,12.718,0,0,4.96409,0,0),
(54310,46,-3807.09,-4479.09,12.6775,1000,497902,5.08975,0,0);
DELETE FROM creature_linking WHERE guid = 54571;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(54571, 54310, 512);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 497901 AND 497902; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(497901,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Theramore Guard - active'),
(497902,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Theramore Guard - unactive');
-- Stitched Horror - correct spawn
UPDATE creature SET position_x = 3359.098633, position_y = -3048.040527, position_z = 165.255981, orientation = 2.147723 WHERE guid = 86295;

-- UDB_126
-- Classic [0904] + UDB correct (ClassicDB was to high)
-- Fixed Z position of GO 30856 (Atal'ai Artifact) in Swamp of Sorrows
UPDATE gameobject SET position_z = 18.6 WHERE guid = 30561;

-- UDB_127
-- q.3382 'A Crew Under Fire'
DELETE FROM dbscripts_on_quest_start WHERE id = 3382;
INSERT INTO dbscripts_on_quest_start  (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3382,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Calia active'),
(3382,1,0,0,0,0,0,0,2000000466,0,0,0,0,0,0,0,''),
(3382,1,22,495,0x01,0,0,0,0,0,0,0,0,0,0,0,'temp faction'),
(3382,2,15,6245,0,8386,35900,7 | 0x10,0,0,0,0,0,0,0,0,''),
(3382,2,15,6245,0,8386,35905,7 | 0x10,0,0,0,0,0,0,0,0,''),
(3382,2,15,6245,0,8386,35906,7 | 0x10,0,0,0,0,0,0,0,0,''),
(3382,2,15,6245,0,8386,35904,7 | 0x10,0,0,0,0,0,0,0,0,''),
(3382,2,15,6245,0,8386,35903,7 | 0x10,0,0,0,0,0,0,0,0,''),
(3382,3,22,495,0x01,8386,35900,7 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(3382,3,22,495,0x01,8386,35905,7 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(3382,3,22,495,0x01,8386,35906,7 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(3382,3,22,495,0x01,8386,35904,7 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(3382,3,22,495,0x01,8386,35903,7 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(3382,4,22,495,0x01,8381,35890,7 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(3382,4,22,495,0x01,8378,35884,7 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(3382,4,22,495,0x01,8382,35891,7 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(3382,4,22,495,0x01,8382,35891,7 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(3382,5,22,495,0x01,8386,35899,7 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(3382,5,10,12205,300000,0,0,0,0,0,0,0,2370.83,-5893.06,10.6607,5.45564,'1st wave'),
(3382,6,10,12204,300000,0,0,0,0,0,0,0,2367.58,-5889.81,11.3931,5.36209,'1st wave'),
(3382,6,10,12204,300000,0,0,0,0,0,0,0,2369.53,-5888.84,11.2888,5.23643,'1st wave'),
(3382,6,10,12204,300000,0,0,0,0,0,0,0,2366.15,-5891.65,11.72,5.46812,'1st wave'),
(3382,59,34,944,3382,0,0,0,0,0,0,0,0,0,0,0,'Stop script if player is dead or out of range'),
(3382,59,34,945,3382,0,0,0,0,0,0,0,0,0,0,0,'Stop script if npc is dead'),
(3382,60,10,12204,300000,0,0,0,0,0,0,0,2370.83,-5893.06,10.6607,5.45564,'2nd wave'),
(3382,61,10,12204,300000,0,0,0,0,0,0,0,2367.58,-5889.81,11.3931,5.36209,'2nd wave'),
(3382,61,10,12205,300000,0,0,0,0,0,0,0,2369.53,-5888.84,11.2888,5.23643,'2nd wave'),
(3382,62,10,12204,300000,0,0,0,0,0,0,0,2366.15,-5891.65,11.72,5.46812,'2nd wave'),
(3382,114,34,944,3382,0,0,0,0,0,0,0,0,0,0,0,'Stop script if player is dead or out of range'),
(3382,114,34,945,3382,0,0,0,0,0,0,0,0,0,0,0,'Stop script if npc is dead'),
(3382,115,10,12204,300000,0,0,0,0,0,0,0,2370.83,-5893.06,10.6607,5.45564,'3rd wave'),
(3382,115,10,12205,300000,0,0,0,0,0,0,0,2367.58,-5889.81,11.3931,5.36209,'3rd wave'),
(3382,116,10,12204,300000,0,0,0,0,0,0,0,2369.53,-5888.84,11.2888,5.23643,'3rd wave'),
(3382,116,10,12204,300000,0,0,0,0,0,0,0,2366.15,-5891.65,11.72,5.46812,'3rd wave'),
(3382,169,34,944,3382,0,0,0,0,0,0,0,0,0,0,0,'Stop script if player is dead or out of range'),
(3382,169,34,945,3382,0,0,0,0,0,0,0,0,0,0,0,'Stop script if npc is dead'),
(3382,170,10,12204,300000,0,0,0,0,0,0,0,2370.83,-5893.06,10.6607,5.45564,'4th wave'),
(3382,170,10,12204,300000,0,0,0,0,0,0,0,2367.58,-5889.81,11.3931,5.36209,'4th wave'),
(3382,170,10,12204,300000,0,0,0,0,0,0,0,2369.53,-5888.84,11.2888,5.23643,'4th wave'),
(3382,170,10,12205,300000,0,0,0,0,0,0,0,2366.15,-5891.65,11.72,5.46812,'4th wave'),
(3382,224,34,944,3382,0,0,0,0,0,0,0,0,0,0,0,'Stop script if player is dead or out of range'),
(3382,224,34,945,3382,0,0,0,0,0,0,0,0,0,0,0,'Stop script if npc is dead'),
(3382,225,10,12205,300000,0,0,0,0,0,0,0,2370.83,-5893.06,10.6607,5.45564,'5th wave'),
(3382,226,10,12204,300000,0,0,0,0,0,0,0,2367.58,-5889.81,11.3931,5.36209,'5th wave'),
(3382,226,10,12204,300000,0,0,0,0,0,0,0,2369.53,-5888.84,11.2888,5.23643,'5th wave'),
(3382,227,10,12205,300000,0,0,0,0,0,0,0,2366.15,-5891.65,11.72,5.46812,'5th wave'),
(3382,279,34,944,3382,0,0,0,0,0,0,0,0,0,0,0,'Stop script if player is dead or out of range'),
(3382,279,34,945,3382,0,0,0,0,0,0,0,0,0,0,0,'Stop script if npc is dead'),
(3382,280,10,12205,300000,0,0,0,0,0,0,0,2370.83,-5893.06,10.6607,5.45564,'final wave'),
(3382,281,10,12204,300000,0,0,0,0,0,0,0,2367.58,-5889.81,11.3931,5.36209,'final wave'),
(3382,281,10,12204,300000,0,0,0,0,0,0,0,2369.53,-5888.84,11.2888,5.23643,'final wave'),
(3382,282,10,12205,300000,0,0,0,0,0,0,0,2366.15,-5891.65,11.72,5.46812,'final wave'),
(3382,334,34,944,3382,0,0,0,0,0,0,0,0,0,0,0,'Stop script if player is dead or out of range'),
(3382,334,34,945,3382,0,0,0,0,0,0,0,0,0,0,0,'Stop script if npc is dead'),
(3382,335,7,3382,0,0,0,0,0,0,0,0,0,0,0,0,'quest credit'),
(3382,337,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Calia unactive');
UPDATE quest_template SET SpecialFlags = 3, StartScript = 3382 WHERE entry = 3382;
DELETE FROM db_script_string WHERE entry = 2000000466;
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000000466,'Stand Prepared! The naga won\'t wait long to press their advantage once they know we\'re alive.',0,0,0,5,'');
-- Spitelash Witch
UPDATE creature_template SET MovementType = 2 WHERE entry = 12205;
DELETE FROM creature_movement_template WHERE entry = 12205;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation,model1,model2) VALUES
(12205,1,2370.83,-5893.06,10.6607,1000,1220501,5.45564,0,0),
(12205,2,2377.23,-5904.07,11.067,0,0,4.84696,0,0),
(12205,3,2378.04,-5915.15,10.7378,0,0,4.5383,0,0),
(12205,4,2374.96,-5932,9.66682,0,0,4.76293,0,0),
(12205,5,2374.06,-5963.62,9.89577,300000,0,4.63726,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1220501;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1220501,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON');
-- Spitelash Raider
UPDATE creature_template SET MovementType = 2 WHERE entry = 12204;
DELETE FROM creature_movement_template WHERE entry = 12204;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation,model1,model2) VALUES
(12204,1,2370.83,-5893.06,10.6607,1000,1220401,5.45564,0,0),
(12204,2,2379.97,-5904.9,10.7712,0,0,4.45113,0,0),
(12204,3,2376.15,-5924.8,9.84824,0,0,4.53485,0,0),
(12204,4,2373.41,-5962.79,9.70075,300000,0,4.66837,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1220401;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1220401,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON');
-- Captain Vanessa Beltis
DELETE FROM gossip_menu WHERE entry = 1641; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(1641, 2293, 0, 0),
(1641, 3073, 0, 1001);
DELETE FROM conditions WHERE condition_entry = 1001;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1001, 9, 3382, 0);
-- Horizon Scout Crewman
UPDATE creature SET orientation = 2.43043 WHERE guid = 35899;

-- UDB_128
-- q.5151'Hypercapacitor Gizmo'
-- Enraged Panther will attack player after cage open.
DELETE FROM dbscripts_on_go_template_use WHERE id = 176195;
INSERT INTO dbscripts_on_go_template_use (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,comments) VALUES
(176195, 3, 26, 0, 0, 10992, 50, 3, 'Enraged Panther - attack');

-- UDB_129
-- r3103
UPDATE creature_template SET ScriptName='npc_black_knight_ghoul' WHERE entry IN (35545,35564,35590);
-- r3116
UPDATE creature_template SET ScriptName='boss_crusader_death_knight' WHERE entry IN (34461,34458);
UPDATE creature_template SET ScriptName='boss_crusader_druid_balance' WHERE entry IN (34460,34451);
UPDATE creature_template SET ScriptName='boss_crusader_druid_resto' WHERE entry IN (34469,34459);
UPDATE creature_template SET ScriptName='boss_crusader_hunter' WHERE entry IN (34467,34448);
UPDATE creature_template SET ScriptName='boss_crusader_mage' WHERE entry IN (34468,34449);
UPDATE creature_template SET ScriptName='boss_crusader_paladin_holy' WHERE entry IN (34465,34445);
UPDATE creature_template SET ScriptName='boss_crusader_paladin_retri' WHERE entry IN (34471,34456);
UPDATE creature_template SET ScriptName='boss_crusader_priest_disc' WHERE entry IN (34466,34447);
UPDATE creature_template SET ScriptName='boss_crusader_priest_shadow' WHERE entry IN (34473,34441);
UPDATE creature_template SET ScriptName='boss_crusader_rogue' WHERE entry IN (34472,34454);
UPDATE creature_template SET ScriptName='boss_crusader_shaman_enha' WHERE entry IN (34463,34455);
UPDATE creature_template SET ScriptName='boss_crusader_shaman_resto' WHERE entry IN (34470,34444);
UPDATE creature_template SET ScriptName='boss_crusader_warlock' WHERE entry IN (34474,34450);
UPDATE creature_template SET ScriptName='boss_crusader_warrior' WHERE entry IN (34475,34453);

-- UDB_130
-- ToC25 - Valkyrs
-- addons
DELETE FROM creature_template_addon WHERE entry IN (34628,34630);
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, auras) VALUES
(34628, 0, 0x0, 0x1, '65796'),
(34630, 0, 0x0, 0x1, '65794');
-- spell clicks
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (34567,34568);
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, quest_start_active, quest_end, cast_flags, condition_id) VALUES
(34567,65684,0,0,0,1,0),
(34568,65686,0,0,0,1,0);
-- spell target
DELETE FROM spell_script_target WHERE entry IN (66133);
insert into spell_script_target (entry,type,targetEntry,inverseEffectMask) values
(66133,1,34497,0),
(66133,1,34496,0);
-- movement
DELETE FROM creature_movement_template WHERE entry IN (34497);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id, waittime, orientation) VALUES
(34497,1,571.684,204.902,399.263,3449701,0,0),
(34497,2,572.097,200.955,401.193,0,0,0),
(34497,3,571.792,184.486,401.215,0,0,0),
(34497,4,583.332,178.722,401.208,0,0,0),
(34497,5,584.479,167.847,400.696,3449605,1000,4.59022);
DELETE FROM creature_movement_template WHERE entry IN (34496);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id, waittime, orientation) VALUES
(34496,1,555.451,205.888,399.263,3449601,0,0),
(34496,2,554.634,202.500,401.184,0,0,0),
(34496,3,555.075,179.826,401.202,0,0,0),
(34496,4,540.257,175.635,400.786,0,0,0),
(34496,5,540.467,170.601,400.772,3449605,1000,4.88692);
-- scripts
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3449701,3449601,3449605);
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,x,y,z,comments) VALUES
-- pause wp
(3449605,0,32,1,0,0,0,0,0,0,0,'Valkyr - pause wp'),
-- light valkyr
(3449701,1,10,34568,0,0,0,0,542.644,117.319,394.784,'Summon Light Essence'),
(3449701,1,10,34568,0,0,0,0,589.743,163.095,394.775,'Summon Light Essence'),
(3449701,1,10,34720,0,0,0,0,526.3368, 99.55556, 395.2900,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,514.7847, 118.7309, 395.2871,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,510.7587, 127.3333, 395.2625,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,509.6389, 133.2604, 395.2467,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,520.2118, 108.4288, 395.2892,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,538.0243, 92.44097, 395.2885,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,588.6754, 93.09375, 395.2885,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,546.0573, 88.76910, 395.2838,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,615.4011, 130.8160, 395.2631,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,599.3073, 98.80035, 395.2898,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,606.6858, 106.7309, 395.2894,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,580.4861, 89.69097, 395.2867,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,570.7795, 86.29861, 395.2533,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,612.1180, 118.8438, 395.2871,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,555.6945, 86.02084, 395.2529,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,507.1806, 142.2847, 395.2546,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,517.7222, 169.0694, 395.2889,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,515.3993, 159.7500, 395.2871,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,524.2570, 178.1337, 395.2896,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,511.1320, 151.1563, 395.2640,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,544.0938, 184.6476, 395.2856,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,563.9965, 187.6441, 395.4890,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,610.9827, 164.6962, 395.2883,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,581.2430, 184.0625, 395.2871,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,592.1511, 183.8004, 395.2789,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,603.5278, 175.4757, 395.2891,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,577.7570, 184.4358, 395.2889,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,557.7430, 187.7292, 395.9153,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,551.3281, 187.6458, 395.5959,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,535.9236, 184.2066, 395.2793,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,571.1580, 187.6910, 395.6292,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,615.1371, 150.8177, 395.2690,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,618.9653, 139.1736, 395.2881,'Summon Val\'kyr Twins Bullet Stalker Light'),
-- dark valkyr
(3449601,1,10,34567,0,0,0,0,536.550,164.550,394.785,'Summon Dark Essence'),
(3449601,1,10,34567,0,0,0,0,588.208,115.666,394.530,'Summon Dark Essence'),
(3449601,1,10,34704,0,0,0,0,515.3524, 115.3490, 395.2883,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,511.4167, 127.1580, 395.2664,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,522.9549, 102.1267, 395.2899,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,578.7222, 87.44444, 395.2724,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,534.7483, 92.64236, 395.2892,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,605.5139, 103.8628, 395.2897,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,549.7639, 86.44444, 395.2658,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,616.4323, 126.4184, 395.2641,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,611.6563, 114.2813, 395.2884,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,592.7361, 93.66666, 395.2889,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,563.4670, 81.93229, 395.2878,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,514.5660, 159.9184, 395.2870,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,509.7431, 149.0052, 395.2527,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,526.8333, 181.7830, 395.2847,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,518.5035, 170.6493, 395.2891,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,506.0382, 139.5174, 395.2882,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,554.8177, 187.5677, 395.2875,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,577.2986, 186.8542, 395.2890,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,608.1163, 171.7309, 395.2892,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,620.4653, 134.6597, 395.2328,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,586.3438, 184.0781, 395.2831,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,547.7604, 184.6337, 395.2885,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,597.3802, 183.6719, 395.2797,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,560.4844, 187.7431, 395.9587,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,573.5781, 187.6649, 395.4919,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,568.0486, 187.6701, 395.5632,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,539.1788, 184.1319, 395.2818,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,615.1371, 156.9965, 395.2795,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,619.7708, 143.7101, 395.2442,'Summon Val\'kyr Twins Bullet Stalker Dark');

-- UDB_131
-- q.12755 'A Meeting With Fate'
-- Scarlet Champions will be happy to see heir courier arrived... 
-- spell
DELETE FROM dbscripts_on_spell WHERE id = 53083;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(53083,1,35,5,12,0,0,6,0,0,0,0,0,0,0,0,'Send event AI');
-- Target for 53083
DELETE FROM spell_script_target WHERE entry = 53083;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES 
(53083,1,29080);

-- UDB_132
-- ToC25
-- linking
DELETE FROM creature_linking_template WHERE entry IN (34496,34704,34720,34628,34630,34567,34568);
INSERT INTO creature_linking_template (entry,map,master_entry,flag,search_range) VALUES
(34496,649,34497,4099,0),
(34704,649,34497,4112,0),
(34720,649,34497,4112,0),
(34628,649,34497,4112,0),
(34630,649,34497,4112,0),
(34567,649,34497,4112,0),
(34568,649,34497,4112,0);
-- achiev criterias
-- upper back pain
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (11779,11780,11802,11801) AND type IN (11, 18);
INSERT INTO achievement_criteria_requirement VALUES
(11779,18,0,0),
(11780,18,0,0),
(11802,18,0,0),
(11801,18,0,0);
-- three sixty pain spike
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (11838,11861,11839,11862) AND type IN (11, 18);
INSERT INTO achievement_criteria_requirement VALUES
(11838,18,0,0),
(11861,18,0,0),
(11839,18,0,0),
(11862,18,0,0);
-- salt and pepper
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (11778,11818,11860,12258) AND type IN (11, 18);
-- tribute immportality
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (12358,12359) AND type IN (11, 18, 12);
INSERT INTO achievement_criteria_requirement VALUES
(12358,18,0,0),
(12359,18,0,0),
(12358,12,3,0),
(12359,12,3,0);
-- tribute insanity
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (12349,12343) AND type IN (11, 18, 12);
INSERT INTO achievement_criteria_requirement VALUES
(12349,18,0,0),
(12343,18,0,0),
(12349,12,2,0),
(12343,12,3,0);
-- tribute mad skill
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (12347,12348,12341,12342) AND type IN (11, 18, 12);
INSERT INTO achievement_criteria_requirement VALUES
(12347,18,0,0),
(12348,18,0,0),
(12347,12,2,0),
(12348,12,2,0),
(12341,18,0,0),
(12342,18,0,0),
(12341,12,3,0),
(12342,12,3,0);
-- tribute skill
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (12344,12345,12346,12338,12339,12340) AND type IN (11, 18, 12);
INSERT INTO achievement_criteria_requirement VALUES
(12344,18,0,0),
(12345,18,0,0),
(12346,18,0,0),
(12344,12,2,0),
(12345,12,2,0),
(12346,12,2,0),
(12338,18,0,0),
(12339,18,0,0),
(12340,18,0,0),
(12338,12,3,0),
(12339,12,3,0),
(12340,12,3,0);

-- UDB_133
-- Scarlet Armies Approach...(q.12757)
DELETE FROM dbscripts_on_quest_start WHERE id = 12757;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12757,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Obraz active'),
(12757,1,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(12757,1,3,0,0,0,0,0,0,0,0,0,0,0,0,2.391101,''),
(12757,3,15,53105,0,0,0,0,0,0,0,0,0,0,0,0,''),
(12757,5,0,0,0,0,0,0,2000000008,0,0,0,0,0,0,0,''),
(12757,9,3,0,0,0,0,0,0,0,0,0,0,0,0,5.235988,''),
(12757,9,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(12757,10,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Obraz unactive');
UPDATE quest_template SET StartScript = 12757 WHERE entry = 12757;
UPDATE db_script_string SET emote = 25 WHERE entry = 2000000008;
-- dummy for 53105
DELETE FROM dbscripts_on_spell WHERE id = 53105;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(53105,0,15,53097,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- dummy for 53099
DELETE FROM dbscripts_on_spell WHERE id = 53099;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(53099,0,15,53098,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- remove aura after quest completed
UPDATE spell_area SET quest_end = 12756 WHERE spell = 53081;

-- UDB_134
ALTER TABLE db_version CHANGE COLUMN required_12848_01_mangos_spell_template required_12864_01_mangos_spell_template bit;
DELETE FROM spell_template WHERE id IN (68523,68620);
INSERT INTO spell_template VALUES
(68523, 0x00800180, 0x00000000, 0x00000005, 0x00000000, 0x00000000, 101,  37,   6,  22,    7,  28,   4, 0,       0,    0,     'Achievement check - Trial of the Crusader - Not One, But Two Jormungars'),
(68620, 0x00800180, 0x00000000, 0x00000005, 0x00000000, 0x00000000, 101,  37,   6,  22,    7,  28,   4, 0,       0,    0,     'Achievement check - Trial of the Crusader - Resilience Will Fix It');

-- UDB_135
-- Learn to Ride in ....
-- fix for all related quests (Added in patch 3.3.0) 
-- q.14086 'Learn to Ride in Orgrimmar'
DELETE FROM mail_loot_template WHERE entry = 231;
INSERT INTO mail_loot_template VALUES (231, 46880, 100, 0, 1, 1, 0);
-- q.14081 'Learn to Ride in the Eversong Woods'
DELETE FROM mail_loot_template WHERE entry = 232;
INSERT INTO mail_loot_template VALUES (232, 46882, 100, 0, 1, 1, 0);
-- q.14085 'Learn to Ride in Darnassus'
DELETE FROM mail_loot_template WHERE entry = 225;
INSERT INTO mail_loot_template VALUES (225, 46876, 100, 0, 1, 1, 0);
-- q.14079 'Learn to Ride in Elwynn Forest'
DELETE FROM mail_loot_template WHERE entry = 224;
INSERT INTO mail_loot_template VALUES (224, 46875, 100, 0, 1, 1, 0);
-- q.14082 'Learn to Ride at the Exodar'
DELETE FROM mail_loot_template WHERE entry = 227;
INSERT INTO mail_loot_template VALUES (227, 46879, 100, 0, 1, 1, 0);
-- q.14083 'Learn to Ride in Dun Morogh' -- Dwarf ver.
DELETE FROM mail_loot_template WHERE entry = 226;
INSERT INTO mail_loot_template VALUES (226, 46877, 100, 0, 1, 1, 0);
-- q.14084 'Learn to Ride in Dun Morogh' -- Gnome ver.
DELETE FROM mail_loot_template WHERE entry = 228;
INSERT INTO mail_loot_template VALUES (228, 46878, 100, 0, 1, 1, 0);
-- q.14087 'Learn to Ride in Mulgore'
DELETE FROM mail_loot_template WHERE entry = 229;
INSERT INTO mail_loot_template VALUES (229, 46884, 100, 0, 1, 1, 0);
-- q.14089 'Learn to Ride in Tirisfal Glades'
DELETE FROM mail_loot_template WHERE entry = 233;
INSERT INTO mail_loot_template VALUES (233, 46881, 100, 0, 1, 1, 0);
-- q.14088 'Learn to Ride in Durotar'
DELETE FROM mail_loot_template WHERE entry = 230;
INSERT INTO mail_loot_template VALUES (230, 46883, 100, 0, 1, 1, 0);
-- Fix for Ultham Ironhorn <Riding Trainer>
-- This Closes: https://github.com/unified-db/Database/issues/44
UPDATE gossip_menu_option SET condition_id = 0 WHERE menu_id = 4014;

-- UDB_136
-- The Mechanar -- doors added
-- handled by SD2
DELETE FROM gameobject WHERE guid IN (43097,43098,43099,44726);
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(43097, 184322, 554, 3, 1, 242.874, 52.3148, 1.59633, 3.14159, 0, 0, -1, 0, 43200, 0, 1),
(43098, 184632, 554, 3, 1, 236.46, 52.3636, 1.65354, 3.14159, 0, 0, -1, 0, 43200, 0, 1),
(43099, 184069, 550, 1, 1, 743.057, 4.63443, 137.796, 3.14159, 0, 0, -1, 0, 7200, 255, 1),
(44726, 184449, 554, 3, 1, 267.9281, 52.31481, 27.04254, 3.141593, 0, 0, -1, 0, 7200, 255, 0);
UPDATE gameobject SET spawnMask = 3 WHERE id = 184849;
-- objects update
UPDATE gameobject_template SET flags = 32, faction = 1375 WHERE entry IN (184322,184632,184449);
-- Tempest-Forge Destroyer - wps update
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 83173;
DELETE FROM creature_movement WHERE id = 83173;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(83173,1,200.165,52.1172,-0.00492364,0,0,3.01772,0,0),
(83173,2,229.678,52.6314,0.00518766,0,0,0.0214238,0,0);

-- UDB_137
-- Outrunner Alarion  - gossip
UPDATE creature_template SET GossipMenuId = 6573 WHERE entry = 15301;
DELETE FROM gossip_menu WHERE entry = 6573; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6573, 7788, 0, 0),
(6573, 7821, 0, 1004);
DELETE FROM conditions WHERE condition_entry IN (1002, 1003, 1004);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1004, -1, 1003, 1002),
(1003, 8, 8350, 0), 
(1002, 8, 9705, 0);
-- missing text added
DELETE FROM npc_text WHERE ID = 7821;
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values
('7821','','Ah, $N - it is good to see you again.  I trust your affairs go well.','0','1','0','2','0','1','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
-- Champion Sunstriker 
UPDATE creature_template SET EquipmentTemplateId = 243 WHERE Entry = 17812;
-- Champion Lightrend 
UPDATE creature_template SET EquipmentTemplateId = 491 WHERE Entry = 17810;
-- Champion Bloodwrath 
UPDATE creature_template SET EquipmentTemplateId = 352 WHERE Entry = 17809;

-- UDB_138
-- Sergeant Kan'ren - gossip 
DELETE FROM gossip_menu WHERE entry = 7323; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7323, 8698, 0, 0);
UPDATE creature_template SET GossipMenuId = 7323 WHERE Entry = 16924;

-- UDB_139
-- Elisara Sunstriker - gossip
UPDATE creature_template SET GossipMenuId = 7117 WHERE entry = 16147;
DELETE FROM gossip_menu WHERE entry = 7117; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7117, 8378, 0, 0);
-- Larianna Riverwind - gossip
UPDATE creature_template SET GossipMenuId = 7255 WHERE entry = 15398;
DELETE FROM gossip_menu WHERE entry = 7255; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7255, 8575, 0, 0);
-- Sangrias Stillblade
UPDATE creature_template SET EquipmentTemplateId = 352 WHERE Entry = 17716;

-- UDB_140
-- Jane & Kitty
UPDATE creature SET position_x = 10509.476563, position_y = -6503.363281, position_z = 3.391211, Spawndist = 10, MovementType = 1 WHERE guid = 71601;
UPDATE creature SET position_x = 10509.476563, position_y = -6503.363281, position_z = 3.391211, Spawndist = 0, MovementType = 0 WHERE guid = 71942;
-- Nova & Manny
UPDATE creature SET position_x = 10516.872070, position_y = -6494.785645, position_z = 3.605470, Spawndist = 10, MovementType = 1 WHERE guid = 71940;
UPDATE creature SET position_x = 10516.872070, position_y = -6494.785645, position_z = 3.605470, Spawndist = 0, MovementType = 0 WHERE guid = 71941;
-- Links
DELETE FROM creature_linking WHERE guid IN (71942,71941);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(71941, 71940, 512),
(71942, 71601, 512);
-- Jessel
UPDATE creature_template_addon SET bytes1 = 0, auras = NULL WHERE entry = 20100;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 71602;
UPDATE creature_template SET MovementType = 2 WHERE entry = 20100;
DELETE FROM creature_movement_template WHERE entry = 20100;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation,model1,model2) VALUES
(20100,1,10520.5,-6504.38,1.28933,50000,2010001,5.48033,0,0),
(20100,2,10520.5,-6504.38,1.28933,120000,0,5.48033,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2010001;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2010001,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Jessel - active'),
(2010001,2,15,14915,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2010001,3,28,3,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_SLEEP'),
(2010001,14,14,14915,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2010001,15,28,1,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_SIT'),
(2010001,16,0,0,0,0,0,0,2000000467,0,0,0,0,0,0,0,''),
(2010001,21,0,0,0,0,0,0,2000000468,0,0,0,0,0,0,0,''),
(2010001,26,1,22,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2010001,32,0,0,0,20098,71601,7 | 0x10,2000000469,0,0,0,0,0,0,0,'force 20098 to: say text'),
(2010001,37,0,0,0,0,0,0,2000000470,0,0,0,0,0,0,0,''),
(2010001,40,0,0,0,20098,71601,7 | 0x10,2000000471,0,0,0,0,0,0,0,'force 20098 to: say text'),
(2010001,43,15,14915,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2010001,44,28,3,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_SLEEP'),
(2010001,46,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Jessel - unactive');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000467 AND 2000000471;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000467,'%s wakes up, startled.',0,2,0,0,NULL),
(2000000468,'Was... Was it all a dream? Azuremyst, Bloodmyst, Zangarmarsh, Shadowmoon... even Zul\'Aman... Jane! Jane where are you!',0,0,10,6,NULL),
(2000000469,'I\'m right here, daddy. You\'ve been asleep all day long. You sure must be tired!',0,0,10,1,NULL),
(2000000470,'Ah, wonderful. It was all just a dream...',0,0,10,1,NULL),
(2000000471,'%s resumes playing on the beach.',0,2,0,0,NULL);

-- UDB_141
-- duplicates removed
DELETE FROM creature WHERE guid IN (54956,54960,54961,55052,54870);
DELETE FROM creature WHERE guid IN (54956,54960,54961,55052,54870);
DELETE FROM creature_addon WHERE guid IN (54956,54960,54961,55052,54870);
DELETE FROM creature_movement WHERE id IN (54956,54960,54961,55052,54870);
-- Springpaw Cub
UPDATE creature SET position_x = 10321.482422, position_y = -6495.210449, position_z = 59.407784 WHERE guid = 55148;
-- Springpaw Lynx
UPDATE creature SET position_x = 10247.620117, position_y = -6215.413086, position_z = 20.105494 WHERE guid = 55186;
UPDATE creature SET position_x = 10452.853516, position_y = -5888.995605, position_z = 26.841839, spawndist = 2, MovementType = 1 WHERE guid = 55196;
UPDATE creature SET position_x = 10419.024414, position_y = -5885.842285, position_z = 29.109520, spawndist = 5, MovementType = 1 WHERE guid = 55195;
-- #1 Springpaw Lynx + linked Springpaw Cub
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 55187;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 55154;
DELETE FROM creature_movement WHERE id = 55187;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(55187,1,10458.7,-6461.75,25.3096,0,0,2.69832,0,0),(55187,2,10446.6,-6458.02,29.8633,0,0,2.67475,0,0),(55187,3,10433.4,-6446.12,37.5819,0,0,2.09277,0,0),
(55187,4,10435,-6426.54,43.5366,0,0,3.8018,0,0),(55187,5,10415.8,-6447.5,39.7772,0,0,3.57184,0,0),(55187,6,10355.9,-6454.44,36.835,0,0,3.004,0,0),
(55187,7,10333.3,-6447.81,37.878,0,0,3.31423,0,0),(55187,8,10324.4,-6451.51,39.7407,0,0,3.82553,0,0),(55187,9,10320,-6462.56,44.0913,0,0,4.56615,0,0),
(55187,10,10322.7,-6484.17,53.6997,0,0,4.57637,0,0),(55187,11,10317.7,-6497.01,60.8339,0,0,4.19309,0,0),(55187,12,10307.9,-6505.04,64.257,0,0,3.88129,0,0),
(55187,13,10317.2,-6497.38,61.0545,0,0,1.00123,0,0),(55187,14,10322.5,-6484.38,53.8166,0,0,1.44498,0,0),(55187,15,10319.7,-6462.88,44.2848,0,0,1.42928,0,0),
(55187,16,10323.8,-6452.05,39.9808,0,0,0.715349,0,0),(55187,17,10333.9,-6448.02,37.8058,0,0,6.28304,0,0),(55187,18,10355.8,-6454.63,36.8408,0,0,0.00142204,0,0),
(55187,19,10416.1,-6447.69,39.738,0,0,0.540991,0,0),(55187,20,10435.1,-6426.54,43.5425,0,0,0.139653,0,0),(55187,21,10437.2,-6441.96,38.7448,0,0,5.14029,0,0),
(55187,22,10451.5,-6459.26,27.9791,0,0,5.73012,0,0),(55187,23,10463.8,-6463.2,23.7556,0,0,0.0611101,0,0),(55187,24,10479.7,-6460.01,18.7943,0,0,0.45908,0,0),
(55187,25,10507.6,-6444.18,6.25447,0,0,0.592598,0,0),(55187,26,10493.5,-6454.54,12.5756,0,0,3.84415,0,0),(55187,27,10471.7,-6461.68,22.1123,0,0,3.25353,0,0);
-- Link
DELETE FROM creature_linking WHERE guid = 55154;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(55154, 55187, 1+128+512);
-- #2 Springpaw Lynx + linked Springpaw Cub
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 55184;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 55137;
DELETE FROM creature_movement WHERE id = 55184;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(55184,1,10289.1,-6264.54,26.8377,0,0,1.35261,0,0),(55184,2,10309.8,-6231.29,27.396,0,0,1.13819,0,0),(55184,3,10321.1,-6186.69,28.3158,0,0,0.956767,0,0),
(55184,4,10340.9,-6159.06,28.4496,0,0,0.815797,0,0),(55184,5,10368.7,-6131.48,28.6494,0,0,0.650861,0,0),(55184,6,10419.7,-6096.59,31.1992,0,0,0.586458,0,0),
(55184,7,10368.5,-6132.31,28.7687,0,0,3.9621,0,0),(55184,8,10340.4,-6159.97,28.4244,0,0,4.09719,0,0),(55184,9,10321.3,-6187.22,28.3278,0,0,4.40035,0,0),
(55184,10,10309.3,-6231.83,27.4065,0,0,4.17887,0,0),(55184,11,10289.9,-6265.54,26.8542,0,0,4.82579,0,0),(55184,12,10294.2,-6299.01,25.6592,0,0,5.0347,0,0),
(55184,13,10307.8,-6329.77,25.4842,0,0,5.18,0,0),(55184,14,10295.5,-6304.57,25.5505,0,0,1.86012,0,0),(55184,15,10291.5,-6278.09,26.672,0,0,1.66927,0,0);
-- Link
DELETE FROM creature_linking WHERE guid = 55137;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(55137, 55184, 1+128+512);
-- #3 Springpaw Lynx + linked Springpaw Cub
UPDATE creature SET position_x = 10247.2, position_y = -6192.23, position_z = 20.3158, orientation = 4.05487, spawndist = 0, MovementType = 0 WHERE guid = 55164;
UPDATE creature SET position_x = 10245.107422, position_y = -6194.571289, position_z = 20.600983, orientation = 0.629620, spawndist = 0, MovementType = 2 WHERE guid = 55185;
DELETE FROM creature_movement WHERE id = 55185;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(55185,1,10215.7,-6225.87,17.4421,0,0,3.93693,0,0),(55185,2,10182.3,-6258.76,16.1765,0,0,3.95264,0,0),(55185,3,10159.4,-6289.44,16.6755,0,0,4.11129,0,0),
(55185,4,10140.5,-6319.01,16.2499,0,0,4.21182,0,0),(55185,5,10125.6,-6347.21,14.7452,0,0,4.47964,0,0),(55185,6,10116.9,-6365.3,17.9476,0,0,4.24324,0,0),
(55185,7,10127.4,-6343.74,14.5511,0,0,1.13699,0,0),(55185,8,10141.6,-6316.87,16.2922,0,0,0.980267,0,0),(55185,9,10158.4,-6287.66,16.7587,0,0,0.862458,0,0),
(55185,10,10182.8,-6258.34,16.1407,0,0,0.776064,0,0),(55185,11,10215.7,-6225.67,17.451,0,0,0.619769,0,0),(55185,12,10247.1,-6196.39,20.7601,0,0,0.858531,0,0);
-- Link
DELETE FROM creature_linking WHERE guid = 55164;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(55164, 55185, 1+128+512);
-- Tender
UPDATE creature SET position_x = 10446.435547, position_y = -5853.178711, position_z = 7.889363, spawndist = 5, MovementType = 1 WHERE guid = 54885;
UPDATE creature SET position_x = 10242.1, position_y = -5989.23, position_z = 11.6327, spawndist = 5, MovementType = 1 WHERE guid = 54874;
UPDATE creature SET position_x = 10285.502930, position_y = -6059.198730, position_z = 28.442503, spawndist = 5, MovementType = 1 WHERE guid = 54879;
-- Mana Wyrm
UPDATE creature SET position_x = 10306.923828, position_y = -6314.114258, position_z = 26.080843, spawndist = 5, MovementType = 1 WHERE guid = 54953;
UPDATE creature SET position_x = 10262.048828, position_y = -6332.364258, position_z = 26.720581, spawndist = 5, MovementType = 1 WHERE guid = 54950;
UPDATE creature SET position_x = 10267.684570, position_y = -6327.830078, position_z = 24.120268, spawndist = 5, MovementType = 1 WHERE guid = 54949;
UPDATE creature SET position_x = 10293.138672, position_y = -6354.325195, position_z = 23.613668, spawndist = 5, MovementType = 1 WHERE guid = 54982;
UPDATE creature SET position_x = 10374.888672, position_y = -6273.646484, position_z = 26.567240, spawndist = 5, MovementType = 1 WHERE guid = 54954;
UPDATE creature SET position_x = 10392.943359, position_y = -6305.493164, position_z = 33.194088, spawndist = 5, MovementType = 1 WHERE guid = 54955;
UPDATE creature SET position_x = 10409.724609, position_y = -6242.193848, position_z = 32.549530, spawndist = 5, MovementType = 1 WHERE guid = 54963;
UPDATE creature SET position_x = 10413.458008, position_y = -6198.722168, position_z = 32.189342, spawndist = 5, MovementType = 1 WHERE guid = 54968;
UPDATE creature SET position_x = 10382.275391, position_y = -6219.627930, position_z = 30.870153, spawndist = 5, MovementType = 1 WHERE guid = 54964;
UPDATE creature SET position_x = 10363.845703, position_y = -6202.112305, position_z = 30.186720, spawndist = 5, MovementType = 1 WHERE guid = 54976;
UPDATE creature SET position_x = 10374.808594, position_y = -6158.960938, position_z = 31.692713, spawndist = 5, MovementType = 1 WHERE guid = 54974;
UPDATE creature SET position_x = 10382.983398, position_y = -6141.389160, position_z = 32.129307, spawndist = 5, MovementType = 1 WHERE guid = 54973;
UPDATE creature SET position_x = 10211.796875, position_y = -6343.291504, position_z = 30.841400, spawndist = 2, MovementType = 1 WHERE guid = 54935;
UPDATE creature SET position_x = 10216.808594, position_y = -6331.069336, position_z = 30.841400, spawndist = 2, MovementType = 1 WHERE guid = 54936;
UPDATE creature SET position_x = 10233.763672, position_y = -6329.243164, position_z = 30.841400, spawndist = 2, MovementType = 1 WHERE guid = 54941;
UPDATE creature SET position_x = 10215.406250, position_y = -6378.074219, position_z = 30.599432, spawndist = 2, MovementType = 1 WHERE guid = 54943;
UPDATE creature SET spawndist = 2, MovementType = 1 WHERE guid IN (54938,54944,54945,54965,54972,54975,54978,54980,54981);
-- #1 Mana Wyrm
UPDATE creature SET position_x = 10295.235352, position_y = -6329.585938, position_z = 25.686871, orientation = 0.154598, spawndist = 0, MovementType = 2 WHERE guid = 54948;
DELETE FROM creature_movement WHERE id = 54948;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(54948,1,10305.4,-6326.57,25.6189,0,0,0.052492,0,0),(54948,2,10317.7,-6332.25,25.2319,0,0,5.53144,0,0),(54948,3,10324.4,-6340.72,29.7025,0,0,5.48196,0,0),
(54948,4,10329.2,-6356.05,30.9113,0,0,4.53869,0,0),(54948,5,10319.1,-6390.65,34.9596,0,0,4.39994,0,0),(54948,6,10329.4,-6355.33,30.8546,0,0,1.64947,0,0),
(54948,7,10324.8,-6341.94,29.8339,0,0,2.09322,0,0),(54948,8,10317.7,-6332.63,25.255,0,0,2.299,0,0),(54948,9,10313.7,-6326.89,25.7625,0,0,2.99957,0,0),
(54948,10,10293.8,-6331.76,25.6947,0,0,3.5199,0,0),(54948,11,10285,-6334.85,22.229,0,0,3.47671,0,0),(54948,12,10253.9,-6339.01,30.8412,0,0,3.29606,0,0),
(54948,13,10228.6,-6345.13,30.8412,0,0,3.42565,0,0),(54948,14,10253.4,-6339.13,30.8412,0,0,0.123055,0,0),(54948,15,10275.4,-6336.6,23.3411,0,0,0.197668,0,0),
(54948,16,10284.7,-6335.02,22.1083,0,0,0.272281,0,0),(54948,17,10294.6,-6331.33,25.6947,0,0,0.348638,0,0);
-- #2 Mana Wyrm
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 54959;
DELETE FROM creature_movement WHERE id = 54959;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(54959,1,10423.2,-6272.63,31.3037,0,0,4.81022,0,0),(54959,2,10422.4,-6288.56,34.3085,0,0,4.10729,0,0),(54959,3,10416.1,-6294.79,34.8691,0,0,3.757,0,0),
(54959,4,10376.8,-6319.17,32.6519,0,0,3.66354,0,0),(54959,5,10416.8,-6294.43,34.8894,0,0,0.795266,0,0),(54959,6,10422.3,-6288.37,34.2492,0,0,1.15734,0,0),
(54959,7,10423.1,-6273.64,31.3398,0,0,1.62857,0,0),(54959,8,10416.5,-6245.5,32.9064,0,0,1.76602,0,0),(54959,9,10414.6,-6226.95,33.6184,0,0,1.34976,0,0),
(54959,10,10423.7,-6208.55,32.8955,0,0,1.82728,0,0),(54959,11,10420.3,-6202.17,32.1893,0,0,2.31976,0,0),(54959,12,10402.2,-6187.79,32.1893,0,0,2.45092,0,0),
(54959,13,10421.2,-6202.91,31.6182,0,0,5.63178,0,0),(54959,14,10423.7,-6208.42,32.8845,0,0,4.62962,0,0),(54959,15,10414.8,-6226.68,33.6231,0,0,4.9477,0,0),
(54959,16,10421.8,-6260.02,31.8738,0,0,4.90511,0,0);
-- #3 Mana Wyrm
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 54966;
DELETE FROM creature_movement WHERE id = 54966;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(54966,1,10378.6,-6205.26,29.7745,0,0,0.188777,0,0),(54966,2,10383.8,-6204.39,32.1896,0,0,0.125945,0,0),(54966,3,10398.8,-6205.79,32.1896,0,0,0.232757,0,0),
(54966,4,10423,-6200.94,31.5647,0,0,0.165213,0,0),(54966,5,10429.2,-6199.61,33.5975,0,0,0.466806,0,0),(54966,6,10434.5,-6195.99,35.5299,0,0,1.03308,0,0),
(54966,7,10437.2,-6181.86,35.5585,0,0,1.61035,0,0),(54966,8,10432.8,-6170.56,34.6401,0,0,2.24259,0,0),(54966,9,10420.8,-6164.84,31.401,0,0,2.95966,0,0),
(54966,10,10402.3,-6162.15,32.1901,0,0,3.20235,0,0),(54966,11,10388.7,-6166.75,32.1901,0,0,3.79375,0,0),(54966,12,10382.1,-6174.08,32.1901,0,0,4.17546,0,0),
(54966,13,10379.1,-6183.74,32.1901,0,0,4.69617,0,0),(54966,14,10386,-6193.71,32.1901,0,0,5.82793,0,0),(54966,15,10397.2,-6194.7,32.1901,0,0,0.107866,0,0),
(54966,16,10406.9,-6190.34,32.1884,0,0,0.861849,0,0),(54966,17,10406.6,-6180.77,32.1884,0,0,2.13896,0,0),(54966,18,10399.3,-6174.84,32.1884,0,0,2.66361,0,0),
(54966,19,10388.8,-6169.6,32.1884,0,0,2.87174,0,0),(54966,20,10368.2,-6172.78,32.2263,0,0,3.69798,0,0),(54966,21,10364,-6176.39,32.6576,0,0,4.38363,0,0),
(54966,22,10363.5,-6192.93,31.3945,0,0,4.95617,0,0),(54966,23,10371,-6202.01,29.8769,0,0,5.79497,0,0);
-- #4 Mana Wyrm
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 54950;
DELETE FROM creature_movement WHERE id = 54950;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(54950,1,10257.4,-6318.22,25.9457,0,0,2.20253,0,0),(54950,2,10244.6,-6306.64,26.3471,0,0,2.61565,0,0),(54950,3,10229.6,-6302.92,26.1679,0,0,3.19056,0,0),
(54950,4,10208.5,-6308.8,27.1935,0,0,3.59292,0,0),(54950,5,10191.6,-6320.28,27.3374,0,0,3.97306,0,0),(54950,6,10185.8,-6336.88,28.479,0,0,4.5189,0,0),
(54950,7,10189,-6353.63,31.1858,0,0,5.87999,0,0),(54950,8,10208.1,-6359.35,30.8413,0,0,6.00565,0,0),(54950,9,10227.4,-6362.99,30.8413,0,0,0.0374072,0,0),
(54950,10,10238.1,-6360.24,30.8413,0,0,0.635269,0,0),(54950,11,10245.8,-6350.07,30.8413,0,0,1.36176,0,0),(54950,12,10243.6,-6337.71,30.8413,0,0,2.06501,0,0),
(54950,13,10232.7,-6328.7,30.8413,0,0,2.87712,0,0),(54950,14,10219.1,-6330.48,30.8413,0,0,3.6311,0,0),(54950,15,10210.6,-6337.47,30.8413,0,0,3.93348,0,0),
(54950,16,10200.6,-6359.56,30.2298,0,0,4.73929,0,0),(54950,17,10202.9,-6368.7,29.7911,0,0,5.17287,0,0),(54950,18,10216.1,-6377.88,30.4584,0,0,5.87187,0,0),
(54950,19,10227.7,-6378.37,29.7346,0,0,0.113332,0,0),(54950,20,10254.1,-6374.76,29.845,0,0,0.363089,0,0),(54950,21,10265.3,-6365.21,29.0726,0,0,1.28043,0,0),
(54950,22,10268.2,-6347.66,26.4395,0,0,1.59774,0,0),(54950,23,10262.8,-6331.99,26.3949,0,0,1.91582,0,0);
-- #5 Mana Wyrm
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 54983;
DELETE FROM creature_movement WHERE id = 54983;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(54983,1,10221.1,-6316.8,28.456,0,0,4.84371,0,0),(54983,2,10220.9,-6321.28,30.8412,0,0,4.40074,0,0),(54983,3,10213.4,-6335.92,30.8412,0,0,4.30571,0,0),
(54983,4,10211.1,-6348.03,30.8412,0,0,4.90418,0,0),(54983,5,10216.8,-6359.34,30.8412,0,0,5.62516,0,0),(54983,6,10227.4,-6362.88,30.8412,0,0,0.0339096,0,0),
(54983,7,10238.6,-6359.23,30.8412,0,0,0.666888,0,0),(54983,8,10252.4,-6335.75,30.8418,0,0,0.489388,0,0),(54983,9,10271,-6331.26,23.6916,0,0,0.18566,0,0),
(54983,10,10281.8,-6329.7,22.1345,0,0,0.111048,0,0),(54983,11,10290.9,-6327.55,25.6552,0,0,0.356092,0,0),(54983,12,10297.6,-6322.93,25.7784,0,0,1.10301,0,0),
(54983,13,10300.3,-6316.07,25.7896,0,0,1.48392,0,0),(54983,14,10305.6,-6283.37,27.0536,0,0,1.17762,0,0),(54983,15,10329.6,-6258.04,27.0299,0,0,0.682817,0,0),
(54983,16,10354,-6236.37,27.35,0,0,0.729941,0,0),(54983,17,10371.8,-6219.8,30.4531,0,0,0.737795,0,0),(54983,18,10383.9,-6208.5,30.1181,0,0,0.75743,0,0),
(54983,19,10387.5,-6206.77,32.1902,0,0,0.380438,0,0),(54983,20,10402.3,-6203.88,32.1886,0,0,0.46212,0,0),(54983,21,10412.1,-6198.7,32.1886,0,0,0.658469,0,0),
(54983,22,10418.5,-6192.22,32.189,0,0,1.15721,0,0),(54983,23,10419.7,-6178.88,32.189,0,0,1.87035,0,0),(54983,24,10413.6,-6168.3,32.189,0,0,2.24106,0,0),
(54983,25,10406.1,-6163.31,32.189,0,0,2.99818,0,0),(54983,26,10392.6,-6165.76,32.189,0,0,3.54875,0,0),(54983,27,10382.8,-6174.28,32.189,0,0,4.18806,0,0),
(54983,28,10378.3,-6183.53,32.189,0,0,4.63005,0,0),(54983,29,10378.4,-6197.58,32.189,0,0,4.20908,0,0),(54983,30,10371.6,-6206.79,29.7725,0,0,3.73403,0,0),
(54983,31,10359.6,-6213.05,29.3217,0,0,3.72382,0,0),(54983,32,10346.6,-6224.09,27.7611,0,0,3.47406,0,0),(54983,33,10342.3,-6224.91,27.3902,0,0,2.9667,0,0),
(54983,34,10335.2,-6221.67,27.1914,0,0,3.17875,0,0),(54983,35,10319.8,-6231.28,27.3,0,0,3.85969,0,0),(54983,36,10295.4,-6263.16,27.3763,0,0,4.02856,0,0),
(54983,37,10274.5,-6285.5,25.6167,0,0,3.62565,0,0),(54983,38,10263.9,-6291.2,21.0367,0,0,3.63193,0,0),(54983,39,10247.7,-6300.62,24.7836,0,0,3.58324,0,0),
(54983,40,10229.4,-6305.87,26.9221,0,0,3.64607,0,0),(54983,41,10223.5,-6313.4,28.1938,0,0,4.17621,0,0);

-- UDB_142
-- Equipment for 'Master Kelerun Bloodmourn <Blood Knight>'
DELETE FROM creature_equip_template WHERE entry = 2513;
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES    
(2513,23673,24038,0);
UPDATE creature_template SET equipmentTemplateid = 2513 WHERE entry = 17807;

-- UDB_143
-- Tannaria
UPDATE creature_template SET GossipMenuId = 6650 WHERE entry = 16279;
DELETE FROM gossip_menu WHERE entry = 6650; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6650, 9187, 0, 0);
-- Ponaris <Priest Trainer>
UPDATE creature_template SET GossipMenuId = 6649 WHERE entry = 16276;
DELETE FROM gossip_menu WHERE entry = 6649; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6649, 9186, 0, 0);
-- Garridel <Mage Trainer>
UPDATE creature_template SET GossipMenuId = 6648 WHERE entry = 16269;
DELETE FROM gossip_menu WHERE entry = 6648; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6648, 9191, 0, 0);
-- Celoenus <Warlock Trainer>
UPDATE creature_template SET GossipMenuId = 7566 WHERE entry = 16266;
DELETE FROM gossip_menu WHERE entry = 7566; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7566, 9185, 0, 0);

-- UDB_144
-- Duplicates
-- Duplicates removed
DELETE FROM creature WHERE guid IN (55802,55783,55805,55749,55807,55803,55752,55986,55757,55768,56020,56023,56062,56056,56022,56030,56021,56052,56031,56050,56035,56064,56051,56029,56059,56058,56034,56045,56033,
56047,56027,56048,56025,56024,56066,56036,56038,56065);
DELETE FROM creature_addon WHERE guid IN (55802,55783,55805,55749,55807,55803,55752,55986,55757,55768,56020,56023,56062,56056,56022,56030,56021,56052,56031,56050,56035,56064,56051,56029,56059,56058,56034,56045,56033,
56047,56027,56048,56025,56024,56066,56036,56038,56065);
DELETE FROM creature_movement WHERE id IN (55802,55783,55805,55749,55807,55803,55752,55986,55757,55768,56020,56023,56062,56056,56022,56030,56021,56052,56031,56050,56035,56064,56051,56029,56059,56058,56034,56045,56033,
56047,56027,56048,56025,56024,56066,56036,56038,56065);
DELETE FROM game_event_creature WHERE guid IN (55802,55783,55805,55749,55807,55803,55752,55986,55757,55768,56020,56023,56062,56056,56022,56030,56021,56052,56031,56050,56035,56064,56051,56029,56059,56058,56034,56045,56033,
56047,56027,56048,56025,56024,56066,56036,56038,56065);
DELETE FROM game_event_creature_data WHERE guid IN (55802,55783,55805,55749,55807,55803,55752,55986,55757,55768,56020,56023,56062,56056,56022,56030,56021,56052,56031,56050,56035,56064,56051,56029,56059,56058,56034,56045,
56033,56047,56027,56048,56025,56024,56066,56036,56038,56065);
DELETE FROM creature_battleground WHERE guid IN (55802,55783,55805,55749,55807,55803,55752,55986,55757,5576856020,56023,56062,56056,56022,56030,56021,56052,56031,56050,56035,56064,56051,56029,56059,56058,56034,56045,
56033,56047,56027,56048,56025,56024,56066,56036,56038,56065);
DELETE FROM creature_linking WHERE guid IN (55802,55783,55805,55749,55807,55803,55752,55986,55757,5576856020,56023,56062,56056,56022,56030,56021,56052,56031,56050,56035,56064,56051,56029,56059,56058,56034,56045,56033,
56047,56027,56048,56025,56024,56066,56036,56038,56065) 
OR master_guid IN (55802,55783,55805,55749,55807,55803,55752,55986,55757,5576856020,56023,56062,56056,56022,56030,56021,56052,56031,56050,56035,56064,56051,56029,56059,56058,56034,56045,56033,56047,56027,56048,56025,
56024,56066,56036,56038,56065);
-- Silanna -- gossip
UPDATE creature_template SET GossipMenuId = 7316 WHERE entry = 16862;
DELETE FROM gossip_menu WHERE entry = 7316; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7316, 8684, 0, 0);
-- Gatewatcher Aendor  -- gossip
UPDATE creature_template SET GossipMenuId = 7828 WHERE entry = 18790;
-- Harassed Citizen  -- gossip
UPDATE creature_template SET GossipMenuId = 7834 WHERE entry = 18792;
-- Ranger Selron -- missing equipment added
UPDATE creature_template SET equipmentTemplateid = 481 WHERE entry = 15940;
-- Solanin <Bag Vandor>
UPDATE creature SET position_x = 9308.556641, position_y = -6554.437500, position_z = 34.680603, orientation = 2.170510, Spawndist = 0, MovementType = 2 WHERE guid = 68009;
DELETE FROM creature_movement WHERE id = 68009;
UPDATE creature_template SET MovementType = 2 WHERE entry = 18947;
DELETE FROM creature_movement_template WHERE entry = 18947;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(18947,1,9308.556641,-6554.437500,34.680603,30000,0,2.170510,0,0),
(18947,2,9308.9,-6549.6,34.6871,0,0,1.39769,0,0),
(18947,3,9310.42,-6547.2,34.6966,0,0,0.598403,0,0),
(18947,4,9312.12,-6546.47,35.6365,10000,1894701,0.175858,0,0),
(18947,5,9309.84,-6546.45,34.6963,0,0,2.7783,0,0),
(18947,6,9306.75,-6544.39,34.6448,0,0,2.46178,0,0),
(18947,7,9304.57,-6542.03,34.7358,10000,1894701,2.2458,0,0),
(18947,8,9300.32,-6553.67,34.6046,15000,0,4.53523,0,0),
(18947,9,9302.13,-6550.81,34.623,0,0,0.597241,0,0),
(18947,10,9305.58,-6548.93,34.6424,0,0,0.118943,0,0),
(18947,11,9311.03,-6549.56,34.7268,14000,1894702,6.04085,0,0),
(18947,12,9308.556641,-6554.437500,34.680603,0,0,2.170510,0,0),
(18947,13,9308.556641,-6554.437500,34.680603,180000,0,2.170510,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1894701,1894702); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1894701,3,1,16,0,0,0,0,0,0,0,0,0,0,0,0,'Kneel'),
(1894702,1,3,0,0,0,0,0,0,0,0,0,0,0,0,3.19456,''),
(1894702,3,0,0,0,0,0,0,2000000472,0,0,0,0,0,0,0,''),
(1894702,8,0,0,0,0,0,0,2000000473,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000472 AND 2000000473;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000472,'Gah! Every time I load something into the wagon, it reappears here within moments!',0,0,0,6,NULL),
(2000000473,'I should have better than to have given Silanna that tome of cantrips.',0,0,0,1,NULL);
-- Silvermoon Guardian #1
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 56871;
-- Silvermoon Guardian #2
UPDATE creature SET position_x = 9310.937500, position_y = -7261.342285, position_z = 13.262838, orientation = 5.123657, spawndist = 0, MovementType = 2 WHERE guid = 56870;
DELETE FROM creature_movement WHERE id = 56870;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(56870,1,9313.76,-7233.52,14.3607,0,0,1.45192,0,0),(56870,2,9321.56,-7210.41,14.9568,0,0,1.24771,0,0),(56870,3,9324.87,-7190.41,15.5912,0,0,1.56187,0,0),
(56870,4,9322.9,-7169.13,15.6939,0,0,1.77393,0,0),(56870,5,9315.66,-7141.71,16.3783,0,0,1.96635,0,0),(56870,6,9308.27,-7128.08,16.3927,0,0,2.14307,0,0),
(56870,7,9288.27,-7098.95,15.0777,0,0,2.13914,0,0),(56870,8,9282.51,-7083.99,12.7755,0,0,1.59093,0,0),(56870,9,9283.83,-7072.6,11.6658,0,0,1.24928,0,0),
(56870,10,9279.03,-7084.2,12.8351,0,0,4.68382,0,0),(56870,11,9285.3,-7100.68,15.1796,0,0,5.29093,0,0),(56870,12,9305.98,-7130.13,16.3521,0,0,5.34748,0,0),
(56870,13,9313.23,-7142.95,16.3343,0,0,4.9375,0,0),(56870,14,9320.03,-7170.39,15.744,0,0,4.97834,0,0),(56870,15,9321.99,-7191.2,15.5395,0,0,4.49454,0,0),
(56870,16,9318.65,-7209.67,15.0213,0,0,4.31233,0,0),(56870,17,9311.12,-7233.62,14.4968,0,0,4.78671,0,0),(56870,18,9310.98,-7261.15,13.2516,180000,0,4.80736,0,0);
-- Link
DELETE FROM creature_linking WHERE guid = 56871;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(56871, 56870, 1+128+512);
-- Silvermoon Guardian #3-4 missing  -- UDB empty guids used
DELETE FROM creature WHERE guid IN (55802,55783);
INSERT INTO creature VALUES 
(55802,16221,530,1,1,0,0,9151.62,-6702.86,24.3109,5.83393,360,0,0,1215,0,0,2),
(55783,16221,530,1,1,0,0,9151.19,-6702.51,24.2865,5.83943,360,0,0,1124,0,0,0);
DELETE FROM creature_movement WHERE id = 55802;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(55802,1,9151.62,-6702.86,24.3109,1000,1622101,5.83393,0,0),(55802,2,9175.54,-6714.2,26.0494,0,0,6.06954,0,0),(55802,3,9200.73,-6718.44,25.8468,0,0,5.97397,0,0),
(55802,4,9209.32,-6722.74,25.632,0,0,5.7894,0,0),(55802,5,9221.76,-6734.95,25.2283,0,0,5.37707,0,0),(55802,6,9237.28,-6759.91,24.9455,0,0,5.20429,0,0),
(55802,7,9244.59,-6788.33,23.7142,0,0,4.91369,0,0),(55802,8,9246.93,-6818.23,19.3459,0,0,4.81944,0,0),(55802,9,9243.49,-6833.1,17.0062,0,0,4.26574,0,0),
(55802,10,9224.17,-6858.76,12.2348,5000,0,4.14008,0,0),(55802,11,9245.08,-6830.3,17.4443,0,0,1.22389,0,0),(55802,12,9245.33,-6792.53,23.2525,0,0,1.72419,0,0),
(55802,13,9240.97,-6767.78,24.67,0,0,1.96609,0,0),(55802,14,9224.66,-6739.66,25.1088,0,0,2.21899,0,0),(55802,15,9214,-6727.22,25.3519,0,0,2.43498,0,0),
(55802,16,9203.12,-6718.08,25.8748,0,0,2.65724,0,0),(55802,17,9177.27,-6714.54,26.1012,0,0,3.00518,0,0),(55802,18,9152.85,-6704.02,24.4276,0,0,2.72557,0,0),
(55802,19,9130.06,-6693.25,23.2046,0,0,2.78841,0,0),(55802,20,9100.87,-6685.34,20.8723,0,0,2.98004,0,0),(55802,21,9083.46,-6682.89,19.3495,0,0,3.06251,0,0),
(55802,22,9065.56,-6682.98,16.7473,5000,0,3.16068,0,0),(55802,23,9093.29,-6683.31,20.3039,0,0,0.206017,0,0),(55802,24,9101.51,-6680.65,20.9162,0,0,0.731448,0,0),
(55802,25,9103.88,-6674.12,21.7294,0,0,1.98259,0,0),(55802,26,9099.35,-6657.52,22.0418,0,0,1.4165,0,0),(55802,27,9102.42,-6647.26,23.2374,0,0,1.07485,0,0),
(55802,28,9121.32,-6626.45,26.7952,0,0,0.662514,0,0),(55802,29,9136.62,-6618.55,29.0918,0,0,0.415898,0,0),(55802,30,9157.46,-6615.65,30.7248,0,0,0.262746,0,0),
(55802,31,9168.71,-6610.88,31.2371,0,0,0.747337,0,0),(55802,32,9179.42,-6600.27,31.8366,0,0,0.888709,0,0),(55802,33,9193.47,-6583.44,32.6952,0,0,0.69393,0,0),
(55802,34,9224.49,-6560.81,31.9586,0,0,0.686076,0,0),(55802,35,9245.92,-6548.87,31.942,0,0,0.344427,0,0),(55802,36,9258.16,-6547.53,33.2162,0,0,6.26633,0,0),
(55802,37,9291.08,-6553.81,34.5914,0,0,0.120587,0,0),(55802,38,9296.64,-6552.64,34.6026,0,0,0.448883,0,0),(55802,39,9301.53,-6550.26,34.6231,0,0,0.8675,0,0),
(55802,40,9305.17,-6546.33,34.6403,5000,0,0.941328,0,0),(55802,41,9296.7,-6552.85,34.602,0,0,3.57241,0,0),(55802,42,9289.65,-6554.36,34.5911,0,0,3.11924,0,0),
(55802,43,9258.17,-6547.61,33.2113,0,0,3.16243,0,0),(55802,44,9245.94,-6549.07,31.9428,0,0,3.48776,0,0),(55802,45,9224.78,-6560.53,31.9582,0,0,3.77443,0,0),
(55802,46,9193.19,-6583.57,32.6867,0,0,4.08623,0,0),(55802,47,9185.34,-6590.89,32.376,0,0,4.12125,0,0),(55802,48,9174.6,-6606.27,31.49,0,0,4.06234,0,0),
(55802,49,9168.63,-6611.54,31.2102,0,0,3.79531,0,0),(55802,50,9155.36,-6616.81,30.5532,0,0,3.32799,0,0),(55802,51,9137.52,-6618.39,29.2279,0,0,3.43245,0,0),
(55802,52,9127.76,-6621.33,27.8341,0,0,3.72541,0,0),(55802,53,9107.5,-6640.04,24.401,0,0,4.03878,0,0),(55802,54,9099.88,-6651.96,22.5778,0,0,4.52023,0,0),
(55802,55,9098.93,-6659.86,21.8473,0,0,4.85172,0,0),(55802,56,9104.61,-6676.34,21.5272,0,0,4.84386,0,0),(55802,57,9103.24,-6680.22,21.0557,0,0,4.10324,0,0),
(55802,58,9098.15,-6683.2,20.6473,0,0,3.38224,0,0),(55802,59,9064.97,-6683.33,16.6582,5000,0,3.21495,0,0),(55802,60,9101.57,-6684.97,20.8846,0,0,6.12485,0,0),
(55802,61,9130.73,-6693.28,23.2326,1000,1622102,5.93243,0,0),(55802,62,9151.19,-6702.86,24.2903,0,0,5.78321,0,0);
-- Link
DELETE FROM creature_linking WHERE guid = 55783;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(55783, 55802, 1+128+512);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1622101,1622102); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1622101,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(1622102,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
-- Feral Dragonhawk Hatchling
UPDATE creature SET position_x = 9313.291992, position_y = -7065.535156, position_z = 13.551550, spawndist = 10, MovementType = 1 WHERE guid = 55751;
UPDATE creature SET position_x = 9335.414063, position_y = -7095.564941, position_z = 15.955358, spawndist = 10, MovementType = 1 WHERE guid = 55750;
UPDATE creature SET position_x = 9241.479492, position_y = -7053.126465, position_z = 11.785850, spawndist = 10, MovementType = 1 WHERE guid = 55781;
UPDATE creature SET position_x = 9251.087891, position_y = -7116.528320, position_z = 20.209023, spawndist = 10, MovementType = 1 WHERE guid = 55782;
UPDATE creature SET position_x = 9280.127930, position_y = -7136.915039, position_z = 18.425961, spawndist = 10, MovementType = 1 WHERE guid = 55806;
UPDATE creature SET position_x = 9286.713867, position_y = -7275.848633, position_z = 17.298273, spawndist = 10, MovementType = 1 WHERE guid = 55747;
UPDATE creature SET position_x = 9193.906250, position_y = -7090.962891, position_z = 19.812313, spawndist = 10, MovementType = 1 WHERE guid = 55804;
UPDATE creature SET position_x = 9143.990234, position_y = -7090.308594, position_z = 24.407694, spawndist = 10, MovementType = 1 WHERE guid = 55818;
UPDATE creature SET position_x = 9144.131836, position_y = -6652.943359, position_z = 31.736256, spawndist = 10, MovementType = 1 WHERE guid = 55763;
UPDATE creature SET position_x = 9195.083008, position_y = -6625.637695, position_z = 34.585335, spawndist = 10, MovementType = 1 WHERE guid = 55799;
UPDATE creature SET position_x = 9273.759766, position_y = -6798.623535, position_z = 22.505522, spawndist = 10, MovementType = 1 WHERE guid = 55778;
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE guid = 55771;
-- Plagueboner Pillager
UPDATE creature SET spawndist = 15, MovementType = 1 WHERE guid IN (56055,56028,56057,56053,56054,56061,56044,56032,56060,56049,56041,56075,56076,56042,56077,56073,56071,56040,56039,56072,56070,56078);
UPDATE creature SET position_x = 9028.840820, position_y = -6913.795410, position_z = 16.769503, orientation = 6.149659, spawndist = 0, MovementType = 2 WHERE guid = 56043; -- this one!!!
DELETE FROM creature_movement WHERE id = 56043;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(56043,1,9044.67,-6916.71,14.3831,0,0,6.12086,0,0),(56043,2,9073,-6918.1,16.9192,0,0,0.010458,0,0),(56043,3,9092.31,-6918.52,17.3978,0,0,5.88917,0,0),
(56043,4,9121.12,-6931.48,13.1917,0,0,5.84204,0,0),(56043,5,9142.13,-6939.05,9.19041,0,0,5.94022,0,0),(56043,6,9176.79,-6939.88,5.15922,2000,1565401,6.22688,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1565401; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1565401,1,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'desp');
-- Rotlimb Cannibal
UPDATE creature_template SET inhabittype = 1 WHERE entry = 15655;
UPDATE creature SET position_x = 9134.863281, position_y = -6999.031250, position_z = 9.883224, spawndist = 10, MovementType = 1 WHERE guid = 56080;
-- Springpaw panther
UPDATE creature SET position_x = 9337.779297, position_y = -6581.497070, position_z = 40.059837, spawndist = 10, MovementType = 1 WHERE guid = 55923;

-- UDB_145
-- Duplicates removed
DELETE FROM creature WHERE guid IN (55922,55950,55946,55987,55990,55989);
DELETE FROM creature_addon WHERE guid IN (55922,55950,55946,55987,55990,55989);
DELETE FROM creature_movement WHERE id IN (55922,55950,55946,55987,55990,55989);
DELETE FROM game_event_creature WHERE guid IN (55922,55950,55946,55987,55990,55989);
DELETE FROM game_event_creature_data WHERE guid IN (55922,55950,55946,55987,55990,55989);
DELETE FROM creature_battleground WHERE guid IN (55922,55950,55946,55987,55990,55989);
DELETE FROM creature_linking WHERE guid IN (55922,55950,55946,55987,55990,55989) 
OR master_guid IN (55922,55950,55946,55987,55990,55989);
-- Rotlimb Cannibal 
UPDATE creature SET position_x = 9141.685547, position_y = -6992.420410, position_z = 9.112395, orientation = 1.428094, Spawndist = 0, MovementType = 0 WHERE guid = 56082;
UPDATE creature SET position_x = 9144.500000, position_y = -6992.453125, position_z = 9.266702, orientation = 1.510327, Spawndist = 0, MovementType = 0 WHERE guid = 56067;
UPDATE creature SET position_x = 9144.772461, position_y = -6994.754395, position_z = 9.276006, orientation = 1.380970, Spawndist = 0, MovementType = 0 WHERE guid = 56068;
DELETE FROM creature WHERE guid = 56065; -- UDB free guid used
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(56065,15655,530,1,1,0,0,9142.6,-6995.12,9.19671,1.44931,300,0,0,137,0,0,2);
DELETE FROM creature_movement WHERE id = 56065;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(56065,1,9142.6,-6995.12,9.19671,2000,1565501,1.44931,0,0),(56065,2,9146.93,-6970.46,8.74395,0,0,0.971624,0,0),(56065,3,9172.51,-6942.44,5.77679,0,0,0.521591,0,0),
(56065,4,9194.01,-6936.1,4.68107,0,0,6.26206,0,0),(56065,5,9230.88,-6955.76,4.60276,0,0,5.99896,0,0),(56065,6,9267.96,-6961.74,4.58334,0,0,6.25421,0,0),
(56065,7,9314.47,-6961.16,9.85552,0,0,6.27384,0,0),(56065,8,9371.66,-6966.16,17.9735,10000,0,6.18352,0,0);
-- Links
DELETE FROM creature_linking WHERE guid IN (56067,56068,56082);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(56067, 56065, 128+512),
(56068, 56065, 128+512),
(56082, 56065, 128+512);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1565501; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1565501,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON');
DELETE FROM dbscripts_on_creature_death WHERE id = 15655; 
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(15655,10,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'desp');
-- Eversong Tender
UPDATE creature SET position_x = 9174.863281, position_y = -6789.921875, position_z = 33.791882, Spawndist = 10, MovementType = 1 WHERE guid = 55480;
-- Springpaw Stalker
UPDATE creature SET position_x = 9077.146484, position_y = -6728.952637, position_z = 20.230244, Spawndist = 15, MovementType = 1 WHERE guid = 55984;
UPDATE creature SET position_x = 9080.941406, position_y = -7554.627441, position_z = 102.713112, Spawndist = 15, MovementType = 1 WHERE guid = 55821;
UPDATE creature SET position_x = 9093.875000, position_y = -7520.442383, position_z = 88.082741, Spawndist = 15, MovementType = 1 WHERE guid = 55942;
UPDATE creature SET position_x = 9150.410156, position_y = -7609.599121, position_z = 102.518661, Spawndist = 15, MovementType = 1 WHERE guid = 55945;
-- Elder Springpaw
UPDATE creature SET position_x = 9033.854492, position_y = -7681.673340, position_z = 140.387833, Spawndist = 15, MovementType = 1 WHERE guid = 55998;
UPDATE creature SET position_x = 9076.555664, position_y = -7710.252930, position_z = 135.212921, Spawndist = 15, MovementType = 1 WHERE guid = 55988;
UPDATE creature SET position_x = 9112.898438, position_y = -7817.004883, position_z = 123.236694, Spawndist = 15, MovementType = 1 WHERE guid = 55994;
UPDATE creature SET position_x = 9155.250000, position_y = -7748.492676, position_z = 133.449890, Spawndist = 10, MovementType = 1 WHERE guid = 55997;
-- Silvermoon Guardian
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 56878;
DELETE FROM creature_movement WHERE id = 56878;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(56878,1,9075.53,-7453.2,83.147,2000,1622101,5.81037,0,0),(56878,2,9083.64,-7459.33,82.3095,0,0,5.4139,0,0),(56878,3,9094.12,-7474.37,79.7339,0,0,5.44139,0,0),
(56878,4,9106.17,-7481.73,78.0308,0,0,5.84979,0,0),(56878,5,9120.14,-7485.99,76.3903,0,0,6.10504,0,0),(56878,6,9135.87,-7486.14,74.1661,0,0,0.0692527,0,0),
(56878,7,9143.43,-7483.38,72.1307,0,0,0.824806,0,0),(56878,8,9148.94,-7476.1,69.3798,0,0,1.08163,0,0),(56878,9,9155.35,-7463.24,65.605,0,0,1.08399,0,0),
(56878,10,9163.17,-7454.76,62.2949,0,0,0.785536,0,0),(56878,11,9172.74,-7450.63,58.3818,0,0,0.2711,0,0),(56878,12,9190.92,-7452.68,51.184,0,0,0.0158453,0,0),
(56878,13,9223.02,-7448.49,41.154,0,0,0.235757,0,0),(56878,14,9232.13,-7444.44,38.7136,0,0,0.728171,0,0),(56878,15,9243.84,-7430.97,35.5011,0,0,0.619,0,0),
(56878,16,9254.21,-7429.35,35.4306,0,0,6.15684,0,0),(56878,17,9261.15,-7434.88,35.8412,0,0,5.22694,0,0),(56878,18,9265.25,-7445.57,35.8999,0,0,5.01488,0,0),
(56878,19,9265.07,-7456.89,35.8899,0,0,4.52401,0,0),(56878,20,9260.84,-7472.31,35.5593,0,0,4.57899,0,0),(56878,21,9261.41,-7484.52,35.5209,5000,0,4.92848,0,0),
(56878,22,9257.34,-7478.7,35.5761,0,0,1.69106,0,0),(56878,23,9257.72,-7465.82,35.7736,0,0,1.23632,0,0),(56878,24,9261.38,-7452.16,35.8671,0,0,1.42558,0,0),
(56878,25,9260.48,-7441.99,35.5515,0,0,2.02562,0,0),(56878,26,9253.36,-7434.07,35.4012,0,0,2.62451,0,0),(56878,27,9247.75,-7430.09,35.1504,0,0,2.10693,0,0),
(56878,28,9244.72,-7412.54,33.4977,0,0,1.58386,0,0),(56878,29,9246.67,-7386.82,30.9486,0,0,1.38358,0,0),(56878,30,9254.43,-7362.81,26.6823,0,0,1.2265,0,0),
(56878,31,9267.23,-7344.13,22.6337,0,0,0.928048,0,0),(56878,32,9276.66,-7328.1,19.9771,0,0,1.06157,0,0),(56878,33,9290.48,-7299.74,17.2787,0,0,1.07727,0,0),
(56878,34,9310.89,-7280.94,14.2154,10000,0,0.66494,0,0),(56878,35,9306.56,-7289.38,14.8871,0,0,4.14111,0,0),(56878,36,9293.53,-7302.88,17.3098,0,0,4.17096,0,0),
(56878,37,9280.06,-7331.36,20.0312,0,0,4.30447,0,0),(56878,38,9269.79,-7347.76,22.9399,0,0,4.10813,0,0),(56878,39,9253.347656,-7367.320801,27.553810,0,0,4.398997,0,0),
(56878,40,9251.79,-7383.54,30.2129,0,0,4.51732,0,0),(56878,41,9248.95,-7398.95,31.988,0,0,4.64298,0,0),(56878,42,9248.79,-7424.52,34.7828,0,0,5.08359,0,0),
(56878,43,9251.29,-7427.93,35.0913,0,0,5.70876,0,0),(56878,44,9259.97,-7433.06,35.8896,0,0,5.43231,0,0),(56878,45,9265.39,-7445.18,35.9194,0,0,4.98385,0,0),
(56878,46,9265.19,-7457.56,35.9254,0,0,4.38145,0,0),(56878,47,9260.78,-7472.93,35.5561,0,0,4.73802,0,0),(56878,48,9261.41,-7484.79,35.5186,5000,0,4.96343,0,0),
(56878,49,9257.31,-7478.36,35.5674,0,0,1.63098,0,0),(56878,50,9257.89,-7464.84,35.8457,0,0,1.33253,0,0),(56878,51,9261.67,-7451.45,35.8064,0,0,1.49903,0,0),
(56878,52,9260.27,-7440.94,35.5334,0,0,2.09476,0,0),(56878,53,9252.77,-7433.64,35.3787,0,0,3.18961,0,0),(56878,54,9246.07,-7435.69,35.6636,0,0,3.65613,0,0),
(56878,55,9234.09,-7448.49,38.8601,0,0,3.77159,0,0),(56878,56,9223.23,-7453.13,41.5279,0,0,3.28778,0,0),(56878,57,9191.76,-7456.54,51.4601,0,0,3.13149,0,0),
(56878,58,9173.12,-7455.29,58.8282,0,0,3.25323,0,0),(56878,59,9164.16,-7458.59,62.5594,0,0,3.89333,0,0),(56878,60,9156.07,-7468.57,66.4942,0,0,4.17214,0,0),
(56878,61,9148.42,-7485.63,71.7225,0,0,4.36456,0,0),(56878,62,9143.4,-7489.75,73.4711,0,0,3.44957,0,0),(56878,63,9126.99,-7490.92,75.4171,0,0,2.99718,0,0),
(56878,64,9107.01,-7486.36,77.9078,0,0,2.69795,0,0),(56878,65,9095.5,-7480.4,79.1877,0,0,2.43798,0,0),(56878,66,9086.31,-7470.12,80.753,0,0,2.10104,0,0),
(56878,67,9079.17,-7460.49,82.553,0,0,2.48589,0,0),(56878,68,9071.38,-7455.15,83.1419,0,0,2.68224,0,0),(56878,69,9064.04,-7453.33,83.1557,0,0,3.20846,0,0),
(56878,70,9047.58,-7456.7,83.3916,10000,1622102,3.35768,0,0),(56878,71,9056.46,-7449.9,83.4217,0,0,0.510614,0,0),(56878,72,9066.85,-7449.36,83.2982,0,0,6.07124,0,0),
(56878,73,9075.27,-7452.77,83.1491,0,0,5.71781,0,0);
-- Link
DELETE FROM creature_linking WHERE guid = 56877;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(56877, 56878, 1+128+512);

-- UDB_146
-- Gossips in 'Forest Song' 
-- Architect Nemos
UPDATE creature_template SET GossipMenuId = 7404 WHERE entry = 17291;
DELETE FROM gossip_menu WHERE entry = 7404; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7404, 8873, 0, 0);
-- Artificer
UPDATE creature_template SET GossipMenuId = 7382 WHERE entry = 17406;
DELETE FROM gossip_menu WHERE entry = 7382; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7382, 8838, 0, 0);
-- Vindicator Vedaar <Hand of Argus>
UPDATE creature_template SET GossipMenuId = 7407 WHERE entry = 17303;
DELETE FROM gossip_menu WHERE entry = 7407; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7407, 8876, 0, 0);
-- Sentinel Luciel Starwhisper <Silverwing Sentinels>
UPDATE creature_template SET GossipMenuId = 7405 WHERE entry = 17287;
DELETE FROM gossip_menu WHERE entry = 7405; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7405, 8874, 0, 0);
-- Gnarl <Ancient of War>
UPDATE creature_template SET GossipMenuId = 8080 WHERE entry = 17310;
DELETE FROM gossip_menu WHERE entry = 8080; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8080, 9986, 0, 0);

-- UDB_147
-- Kayneth Stillwind
-- temp. equip or visual spell missing...
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 32331;
DELETE FROM creature_movement WHERE id = 32331;
UPDATE creature_template SET MovementType = 2 WHERE entry = 3848;
DELETE FROM creature_movement_template WHERE entry = 3848;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(3848,1,2954.25,-3215.41,169.205,20000,0,3.49066,0,0),
(3848,2,2966.65,-3213.95,168.914,60000,384801,0.0702074,0,0),
(3848,3,2954.23,-3215.45,169.206,90000,0,3.3457,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 384801; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(384801,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0.965562,''),
-- temp. equip "on"
(384801,6,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(384801,57,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
-- temp. equip "off"
(384801,59,0,0,0,0,0,0,2000000474,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry = 2000000474;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000474,'Putting the bottles away, %s sighs.',0,2,0,0,NULL);

-- UDB_148
-- Leotheras the Blind
UPDATE creature SET position_x = 375.790283, position_y = -438.609650, position_z = 29.524517, orientation = 2.731379 WHERE guid = 93773;
DELETE FROM creature_template_addon WHERE entry = 21215;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(21215,0,8,0,0,0,0,NULL);
UPDATE creature_template SET equipmentTemplateid = 2089 WHERE entry = 21215;
-- Greyheart Spellbinder
UPDATE creature SET position_x = 369.062805, position_y = -447.304535, position_z = 29.518799, orientation = 0.755744 WHERE guid = 93772;
UPDATE creature SET position_x = 373.928528, position_y = -428.824677, position_z = 29.524717, orientation = 4.879074 WHERE guid = 93770;
UPDATE creature SET position_x = 386.668396, position_y = -443.397949, position_z = 29.527174, orientation = 2.711379 WHERE guid = 93771;

-- UDB_149
-- Fix for old bugs....
-- movement chenged to 0:idle (was wrongly set to random)
-- Jarven Thunderbrew
UPDATE dbscripts_on_creature_movement SET datalong = 0 WHERE id = 137302 AND delay = 2;
-- Grimand Elmore
UPDATE dbscripts_on_creature_movement SET datalong = 0 WHERE id = 141603 AND delay = 2;

-- UDB_150
-- Silvermoon City
-- Arcane Guardian
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (64056,64059,64060);
DELETE FROM creature_movement WHERE id IN (64056,64059,64060);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #1
(64056,1,9672.76,-7494.03,15.7596,0,0,4.72967,0,0),(64056,2,9670.61,-7519.96,15.7355,0,0,5.33992,0,0),(64056,3,9683.12,-7517.05,15.7355,0,0,6.00453,0,0),
(64056,4,9695.07,-7521.45,15.7355,0,0,0.293895,0,0),(64056,5,9694.27,-7491.86,15.8131,0,0,0.879802,0,0),(64056,6,9719.45,-7481.92,13.561,0,0,0.0512015,0,0),
(64056,7,9764.07,-7494.9,13.5244,0,0,0.0370635,0,0),(64056,8,9774.78,-7495.4,13.5485,0,0,5.02749,0,0),(64056,9,9777.26,-7508.34,13.5485,0,0,0.136807,0,0),
(64056,10,9800.95,-7507.69,13.5485,0,0,1.42093,0,0),(64056,11,9802.55,-7487.94,13.5485,0,0,1.55445,0,0),(64056,12,9800.7,-7468.54,13.5485,0,0,3.08912,0,0),
(64056,13,9778.3,-7468.61,13.5485,0,0,4.4133,0,0),(64056,14,9774.68,-7480.5,13.5485,0,0,3.25876,0,0),(64056,15,9747.55,-7479.94,13.5705,0,0,2.33356,0,0),
(64056,16,9727.59,-7446.16,13.5727,0,0,3.04043,0,0),(64056,17,9718.75,-7445.93,13.5856,0,0,3.69231,0,0),(64056,18,9690.75,-7459.64,13.5864,0,0,4.19183,0,0),
-- #2
(64059,1,9850.77,-7451.69,13.6249,0,0,4.72528,0,0),(64059,2,9850.73,-7421.69,13.3197,0,0,2.61099,0,0),(64059,3,9805.08,-7419.36,13.3061,0,0,3.16626,0,0),
(64059,4,9850.1,-7420.27,13.3164,0,0,4.89807,0,0),(64059,5,9850.76,-7452.14,13.6299,0,0,4.71351,0,0),(64059,6,9850.92,-7421.78,13.3187,0,0,0.43544,0,0),
(64059,7,9879.56,-7418.61,13.2654,0,0,0.604301,0,0),(64059,8,9885.8,-7412.97,13.2654,0,0,1.13523,0,0),(64059,9,9888.1,-7388.53,13.5648,0,0,1.4596,0,0),
(64059,10,9890.7,-7369.25,20.7165,0,0,1.43491,0,0),(64059,11,9892.62,-7350.45,20.6464,0,0,1.45847,0,0),(64059,12,9893.37,-7338.24,22.3974,0,0,1.76792,0,0),
(64059,13,9888.71,-7326.05,23.7671,0,0,2.34205,0,0),(64059,14,9872.74,-7319.35,26.2829,0,0,3.10781,0,0),(64059,15,9854.49,-7320.4,26.2821,0,0,2.00354,0,0),
(64059,16,9840.42,-7284.02,26.2259,0,0,1.37836,0,0),(64059,17,9842.54,-7274.31,26.133,0,0,1.1506,0,0),(64059,18,9860.73,-7245.4,26.7839,0,0,0.823874,0,0),
(64059,19,9870.92,-7232.72,28.0373,0,0,0.505002,0,0),(64059,20,9875.86,-7232.71,28.0373,0,0,5.75225,0,0),(64059,21,9881.25,-7236.75,31.0445,0,0,5.87713,0,0),
(64059,22,9886.03,-7237.04,31.0209,0,0,0.25446,0,0),(64059,23,9909.42,-7214.81,30.8594,0,0,0.559195,0,0),(64059,24,9927.99,-7207.16,30.8627,0,0,0.256816,0,0),
(64059,25,9965.58,-7196.18,30.8758,0,0,0.284305,0,0),(64059,26,10000.7,-7184.92,30.8758,0,0,0.288232,0,0),(64059,27,9965.65,-7196.19,30.8758,0,0,3.46124,0,0),
(64059,28,9928.25,-7207.11,30.8656,0,0,3.43768,0,0),(64059,29,9910.4,-7214.29,30.8547,0,0,3.87201,0,0),(64059,30,9886.04,-7238.09,31.0198,0,0,3.7385,0,0),
(64059,31,9881.2,-7237.23,31.0481,0,0,2.474,0,0),(64059,32,9875.44,-7232.2,28.0375,0,0,2.77481,0,0),(64059,33,9871.49,-7231.91,28.0375,0,0,3.7275,0,0),
(64059,34,9858.03,-7249.06,26.7771,0,0,4.26393,0,0),(64059,35,9842.69,-7274.95,26.1301,0,0,4.39509,0,0),(64059,36,9840.72,-7285.18,26.2211,0,0,4.87575,0,0),
(64059,37,9854.58,-7320.47,26.2816,0,0,5.59517,0,0),(64059,38,9877.46,-7320.4,25.71,0,0,5.90069,0,0),(64059,39,9891.5,-7329.49,22.8815,0,0,5.35955,0,0),
(64059,40,9894.34,-7343.66,22.3979,0,0,4.72888,0,0),(64059,41,9893.21,-7351.31,20.6479,0,0,4.62285,0,0),(64059,42,9890.91,-7369.46,20.7144,0,0,4.5718,0,0),
(64059,43,9888.19,-7388.55,13.5651,0,0,4.60715,0,0),(64059,44,9885.37,-7412.69,13.2651,0,0,3.98034,0,0),(64059,45,9879.32,-7418.23,13.2651,0,0,3.60727,0,0),
(64059,46,9850.15,-7420.8,13.3167,0,0,4.13742,0,0),
-- #3
(64060,1,9660.13,-7158.27,14.3233,0,0,0.270114,0,0),(64060,2,9667.71,-7153.79,14.3233,0,0,0.867017,0,0),(64060,3,9672.93,-7146.66,14.3237,0,0,1.28956,0,0),
(64060,4,9672.93,-7136.62,14.3238,0,0,0.100468,0,0),(64060,5,9702.89,-7129.69,13.9218,0,0,0.960062,0,0),(64060,6,9702.85,-7123.77,13.9204,0,0,1.84599,0,0),
(64060,7,9694.97,-7101.03,13.9209,0,0,1.7863,0,0),(64060,8,9685.25,-7089.14,14.3246,0,0,2.81807,0,0),(64060,9,9649.26,-7084.89,14.3159,0,0,3.20999,0,0),
(64060,10,9611.6,-7104.24,14.4294,0,0,3.62625,0,0),(64060,11,9597.42,-7108.99,14.4461,0,0,3.25397,0,0),(64060,12,9543.35,-7110.42,14.3429,0,0,3.31287,0,0),
(64060,13,9531.5,-7116.31,14.2175,0,0,3.72914,0,0),(64060,14,9523.96,-7128.79,14.1171,0,0,4.46976,0,0),(64060,15,9526.91,-7165.06,14.139,0,0,5.16091,0,0),
(64060,16,9537.07,-7171.87,14.1139,0,0,6.05312,0,0),(64060,17,9576.68,-7173.84,14.2325,0,0,6.22983,0,0),(64060,18,9621.82,-7177.9,14.3065,0,0,6.14736,0,0),
(64060,19,9672.7,-7185.15,14.322,0,0,0.533337,0,0),(64060,20,9696.98,-7166.98,13.9231,0,0,0.710052,0,0),(64060,21,9704.29,-7137.89,13.9225,0,0,3.09611,0,0),
(64060,22,9674.72,-7136.34,14.3243,0,0,2.16462,0,0),(64060,23,9672.34,-7124.26,14.3244,0,0,1.8756,0,0),(64060,24,9666.38,-7115.44,14.3244,0,0,2.42459,0,0),
(64060,25,9654.07,-7111.3,14.323,0,0,3.03485,0,0),(64060,26,9637.09,-7111.58,14.323,0,0,3.36707,0,0),(64060,27,9628.53,-7117.47,14.3232,0,0,4.0967,0,0),
(64060,28,9623.45,-7129.11,14.3235,0,0,4.47324,0,0),(64060,29,9623.23,-7142.6,14.3236,0,0,4.95861,0,0),(64060,30,9627.91,-7154.79,14.3237,0,0,5.52162,0,0),
(64060,31,9636.41,-7159.43,14.3237,0,0,6.0282,0,0),(64060,32,9648.92,-7160.64,14.3237,0,0,6.27952,0,0);
 -- Duplicate removed
DELETE FROM creature WHERE guid = 64058;
DELETE FROM creature_addon WHERE guid = 64058;

-- UDB_151
-- Silvermoon City
-- Silvermoon City Guardian
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid IN (56891,56892,56902);
DELETE FROM creature_movement WHERE id IN (56891,56892,56902);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #1
(56902,1,9560.49,-7396.32,16.8383,0,0,5.6878,0,0),(56902,2,9564.74,-7403.01,16.8514,0,0,4.68171,0,0),(56902,3,9564.68,-7408.04,19.4736,0,0,4.66993,0,0),
(56902,4,9564.38,-7414.49,19.4725,0,0,4.11388,0,0),(56902,5,9558.59,-7417.48,19.4758,0,0,4.72446,0,0),(56902,6,9559.22,-7420.59,19.4761,0,0,5.10536,0,0),
(56902,7,9562.27,-7428.57,15.4674,0,0,5.10536,0,0),(56902,8,9564.18,-7435.28,15.4907,0,0,4.74408,0,0),(56902,9,9565.33,-7463.57,15.5186,0,0,6.16879,0,0),
(56902,10,9577.41,-7464.07,15.5913,0,0,6.27952,0,0),(56902,11,9582.32,-7464.09,13.5058,0,0,6.27952,0,0),(56902,12,9588.13,-7463.91,13.5186,0,0,0.933318,0,0),
(56902,13,9603.74,-7428.58,13.3051,0,0,1.6064,0,0),(56902,14,9596.36,-7407.73,13.3051,0,0,1.67709,0,0),(56902,15,9595.16,-7386.97,13.5132,0,0,2.60857,0,0),
(56902,16,9579.44,-7384.89,13.4101,0,0,2.85833,0,0),(56902,17,9574.33,-7383.12,14.407,0,0,2.41694,0,0),(56902,18,9572.22,-7377.31,14.7057,0,0,1.5849,0,0),
(56902,19,9573.56,-7372.09,14.7057,0,0,1.05083,0,0),(56902,20,9579.46,-7368.83,13.4065,0,0,0.10678,0,0),(56902,21,9594.91,-7367.79,13.4935,0,0,1.56762,0,0),
(56902,22,9593.18,-7332.37,14.1488,0,0,2.2462,0,0),(56902,23,9583.93,-7326.35,14.1609,0,0,3.14863,0,0),(56902,24,9521.05,-7325.67,14.1198,0,0,4.20577,0,0),
(56902,25,9508.47,-7349.5,14.3415,0,0,4.62753,0,0),(56902,26,9507.56,-7390.61,14.325,0,0,5.69488,0,0),(56902,27,9514.72,-7396,14.3151,0,0,6.09529,0,0),
(56902,28,9528.65,-7396.22,16.8212,0,0,0.00373459,0,0),(56902,29,9535.75,-7396.2,16.8384,0,0,0.00373459,0,0),
-- #2
(56891,1,9673.84,-7435.99,13.2939,0,0,5.97904,0,0),(56891,2,9687.66,-7436.96,13.2939,0,0,0.3548,0,0),(56891,3,9700.6,-7433.75,13.2939,0,0,0.511094,0,0),
(56891,4,9714.79,-7423.78,13.2939,0,0,0.427842,0,0),(56891,5,9727.95,-7419.62,13.2963,0,0,0.0736273,0,0),(56891,6,9765.58,-7418.83,13.3839,0,0,4.92661,0,0),
(56891,7,9767.47,-7441.57,14.4133,0,0,6.26571,0,0),(56891,8,9792.69,-7441.8,14.4079,0,0,1.32948,0,0),(56891,9,9795.92,-7420.71,13.4716,0,0,0.159236,0,0),
(56891,10,9844.77,-7420.46,13.3168,0,0,0.00608253,0,0),(56891,11,9878.71,-7419.53,13.2654,0,0,0.659534,0,0),(56891,12,9883.66,-7413.79,13.2654,0,0,1.11742,0,0),
(56891,13,9885.98,-7388.42,13.5646,0,0,1.57295,0,0),(56891,14,9886.67,-7369.45,20.7161,0,0,2.02691,0,0),(56891,15,9881.59,-7364.04,20.7046,0,0,2.8665,0,0),
(56891,16,9873.68,-7363.73,20.7358,0,0,3.17517,0,0),(56891,17,9865.79,-7365.88,18.6026,0,0,3.51681,0,0),(56891,18,9853.48,-7370.67,18.6021,0,0,3.36658,0,0),
(56891,19,9847.12,-7370.96,18.6028,0,0,2.90241,0,0),(56891,20,9834.14,-7363.61,18.599,0,0,2.85763,0,0),(56891,21,9827.21,-7362.87,20.7376,0,0,3.22677,0,0),
(56891,22,9810.54,-7363.6,20.7032,0,0,3.19143,0,0),(56891,23,9827.15,-7362.82,20.7375,0,0,0.0655412,0,0),(56891,24,9834.22,-7364.16,18.599,0,0,5.80131,0,0),
(56891,25,9844.13,-7371.12,18.6044,0,0,6.022,0,0),(56891,26,9853.34,-7371.22,18.6058,0,0,0.147223,0,0),(56891,27,9866.1,-7365.73,18.602,0,0,0.422112,0,0),
(56891,28,9873.43,-7363.51,20.7371,0,0,0.0623996,0,0),(56891,29,9883.24,-7363.54,20.7022,0,0,5.81899,0,0),(56891,30,9887.78,-7369.19,20.7141,0,0,4.97026,0,0),
(56891,31,9886.29,-7388.51,13.5651,0,0,4.68437,0,0),(56891,32,9884.02,-7413.8,13.2644,0,0,4.25005,0,0),(56891,33,9878.83,-7419.42,13.2644,0,0,3.52277,0,0),
(56891,34,9845.1,-7420.47,13.3175,0,0,3.21379,0,0),(56891,35,9796.65,-7420.79,13.4841,0,0,4.19181,0,0),(56891,36,9792.82,-7441.82,14.4093,0,0,3.59883,0,0),
(56891,37,9767.99,-7441.53,14.403,0,0,2.2172,0,0),(56891,38,9765.12,-7419.18,13.3795,0,0,3.15378,0,0),(56891,39,9728.01,-7419.58,13.2973,0,0,3.30536,0,0),
(56891,40,9714.34,-7424.05,13.2931,0,0,3.80566,0,0),(56891,41,9700.82,-7433.67,13.2931,0,0,3.59125,0,0),(56891,42,9687.3,-7437.1,13.2931,0,0,3.2064,0,0),
(56891,43,9673.06,-7436.09,13.2931,0,0,2.81056,0,0),(56891,44,9654.55,-7426.66,13.2931,0,0,2.89381,0,0),(56891,45,9608.8,-7424.28,13.3049,0,0,2.73043,0,0),
(56891,46,9598.95,-7414.27,13.3049,0,0,2.10211,0,0),(56891,47,9597.57,-7406.57,13.3049,0,0,1.6725,0,0),(56891,48,9597.25,-7386.82,13.5117,0,0,0.713527,0,0),
(56891,49,9616.95,-7384.2,14.411,0,0,0.805563,0,0),(56891,50,9618.38,-7369.19,14.4125,0,0,1.57313,0,0),(56891,51,9617.31,-7383.18,14.3943,0,0,3.70313,0,0),
(56891,52,9597.4,-7386.56,13.5055,0,0,4.54357,0,0),(56891,53,9597.69,-7406.42,13.3037,0,0,4.97082,0,0),(56891,54,9603.99,-7419.48,13.3038,0,0,5.57682,0,0),
(56891,55,9611.77,-7424.61,13.3055,0,0,6.25226,0,0),(56891,56,9655.53,-7426.25,13.2944,0,0,6.0292,0,0),(56891,57,9665.34,-7432.27,13.293,0,0,5.74175,0,0),
-- #3
(56892,1,9767.13,-7417.75,13.3854,0,0,3.17742,0,0),(56892,2,9727.21,-7418.05,13.2973,0,0,3.36984,0,0),(56892,3,9716.3,-7421.25,13.2942,0,0,3.65887,0,0),
(56892,4,9700.68,-7431.93,13.2942,0,0,3.57247,0,0),(56892,5,9686.2,-7435.45,13.2942,0,0,3.2269,0,0),(56892,6,9675.68,-7435.11,13.2942,0,0,2.86483,0,0),
(56892,7,9666.62,-7431.39,13.2942,0,0,2.59779,0,0),(56892,8,9653.54,-7423.55,13.2942,0,0,3.11223,0,0),(56892,9,9606.06,-7423.15,13.3049,0,0,3.64316,0,0),
(56892,10,9596.27,-7431.95,13.5698,0,0,3.66384,0,0),(56892,11,9582.23,-7435.5,13.5049,0,0,3.19025,0,0),(56892,12,9577.46,-7435.31,15.5956,0,0,3.2413,0,0),
(56892,13,9568,-7434.97,15.5026,0,0,2.73236,0,0),(56892,14,9561.1,-7428.51,15.4622,0,0,2.07262,0,0),(56892,15,9564.28,-7413.78,19.4721,0,0,1.6116,0,0),
(56892,16,9564.07,-7408.31,19.4735,0,0,1.65087,0,0),(56892,17,9563.86,-7403.26,16.9085,0,0,1.58018,0,0),(56892,18,9563.77,-7398.01,16.8513,0,0,2.62319,0,0),
(56892,19,9556.59,-7396.31,16.8217,0,0,3.24947,0,0),(56892,20,9528.73,-7397.64,16.8206,0,0,3.26518,0,0),(56892,21,9514.42,-7397.77,14.3157,0,0,3.11595,0,0),
(56892,22,9509.02,-7397.47,14.317,0,0,2.65257,0,0),(56892,23,9508,-7364.15,14.3187,0,0,1.54908,0,0),(56892,24,9508.94,-7325.06,14.1196,0,0,1.56872,0,0),
(56892,25,9509.57,-7285.92,14.0155,0,0,1.36373,0,0),(56892,26,9516.6,-7276.69,14.0155,0,0,0.539061,0,0),(56892,27,9528.47,-7274.38,13.9457,0,0,6.24557,0,0),
(56892,28,9569.25,-7274.65,13.9378,0,0,6.27699,0,0),(56892,29,9610.68,-7275.22,13.9415,0,0,6.27699,0,0),(56892,30,9643.3,-7275.27,13.9415,0,0,0.00558472,0,0),
(56892,31,9672.16,-7275.27,13.9852,0,0,5.88115,0,0),(56892,32,9675.04,-7280.37,14.0518,0,0,4.83757,0,0),(56892,33,9676.73,-7295.55,13.9345,0,0,5.83032,0,0),
(56892,34,9698.08,-7297.43,14.8766,0,0,5.51184,0,0),(56892,35,9698.74,-7309.28,14.953,0,0,3.90076,0,0),(56892,36,9677.92,-7310.69,13.9355,0,0,4.80167,0,0),
(56892,37,9677.19,-7328.18,13.7552,0,0,4.68857,0,0),(56892,38,9676.32,-7336.28,11.6203,0,0,4.62181,0,0),(56892,39,9674.75,-7355.5,11.9346,0,0,3.35575,0,0),
(56892,40,9669.16,-7356.35,11.9346,0,0,4.29321,0,0),(56892,41,9668.26,-7363.48,11.9346,0,0,5.62367,0,0),(56892,42,9677.16,-7371.41,11.9346,0,0,5.77528,0,0),
(56892,43,9689.84,-7376.81,11.9315,0,0,5.24828,0,0),(56892,44,9690.38,-7383.97,11.7758,0,0,3.3649,0,0),(56892,45,9683.22,-7385.04,11.6,0,0,4.78566,0,0),
(56892,46,9683.27,-7411,11.5461,0,0,4.73854,0,0),(56892,47,9682.15,-7424.15,13.6871,0,0,4.62466,0,0),(56892,48,9683.08,-7411.54,11.5687,0,0,1.54197,0,0),
(56892,49,9683.2,-7385.05,11.6003,0,0,0.205217,0,0),(56892,50,9690.31,-7383.6,11.7828,0,0,1.39592,0,0),(56892,51,9689.81,-7377.11,11.9286,0,0,2.43005,0,0),
(56892,52,9676.91,-7371.48,11.9321,0,0,2.54387,0,0),(56892,53,9668.42,-7362.14,11.9322,0,0,1.89121,0,0),(56892,54,9668.67,-7356.58,11.9322,0,0,0.319623,0,0),
(56892,55,9674.35,-7356,11.9322,0,0,0.914083,0,0),(56892,56,9676.32,-7336.26,11.6205,0,0,1.51648,0,0),(56892,57,9676.87,-7328.33,13.7505,0,0,1.49685,0,0),
(56892,58,9676.78,-7311.71,13.935,0,0,0.254348,0,0),(56892,59,9698.28,-7309.79,14.9634,0,0,1.14565,0,0),(56892,60,9698.35,-7297.54,14.9656,0,0,2.74786,0,0),
(56892,61,9678.72,-7296.14,13.8744,0,0,2.52952,0,0),(56892,62,9674.97,-7280.72,14.055,0,0,2.224,0,0),(56892,63,9670.14,-7275.79,13.9722,0,0,2.90415,0,0),
(56892,64,9642.15,-7275.7,13.9425,0,0,3.15234,0,0),(56892,65,9610.76,-7275.69,13.9453,0,0,3.11935,0,0),(56892,66,9568.77,-7275.14,13.9425,0,0,3.15077,0,0),
(56892,67,9527.08,-7274.84,13.9577,0,0,3.2403,0,0),(56892,68,9516.4,-7276.99,14.0154,0,0,3.63457,0,0),(56892,69,9509.36,-7285.78,14.0154,0,0,4.64074,0,0),
(56892,70,9508.43,-7324.26,14.1171,0,0,4.68001,0,0),(56892,71,9507.8,-7348.75,14.3443,0,0,4.69179,0,0),(56892,72,9507.16,-7376.74,14.3204,0,0,4.68393,0,0),
(56892,73,9508.11,-7396.32,14.3189,0,0,5.73479,0,0),(56892,74,9514.72,-7398.18,14.3158,0,0,0.00557729,0,0),(56892,75,9528.59,-7397.59,16.8203,0,0,0.0613386,0,0),
(56892,76,9563.13,-7396.34,16.8458,0,0,4.98264,0,0),(56892,77,9564.18,-7402.8,16.8495,0,0,4.88761,0,0),(56892,78,9564.4,-7408.38,19.4735,0,0,4.72268,0,0),
(56892,79,9564.29,-7415.49,19.4729,0,0,4.51141,0,0),(56892,80,9560.25,-7420.3,19.4757,0,0,4.79023,0,0),(56892,81,9562.37,-7429.16,15.4691,0,0,5.15072,0,0),
(56892,82,9566.71,-7434.65,15.4983,0,0,5.97774,0,0),(56892,83,9577.3,-7435.58,15.5906,0,0,0.0081892,0,0),(56892,84,9582.37,-7435.43,13.5044,0,0,0.0317511,0,0),
(56892,85,9594.53,-7434.76,13.548,0,0,0.348267,0,0),(56892,86,9610.35,-7423.46,13.3061,0,0,6.24189,0,0),(56892,87,9654,-7424.37,13.2933,0,0,5.93674,0,0),
(56892,88,9670.62,-7433.2,13.2933,0,0,5.9658,0,0),(56892,89,9681.75,-7435.49,13.2933,0,0,0.0156261,0,0),(56892,90,9695.52,-7434.36,13.2933,0,0,0.310936,0,0),
(56892,91,9715.86,-7421.42,13.2933,0,0,0.548126,0,0),(56892,92,9727.47,-7418.14,13.2962,0,0,0.090239,0,0),(56892,93,9765.98,-7418.08,13.3854,0,0,1.20943,0,0),
(56892,94,9767.99,-7396.27,14.408,0,0,0.0790633,0,0),(56892,95,9794.52,-7396.24,14.4224,0,0,4.77025,0,0),(56892,96,9794.64,-7417.77,13.4944,0,0,4.79164,0,0),
(56892,97,9794.3,-7395.9,14.4203,0,0,3.08026,0,0),(56892,98,9768.28,-7396.21,14.4007,0,0,4.61243,0,0);

-- UDB_152
-- Silvermoon City
-- Mirvedon <Apprentice Blacksmith>
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 57661;
DELETE FROM creature_movement WHERE id = 57661;
UPDATE creature_template SET NpcFlags = 0, MovementType = 2 WHERE entry = 16671;
DELETE FROM creature_movement_template WHERE entry = 16671;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(16671,1,9859.67,-7361.79,18.5932,30000,0,4.66003,0,0),
(16671,2,9858.73,-7363.12,18.5903,60000,1667101,3.02245,0,0),
(16671,3,9859.67,-7361.79,18.5932,1000,0,1.31107,0,0),
(16671,4,9859.67,-7361.79,18.5932,240000,0,4.66003,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1667101; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1667101,2,1,173,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1667101,58,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Gloresse <Apprentice Engineer>
UPDATE creature_template SET NpcFlags = 0 WHERE entry = 16668;
-- Danwe <Engineering Trainer>
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 57657;
DELETE FROM creature_movement WHERE id = 57657;
UPDATE creature_template SET MovementType = 2 WHERE entry = 16667;
DELETE FROM creature_movement_template WHERE entry = 16667;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(16667,1,9822.16,-7333.16,26.3,30000,0,0.8303,0,0),
(16667,2,9822.35,-7331.03,26.2814,0,0,2.14044,0,0),
(16667,3,9820.39,-7329.52,26.2814,0,0,3.48268,0,0),
(16667,4,9819.43,-7330.37,26.2814,30000,1666701,4.24059,0,0),
(16667,5,9820.59,-7329.88,26.2814,0,0,5.83102,0,0),
(16667,6,9821.49,-7331.48,26.2814,0,0,5.17521,0,0),
(16667,7,9821.25,-7331.97,26.2814,30000,1666702,3.97591,0,0),
(16667,8,9822.16,-7333.16,26.3,0,0,5.81059,0,0),
(16667,9,9822.16,-7333.16,26.3,200000,0,0.8303,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1666701,1666702); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1666701,2,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1666701,28,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1666702,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1666702,28,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Dolothos <Apprentice Enchanter>
UPDATE creature_template SET GossipMenuId = 8828 WHERE entry = 16634;
-- Razia <Apprentice Alchemist>
UPDATE creature SET position_x = 10013.35, position_y = -7214.863, position_z = 32.07484, orientation = 2.042035, Spawndist = 0, MovementType = 2 WHERE guid = 57637;
DELETE FROM creature_movement WHERE id = 57637;
UPDATE creature_template SET NpcFlags = 0, MovementType = 2 WHERE entry = 16643;
DELETE FROM creature_movement_template WHERE entry = 16643;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(16643,1,10013.35,-7214.863,32.07484,30000,0,2.042035,0,0),
(16643,2,10013.5,-7217.56,32.0748,0,0,5.5705,0,0),
(16643,3,10016.2,-7218.02,32.0748,20000,1664301,0.0218375,0,0),
(16643,4,10014.7,-7217.3,32.0764,0,0,2.13927,0,0),
(16643,5,10017.5,-7213.64,32.0764,0,0,1.15909,0,0),
(16643,6,10017.7,-7210.42,32.0756,6000,1664302,1.274931,0,0),
(16643,7,10017.5,-7213.48,32.0764,0,0,3.7964,0,0),
(16643,8,10013.35,-7214.863,32.07484,0,0,3.30946,0,0),
(16643,9,10013.35,-7214.863,32.07484,240000,0,2.042035,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1664301,1664302); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1664301,2,1,25,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1664302,2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- [DND]Spirit 1 -- removed spawned by event?
DELETE FROM creature WHERE guid = 84939;
DELETE FROM creature_addon WHERE guid = 84939;

-- UDB_153
-- Tandrine - the guild master
UPDATE creature_template  SET  GossipMenuId = 7440 WHERE  Entry = 16568;
DELETE FROM gossip_menu WHERE entry = 7440; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7440, 9008, 0, 0);

-- UDB_154
-- Silvermoon City
-- Rarthein
UPDATE creature SET position_x = 9586.497070, position_y = -7202.758789, position_z = 16.205301, orientation = 1.522827, Spawndist = 0, MovementType = 2 WHERE guid = 66970;
DELETE FROM creature_movement WHERE id = 66970;
UPDATE creature_template SET NpcFlags = 0, MovementType = 2 WHERE entry = 18727;
DELETE FROM creature_movement_template WHERE entry = 18727;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(18727,1,9586.497070,-7202.758789,16.205301,5000,0,1.522827,0,0),
(18727,2,9587.55,-7204.13,16.2006,0,0,5.29506,0,0),(18727,3,9588.6,-7205.78,16.2006,0,0,4.73979,0,0),(18727,4,9588.04,-7209.86,16.2025,0,0,4.1994,0,0),
(18727,5,9584.88,-7214.49,16.1985,0,0,3.65355,0,0),(18727,6,9579.07,-7217.02,16.1514,8000,1872701,3.20666,0,0),(18727,7,9578.43,-7219.72,16.1383,0,0,3.92059,0,0),
(18727,8,9568.69,-7222.02,16.2126,0,0,3.23729,0,0),(18727,9,9562.48,-7219.13,16.2126,0,0,2.23591,0,0),(18727,10,9562.09,-7203.71,16.2126,0,0,0.610919,0,0),
(18727,11,9567.19,-7202.73,16.2126,0,0,0.631558,0,0),(18727,12,9568.08,-7187.2,16.5271,0,0,1.5866,0,0),(18727,13,9568.24,-7181.51,14.2397,0,0,1.55126,0,0),
(18727,14,9587.24,-7137.61,14.2627,0,0,1.52691,0,0),(18727,15,9583.26,-7097.02,14.5515,0,0,1.64943,0,0),(18727,16,9583.12,-7091.6,16.6671,0,0,1.60624,0,0),
(18727,17,9581.53,-7079.96,16.5304,0,0,1.73975,0,0),(18727,18,9580.68,-7074.95,18.6386,0,0,1.73975,0,0),(18727,19,9580.75,-7066.61,18.6391,0,0,1.37424,0,0),
(18727,20,9585.13,-7061.39,18.6423,0,0,1.39073,0,0),(18727,21,9585,-7056.83,18.6423,0,0,2.21858,0,0),(18727,22,9582.33,-7054.65,18.6439,7000,1872702,2.78957,0,0),
(18727,23,9585.37,-7056.86,18.6439,0,0,5.1222,0,0),(18727,24,9584.67,-7061.35,18.6439,0,0,4.51621,0,0),(18727,25,9580.31,-7066.88,18.6412,0,0,4.484,0,0),
(18727,26,9580.46,-7074.95,18.6395,0,0,4.74904,0,0),(18727,27,9580.67,-7080.07,16.5316,0,0,4.30372,0,0),(18727,28,9569.24,-7086.4,16.582,0,0,3.25128,0,0),
(18727,29,9545.86,-7087.62,16.5404,0,0,3.88196,0,0),(18727,30,9542.71,-7091.86,16.5168,0,0,4.10808,0,0),(18727,31,9539.4,-7096.66,14.4661,0,0,4.10808,0,0),
(18727,32,9534.56,-7103.86,14.341,7000,1872702,3.3164,0,0),(18727,33,9524.06,-7127.59,14.1184,0,0,4.26124,0,0),(18727,34,9523.94,-7126.39,14.1176,10000,0,1.6168,0,0),
(18727,35,9537.51,-7156.96,14.1588,0,0,5.4299,0,0),(18727,36,9562.06,-7172.62,14.2444,0,0,5.66237,0,0),(18727,37,9568.14,-7182.04,14.2361,0,0,4.90918,0,0),
(18727,38,9568.36,-7186.78,16.5291,0,0,4.79451,0,0),(18727,39,9567.72,-7202.33,16.2138,0,0,3.61799,0,0),(18727,40,9562.09,-7203.15,16.2123,0,0,4.0153,0,0),
(18727,41,9562.07,-7210.69,16.2123,0,0,5.55546,0,0),(18727,42,9576.27,-7211.77,16.1386,0,0,0.102439,0,0),(18727,43,9591.85,-7210.33,16.206,0,0,0.988835,0,0),
(18727,44,9592.05,-7204.59,17.9038,0,0,1.88102,0,0),(18727,45,9588.15,-7201.2,20.3475,0,0,3.10231,0,0),(18727,46,9583.17,-7201.31,22.8544,0,0,3.4571,0,0),
(18727,47,9580.18,-7203.92,25.1809,0,0,4.18987,0,0),(18727,48,9578.03,-7207.81,27.1404,0,0,4.29982,0,0),(18727,49,9573.93,-7214.83,27.2006,0,0,4.42156,0,0),
(18727,50,9573.79,-7224.73,27.1387,0,0,4.94777,0,0),(18727,51,9578.31,-7237.95,27.0304,0,0,5.56068,0,0),(18727,52,9581.59,-7238.52,27.0304,0,0,0.759454,0,0),
(18727,53,9581.49,-7236.7,27.0288,10000,1872701,1.49884,0,0),(18727,54,9584.05,-7237.43,27.0298,0,0,6.04659,0,0),(18727,55,9586.68,-7235.59,27.0228,0,0,1.51092,0,0),
(18727,56,9587.38,-7228.13,27.1259,0,0,0.501681,0,0),(18727,57,9591.13,-7226.99,27.1205,0,0,6.21938,0,0),(18727,58,9592.63,-7227.77,27.1057,0,0,5.10883,0,0),
(18727,59,9592.84,-7229.38,27.1038,10000,1872701,4.66298,0,0),(18727,60,9588.56,-7227.1,27.1272,0,0,2.97438,0,0),(18727,61,9575.41,-7226.46,27.135,0,0,2.69399,0,0),
(18727,62,9570.79,-7210.44,27.1844,10000,1872701,1.73737,0,0),(18727,63,9578.34,-7208.22,27.1499,0,0,1.10811,0,0),(18727,64,9579.96,-7203.93,25.205,0,0,0.920398,0,0),
(18727,65,9582.85,-7201.6,23.1841,0,0,0.289723,0,0),(18727,66,9587.58,-7200.91,20.91,0,0,6.15665,0,0),(18727,67,9591.49,-7204.06,18.2092,0,0,5.28878,0,0),
(18727,68,9592.15,-7209.27,16.209,0,0,4.6801,0,0),(18727,69,9589.79,-7210.7,16.2042,0,0,3.04255,0,0),(18727,70,9588.48,-7206.98,16.2007,0,0,1.80554,0,0),
(18727,71,9587.51,-7204.39,16.2007,0,0,1.99011,0,0),(18727,72,9586.58,-7202.75,16.2056,40000,1872701,1.54244,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1872701,1872702); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1872701,2,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1872702,2,1,6,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- UDB_155
-- Silvermoon City
-- Innkeeper Jovia <Innkeeper>
UPDATE creature_template SET GossipMenuId = 7288 WHERE Entry = 17630;
DELETE FROM gossip_menu WHERE entry = 7288;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7288, 8618, 0, 0);
-- Winthren <Shield Merchant>
UPDATE creature SET position_x = 9451.738, position_y = -7122.863, position_z = 16.14618, orientation = 6.128479, Spawndist = 0, MovementType = 2 WHERE guid = 57682;
DELETE FROM creature_movement WHERE id = 57682;
UPDATE creature_template SET MovementType = 2 WHERE entry = 16693;
DELETE FROM creature_movement_template WHERE entry = 16693;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(16693,1,9451.738,-7122.863,16.14618,30000,0,6.128479,0,0),
(16693,2,9452.37,-7125.35,16.1465,30000,1669301,5.8332,0,0),
(16693,3,9451.99,-7128.64,16.1465,30000,1669301,4.45247,0,0),
(16693,4,9451.738,-7122.863,16.14618,0,0,1.57634,0,0),
(16693,5,9451.738,-7122.863,16.14618,30000,0,6.128479,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1669301; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1669301,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1669301,28,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Tynna <Plate Armor Merchant>
UPDATE creature SET position_x = 9453.12, position_y = -7138.64, position_z = 16.1464, orientation = 0.186189, Spawndist = 0, MovementType = 2 WHERE guid = 57621;
DELETE FROM creature_movement WHERE id = 57621;
UPDATE creature_template SET MovementType = 2 WHERE entry = 16626;
DELETE FROM creature_movement_template WHERE entry = 16626;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(16626,1,9453.12,-7138.64,16.1464,45000,0,0.186189,0,0),
(16626,2,9455.66,-7135.42,16.1352,0,0,2.63973,0,0),
(16626,3,9453.97,-7134.69,16.1431,30000,1662601,2.99316,0,0),
(16626,4,9451.153,-7138.656,16.14635,30000,1662601,3.255405,0,0),
(16626,5,9453.12,-7138.64,16.1464,240000,0,0.186189,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1662601; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1662601,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1662601,28,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Zalle <Reagents>
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 57608;
DELETE FROM creature_movement WHERE id = 57608;
UPDATE creature_template SET SpeedWalk = 1, SpeedRun = 1.142857, MovementType = 2 WHERE entry = 16611;
DELETE FROM creature_movement_template WHERE entry = 16611;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(16611,1,9572.41,-7060.69,18.6436,30000,0,0.178202,0,0),
(16611,2,9581.56,-7062.5,18.6436,0,0,0.355444,0,0),
(16611,3,9590.1,-7060.46,18.6436,30000,1661101,0.405962,0,0),
(16611,4,9587.3,-7060.51,18.6436,0,0,4.57644,0,0),
(16611,5,9586.82,-7062.25,18.6436,20000,0,4.22301,0,0),
(16611,6,9581.68,-7062.86,18.6436,0,0,3.11873,0,0),
(16611,7,9571.29,-7061.17,18.6436,0,0,2.85641,0,0),
(16611,8,9572.41,-7060.69,18.6436,180000,0,0.178202,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1661101; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1661101,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1661101,28,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- UDB_156
-- The Steamvault
-- Tidal Surger #1
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 12695;
DELETE FROM creature_movement WHERE id = 12695;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(12695,1,27.0136,-145.039,-22.3968,0,0,4.2748,0,0),(12695,2,21.4739,-159.21,-22.4082,0,0,4.6832,0,0),(12695,3,26.7279,-177.709,-22.3997,0,0,5.36256,0,0),
(12695,4,21.8476,-158.618,-22.4052,0,0,1.39002,0,0),(12695,5,30.8925,-138.629,-22.5491,0,0,0.720856,0,0),(12695,6,57.7822,-114.87,-22.6239,0,0,0.591266,0,0),
(12695,7,38.5541,-130.114,-22.6439,0,0,3.84281,0,0);
-- Steam Surgers
UPDATE creature SET position_x = 38.004841, position_y = -130.148880, position_z = -22.624664, orientation = 3.122529 WHERE guid = 12704;
UPDATE creature SET position_x = 38.839870, position_y = -126.107468, position_z = -22.576244, orientation = 3.196008 WHERE guid = 12688;
UPDATE creature SET position_x = 38.736404, position_y = -133.644135, position_z = -22.719330, orientation = 3.160665 WHERE guid = 12694;
-- Links
DELETE FROM creature_linking WHERE guid IN (12704, 12688, 12694, 12696);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(12704, 12695, 1+4+128+512),
(12688, 12695, 1+4+128+512),
(12694, 12695, 1+4+128+512),
(12696, 12695, 1+4+128+512);
-- Tidal Surger #2
UPDATE creature SET position_x = 1.503358, position_y = -176.132187, position_z = -22.362617, orientation = 6.039896, Spawndist = 0, MovementType = 2 WHERE guid = 12700;
DELETE FROM creature_movement WHERE id = 12700;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(12700,1,13.0123,-180.845,-22.3747,0,0,5.74062,0,0),(12700,2,17.6451,-189.086,-22.4312,0,0,4.86726,0,0),(12700,3,18.475,-205.289,-22.3882,0,0,4.74945,0,0),
(12700,4,17.0985,-188.306,-22.4238,0,0,1.99428,0,0),(12700,5,9.53988,-180.075,-22.4403,0,0,2.69328,0,0),(12700,6,-7.20501,-173.28,-23.2732,0,0,2.88963,0,0),
(12700,7,2.36385,-176.577,-22.3011,0,0,5.97624,0,0);
-- Steam Surgers
UPDATE creature SET position_x = 2.846399, position_y = -176.441040, position_z = -22.290167, orientation = 6.016719 WHERE guid = 12701;
UPDATE creature SET position_x = 0.480689, position_y = -173.216721, position_z = -22.139637, orientation = 6.068146 WHERE guid = 12703;
UPDATE creature SET position_x = -0.120366, position_y = -177.977997, position_z = -22.869598, orientation = 6.175745 WHERE guid = 12702;
UPDATE creature SET position_x = -0.890754, position_y = -175.418060, position_z = -22.789379, orientation = 6.043005 WHERE guid = 12684;
DELETE FROM creature_linking WHERE guid IN (12703, 12703, 12702, 12684);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(12701, 12700, 1+4+128+512),
(12703, 12700, 1+4+128+512),
(12702, 12700, 1+4+128+512),
(12684, 12700, 1+4+128+512);
-- Tidal Surger #3
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 12679;
DELETE FROM creature_movement WHERE id = 12679;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(12679,1,22.672,-223.202,-22.536,0,0,0.814135,0,0),(12679,2,39.0578,-210.222,-22.6133,0,0,0.594223,0,0),(12679,3,22.1297,-224.366,-22.5328,0,0,4.12852,0,0),
(12679,4,8.45932,-247.386,-23.3366,0,0,4.29345,0,0);
DELETE FROM creature_linking WHERE guid IN (12680, 12681, 12682, 12683);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(12680, 12679, 1+4+128+512),
(12681, 12679, 1+4+128+512),
(12682, 12679, 1+4+128+512),
(12683, 12679, 1+4+128+512);

-- UDB_157
-- Archmage Leryda
-- Quest(s) become obtainable with her once one hits 'friendly' with the Violet Eye. 
UPDATE creature_template SET NPCFlags = 2 WHERE entry = 18253;

-- UDB_158
-- Silvermoon City
-- Herald Amorlin -- gossip
UPDATE creature_template SET GossipMenuId = 5782 WHERE Entry = 20724;
-- Welethelon <Blunt Weapon Merchant>
UPDATE creature SET position_x = 9665.084, position_y = -7073.852, position_z = 14.32864, orientation = 4.869938, Spawndist = 0, MovementType = 2 WHERE guid = 57631;
DELETE FROM creature_movement WHERE id = 57631;
UPDATE creature_template SET MovementType = 2 WHERE entry = 16637;
DELETE FROM creature_movement_template WHERE entry = 16637;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(16637,1,9665.084,-7073.852,14.32864,30000,0,4.869938,0,0),(16637,2,9663.17,-7075.62,14.3327,0,0,4.51756,0,0),(16637,3,9662.24,-7078.38,14.3211,60000,0,4.83861,0,0),
(16637,4,9668.51,-7079.23,14.3343,0,0,6.24937,0,0),(16637,5,9668.51,-7079.23,14.3343,60000,0,4.62202,0,0),(16637,6,9666.14,-7076.94,14.3352,0,0,1.82958,0,0),
(16637,7,9665.084,-7073.852,14.32864,0,0,1.82958,0,0),(16637,8,9665.084,-7073.852,14.32864,30000,0,4.869938,0,0);
-- Noraelath <Leather Armor Merchant>
UPDATE creature SET position_x = 9651.68, position_y = -7070.56, position_z = 14.3104, orientation = 4.01189, Spawndist = 0, MovementType = 2 WHERE guid = 57680;
DELETE FROM creature_movement WHERE id = 57680;
UPDATE creature_template SET MovementType = 2 WHERE entry = 16691;
DELETE FROM creature_movement_template WHERE entry = 16691;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(16691,1,9651.68,-7070.56,14.3104,15000,0,4.01189,0,0),(16691,2,9650.83,-7073.55,14.3112,55000,0,4.28678,0,0),(16691,3,9649.54,-7070.92,14.3095,0,0,3.5163,0,0),
(16691,4,9648.21,-7071.54,14.3092,55000,0,4.22748,0,0),(16691,5,9651.68,-7070.56,14.3104,0,0,0.445533,0,0),(16691,6,9651.68,-7070.56,14.3104,40000,0,4.01189,0,0);
-- Rahein <Blade Vendor>
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 57668;
DELETE FROM creature_movement WHERE id = 57668;
UPDATE creature_template SET MovementType = 2 WHERE entry = 16678;
DELETE FROM creature_movement_template WHERE entry = 16678;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(16678,1,9630.69,-7032.97,15.2687,50000,0,4.7088,0,0),(16678,2,9636.05,-7031.66,15.2674,40000,1667801,0.794994,0,0),(16678,3,9630.66,-7032.19,15.2674,30000,0,3.27842,0,0),
(16678,4,9627.83,-7031.5,15.2674,40000,1667801,2.88416,0,0),(16678,5,9630.69,-7032.97,15.2687,0,0,5.94328,0,0),(16678,6,9630.69,-7032.97,15.2687,25000,0,4.7088,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1667801; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1667801,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1667801,37,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Feledis <Axe Vendor>
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 57656;
DELETE FROM creature_movement WHERE id = 57656;
UPDATE creature_template SET MovementType = 2 WHERE entry = 16666;
DELETE FROM creature_movement_template WHERE entry = 16666;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(16666,1,9644.87,-7037.51,15.2466,20000,0,4.28557,0,0),(16666,2,9649.12,-7037.71,15.247,0,0,0.629723,0,0),(16666,3,9649.12,-7037.71,15.247,0,0,0.629723,0,0),
(16666,4,9649.84,-7036.01,15.2545,45000,1666601,2.92466,0,0),(16666,5,9650.34,-7034.34,15.2614,0,0,1.71671,0,0),(16666,6,9647.34,-7032.51,15.2673,0,0,3.22389,0,0),
(16666,7,9647.34,-7032.51,15.2673,30000,0,4.63133,0,0),(16666,8,9644.26,-7032.12,15.2673,0,0,3.60854,0,0),(16666,9,9643.18,-7034.19,15.2648,30000,0,4.48346,0,0),
(16666,10,9643.12,-7036.25,15.254,0,0,5.52961,0,0),(16666,11,9644.87,-7037.51,15.2466,0,0,5.52961,0,0),(16666,12,9644.87,-7037.51,15.2466,20000,0,4.28557,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1666601; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1666601,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1666601,43,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- UDB_159
-- Silvermoon City
-- The Sanctum -- Small event between Leper Gnome Laborer and Sirigna'no <Keelen Sheets's Minion>
-- Leper Gnome Laborer
UPDATE creature SET position_x = 9734.615234, position_y = -7101.635254, position_z = 5.007354, orientation = 5.07277, Spawndist = 0, MovementType = 0 WHERE guid = 66966;
DELETE FROM creature_movement WHERE id = 66966;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(66966,1,9734.615234,-7101.635254,5.007354,5000,1872201,5.07277,0,0),(66966,2,9746.69,-7087.45,4.83844,0,0,0.592083,0,0),(66966,3,9762.85,-7084.05,5.6703,0,0,6.03411,0,0),
(66966,4,9763.642,-7085.864,5.669336,5000,1872202,3.630285,0,0),(66966,5,9754,-7086.93,4.78806,0,0,2.90427,0,0),(66966,6,9750.43,-7085.25,4.81097,0,0,3.01801,0,0),
(66966,7,9746.49,-7087.49,4.83771,0,0,4.17334,0,0),(66966,8,9746.58,-7092.51,4.86099,0,0,4.54189,0,0),(66966,9,9740.04,-7094.48,4.86946,0,0,3.56919,0,0),
(66966,10,9735.11,-7096.42,4.76647,0,0,4.0954,0,0),(66966,11,9733.75,-7098.94,4.87383,0,0,4.75592,0,0),(66966,12,9734.615234,-7101.635254,5.007354,10000,1872203,5.07277,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1872201,1872202,1872203); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1872201,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(1872202,2,28,3,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_SLEEP'),
(1872202,3,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'wp pause'),
(1872203,1,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN OFF'),
(1872203,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1872203,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(1872203,3,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
-- Sirigna'no <Keelen Sheets's Minion>
UPDATE creature SET position_x = 9730.512695, position_y = -7087.351074, position_z = 3.590496, orientation = 0.940451, spawndist = 0, MovementType = 2 WHERE guid = 66998;
DELETE FROM creature_movement WHERE id = 66998;
UPDATE creature_template SET MovementType = 2 WHERE entry = 18730;
DELETE FROM creature_movement_template WHERE entry = 18730;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(18730,1,9730.512695,-7087.351074,3.590496,50000,1873001,0.940451,0,0),(18730,2,9736.08,-7093.49,3.59087,0,0,5.60416,0,0),(18730,3,9737.95,-7095.48,4.86973,0,0,5.27194,0,0),
(18730,4,9738.96,-7098.11,4.87572,7000,1873002,5.07166,0,0),(18730,5,9731.78,-7098.66,4.8733,0,0,2.61281,0,0),(18730,6,9726.47,-7095.49,4.45682,0,0,3.01729,0,0),
(18730,7,9724.56,-7096.39,4.87236,0,0,3.96425,0,0),(18730,8,9723.14,-7098.31,4.88084,6000,1873003,4.1606,0,0),(18730,9,9722.82,-7094.91,4.87245,0,0,1.76514,0,0),
(18730,10,9721.27,-7090.53,4.87056,0,0,2.17747,0,0),(18730,11,9719.01,-7089.38,4.87391,0,0,3.02963,0,0),(18730,12,9716.85,-7089.77,4.88134,6000,1873003,3.40269,0,0),
(18730,13,9719.01,-7086.04,4.87501,0,0,1.10148,0,0),(18730,14,9720.17,-7080.84,4.87336,0,0,1.03236,0,0),(18730,15,9724.12,-7076.76,4.87341,0,0,0.622382,0,0),
(18730,16,9728.42,-7074.43,4.87384,0,0,1.03393,0,0),(18730,17,9728.44,-7072.12,4.88246,6000,1873003,1.96541,0,0),(18730,18,9731.98,-7073.67,4.8759,0,0,5.99058,0,0),
(18730,19,9738.98,-7074.99,4.87139,0,0,5.90026,0,0),(18730,20,9744.94,-7077.64,4.84019,0,0,5.64894,0,0),(18730,21,9750.48,-7082.53,4.80942,0,0,5.79267,0,0),
(18730,22,9754.55,-7084.26,4.89978,0,0,0.0411916,0,0),(18730,23,9761.59,-7085.42,5.55609,6000,1873004,6.25369,0,0),(18730,24,9750.21,-7084.4,4.81197,0,0,3.25347,0,0),
(18730,25,9742.19,-7085.09,4.86602,0,0,3.44747,0,0),(18730,26,9739.33,-7087.01,3.59085,0,0,3.85038,0,0),(18730,27,9735,-7090.54,3.59085,0,0,3.48752,0,0),
(18730,28,9730.93,-7091.47,3.59085,0,0,2.9291,0,0),(18730,29,9729.47,-7089.21,3.59085,0,0,1.55073,0,0),(18730,30,9730.512695,-7087.351074,3.590496,40000,1873005,0.940451,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1873001 AND 1873005; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1873001,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(1873001,2,1,0,0,18722,66966,7 | 0x10,0,0,0,0,0,0,0,0,''),
(1873001,2,20,2,0,18722,66966,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(1873002,3,31,18722,15,0,0,0,0,0,0,0,0,0,0,0,''),
(1873002,4,1,18,0,18722,15,7,0,0,0,0,0,0,0,0,''),
(1873003,2,1,35,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1873004,1,1,35,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1873004,1,28,0,0,18722,66966,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1873004,1,25,1,0,18722,66966,7 | 0x10,0,0,0,0,0,0,0,0,'RUN ON'),
(1873004,3,1,35,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1873004,3,32,0,0,18722,66966,7 | 0x10,0,0,0,0,0,0,0,0,'wp unpause'),
(1873005,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
-- Sorim Lightsong <Horde Cloth Quartermaster> - gossip
UPDATE creature_template SET GossipMenuId = 8140 WHERE Entry = 20612;

-- UDB_160
-- Silvermoon City
-- Bithrus <Fireworks Vendor>
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 57643;
DELETE FROM creature_movement WHERE id = 57643;
UPDATE creature_template SET MovementType = 2 WHERE entry = 16650;
DELETE FROM creature_movement_template WHERE entry = 16650;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(16650,1,9738.16,-7161.36,14.3237,2000,1665001,3.6752,0,0),(16650,2,9737.57,-7154.07,14.3247,0,0,1.54053,0,0),(16650,3,9737.57,-7154.07,14.3247,20000,1665001,4.07893,0,0),
(16650,4,9734.74,-7150.2,14.3247,0,0,1.62692,0,0),(16650,5,9735.83,-7146.59,14.3247,0,0,0.746487,0,0),(16650,6,9737.76,-7145.94,14.3247,0,0,6.05185,0,0),
(16650,7,9738.29,-7146.39,14.3247,15000,1665002,5.57747,0,0),(16650,8,9738.11,-7148.21,14.3247,0,0,5.07481,0,0),(16650,9,9739.89,-7150.05,14.3247,0,0,5.78167,0,0),
(16650,10,9744.71,-7152.63,14.3247,15000,1665003,5.51463,0,0),(16650,11,9741.53,-7156.3,14.3247,0,0,4.3224,0,0),(16650,12,9739.92,-7160.32,14.3247,0,0,3.76908,0,0),
(16650,14,9738.16,-7161.36,14.3237,20000,1665004,3.6752,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1665001 AND 1665004; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1665001,2,15,11542,0,0,0,0,11541,11540,11544,0,0,0,0,0,''),
(1665002,2,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1665002,13,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1665003,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1665003,13,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1665004,3,15,11542,0,0,0,0,11541,11540,11544,0,0,0,0,0,''),
(1665004,6,1,4,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- UDB_161
-- Silvermoon City
-- Conjurer Tyren
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 66689;
DELETE FROM creature_movement WHERE id = 66689;
UPDATE creature_template SET MovementType = 2 WHERE entry = 18527;
DELETE FROM creature_movement_template WHERE entry = 18527;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(18527,1,9580.41,-7134.3,14.2584,60000,1852702,0.257804,0,0),(18527,2,9583.42,-7125.76,14.3333,0,0,0.987649,0,0),(18527,3,9593.48,-7117.48,14.4257,0,0,0.598876,0,0),
(18527,4,9621.15,-7108.19,14.3515,0,0,0.520337,0,0),(18527,5,9633.38,-7101.19,14.3394,0,0,0.38996,0,0),(18527,6,9649.11,-7098.48,14.3236,0,0,6.17521,0,0),
(18527,7,9662.67,-7104.99,14.3236,0,0,5.17776,0,0),(18527,8,9664.43,-7114.67,14.3236,0,0,5.01283,0,0),(18527,9,9666.04,-7119.05,14.3238,0,0,5.54454,0,0),
(18527,10,9668.66,-7120.97,14.3238,0,0,0.0318226,0,0),(18527,11,9673.02,-7120.11,14.3238,120000,1852701,0.322415,0,0),(18527,12,9682.49,-7114.24,14.3238,0,0,0.307494,0,0),
(18527,13,9698.77,-7136.72,14.3238,0,0,5.22095,0,0),(18527,14,9703.34,-7159.53,13.9189,0,0,4.75364,0,0),(18527,15,9701.66,-7171.66,13.914,0,0,4.05072,0,0),
(18527,16,9690.17,-7182.02,13.9148,0,0,3.96825,0,0),(18527,17,9679.18,-7196.85,13.9249,0,0,4.50624,0,0),(18527,18,9677.73,-7212.29,14.2828,0,0,4.48503,0,0),
(18527,19,9674.62,-7215.65,14.3048,0,0,3.29437,0,0),(18527,20,9661.6,-7216.8,14.3048,0,0,3.31714,0,0),(18527,21,9657.64,-7218.86,14.955,0,0,3.82294,0,0),
(18527,22,9655.39,-7221.8,15.626,0,0,4.43398,0,0),(18527,23,9655.54,-7228.13,15.2962,0,0,5.20838,0,0),(18527,24,9659.96,-7230.66,14.6318,0,0,6.19562,0,0),
(18527,25,9689.36,-7244.11,14.2467,0,0,5.6241,0,0),(18527,26,9689.94,-7245.97,14.24,0,0,4.17583,0,0),(18527,27,9687.48,-7247.91,14.2777,120000,1852701,3.55458,0,0),
(18527,28,9689.88,-7256.7,14.2531,0,0,4.77274,0,0),(18527,29,9689.91,-7266.39,14.2663,0,0,4.47664,0,0),(18527,30,9683.25,-7276.06,14.0879,0,0,3.73837,0,0),
(18527,31,9672.17,-7282.72,14.0434,0,0,3.46898,0,0),(18527,32,9644.85,-7282.99,14.0105,0,0,3.13833,0,0),(18527,33,9611.25,-7282.73,14.0113,0,0,3.1344,0,0),
(18527,34,9579.56,-7282.32,14.0097,0,0,3.13048,0,0),(18527,35,9533.29,-7282.07,14.0093,0,0,2.84616,0,0),(18527,36,9519.62,-7274.34,14.0156,0,0,2.5375,0,0),
(18527,37,9508.5,-7267.72,14.3477,0,0,2.88072,0,0),(18527,38,9502.93,-7267.23,14.3481,120000,1852701,3.31504,0,0),(18527,39,9524.46,-7264.37,14.3174,0,0,6.20688,0,0),
(18527,40,9547.9,-7264.48,14.24,0,0,0.0163672,0,0),(18527,41,9558.87,-7264.02,14.2302,0,0,0.193867,0,0),(18527,42,9570.43,-7261.72,14.2984,0,0,0.0509247,0,0),
(18527,43,9584.28,-7262.27,14.2869,0,0,6.20923,0,0),(18527,44,9604.75,-7267.28,13.8682,0,0,0.0383605,0,0),(18527,45,9635.37,-7267.64,13.8697,0,0,6.27599,0,0),
(18527,46,9646.78,-7267.28,13.8659,0,0,0.392572,0,0),(18527,47,9659.8,-7260.28,14.3018,0,0,0.352516,0,0),(18527,48,9661.345,-7260.638,14.28749,120000,1852701,0.04176108,0,0),    
(18527,49,9667.56,-7247.18,14.2715,0,0,1.03986,0,0),(18527,50,9674.35,-7237.16,14.0004,0,0,1.38308,0,0),(18527,51,9674.09,-7232.91,14.2099,0,0,2.23445,0,0),
(18527,52,9671.98,-7231.09,14.2965,0,0,2.7748,0,0),(18527,53,9659.94,-7230.77,14.6336,0,0,2.81015,0,0),(18527,54,9655.9,-7228.54,15.3152,0,0,2.31142,0,0),
(18527,55,9654.83,-7224.71,15.6262,0,0,1.63205,0,0),(18527,56,9655.7,-7221.33,15.6262,0,0,1.17887,0,0),(18527,57,9658.26,-7218.67,14.9371,0,0,0.548985,0,0),
(18527,58,9666.17,-7216.67,14.3064,0,0,0.226972,0,0),(18527,59,9674.23,-7215.28,14.305,0,0,0.894561,0,0),(18527,60,9675.75,-7209.25,13.9885,0,0,1.57765,0,0),
(18527,61,9674,-7203.79,13.9597,0,0,2.3065,0,0),(18527,62,9669.14,-7201.18,14.3206,0,0,2.90333,0,0),(18527,63,9663.58,-7200.2,14.3219,0,0,2.12028,0,0),
(18527,64,9664.278,-7198.672,14.31875,120000,1852701,1.8441,0,0),(18527,65,9637.54,-7186.25,14.3225,0,0,2.79494,0,0),(18527,66,9629.4,-7183.8,14.3145,0,0,2.89154,0,0),
(18527,67,9611.11,-7181.33,14.2864,0,0,2.69441,0,0),(18527,68,9589.64,-7155.37,14.2629,0,0,2.09829,0,0),(18527,69,9577.91,-7136.72,14.2473,0,0,1.74408,0,0),
(18527,70,9578.67,-7134.63,14.2487,0,0,0.57776,0,0),(18527,71,9580.41,-7134.3,14.2584,60000,1852702,0.257804,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1852701,1852702); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1852701,10,15,11542,0,0,0,0,11544,11540,0,0,0,0,0,0,''),
(1852701,55,15,11544,0,0,0,0,11540,11542,0,0,0,0,0,0,''),
(1852701,88,15,11540,0,0,0,0,11542,11544,0,0,0,0,0,0,''),
(1852702,6,15,11542,0,0,0,0,11544,11540,0,0,0,0,0,0,''),
(1852702,35,15,11544,0,0,0,0,11540,11542,0,0,0,0,0,0,'');

-- UDB_162
-- Silvermoon City
-- Blood Elf Magister
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 63517;
UPDATE creature_addon SET emote = 0 WHERE guid = 63517;
DELETE FROM creature_movement WHERE id = 63517;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(63517,1,9547.9,-7454.35,15.475,0,0,5.6233,0,0),
(63517,2,9550.803,-7458.872,15.5169,30000,1784501,5.313836,0,0),
(63517,3,9547.9,-7454.35,15.475,0,0,3.01972,0,0),
(63517,4,9542.652,-7453.76,15.4635,30000,1784502,3.03394,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1784501,1784502); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1784501,9,31,18560,20,0,0,0,0,0,0,0,0,0,0,0,'search for 18560'),
(1784501,10,15,32760,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(1784501,28,14,32760,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1784502,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1784502,22,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- spell should have target
DELETE FROM spell_script_target WHERE entry = 32760;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES 
(32760,1,18560);
-- Justin's Bunny Target
UPDATE creature_template SET InhabitType = 4 WHERE entry = 18560;
UPDATE creature SET position_x = 9553.435, position_y = -7463.052, position_z = 19.48198, Spawndist = 0, MovementType = 0 WHERE guid = 66726;
-- Talmar <Apprentice Leatherworker>
UPDATE creature_template SET NpcFlags = 0 WHERE entry = 16687;
-- Amin <Apprentice Jewelcrafter>
-- Until patch 2.3, he was a journeyman jewelcrafting trainer.
UPDATE creature_template SET NpcFlags = 1, GossipMenuId = 8379 WHERE entry = 16703;
DELETE FROM npc_trainer WHERE entry = 16703;
UPDATE creature_template SET GossipMenuId = 8379 WHERE Entry = 16703;

-- UDB_163
-- Silvermoon City
-- Champion Vranesh
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 64949;
DELETE FROM creature_movement WHERE id = 64949;
UPDATE creature_template SET MovementType = 2 WHERE entry = 18146;
DELETE FROM creature_movement_template WHERE entry = 18146;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(18146,1,9758.3,-7486.95,13.5323,9000,1814601,0.118088,0,0),(18146,2,9712.03,-7485.72,13.5329,0,0,2.8285,0,0),(18146,3,9697.42,-7480.21,13.5337,0,0,2.97037,0,0),
(18146,4,9682.23,-7475.94,13.5289,0,0,3.09446,0,0),(18146,5,9667.43,-7480.08,13.533,0,0,3.6521,0,0),(18146,6,9649.83,-7490.18,13.5203,0,0,3.45968,0,0),
(18146,7,9637.59,-7492.43,13.5093,0,0,3.16986,0,0),(18146,8,9615.31,-7486.32,13.5157,0,0,2.66485,0,0),(18146,9,9602.26,-7471.78,13.5412,0,0,2.08287,0,0),
(18146,10,9594.68,-7450.51,13.535,0,0,2.59888,0,0),(18146,11,9591.9,-7450.27,13.5268,9000,1814602,3.27275,0,0),(18146,12,9595.3,-7450.07,13.5353,0,0,0.412329,0,0),
(18146,13,9601.99,-7440.08,13.5751,0,0,0.904774,0,0),(18146,14,9615.58,-7423.01,13.3049,0,0,0.587473,0,0),(18146,15,9620.4,-7420.15,13.3034,0,0,0.122517,0,0),
(18146,16,9636.99,-7420.27,13.2989,0,0,6.26904,0,0),(18146,17,9656.24,-7422.07,13.2945,0,0,5.77974,0,0),(18146,18,9673.69,-7429.95,13.2931,0,0,6.03787,0,0),
(18146,19,9689.85,-7431.43,13.2931,0,0,0.284035,0,0),(18146,20,9709.92,-7422.14,13.2931,0,0,0.567563,0,0),(18146,21,9722.75,-7415.23,13.2941,0,0,0.220417,0,0),
(18146,22,9748.41,-7414.39,13.2639,0,0,6.23028,0,0),(18146,23,9766.89,-7412.92,13.3848,0,0,0.572275,0,0),(18146,24,9767.48,-7396.72,14.417,0,0,0.474885,0,0),
(18146,25,9779.77,-7394.64,14.7073,0,0,0.0806156,0,0),(18146,26,9792.46,-7396.7,14.4005,0,0,5.60668,0,0),(18146,27,9794.99,-7413.91,13.5158,0,0,5.50379,0,0),
(18146,28,9809.44,-7416.98,13.3059,0,0,6.25384,0,0),(18146,29,9825.87,-7413.78,13.3084,0,0,0.0531218,0,0),(18146,30,9848.38,-7414.77,13.311,8000,1814603,0.0217059,0,0),
(18146,31,9847.95,-7429.26,13.3394,0,0,4.68075,0,0),(18146,32,9846.7,-7447.67,13.5725,0,0,4.88259,0,0),(18146,33,9850.63,-7465.46,14.9579,0,0,4.65954,0,0),
(18146,34,9851.04,-7480.74,14.9465,0,0,3.19163,0,0),(18146,35,9841.84,-7480.39,14.9252,0,0,6.07797,0,0),(18146,36,9843.284,-7480.133,14.92522,180000,0,6.219931,0,0),
(18146,37,9833.81,-7481.23,14.9269,0,0,3.95897,0,0),(18146,38,9831.49,-7484.97,14.9279,0,0,4.3768,0,0),(18146,39,9828.81,-7497.09,14.9368,0,0,4.73493,0,0),
(18146,40,9828.75,-7511.25,19.7384,0,0,5.17554,0,0),(18146,41,9839.4,-7518.51,19.6957,0,0,0.163774,0,0),(18146,42,9850.56,-7510.75,19.706,0,0,5.79508,0,0),
(18146,43,9850.98,-7513.18,19.7161,4000,1814604,4.76071,0,0),(18146,44,9871.53,-7516.45,19.751,0,0,0.55333,0,0),(18146,45,9874.03,-7511.54,19.7621,0,0,1.5932,0,0),
(18146,46,9873.29,-7497.2,14.951,0,0,1.65996,0,0),(18146,47,9872.67,-7490.02,14.9117,0,0,2.58908,0,0),(18146,48,9867.39,-7488.56,14.9231,0,0,3.10373,0,0),
(18146,49,9851.96,-7489.12,14.9395,0,0,2.04423,0,0),(18146,50,9850.82,-7470.58,14.9515,4000,1814605,1.62875,0,0),(18146,51,9850.09,-7457.25,14.9584,0,0,1.65624,0,0),
(18146,52,9849.55,-7452.75,13.6388,0,0,1.70729,0,0),(18146,53,9847.77,-7428.29,13.3303,0,0,2.09999,0,0),(18146,54,9845.37,-7424.81,13.3212,0,0,2.65134,0,0),
(18146,55,9815.67,-7423.7,13.306,0,0,3.18384,0,0),(18146,56,9797.93,-7424.11,13.4078,0,0,3.58439,0,0),(18146,57,9794.7,-7427.7,13.5121,0,0,4.35801,0,0),
(18146,58,9794,-7441.23,14.4228,0,0,3.82629,0,0),(18146,59,9780.94,-7442.98,14.7072,0,0,3.15242,0,0),(18146,60,9767.8,-7440.91,14.4108,0,0,2.55238,0,0),
(18146,61,9766.65,-7427.29,13.3871,0,0,2.11884,0,0),(18146,62,9761.66,-7423.61,13.2427,0,0,2.94979,0,0),(18146,63,9740.69,-7422.85,13.2549,0,0,3.45873,0,0),
(18146,64,9737.51,-7426.98,13.547,0,0,4.34073,0,0),(18146,65,9736.51,-7441.39,13.544,0,0,4.68787,0,0),(18146,66,9740.24,-7465.66,13.5734,0,0,5.02951,0,0),
(18146,67,9747.14,-7483.3,13.5566,0,0,5.54394,0,0);
DELETE FROM db_script_string WHERE entry BETWEEN 2000000475 AND 2000000481;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000475,'Our lives are yours, Blood Knight.',0,0,0,0,NULL),
(2000000476,'Even the Light is no match for the indomitable will of our people.',0,0,0,0,NULL),
(2000000477,'Your power strengthens us all.',0,0,0,0,NULL),
(2000000478,'%s\'s glances from guard to guard.',0,2,0,0,NULL),
(2000000479,'%s\'s surveys the small ranger practice ground with a condescending smirk.',0,2,0,0,NULL),
(2000000480,'%s\'s inclines his head slightly to the pair of guardians in greeting.',0,2,0,0,NULL),
(2000000481,'%s\'s arches a sculpted brow at the guards, a disapproving scowl on his face.',0,2,0,0,NULL);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1814601 AND 1814605; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1814601,2,0,0,0,0,0,0,2000000481,0,0,0,0,0,0,0,''),
(1814601,3,1,16,0,16222,56911,7 | 0x10,0,0,0,0,0,0,0,0,''),
(1814601,3,1,16,0,16222,56910,7 | 0x10,0,0,0,0,0,0,0,0,''),
(1814601,3,1,16,0,16222,56912,7 | 0x10,0,0,0,0,0,0,0,0,''),
(1814601,5,0,0,0,16222,56912,7 | 0x10,2000000477,2000000475,0,0,0,0,0,0,''),
(1814602,2,0,0,0,0,0,0,2000000478,0,0,0,0,0,0,0,''),
(1814602,3,1,16,0,16222,56900,7 | 0x10,0,0,0,0,0,0,0,0,''),
(1814602,3,1,16,0,16222,56901,7 | 0x10,0,0,0,0,0,0,0,0,''),
(1814602,3,1,16,0,16222,56897,7 | 0x10,0,0,0,0,0,0,0,0,''),
(1814602,5,0,0,0,16222,56901,7 | 0x10,2000000475,2000000477,0,0,0,0,0,0,''),
(1814603,2,24,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1814603,4,0,0,0,0,0,0,2000000479,0,0,0,0,0,0,0,''),
(1814604,2,1,2,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1814605,1,0,0,0,0,0,0,2000000480,0,0,0,0,0,0,0,''),
(1814605,2,24,19085,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(1814605,3,1,16,0,16222,56914,7 | 0x10,0,0,0,0,0,0,0,0,''),
(1814605,3,1,16,0,16222,56913,7 | 0x10,0,0,0,0,0,0,0,0,''),
(1814605,5,0,0,0,16222,56914,7 | 0x10,2000000476,0,0,0,0,0,0,0,'');

-- UDB_164
-- Quest updates for 10674 and 10859
UPDATE creature_template SET MovementType=0 WHERE entry IN (21926,22333);
UPDATE quest_template SET ReqSpellCast1=0 WHERE entry IN (10859,10674);
-- Note: creature 21926 has wrong model

-- UDB_165
-- Silvermoon City
-- targets for 'Shoot Bow' corrected
DELETE FROM spell_script_target WHERE entry IN (29120,29121,29122);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES 
(29120, 1, 16897, 0),
(29121, 1, 16899, 0),
(29122, 1, 16898, 0);
-- Silvermoon Ranger
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid IN (64950,64951,64952,64953);
DELETE FROM creature_movement WHERE id IN (64950,64951,64952,64953);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(64950,1,9838.61,-7405.78,13.702,90000,1814701,1.13446,0,0),
(64951,1,9833.02,-7399.31,13.6929,70000,1814702,1.02974,0,0),
(64952,1,9867.85,-7406.05,13.5941,120000,1814703,1.74533,0,0),
(64953,1,9931.92,-7423.83,12.4414,27000,1814704,0.663225,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1814701 AND 1814704; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1814701,3,15,29121,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(1814701,7,1,274,0,0,0,0,1,71,0,0,0,0,0,0,''),
(1814701,14,15,29121,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(1814701,29,15,29121,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(1814701,31,0,0,0,0,0,0,2000000482,2000000483,2000000484,2000000485,0,0,0,0,''),
(1814701,53,15,29121,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(1814701,79,15,29121,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(1814702,1,15,29121,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(1814702,16,15,29121,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(1814702,35,15,29121,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(1814702,58,15,29121,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(1814702,61,1,1,0,0,0,0,274,71,0,0,0,0,0,0,''),
(1814703,4,15,29120,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(1814703,8,1,274,0,0,0,0,1,71,0,0,0,0,0,0,''),
(1814703,16,15,29120,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(1814703,36,15,29120,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(1814703,40,1,274,0,0,0,0,1,71,0,0,0,0,0,0,''),
(1814703,73,15,29120,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(1814703,76,0,0,0,0,0,0,2000000483,2000000484,2000000485,2000000482,0,0,0,0,''),
(1814703,90,15,29120,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(1814704,2,15,29122,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(1814704,13,15,29122,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(1814704,21,15,29122,0,0,0,0x08,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000482 AND 2000000485;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000482,'What a beautiful shot!',0,0,0,0,NULL),
(2000000483,'Hah! Bullseye!',0,0,0,0,NULL),
(2000000484,'Agh... a chill ran up my spine.',0,0,0,0,NULL),
(2000000485,'They\'ll see the light, I hope.',0,0,0,0,NULL);
-- Honor Hold Target Dummy Right -- correct spawn point
UPDATE creature_template SET InhabitType = 4 WHERE entry = 16898;
UPDATE creature SET position_x = 9943.406, position_y = -7418.763, position_z = 13.46426, Spawndist = 0, MovementType = 0 WHERE guid = 58460;

-- UDB_166
-- Quest 11174
-- Zeppelin Power Core -- update
UPDATE creature_template SET MovementType = 0, InhabitType = 4 WHERE entry = 23832;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE id = 23832;
DELETE FROM creature_addon WHERE guid BETWEEN 18582 and 18588;
DELETE FROM creature_template_addon WHERE entry=23832;

-- UDB_167
UPDATE creature_template SET FactionAlliance = 54, FactionHorde = 54 WHERE entry = 10076;

-- UDB_168
-- r3122
UPDATE creature_template SET ScriptName='npc_light_orb_collector' WHERE entry IN (21926,22333);
-- r3125
UPDATE creature_template SET ScriptName='' WHERE entry=28912;
-- r3126
UPDATE creature_template SET ScriptName='npc_scarlet_courier' WHERE entry=29076;

-- UDB_169
-- Scarlet Courier
-- must be mounted on spawn
DELETE FROM creature_template_addon WHERE entry = 29076;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(29076,14583,0,1,0,0,0,NULL);

-- UDB_170
-- Silvermoon City
-- Silvermoon Farstrider
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 66687;
DELETE FROM creature_movement WHERE id = 66687;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(66687,1,9871.55,-7398.44,13.599,10000,1850701,0.139626,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1850701; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1850701,3,15,36802,0,0,0,0x08,36803,0,0,0,0,0,0,0,''),
(1850701,7,15,36803,0,0,0,0x08,36802,0,0,0,0,0,0,0,'');
DELETE FROM spell_script_target WHERE entry IN (36802,36803);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES 
(36803, 1, 18507, 0),
(36802, 1, 18507, 0);

-- UDB_171
-- Kieupid <Pet Trainer> - update - source sniff and YTDB
UPDATE creature_template SET IconName = NULL, MinLevel = 80, MaxLevel = 80, FactionAlliance = 1604, FactionHorde = 1604, NpcFlags = 17, UnitFlags = 512, UnitClass = 2, Expansion = 2, MinLevelHealth = 12600, MaxLevelHealth = 12600, MinLevelMana = 3994, MaxLevelMana = 3994,
MinMeleeDmg = 391, MaxMeleeDmg = 585, MinRangedDmg = 313, MaxRangedDmg = 468, Armor = 9633, MeleeAttackPower = 146,  RangedAttackPower = 117, MeleeBaseAttackTime = 1500,  RangedBaseAttackTime = 2000, TrainerType = 3, TrainerClass = 3 WHERE Entry = 40405;  
-- UDB empty guid used
DELETE FROM creature WHERE guid = 54644;
DELETE FROM creature_addon WHERE guid = 54644;
DELETE FROM creature_movement WHERE id = 54644;
DELETE FROM game_event_creature WHERE guid = 54644;
DELETE FROM game_event_creature_data WHERE guid = 54644;
DELETE FROM creature_battleground WHERE guid = 54644;
DELETE FROM creature_linking WHERE guid = 54644 OR master_guid = 54644;
INSERT INTO creature (guid, id, modelid, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, curhealth, curmana, MovementType) VALUES
(54644, 40405, 0, 530, 1, 1, 9924.067, -7400.503, 13.71723, 6.073746, 120, 0, 12600, 3994, 0);

-- Pet Trainers -- gossip
UPDATE creature_template SET GossipMenuId = 4783 WHERE Entry IN (543,3545,3698,4320,16271,16675,40405);

-- UDB_172
-- Silvermoon City

-- Hunter
-- Tana <Hunter Trainer>
UPDATE creature_template SET GossipMenuId = 6652 WHERE Entry = 16672;
-- Oninath <Hunter Trainer>
UPDATE creature_template SET GossipMenuId = 6652 WHERE Entry = 16673;
-- Zandine <Hunter Trainer>
UPDATE creature_template SET GossipMenuId = 6652 WHERE Entry = 16674;
-- only Hunter should see these options
UPDATE gossip_menu_option SET condition_id = 542 WHERE menu_id = 6652 AND id = 1;
UPDATE gossip_menu_option SET condition_id = 646 WHERE menu_id = 6652 AND id = 2;
-- Paladin
-- Osselan <Paladin Trainer>
UPDATE creature_template SET GossipMenuId = 6647 WHERE Entry = 16679;
-- Ithelis <Paladin Trainer>
UPDATE creature_template SET GossipMenuId = 6647 WHERE Entry = 16680;
-- Champion Bachi <Paladin Trainer>
UPDATE creature_template SET GossipMenuId = 6647 WHERE Entry = 16681;
-- missing gossip added
DELETE FROM gossip_menu WHERE entry = 6647 AND text_id = 7904; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6647, 7904, 0, 92);
-- Warlock
-- Talionia <Warlock Trainer>
UPDATE creature_template SET GossipMenuId = 7437 WHERE Entry = 16647;
-- Alamma <Warlock Trainer>
UPDATE creature_template SET GossipMenuId = 7566 WHERE Entry = 16646;
-- Zanien <Warlock Trainer>
UPDATE creature_template SET GossipMenuId = 7566 WHERE Entry = 16648;
-- missing gossip added
DELETE FROM gossip_menu WHERE entry IN (7437,7566); 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7437, 7903, 0, 0),
(7437, 9006, 0, 103),
(7566, 9184, 0, 103),
(7566, 9185, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id IN (7437,7566);            
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(7437,0,3,'I am interested in warlock training.',5,16,0,0,0,0,0,'',103),
(7437,1,0,'I wish to unlearn my talents.',1,1,4461,0,0,0,0,'',543),
(7437,2,0,'Learn about Dual Talent Specialization.',1,1,10371,0,0,0,0,'',642),
(7566,0,3,'It is a greater knowledge of the ways of the warlock that I crave.',5,16,0,0,0,0,0,'',103),
(7566,1,0,'I wish to unlearn my talents.',1,1,4461,0,0,0,0,'',543),
(7566,2,0,'I wish to know about Dual Talent Specialization.',1,1,10371,0,0,0,0,'',642);
-- Rogue
-- Zelanis <Rogue Trainer>
UPDATE creature_template SET GossipMenuId = 6650 WHERE Entry = 16684;
-- Elara <Rogue Trainer>
UPDATE creature_template SET GossipMenuId = 6650 WHERE Entry = 16685;
-- Nerisen <Rogue Trainer>
UPDATE creature_template SET GossipMenuId = 6650 WHERE Entry = 16686;
DELETE FROM gossip_menu WHERE entry = 6650; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6650, 9187, 0, 0),
(6650, 9188, 0, 73);
DELETE FROM gossip_menu_option WHERE menu_id = 6650;            
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(6650,0,3,'I require rogue training.',5,16,0,0,0,0,0,'',73),
(6650,1,0,'I wish to unlearn my talents.',1,1,4461,0,0,0,0,'',530),
(6650,2,0,'I wish to know about Dual Talent Specialization.',1,1,10371,0,0,0,0,'',632);
-- Druid
-- Harene Plainwalker <Druid Trainer>
DELETE FROM gossip_menu WHERE entry = 4605; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4605, 5716, 0, 102),
(4605, 5717, 0, 0);
UPDATE gossip_menu_option SET condition_id = 102 WHERE menu_id = 4605 AND id = 0;
-- Mage
-- Zaedana <Mage Trainer>
UPDATE creature_template SET GossipMenuId = 6648 WHERE Entry = 16651;
-- Quithas <Mage Trainer>
UPDATE creature_template SET GossipMenuId = 6648 WHERE Entry = 16652;
-- Inethven <Mage Trainer>
UPDATE creature_template SET GossipMenuId = 6648 WHERE Entry = 16653;
DELETE FROM gossip_menu WHERE entry = 6648; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6648, 9190, 0, 79),
(6648, 9191, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 6648;            
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(6648,0,3,'I am interested in mage training.',5,16,0,0,0,0,0,'',79),
(6648,1,0,'I wish to unlearn my talents.',1,1,4461,0,0,0,0,'',523),
(6648,2,0,'Learn about Dual Talent Specialization.',1,1,10371,0,0,0,0,'',643);
-- Priest
-- Aldrae <Priest Trainer>
UPDATE creature_template SET GossipMenuId = 6649 WHERE Entry = 16658;
-- Lotheolan <Priest Trainer>
UPDATE creature_template SET GossipMenuId = 6649 WHERE Entry = 16659;
-- Belestra <Priest Trainer>
UPDATE creature_template SET GossipMenuId = 6649 WHERE Entry = 16660;
DELETE FROM gossip_menu WHERE entry = 6649; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6649, 9007, 0, 77),
(6649, 9186, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 6649;            
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(6649,0,3,'I require priest training.',5,16,0,0,0,0,0,'',77),
(6649,1,0,'I wish to unlearn my talents.',1,1,4461,0,0,0,0,'',566),
(6649,2,0,'I wish to know about Dual Talent Specialization.',1,1,10371,0,0,0,0,'',648);
-- Narinth <Portal Trainer>
UPDATE creature_template SET GossipMenuId = 4824 WHERE Entry = 16654;
DELETE FROM gossip_menu WHERE entry = 4824; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4824, 5879, 0, 0),
(4824, 5880, 0, 79);
-- Lor'themar Theron <Regent Lord of Quel'Thalas>
UPDATE creature_template SET GossipMenuId = 7632 WHERE Entry = 16802;

-- UDB_173
-- q.9437 'Twilight of the Dawn Runner'
-- Ithania
UPDATE creature_template SET GossipMenuId = 7371, UnitFlags = 514, NpcFlags = 1 WHERE Entry = 17119;
UPDATE creature SET spawntimesecs = 60 WHERE id = 17119; -- quest req.
-- missing gossip added
DELETE FROM gossip_menu WHERE entry = 7371; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7371, 8808, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 7371;            
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(7371,0,0,'Balandar sent me to get you out of here and pick up his cargo. He is waiting for you in the Brackenwall.',1,1,-1,0,7371,0,0,NULL,1005);
DELETE FROM conditions WHERE condition_entry = 1005;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1005, 9, 9437, 0);
DELETE FROM dbscripts_on_gossip WHERE id = 7371; 
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(7371,1,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(7371,5,8,17119,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM creature_movement_template WHERE entry = 17119;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(17119,1,-2889.8,-3423.24,39.4438,4000,1711901,5.63741,0,0),
(17119,2,-2889.8,-3423.24,39.4438,1000,1711902,5.63741,0,0),
(17119,3,-2863.14,-3422.18,39.3522,0,0,0.267206,0,0),
(17119,4,-2849.6,-3418.58,34.1865,0,0,0.251498,0,0),
(17119,5,-2825.92,-3407.7,33.0412,0,0,0.905735,0,0),
(17119,6,-2825.92,-3407.7,33.0412,5000,1711903,0.905735,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1711901 AND 1711903; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1711901,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Ithania active'),
(1711901,2,0,0,0,0,0,0,2000000486,0,0,0,0,0,0,0,''),
(1711901,3,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1711901,4,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1711902,1,31,5184,30,0,0,0,0,0,0,0,0,0,0,0,'search for 5184'),
(1711902,2,0,0,0,5184,35,7,2000000487,0,0,0,0,0,0,0,''),
(1711903,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(1711903,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ithania unactive'),
(1711903,2,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry IN (2000000486,2000000487);
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000000486,'I think, I\'ll be able to get to Brackenwall. The cargo they carried to the top of the towers. Be careful!',0,0,0,0,''),
(2000000487,'To arms! the prisoner is escaping!',0,1,0,0,'');
-- she must back to idle after killed also.
DELETE FROM dbscripts_on_creature_death WHERE id = 17119; 
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(17119,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle');

-- UDB_174
-- Silvermoon City
-- Tiny Arcane Construct & Trayanise
UPDATE creature SET position_x = 9885.396484, position_y = -7178.180664, position_z = 31.035252, orientation = 2.174400, spawndist = 0, MovementType = 2 WHERE guid = 65505;
UPDATE creature SET position_x = 9885.396484, position_y = -7178.180664, position_z = 31.035252, orientation = 2.174400, spawndist = 0, MovementType = 0 WHERE guid = 65501;
DELETE FROM creature_movement WHERE id = 65505;
UPDATE creature_template SET SpeedRun = 2.14286 WHERE entry = 18230;
UPDATE creature_template SET MovementType = 2 WHERE entry = 18237;
DELETE FROM creature_movement_template WHERE entry = 18237;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(18237,1,9885.396484,-7178.180664,31.035252,0,1823701,2.174400,0,0),(18237,2,9874.66,-7162.49,30.9883,0,0,1.6849,0,0),(18237,3,9867.27,-7139.41,30.8761,0,0,2.7067,0,0),
(18237,4,9854.31,-7131.54,30.8761,0,0,4.5838,0,0),(18237,5,9847.64,-7157.88,30.872,0,0,5.76032,0,0),(18237,6,9861.9,-7170.87,31.0189,0,0,6.05249,0,0),
(18237,7,9873.74,-7173.99,31.0397,0,0,0.00492287,0,0),(18237,8,9890.37,-7171.11,32.1895,0,0,5.43674,0,0),(18237,9,9895.02,-7175.49,31.958,0,0,4.46547,0,0),
(18237,10,9893.36,-7182.49,31.0275,0,0,4.92022,0,0),(18237,11,9895.51,-7193.74,31.0417,0,0,5.16841,0,0),(18237,12,9906.69,-7211.17,30.8854,0,0,5.81557,0,0),
(18237,13,9931.21,-7214.64,30.862,0,0,5.76216,0,0),(18237,14,9940.99,-7221.3,30.864,0,0,0.741898,0,0),(18237,15,9954.58,-7211.49,30.8713,0,0,2.46271,0,0),
(18237,16,9942.29,-7198.26,30.8727,0,0,2.97636,0,0),(18237,17,9926.37,-7194.28,30.8702,0,0,2.64256,0,0),(18237,18,9915.16,-7187.84,30.9266,0,0,3.17113,0,0),
(18237,19,9897.61,-7190.49,31.0442,0,0,2.35529,0,0),(18237,20,9885.35,-7178.22,31.0347,0,0,2.32702,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1823701; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1823701,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON');
-- link
DELETE FROM creature_linking WHERE guid = 65501;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(65501, 65505, 512);

-- UDB_175
-- Silvermoon City
-- Class Trainers in Sunstrider Isle
-- Julia Sunstriker <Mage Trainer>
UPDATE creature_template SET GossipMenuId = 6648 WHERE Entry = 15279;
-- Jesthenis Sunstriker <Paladin Trainer>
UPDATE creature_template SET GossipMenuId = 6647 WHERE Entry = 15280;
-- Matron Arena <Priest Trainer>
UPDATE creature_template SET GossipMenuId = 6649 WHERE Entry = 15284;
-- Ranger Sallina <Hunter Trainer>
UPDATE creature_template SET GossipMenuId = 6652 WHERE Entry = 15513;
-- Pathstalker Kariel <Rogue Trainer>
UPDATE creature_template SET GossipMenuId = 6650 WHERE Entry = 15285;
-- Summoner Teli'Larien <Warlock Trainer>
UPDATE creature_template SET GossipMenuId = 6628 WHERE Entry = 15283;
DELETE FROM gossip_menu WHERE entry = 6628; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6628, 7882, 0, 103),
(6628, 7903, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 6628;           
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(6628,0,3,'I am interested in warlock training.',5,16,0,0,0,0,0,'',103),
(6628,1,0,'I wish to unlearn my talents.',1,1,4461,0,0,0,0,'',543),
(6628,2,0,'Learn about Dual Talent Specialization.',1,1,10371,0,0,0,0,'',642);
-- Well Watcher Solanian
UPDATE creature_template SET GossipMenuId = 6569 WHERE Entry = 15295;
DELETE FROM gossip_menu WHERE entry = 6569; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6569, 7784, 0, 0);
-- Justin's Bunny Channeler
-- Honor Hold Target Dummy Right -- correct spawn point
UPDATE creature_template SET InhabitType = 4 WHERE entry = 18563;
UPDATE creature SET Spawndist = 0, MovementType = 0 WHERE guid IN (66727,66728);
-- Justin's Bunny Target
UPDATE creature_template SET InhabitType = 4 WHERE entry = 18650;
UPDATE creature SET Spawndist = 0, MovementType = 0 WHERE guid = 66725;

-- UDB_176
-- Silvermoon City
-- Camberon <Alchemy Trainer>
UPDATE creature SET Spawndist = 0, MovementType = 0 WHERE guid = 57636;
DELETE FROM creature_movement WHERE id = 57636;
UPDATE creature_template SET MovementType = 0 WHERE entry = 16642;
DELETE FROM creature_movement_template WHERE entry = 16642;
UPDATE creature_template SET equipmentTemplateid = 285 WHERE entry = 16642;
DELETE FROM creature_template_addon WHERE entry = 16642;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(16642,0,0,0,16,0,0,NULL);

-- UDB_177
-- Demon Trainers
-- (..)Patch notes 3.0.2: "All demon abilities and spells will automatically be learned as pets gain levels. Demon Master trainers will be removed."
-- NPCs are no longer a demon (pet) trainer.
-- Gossip to rename pets name was added in 4.x.x
-- Alliance
-- Dane Winslow
UPDATE creature_template SET NpcFlags = 0, GossipMenuId = 0 WHERE Entry = 6373;
-- Cylina Darkheart
UPDATE creature_template SET NpcFlags = 0, GossipMenuId = 0 WHERE Entry = 6374;
-- Spackle Thornberry
UPDATE creature_template SET NpcFlags = 2, GossipMenuId = 0 WHERE Entry = 5520;
-- Wren Darkspring
UPDATE creature_template SET NpcFlags = 2, GossipMenuId = 0 WHERE Entry = 6376;
-- Dannie Fizzwizzle
UPDATE creature_template SET NpcFlags = 0, GossipMenuId = 0 WHERE Entry = 6328;
-- Jubahl Corpseseeker
UPDATE creature_template SET NpcFlags = 2, GossipMenuId = 0 WHERE Entry = 6382;
-- Horde
-- Kayla Smithe
UPDATE creature_template SET NpcFlags = 2, GossipMenuId = 0 WHERE Entry = 5749;
-- Gina Lang
UPDATE creature_template SET NpcFlags = 2, GossipMenuId = 0 WHERE Entry = 5750;
-- Martha Strain
UPDATE creature_template SET NpcFlags = 2, GossipMenuId = 0 WHERE Entry = 5753;
-- Hraug
UPDATE creature_template SET NpcFlags = 2, GossipMenuId = 0 WHERE Entry = 12776;
-- Kitha
UPDATE creature_template SET NpcFlags = 2, GossipMenuId = 0 WHERE Entry = 6027;
-- Kurgul
UPDATE creature_template SET NpcFlags = 2, GossipMenuId = 0 WHERE Entry = 5815;
-- Yasmine Teli'Larien
UPDATE creature_template SET NpcFlags = 0, GossipMenuId = 0 WHERE Entry = 15494;
-- Daestra
UPDATE creature_template SET NpcFlags = 0, GossipMenuId = 0 WHERE Entry = 16267;
-- Torian
UPDATE creature_template SET NpcFlags = 2, GossipMenuId = 0 WHERE Entry = 16649;
-- Greshka
UPDATE creature_template SET NpcFlags = 2, GossipMenuId = 0 WHERE Entry = 12807;
-- Neutral
-- Matero Zeshuwal
UPDATE creature_template SET NpcFlags = 2, GossipMenuId = 0 WHERE Entry = 23535;

-- UDB_178
-- Silvermoon City
-- Aurosalia
-- morph should be done by event.
UPDATE creature_template_addon SET auras = NULL WHERE entry = 18744;
UPDATE creature_model_info SET modelid_other_gender = 0 WHERE modelid = 18145;  -- female BE should never have sheep model :) ... its done by event!
-- Keyanomir
UPDATE creature SET position_x = 9714.09, position_y = -7313.28, position_z = 24.7653, orientation = 1.14907, Spawndist = 0, MovementType = 0 WHERE id = 18231;
-- Nimrida <Keyanomir's Minion>
UPDATE creature SET position_x = 9714.944336, position_y = -7311.331543, position_z = 24.759550, orientation = 4.650019, Spawndist = 0, MovementType = 0 WHERE id = 18232;
-- Harene Plainwalker <Druid Trainer>
UPDATE creature SET position_x = 9703.846, position_y = -7267.49, position_z = 16.11439, orientation = 3.001966, Spawndist = 0, MovementType = 2 WHERE id = 16655;
UPDATE creature_template_addon SET emote = 0 WHERE entry = 16655;
DELETE FROM creature_movement WHERE id = 57648;
UPDATE creature_template SET MovementType = 2 WHERE entry = 16655;
DELETE FROM creature_movement_template WHERE entry = 16655;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(16655,1,9703.846,-7267.49,16.11439,60000,0,3.001966,0,0),(16655,2,9703.63,-7263.83,15.9914,0,0,1.04791,0,0),(16655,3,9706.74,-7261.86,16.5287,30000,1665501,0.637149,0,0),
(16655,4,9703.75,-7263.42,16.0209,0,0,2.65955,0,0),(16655,5,9701.5,-7261.56,15.9065,0,0,2.43414,0,0),(16655,6,9698.97,-7258.35,15.599,0,0,1.98254,0,0),
(16655,7,9698.97,-7258.35,15.599,30000,1665502,1.30395,0,0),(16655,8,9700.7,-7261.93,15.7977,0,0,5.24429,0,0),(16655,9,9703.63,-7266.76,16.0817,0,0,4.99375,0,0),
(16655,10,9701.12,-7272.78,15.8364,0,0,4.3033,0,0),(16655,11,9700.66,-7278.72,15.5704,30000,1665502,4.80516,0,0),(16655,12,9701.32,-7272.86,15.8672,0,0,1.0376,0,0),
(16655,13,9703.846,-7267.49,16.11439,0,0,1.17111,0,0),(16655,14,9703.846,-7267.49,16.11439,180000,0,3.001966,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1665501,1665502); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1665501,2,1,133,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1665501,27,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1665502,2,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1665502,27,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND');

-- UDB_179
-- Silvermoon City
-- Magister Astalor Bloodsworn
UPDATE creature_template SET GossipMenuId = 9142 WHERE Entry = 17718;
DELETE FROM gossip_menu WHERE entry = 9142; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9142, 12370, 0, 0);
-- Lord Solanar Bloodwrath
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70, FactionAlliance = 1604, FactionHorde = 1604, NpcFlags = 2, UnitFlags = 0, UnitClass = 2, Expansion = 1, MinLevelHealth = 5589, MaxLevelHealth = 5589, MinLevelMana = 3155, MaxLevelMana = 3155,
MinMeleeDmg = 242, MaxMeleeDmg = 362, MinRangedDmg = 194, MaxRangedDmg = 290, Armor = 6673, MeleeAttackPower = 91,  RangedAttackPower = 73, MeleeBaseAttackTime = 2000,  RangedBaseAttackTime = 2000, EquipmentTemplateId = 612 WHERE Entry = 25223;
-- Lord Solanar Bloodwrath (25223)
UPDATE `creature_template` SET `HealthMultiplier` = '1.0', `PowerMultiplier` = '1.0', `DamageMultiplier` = '1.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '5589', `MaxLevelHealth` = '5589', `MinLevelMana` = '3155', `MaxLevelMana` = '3155', `MinMeleeDmg` = '234', `MaxMeleeDmg` = '331', `MinRangedDmg` = '198', `MaxRangedDmg` = '295', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '25223';
UPDATE creature SET curhealth = 5589, curmana = 3155 WHERE guid = 96977;

-- UDB_180
 -- Pink Elekk -- must be only visible when drunk
DELETE FROM creature_template_addon WHERE entry IN (21250,23507,23527,23528,23529,23530,23531,27958);
INSERT INTO creature_template_addon (entry,auras) VALUES
(21250,36440), 
(23507,36440),
(23527,36440),
(23528,36440),
(23529,36440),
(23530,36440),
(23531,36440);
-- Pink Elekk
UPDATE creature SET position_x = -2973.980469, position_y = 3950.814453, position_z = 2.909095, spawndist = 5, MovementType = 1 WHERE guid = 85568;
UPDATE creature SET position_x = -2939.791260, position_y = 3908.769043, position_z = 2.627984, spawndist = 5, MovementType = 1 WHERE guid = 85567;
UPDATE creature SET position_x = -2961.600098, position_y = 4111.750488, position_z = 6.187728, spawndist = 5, MovementType = 1 WHERE guid = 85569;
UPDATE creature SET position_x = -2666.413574, position_y = 4482.823242, position_z = 36.317860, spawndist = 5, MovementType = 1 WHERE guid = 85571;
UPDATE creature SET position_x = -2726.244873, position_y = 4387.434082, position_z = 21.490282, spawndist = 5, MovementType = 1 WHERE guid = 85570;
-- Shadowmoon Valley
-- Wrathwalker
UPDATE creature SET position_z = 166.286621 WHERE guid = 70639;

-- UDB_181
-- Disable Love is in the Air Items from Vendors and active only when event starts
DELETE FROM conditions WHERE condition_entry = 15;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(15,12,8,0);
UPDATE npc_vendor SET condition_id = 15 WHERE item IN (21833,21829,21815);

-- UDB_182
-- Lakeshire
-- Erin
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 6156;
DELETE FROM creature_movement WHERE id = 6156;
UPDATE creature_template SET MovementType = 2 WHERE entry = 850;
DELETE FROM creature_movement_template WHERE entry = 850;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(850,1,-9174.33,-2109.71,88.95,20000,85001,5.89073,0,0),(850,2,-9192.52,-2098.69,87.7837,0,0,2.69796,0,0),(850,3,-9208.23,-2090.51,85.3921,0,0,2.93672,0,0),
(850,4,-9220.96,-2089.61,81.1544,0,0,2.99563,0,0),(850,5,-9234.93,-2085.46,76.4945,0,0,3.5242,0,0),(850,6,-9242.56,-2096.16,73.6174,0,0,4.4274,0,0),
(850,7,-9249.78,-2122.28,65.0417,0,0,4.23341,0,0),(850,8,-9256.07,-2139.82,64.0223,0,0,4.75962,0,0),(850,9,-9254.31,-2147.89,64.0695,0,0,5.67539,0,0),
(850,10,-9238.9,-2148.92,64.3411,0,0,5.73586,0,0),(850,11,-9237.57,-2152.63,64.3492,0,0,4.67165,0,0),(850,12,-9218.89,-2155.42,64.3544,0,0,0.401173,0,0),
(850,13,-9216.46,-2151.99,64.3544,1000,85002,1.36486,0,0),(850,14,-9216.22,-2147.52,64.3544,0,0,1.57299,0,0),(850,15,-9216.22,-2147.52,64.3544,60000,85001,4.75856,0,0),
(850,16,-9218.43,-2154.78,64.3544,0,0,3.38647,0,0),(850,17,-9231.99,-2155.23,64.3576,0,0,3.21212,0,0),(850,18,-9237.01,-2157.84,64.3576,0,0,2.06465,0,0),
(850,19,-9237.87,-2149.49,64.3426,0,0,2.80273,0,0),(850,20,-9248.67,-2148.45,63.9334,0,0,2.40164,0,0),(850,21,-9256.32,-2138.6,63.8953,0,0,1.32093,0,0),
(850,22,-9251.08,-2121.47,65.2993,0,0,1.57654,0,0),(850,23,-9253.26,-2112.42,66.5815,0,0,2.24648,0,0),(850,24,-9261.04,-2106.96,66.8522,15000,85002,2.66117,0,0),
(850,25,-9251.76,-2113.45,66.6836,0,0,5.22157,0,0),(850,26,-9246.46,-2127.76,64.1511,0,0,4.62939,0,0),(850,27,-9248.61,-2135.95,63.9343,0,0,4.37257,0,0),
(850,28,-9254.32,-2148.24,64.056,0,0,4.10161,0,0),(850,29,-9271.21,-2158.97,61.1872,0,0,3.23767,0,0),(850,30,-9277.96,-2157.76,59.2388,0,0,2.87639,0,0),
(850,31,-9310.03,-2148.39,63.4841,60000,85001,2.82141,0,0),(850,32,-9300.57,-2151.61,63.3088,0,0,5.96445,0,0),(850,33,-9278.2,-2158.05,59.202,0,0,0.11559,0,0),
(850,34,-9261.5,-2157.36,64.0706,0,0,0.584478,0,0),(850,35,-9252.47,-2139.73,64.0216,0,0,1.20494,0,0),(850,36,-9244.6,-2120.1,65.1008,0,0,1.41229,0,0),
(850,37,-9242.08,-2095.47,73.8924,0,0,0.926126,0,0),(850,38,-9233.67,-2085.3,76.8089,0,0,6.22599,0,0),(850,39,-9219.75,-2090.06,81.5803,0,0,6.26762,0,0),
(850,40,-9207.11,-2090.25,85.8603,0,0,6.01079,0,0),(850,41,-9198.75,-2092.32,87.6703,0,0,5.73827,0,0),(850,42,-9174.33,-2109.71,88.95,25000,0,5.89073,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (85001,85002); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(85001,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(85002,1,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN OFF');
-- Madison
UPDATE creature_model_info SET modelid_other_gender = 0 WHERE modelid = 257;  -- should't use male model 
UPDATE creature SET position_x = -9327.604, position_y = -2202.139, position_z = 61.898, orientation = 2.485968, spawndist = 0, MovementType = 2 WHERE guid = 6150;
DELETE FROM creature_movement WHERE id = 6150;
UPDATE creature_template SET MovementType = 2 WHERE entry = 848;
DELETE FROM creature_movement_template WHERE entry = 848;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(848,1,-9327.604,-2202.139,61.898,30000,84801,2.485968,0,0),(848,2,-9315.13,-2208.34,61.8977,0,0,6.15947,0,0),(848,3,-9293.39,-2209.66,61.821,0,0,0.401712,0,0),
(848,4,-9287.74,-2206.22,62.7899,0,0,1.06066,0,0),(848,5,-9281.29,-2171.65,59.6998,0,0,1.24138,0,0),(848,6,-9267.21,-2137.46,62.1799,0,0,1.15106,0,0),
(848,7,-9262.62,-2131.42,65.3403,0,0,0.903661,0,0),(848,8,-9248.75,-2116.83,66.1153,0,0,1.05681,0,0),(848,9,-9245.36,-2104.48,70.2651,0,0,1.35526,0,0),
(848,10,-9243.86,-2085.17,75.3524,0,0,1.35526,0,0),(848,11,-9239.41,-2057.41,76.8398,0,0,1.72205,0,0),(848,12,-9248.06,-2044.15,77.0034,0,0,1.84378,0,0),
(848,13,-9248.36,-2023.24,77.0013,60000,84801,1.58853,0,0),(848,14,-9248.64,-2045.46,77.0022,0,0,4.91676,0,0),(848,15,-9239.96,-2068.09,75.8833,0,0,4.69999,0,0),
(848,16,-9240.93,-2088.38,75.2944,0,0,4.6725,0,0),(848,17,-9245.53,-2099.99,71.8304,0,0,4.55862,0,0),(848,18,-9247.71,-2120.82,65.1585,0,0,4.58611,0,0),
(848,19,-9254.52,-2145.7,64.0393,0,0,4.56255,0,0),(848,20,-9255.4,-2185.46,64.0101,0,0,3.76379,0,0),(848,21,-9270.92,-2193.77,64.0897,0,0,4.53035,0,0),
(848,22,-9276.26,-2211.56,64.0588,0,0,4.10466,0,0),(848,23,-9293.97,-2213.25,61.6685,0,0,3.07815,0,0),(848,24,-9316.85,-2209.62,61.8983,0,0,2.81976,0,0),
(848,25,-9327.604,-2202.139,61.898,120000,84801,2.485968,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 84801; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(84801,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON');
-- Rachel & Nathan
UPDATE creature SET position_x = -9262.288086, position_y = -2204.600342, position_z = 63.933990, orientation = 3.567484, spawndist = 0, MovementType = 2 WHERE guid = 6154;
UPDATE creature SET position_x = -9262.288086, position_y = -2204.600342, position_z = 63.933990, orientation = 3.567484, spawndist = 0, MovementType = 0 WHERE guid = 6155;
DELETE FROM creature_movement WHERE id IN (6154,6155);
UPDATE creature_template SET MovementType = 2 WHERE entry = 849;
DELETE FROM creature_movement_template WHERE entry = 849;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(849,1,-9262.288086,-2204.600342,63.933990,2000,84901,3.567484,0,0),(849,2,-9282.55,-2212.77,63.4702,0,0,3.37348,0,0),(849,3,-9316.21,-2213.16,61.8981,0,0,3.07503,0,0),
(849,4,-9342.98,-2208.78,61.8981,0,0,2.00139,0,0),(849,5,-9344.81,-2183.14,61.8981,0,0,0.826432,0,0),(849,6,-9333.46,-2184.53,61.8981,0,0,4.18637,0,0),
(849,7,-9342.04,-2206.52,61.8981,0,0,5.47914,0,0),(849,8,-9326.1,-2210.98,61.8981,0,0,6.27006,0,0),(849,9,-9293.37,-2209.15,61.8213,0,0,0.311687,0,0),
(849,10,-9286.83,-2203.5,62.899,0,0,1.07195,0,0),(849,11,-9280.69,-2175.14,60.2934,0,0,1.17013,0,0),(849,12,-9270.13,-2152.55,61.1369,0,0,1.28794,0,0),
(849,13,-9264.35,-2133.3,64.3245,0,0,0.769574,0,0),(849,14,-9249.2,-2126.65,64.3418,0,0,0.193481,0,0),(849,15,-9209.35,-2136.65,63.9347,0,0,6.19989,0,0),
(849,16,-9190.63,-2136.43,63.942,0,0,5.98547,0,0),(849,17,-9184.8,-2144.66,63.9756,0,0,5.00216,0,0),(849,18,-9178.52,-2182.85,64.0438,0,0,4.63302,0,0),
(849,19,-9192.09,-2199.42,63.9338,0,0,1.98231,0,0),(849,20,-9198.02,-2179.83,63.9338,0,0,2.40328,0,0),(849,21,-9207.62,-2174.96,63.9338,0,0,3.09365,0,0),
(849,22,-9239.17,-2175.39,63.9338,0,0,3.65965,0,0),(849,23,-9247.98,-2186.89,64.0099,0,0,3.71473,0,0),(849,24,-9262.78,-2190.39,64.0897,0,0,4.22838,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 84901; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(84901,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON');
-- link
DELETE FROM creature_linking WHERE guid = 6155;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(6155, 6154, 512);

-- UDB_183
-- Cabal Ritualist (groups should be linked)
DELETE FROM creature_linking WHERE guid IN (67068,67069,67070,67072,67074,67076,67079,67080,67081,67082,67083,67084);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
-- 1st
(67079, 67078, 1+2+128),
(67080, 67078, 1+2+128),
-- 2nd
(67074, 67075, 1+2+128),
(67076, 67075, 1+2+128),
-- 3rd
(67070, 67071, 1+2+128),
(67072, 67071, 1+2+128),
-- 4th
(67068, 67067, 1+2+128),
(67069, 67067, 1+2+128),
-- 5th
(67081, 67073, 1+2+128),
(67082, 67073, 1+2+128),
-- 6th
(67083, 67077, 1+2+128),
(67084, 67077, 1+2+128);

-- UDB_184
-- creature update for quest 12852
UPDATE creature SET MovementType=0, spawnDist=0 WHERE id=29621;

-- UDB_185
-- ToC25
DELETE FROM spell_script_target WHERE entry IN (66133,66132,65875,65876,66140,66141);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(66133,1,34497,0),
(66132,1,34496,0),
(65875,1,34497,0),
(65876,1,34496,0),
(66140,1,34720,0),
(66141,1,34704,0);

-- UDB_186
-- script to summon Nightbane
DELETE FROM dbscripts_on_go_template_use WHERE id = 194092;
INSERT INTO dbscripts_on_go_template_use (id,delay,command,datalong,data_flags,comments) VALUES
(194092,0,15,31116,4,'cast Summon Nightbane');
-- missing temp spellfocus
DELETE FROM gameobject WHERE guid = 66164;
INSERT INTO gameobject VALUES
(66164, 300073, 532, 1, 1, -11126.9, -1874.45, 91.4726, 0, 0, 0, 0, 1, 180, 0, 1);

-- UDB_187
-- PoS and HoR - DB updates
UPDATE creature_template SET MinLevel=80, MaxLevel=80, FactionAlliance=974, FactionHorde=974, MinLevelHealth=5342, MaxLevelHealth=5342 WHERE entry=20061;
UPDATE creature SET curhealth=5342 WHERE id=20061;
-- Jaina
UPDATE creature_template SET MinLevel=80, MaxLevel=80, UnitFlags=33600, MinLevelHealth=5040000, MaxLevelHealth=5040000, MinLevelMana=881400, MaxLevelMana=881400 WHERE entry=37221;
-- LK for encounter
UPDATE creature_template SET MinLevel=83, MaxLevel=83, MinLevelHealth=20917500, MaxLevelHealth=20917500 WHERE entry=36954;
-- LK for intro
UPDATE creature_template SET FactionAlliance=2102, FactionHorde=2102, UnitFlags=768 WHERE entry=37226;
-- Falric & Marwyn
UPDATE creature_template SET UnitFlags=832 WHERE entry IN (38113,38112);
-- Soldiers
UPDATE creature_template SET MinLevel=80, MaxLevel=80, UnitFlags=33555264 WHERE entry=38173;
UPDATE creature_template SET UnitFlags=33555264 WHERE entry IN (38172,38177,38175,38176);
-- Wall
UPDATE creature_template SET MinLevel=60, MaxLevel=60, UnitFlags=33555200, MinLevelHealth=4120, MaxLevelHealth=4120 WHERE entry=37014;
-- Triggers
UPDATE creature_template SET MinLevel=80, MaxLevel=80, UnitFlags=33555200, MinLevelHealth=12600, MaxLevelHealth=12600 WHERE entry=37704;
UPDATE creature SET curhealth=12600 WHERE id=37704;
UPDATE creature SET curhealth=4120 WHERE id=37014;

-- UDB_188
-- The Barrier Hills
-- Gordunni Head-Splitter
-- #1
UPDATE creature SET position_x = -1359.504639, position_y = 5639.003906, position_z = 181.393311, orientation = 1.209364, spawndist = 0, MovementType = 2 WHERE guid = 91739;
DELETE FROM creature_movement WHERE id = 91739;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(91739,1,-1354.87,5651.11,181.969,0,0,1.19992,0,0),(91739,2,-1343.61,5658.92,185.445,0,0,0.3352,0,0),(91739,3,-1328.94,5658.8,191.292,0,0,0.411385,0,0),
(91739,4,-1322.06,5663.88,192.348,0,0,0.274743,0,0),(91739,5,-1312.35,5664.69,193.89,0,0,0.439831,0,0),(91739,6,-1303.89,5670.08,193.189,0,0,0.954267,0,0),
(91739,7,-1292.06,5687.82,190.006,0,0,0.856093,0,0),(91739,8,-1279.21,5699.54,192.317,0,0,0.0306391,0,0),(91739,9,-1268.02,5689.71,205.593,0,0,5.41141,0,0),
(91739,10,-1261.08,5682.03,208.766,0,0,5.48209,0,0),(91739,11,-1254.01,5673.35,213.628,0,0,0.131173,0,0),(91739,12,-1242.06,5678.88,219.256,10000,0,0.204997,0,0),
(91739,13,-1252.32,5675.64,214.624,0,0,3.19658,0,0),(91739,14,-1260.94,5682.09,208.806,0,0,2.3994,0,0),(91739,15,-1267.29,5688.28,206.674,0,0,2.21326,0,0),
(91739,16,-1276.43,5698.97,194.941,0,0,2.9374,0,0),(91739,17,-1282.77,5699.04,191.403,0,0,3.55158,0,0),(91739,18,-1291.96,5687.64,190.034,0,0,4.05109,0,0),
(91739,19,-1299.03,5677.06,192.878,0,0,4.12178,0,0),(91739,20,-1305.87,5667.05,193.435,0,0,3.67881,0,0),(91739,21,-1319.81,5661.57,192.259,0,0,3.49346,0,0),
(91739,22,-1331.31,5659.29,190.595,0,0,3.09133,0,0),(91739,23,-1344.88,5658.89,185.011,0,0,3.70002,0,0),(91739,24,-1354.81,5650.98,181.997,0,0,4.21681,0,0),
(91739,25,-1354.93,5634.64,182.154,0,0,4.98414,0,0),(91739,26,-1354.17,5620.48,181.845,0,0,4.43122,0,0),(91739,27,-1373.38,5598.87,195.183,0,0,3.91993,0,0),
(91739,28,-1353.86,5620.57,181.861,0,0,1.28178,0,0),(91739,29,-1355.3,5638.02,182.237,0,0,1.56374,0,0);
-- #2
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 91732;
DELETE FROM creature_movement WHERE id = 91732;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(91732,1,-1279.51,5882.71,187.378,0,0,2.60301,0,0),(91732,2,-1310.55,5896.12,190.15,0,0,2.76244,0,0),(91732,3,-1341.92,5905.7,190.723,0,0,2.95486,0,0),
(91732,4,-1364.53,5907.49,191.539,0,0,3.28473,0,0),(91732,5,-1376.18,5903.3,191.004,0,0,3.77404,0,0),(91732,6,-1395.03,5887.96,187.162,0,0,4.02144,0,0),
(91732,7,-1399.69,5866.81,183.818,0,0,4.72515,0,0),(91732,8,-1392.64,5850.37,184.667,0,0,5.40844,0,0),(91732,9,-1378.41,5840.53,185.955,0,0,5.76972,0,0),
(91732,10,-1350.94,5830.78,186.287,0,0,5.80584,0,0),(91732,11,-1335.77,5818.54,184.853,0,0,5.65663,0,0),(91732,12,-1321.25,5813.11,185.734,0,0,0.22653,0,0),
(91732,13,-1298.8,5823.94,185.414,0,0,0.667924,0,0),(91732,14,-1274.05,5847.85,185.968,0,0,0.821077,0,0),(91732,15,-1256.68,5867.76,183.556,0,0,1.67481,0,0),
(91732,16,-1262.47,5878.12,184.899,0,0,2.75002,0,0);
-- #3
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 91723;
DELETE FROM creature_movement WHERE id = 91723;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(91723,1,-1516.81,5917.45,195.449,0,0,2.54687,0,0),(91723,2,-1525.88,5933.57,195.338,0,0,1.74969,0,0),(91723,3,-1526.19,5955.61,193.51,0,0,1.80702,0,0),
(91723,4,-1532.71,5973.49,192.256,0,0,2.00023,0,0),(91723,5,-1539.29,5982.87,193.319,0,0,2.77385,0,0),(91723,6,-1553.98,5985.15,194.251,5000,0,3.16246,0,0),
(91723,7,-1540.94,5984.6,193.291,0,0,6.05429,0,0),(91723,8,-1532.33,5973.62,192.258,0,0,5.27126,0,0),(91723,9,-1525.75,5955.2,193.569,0,0,4.833,0,0),
(91723,10,-1524.27,5935.62,195.015,0,0,4.94061,0,0),(91723,11,-1520.3,5922.19,195.538,0,0,5.19114,0,0),(91723,12,-1513.03,5913.5,194.928,0,0,5.64903,0,0),
(91723,13,-1502.11,5909.78,194.504,0,0,0.214939,0,0),(91723,14,-1492.31,5913.65,194.478,0,0,1.10165,0,0),(91723,15,-1489.66,5924.48,194.477,0,0,1.81049,0,0),
(91723,16,-1491.87,5941.16,194.984,0,0,0.365361,0,0),(91723,17,-1461.09,5937.19,208.795,0,0,1.73431,0,0),(91723,18,-1460.87,5950.35,215.162,0,0,1.80776,0,0),
(91723,19,-1463.92,5963.32,221.615,0,0,1.84938,0,0),(91723,20,-1461.15,5950.46,215.23,0,0,4.85353,0,0),(91723,21,-1461.57,5937.18,208.582,0,0,3.4516,0,0),
(91723,22,-1471.27,5937.14,204.23,0,0,2.83584,0,0),(91723,23,-1491.39,5941.14,195.014,0,0,3.90085,0,0),(91723,24,-1490.3,5924.05,194.477,0,0,4.52662,0,0),
(91723,25,-1492.73,5913.35,194.477,0,0,4.02161,0,0),(91723,26,-1502.59,5911.17,194.487,0,0,2.96761,0,0);
-- #4
-- missing added
DELETE FROM creature WHERE guid = 54870; -- UDB empty guid reused
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(54870,22148,530,1,1,0,580,-1330.64,5792.9,183.28,1.74635,300,0,0,7181,0,0,2);
DELETE FROM creature_movement WHERE id = 54870;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(54870,1,-1338.4,5817.68,184.866,0,0,1.83745,0,0),(54870,2,-1336.71,5831.79,185.845,0,0,0.820356,0,0),(54870,3,-1313.84,5849.55,199.389,0,0,2.22916,0,0),
(54870,4,-1316.62,5853.86,201.805,0,0,2.48376,0,0),(54870,5,-1334.76,5866.23,212.388,0,0,2.61713,0,0),(54870,6,-1313.79,5851.52,199.923,0,0,4.74635,0,0),
(54870,7,-1315.65,5846.51,197.901,0,0,3.8345,0,0),(54870,8,-1336.87,5831.49,185.797,0,0,4.31595,0,0),(54870,9,-1337.9,5816.23,184.889,0,0,4.98118,0,0),
(54870,10,-1329.2,5786.87,182.854,0,0,4.74085,0,0),(54870,11,-1328.9,5767.59,182.657,0,0,4.71808,0,0),(54870,12,-1328.76,5747.74,182.025,0,0,4.57278,0,0),
(54870,13,-1334.7,5735.71,180.898,0,0,4.8461,0,0),(54870,14,-1332.69,5723.99,180.092,0,0,4.47853,0,0),(54870,15,-1334.7,5735.71,180.898,0,0,1.58513,0,0),
(54870,16,-1328.95,5748.09,181.99,0,0,1.58513,0,0),(54870,17,-1328.93,5768.83,182.739,0,0,1.59691,0,0),(54870,18,-1330.62,5792.06,183.215,0,0,1.69508,0,0);
-- Gordunni Soulreaper
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 91738;
DELETE FROM creature_movement WHERE id = 91738;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(91738,1,-1330,5772.58,182.907,0,0,4.59756,0,0),
(91738,2,-1330.99,5742.57,181.18,0,0,4.63291,0,0),
(91738,3,-1334.7,5735.71,180.898,0,0,4.8461,0,0),
(91738,4,-1332.69,5723.99,180.092,0,0,4.47853,0,0),
(91738,5,-1334.92,5714.3,180.339,5000,0,4.55044,0,0),
(91738,6,-1332.69,5723.99,180.092,0,0,1.53059,0,0),
(91738,7,-1334.7,5735.71,180.898,0,0,1.53059,0,0),
(91738,8,-1332.17,5745.07,181.152,0,0,1.53059,0,0),
(91738,9,-1329.98,5772.85,182.91,0,0,1.29261,0,0),
(91738,10,-1322.73,5792.35,183.804,0,0,1.20229,0,0),
(91738,11,-1319.87,5808.9,185.731,0,0,1.91465,0,0),
(91738,12,-1337.74,5821.18,184.754,0,0,2.63329,0,0),
(91738,13,-1379.33,5839.73,186.025,5000,0,2.60972,0,0),
(91738,14,-1336.58,5820.7,184.813,0,0,5.61623,0,0),
(91738,15,-1319.5,5808.55,185.771,0,0,4.98085,0,0);
-- missing added
DELETE FROM creature WHERE guid = 54645; -- UDB empty guid reused
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(54645,23022,530,1,1,0,0,-1531.62,5978.53,192.407,2.05811,300,0,0,28720,6462,0,2);
DELETE FROM creature_movement WHERE id = 54645;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(54645,1,-1520.91,5954.39,193.9,0,0,5.31595,0,0),(54645,2,-1506.94,5933.15,194.487,0,0,5.63639,0,0),(54645,3,-1490.97,5921.78,194.475,0,0,5.97489,0,0),
(54645,4,-1461.24,5918.18,195.003,0,0,5.95918,0,0),(54645,5,-1433.64,5906.33,192.478,5000,0,5.73535,0,0),(54645,6,-1460.69,5917.39,194.915,0,0,2.99117,0,0),
(54645,7,-1490.75,5924.11,194.476,0,0,2.53721,0,0),(54645,8,-1509.72,5936.4,194.489,0,0,2.17357,0,0),(54645,9,-1521.49,5954.73,193.833,0,0,1.9458,0,0),
(54645,10,-1531.47,5978.25,192.398,5000,0,2.15943,0,0);
-- Gordunni Elementalist
UPDATE creature SET position_x = -1390.232910, position_y = 5880.165527, position_z = 186.635437, orientation = 3.005538, spawndist = 5, MovementType = 1 WHERE guid = 91728;
UPDATE creature SET position_x = -1358.870728, position_y = 5848.315430, position_z = 187.222092, orientation = 4.148302, spawndist = 5, MovementType = 1 WHERE guid = 91729;
-- Gordunni Back-Breaker
UPDATE creature SET position_x = -1471.765503, position_y = 5928.120117, position_z = 195.734787, orientation = 4.601814, spawndist = 5, MovementType = 1 WHERE guid = 91721;

-- UDB_189
-- Shattrath
-- Captain Dranarus
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 96619;
DELETE FROM creature_movement WHERE id = 96619;
UPDATE creature_template SET MovementType = 2 WHERE entry = 25138;
DELETE FROM creature_movement_template WHERE entry = 25138;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(25138,1,-1835.49,5313.03,-12.4282,0,0,4.08568,0,0),(25138,2,-1841.81,5311.87,-12.4282,0,0,2.81568,0,0),(25138,3,-1842.622,5313.065,-12.42815,0,0,1.99573,0,0),
(25138,4,-1842.622,5313.065,-12.42815,30000,2513801,2.478368,0,0),(25138,5,-1845.9,5310.6,-12.4282,0,0,3.60122,0,0),(25138,6,-1850.46,5310.65,-12.4282,0,0,2.63361,0,0),
(25138,7,-1852.19,5314.11,-12.4282,0,0,1.89612,0,0),(25138,8,-1852.19,5314.11,-12.4282,30000,2513802,0.199661,0,0),(25138,9,-1850.97,5318.61,-12.4282,0,0,0.405435,0,0),
(25138,10,-1843,5320.51,-12.4282,0,0,6.21738,0,0),(25138,11,-1840.255,5319.294,-12.42815,0,0,5.5121,0,0),(25138,12,-1840.255,5319.294,-12.42815,30000,2513801,4.502949,0,0),
(25138,13,-1835.4,5320.18,-12.4282,0,0,5.51838,0,0),(25138,14,-1835.03,5317.27,-12.4282,0,0,4.82174,0,0),(25138,15,-1835.03,5317.27,-12.4282,30000,2513802,3.1567,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2513801,2513802); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2513801,1,1,6,0,0,0,0,25,6,22,21,0,0,0,0,''),
(2513801,10,1,5,0,0,0,0,25,6,18,21,0,0,0,0,''),
(2513801,17,1,6,0,0,0,0,25,6,22,21,0,0,0,0,''),
(2513801,22,1,6,0,0,0,0,25,6,22,21,0,0,0,0,''),
(2513801,28,1,6,0,0,0,0,25,6,22,21,0,0,0,0,''),
(2513802,27,1,18,0,0,0,0,5,6,22,21,0,0,0,0,'');
-- Shattered Sun Trainee 25134/25135/25136/25137
-- Can't use EventAI - script not for all
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid IN (96604,96603,96612,96611,96596,96595,96610,96600);
DELETE FROM creature_movement WHERE id IN (96604,96603,96612,96611,96596,96595,96610,96600);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(96604,1,-1837.87,5315.29,-12.3448,6000,2513601,1.48353,0,0),
(96603,1,-1841.16,5314.73,-12.3448,6000,2513601,1.5708,0,0),
(96612,1,-1844.47,5314.21,-12.3448,6000,2513701,1.67552,0,0),
(96611,1,-1847.71,5313.56,-12.3448,6000,2513701,1.71042,0,0),
(96596,1,-1838.47,5318.06,-12.3448,6000,2513401,4.69494,0,0),
(96595,1,-1841.71,5317.6,-12.3448,6000,2513401,4.76475,0,0),
(96610,1,-1845.03,5317.04,-12.3448,6000,2513701,4.83456,0,0),
(96600,1,-1847.88,5316.36,-12.3448,6000,2513501,4.86947,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2513401,2513501,2513601,2513701); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2513401,1,1,36,0,0,0,0,43,54,60,36,0,0,0,0,''),
(2513401,4,1,43,0,0,0,0,36,54,43,60,0,0,0,0,''),
(2513501,1,1,36,0,0,0,0,43,54,60,36,0,0,0,0,''),
(2513501,4,1,43,0,0,0,0,36,54,43,60,0,0,0,0,''),
(2513601,1,1,36,0,0,0,0,43,54,60,36,0,0,0,0,''),
(2513601,4,1,43,0,0,0,0,36,54,43,60,0,0,0,0,''),
(2513701,1,1,36,0,0,0,0,43,54,60,36,0,0,0,0,''),
(2513701,4,1,43,0,0,0,0,36,54,43,60,0,0,0,0,'');

-- UDB_190
-- Terokkar Forest
-- Deathskitter
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 66907;
DELETE FROM creature_movement WHERE id = 66907;
UPDATE creature_template SET MovementType = 2, SpeedWalk =  1, SpeedRun = 1.285714 WHERE entry = 18647;
DELETE FROM creature_movement_template WHERE entry = 18647;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(18647,1,-3327.78,4217.31,-12.9577,2000,0,1.73323,0,0),(18647,2,-3326.23,4201.74,-9.91916,0,0,5.16149,0,0),(18647,3,-3317.02,4185.02,-7.49581,0,0,5.63115,0,0),
(18647,4,-3305.05,4178.67,-7.55846,0,0,6.10396,0,0),(18647,5,-3287,4177.99,-8.39443,0,0,0.257447,0,0),(18647,6,-3270.33,4184.74,-9.3174,0,0,0.360334,0,0),
(18647,7,-3244.46,4194.5,-9.6127,0,0,0.531551,0,0),(18647,8,-3225,4208.24,-11.6414,0,0,0.755389,0,0),(18647,9,-3212.57,4220.03,-10.4427,0,0,0.566894,0,0),
(18647,10,-3203.5,4225.33,-16.0323,0,0,0.594382,0,0),(18647,11,-3198.25,4228.88,-15.9147,0,0,0.229957,0,0),(18647,12,-3188.78,4228.9,-10.1867,0,0,6.19349,0,0),
(18647,13,-3174.5,4225.05,-10.3182,0,0,5.99478,0,0),(18647,14,-3157.01,4221.4,-9.12844,0,0,6.16599,0,0),(18647,15,-3136.5,4219.6,-8.63327,0,0,5.85734,0,0),
(18647,16,-3123.31,4206.28,-7.73802,0,0,5.77094,0,0),(18647,17,-3107.38,4201.32,-6.7678,0,0,6.21547,0,0),(18647,18,-3091.73,4203.14,-5.42721,2000,0,0.238592,0,0),
(18647,19,-3107.07,4201.19,-6.74563,0,0,3.17205,0,0),(18647,20,-3122.93,4205.97,-7.70735,0,0,2.5508,0,0),(18647,21,-3137.18,4219.95,-8.64952,0,0,2.84219,0,0),
(18647,22,-3160.71,4221.39,-9.38807,0,0,2.92544,0,0),(18647,23,-3175.26,4225.25,-10.2814,0,0,2.8579,0,0),(18647,24,-3188.33,4228.68,-10.0172,0,0,3.16813,0,0),
(18647,25,-3197.78,4229.09,-15.6928,0,0,3.30319,0,0),(18647,26,-3203.9,4224.92,-15.925,0,0,3.88517,0,0),(18647,27,-3212.64,4219.94,-10.45,0,0,3.77914,0,0),
(18647,28,-3224.85,4208.35,-11.6416,0,0,3.88517,0,0),(18647,29,-3244.95,4194.08,-9.55214,0,0,3.59457,0,0),(18647,30,-3270.84,4184.57,-9.31029,0,0,3.48855,0,0),
(18647,31,-3287.67,4177.81,-8.35741,0,0,3.3878,0,0),(18647,32,-3305.46,4178.7,-7.5413,0,0,2.82232,0,0),(18647,33,-3317.9,4185.58,-7.51244,0,0,2.33537,0,0),
(18647,34,-3326.53,4202.08,-9.97886,0,0,1.97016,0,0);
-- Rotting Forest-Rager
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid IN (78439,78435,78436,78438);
DELETE FROM creature_movement WHERE id IN (78439,78435,78436,78438);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #1
(78439,1,-3082.88,4264,-8.33045,0,0,0.641001,0,0),(78439,2,-3041.47,4307.55,-11.0783,4000,0,0.823214,0,0),(78439,3,-3063.64,4284.76,-9.75672,0,0,3.96873,0,0),
(78439,4,-3083.91,4262.66,-8.21446,0,0,3.54776,0,0),(78439,5,-3096.39,4258.22,-8.41367,0,0,3.3412,0,0),(78439,6,-3119.69,4258.84,-10.3825,0,0,3.56158,0,0),
(78439,7,-3136.22,4243.77,-9.69491,4000,0,3.64012,0,0),(78439,8,-3120.7,4259.65,-10.5223,0,0,0.321808,0,0),
-- #2
(78435,1,-2831,4488.55,-5.40144,0,0,1.55841,0,0),(78435,2,-2833.69,4511.24,-6.97536,0,0,1.90398,0,0),(78435,3,-2842.93,4539.57,-8.92945,0,0,1.60867,0,0),
(78435,4,-2832.84,4562.57,-10.6274,0,0,0.939509,0,0),(78435,5,-2812.07,4585.45,-8.46509,0,0,0.914376,0,0),(78435,6,-2787.71,4619.89,-9.44887,4000,0,0.898668,0,0),
(78435,7,-2803.7,4593.78,-8.32121,0,0,3.98214,0,0),(78435,8,-2832.8,4562.59,-10.6239,0,0,4.29237,0,0),(78435,9,-2841.43,4548.17,-9.81332,0,0,4.45966,0,0),
(78435,10,-2842.89,4536.18,-8.57972,0,0,5.06362,0,0),(78435,11,-2832.78,4509.27,-6.88285,0,0,4.89294,0,0),(78435,12,-2831.88,4486.51,-5.39805,0,0,4.38459,0,0),
(78435,13,-2845.88,4456.93,-7.39068,0,0,4.14505,0,0),(78435,14,-2859.88,4439.34,-7.46962,0,0,3.66517,0,0),(78435,15,-2890.42,4435.54,-9.61593,0,0,3.58752,0,0),
(78435,16,-2914.65,4419.62,-10.2268,4000,0,3.67392,0,0),(78435,17,-2888.55,4435.11,-9.39205,0,0,0.183606,0,0),(78435,18,-2859.97,4439.61,-7.46688,0,0,0.72396,0,0),
(78435,19,-2848.79,4453.25,-7.47306,0,0,0.902245,0,0),
-- #3
(78436,1,-2751.24,4888.25,-9.28854,4000,0,3.74443,0,0),(78436,2,-2731.95,4896.86,-6.58817,0,0,0.194423,0,0),(78436,3,-2718.83,4895.61,-4.4686,0,0,5.9192,0,0),
(78436,4,-2709.21,4893.35,-2.85624,0,0,0.441039,0,0),(78436,5,-2703.63,4899.27,-2.11423,4000,0,1.10156,0,0),(78436,6,-2708.72,4891.87,-2.74489,0,0,3.75149,0,0),
(78436,7,-2715.36,4890.9,-3.81047,0,0,2.96452,0,0),(78436,8,-2733.71,4896.45,-6.85721,0,0,3.13062,0,0),
-- #4
(78438,1,-3526.37,4199.18,-4.18007,0,0,6.07106,0,0),(78438,2,-3502.95,4204.91,-3.86274,0,0,0.447608,0,0),(78438,3,-3485.76,4213.2,-5.05477,0,0,6.19044,0,0),
(78438,4,-3478.05,4210.96,-4.81493,0,0,5.74355,0,0),(78438,5,-3466.32,4196,-3.19562,0,0,5.4042,0,0),(78438,6,-3458.17,4190.77,-2.7045,0,0,0.0140024,0,0),
(78438,7,-3442.91,4194.63,-4.69759,0,0,0.544477,0,0),(78438,8,-3419.98,4207.14,-7.63673,0,0,0.198902,0,0),(78438,9,-3392.66,4211.94,-9.26122,0,0,6.2127,0,0),
(78438,10,-3371.72,4209.28,-9.76929,0,0,5.8954,0,0),(78438,11,-3345.31,4200.04,-8.81895,0,0,5.90718,0,0),(78438,12,-3318.96,4181.89,-7.0849,0,0,5.809,0,0),
(78438,13,-3302.02,4175.35,-7.40304,0,0,0.0622353,0,0),(78438,14,-3292.47,4177.36,-8.09926,0,0,1.15787,0,0),(78438,15,-3291.31,4189.23,-9.51124,4000,0,1.70764,0,0),
(78438,16,-3293.06,4177.42,-8.07473,0,0,4.24055,0,0),(78438,17,-3300.57,4172.31,-7.15121,0,0,3.42374,0,0),(78438,18,-3310.15,4173.36,-6.84514,0,0,2.75065,0,0),
(78438,19,-3334.44,4193.86,-7.95459,0,0,2.61469,0,0),(78438,20,-3355.39,4203.79,-9.36296,0,0,2.87388,0,0),(78438,21,-3380.73,4211.96,-9.7678,0,0,3.13934,0,0),
(78438,22,-3393.45,4211.85,-9.21899,0,0,3.3429,0,0),(78438,23,-3421.38,4206.5,-7.50797,0,0,3.6335,0,0),(78438,24,-3444.25,4194.58,-4.59379,0,0,3.50391,0,0),
(78438,25,-3458.62,4190.86,-2.68858,0,0,2.98005,0,0),(78438,26,-3469.01,4198.23,-3.41623,0,0,2.35565,0,0),(78438,27,-3479,4211.13,-4.81482,0,0,2.64232,0,0),
(78438,28,-3488.95,4213.56,-5.12335,0,0,3.46165,0,0),(78438,29,-3504.71,4205.71,-4.04269,0,0,3.55121,0,0),(78438,30,-3522.31,4198.98,-3.97894,0,0,3.0729,0,0),
(78438,31,-3532.67,4201.09,-4.47656,0,0,2.72811,0,0),(78438,32,-3553.74,4222.86,-4.66667,4000,0,2.27873,0,0);

-- UDB_191
-- Terokkar Forest
-- Levixus <The Soul Caller>
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 70974;
DELETE FROM creature_movement WHERE id = 70974;
UPDATE creature_template SET MovementType = 2 WHERE entry = 19847;
DELETE FROM creature_movement_template WHERE entry = 19847;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(19847,1,-3565.73,4943.27,-8.91791,20000,1984701,6.26573,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1984701; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1984701,1,0,0,0,0,0,0,2000000488,0,0,0,0,0,0,0,''),
(1984701,2,0,0,0,0,0,0,2000000489,2000000490,2000000491,2000000492,0,0,0,0,''),
(1984701,10,0,0,0,0,0,0,2000000488,0,0,0,0,0,0,0,''),
(1984701,11,0,0,0,0,0,0,2000000491,2000000492,2000000489,2000000490,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000488 AND 2000000492;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000488,'%s reads from the book of the dead.',0,2,0,0,NULL),
(2000000489,'Shane Dabiri, Lee, Alex T., Rob F., J. A. B.,  A. Mayberry!',0,0,8,15,NULL),
(2000000490,'Jeffrey Kaplan! Tom Chilton! Rob Pardo!',0,0,8,15,NULL),
(2000000491,'Justin Thavirat! Roman Kenney! Our entire awesome art and animation team!',0,0,8,15,NULL),
(2000000492,'Kevin Jordan and Jonathan LeCraft!',0,0,8,15,NULL);

-- UDB_192
-- Updated NPC 5709 (Shade of Eranikus) in Sunken Temple: it is now unattackable
-- until Jammal'An is defeated
UPDATE creature_template SET UnitFlags=UnitFlags|256 WHERE Entry=5709;

-- UDB_193
-- ---------------------------
-- DK Starting Zone - phase 64 part 1
-- ---------------------------
-- Duplicates removed
DELETE FROM creature WHERE guid IN (130721,130793,130733,130722,130658,130815,130602,130574,130828,130795,130695,130689,130797,130683,130826,130690,130660);
DELETE FROM creature_addon WHERE guid IN (130721,130793,130733,130722,130658,130815,130602,130574,130828,130795,130695,130689,130797,130683,130826,130690,130660);
DELETE FROM creature_movement WHERE id IN (130721,130793,130733,130722,130658,130815,130602,130574,130828,130795,130695,130689,130797,130683,130826,130690,130660);
DELETE FROM game_event_creature WHERE guid IN (130721,130793,130733,130722,130658,130815,130602,130574,130828,130795,130695,130689,130797,130683,130826,130690,130660);
DELETE FROM game_event_creature_data WHERE guid IN (130721,130793,130733,130722,130658,130815,130602,130574,130828,130795,130695,130689,130797,130683,130826,130690,130660);
DELETE FROM creature_battleground WHERE guid IN (130721,130793,130733,130722,130658,130815,130602,130574,130828,130795,130695,130689,130797,130683,130826,130690,130660);
DELETE FROM creature_linking WHERE guid IN (130721,130793,130733,130722,130658,130815,130602,130574,130828,130795,130695,130689,130797,130683,130826,130690,130660) 
OR master_guid IN (130721,130793,130733,130722,130658,130815,130602,130574,130828,130795,130695,130689,130797,130683,130826,130690,130660);
-- Frostbrood Vanquisher
UPDATE creature_template SET MinLevel = 62, MaxLevel = 62, FactionAlliance = 2082, FactionHorde = 2082, UnitClass = 2, Expansion = 1, MinLevelHealth = 106850, MaxLevelHealth = 106850, MinLevelMana = 51360, MaxLevelMana = 51360, MechanicImmuneMask = 8388624 WHERE entry = 28670;
-- Baron Rivendare 
UPDATE creature SET position_x = 2277.7, position_y = -5636.66, position_z = 144.788, orientation = 4.56454, Spawndist = 0, MovementType = 2 WHERE guid = 130895;
DELETE FROM creature_movement WHERE id = 130895;
UPDATE creature_template SET MovementType = 2 WHERE entry = 29109;
DELETE FROM creature_movement_template WHERE entry = 29109;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(29109,1,2277.7,-5636.66,144.788,1000,2910901,4.56454,0,0),(29109,2,2276.12,-5647.62,142.619,0,0,4.56454,0,0),(29109,3,2273.55,-5664.07,143.92,0,0,1.52897,0,0),
(29109,4,2276.12,-5647.62,142.619,0,0,1.47793,0,0),(29109,5,2277.7,-5636.66,144.788,0,0,4.56454,0,0),(29109,6,2276.12,-5647.62,142.619,0,0,4.56454,0,0),
(29109,7,2273.55,-5664.07,143.92,0,0,1.52897,0,0),(29109,8,2276.12,-5647.62,142.619,0,0,1.47793,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2910901; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2910901,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON');
-- Death Knight Champion
UPDATE creature SET position_x = 2419.523193, position_y = -5774.515137, position_z = 148.158127, orientation = 5.291478, Spawndist = 0, MovementType = 0 WHERE guid = 130891;
UPDATE creature SET position_x = 2413.764893, position_y = -5777.067383, position_z = 149.278229, orientation = 5.578143, Spawndist = 0, MovementType = 0 WHERE guid = 130889;
UPDATE creature SET position_x = 2425.206787, position_y = -5770.046875, position_z = 148.509720, orientation = 4.989102, Spawndist = 0, MovementType = 0 WHERE guid = 130888;
UPDATE creature SET position_x = 2267.978, position_y = -5652.68, position_z = 140.1605, orientation = 2.879793, Spawndist = 0, MovementType = 0 WHERE guid = 130879;
UPDATE creature SET position_x = 2268.687, position_y = -5645.526, position_z = 140.816, orientation = 3.211406, Spawndist = 0, MovementType = 0 WHERE guid = 130880;
UPDATE creature SET position_x = 2268.732, position_y = -5666.745, position_z = 142.9238, orientation = 2.72271, Spawndist = 0, MovementType = 0 WHERE guid = 130881;
UPDATE creature SET position_x = 2273.045, position_y = -5634.715, position_z = 144.3555, orientation = 3.47320, Spawndist = 0, MovementType = 0 WHERE guid = 130882;
UPDATE creature SET position_x = 2270.195, position_y = -5639.455, position_z = 142.3601, orientation = 3.29867, Spawndist = 0, MovementType = 0 WHERE guid = 130883;
UPDATE creature SET position_x = 2268.486, position_y = -5659.049, position_z = 140.9015, orientation = 2.80998, Spawndist = 0, MovementType = 0 WHERE guid = 130884;
UPDATE creature SET position_x = 2429.15, position_y = -5774.347, position_z = 146.8119, orientation = 4.764749, Spawndist = 0, MovementType = 0 WHERE guid = 130885;
UPDATE creature SET position_x = 2415.666, position_y = -5782.209, position_z = 147.3330, orientation = 5.268789, Spawndist = 0, MovementType = 0 WHERE guid = 130886;
UPDATE creature SET position_x = 2419.108, position_y = -5778.839, position_z = 146.9846, orientation = 5.302624, Spawndist = 0, MovementType = 0 WHERE guid = 130890;
UPDATE creature SET position_x = 2423.652, position_y = -5776.316, position_z = 146.6569, orientation = 5.279853, Spawndist = 0, MovementType = 0 WHERE guid = 130887;
UPDATE creature_addon SET emote = 375 WHERE guid IN (130879,130880,130881,130882,130883,130884,130885,130886,130887,130888,130889,130890,130891);
UPDATE creature SET spawntimesecs = 30 WHERE id = 29106;
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 130892;
DELETE FROM creature_movement WHERE id = 130892;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(130892,1,2323.63,-5664.38,153.844,0,0,5.64936,0,0),(130892,2,2349.46,-5696.57,153.922,0,0,5.3619,0,0),(130892,3,2367.64,-5712.81,153.922,0,0,5.60225,0,0),
(130892,4,2382.8,-5728.4,153.922,0,0,5.50957,0,0),(130892,5,2401.2,-5743.18,153.922,0,0,5.52056,0,0),(130892,6,2411.25,-5755.46,153.98,3000,0,5.30144,0,0),
(130892,7,2400.84,-5742.97,153.922,0,0,2.4151,0,0),(130892,8,2382.62,-5728.3,153.922,0,0,2.32871,0,0),(130892,9,2366.33,-5711.26,153.922,0,0,2.34049,0,0),
(130892,10,2344.2,-5688.49,153.923,0,0,2.302,0,0),(130892,11,2308.86,-5647.39,149.308,3000,0,2.49521,0,0);
-- Hearthglen Crusader/Trisfal Crusader
-- northern group
UPDATE creature SET position_x = 2433.580078, position_y = -5882.046875, position_z = 104.645500, orientation = 1.990541, Spawndist = 0, MovementType = 2 WHERE guid = 130792;
UPDATE creature SET position_x = 2418.468994, position_y = -5866.832031, position_z = 104.968590, orientation = 0.950663, Spawndist = 0, MovementType = 2 WHERE guid = 130570;
UPDATE creature SET position_x = 2423.544189, position_y = -5882.778320, position_z = 104.604820, orientation = 1.472961, Spawndist = 0, MovementType = 2 WHERE guid = 130567;
UPDATE creature SET position_x = 2404.129639, position_y = -5842.262695, position_z = 109.902840, orientation = 6.244246, Spawndist = 0, MovementType = 2 WHERE guid = 130743;
UPDATE creature SET position_x = 2408.253418, position_y = -5881.060059, position_z = 104.593834, orientation = 0.957659, Spawndist = 0, MovementType = 2 WHERE guid = 130608;
-- southern group
UPDATE creature SET position_x = 2205.809814, position_y = -5731.661133, position_z = 102.208534, orientation = 1.472664, Spawndist = 0, MovementType = 2 WHERE guid = 130830;
UPDATE creature SET position_x = 2161.003906, position_y = -5725.638672, position_z = 101.332764, orientation = 1.153008, Spawndist = 0, MovementType = 2 WHERE guid = 130682;
UPDATE creature SET position_x = 2150.973389, position_y = -5712.687012, position_z = 101.909523, orientation = 0.783094, Spawndist = 0, MovementType = 2 WHERE guid = 130798;
UPDATE creature SET position_x = 2126.595215, position_y = -5688.541016, position_z = 101.155556, orientation = 0.204981, Spawndist = 0, MovementType = 2 WHERE guid = 130827;
UPDATE creature SET position_x = 2114.592529, position_y = -5697.796387, position_z = 100.391434, orientation = 6.034200, Spawndist = 0, MovementType = 2 WHERE guid = 130794;
UPDATE creature SET position_x = 2144.617188, position_y = -5672.694824, position_z = 110.442459, orientation = 0.335399, Spawndist = 0, MovementType = 2 WHERE guid = 130796;
UPDATE creature SET position_x = 2196.454834, position_y = -5701.930176, position_z = 112.392166, orientation = 1.223682, Spawndist = 0, MovementType = 2 WHERE guid = 130829;
UPDATE creature SET position_x = 2147.332275, position_y = -5708.847168, position_z = 102.006149, orientation = 0.499547, Spawndist = 0, MovementType = 2 WHERE guid = 130661;
-- Movements
DELETE FROM creature_movement WHERE id IN (130743,130570,130792,130608,130567,130830,130682,130798,130827,130794,130796,130829,130661);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(130743,1,2404.129639,-5842.262695,109.902840,2000,2910301,6.244246,0,0),(130743,2,2425.5,-5847.68,108.85,0,0,0.772094,0,0),(130743,3,2430.1,-5838.91,112.438,0,0,1.23234,0,0),
(130743,4,2430.68,-5821.38,119.77,0,0,1.71614,0,0),(130743,5,2428.18,-5809.46,126.166,0,0,1.80646,0,0),(130743,6,2426.04,-5787.39,141.243,0,0,1.66902,0,0),
(130743,7,2409.18,-5760.7,152.965,5000,2910302,2.32483,0,0),(130570,1,2418.468994,-5866.832031,104.968590,2000,2910201,0.950663,0,0),(130570,2,2430.8,-5848.82,109.521,0,0,1.01422,0,0),
(130570,3,2433.39,-5830.24,115.967,0,0,1.52315,0,0),(130570,4,2433.82,-5819,120.777,0,0,1.75249,0,0),(130570,5,2432.49,-5800.23,132.063,0,0,1.57577,0,0),
(130570,6,2426.62,-5784.07,142.837,0,0,2.06665,0,0),(130570,7,2410.1,-5757.59,153.412,5000,2910202,2.16482,0,0),(130792,1,2433.580078,-5882.046875,104.645500,2000,2910301,1.990541,0,0),
(130792,2,2432.74,-5862.93,107.076,0,0,1.56086,0,0),(130792,3,2438.97,-5840.58,113.607,0,0,1.36843,0,0),(130792,4,2436.82,-5817.06,121.897,0,0,1.69437,0,0),
(130792,5,2436.44,-5803.47,130.055,0,0,1.50588,0,0),(130792,6,2435.01,-5791.9,138.069,0,0,2.21117,0,0),(130792,7,2410.08,-5768.17,152.083,5000,2910302,2.47427,0,0),
(130608,1,2408.253418,-5881.060059,104.593834,2000,2910201,0.957659,0,0),(130608,2,2423.95,-5856.89,106.491,0,0,1.16523,0,0),(130608,3,2433.64,-5834,114.61,0,0,1.48489,0,0),
(130608,4,2433.44,-5812.11,124.299,0,0,1.63019,0,0),(130608,5,2425.49,-5779.39,145.143,5000,2910202,2.05038,0,0),(130567,1,2423.544189,-5882.778320,104.604820,2000,2910201,1.472961,0,0),
(130567,2,2433.82,-5857.11,108.447,0,0,1.36237,0,0),(130567,3,2436.81,-5823.62,119.25,0,0,1.61762,0,0),(130567,4,2431.98,-5802.78,130.28,0,0,1.82575,0,0),
(130567,5,2424,-5775.7,146.81,5000,2910202,1.97498,0,0),(130830,1,2205.809814,-5731.661133,102.208534,2000,2910301,1.472664,0,0),(130830,2,2208.49,-5705.15,102.799,0,0,1.7774,0,0),
(130830,3,2206.62,-5688.95,110.31,0,0,1.20799,0,0),(130830,4,2213.77,-5676.03,118.232,0,0,1.02342,0,0),(130830,5,2224.66,-5670,124.341,0,0,0.375463,0,0),
(130830,6,2240.25,-5670.29,134.257,0,0,6.15207,0,0),(130830,7,2248.5,-5671.39,139.033,0,0,0.109213,0,0),(130830,8,2256.87,-5669.47,139.138,0,0,0.524688,0,0),
(130830,9,2276.56,-5651.09,142.69,5000,2910302,0.764235,0,0),(130682,1,2161.003906,-5725.638672,101.332764,2000,2910301,1.153008,0,0),(130682,2,2175.47,-5690.91,108.545,0,0,0.956659,0,0),
(130682,3,2198.8,-5668.79,116.512,0,0,0.721039,0,0),(130682,4,2221.04,-5654.31,126.426,0,0,0.481493,0,0),(130682,5,2243.41,-5649.02,132.889,0,0,0.163406,0,0),
(130682,6,2277.84,-5647.74,143.051,5000,2910302,0.00239992,0,0),(130798,1,2150.973389,-5712.687012,101.909523,2000,2910301,0.783094,0,0),(130798,2,2179.7,-5682.61,110.924,0,0,0.790948,0,0),
(130798,3,2203.85,-5662.88,119.445,0,0,0.661357,0,0),(130798,4,2223,-5649.27,127.826,0,0,0.246667,0,0),(130798,5,2248.94,-5651.66,134.06,0,0,6.15286,0,0),
(130798,6,2277.4,-5655.15,143.306,5000,2910302,6.25889,0,0),(130827,1,2126.595215,-5688.541016,101.155556,2000,2910301,0.204981,0,0),(130827,2,2158.87,-5673.12,109.316,0,0,0.711562,0,0),
(130827,3,2174.26,-5662.13,114.756,0,0,0.511285,0,0),(130827,4,2199.97,-5651.31,121.689,0,0,0.456308,0,0),(130827,5,2226.78,-5642.05,130.179,0,0,0.142148,0,0),
(130827,6,2246.62,-5640.31,135.689,0,0,0.0636083,0,0),(130827,7,2279.48,-5641.56,144.101,5000,2910302,0.0478973,0,0),(130794,1,2114.592529,-5697.796387,100.391434,2000,2910301,6.034200,0,0),
(130794,2,2157.63,-5689.16,106.345,0,0,0.323566,0,0),(130794,3,2167.83,-5690.44,107.717,0,0,0.39582,0,0),(130794,4,2190.97,-5669.45,115.191,0,0,0.753176,0,0),
(130794,5,2216.44,-5653.29,125.529,0,0,0.497921,0,0),(130794,6,2240.74,-5645.78,132.926,0,0,0.250521,0,0),(130794,7,2282.69,-5645.59,144.297,2000,2910302,0.00704718,0,0),
(130796,1, 2144.617188,-5672.694824,110.442459,2000,2910301,0.335399,0,0),(130796,2,2152.14,-5670.07,107.855,0,0,0.335399,0,0),(130796,3,2185.46,-5659.7,117.721,0,0,0.249005,0,0),
(130796,4,2220.1,-5657.21,125.484,0,0,0.0369478,0,0),(130796,5,2248.78,-5655.03,133.863,0,0,0.131196,0,0),(130796,6,2281.57,-5648.59,143.968,2000,2910302,0.256859,0,0),
(130829,1,2196.454834,-5701.930176,112.392166,2000,2910301,1.223682,0,0),(130829,2,2198.34,-5693.86,110.321,0,0,1.28573,0,0),(130829,3,2206.89,-5672.37,117.232,0,0,1.0611,0,0),
(130829,4,2218.14,-5658.96,124.59,0,0,0.812133,0,0),(130829,5,2236.62,-5648.38,131.373,0,0,0.218372,0,0),(130829,6,2284.18,-5642.92,144.844,5000,2910302,6.24866,0,0),
(130661,1,2147.332275,-5708.847168,102.006149,2000,2910301,0.499547,0,0),(130661,2,2172.61,-5683.99,109.826,0,0,0.77912,0,0),(130661,3,2199.89,-5659.37,119.516,0,0,0.684872,0,0),
(130661,4,2223.32,-5646.06,128.413,0,0,0.377782,0,0),(130661,5,2251.14,-5644.13,135.913,0,0,0.0549819,0,0),(130661,6,2282.16,-5654.42,144.602,5000,2910302,5.97689,0,0);
-- Hearthglen Crusader
UPDATE creature SET spawntimesecs = 120 WHERE id = 29102;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2910201,2910202);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2910201,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2910202,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle');
DELETE FROM dbscripts_on_creature_death WHERE id = 29102;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(29102,7,20,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self');
-- Trisfal Crusader
UPDATE creature SET spawntimesecs = 120 WHERE id = 29103;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2910301,2910302);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2910301,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2910302,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle');
DELETE FROM dbscripts_on_creature_death WHERE id = 29103;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(29103,7,20,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self');
-- Volatile Ghoul
UPDATE creature SET spawndist = 15, MovementType = 1 WHERE id = 29136;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 29136);
DELETE FROM creature_template_addon WHERE entry = 29136;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(29136,0,0,1,0,0,0,NULL);
-- Scarlet Medic -- Phase 1
DELETE FROM creature_addon WHERE guid IN (129253,129254,129256,129257,129258,129261,129262);
DELETE FROM creature_template_addon WHERE entry = 28608;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(28608,0,0,1,0,0,0,NULL);

-- UDB_194
-- Watch Commander Zalaphil - equipment
DELETE FROM creature_equip_template WHERE entry = 2514;
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES    
(2514,2147,2053,0);
UPDATE creature_template SET equipmentTemplateid = 2514 WHERE entry = 5809;

-- UDB_195
-- Icecrown
-- Silver Blade Sailor
UPDATE creature_template SET MinLevel = 79, MaxLevel = 80, UnitClass = 2, Expansion = 2, MinLevelHealth = 12175, MaxLevelHealth = 12600, MinLevelMana = 3893, MaxLevelMana = 3994,
MinMeleeDmg = 417, MaxMeleeDmg = 582, MinRangedDmg = 341, MaxRangedDmg = 506, Armor = 9706, MeleeAttackPower = 608,  RangedAttackPower = 80, MeleeBaseAttackTime = 2000,  RangedBaseAttackTime = 2000 WHERE Entry = 35319;
UPDATE creature SET curhealth = 12175, curmana = 3893 WHERE id = 35319;
-- Crimson Dawn Sailor
UPDATE creature_template SET Expansion = 2, RangedBaseAttackTime = 2000 WHERE Entry = 35318;
-- Waypoints
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid IN (54289,54294,54296,54301);
DELETE FROM creature_movement WHERE id IN (54289,54294,54296,54301);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #1 -- Silver Blade Sailor
(54301,1,9065.17,1257.45,4.03726,2000,0,2.37088,0,0),
(54301,2,9074.46,1246.58,4.15154,0,0,5.50854,0,0),
(54301,3,9095.06,1228.42,5.58283,2000,0,5.60279,0,0),
(54301,4,9080.87,1240.43,4.31364,0,0,2.39051,0,0),
-- #2 -- Silver Blade Sailor
(54296,1,9089.49,1256.84,4.18489,0,0,2.29783,0,0),
(54296,2,9079.46,1269.9,4.03743,2000,0,2.36381,0,0),
(54296,3,9089.56,1257.28,4.1788,0,0,5.37109,0,0),
(54296,4,9103.88,1235.61,5.60955,2000,0,5.22973,0,0),
(54296,5,9100.44,1241.23,5.12457,0,0,2.13526,0,0),
-- #3 -- Crimson Dawn Sailor
(54294,1,9040.59,804.034,5.48785,2000,0,0.980707,0,0),
(54294,2,9027.63,787.022,4.16104,0,0,3.84506,0,0),
(54294,3,9013.69,772.19,3.94491,2000,0,3.93381,0,0),
(54294,4,9027.56,787.003,4.15946,0,0,0.916303,0,0),
-- #4 -- Crimson Dawn Sailor
(54289,1,9032.14,812.607,5.49287,2000,0,0.615496,0,0),
(54289,2,9016.28,800.953,4.1919,0,0,3.91731,0,0),
(54289,3,8999.94,785.7,3.94657,2000,0,3.92202,0,0);

-- UDB_196
-- Grizzly Hills
-- Conquest Hold Legionnaire - waypoints
UPDATE creature SET position_x = 3221.369, position_y = -2258.965, position_z = 113.0980, orientation = 4.91841, spawndist = 0, movementType = 2 WHERE guid = 116284;
UPDATE creature SET position_x = 3219.481, position_y = -2258.706, position_z = 113.5434, orientation = 4.91841, spawndist = 0, movementType = 0 WHERE guid = 116285;
DELETE FROM creature_movement WHERE id = 116284;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(116284,1,3225.36,-2271.29,109.913,0,0,5.36647,0,0),
(116284,2,3231.42,-2278.6,108.521,0,0,5.72303,0,0),
(116284,3,3238.38,-2282.88,108.14,0,0,6.07803,0,0),
(116284,4,3250.019,-2281.82,108.431,0,0,0.211888,0,0),
(116284,5,3273.088,-2276.127,109.74,0,0,6.11784,0,0),
(116284,6,3290.14,-2280.47,110.065,0,0,0.387146,0,0),
(116284,7,3293.6,-2279.65,110.288,0,0,0.970697,0,0),
(116284,8,3296.56,-2275.02,110.679,0,0,1.27465,0,0),
(116284,9,3301.13,-2254.09,112.6,3000,0,1.53383,0,0),
(116284,10,3304.13,-2259.15,111.978,0,0,4.53955,0,0),
(116284,11,3300.25,-2276.79,110.352,0,0,4.22855,0,0),
(116284,12,3295.79,-2282.27,110.123,0,0,3.50206,0,0),
(116284,13,3281.8,-2282.83,107.425,0,0,2.98919,0,0),
(116284,14,3269.46,-2280.32,108.708,0,0,3.01196,0,0),
(116284,15,3239.31,-2285.93,107.965,0,0,3.02217,0,0),
(116284,16,3230.63,-2282.5,108.202,0,0,2.45983,0,0),
(116284,17,3225.11,-2277.41,108.733,0,0,2.16766,0,0),
(116284,18,3221.64,-2270.83,109.775,0,0,1.90848,0,0),
(116284,19,3217.99,-2256.37,114.156,3000,0,1.77889,0,0);
-- link
DELETE FROM creature_linking WHERE guid = 116285;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES 
(116285,116284,1+2+512);

-- UDB_197
-- --------------------------------------------------------
-- DK Starting Zone - phase 64 part 2 'Crusaders'
-- --------------------------------------------------------
-- Duplicates removed
DELETE FROM creature WHERE guid IN (130751,130657,130620,130670,130808,130674,130569,130599,130719,130565,130609,130566,130717,130741,130856,130799,130821,130668,130667,130800,130708,130664,
130750,130666,130807,130817,130814,130681,130822,130816,130673,130680,130672,130678,130684,130823,130685,130748,130742,130707,130745,130855,130831,130779,130776,130687,130771,130768,130693,
130832,130834,130634,130764,130694,130632,130837,130603,130840,130770,130643,130841,130582,130590,130581,130842,130846,130698,130571,130568,130739,130572,130703,130577,130701,130853,130700,
130558,130573,130852,130702);
DELETE FROM creature_addon WHERE guid IN (130751,130657,130620,130670,130808,130674,130569,130599,130719,130565,130609,130566,130717,130741,130856,130799,130821,130668,130667,130800,130708,
130664,130750,130666,130807,130817,130814,130681,130822,130816,130673,130680,130672,130678,130684,130823,130685,130748,130742,130707,130745,130855,130831,130779,130776,130687,130771,130768,
130693,130832,130834,130634,130764,130694,130632,130837,130603,130840,130770,130643,130841,130582,130590,130581,130842,130846,130698,130571,130568,130739,130572,130703,130577,130701,130853,
130700,130558,130573,130852,130702);
DELETE FROM creature_movement WHERE id IN (130751,130657,130620,130670,130808,130674,130569,130599,130719,130565,130609,130566,130717,130741,130856,130799,130821,130668,130667,130800,130708,
130664,130750,130666,130807,130817,130814,130681,130822,130816,130673,130680,130672,130678,130684,130823,130685,130748,130742,130707,130745,130855,130831,130779,130776,130687,130771,130768,
130693,130832,130834,130634,130764,130694,130632,130837,130603,130840,130770,130643,130841,130582,130590,130581,130842,130846,130698,130571,130568,130739,130572,130703,130577,130701,130853,
130700,130558,130573,130852,130702);
DELETE FROM game_event_creature WHERE guid IN (130751,130657,130620,130670,130808,130674,130569,130599,130719,130565,130609,130566,130717,130741,130856,130799,130821,130668,130667,130800,
130708,130664,130750,130666,130807,130817,130814,130681,130822,130816,130673,130680,130672,130678,130684,130823,130685,130748,130742,130707,130745,130855,130831,130779,130776,130687,130771,
130768,130693,130832,130834,130634,130764,130694,130632,130837,130603,130840,130770,130643,130841,130582,130590,130581,130842,130846,130698,130571,130568,130739,130572,130703,130577,130701,
130853,130700,130558,130573,130852,130702);
DELETE FROM game_event_creature_data WHERE guid IN (130751,130657,130620,130670,130808,130674,130569,130599,130719,130565,130609,130566,130717,130741,130856,130799,130821,130668,130667,
130800,130708,130664,130750,130666,130807,130817,130814,130681,130822,130816,130673,130680,130672,130678,130684,130823,130685,130748,130742,130707,130745,130855,130831,130779,130776,130687,
130771,130768,130693,130832,130834,130634,130764,130694,130632,130837,130603,130840,130770,130643,130841,130582,130590,130581,130842,130846,130698,130571,130568,130739,130572,130703,130577,
130701,130853,130700,130558,130573,130852,130702);
DELETE FROM creature_battleground WHERE guid IN (130751,130657,130620,130670,130808,130674,130569,130599,130719,130565,130609,130566,130717,130741,130856,130799,130821,130668,130667,130800,
130708,130664,130750,130666,130807,130817,130814,130681,130822,130816,130673,130680,130672,130678,130684,130823,130685,130748,130742,130707,130745,130855,130831,130779,130776,130687,130771,
130768,130693,130832,130834,130634,130764,130694,130632,130837,130603,130840,130770,130643,130841,130582,130590,130581,130842,130846,130698,130571,130568,130739,130572,130703,130577,130701,
130853,130700,130558,130573,130852,130702);
DELETE FROM creature_linking WHERE guid IN (130751,130657,130620,130670,130808,130674,130569,130599,130719,130565,130609,130566,130717,130741,130856,130799,130821,130668,130667,130800,130708,
130664,130750,130666,130807,130817,130814,130681,130822,130816,130673,130680,130672,130678,130684,130823,130685,130748,130742,130707,130745,130855,130831,130779,130776,130687,130771,130768,
130693,130832,130834,130634,130764,130694,130632,130837,130603,130840,130770,130643,130841,130582,130590,130581,130842,130846,130698,130571,130568,130739,130572,130703,130577,130701,130853,
130700,130558,130573,130852,130702) 
OR master_guid IN (130751,130657,130620,130670,130808,130674,130569,130599,130719,130565,130609,130566,130717,130741,130856,130799,130821,130668,130667,130800,130708,130664,130750,130666,130807,
130817,130814,130681,130822,130816,130673,130680,130672,130678,130684,130823,130685,130748,130742,130707,130745,130855,130831,130779,130776,130687,130771,130768,130693,130832,130834,130634,130764,
130694,130632,130837,130603,130840,130770,130643,130841,130582,130590,130581,130842,130846,130698,130571,130568,130739,130572,130703,130577,130701,130853,130700,130558,130573,130852,130702);
-- Rampaging Abomination
-- should respawn almost instant after death
UPDATE creature SET spawntimesecs = 5, spawndist = 20, movementType = 1 WHERE id = 29115;
-- Volatile Ghoul
-- should respawn almost instant after death
UPDATE creature SET spawntimesecs = 5 WHERE id = 29136;
UPDATE creature SET position_x = 2198.392090, position_y = -5828.402832, position_z = 101.502411 WHERE guid = 130923;
UPDATE creature SET position_x = 2175.717285, position_y = -5816.032715, position_z = 101.343269 WHERE guid = 130951;
UPDATE creature SET position_x = 2089.767090, position_y = -5782.844727, position_z = 99.592911 WHERE guid = 130932;
UPDATE creature SET position_x = 2156.671875, position_y = -5757.208984, position_z = 100.663902 WHERE guid = 130949;
UPDATE creature SET position_x = 2238.655518, position_y = -5845.669434, position_z = 101.297417 WHERE guid = 130926;
UPDATE creature SET position_x = 2223.981934, position_y = -5862.010742, position_z = 101.434555 WHERE guid = 130937;
-- Hearthglen Crusader and Trisfal Crusader
-- should be random male/female
UPDATE creature_model_info SET modelid_other_gender = 25913 WHERE modelid = 25911;
UPDATE creature_model_info SET modelid_other_gender = 25911 WHERE modelid = 25913;
UPDATE creature_model_info SET modelid_other_gender = 25914 WHERE modelid = 25912;
UPDATE creature_model_info SET modelid_other_gender = 25912 WHERE modelid = 25914;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2910203,2910303);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2910203,7,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self'),
(2910303,7,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self');
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2910202,2910302) AND delay = 4;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2910202,4,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self'),
(2910302,4,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self');
-- fix for prev commit
DELETE FROM dbscripts_on_creature_death WHERE id IN (29102,29103);
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(29102,7,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self'),
(29103,7,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self');
UPDATE creature SET Spawndist = 0, MovementType = 0 WHERE guid = 130616;
UPDATE creature SET position_x = 2171.041504, position_y = -5746.948242, position_z = 101.453552, orientation = 4.915133, Spawndist = 10, MovementType = 1 WHERE guid = 130665;
UPDATE creature SET position_x = 2021.283081, position_y = -5767.769043, position_z = 102.069725, orientation = 0.455777 WHERE guid = 130663;
UPDATE creature SET position_x = 1938.300537, position_y = -5806.917480, position_z = 100.326469, orientation = 0.036730 WHERE guid = 130669;
UPDATE creature SET position_x = 1822.585205, position_y = -5806.501465, position_z = 103.471199, orientation = 6.123573 WHERE guid = 130676;
UPDATE creature SET position_x = 1886.295898, position_y = -5815.069824, position_z = 102.595604, orientation = 0.085570 WHERE guid = 130803;
UPDATE creature SET position_x = 1919.796875, position_y = -5810.199707, position_z = 100.092346, orientation = 0.194942 WHERE guid = 130671;
UPDATE creature SET position_x = 2062.375000, position_y = -5827.616211, position_z = 101.632080, orientation = 6.049894 WHERE guid = 130789;
UPDATE creature SET position_x = 2062.264404, position_y = -5863.437988, position_z = 103.230919, orientation = 0.077718 WHERE guid = 130662;
UPDATE creature SET position_x = 1847.384644, position_y = -5861.911621, position_z = 102.175438, orientation = 6.141752 WHERE guid = 130679;
UPDATE creature SET position_x = 1872.653320, position_y = -5855.841309, position_z = 102.853523, orientation = 0.010887 WHERE guid = 130811;
UPDATE creature SET position_x = 1887.613525, position_y = -5854.142578, position_z = 102.406212, orientation = 0.058871 WHERE guid = 130809;
UPDATE creature SET position_x = 1897.007813, position_y = -5852.924805, position_z = 101.451141, orientation = 0.009392 WHERE guid = 130805;
UPDATE creature SET position_x = 1919.654297, position_y = -5846.907715, position_z = 100.235977, orientation = 0.124753 WHERE guid = 130804;
UPDATE creature SET position_x = 1935.207397, position_y = -5843.156250, position_z = 100.510971, orientation = 0.203284 WHERE guid = 130810;
UPDATE creature SET position_x = 2105.251221, position_y = -5900.707031, position_z = 104.638618, orientation = 6.202802 WHERE guid = 130754;
UPDATE creature SET position_x = 1982.372559, position_y = -5917.364258, position_z = 104.190681, orientation = 0.246334 WHERE guid = 130801;
UPDATE creature SET position_x = 1928.129761, position_y = -5933.635742, position_z = 103.063942, orientation = 6.162736 WHERE guid = 130677;
UPDATE creature SET position_x = 1888.227783, position_y = -5932.001465, position_z = 104.198326, orientation = 0.181147 WHERE guid = 130802;
UPDATE creature SET position_x = 1887.905151, position_y = -5911.649414, position_z = 102.921516, orientation = 0.015411 WHERE guid = 130813;
UPDATE creature SET position_x = 1846.163696, position_y = -5901.961426, position_z = 104.819687, orientation = 0.024871 WHERE guid = 130675;
UPDATE creature SET position_x = 1860.970825, position_y = -5927.291504, position_z = 104.586868, orientation = 0.181141 WHERE guid = 130825;
-- Waypoints
UPDATE creature SET spawntimesecs = 30, Spawndist = 0, MovementType = 2 WHERE guid IN (130615,130653,130788,130791,130820,130663,130669,130819,130676,130812,
130803,130806,130671,130789,130662,130679,130811,130809,130805,130804,130810,130754,130801,130677,130802,130813,130675,130825);
DELETE FROM creature_movement WHERE id IN (130615,130653,130788,130791,130820,130663,130669,130819,130676,130812,130803,130806,130671,130789,130662,130679,130811,
130809,130805,130804,130810,130754,130801,130677,130802,130813,130675,130825);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(130820,1,2110.63,-5730.45,100.176,1500,2910301,4.8397,0,0),(130820,2,2122.33,-5722.27,100.328,0,0,0.410476,0,0),(130820,3,2139.85,-5717.74,100.963,0,0,0.558131,0,0),
(130820,4,2169.78,-5698.14,106.245,0,0,0.644525,0,0),(130820,5,2201.61,-5670.41,116.544,0,0,0.691649,0,0),(130820,6,2221.2,-5654.19,126.493,0,0,0.49687,0,0),
(130820,7,2247.14,-5647.54,134.152,0,0,0.100244,0,0),(130820,8,2281.82,-5649.43,144.037,10000,2910303,6.15959,0,0),(130615,1,2082.57,-5729.92,100.968,1500,2910201,-3.0862,0,0),
(130615,2,2120.29,-5721.2,100.326,0,0,0.206275,0,0),(130615,3,2144.6,-5714.86,101.333,0,0,0.611541,0,0),(130615,4,2164.79,-5698.69,105.338,0,0,0.701862,0,0),
(130615,5,2185.95,-5676.26,112.802,0,0,0.862868,0,0),(130615,6,2205.62,-5656.75,121.586,0,0,0.752912,0,0),(130615,7,2235.14,-5646.35,131.467,0,0,0.214915,0,0),
(130615,8,2282.81,-5638.38,145.358,10000,2910203,0.210988,0,0),(130788,1,2076.79,-5733.08,100.771,1500,2910301,0.948046,0,0),(130788,2,2105.55,-5727.9,100.32,0,0,0.301308,0,0),
(130788,3,2146.32,-5717.57,101.241,0,0,0.577768,0,0),(130788,4,2176.44,-5699.26,106.766,0,0,0.485091,0,0),(130788,5,2197.89,-5686.52,111.027,0,0,0.593476,0,0),
(130788,6,2213.47,-5677.43,117.313,0,0,0.628819,0,0),(130788,7,2227.61,-5672.47,125.733,0,0,0.150511,0,0),(130788,8,2241.09,-5668.24,133.771,0,0,0.150512,0,0),
(130788,9,2251.19,-5671.61,140.211,0,0,6.05592,0,0),(130788,10,2260.7,-5667.87,139.602,0,0,0.602901,0,0),(130788,11,2279.49,-5654.93,143.935,10000,2910303,0.602901,0,0),
(130791,1,2050.23,-5752.25,98.5459,1500,2910301,0.39066,0,0),(130791,2,2084.27,-5739.38,100.087,0,0,0.382198,0,0),(130791,3,2124.82,-5722.72,100.35,0,0,0.360207,0,0),
(130791,4,2161.06,-5706.96,103.656,0,0,0.712851,0,0),(130791,5,2179.11,-5688.84,109.467,0,0,0.791391,0,0),(130791,6,2204.98,-5664.79,119.164,0,0,0.720705,0,0),
(130791,7,2239.17,-5651.26,131.423,0,0,0.225904,0,0),(130791,8,2280.17,-5649.69,143.613,10000,2910303,6.26169,0,0),(130653,1,2047.67,-5750.46,98.8524,1500,2910201,0.017199,0,0),
(130653,2,2082.62,-5736.98,100.434,0,0,0.682447,0,0),(130653,3,2136.05,-5719.88,100.712,0,0,0.382425,0,0),(130653,4,2169.42,-5696.4,106.528,0,0,0.739781,0,0),
(130653,5,2191.5,-5675.34,113.472,0,0,0.77748,0,0),(130653,6,2207.61,-5659.48,121.455,0,0,0.77748,0,0),(130653,7,2233.29,-5643.46,131.681,0,0,0.520655,0,0),
(130653,8,2280.33,-5637.12,145.183,10000,2910203,0.0706218,0,0),(130663,1,2021.283081,-5767.769043,102.069725,1500,2910201,0.455777,0,0),(130663,2,2057,-5753.29,98.0162,0,0,0.389378,0,0),
(130663,3,2087.16,-5739.97,99.9644,0,0,0.440429,0,0),(130663,4,2123.28,-5722.97,100.322,0,0,0.45221,0,0),(130663,5,2151.2,-5708.97,102.328,0,0,0.602221,0,0),
(130663,6,2178.39,-5680.06,111.376,0,0,0.821347,0,0),(130663,7,2201.81,-5659.44,119.913,0,0,0.711391,0,0),(130663,8,2228.17,-5646.67,129.653,0,0,0.414511,0,0),
(130663,9,2278.72,-5651.94,143.384,10000,2910203,5.70338,0,0),(130669,1,1938.300537,-5806.917480,100.326469,1500,2910201,0.036730,0,0),(130669,2,1983.64,-5790.51,100.901,0,0,0.378378,0,0),
(130669,3,2022.91,-5769.81,102.141,0,0,0.539385,0,0),(130669,4,2045.72,-5758.77,98.3942,0,0,0.386232,0,0),(130669,5,2076.32,-5743.14,99.4291,0,0,0.456918,0,0),
(130669,6,2109.68,-5727.88,100.259,0,0,0.421575,0,0),(130669,7,2143.97,-5714.37,101.331,0,0,0.496973,0,0),(130669,8,2175.38,-5689.75,108.822,0,0,0.680756,0,0),
(130669,9,2199.47,-5669.2,116.494,0,0,0.716099,0,0),(130669,10,2222.41,-5653.69,126.852,0,0,0.567659,0,0),(130669,11,2252.28,-5644.34,136.182,0,0,0.200093,0,0),
(130669,12,2282.95,-5638.85,145.296,10000,2910203,0.273134,0,0),(130819,1,1848.26,-5817.4,100.084,1500,2910301,0.031333,0,0),(130819,2,1885.95,-5813.1,102.329,0,0,0.127844,0,0),
(130819,3,1939.43,-5807.45,100.38,0,0,0.151406,0,0),(130819,4,1987.9,-5788.39,100.894,0,0,0.383098,0,0),(130819,5,2042.2,-5757.65,98.5925,0,0,0.44593,0,0),
(130819,6,2089.15,-5735.17,100.139,0,0,0.438076,0,0),(130819,7,2128.01,-5720.92,100.474,0,0,0.28885,0,0),(130819,8,2170.04,-5695.56,106.79,0,0,0.650134,0,0),
(130819,9,2196.58,-5672.94,114.801,0,0,0.712966,0,0),(130819,10,2235.65,-5650.01,130.788,0,0,0.461638,0,0),(130819,11,2287.21,-5648.74,145.223,10000,2910303,6.18012,0,0),
(130676,1,1822.585205,-5806.501465,103.471199,1500,2910201,6.123573,0,0),(130676,2,1860.7,-5814.45,100.235,0,0,6.13614,0,0),(130676,3,1902.01,-5807.95,100.908,0,0,0.00610447,0,0),
(130676,4,1944.01,-5807.69,100.583,0,0,0.00610447,0,0),(130676,5,1989.78,-5789.95,100.913,0,0,0.482841,0,0),(130676,6,2025.41,-5769.5,102.127,0,0,0.593583,0,0),
(130676,7,2037.01,-5761.67,99.3255,0,0,0.593583,0,0),(130676,8,2081.03,-5738.27,100.278,0,0,0.389379,0,0),(130676,9,2121.93,-5722.76,100.309,0,0,0.354036,0,0),
(130676,10,2158.34,-5704.48,103.737,0,0,0.683903,0,0),(130676,11,2184.91,-5680.44,111.729,0,0,0.759302,0,0),(130676,12,2207.65,-5658.66,121.698,0,0,0.767156,0,0),
(130676,13,2232.85,-5646.12,130.964,0,0,0.399589,0,0),(130676,14,2281.53,-5657.82,144.979,10000,2910203,5.88874,0,0),(130812,1,1871.52,-5814.89,100.977,1500,2910201,0.149239,0,0),
(130812,2,1911.67,-5811.62,100.215,0,0,0.166323,0,0),(130812,3,1978.48,-5793.12,100.877,0,0,0.434929,0,0),(130812,4,2036.66,-5758.3,98.9885,0,0,0.44671,0,0),
(130812,5,2100.58,-5730.91,100.349,0,0,0.399586,0,0),(130812,6,2155.04,-5707.06,102.968,0,0,0.509542,0,0),(130812,7,2201.83,-5665.23,118.262,0,0,0.737308,0,0),
(130812,8,2256.58,-5647.82,136.801,0,0,0.266069,0,0),(130812,9,2287.16,-5648.41,145.2,10000,2910203,6.24295,0,0),(130803,1,1886.295898,-5815.069824,102.595604,1500,2910301,0.085570,0,0),
(130803,2,1940.44,-5807.54,100.42,0,0,0.329044,0,0),(130803,3,1996.59,-5784.59,100.768,0,0,0.441355,0,0),(130803,4,2037.36,-5758.5,98.9918,0,0,0.517539,0,0),
(130803,5,2095.88,-5728.01,100.327,0,0,0.156255,0,0),(130803,6,2142.68,-5713.79,101.296,0,0,0.442926,0,0),(130803,7,2192.1,-5676.26,113.266,0,0,0.717815,0,0),
(130803,8,2229.92,-5650.07,129.412,0,0,0.521466,0,0),(130803,9,2286.4,-5645.88,144.972,10000,2910303,0.0266647,0,0),(130806,1,1901.66,-5809.61,100.974,1500,2910301,0.342551,0,0),
(130806,2,1941.71,-5807.93,100.478,0,0,0.0728286,0,0),(130806,3,1998.5,-5780,100.674,0,0,0.41055,0,0),(130806,4,2043,-5758.39,98.5521,0,0,0.430185,0,0),
(130806,5,2100.37,-5732.46,100.333,0,0,0.426258,0,0),(130806,6,2154.27,-5707.19,102.864,0,0,0.481236,0,0),(130806,7,2193.28,-5674.47,113.916,0,0,0.650096,0,0),
(130806,8,2232.26,-5647.25,130.574,0,0,0.204775,0,0),(130806,9,2297.9,-5651.41,147.427,10000,2910303,6.19931,0,0),(130671,1,1919.796875,-5810.199707,100.092346,1500,2910201,0.194942,0,0),
(130671,2,1984.03,-5789.59,100.889,0,0,0.472187,0,0),(130671,3,2039.46,-5758.65,98.8531,0,0,0.511457,0,0),(130671,4,2097.4,-5732.33,100.316,0,0,0.319035,0,0),
(130671,5,2151.62,-5712.35,101.993,0,0,0.57429,0,0),(130671,6,2176.82,-5720.66,102.775,10000,2910203,5.69509,0,0),(130789,1,2062.375,-5827.616211,101.632080,1500,2910301,6.049894,0,0),
(130789,2,2080.54,-5829.92,102.423,0,0,5.93994,0,0),(130789,3,2115.34,-5840.62,102.029,0,0,5.92109,0,0),(130789,4,2158.14,-5843.73,102.082,0,0,6.26274,0,0),
(130789,5,2229.69,-5844.69,101.44,10000,2910303,0.0463068,0,0),(130662,1,2062.264404,-5863.437988,103.230919,1500,2910201,0.077718,0,0),(130662,2,2086.83,-5858.89,102.861,0,0,0.160184,0,0),
(130662,3,2132.76,-5855.41,101.544,0,0,6.21011,0,0),(130662,4,2168.02,-5845.59,101.368,0,0,0.292129,0,0),(130662,5,2251.48,-5838.18,101.258,10000,2910203,0.190027,0,0),
(130679,1,1847.384644,-5861.911621,102.175438,1500,2910301,6.141752,0,0),(130679,2,1891.38,-5854.81,102.046,0,0,0.11303,0,0),(130679,3,1949.22,-5847.57,100.357,0,0,0.0109272,0,0),
(130679,4,1995.6,-5848.39,100.826,0,0,6.18809,0,0),(130679,5,2053.46,-5857.73,103.066,0,0,0.124811,0,0),(130679,6,2094.38,-5854.87,103.519,0,0,0.128738,0,0),
(130679,7,2155.67,-5844.05,102.032,0,0,0.0384166,0,0),(130679,8,2220.64,-5849.55,101.569,10000,2910203,6.14489,0,0),(130811,1,1872.653320,-5855.841309,102.853523,1500,2910301,0.010887,0,0),
(130811,2,1945.15,-5846.42,100.348,0,0,0.152258,0,0),(130811,3,2009.83,-5844.98,100.555,0,0,0.0108862,0,0),(130811,4,2081.97,-5842.18,103.485,0,0,0.0462298,0,0),
(130811,5,2156.12,-5816.6,101.968,0,0,0.305411,0,0),(130811,6,2206.36,-5808.57,101.34,10000,2910303,0.219017,0,0),(130809,1,1887.613525,-5854.142578,102.406212,1500,2910301,0.058871,0,0),
(130809,2,1946.51,-5847.73,100.335,0,0,0.180608,0,0),(130809,3,2008.43,-5844.67,100.563,0,0,0.0313824,0,0),(130809,4,2073.83,-5841.62,103.163,0,0,0.0235284,0,0),
(130809,5,2143.41,-5819.68,100.946,0,0,0.28271,0,0),(130809,6,2205.36,-5821.85,101.321,10000,2910303,6.10251,0,0),(130805,1,1897.007813,-5852.924805,101.451141,1500,2910301,0.009392,0,0), 
(130805,2,1946.35,-5847.82,100.335,0,0,0.107488,0,0),(130805,3,2034.81,-5850.42,100.401,0,0,6.17862,0,0),(130805,4,2104.6,-5857.17,102.44,0,0,0.00538468,0,0),
(130805,5,2156.86,-5859.74,101.353,0,0,6.03332,0,0),(130805,6,2179.67,-5864.91,101.337,0,0,0.00302753,0,0),(130805,7,2226.17,-5848.94,101.294,10000,2910303,0.372165,0,0),
(130804,1,1919.654297,-5846.907715,100.235977,1500,2910301,0.124753,0,0),(130804,2,1989.29,-5843.83,100.667,0,0,0.0422862,0,0),(130804,3,2053.05,-5844.47,101.489,0,0,6.28227,0,0),
(130804,4,2115.32,-5842.73,102.499,0,0,0.085484,0,0),(130804,5,2173.43,-5843.51,101.35,0,0,6.24301,0,0),(130804,6,2218.12,-5839.82,101.329,10000,2910303,0.101191,0,0),
(130810,1,1935.207397,-5843.156250,100.510971,1500,2910301,0.203284,0,0),(130810,2,1981.56,-5842.15,100.582,0,0,6.24299,0,0),(130810,3,2016.35,-5842.54,100.545,0,0,6.25556,0,0),
(130810,4,2079.2,-5845.73,102.93,0,0,6.22021,0,0),(130810,5,2161.35,-5845.08,101.875,0,0,0.0312731,0,0),(130810,6,2223.11,-5844.07,101.298,10000,2910303,6.23199,0,0),
(130754,1,2105.251221,-5900.707031,104.638618,1500,2910301,6.202802,0,0),(130754,2,2147.59,-5901.54,101.074,0,0,0.0138609,0,0),(130754,3,2207.9,-5900.44,100.831,0,0,0.0138609,0,0),
(130754,4,2248.68,-5894.8,101.004,10000,2910303,0.135598,0,0),(130801,1,1982.372559,-5917.364258,104.190681,1500,2910301,0.246334,0,0),(130801,2,2060.33,-5911.86,106.458,0,0,0.0177885,0,0),
(130801,3,2129.89,-5903.91,102.994,0,0,0.139525,0,0),(130801,4,2190.71,-5899.29,101.074,0,0,6.28134,0,0),(130801,5,2244.32,-5898.24,100.877,10000,2910303,0.0609853,0,0),
(130677,1,1928.129761,-5933.635742,103.063942,1500,2910201,6.162736,0,0),(130677,2,1981.24,-5929.33,103.63,0,0,0.115955,0,0),(130677,3,2046.15,-5921.03,106.025,0,0,0.22591,0,0),
(130677,4,2119.48,-5903.34,104.28,0,0,0.0491957,0,0),(130677,5,2173.87,-5897.81,100.759,0,0,0.025634,0,0),(130677,6,2216.33,-5899.95,100.666,0,0,6.21065,0,0),
(130677,7,2243.88,-5903.52,100.662,10000,2910203,6.15567,0,0),(130802,1,1888.227783,-5932.001465,104.198326,1500,2910301,0.181147,0,0),(130802,2,1957.72,-5914.99,102.575,0,0,0.224344,0,0),
(130802,3,2025.95,-5907.58,104.953,0,0,0.0633372,0,0),(130802,4,2078.47,-5904.05,105.728,0,0,0.0358482,0,0),(130802,5,2141.54,-5898.15,102.3,0,0,0.0162122,0,0),
(130802,6,2192.28,-5899.28,101.138,0,0,6.18552,0,0),(130802,7,2245.25,-5899.67,100.817,10000,2910303,6.26406,0,0),(130813,1,1887.905151,-5911.649414,102.921516,1500,2910301,0.015411,0,0),
(130813,2,1950.41,-5906.33,101.542,0,0,0.125367,0,0),(130813,3,2024.78,-5907.01,104.901,0,0,6.27111,0,0),(130813,4,2070.91,-5897.83,104.986,0,0,6.1965,0,0),
(130813,5,2126.33,-5901.08,103.446,0,0,0.0193386,0,0),(130813,6,2249.12,-5903.34,100.523,10000,2910303,6.22398,0,0),(130675,1,1846.163696,-5901.961426,104.819687,1500,2910201,0.024871,0,0),
(130675,2,1894.25,-5906.52,102.022,0,0,6.17061,0,0),(130675,3,1961.34,-5907.78,102.362,0,0,6.257,0,0),(130675,4,2031.98,-5908.53,105.049,0,0,0.0405757,0,0),
(130675,5,2098.74,-5905.52,105.628,0,0,6.28056,0,0),(130675,6,2160.55,-5915.42,100.01,0,0,6.0528,0,0),(130675,7,2196.82,-5919.73,101.013,0,0,0.0829842,0,0),
(130675,8,2250.08,-5905.68,100.325,10000,2910203,0.42149,0,0),(130825,1,1860.970825,-5927.291504,104.586868,1500,2910301,0.181141,0,0),(130825,2,1919.96,-5923.4,102.163,0,0,0.137944,0,0),
(130825,3,1994.91,-5908.86,103.971,0,0,0.102601,0,0),(130825,4,2050.26,-5906.36,105.613,0,0,0.122236,0,0),(130825,5,2112.05,-5908.49,104.778,0,0,0.00835337,0,0),
(130825,6,2173.17,-5899.52,100.583,0,0,0.0829662,0,0),(130825,7,2251.93,-5902.93,100.478,10000,2910203,6.20122,0,0);
-- Balista defenders
DELETE FROM creature_addon WHERE guid IN (130630,130760,130626,130627,130628,130631,130629,130625,130759,130774,130725,130847,130848,130699,130575,130583,130838,130836,130633,130638,130697,
130835,130691,130766,130692,130639,130611,130767);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(130630,0,0,1,0,333,0,NULL),(130760,0,0,1,0,333,0,NULL),(130626,0,0,1,0,333,0,NULL),(130627,0,0,1,0,333,0,NULL),(130628,0,0,1,0,333,0,NULL),(130631,0,0,1,0,333,0,NULL),(130629,0,0,1,0,333,0,NULL),
(130625,0,0,1,0,333,0,NULL),(130759,0,0,1,0,333,0,NULL),(130774,0,0,1,0,333,0,NULL),(130725,0,0,1,0,333,0,NULL),(130847,0,0,1,0,333,0,NULL),(130848,0,0,1,0,333,0,NULL),(130699,0,0,1,0,333,0,NULL),
(130575,0,0,1,0,333,0,NULL),(130583,0,0,1,0,333,0,NULL),(130838,0,0,1,0,333,0,NULL),(130836,0,0,1,0,333,0,NULL),(130633,0,0,1,0,333,0,NULL),(130638,0,0,1,0,333,0,NULL),(130697,0,0,1,0,333,0,NULL),
(130835,0,0,1,0,333,0,NULL),(130691,0,0,1,0,333,0,NULL),(130766,0,0,1,0,333,0,NULL),(130692,0,0,1,0,333,0,NULL),(130639,0,0,1,0,333,0,NULL),(130611,0,0,1,0,333,0,NULL),(130767,0,0,1,0,333,0,NULL);
-- Citizen of Havenshire -- Phase 1
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 28576);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 28577);
DELETE FROM creature_template_addon WHERE entry IN (28576,28577);
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(28576,0,0,1,0,0,0,NULL),
(28577,0,0,1,0,0,0,NULL);

-- UDB_198
-- Grizzly Hills
-- Westfall Brigade Marine
UPDATE creature SET spawndist = 0, movementType = 2 WHERE guid IN (105919,105904,105928);
DELETE FROM creature_movement WHERE id IN (105919,105904,105928);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #1
(105919,1,2629.61,-2105.5,6.12047,0,0,3.75285,0,0),(105919,2,2649.26,-2089.76,4.09507,0,0,0.654451,0,0),(105919,3,2667.24,-2072.57,4.09507,0,0,0.740845,0,0),
(105919,4,2679.41,-2057.64,4.064,0,0,0.967039,0,0),(105919,5,2672.62,-2067.16,4.09594,0,0,3.9759,0,0),(105919,6,2656.28,-2083.66,4.09594,0,0,3.83453,0,0),
-- #2
(105904,1,2614.93,-2104.75,7.06012,0,0,5.26394,0,0),(105904,2,2592.36,-2070.82,6.78671,0,0,2.07523,0,0),
-- #3
(105928,1,2641.89,-2018.9,3.77796,0,0,2.50013,0,0),(105928,2,2667.34,-2037.36,4.09692,0,0,5.66921,0,0);
-- Silverbrook Trapper
UPDATE creature SET position_x = 4243.639, position_y = -2493.448, position_z = 231.605 WHERE guid = 100930;
UPDATE creature SET spawndist = 0, movementType = 2 WHERE guid IN (100911,100914,100910,100930);
DELETE FROM creature_movement WHERE id IN (100911,100914,100910,100930);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #1
(100911,1,4340.21,-2457.66,239.037,0,0,0.732988,0,0),(100911,2,4327.07,-2469.75,238.508,0,0,4.06936,0,0),(100911,3,4321.44,-2480.44,238.338,0,0,5.68492,0,0),
(100911,4,4345.04,-2484.49,240.191,0,0,5.85771,0,0),(100911,5,4349.13,-2488.01,241.328,0,0,5.21997,0,0),(100911,6,4353.06,-2504.31,244.122,0,0,4.82335,0,0),
(100911,7,4353.6,-2531.03,245.314,0,0,4.57801,0,0),(100911,8,4352.89,-2507.87,244.509,0,0,1.70188,0,0),(100911,9,4348.56,-2488.81,241.372,0,0,2.0828,0,0),
(100911,10,4342.19,-2483.18,239.655,0,0,2.79044,0,0),(100911,11,4325.16,-2480.19,238.539,0,0,2.61765,0,0),(100911,12,4323.18,-2476.11,238.222,0,0,1.44584,0,0),
(100911,13,4327.03,-2469.69,238.507,0,0,0.771969,0,0),
-- #2
(100914,1,4319.67,-2480.72,238.272,0,0,1.61113,0,0),(100914,2,4317.99,-2474.31,237.75,0,0,2.36197,0,0),(100914,3,4311.46,-2469.85,236.953,0,0,2.88426,0,0),
(100914,4,4302.14,-2469.05,235.1,0,0,3.26518,0,0),(100914,5,4274.02,-2472.6,231.294,0,0,2.91253,0,0),(100914,6,4268.09,-2470.76,231.28,0,0,2.51905,0,0),
(100914,7,4263.61,-2462.82,231.397,0,0,1.8169,0,0),(100914,8,4257.59,-2441.55,231.23,5000,0,1.94178,0,0),(100914,9,4263.46,-2462.3,231.396,0,0,5.20039,0,0),
(100914,10,4268.57,-2469.99,231.281,0,0,5.73917,0,0),(100914,11,4277,-2472.32,231.357,0,0,6.28109,0,0),(100914,12,4304.47,-2468.91,235.621,0,0,6.13343,0,0),
(100914,13,4312.87,-2470.26,237.153,0,0,5.77215,0,0),(100914,14,4317.65,-2473.39,237.695,0,0,5.36758,0,0),(100914,15,4319.64,-2480.63,238.266,0,0,4.55234,0,0),
(100914,16,4316.23,-2489.15,238.583,0,0,4.18871,0,0),
-- #3
(100910,1,4329.09,-2595.16,248.397,0,0,5.27964,0,0),(100910,2,4305.72,-2562.07,242.821,0,0,1.73749,0,0),(100910,3,4306.09,-2557.91,242.631,0,0,0.945023,0,0),
(100910,4,4315.21,-2555.68,244.468,0,0,0.107788,0,0),(100910,5,4327.17,-2555.26,245.285,0,0,5.981,0,0),(100910,6,4346.52,-2575.05,245.406,7000,0,2.31555,0,0),
(100910,7,4328.83,-2556.13,245.278,0,0,2.52211,0,0),(100910,8,4322.36,-2555.07,245.13,0,0,3.15828,0,0),(100910,9,4314.43,-2555.28,244.392,0,0,3.34128,0,0),
(100910,10,4306.22,-2558.16,242.666,0,0,3.90991,0,0),(100910,11,4304.46,-2561.71,242.607,0,0,4.8728,0,0),(100910,12,4315.07,-2577.06,245.147,0,0,5.34561,0,0),
-- #4
(100930,1,4243.639,-2493.448,231.605,0,0,0,0,0),(100930,2,4245.705,-2503.654,231.4428,0,0,0,0,0),(100930,3,4239.67,-2514.717,231.6307,0,0,0,0,0),
(100930,4,4239.557,-2514.651,231.5394,0,0,0,0,0),(100930,5,4239.811,-2514.36,231.6327,0,0,0,0,0),(100930,6,4245.605,-2503.552,231.3878,0,0,0,0,0),
(100930,7,4243.532,-2493.164,231.6278,0,0,0,0,0),(100930,8,4237.666,-2485.062,231.6341,0,0,0,0,0);
-- Saronite Horror
UPDATE creature SET spawndist = 0, movementType = 2 WHERE guid IN (98081,98083);
DELETE FROM creature_movement WHERE id IN (98081,98083);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #1
(98081,1,3670.1,-3269.6,263.591,0,0,3.10016,0,0),(98081,2,3656.97,-3264.79,252.175,0,0,2.92737,0,0),(98081,3,3643.25,-3264,241.167,0,0,4.49755,0,0),
(98081,4,3639.11,-3276.93,236.151,0,0,4.66326,0,0),(98081,5,3637.71,-3287.21,235.3,0,0,4.64127,0,0),(98081,6,3639.25,-3275.26,236.271,0,0,1.22636,0,0),
(98081,7,3642.83,-3263.94,240.943,0,0,0.678147,0,0),(98081,8,3649.68,-3264.45,245.707,0,0,6.18044,0,0),(98081,9,3658.71,-3265.81,253.347,0,0,5.96916,0,0),
(98081,10,3669.82,-3269.79,263.269,0,0,0.614958,0,0),(98081,11,3684.09,-3256.65,277.547,4000,0,0.658313,0,0),(98081,12,3675.81,-3263.89,270.108,0,0,3.90986,0,0),
-- #2
(98083,1,3622.12,-3320.36,225.774,0,0,6.28037,0,0),(98083,2,3634.31,-3319.97,228.168,0,0,0.535178,0,0),(98083,3,3638.41,-3316.07,230.094,0,0,0.99543,0,0),
(98083,4,3633.68,-3320.11,227.924,0,0,3.47258,0,0),(98083,5,3620.94,-3320.15,225.629,0,0,2.70838,0,0),(98083,6,3609.9,-3312.56,224.313,0,0,2.17981,0,0),
(98083,7,3605.45,-3299.79,224.282,0,0,1.89471,0,0),(98083,8,3608.16,-3311.16,224.463,0,0,5.1439,0,0);

-- UDB_199
-- Grizzly Hills 
-- Drakkari Plague Spreader
UPDATE creature SET spawndist = 0, movementType = 2 WHERE guid IN (99310,99312,99308);
DELETE FROM creature_movement WHERE id IN (99310,99312,99308);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #1
(99310,1,4242.71,-1857.01,202.295,0,0,1.96996,0,0),(99310,2,4228.73,-1838.98,202.007,0,0,1.80738,0,0),(99310,3,4226.61,-1825.37,203.057,0,0,2.53309,0,0),
(99310,4,4190.79,-1803.69,199.399,5000,0,2.56843,0,0),(99310,5,4225.06,-1824.45,202.931,0,0,5.39901,0,0),(99310,6,4229.13,-1840.24,201.837,0,0,5.32597,0,0),
(99310,7,4242.43,-1856.46,202.245,0,0,5.04872,0,0),(99310,8,4242.76,-1869.16,203.054,5000,0,4.70864,0,0),
-- #2
(99312,1,4189.38,-1972.74,208.895,0,0,2.49475,0,0),(99312,2,4164.02,-1959.18,208.236,0,0,3.48985,0,0),(99312,3,4158.79,-1962.62,208.64,0,0,3.77259,0,0),
(99312,4,4133.68,-1983.51,212.557,0,0,3.86684,0,0),(99312,5,4162.92,-1959.88,208.319,0,0,0.455854,0,0),(99312,6,4168.04,-1961.03,208.666,0,0,5.62226,0,0),
(99312,7,4190.31,-1973.59,208.872,0,0,6.18696,0,0),(99312,8,4203.44,-1975.85,208.006,5000,0,0.329454,0,0),
-- #3
(99308,1,4255.73,-1946.93,203.877,0,0,4.56257,0,0),(99308,2,4252.45,-1967.3,204.972,3000,0,4.54451,0,0),(99308,3,4255.99,-1946.57,203.874,0,0,1.53643,0,0),
(99308,4,4258.01,-1915.51,201.908,3000,0,1.49323,0,0);
-- Diseased Drakkari
UPDATE creature SET spawndist = 0, movementType = 2 WHERE guid = 104076;
DELETE FROM creature_movement WHERE id = 104076;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(104076,1,4249.73,-1990.12,206.813,0,0,4.5932,0,0),(104076,2,4247.18,-2007.93,223.317,0,0,4.56571,0,0),(104076,3,4245.39,-2021.72,237.33,5000,0,4.56571,0,0),
(104076,4,4247.31,-2007.2,222.579,0,0,1.39663,0,0),(104076,5,4249.86,-1990.3,206.831,0,0,1.44768,0,0),(104076,6,4250.87,-1975.07,205.999,0,0,1.55764,0,0),
(104076,7,4250.92,-1958.58,204.567,3000,0,1.61654,0,0);
-- Redfang Elder
UPDATE creature SET spawndist = 0, movementType = 2 WHERE guid = 102291;
DELETE FROM creature_movement WHERE id = 102291;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(102291,1,3625.66,-4589.46,191.299,0,0,2.32417,0,0),(102291,2,3619.46,-4581.98,193.03,0,0,2.41763,0,0),(102291,3,3605.62,-4571.64,191.841,0,0,2.49146,0,0),
(102291,4,3586.89,-4543.17,198.912,0,0,1.86392,0,0),(102291,5,3578.29,-4515.24,199.681,0,0,1.68014,0,0),(102291,6,3576.83,-4499.91,199.018,0,0,1.32907,0,0),
(102291,7,3589.11,-4481.18,198.796,0,0,0.729023,0,0),(102291,8,3597.28,-4474.21,197.224,5000,0,0.713315,0,0),(102291,9,3588.94,-4481.8,198.833,0,0,4.15493,0,0),
(102291,10,3576.81,-4499.59,199.046,0,0,4.52406,0,0),(102291,11,3578.48,-4516.24,199.677,0,0,4.90341,0,0),(102291,12,3587.2,-4543.75,198.839,0,0,5.27176,0,0),
(102291,13,3604.7,-4571.07,192.27,0,0,5.30003,0,0),(102291,14,3621.46,-4583.58,192.977,0,0,5.46182,0,0),(102291,15,3627.14,-4591.22,191.435,0,0,5.51915,0,0),
(102291,16,3636.25,-4596.99,191.707,5000,0,5.84195,0,0);

-- UDB_200
-- Nagrand - Oshu'gun (Redone)
-- Duplicates removed
DELETE FROM creature WHERE guid IN (66922,66921);
DELETE FROM creature_addon WHERE guid IN (66922,66921);
DELETE FROM creature_movement WHERE id IN (66922,66921);
DELETE FROM game_event_creature WHERE guid IN (66922,66921);
DELETE FROM game_event_creature_data WHERE guid IN (66922,66921);
DELETE FROM creature_battleground WHERE guid IN (66922,66921);
DELETE FROM creature_linking WHERE guid IN (66922,66921) 
OR master_guid IN (66922,66921);
-- Terrorguard
UPDATE creature SET spawndist = 0, movementType = 2 WHERE guid IN (66923,66924,66925,66926,66927);
DELETE FROM creature_movement WHERE id IN (66923,66924,66925,66926,66927);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #1
(66927,1,-2606.47,8320.52,-52.5701,4000,0,6.10233,0,0),(66927,2,-2621.8,8320.77,-63.5614,0,0,3.18929,0,0),(66927,3,-2634.19,8320.85,-71.9921,0,0,3.11075,0,0),
(66927,4,-2655.36,8320.99,-72.0223,0,0,3.11467,0,0),(66927,5,-2668.78,8320.65,-77.5559,0,0,3.43669,0,0),(66927,6,-2673.06,8317.81,-77.7356,0,0,4.14433,0,0),
(66927,7,-2674.96,8307.81,-77.7351,0,0,4.37524,0,0),(66927,8,-2673.24,8318.07,-77.735,0,0,0.625744,0,0),(66927,9,-2668.48,8320.77,-77.5563,0,0,0.2731,0,0),
(66927,10,-2656.08,8320.97,-72.0216,0,0,6.19343,0,0),(66927,11,-2633.97,8320.85,-71.9921,0,0,0.0319824,0,0),
-- #2
(66926,1,-2673.1,8323.16,-77.7367,0,0,4.53565,0,0),(66926,2,-2674,8310.93,-77.7355,0,0,4.39664,0,0),(66926,3,-2678.22,8299.24,-77.7355,0,0,4.05342,0,0),
(66926,4,-2684.34,8290.26,-77.7355,0,0,3.87199,0,0),(66926,5,-2693,8282.27,-77.7355,0,0,3.6348,0,0),(66926,6,-2705.06,8276.62,-77.7355,3000,0,3.35442,0,0),
(66926,7,-2692.97,8282.54,-77.7365,0,0,0.691917,0,0),(66926,8,-2683.36,8291.38,-77.7365,0,0,0.955025,0,0),(66926,9,-2677.06,8301.8,-77.7365,0,0,1.15137,0,0),
(66926,10,-2673.36,8314.69,-77.7352,0,0,1.4027,0,0),(66926,11,-2673.71,8328.43,-77.7382,0,0,1.6501,0,0),(66926,12,-2676.61,8341.22,-77.7567,4000,0,4.45869,0,0),
-- #3
(66924,1,-2720.82,8316.9,-83.083,0,0,5.07875,0,0),(66924,2,-2720.32,8309.37,-83.083,0,0,4.65071,0,0),(66924,3,-2720.7,8303.31,-83.0812,0,0,4.64286,0,0),
(66924,4,-2720.67,8291.87,-77.5434,0,0,4.70569,0,0),(66924,5,-2720.51,8284.5,-77.5452,0,0,4.3821,0,0),(66924,6,-2724.71,8278.45,-77.5769,0,0,4.27136,0,0),
(66924,7,-2725.22,8274.37,-77.7375,0,0,5.64031,0,0),(66924,8,-2720.43,8272.51,-77.7408,0,0,0.0247035,0,0),(66924,9,-2716.98,8274.74,-77.7408,0,0,1.29312,0,0),
(66924,10,-2716.83,8279.97,-77.5478,0,0,1.83505,0,0),(66924,11,-2720.73,8291.24,-77.5459,0,0,1.43606,0,0),(66924,12,-2720.62,8302.51,-82.83,0,0,1.56408,0,0),
(66924,13,-2720.21,8315.76,-83.0822,0,0,1.26485,0,0),(66924,14,-2715.95,8320.68,-83.3228,0,0,0.550919,0,0),(66924,15,-2709.59,8326.74,-83.3228,0,0,1.22872,0,0),
(66924,16,-2708.05,8334.05,-83.3228,0,0,1.74944,0,0),(66924,17,-2710.32,8340.11,-83.3228,0,0,2.20261,0,0),(66924,18,-2715.71,8344.05,-83.3228,0,0,2.71862,0,0),
(66924,19,-2723.85,8344.39,-83.3228,0,0,3.31002,0,0),(66924,20,-2729.84,8340.11,-83.3228,0,0,4.10249,0,0),(66924,21,-2732.99,8332.49,-83.3228,0,0,4.77386,0,0),
(66924,22,-2730.26,8324.39,-83.3228,0,0,5.4061,0,0),
-- #4
(66923,1,-2720.15,8344.97,-83.3097,0,0,2.23209,0,0),(66923,2,-2720.34,8351.65,-83.083,0,0,1.49617,0,0),(66923,3,-2720.2,8363.61,-83.1148,0,0,1.56686,0,0),
(66923,4,-2719.72,8375.37,-88.5825,0,0,1.10583,0,0),(66923,5,-2717.1,8379.37,-88.7731,0,0,1.27155,0,0),(66923,6,-2717.81,8383.22,-88.7729,0,0,2.40331,0,0),
(66923,7,-2721.73,8383.71,-88.7728,0,0,3.92462,0,0),(66923,8,-2723.09,8380.19,-88.7728,0,0,4.75243,0,0),(66923,9,-2720.12,8375.72,-88.6462,0,0,4.72809,0,0),
(66923,10,-2720.11,8364.51,-83.1117,0,0,4.71631,0,0),(66923,11,-2720.7,8346.77,-83.3104,0,0,3.99156,0,0),(66923,12,-2726.51,8343.8,-83.323,0,0,3.7473,0,0),
(66923,13,-2731.97,8336.6,-83.323,0,0,4.47458,0,0),(66923,14,-2731.89,8328.23,-83.323,0,0,5.15001,0,0),(66923,15,-2726.42,8321.16,-83.323,0,0,5.6778,0,0),
(66923,16,-2717.32,8319.53,-83.3165,0,0,0.183928,0,0),(66923,17,-2709.97,8324.87,-83.3237,0,0,0.987391,0,0),(66923,18,-2707.45,8332.97,-83.3237,0,0,1.53795,0,0),
(66923,19,-2710.46,8340.3,-83.3237,0,0,2.16313,0,0),
-- #5
(66925,1,-2765.8,8348.99,-88.77,0,0,1.13185,0,0),(66925,2,-2761.96,8357.91,-88.7715,0,0,0.981839,0,0),(66925,3,-2753.43,8368.98,-88.7715,0,0,0.65904,0,0),
(66925,4,-2742.41,8377.02,-88.7715,0,0,0.384936,0,0),(66925,5,-2731.35,8381.08,-88.7715,0,0,0.0659143,0,0),(66925,6,-2721.06,8382.38,-88.7715,0,0,6.23757,0,0),
(66925,7,-2711.59,8381.52,-88.772,0,0,6.12055,0,0),(66925,8,-2700.85,8378.13,-88.7715,0,0,5.84959,0,0),(66925,9,-2712.31,8381.7,-88.7715,0,0,3.04729,0,0),
(66925,10,-2724.56,8382.32,-88.7729,0,0,3.19887,0,0),(66925,11,-2737.57,8379.19,-88.7724,0,0,3.61906,0,0),(66925,12,-2749.49,8372.8,-88.7723,0,0,3.76829,0,0),
(66925,13,-2757.68,8364.98,-88.7723,0,0,4.03375,0,0),(66925,14,-2764.34,8353.49,-88.7723,0,0,4.29843,0,0),(66925,15,-2767.41,8341.63,-88.7711,0,0,4.58509,0,0),
(66925,16,-2767.61,8329.98,-88.771,0,0,4.75002,0,0),(66925,17,-2764.56,8318.13,-88.771,0,0,5.22911,0,0),(66925,18,-2767.08,8327.13,-88.771,0,0,1.60214,0,0),
(66925,19,-2767.47,8334.99,-88.7709,0,0,1.60842,0,0);
-- Orc Ancestor
UPDATE creature_template SET InhabitType = 5 WHERE entry = 18662;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (66928,66929,66930,66931,66932,66933,66934,66935,66936);

-- UDB_201
-- Nagrand
-- Consortium Overseer
UPDATE creature SET position_x = -2063.320557, position_y = 8546.734375, position_z = 23.936728, spawndist = 0, MovementType = 2 WHERE guid = 65566;
DELETE FROM creature_movement WHERE id = 65566;
UPDATE creature_template SET MovementType = 2 WHERE entry = 18274;
DELETE FROM creature_movement_template WHERE entry = 18274;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(18274,1,-2086,8569.04,21.5988,0,0,2.25497,0,0),
(18274,2,-2104.1,8587.69,18.2267,0,0,2.44975,0,0),
(18274,3,-2076.87,8558.08,22.9817,0,0,5.41856,0,0),
(18274,4,-2065.22,8536.39,23.9165,60000,1827401,5.10126,0,0),
(18274,5,-2074.9,8545.01,22.9726,0,0,1.88819,0,0),
(18274,6,-2078.75,8557.38,22.8488,0,0,2.1081,0,0),
(18274,7,-2086.85,8569.92,21.4582,0,0,2.22591,0,0),
(18274,8,-2103.09,8588.28,18.2584,0,0,0.444629,0,0),
(18274,9,-2091.81,8599.37,20.2861,0,0,0.0809899,0,0),
(18274,10,-2068.57,8594.29,21.5667,0,0,5.19236,0,0),
(18274,11,-2064.07,8583.91,21.4222,0,0,4.72034,0,0),
(18274,12,-2063.53,8571.92,23.4418,0,0,4.72539,0,0),
(18274,13,-2063.37,8546.69,23.9351,60000,1827402,4.61544,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1827401,1827402);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1827401,59,0,0,0,0,0,0,2000000493,0,0,0,0,0,0,0,''),
(1827402,0,20,1,10,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(1827402,59,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'movement changed to 2:waypoint');
DELETE FROM db_script_string WHERE entry = 2000000493;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000493,'Try to keep appraisal errors to a minimum.  I\'d hate to tell Gezhe we\'ve overpaid on another gem shipment this month.',0,0,0,0,NULL);

-- UDB_202
-- q.10488 'Protecting Our Own'
DELETE FROM dbscripts_on_event WHERE id = 13489; 
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13489,1,8,21142,0,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(13489,2,16,1018,2,20748,25,7,0,0,0,0,0,0,0,0,'');

-- UDB_203
-- Nagrand
-- Murkblood Invader - Southern group
UPDATE creature SET position_x = -2108.680176, position_y = 8507.859375, position_z = 23.407869, orientation = 1.805177 WHERE guid = 65507;
UPDATE creature SET position_x = -2108.209473, position_y = 8505.875000, position_z = 23.564827, orientation = 1.805177 WHERE guid = 65508;
UPDATE creature SET spawndist = 0, movementType = 2 WHERE guid = 65506;
UPDATE creature SET spawndist = 0, movementType = 0 WHERE guid IN (65507,65508);
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
-- link
DELETE FROM creature_linking WHERE guid IN (65507,65508);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(65507, 65506, 1+2+128+512),
(65508, 65506, 1+2+128+512);
-- Murkblood Invader - Northern group
UPDATE creature SET position_x = -972.505737, position_y = 8193.477539, position_z = 16.208822, orientation = 4.660573 WHERE guid = 65509;
UPDATE creature SET spawndist = 0, movementType = 2 WHERE guid = 65509;
UPDATE creature SET spawndist = 0, movementType = 0 WHERE guid IN (65510,65511);
DELETE FROM creature_movement WHERE id = 65509;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(65509,1,-969.258,8173.74,14.519,0,0,5.02496,0,0),(65509,2,-964.978,8165.19,14.0309,0,0,5.17811,0,0),(65509,3,-955.831,8146.86,8.18516,0,0,5.18203,0,0),
(65509,4,-948.537,8132.72,9.17469,0,0,5.18989,0,0),(65509,5,-940.834,8117.29,16.0521,0,0,5.18989,0,0),(65509,6,-927.489,8089.55,20.0447,0,0,5.0014,0,0),
(65509,7,-925.78,8062.36,22.5056,0,0,4.58907,0,0),(65509,8,-940.867,8041.1,24.9053,0,0,4.03144,0,0),(65509,9,-955.193,8021.02,27.2015,0,0,3.98039,0,0),
(65509,10,-982.122,7998.03,24.4603,0,0,3.71021,0,0),(65509,11,-1016.23,7973.55,23.1907,0,0,3.78875,0,0),(65509,12,-1049.58,7948.08,21.2606,0,0,3.75341,0,0),
(65509,13,-1084.05,7924.9,18.7175,0,0,3.77304,0,0),(65509,14,-1105.74,7901.69,16.006,0,0,4.1304,0,0),(65509,15,-1119.9,7877.54,15.7645,0,0,4.19323,0,0),
(65509,16,-1135.73,7850.31,15.0149,0,0,4.1736,0,0),(65509,17,-1153.12,7818.84,13.4431,0,0,4.1736,0,0),(65509,18,-1167.18,7796.36,11.4752,0,0,4.14611,0,0),
(65509,19,-1178.13,7779.59,12.1305,0,0,4.20894,0,0),(65509,20,-1183.29,7766.83,11.9431,0,0,4.3935,0,0),(65509,21,-1190.21,7746.34,11.6888,0,0,4.25606,0,0),
(65509,22,-1200.45,7731.6,11.2401,0,0,4.00867,0,0),(65509,23,-1236.8,7686.81,9.68634,0,0,3.97725,0,0),(65509,24,-1211.65,7718.21,10.4192,0,0,0.914195,0,0),
(65509,25,-1192.15,7741.8,11.6894,0,0,1.03986,0,0),(65509,26,-1185.76,7755.28,11.8804,0,0,1.25192,0,0),(65509,27,-1176.96,7780.66,12.218,0,0,0.984881,0,0),
(65509,28,-1167.24,7795.77,11.4395,0,0,1.03201,0,0),(65509,29,-1153.44,7817.9,13.0679,0,0,1.01237,0,0),(65509,30,-1134.84,7851.6,15.0348,0,0,1.07128,0,0),
(65509,31,-1115.03,7884.6,15.8627,0,0,1.02808,0,0),(65509,32,-1099.92,7908.16,16.5578,0,0,0.977027,0,0),(65509,33,-1085.16,7924,18.5925,0,0,0.7257,0,0),
(65509,34,-1069.2,7936.06,19.9505,0,0,0.596894,0,0),(65509,35,-1046.46,7950.2,21.402,0,0,0.577259,0,0),(65509,36,-1021.17,7968.96,22.9191,0,0,0.655799,0,0),
(65509,37,-978.595,8000.42,24.546,0,0,0.644018,0,0),(65509,38,-960.673,8015.12,26.537,0,0,0.714704,0,0),(65509,39,-953.002,8023.33,27.1627,0,0,0.966032,0,0),
(65509,40,-934.678,8048.94,23.8428,0,0,0.930689,0,0),(65509,41,-927.145,8064.62,22.2443,0,0,1.19772,0,0),(65509,42,-925.531,8084.46,20.462,0,0,1.61791,0,0),
(65509,43,-929.955,8100.56,19.2077,0,0,2.08522,0,0),(65509,44,-941.076,8117.97,16.1933,0,0,2.01847,0,0),(65509,45,-950.445,8136.7,8.46156,0,0,2.04595,0,0),
(65509,46,-961.349,8157.99,11.2468,0,0,2.04203,0,0),(65509,47,-966.493,8168.31,14.7536,0,0,2.01847,0,0),(65509,48,-972.338,8184.73,15.6714,0,0,1.76321,0,0),
(65509,49,-972.804,8223.08,17.8149,0,0,1.61556,0,0),(65509,50,-967.869,8247.88,18.97,0,0,1.32889,0,0),(65509,51,-961.649,8264.25,19.72,0,0,1.16317,0,0),
(65509,52,-943.117,8296.46,21.5,0,0,0.96289,0,0),(65509,53,-927.318,8315.15,23.386,0,0,0.837226,0,0),(65509,54,-910.694,8332.79,24.4268,0,0,0.778321,0,0),
(65509,55,-940.544,8298.11,21.7331,0,0,4.04165,0,0),(65509,56,-952.892,8278.76,19.9521,0,0,4.17516,0,0),(65509,57,-964.942,8256.17,19.3332,0,0,4.34795,0,0),
(65509,58,-972.327,8230.33,18.1723,0,0,4.582,0,0),(65509,59,-972.936,8194.27,16.2379,0,0,4.71944,0,0);
-- link
DELETE FROM creature_linking WHERE guid IN (65510,65511);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(65510, 65509, 1+2+128+512),
(65511, 65509, 1+2+128+512);
-- Consortium - shouldn't be attacked by Murkblood Invaders
UPDATE creature_template SET UnitFlags = 2 WHERE Entry IN (18272,18274,18276);

-- UDB_204
-- q.9805 'Blessing of Incineratus'
DELETE FROM dbscripts_on_spell WHERE id = 31927; 
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(31927,1,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'q. credit');
-- Part 1: Windyreed Quest Credit (Big Hut)
UPDATE creature_template SET MovementType = 0 WHERE entry = 18110; -- movement will be changed by quest script
DELETE FROM creature_movement_template WHERE entry = 18110;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(18110,1,-1809.12,6294.08,59.3563,20000,1811001,5.72468,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1811001; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1811001,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(1811001,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(1811001,2,21,1,0,18109,20,7,0,0,0,0,0,0,0,0,'active'),
(1811001,2,3,0,700,18109,25,7,0,0,0,0,-1818.2,6290.04,59.2684,5.24503,''),
(1811001,3,3,0,700,18109,25,7,0,0,0,0,-1808.07,6282.27,59.2715,6.06969,''),
(1811001,5,3,0,700,18109,25,7,0,0,0,0,-1796.79,6285.82,59.2715,0.905697,''),
(1811001,6,3,0,700,18109,25,7,0,0,0,0,-1794.28,6296.44,59.2715,1.89216,''),
(1811001,8,3,0,700,18109,25,7,0,0,0,0,-1803.14,6305.21,59.2715,2.77887,''),
(1811001,9,3,0,700,18109,25,7,0,0,0,0,-1811.29,6303.09,59.2715,4.00724,''),
(1811001,10,3,0,700,18109,25,7,0,0,0,0,-1811.29,6303.09,59.2715,4.00724,''),
(1811001,11,3,0,700,18109,25,7,0,0,0,0,-1809.12,6294.08,59.2715,5.33141,''),
(1811001,13,9,22611,120,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1811001,13,9,22612,120,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1811001,13,9,22613,120,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1811001,14,9,22614,120,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1811001,14,9,22615,120,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1811001,14,9,22616,120,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1811001,17,18,1,0,18109,20,7,0,0,0,0,0,0,0,0,'desp'),
(1811001,17,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
-- Part 2: Windyreed Quest Credit (Hut 01)
UPDATE creature_template SET MovementType = 0 WHERE entry = 18142; -- movement will be changed by quest script
DELETE FROM creature_movement_template WHERE entry = 18142;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(18142,1,-1840.96,6387.75,52.945,8000,1814201,4.38078,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1814201; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1814201,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(1814201,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(1814201,2,21,1,0,18109,20,7,0,0,0,0,0,0,0,0,'active'),
(1814201,3,15,24646,0,18109,20,7,0,0,0,0,0,0,0,0,''),
(1814201,5,9,66169,120,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1814201,5,9,66170,120,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1814201,5,9,66171,120,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1814201,6,18,1,0,18109,20,7,0,0,0,0,0,0,0,0,'desp'),
(1814201,7,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
-- Part 3: Windyreed Quest Credit (Hut 02)
UPDATE creature_template SET MovementType = 0 WHERE entry = 18143; -- movement will be changed by quest script
DELETE FROM creature_movement_template WHERE entry = 18143;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(18143,1,-1920.43,6362.44,56.116,8000,1814301,2.11185,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1814301; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1814301,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(1814301,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(1814301,2,21,1,0,18109,20,7,0,0,0,0,0,0,0,0,'active'),
(1814301,3,15,24646,0,18109,20,7,0,0,0,0,0,0,0,0,''),
(1814301,5,9,44729,120,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1814301,5,9,44728,120,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1814301,5,9,44727,120,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1814301,6,18,1,0,18109,20,7,0,0,0,0,0,0,0,0,'desp'),
(1814301,7,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
-- Part 4: Windyreed Quest Credit (Hut 03) 
UPDATE creature_template SET MovementType = 0 WHERE entry = 18144; -- movement will be changed by quest script
DELETE FROM creature_movement_template WHERE entry = 18144;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(18144,1,-1974.11,6275.41,56.994,8000,1814401,0.017453,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1814401; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1814401,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(1814401,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(1814401,2,21,1,0,18109,20,7,0,0,0,0,0,0,0,0,'active'),
(1814401,3,15,24646,0,18109,20,7,0,0,0,0,0,0,0,0,''),
(1814401,5,9,44730,120,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1814401,5,9,66165,120,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1814401,5,9,66166,120,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1814401,6,18,1,0,18109,20,7,0,0,0,0,0,0,0,0,'desp'),
(1814401,7,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
-- objects
-- Hut Fire (Large)
UPDATE gameobject SET spawntimesecs = -120 WHERE guid IN (22611,22612,22613,22614,22615,22616);
-- missing added - UDB free guids reused
DELETE FROM gameobject WHERE guid IN (44727,44728,44729,44730,66165,66166,66169,66170,66171);
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES 
(44727, 182146, 530, 1,1,-1917.804, 6362.598, 70.96107, 0, 0, 0, 0.8746195, 0.4848101, -120, 100, 1),
(44728, 182146, 530, 1,1,-1914.794, 6352.145, 58.35398, 0, 0, 0, -0.3583679, 0.9335805, -120, 100, 1),
(44729, 182146, 530, 1,1,-1920.396, 6362.225, 56.03167, 0, 0, 0, 0.8433914, 0.5372996, -120, 100, 1),
(44730, 182146, 530, 1,1,-1971.461, 6273.495, 63.36858, 0, 0, 0, 0.9986286, 0.05235322, -120, 100, 1),
(66165, 182146, 530, 1,1,-1971.571, 6282.98, 54.21309, 0, 0, 0, -0.06975555, 0.9975641, -120, 100, 1),
(66166, 182146, 530, 1,1,-1974.024, 6275.625, 56.90597, 0, 0, 0, -0.8910065, 0.4539906, -120, 100, 1),
(66169, 182146, 530, 1,1,-1839.88, 6387.97, 52.8597, 0, 0, 0, 0.9986286, 0.05235322, -120, 100, 1),
(66170, 182146, 530, 1,1,-1836.8, 6389.96, 57.0647, 0, 0, 0, 0.9986286, 0.05235322, -120, 100, 1),
(66171, 182146, 530, 1,1,-1845.25, 6383.97, 56.5082, 0, 0, 0, 0.9986286, 0.05235322, -120, 100, 1);
-- Living Fire
UPDATE creature_template SET MovementType = 0 WHERE entry = 18109;
-- Duplicates removed
DELETE FROM creature WHERE guid=86628;
DELETE FROM creature_addon WHERE guid=86628;
DELETE FROM creature_movement WHERE id=86628;
DELETE FROM game_event_creature WHERE guid=86628;
DELETE FROM game_event_creature_data WHERE guid=86628;
DELETE FROM creature_battleground WHERE guid=86628;
DELETE FROM creature_linking WHERE guid=86628 OR master_guid=86628;
-- Windyreed Wretch
UPDATE creature SET position_x = -1929.178101, position_y = 6334.593262, position_z = 48.385132 WHERE guid = 60171;
UPDATE creature SET position_x = -1813.437256, position_y = 6384.998047, position_z = 43.795441 WHERE guid = 60179;
UPDATE creature SET position_x = -1869.904419, position_y = 6393.945313, position_z = 43.191776 WHERE guid = 60174;
UPDATE creature SET position_x = -1900.012451, position_y = 6378.280273, position_z = 50.573761 WHERE guid = 60175;
UPDATE creature SET position_x = -1971.317017, position_y = 6295.283203, position_z = 50.260643 WHERE guid = 60173;
UPDATE creature SET position_x = -2013.241943, position_y = 6220.623535, position_z = 78.896729 WHERE guid = 60168;
UPDATE creature SET position_x = -1973.284058, position_y = 6275.926758, position_z = 56.900406, spawndist = 2, movementType = 1 WHERE guid = 60157;

-- UDB_205
-- Zixil <Merchant Supreme>
UPDATE creature SET position_x = -36.31, position_y = -916.366, position_z = 55.075, orientation = 1.062, Spawndist = 0, MovementType = 2 WHERE guid = 15424;
UPDATE creature SET position_x = -37.248, position_y = -914.605, position_z = 55.343, orientation = 0.826, Spawndist = 0, MovementType = 0 WHERE guid = 15423;
DELETE FROM creature_movement WHERE id = 15424;
UPDATE creature_template SET MovementType = 2 WHERE entry = 3537;
DELETE FROM creature_movement_template WHERE entry = 3537;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(3537, 1, -36.31, -916.366, 55.075, 180000, 0, 1.062, 0, 0), 
(3537, 2, -28.532600, -902.440735, 55.908634, 0, 0, 0, 0, 0),
(3537, 3, -26.338741, -896.902466, 56.039452, 0, 0, 0, 0, 0),
(3537, 4, -51.500923, -836.734619, 56.524872, 0, 0, 0, 0, 0),
(3537, 5, -17.165236, -802.633240, 58.751846, 0, 0, 0, 0, 0),
(3537, 6, -20.983173, -719.063965, 69.290993, 0, 0, 0, 0, 0),
(3537, 7, -149.228104, -712.801025, 64.445107, 0, 0, 0, 0, 0),
(3537, 8, -226.017303, -722.711487, 60.861263, 0, 0, 0, 0, 0),
(3537, 9, -325.539337, -754.267334, 54.089657, 0, 0, 0, 0, 0),
(3537, 10, -377.870178, -776.472351, 54.472977, 0, 0, 0, 0, 0),
(3537, 11, -403.164459, -680.892700, 54.499004, 0, 0, 0, 0, 0),
(3537, 12, -331.617737, -671.147278, 54.918808, 0, 0, 0, 0, 0),
(3537, 13, -341.247772, -713.172363, 57.733025, 0, 0, 0, 0, 0),
(3537, 14, -340.614716, -711.776184, 57.733025, 120000, 0, 0, 0, 0),
(3537, 15, -325.247681, -677.673950, 54.596302, 0, 0, 0, 0, 0), 
(3537, 16, -339.869904, -673.187561, 55.012871, 0, 0, 0, 0, 0),
(3537, 17, -385.749298, -685.196350, 54.387272, 0, 0, 0, 0, 0),
(3537, 18, -413.708405, -656.887817, 54.488979, 0, 0, 0, 0, 0),
(3537, 19, -440.757660, -585.658386, 53.424225, 0, 0, 0, 0, 0),
(3537, 20, -520.923462, -558.851501, 39.920975, 0, 0, 0, 0, 0),
(3537, 21, -569.159912, -567.547302, 32.809437, 0, 0, 0, 0, 0),
(3537, 22, -594.511536, -575.940979, 31.982075, 0, 0, 0, 0, 0),
(3537, 23, -650.699402, -560.431763, 26.120964, 0, 0, 0, 0, 0),
(3537, 24, -691.624939, -568.642334, 24.540937, 0, 0, 0, 0, 0),
(3537, 25, -707.109802, -562.611023, 22.809536, 0, 0, 0, 0, 0),
(3537, 26, -724.787048, -549.384033, 20.291832, 0, 0, 0, 0, 0),
(3537, 27, -811.109985, -542.174927, 15.771987, 0, 0, 0, 0, 0),
(3537, 28, -817.549683, -533.020020, 15.160646, 180000, 0, 0, 0, 0),
(3537, 29, -811.109985, -542.174927, 15.771987, 0, 0, 0, 0, 0),
(3537, 30, -724.787048, -549.384033, 20.291832, 0, 0, 0, 0, 0),
(3537, 31, -707.109802, -562.611023, 22.809536, 0, 0, 0, 0, 0),
(3537, 32, -691.624939, -568.642334, 24.540937, 0, 0, 0, 0, 0),
(3537, 33, -650.699402, -560.431763, 26.120964, 0, 0, 0, 0, 0),
(3537, 34, -594.511536, -575.940979, 31.982075, 0, 0, 0, 0, 0),
(3537, 35, -569.159912, -567.547302, 32.809437, 0, 0, 0, 0, 0),
(3537, 36, -520.923462, -558.851501, 39.920975, 0, 0, 0, 0, 0),
(3537, 37, -440.757660, -585.658386, 53.424225, 0, 0, 0, 0, 0),
(3537, 38, -413.708405, -656.887817, 54.488979, 0, 0, 0, 0, 0),
(3537, 39, -385.749298, -685.196350, 54.387272, 0, 0, 0, 0, 0),
(3537, 40, -339.869904, -673.187561, 55.012871, 0, 0, 0, 0, 0),
(3537, 41, -325.247681, -677.673950, 54.596302, 0, 0, 0, 0, 0), 
(3537, 42, -340.614716, -711.776184, 57.733025, 120000, 0, 0, 0, 0),
(3537, 43, -341.247772, -713.172363, 57.733025, 0, 0, 0, 0, 0),
(3537, 44, -331.617737, -671.147278, 54.918808, 0, 0, 0, 0, 0),
(3537, 45, -403.164459, -680.892700, 54.499004, 0, 0, 0, 0, 0),
(3537, 46, -377.870178, -776.472351, 54.472977, 0, 0, 0, 0, 0),
(3537, 47, -325.539337, -754.267334, 54.089657, 0, 0, 0, 0, 0),
(3537, 48, -226.017303, -722.711487, 60.861263, 0, 0, 0, 0, 0),
(3537, 49, -149.228104, -712.801025, 64.445107, 0, 0, 0, 0, 0),
(3537, 50, -20.983173, -719.063965, 69.290993, 0, 0, 0, 0, 0),
(3537, 51, -17.165236, -802.633240, 58.751846, 0, 0, 0, 0, 0),
(3537, 52, -51.500923, -836.734619, 56.524872, 0, 0, 0, 0, 0),
(3537, 53, -26.338741, -896.902466, 56.039452, 0, 0, 0, 0, 0),
(3537, 54, -28.532600, -902.440735, 55.908634, 0, 0, 0, 0, 0),
(3537, 55, -38.973717, -917.010193, 55.065174, 0, 0, 1.062, 0, 0);
-- link
DELETE FROM creature_linking WHERE guid = 15423;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(15423, 15424, 128+512);

-- UDB_206
-- Hothix
-- ids taken from trinity may not be right 
-- fixed one comming from cata (the same not changed texts) and whats most important here: they're comming from 100% source
-- Marshal Dughan - gossip corrected
DELETE FROM gossip_menu WHERE entry = 6159;
UPDATE creature_template SET npcFlags = 3, GossipMenuId = 11611 WHERE Entry = 240;
DELETE FROM gossip_menu WHERE entry = 11611; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(11611, 16211, 0, 0);
-- missing text added
DELETE FROM npc_text WHERE ID IN (6157,16211);
INSERT INTO npc_text (ID, text0_0, text0_1, lang0, prob0, em0_0, em0_1) VALUES 
(16211, 'Ach, it\'s hard enough keeping order around here without all these new troubles popping up!  I hope you have good news, $n...', 'Ach, it\'s hard enough keeping order around here without all these new troubles popping up!  I hope you have good news, $n...', 0, 1, 5, 5),
(6157, 'Hey there, friend. My name\'s Remy. I\'m from Redridge to the east, and came here looking for business, looking for business. You got any...got any??', 'Hey there, friend. My name\'s Remy. I\'m from Redridge to the east, and came here looking for business, looking for business. You got any...got any??', 0, 1, 0, 0);

-- UDB_207
-- Mountaineer Stormpike
UPDATE creature_template SET npcFlags = 3, GossipMenuId = 694 WHERE entry = 1343;
DELETE FROM gossip_menu WHERE entry = 694;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(694, 1244, 0, 0);
DELETE FROM npc_text WHERE ID = 1244;
INSERT INTO npc_text (ID, text0_0, text0_1, lang0, prob0, em0_0, em0_1) VALUES 
(1244, 'Well, if it isn\'t a young, bristling $c, no doubt drawn here by talk of my exploits in fields of battle!$B$BNo time for stories now, for there are great, important deeds that need doing!  So if you\'re looking for glory, then luck shines on you today...', 'Well, if it isn\'t a young, bristling $c, no doubt drawn here by talk of my exploits in fields of battle!$B$BNo time for stories now, for there are great, important deeds that need doing!  So if you\'re looking for glory, then luck shines on you today...', 0, 1, 0, 0);

-- UDB_208
-- Gnome Engineer
-- should be found only in Dun Morogh airfield.
DELETE FROM creature WHERE guid IN (86178,86175);
DELETE FROM creature_addon WHERE guid IN (86178,86175);
DELETE FROM creature_movement WHERE id IN (86178,86175);
DELETE FROM game_event_creature WHERE guid IN (86178,86175);
DELETE FROM game_event_creature_data WHERE guid IN (86178,86175);
DELETE FROM creature_battleground WHERE guid IN (86178,86175);
DELETE FROM creature_linking WHERE guid IN (86178,86175) OR master_guid IN (86178,86175);
-- Leper Gnome 
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE guid IN (2414,2420,2426,2422,2427,2425,2412,2416,2421,2428,2438,2441,2455,2458,2467,2468,2461,2469,2460,2451);

-- UDB_209
-- Remy "Two Times"
UPDATE creature_template SET npcFlags = 3, GossipMenuId = 5032 WHERE entry = 241;
DELETE FROM gossip_menu WHERE entry = 5032;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(5032, 6157, 0, 0);
DELETE FROM npc_text WHERE ID = 6157;
INSERT INTO npc_text (ID, text0_0, text0_1, lang0, prob0, em0_0, em0_1) VALUES 
(6157, 'Hey there, friend. My name\'s Remy. I\'m from Redridge to the east, and came here looking for business, looking for business. You got any...got any??', 'Hey there, friend. My name\'s Remy. I\'m from Redridge to the east, and came here looking for business, looking for business. You got any...got any??', 0, 1, 0, 0);

-- UDB_210
-- --------------------------------------------------------
-- DK Starting Zone - Phases
-- --------------------------------------------------------
-- Creatures and Gameobjects (not all ofc) can have more than 1 phase.
-- DB had 1 spawn for each phase.
-- Creatures 
-- duplicates removed
DELETE FROM creature WHERE guid IN (130413,128501,129828,130422,128500,130421,129827,128510,130427,129835,128696,128509,130426,129834,128695,129946,129878,130464,129880,130465,
130466,129881,129815,130408,129817,128458,128459,130412,128457,129816,130226,129388,130225,130224,130037,129456,130332,130286,129439,129445,129450,129433,129438,129454,130288,
129455,130274,130293,129444,129449,130294,130275,130291,130329,130292,130337,129457,130276,130272,130357,130359,130358,129831,128507,130434,128522,129849,130437,130435,128525,
129848,129847,130454,129862,128535,128538,129859,130453,128543,129864,130447,129860,128544,129867,128537,128541,129863,130448,129865,128539,130424,128506,128529,130438,130444,130439,
129856,128530,130442,129858,129857,129851,129853,128528,130445,130443,129854,128531,128505,130423,130457,129874,129876,128553,128546,129872,129871,129873,128545,129870,130455,130463,
130462,130461,130456,130460,128549,128548,130543,128753,130544,129963,130415,128479,130416,128476,128477,129826,128478,129823);
DELETE FROM creature_addon WHERE guid IN (130413,128501,129828,130422,128500,130421,129827,128510,130427,129835,128696,128509,130426,129834,128695,129946,129878,130464,129880,130465,
130466,129881,129815,130408,129817,128458,128459,130412,128457,129816,130226,129388,130225,130224,130037,129456,130332,130286,129439,129445,129450,129433,129438,129454,130288,129455,
130274,130293,129444,129449,130294,130275,130291,130329,130292,130337,129457,130276,130272,130357,130359,130358,129831,128507,130434,128522,129849,130437,130435,128525,129848,129847,
130454,129862,128535,128538,129859,130453,128543,129864,130447,129860,128544,129867,128537,128541,129863,130448,129865,128539,130424,128506,128529,130438,130444,130439,129856,128530,
130442,129858,129857,129851,129853,128528,130445,130443,129854,128531,128505,130423,130457,129874,129876,128553,128546,129872,129871,129873,128545,129870,130455,130463,130462,130461,
130456,130460,128549,128548,130543,128753,130544,129963,130415,128479,130416,128476,128477,129826,128478,129823);
DELETE FROM creature_movement WHERE id IN (130413,128501,129828,130422,128500,130421,129827,128510,130427,129835,128696,128509,130426,129834,128695,129946,129878,130464,129880,130465,
130466,129881,129815,130408,129817,128458,128459,130412,128457,129816,130226,129388,130225,130224,130037,129456,130332,130286,129439,129445,129450,129433,129438,129454,130288,129455,
130274,130293,129444,129449,130294,130275,130291,130329,130292,130337,129457,130276,130272,130357,130359,130358,129831,128507,130434,128522,129849,130437,130435,128525,129848,129847,
130454,129862,128535,128538,129859,130453,128543,129864,130447,129860,128544,129867,128537,128541,129863,130448,129865,128539,130424,128506,128529,130438,130444,130439,129856,128530,
130442,129858,129857,129851,129853,128528,130445,130443,129854,128531,128505,130423,130457,129874,129876,128553,128546,129872,129871,129873,128545,129870,130455,130463,130462,130461,
130456,130460,128549,128548,130543,128753,130544,129963,130415,128479,130416,128476,128477,129826,128478,129823);
-- Lich King - Acherus
UPDATE creature SET phaseMask = 5 WHERE guid = 128738;
-- Highlord Darion Mograine
UPDATE creature SET phaseMask = 69 WHERE guid = 128470;
-- Scourge Gryphon
UPDATE creature SET phaseMask = 229 WHERE guid IN (28556,76795,76796,76799);
-- Master Siegesmith Corvus
UPDATE creature SET phaseMask = 197 WHERE guid = 128577;
-- Enslaved Laborer
UPDATE creature SET phaseMask = 197 WHERE guid = 128579;
-- Mindless Laborer
UPDATE creature SET phaseMask = 197 WHERE guid = 128580;
-- Risen Drudge
UPDATE creature SET phaseMask = 197 WHERE guid = 128465;
-- Alchemist Karloff
UPDATE creature SET phaseMask = 197 WHERE guid = 128456;
-- Gangrenus
UPDATE creature SET phaseMask = 197 WHERE guid = 130411;
-- Fester
UPDATE creature SET phaseMask = 197 WHERE guid = 129818;
-- Corpulous
UPDATE creature SET phaseMask = 197 WHERE guid = 130410;
-- Instructor Razuvious
UPDATE creature SET phaseMask = 69 WHERE guid = 129307;
-- Acherus Necromancer
UPDATE creature SET phaseMask = 69 WHERE guid IN (129389,129390,130223,129391);
-- Death Knight Initiate
UPDATE creature SET phaseMask = 69 WHERE guid IN (129441,130335,129453,129459,130276,130333,129443,130285,130284,130290,130273,130296,130289,129442,130334,129432,129447,129440,129434,130336,
130295,129448);
-- Acherus Ghoul
UPDATE creature SET phaseMask = 69 WHERE guid IN (129480,129481,129482);
-- Amal'thazad
UPDATE creature SET phaseMask = 197 WHERE guid = 130425;
-- Coldwraith
UPDATE creature SET phaseMask = 69 WHERE guid IN (129846,128526,128523,130436);
-- Disciple of Frost
UPDATE creature SET phaseMask = 69 WHERE guid IN (129866,128540,130452,130451,130450,129861,128536,130446,130449);
-- Lord Thorval
UPDATE creature SET phaseMask = 197 WHERE guid = 129830;
-- Disciple of Blood
UPDATE creature SET phaseMask = 69 WHERE guid IN (129855,128534,129852,128533,128527,130440,128532,130441);
-- Lady Alistra
UPDATE creature SET phaseMask = 197 WHERE guid = 129829;
-- Disciple of the Unholy
UPDATE creature SET phaseMask = 69 WHERE guid IN (128550,130458,130459,129869,129875,128551,128552,129868,128547);
-- Teleport - Hall -> Heart
UPDATE creature SET phaseMask = 487 WHERE guid = 129960;
-- Teleport - Heart -> Hall
UPDATE creature SET phaseMask = 487 WHERE guid = 128754;
-- Initiate's Training Dummy
UPDATE creature SET phaseMask = 231 WHERE guid IN (130414,129825,129824,130417);
-- Gameobjects
-- duplicates removed
DELETE FROM gameobject WHERE guid IN (66257,66119,65904,66117,66255,66432,66256,66118,65903,66116,66254,66431,66145,66147,66316,66146,65973,66436,66441,66438,66439,66458,66442,66120,65255,
66352,66448,66137,66700,66608,66437,66454,66452,66136,66699,66609,66449,66138,66701,66292,66139,66702,66607,66451,66457,66450,66444,66604,66130,66697,66447,66133,66129,66360,66455,66127,
66691,66605,66453,66124,65375,66601,66435,66140,66703,66141,66704,66445,66446,66456,66602,66463,66464,66462,66466,66603,66465,66468,66467,66461,66470,66469,66479,66478,66516,66347,94160,
66849,94162,66845,94159,94158,66851,94165,94164,66848,66847,94161,66850,66844,93940,94065,94166,93939,66708,66710,94167,66846,66843,66842,66705,66709,66841,66840,66610,66611,66243,66416,
66244,66418,66244,66418,66351,66522,66338,66510,66313,66483,66311,66481,66319,66490,66326,66498,66492,66321,66494,66323,66315,66485,66317,66488,66312,66482,66346,66517,66310,66480,66325,
66497,66335,66507,66245,66420,66246,66422,66033,66515,66513,66029,66031,66514,66512,66340,66038,66348,65917,66471,65866,66387,66305,66473,65867,66236,66329,66501,66304,66472,65865,66234,
66237,66391,65883,66238,66239,66395,65887,66242,66332,66504,65885,66240,66241,66399,66358,66123,66065);
-- Phase: ALL
UPDATE gameobject SET phaseMask = 487 WHERE guid IN (66486,65893,65895,66143,65897,65899,66235,66389,66385,65882,66393,65884,66401,66397,65886);
-- Phase: 1+2
UPDATE gameobject SET phaseMask = 3 WHERE guid IN (65985,66004,65990,66017,65995,65982,65991,66007,66036,65994,66034,65992,65988,65974,65993,65976,65978,65977,65975,66022,66013,66030,
66019,66014,65996,66000,65999,66003,66009,65998,66001);
-- Phase: 1+4
UPDATE gameobject SET phaseMask = 5 WHERE guid = 66069;
-- Phase: 1+2+32
UPDATE gameobject SET phaseMask = 35 WHERE guid IN (66060,66066,66064,66068,66062,66070,66076,65912,66067,65932,65905,65291);
-- Phase: 4+64+128
UPDATE gameobject SET phaseMask = 196 WHERE guid IN (66290,66276,66285,66282,66277,66280,66288,66278,66271,66275,66286,66284,66272,66273,66287,66289,66279,66270,66281,66274,66283,66262,
66263,66267,66264,66265,66268,66375,66376,66259,66261,66260,66354,66295,66296,66294,66298,66355,66297,66300,66299,66293,66302,66301,66307,66306,66345,66518,66357);
-- Phase: 1+4+32+64+128
UPDATE gameobject SET phaseMask = 229 WHERE guid IN (66434,66433,65902,65901);
-- Phase: 1+2+4+32+64+128
UPDATE gameobject SET phaseMask = 231 WHERE guid IN (65895,66040,66024,65970,65968,65981,66005,65984,65987,65972,65979,65969,66037,65967,66002,66020,66343,66341,66342,66027,
66519,66303,65919,66010,65918,66015);
-- Phase: 4+64+128+256
UPDATE gameobject SET phaseMask = 452 WHERE guid IN (66600,66356,66606,66359,66353,66365,66374,66460,66362,66258);

-- UDB_211
-- DK zone - Phases: more objects corrected
-- Gameobjects
-- duplicates removed
DELETE FROM gameobject WHERE guid IN (66336,66508,66521,66350,66491,66320,66337,66509,66484,66314,66327,66499,66505,66333);
-- Phase: 1+4+64+128
UPDATE gameobject SET phaseMask = 197 WHERE guid IN (66021,66039,65983,66023,65971,66006,66016);

-- UDB_212
-- --------------------------------------------------------
-- DK Starting Zone - phase 128 - CHAPTER IV
-- --------------------------------------------------------
-- Duplicates Removed
DELETE FROM creature WHERE guid IN (130365,130370,130368130369,130364,130374,130372,130377,130367,130375,130366,130361,130371);
DELETE FROM creature_addon WHERE guid IN (130365,130370,130368130369,130364,130374,130372,130377,130367,130375,130366,130361,130371);
DELETE FROM creature_movement WHERE id IN (130365,130370,130368130369,130364,130374,130372,130377,130367,130375,130366,130361,130371);
-- Phase: 64+128
-- [Chapter IV] Chapter IV Dummy
UPDATE creature SET phaseMask = 192 WHERE guid = 130400;
-- Acherus Necromancer
UPDATE creature SET phaseMask = 192 WHERE id = 29191;
-- Scarlet Deserter
UPDATE creature SET phaseMask = 192 WHERE id = 29193;
-- Noth the Plaguebringer
UPDATE creature SET phaseMask = 192 WHERE id = 29113;
-- Gothik the Harvester
UPDATE creature SET phaseMask = 192 WHERE id = 29112;
-- Howling Geist
UPDATE creature SET phaseMask = 128 WHERE id = 29189;
-- objects
UPDATE gameobject SET phaseMask = 192 WHERE guid IN (66412,66408,66415,66406,66409,66404,66407,66413,66411,66414,66410);
-- Acherus Necromancer
UPDATE creature SET position_x = 2708.023682, position_y = -5376.278809, position_z = 157.697159, orientation = 3.37, spawndist = 0, MovementType = 2 WHERE guid = 130395;
UPDATE creature SET position_x = 2707.768799, position_y = -5373.590332, position_z = 157.925583, orientation = 3.37, spawndist = 0, MovementType = 0 WHERE guid = 130396;
DELETE FROM creature_movement WHERE id = 130395;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(130395,1,2693.15,-5379.09,157.754,0,0,3.83451,0,0),
(130395,2,2674.66,-5399.52,157.025,0,0,3.84629,0,0),
(130395,3,2659.37,-5412.16,157.894,0,0,4.11411,0,0),
(130395,4,2654.12,-5425.34,157.366,0,0,4.74164,0,0),
(130395,5,2662.54,-5443.72,156.927,0,0,5.51355,0,0),
(130395,6,2680.42,-5458.27,157.056,0,0,5.87483,0,0),
(130395,7,2699.87,-5462.77,156.94,0,0,0.0220427,0,0),
(130395,8,2731.09,-5460.05,156.945,0,0,0.171268,0,0),
(130395,9,2747.63,-5453,156.975,0,0,0.222319,0,0),
(130395,10,2756.36,-5450.86,157.583,0,0,0.111578,0,0),
(130395,11,2767.33,-5451.19,158.589,0,0,0.658217,0,0),
(130395,12,2771.75,-5446.39,159.577,0,0,1.21428,0,0),
(130395,13,2771.95,-5405.92,158.977,0,0,1.74913,0,0),
(130395,14,2766.99,-5385.08,157.377,0,0,2.16461,0,0),
(130395,15,2756.35,-5379.53,157.011,0,0,2.89502,0,0),
(130395,16,2731.94,-5376.08,157.732,0,0,3.16991,0,0),
(130395,17,2708.08,-5376.24,157.696,0,0,3.25237,0,0);
-- link
DELETE FROM creature_linking WHERE guid = 130396;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(130396, 130395, 128+512);
-- Noth the Plaguebringer
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 130898;
DELETE FROM creature_movement WHERE id = 130898;
UPDATE creature_template SET MovementType = 2 WHERE entry = 29113;
DELETE FROM creature_movement_template WHERE entry = 29113;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(29113, 1, 2715.28, -5422.11, 161.471, 55000, 2911301, 5.70723, 0, 0); 
DELETE FROM dbscripts_on_creature_movement WHERE id = 2911301;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2911301,5,0,0,0,0,0,0,2000000494,2000000495,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry IN (2000000494,2000000495);
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000494,'We need more flesh!',0,1,0,5,NULL),
(2000000495,'Double your efforts! The final assault draws near!',0,1,0,5,NULL);
-- Scarlet Deserter
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (130402,130403,130404,130405);
UPDATE creature SET position_x = 2817.77, position_y = -5453.906, position_z = 159.4021, orientation = 1.937315 WHERE guid = 130405;
-- Gothik the Harvester
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 130897;
DELETE FROM creature_movement WHERE id = 130897;
UPDATE creature_template SET MovementType = 2 WHERE entry = 29112;
DELETE FROM creature_movement_template WHERE entry = 29112;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(29112,1,2814.52,-5448.2,159.039,65000,2911201,5.32325,0,0),
(29112,2,2814.52,-5448.2,159.039,60000,2911202,5.32325,0,0),
(29112,3,2814.52,-5448.2,159.039,70000,2911203,5.32325,0,0),
(29112,4,2814.52,-5448.2,159.039,65000,2911204,5.32325,0,0),
(29112,5,2814.52,-5448.2,159.039,75000,2911205,5.32325,0,0),
(29112,6,2814.52,-5448.2,159.039,70000,2911206,5.32325,0,0),
(29112,7,2814.52,-5448.2,159.039,55000,2911207,5.32325,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2911201 AND 2911207;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2911201,3,0,0,0,29193,130405,7,2000000496,0,0,0,0,0,0,0,'force buddy to: say text'),
(2911201,7,0,0,0,0,0,0,2000000503,0,0,0,0,0,0,0,''),
(2911202,3,0,0,0,29193,130405,7,2000000497,0,0,0,0,0,0,0,'force buddy to: say text'),
(2911202,7,0,0,0,0,0,0,2000000504,0,0,0,0,0,0,0,''),
(2911203,3,0,0,0,29193,130405,7,2000000498,0,0,0,0,0,0,0,'force buddy to: say text'),
(2911203,7,0,0,0,0,0,0,2000000506,0,0,0,0,0,0,0,''),
(2911204,3,0,0,0,29193,130405,7,2000000499,0,0,0,0,0,0,0,'force buddy to: say text'),
(2911204,7,0,0,0,0,0,0,2000000505,0,0,0,0,0,0,0,''),
(2911205,3,0,0,0,29193,130405,7,2000000500,0,0,0,0,0,0,0,'force buddy to: say text'),
(2911205,7,0,0,0,0,0,0,2000000507,0,0,0,0,0,0,0,''),
(2911206,3,0,0,0,29193,130405,7,2000000501,0,0,0,0,0,0,0,'force buddy to: say text'),
(2911206,7,0,0,0,0,0,0,2000000508,0,0,0,0,0,0,0,''),
(2911207,3,0,0,0,29193,130405,7,2000000502,0,0,0,0,0,0,0,'force buddy to: say text');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000496 AND 2000000508;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000496,'You\'re a monster!',0,0,0,0,NULL),
(2000000497,'Please! Spare me! I...',0,0,0,0,NULL),
(2000000498,'Wi... Will it hurt?',0,0,0,0,NULL),
(2000000499,'It tingles...',0,0,0,0,NULL),
(2000000500,'Why don\'t you Just Kill me Already',0,0,0,0,NULL),
(2000000501,'Is it too late to change my mind? How about you just kill me instead?',0,0,0,0,NULL),
(2000000502,'The horror! THE HORROR!',0,0,0,0,NULL),
(2000000503,'Flattery will get you nowhere.',0,0,0,1,NULL),
(2000000504,'Don\'t be ridiculous. Where would you even go if I did spare you? We just finished eradicating your civilization, remember?',0,0,0,1,NULL),
(2000000505,'That\'s how you know it\'s working.',0,0,0,1,NULL),
(2000000506,'Oh yes. Immensely. The pain will propably render you unconcious - hence the vat of slime you\'re floating in!',0,0,0,1,NULL),
(2000000507,'You idiot! That\'s What I\'m Doing Right Now!',0,0,0,5,NULL),
(2000000508,'I AM going to kill you. What\'s the rush?',0,0,0,6,NULL);
-- Howling Geist 
UPDATE creature SET position_x = 2597.903076, position_y = -5549.420410, position_z = 159.772934, spawndist = 20, MovementType = 1 WHERE guid = 130387;
UPDATE creature SET position_x = 2622.867432, position_y = -5481.481934, position_z = 156.948212, spawndist = 20, MovementType = 1 WHERE guid = 130386;
UPDATE creature SET position_x = 2659.806885, position_y = -5537.375000, position_z = 163.303589, spawndist = 20, MovementType = 1 WHERE guid = 130385;
UPDATE creature SET position_x = 2697.650391, position_y = -5469.664063, position_z = 156.943970, spawndist = 20, MovementType = 1 WHERE guid = 130383;
UPDATE creature SET position_x = 2735.920410, position_y = -5363.948730, position_z = 157.715302, spawndist = 20, MovementType = 1 WHERE guid = 130381;
-- Volatile Ghoul
UPDATE creature SET spawndist = 0, MovementType = 2, spawntimesecs = 10 WHERE guid IN (130363,130373,130362);
DELETE FROM creature_movement WHERE id IN (130363,130373,130362);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #1
(130363,1,2676.73,-5314.65,154.792,5000,2918501,1.78743,0,0),
(130363,2,2684.4,-5306.35,154.941,0,0,1.90152,0,0),
(130363,3,2670.25,-5284.02,150.153,0,0,2.31232,0,0),
(130363,4,2662.09,-5274.22,142.412,0,0,2.28565,0,0),
(130363,5,2644.94,-5255.23,121.88,0,0,2.30921,0,0),
(130363,6,2620.75,-5225.3,98.1054,0,0,2.21889,0,0),
(130363,7,2592.76,-5198.52,80.7613,0,0,2.43016,0,0),
(130363,8,2574.95,-5181.7,74.3096,0,0,2.37519,0,0),
(130363,9,2522.32,-5148.41,73.6604,0,0,2.64222,0,0),
(130363,10,2475.21,-5122.23,77.9418,6000,2918502,2.99172,0,0),
-- #2
(130373,1,2632.02,-5394.72,168.397,5000,2918501,0.977384,0,0),
(130373,2,2651.32,-5405.91,159.224,0,0,0.145241,0,0),
(130373,3,2684.38,-5384.49,157.184,0,0,1.06808,0,0),
(130373,4,2687.79,-5330.18,156.083,0,0,1.71604,0,0),
(130373,5,2684.96,-5314.39,154.96,0,0,2.00271,0,0),
(130373,6,2679.3,-5303.38,153.638,0,0,2.1323,0,0),
(130373,7,2672.93,-5295.8,151.813,0,0,2.30116,0,0),
(130373,8,2664.86,-5285.81,148.772,0,0,2.26189,0,0),
(130373,9,2655.93,-5274.74,141.215,0,0,2.2187,0,0),
(130373,10,2639.53,-5252.05,116.733,0,0,2.19513,0,0),
(130373,11,2621.55,-5230.63,100.908,0,0,2.3208,0,0),
(130373,12,2606.08,-5211.66,88.0324,0,0,2.23048,0,0),
(130373,13,2582.86,-5185.51,75.8192,0,0,2.32472,0,0),
(130373,14,2564.62,-5169.25,74.5214,0,0,2.49359,0,0),
(130373,15,2536.72,-5149.97,74.2893,0,0,2.72135,0,0),
(130373,16,2516.32,-5145.46,74.148,0,0,3.00017,0,0),
(130373,17,2491.97,-5142.91,76.1721,0,0,3.09441,0,0),
(130373,18,2467.02,-5137.46,77.5501,6000,2918502,2.64674,0,0),
-- #3
(130362,1,2567.76,-5185.66,74.8526,5000,2918501,5.07626,0,0),
(130362,2,2521.28,-5146.41,73.6638,0,0,2.82019,0,0),
(130362,3,2483.25,-5139.37,76.3581,0,0,3.637,0,0),
(130362,4,2464.89,-5154.73,78.0666,6000,2918502,3.82471,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2918501 AND 2918502;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2918501,1,15,26047,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2918501,4,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2918502,1,1,374,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2918502,3,1,373,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2918502,4,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
-- Rampaging Abomination
UPDATE creature SET position_x = 2770.925049, position_y = -5536.027344, position_z = 161.735718, orientation = 2.301208, spawndist = 10, MovementType = 1 WHERE guid = 130378;
UPDATE creature SET spawndist = 0, MovementType = 2, spawntimesecs = 10 WHERE guid IN (130376,130379);
DELETE FROM creature_movement WHERE id IN (130376,130379);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #1
(130376,1,2723.56,-5356.07,159.613,2000,2918601,0.84173,0,0),
(130376,2,2704.62,-5360.77,159.398,0,0,2.91129,0,0),
(130376,3,2691.18,-5349.93,158.621,0,0,2.30653,0,0),
(130376,4,2683.39,-5323.99,155.334,0,0,1.80938,0,0),
(130376,5,2675.71,-5304.56,153.114,0,0,2.045,0,0),
(130376,6,2663.78,-5284.98,148.258,0,0,2.09997,0,0),
(130376,7,2658.59,-5275.23,142.105,0,0,2.04892,0,0),
(130376,8,2644.61,-5255.16,121.631,0,0,2.2145,0,0),
(130376,9,2631.96,-5238.4,107.608,0,0,2.23806,0,0),
(130376,10,2613.31,-5216.83,93.161,0,0,2.3598,0,0),
(130376,11,2598.7,-5201.75,82.8146,0,0,2.34016,0,0),
(130376,12,2582.36,-5187.09,75.8517,0,0,2.47761,0,0),
(130376,13,2569.27,-5176.85,73.7495,0,0,2.48154,0,0),
(130376,14,2558.21,-5168.27,74.6465,0,0,2.48154,0,0),
(130376,15,2538.28,-5155.75,74.2881,0,0,2.64647,0,0),
(130376,16,2521.03,-5147.47,73.6583,0,0,2.6504,0,0),
(130376,17,2502.8,-5138.25,75.7383,0,0,2.71716,0,0),
(130376,18,2483.53,-5131.73,75.9083,2000,2918602,2.88209,0,0),
-- #2
(130379,1,2726.07,-5498.8,162.02,2000,2918601,2.04204,0,0),
(130379,2,2727.57,-5481.48,161.561,0,0,1.14635,0,0),
(130379,3,2732.97,-5468.64,157.569,0,0,0.984563,0,0),
(130379,4,2750.98,-5458.35,156.968,0,0,0.430071,0,0),
(130379,5,2772.88,-5441.7,159.903,0,0,1.37333,0,0),
(130379,6,2774.75,-5416.45,160.25,0,0,1.62074,0,0),
(130379,7,2771.21,-5396.04,158.102,0,0,1.91919,0,0),
(130379,8,2750.66,-5381.1,156.956,0,0,2.6983,0,0),
(130379,9,2727.84,-5372.87,157.819,0,0,2.83182,0,0),
(130379,10,2707.88,-5366.33,158.707,0,0,2.82004,0,0),
(130379,11,2693.81,-5354.31,158.877,0,0,2.19879,0,0),
(130379,12,2687.94,-5338.24,156.999,0,0,1.83122,0,0),
(130379,13,2681.92,-5317.73,154.846,0,0,2.05428,0,0),
(130379,14,2675.34,-5305.38,153.191,0,0,2.06998,0,0),
(130379,15,2659.58,-5278.96,144.64,0,0,2.16031,0,0),
(130379,16,2651.18,-5266.35,132.35,0,0,2.17209,0,0),
(130379,17,2636.53,-5246.73,112.628,0,0,2.23099,0,0),
(130379,18,2619.36,-5225.24,97.7497,0,0,2.30875,0,0),
(130379,19,2605.23,-5209.7,86.9899,0,0,2.30875,0,0),
(130379,20,2591.1,-5194.16,79.6859,0,0,2.30875,0,0),
(130379,21,2573.87,-5176.1,73.9424,0,0,2.35116,0,0),
(130379,22,2558.81,-5161.48,74.598,0,0,2.39043,0,0),
(130379,23,2540.44,-5148.6,74.2861,0,0,2.57892,0,0),
(130379,24,2525.34,-5139.75,73.6435,0,0,2.61034,0,0),
(130379,25,2505.64,-5127.77,74.8511,0,0,2.61819,0,0),
(130379,26,2480.14,-5116.4,79.0267,2000,2918602,2.77527,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2918601 AND 2918602;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2918601,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2918602,1,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
-- Highlord Darion Mograine
UPDATE creature_template SET Expansion = 2, UnitClass = 2, PowerMultiplier = 1000, MinLevelMana = 4258000, MaxLevelMana = 4258000 WHERE entry = 29173;
UPDATE creature SET curmana = 4258000 WHERE id = 29173;
-- Defender of the Light <The Argent Dawn>
UPDATE creature_template SET MinLevel = 55, MaxLevel = 58, UnitFlags = 32768, UnitClass = 2, MinLevelHealth = 62730, MaxLevelHealth = 68910, MinLevelMana = 63510, MaxLevelMana = 68670,
Expansion = 0, DamageMultiplier = 7.5, Armor = 3394, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 228, RangedAttackPower = 23, MinMeleeDmg = 87.5,
MaxMeleeDmg = 123 WHERE entry = 29174;
-- Scourge Commander Thalanor
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE guid = 130467;
-- Chapter III
-- Frostbrood Vanquisher - until fly/ground anim. will be supported by core
DELETE FROM creature_template_addon WHERE entry = 28670;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(28670,0,0x3000000,1,0,0,0,53112);
-- Chapter I
-- Mine Car
DELETE FROM creature_linking WHERE guid IN (128860,128864,128868,128869,128870,128873,128874,128876,128879,128880);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(128860, 128885, 1+16+128+512+8192),(128864, 128889, 1+16+128+512+8192),(128868, 128893, 1+16+128+512+8192),(128869, 128894, 1+16+128+512+8192),(128870, 128895, 1+16+128+512+8192),
(128873, 128898, 1+16+128+512+8192),(128874, 128899, 1+16+128+512+8192),(128876, 128901, 1+16+128+512+8192),(128879, 128904, 1+16+128+512+8192),(128880, 128905, 1+16+128+512+8192);
-- Eye of Acherus
UPDATE creature_template SET FactionAlliance = 2084, FactionHorde = 2084 WHERE entry = 28511;

-- UDB_213
-- Lanti'gah - Barrens
UPDATE creature SET position_x = -292.942444, position_y = -1909.355591, position_z = 91.666786, orientation = 2.13, spawndist = 10, MovementType = 1 WHERE guid = 13100;

-- UDB_214
-- q.10629 'Shizz Work'
-- source: YTDB
-- missing object added: TEMP Felhound Poo Trap
DELETE FROM gameobject_template WHERE entry = 184981;
INSERT INTO gameobject_template (entry, type, displayId, name, IconName, castBarCaption, unk1, faction, flags, size, questItem1, questItem2, questItem3, questItem4, questItem5, questItem6, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, ScriptName) VALUES
(184981,6,1287,'TEMP Felhound Poo Trap','','','',0,0,1,0,0,0,0,0,0,0,0,0,37695,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- UDB_215
-- --------------------------------------------------------
-- DK Starting Zone - FINAL CHAPTER 
-- --------------------------------------------------------
-- Missing object added
-- aura
DELETE FROM gameobject WHERE guid = 65255; -- UDB free guid reused
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(65255,191206,0,1,449,2460.06,-5593.7,367.394,0.556369,0,0,0.27461,0.961556,180,255,1);
-- Phases fix:
-- Creatures
-- phase 256 should be only on map = 0 not on 609
-- Teleport - Hall -> Heart
UPDATE creature SET phaseMask = 231 WHERE guid = 129960;
-- Teleport - Heart -> Hall
UPDATE creature SET phaseMask = 231 WHERE guid = 128754;
-- Phase: 64+128+256
UPDATE creature SET phaseMask = 448 WHERE guid IN (130470,130468,130469,130503,130474,130501,130475,130502,130471,130472,130504,130480,130473,130479,130481,130542);
-- Gameobjects
-- Phase: ALL
UPDATE gameobject SET phaseMask = 231 WHERE guid IN (66486,65893,65895,66143,65897,65899,66235,66389,66385,65882,66393,65884,66401,66397,65886);
-- Phase: 4+64+128
UPDATE gameobject SET phaseMask = 196 WHERE guid IN (66600,66356,66606,66359,66353,66365,66374,66460,66362,66258);
-- Phase: 1+64+128+256
UPDATE gameobject SET phaseMask = 449 WHERE guid IN (63186,63187,63178,66476,63172,63179,63191,63177,66392,63181,66396,63185,63183,63184);
-- Duplicates Removed
DELETE FROM creature WHERE guid IN (130509,130514,130520,130510,130540.130523,130524,130529,130492,130489,130533,130534,130541,130518,130538,130523);
DELETE FROM creature_addon WHERE guid IN (130509,130514,130520,130510,130540.130523,130524,130529,130492,130489,130533,130534,130541,130518,130538,130523);
DELETE FROM creature_movement WHERE id IN (130509,130514,130520,130510,130540.130523,130524,130529,130492,130489,130533,130534,130541,130518,130538,130523);
DELETE FROM gameobject WHERE guid IN (66417,66419,66388,63190,66477,66390,66474,66386,63180,66394,63182,66402,66398,66400);
-- Terrifying Abomination
UPDATE creature SET position_x = 2404.614258, position_y = -5576.001953, position_z = 420.648224, orientation = 2.847471 WHERE guid = 130527;
UPDATE creature SET position_x = 2417.488770, position_y = -5587.981445, position_z = 420.643829, orientation = 4.783482 WHERE guid = 130526;
UPDATE creature SET position_x = 2524.172363, position_y = -5605.970215, position_z = 420.650696, orientation = 2.712384 WHERE guid = 130513;
UPDATE creature SET spawndist = 5, MovementType = 1 WHERE guid IN (130532,130535,130522,130511,130508,130531,130537);
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE guid IN (130526,130527,130530,130521,130517,130515,130512,130505,130506,130528,130513,130516,130519,130525,130539,130507,130538,130536);
-- Val'kyr Battle-maiden
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (130490,130491,130494,130493);
DELETE FROM creature_movement WHERE id IN (130490,130491,130494,130493);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #1
(130490,1,2502.84,-5616.48,432.943,0,0,1.55658,0,0),
(130490,2,2504.11,-5590.47,432.905,0,0,2.10636,0,0),
(130490,3,2494.05,-5577.2,433.731,0,0,2.92238,0,0),
(130490,4,2471.94,-5577.82,433.117,0,0,4.00231,0,0),
(130490,5,2454.16,-5602.11,434.512,0,0,5.63201,0,0),
(130490,6,2477.43,-5633.17,434.415,0,0,5.85016,0,0),
-- #2
(130491,1,2472.95,-5595.96,427.061,0,0,0.428365,0,0),
(130491,2,2497.12,-5583.22,427.061,0,0,2.42328,0,0),
(130491,3,2494.59,-5562.15,426.705,0,0,2.53281,0,0),
(130491,4,2471.2,-5554.49,426.149,0,0,3.41916,0,0),
(130491,5,2451.5,-5563.65,427.061,0,0,4.36164,0,0),
(130491,6,2447.21,-5581.95,427.061,0,0,5.82562,0,0),
-- #3
(130494,1,2465.76,-5620,434.171,0,0,2.25277,0,0),
(130494,2,2454.56,-5606.66,433.226,0,0,3.58481,0,0),
(130494,3,2431.77,-5618.29,432.56,0,0,5.5703,0,0),
(130494,4,2444.1,-5629.27,432.948,0,0,5.93804,0,0),
(130494,5,2461.61,-5633.12,432.837,0,0,1.14319,0,0),
-- #4
(130493,1,2424.46,-5574.49,430.977,0,0,4.77273,0,0),
(130493,2,2427.46,-5595.36,430.977,0,0,5.84961,0,0),
(130493,3,2444.23,-5598.51,430.977,0,0,0.722527,0,0),
(130493,4,2454.89,-5586.1,430.977,0,0,1.62731,0,0),
(130493,5,2453.33,-5568.18,430.977,0,0,2.91536,0,0),
(130493,6,2434.54,-5563.2,430.977,0,0,3.94266,0,0);
-- Knight of the Ebon Blade
UPDATE creature_template SET UnitFlags = 32784 WHERE entry = 31094;
UPDATE creature SET spawntimesecs = 120 WHERE id = 31094;
-- Patchwerk
UPDATE creature_template SET Expansion = 1, UnitClass = 1, DamageMultiplier = 10.5, MechanicImmuneMask = 8388656 WHERE entry = 31099;
UPDATE creature SET spawntimesecs = 120 WHERE id = 31099;
DELETE FROM dbscripts_on_creature_death WHERE id = 31099;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(31099,1,0,0,0,0,0,0,2000000509,0,0,0,0,0,0,0,''),
(31099,15,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self');
DELETE FROM db_script_string WHERE entry = 2000000509;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000509,'What... happen to-',0,1,0,0,NULL);

-- UDB_216
-- Lord Thorval
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE id = 28472;
DELETE FROM creature_movement WHERE id = 129830;
UPDATE creature_template SET MovementType = 2 WHERE entry = 28472;
DELETE FROM creature_movement_template WHERE entry = 28472;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(28472, 1, 2527.73,-5549.21,377.036,30000,0,3.735,0,0),
(28472, 2, 2524.61,-5545.03,377.027,0,0,2.21325,0,0),
(28472, 3, 2524.61,-5545.03,377.027,15000,2847201,4.06051,0,0),
(28472, 4, 2530.44,-5554.25,377.056,0,0,5.26204,0,0),
(28472, 5, 2530.44,-5554.25,377.056,15000,2847202,3.50275,0,0),
(28472, 6, 2524.61,-5545.03,377.027,0,0,2.21325,0,0),
(28472, 7, 2524.61,-5545.03,377.027,15000,2847203,4.06051,0,0),
(28472, 8, 2530.44,-5554.25,377.056,1000,2847204,5.26204,0,0),
(28472, 9, 2524.61,-5545.03,377.027,1000,2847205,2.21325,0,0),
(28472,10, 2530.44,-5554.25,377.056,1000,2847206,5.26204,0,0),
(28472,11, 2524.61,-5545.03,377.027,0,0,2.21325,0,0),
(28472,12, 2524.61,-5545.03,377.027,15000,2847207,4.06051,0,0),
(28472,13, 2527.73,-5549.21,377.036,0,0,2.18866,0,0),
(28472,14, 2527.73,-5549.21,377.036,330000,0,3.735,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2847201 AND 2847207;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2847201,1,0,0,0,0,0,0,2000000510,0,0,0,0,0,0,0,''),
(2847202,1,0,0,0,0,0,0,2000000511,0,0,0,0,0,0,0,''),
(2847202,10,0,0,0,0,0,0,2000000512,0,0,0,0,0,0,0,''),
(2847203,1,0,0,0,0,0,0,2000000513,0,0,0,0,0,0,0,''),
(2847203,10,0,0,0,0,0,0,2000000514,0,0,0,0,0,0,0,''),
(2847204,1,0,0,0,0,0,0,2000000515,0,0,0,0,0,0,0,''),
(2847205,1,0,0,0,0,0,0,2000000516,0,0,0,0,0,0,0,''),
(2847206,1,0,0,0,0,0,0,2000000517,0,0,0,0,0,0,0,''),
(2847207,1,0,0,0,0,0,0,2000000518,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000510 AND 2000000518;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000510,'As disciples of blood, you strive to master the very lifeforce of your enemies.',0,0,0,0,NULL),
(2000000511,'Be it by blade or incantation, blood feeds our attacks and weakens our foes.',0,0,0,0,NULL),
(2000000512,'True masters learn to make blood serve just their strength in battle.',0,0,0,0,NULL),
(2000000513,'Stripping energy from our foes, both fighting and fallen, allows us to persevere where lesser beings fall exhausted.',0,0,0,0,NULL),
(2000000514,'And every foe that falls, energy sapped and stolen, only furthers our assault.',0,0,0,0,NULL),
(2000000515,'As masters of blood, we know battle without end...',0,0,0,0,NULL),
(2000000516,'We know hunger never to be quenched...',0,0,0,0,NULL),
(2000000517,'We know power never to be overcome...',0,0,0,0,NULL),
(2000000518,'As masters of blood, we are masters of life and death itself. Against us, even hope falls drained and lifeless.',0,0,0,0,NULL);

-- UDB_217
-- Booty Bay Bruiser 
UPDATE creature SET position_x = -14423.6, position_y = 424.668, position_z = 21.8532, orientation = 3.719140, spawndist = 0, MovementType = 2 WHERE guid = 178;
UPDATE creature SET position_x = -14449.2, position_y = 451.524, position_z = 20.5557, orientation = 5.001510, spawndist = 0, MovementType = 2 WHERE guid = 591;
UPDATE creature SET position_x = -14256.7, position_y = 338.710, position_z = 27.2934, orientation = 2.565270, spawndist = 0, MovementType = 2 WHERE guid = 593;
UPDATE creature SET position_x = -14298.5, position_y = 435.710, position_z = 31.5745, orientation = 0.612118, spawndist = 0, MovementType = 2 WHERE guid = 594;
UPDATE creature SET position_x = -14400.6, position_y = 413.038, position_z = 7.93467, orientation = 0.712614, spawndist = 0, MovementType = 2 WHERE guid = 598;
UPDATE creature SET position_x = -14316.7, position_y = 446.802, position_z = 23.4093, orientation = 1.798240, spawndist = 0, MovementType = 2 WHERE guid = 599;
UPDATE creature SET position_x = -14451.0, position_y = 462.469, position_z = 15.4349, orientation = 3.682770, spawndist = 0, MovementType = 2 WHERE guid = 651;
UPDATE creature SET position_x = -14434.8, position_y = 416.849, position_z = 8.81870, orientation = 0.661698, spawndist = 0, MovementType = 2 WHERE guid = 654;
UPDATE creature SET position_x = -14431.6, position_y = 511.808, position_z = 5.77141, orientation = 2.603190, spawndist = 0, MovementType = 2 WHERE guid = 656;
UPDATE creature SET position_x = -14299.9, position_y = 503.528, position_z = 9.25196, orientation = 4.147560, spawndist = 0, MovementType = 2 WHERE guid = 657;
UPDATE creature SET position_x = -14302.3, position_y = 511.123, position_z = 8.82953, orientation = 3.860820, spawndist = 0, MovementType = 2 WHERE guid = 686;
UPDATE creature SET position_x = -14473.9, position_y = 487.356, position_z = 26.8084, orientation = 5.547340, spawndist = 0, MovementType = 2 WHERE guid = 695;
UPDATE creature SET position_x = -14437.2, position_y = 399.063, position_z = 31.7274, orientation = 2.060510, spawndist = 0, MovementType = 2 WHERE guid = 715;
-- Waypoins
DELETE FROM creature_movement WHERE id IN (178, 591, 593, 594, 598, 599, 651, 654, 656, 657, 686, 695, 715);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(178, 1, -14442.4, 414.102, 25.0155, 0, 0, 0, 0, 0),
(178, 2, -14445.7, 412.951, 25.0162, 0, 0, 0, 0, 0),
(178, 3, -14455, 423.15, 25.0954, 0, 0, 0, 0, 0),
(178, 4, -14461.4, 430.758, 25.2104, 0, 0, 0, 0, 0),
(178, 5, -14468.4, 441.477, 30.2791, 0, 0, 0, 0, 0),
(178, 6, -14471.2, 446.957, 30.544, 0, 0, 0, 0, 0),
(178, 7, -14472.9, 454.424, 30.4841, 0, 0, 0, 0, 0),
(178, 8, -14472.3, 461.029, 30.6343, 0, 0, 0, 0, 0),
(178, 9, -14479.2, 463.782, 30.7789, 0, 0, 0, 0, 0),
(178, 10, -14482.8, 467.095, 31.5195, 0, 0, 0, 0, 0),
(178, 11, -14479.2, 472.917, 31.5351, 0, 0, 0, 0, 0),
(178, 12, -14482.5, 467.054, 31.6192, 0, 0, 0, 0, 0),
(178, 13, -14479, 463.804, 30.8692, 0, 0, 0, 0, 0),
(178, 14, -14472, 461.054, 30.8692, 0, 0, 0, 0, 0),
(178, 15, -14472.5, 454.304, 30.6192, 0, 0, 0, 0, 0),
(178, 16, -14471, 447.304, 30.6192, 0, 0, 0, 0, 0),
(178, 17, -14468.3, 441.804, 30.3692, 0, 0, 0, 0, 0),
(178, 18, -14461.3, 431.054, 25.6192, 0, 0, 0, 0, 0),
(178, 19, -14454.8, 423.304, 25.6192, 0, 0, 0, 0, 0),
(178, 20, -14445.8, 413.304, 25.3692, 0, 0, 0, 0, 0),
(178, 21, -14442.3, 414.304, 25.3692, 0, 0, 0, 0, 0),
(178, 22, -14424.3, 424.192, 21.7033, 0, 0, 0, 0, 0),
(591, 1, -14444.9, 445.531, 20.4134, 0, 0, 0, 0, 0),
(591, 2, -14441.3, 438.778, 20.4903, 0, 0, 0, 0, 0),
(591, 3, -14440.8, 432.276, 20.3793, 0, 0, 0, 0, 0),
(591, 4, -14435.4, 430.078, 20.2879, 0, 0, 0, 0, 0),
(591, 5, -14433.8, 427.503, 20.2863, 0, 0, 0, 0, 0),
(591, 6, -14440.7, 422.971, 15.5599, 0, 0, 0, 0, 0),
(591, 7, -14442.9, 426.732, 15.5587, 0, 0, 0, 0, 0),
(591, 8, -14438.8, 432.066, 15.5848, 0, 0, 0, 0, 0),
(591, 9, -14434.1, 432.398, 15.5545, 0, 0, 0, 0, 0),
(591, 10, -14431.3, 428.801, 15.5621, 0, 0, 0, 0, 0),
(591, 11, -14439.6, 423.793, 9.06026, 0, 0, 0, 0, 0),
(591, 12, -14441.4, 425.5, 9.06026, 0, 0, 0, 0, 0),
(591, 13, -14443.9, 430.25, 4.18761, 0, 0, 0, 0, 0),
(591, 14, -14438.3, 434.884, 4.19606, 0, 0, 0, 0, 0),
(591, 15, -14439.3, 437.73, 4.19911, 0, 0, 0, 0, 0),
(591, 16, -14444.7, 430.757, 4.18845, 0, 0, 0, 0, 0),
(591, 17, -14441.4, 425.5, 9.06026, 0, 0, 0, 0, 0),
(591, 18, -14431.3, 428.801, 15.5621, 0, 0, 0, 0, 0),
(591, 19, -14434.1, 432.398, 15.5545, 0, 0, 0, 0, 0),
(591, 20, -14438.8, 432.066, 15.5848, 0, 0, 0, 0, 0),
(591, 21, -14442.9, 426.732, 15.5587, 0, 0, 0, 0, 0),
(591, 22, -14440.7, 422.971, 15.5599, 0, 0, 0, 0, 0),
(591, 23, -14433.8, 427.503, 20.2863, 0, 0, 0, 0, 0),
(591, 24, -14435.4, 430.078, 20.2879, 0, 0, 0, 0, 0),
(591, 25, -14440.6, 432.196, 20.3668, 0, 0, 0, 0, 0),
(591, 26, -14441.3, 438.778, 20.4903, 0, 0, 0, 0, 0),
(591, 27, -14444.9, 445.531, 20.4134, 0, 0, 0, 0, 0),
(591, 28, -14449.4, 451.391, 20.4759, 0, 0, 0, 0, 0),
(593, 1, -14265.8, 348.704, 31.1595, 0, 0, 0, 0, 0),
(593, 2, -14271, 353.64, 32.7479, 0, 0, 0, 0, 0),
(593, 3, -14276.1, 364.71, 33.6137, 0, 0, 0, 0, 0),
(593, 4, -14277.9, 380.406, 35.3847, 0, 0, 0, 0, 0),
(593, 5, -14274.2, 395.879, 37.1044, 0, 0, 0, 0, 0),
(593, 6, -14271.1, 404.903, 36.8936, 0, 0, 0, 0, 0),
(593, 7, -14269.9, 416.31, 36.7034, 0, 0, 0, 0, 0),
(593, 8, -14274.9, 426.285, 35.3947, 0, 0, 0, 0, 0),
(593, 9, -14287, 434.52, 33.2376, 0, 0, 0, 0, 0),
(593, 10, -14274.9, 426.285, 35.3947, 0, 0, 0, 0, 0),
(593, 11, -14269.9, 416.31, 36.7034, 0, 0, 0, 0, 0),
(593, 12, -14271, 405.088, 36.9146, 0, 0, 0, 0, 0),
(593, 13, -14274.2, 395.879, 37.1044, 0, 0, 0, 0, 0),
(593, 14, -14277.9, 380.406, 35.3847, 0, 0, 0, 0, 0),
(593, 15, -14276.1, 364.71, 33.6137, 0, 0, 0, 0, 0),
(593, 16, -14271, 353.64, 32.7479, 0, 0, 0, 0, 0),
(593, 17, -14265.8, 348.704, 31.1595, 0, 0, 0, 0, 0),
(593, 18, -14257, 339.076, 27.2743, 0, 0, 0, 0, 0),
(594, 1, -14287, 428.87, 33.7043, 0, 0, 0, 0, 0),
(594, 2, -14280.9, 424.514, 35.3712, 0, 0, 0, 0, 0),
(594, 3, -14277.2, 419.943, 36.423, 0, 0, 0, 0, 0),
(594, 4, -14275.8, 411.91, 37.235, 0, 0, 0, 0, 0),
(594, 5, -14276.6, 402.768, 37.0483, 0, 0, 0, 0, 0),
(594, 6, -14279, 390.305, 36.3309, 0, 0, 0, 0, 0),
(594, 7, -14281.4, 379.503, 35.133, 0, 0, 0, 0, 0),
(594, 8, -14279.8, 368.264, 33.6549, 0, 0, 0, 0, 0),
(594, 9, -14277.5, 359.923, 33.2561, 0, 0, 0, 0, 0),
(594, 10, -14273.1, 350.615, 32.7842, 0, 0, 0, 0, 0),
(594, 11, -14268.5, 346.023, 31.3686, 0, 0, 0, 0, 0),
(594, 12, -14273.1, 350.615, 32.7842, 0, 0, 0, 0, 0),
(594, 13, -14277.5, 359.923, 33.2561, 0, 0, 0, 0, 0),
(594, 14, -14279.8, 368.264, 33.6549, 0, 0, 0, 0, 0),
(594, 15, -14281.4, 379.503, 35.133, 0, 0, 0, 0, 0),
(594, 16, -14279, 390.305, 36.3309, 0, 0, 0, 0, 0),
(594, 17, -14276.6, 402.703, 37.0651, 0, 0, 0, 0, 0),
(594, 18, -14275.8, 411.91, 37.235, 0, 0, 0, 0, 0),
(594, 19, -14277.2, 419.943, 36.423, 0, 0, 0, 0, 0),
(594, 20, -14280.9, 424.514, 35.3712, 0, 0, 0, 0, 0),
(594, 21, -14287, 428.87, 33.7043, 0, 0, 0, 0, 0),
(594, 22, -14298, 435.509, 31.579, 0, 0, 0, 0, 0),
(598, 1, -14392.1, 420.434, 7.54837, 0, 0, 0, 0, 0),
(598, 2, -14385.4, 425.173, 7.36117, 0, 0, 0, 0, 0),
(598, 3, -14373.1, 430.034, 7.31295, 0, 0, 0, 0, 0),
(598, 4, -14360.3, 433.72, 7.36588, 0, 0, 0, 0, 0),
(598, 5, -14344.8, 443.056, 7.4693, 0, 0, 0, 0, 0),
(598, 6, -14337.3, 451.978, 7.67435, 0, 0, 0, 0, 0),
(598, 7, -14327.3, 466.137, 8.1809, 0, 0, 0, 0, 0),
(598, 8, -14317.2, 485.579, 8.59669, 0, 0, 0, 0, 0),
(598, 9, -14308.3, 506.756, 8.64147, 0, 0, 0, 0, 0),
(598, 10, -14294.1, 534.231, 8.6887, 0, 0, 0, 0, 0),
(598, 11, -14286.1, 552.673, 8.70584, 0, 0, 0, 0, 0),
(598, 12, -14294.1, 534.231, 8.6887, 0, 0, 0, 0, 0),
(598, 13, -14308.3, 506.756, 8.64147, 0, 0, 0, 0, 0),
(598, 14, -14317.2, 485.579, 8.59669, 0, 0, 0, 0, 0),
(598, 15, -14327.3, 466.137, 8.1809, 0, 0, 0, 0, 0),
(598, 16, -14337.3, 451.978, 7.67435, 0, 0, 0, 0, 0),
(598, 17, -14344.8, 443.056, 7.4693, 0, 0, 0, 0, 0),
(598, 18, -14360.3, 433.72, 7.36588, 0, 0, 0, 0, 0),
(598, 19, -14373.1, 430.034, 7.31295, 0, 0, 0, 0, 0),
(598, 20, -14385.4, 425.173, 7.36117, 0, 0, 0, 0, 0),
(598, 21, -14392.1, 420.434, 7.54837, 0, 0, 0, 0, 0),
(598, 22, -14400, 412.727, 7.77239, 0, 0, 0, 0, 0),
(599, 1, -14318.6, 455.081, 23.4482, 0, 0, 0, 0, 0),
(599, 2, -14314.7, 468.257, 18.4367, 0, 0, 0, 0, 0),
(599, 3, -14314.7, 474.267, 18.3547, 0, 0, 0, 0, 0),
(599, 4, -14307.9, 487.469, 13.2721, 0, 0, 0, 0, 0),
(599, 5, -14301.7, 497.471, 10.601, 0, 0, 0, 0, 0),
(599, 6, -14298.1, 505.389, 8.96902, 0, 0, 0, 0, 0),
(599, 7, -14301.7, 509.774, 8.6758, 0, 0, 0, 0, 0),
(599, 8, -14307.6, 504.115, 8.64554, 0, 0, 0, 0, 0),
(599, 9, -14309.8, 498.715, 8.6345, 0, 0, 0, 0, 0),
(599, 10, -14313.3, 490.275, 8.6164, 0, 0, 0, 0, 0),
(599, 11, -14317.3, 482.241, 8.59652, 0, 0, 0, 0, 0),
(599, 12, -14323, 471.202, 8.39456, 0, 0, 0, 0, 0),
(599, 13, -14330, 457.738, 7.90804, 0, 0, 0, 0, 0),
(599, 14, -14341.2, 443.758, 7.48909, 0, 0, 0, 0, 0),
(599, 15, -14353.5, 435.965, 7.38517, 0, 0, 0, 0, 0),
(599, 16, -14369, 429.004, 7.37672, 0, 0, 0, 0, 0),
(599, 17, -14382.4, 424.817, 7.3554, 0, 0, 0, 0, 0),
(599, 18, -14394.1, 421.125, 7.63872, 0, 0, 0, 0, 0),
(599, 19, -14405.2, 422.36, 8.48729, 0, 0, 0, 0, 0),
(599, 20, -14412.8, 428.759, 8.93994, 0, 0, 0, 0, 0),
(599, 21, -14420.9, 435.219, 9.53649, 0, 0, 0, 0, 0),
(599, 22, -14425.8, 441.807, 12.1688, 0, 0, 0, 0, 0),
(599, 23, -14429.8, 447.25, 15.4427, 0, 0, 0, 0, 0),
(599, 24, -14431.9, 447.814, 15.4255, 0, 0, 0, 0, 0),
(599, 25, -14432.5, 445.842, 15.4692, 0, 0, 0, 0, 0),
(599, 26, -14426.6, 438.212, 18.0541, 0, 0, 0, 0, 0),
(599, 27, -14422.9, 432.659, 21.3357, 0, 0, 0, 0, 0),
(599, 28, -14419.3, 428.27, 22.0601, 0, 0, 0, 0, 0),
(599, 29, -14415.8, 424.096, 22.1281, 0, 0, 0, 0, 0),
(599, 30, -14394.2, 414.212, 22.6782, 0, 0, 0, 0, 0),
(599, 31, -14392.2, 409.483, 22.7452, 0, 0, 0, 0, 0),
(599, 32, -14392.5, 402.863, 22.712, 0, 0, 0, 0, 0),
(599, 33, -14387.6, 390.908, 22.9852, 0, 0, 0, 0, 0),
(599, 34, -14382, 384.972, 23.2067, 0, 0, 0, 0, 0),
(599, 35, -14375, 380.035, 23.1574, 0, 0, 0, 0, 0),
(599, 36, -14365.2, 378.422, 23.3867, 0, 0, 0, 0, 0),
(599, 37, -14355.3, 380.67, 23.3598, 0, 0, 0, 0, 0),
(599, 38, -14342.3, 385.995, 23.4673, 0, 0, 0, 0, 0),
(599, 39, -14326.5, 392.474, 23.8077, 0, 0, 0, 0, 0),
(599, 40, -14320, 399.283, 24.0117, 0, 0, 0, 0, 0),
(599, 41, -14315, 416.881, 23.6653, 0, 0, 0, 0, 0),
(599, 42, -14313.4, 427.522, 23.1797, 0, 0, 0, 0, 0),
(599, 43, -14314.8, 435.38, 22.9005, 0, 0, 0, 0, 0),
(599, 44, -14316.6, 447.09, 23.2387, 0, 0, 0, 0, 0),
(651, 1, -14466.6, 453.068, 15.3329, 0, 0, 0, 0, 0),
(651, 2, -14467, 449.978, 15.4687, 0, 0, 0, 0, 0),
(651, 3, -14463.1, 446.736, 15.4737, 0, 0, 0, 0, 0),
(651, 4, -14454.3, 434.906, 15.1878, 0, 0, 0, 0, 0),
(651, 5, -14442.7, 415.397, 15.0957, 0, 0, 0, 0, 0),
(651, 6, -14453.6, 434.036, 15.1696, 0, 0, 0, 0, 0),
(651, 7, -14437.8, 449.306, 15.3789, 0, 0, 0, 0, 0),
(651, 8, -14449.8, 463.889, 15.3359, 0, 0, 0, 0, 0),
(654, 1, -14425.3, 424.265, 8.99519, 0, 0, 0, 0, 0),
(654, 2, -14423.7, 428.519, 8.96744, 0, 0, 0, 0, 0),
(654, 3, -14428.8, 437.855, 6.48981, 0, 0, 0, 0, 0),
(654, 4, -14436.4, 449.562, 3.69352, 0, 0, 0, 0, 0),
(654, 5, -14445.5, 463.716, 3.84649, 0, 0, 0, 0, 0),
(654, 6, -14436.9, 448.047, 3.69427, 0, 0, 0, 0, 0),
(654, 7, -14448.3, 439.089, 3.86408, 0, 0, 0, 0, 0),
(654, 8, -14436.9, 448.047, 3.69427, 0, 0, 0, 0, 0),
(654, 9, -14445.5, 463.716, 3.84649, 0, 0, 0, 0, 0),
(654, 10, -14436.4, 449.562, 3.69352, 0, 0, 0, 0, 0),
(654, 11, -14428.8, 437.855, 6.48981, 0, 0, 0, 0, 0),
(654, 12, -14423.7, 428.519, 8.96744, 0, 0, 0, 0, 0),
(654, 13, -14425.3, 424.265, 8.99519, 0, 0, 0, 0, 0),
(654, 14, -14434.6, 416.965, 8.75356, 0, 0, 0, 0, 0),
(656, 1, -14439.1, 495.388, 13.4074, 0, 0, 0, 0, 0),
(656, 2, -14447.8, 482.138, 15.1096, 0, 0, 0, 0, 0),
(656, 3, -14442.6, 462.937, 15.3824, 0, 0, 0, 0, 0),
(656, 4, -14435.3, 448.752, 15.3969, 0, 0, 0, 0, 0),
(656, 5, -14424.8, 444.452, 12.9438, 0, 0, 0, 0, 0),
(656, 6, -14417.7, 434.207, 8.95462, 0, 0, 0, 0, 0),
(656, 7, -14409.2, 423.573, 8.68512, 0, 0, 0, 0, 0),
(656, 8, -14396.8, 416.179, 7.87222, 0, 0, 0, 0, 0),
(656, 9, -14393.1, 406.336, 6.71033, 0, 0, 0, 0, 0),
(656, 10, -14396.8, 416.179, 7.87222, 0, 0, 0, 0, 0),
(656, 11, -14409.2, 423.573, 8.68512, 0, 0, 0, 0, 0),
(656, 12, -14417.7, 434.166, 8.93865, 0, 0, 0, 0, 0),
(656, 13, -14424.8, 444.452, 12.9438, 0, 0, 0, 0, 0),
(656, 14, -14435.3, 448.752, 15.3969, 0, 0, 0, 0, 0),
(656, 15, -14442.6, 462.937, 15.3824, 0, 0, 0, 0, 0),
(656, 16, -14447.8, 482.138, 15.1096, 0, 0, 0, 0, 0),
(656, 17, -14439.1, 495.388, 13.4074, 0, 0, 0, 0, 0),
(656, 18, -14431.2, 512.273, 5.49217, 0, 0, 0, 0, 0),
(657, 1, -14312.8, 483.192, 14.819, 0, 0, 0, 0, 0),
(657, 2, -14317.7, 466.225, 19.1429, 0, 0, 0, 0, 0),
(657, 3, -14323.2, 444.298, 22.747, 0, 0, 0, 0, 0),
(657, 4, -14316.2, 432.447, 22.7259, 0, 0, 0, 0, 0),
(657, 5, -14319, 417.219, 23.4741, 0, 0, 0, 0, 0),
(657, 6, -14322.2, 399.648, 24.0779, 0, 0, 0, 0, 0),
(657, 7, -14334.9, 395.419, 23.3598, 0, 0, 0, 0, 0),
(657, 8, -14343.8, 390.811, 23.2622, 0, 0, 0, 0, 0),
(657, 9, -14363.4, 383.449, 23.4848, 0, 0, 0, 0, 0),
(657, 10, -14375.8, 383.213, 22.6782, 0, 0, 0, 0, 0),
(657, 11, -14390.6, 399.044, 22.8109, 0, 0, 0, 0, 0),
(657, 12, -14375.8, 383.213, 22.6782, 0, 0, 0, 0, 0),
(657, 13, -14363.4, 383.449, 23.4848, 0, 0, 0, 0, 0),
(657, 14, -14343.8, 390.811, 23.2622, 0, 0, 0, 0, 0),
(657, 15, -14334.9, 395.419, 23.3598, 0, 0, 0, 0, 0),
(657, 16, -14322.2, 399.648, 24.0779, 0, 0, 0, 0, 0),
(657, 17, -14319, 417.219, 23.4741, 0, 0, 0, 0, 0),
(657, 18, -14316.2, 432.447, 22.7259, 0, 0, 0, 0, 0),
(657, 19, -14323.2, 444.298, 22.747, 0, 0, 0, 0, 0),
(657, 20, -14317.7, 466.225, 19.1429, 0, 0, 0, 0, 0),
(657, 21, -14312.8, 483.192, 14.819, 0, 0, 0, 0, 0),
(657, 22, -14299.8, 503.744, 9.08229, 0, 0, 0, 0, 0),
(686, 1, -14313, 501.729, 8.61711, 0, 0, 0, 0, 0),
(686, 2, -14318.6, 485.781, 8.58937, 0, 0, 0, 0, 0),
(686, 3, -14326.1, 472.565, 8.3757, 0, 0, 0, 0, 0),
(686, 4, -14333.1, 460.482, 7.92616, 0, 0, 0, 0, 0),
(686, 5, -14341.3, 449.143, 7.56401, 0, 0, 0, 0, 0),
(686, 6, -14352.6, 440.766, 7.4209, 0, 0, 0, 0, 0),
(686, 7, -14361.9, 436.575, 7.37137, 0, 0, 0, 0, 0),
(686, 8, -14376.2, 431.316, 7.31533, 0, 0, 0, 0, 0),
(686, 9, -14361.9, 436.575, 7.37137, 0, 0, 0, 0, 0),
(686, 10, -14352.6, 440.766, 7.4209, 0, 0, 0, 0, 0),
(686, 11, -14341.3, 449.143, 7.56401, 0, 0, 0, 0, 0),
(686, 12, -14333.1, 460.482, 7.92616, 0, 0, 0, 0, 0),
(686, 13, -14326.1, 472.565, 8.3757, 0, 0, 0, 0, 0),
(686, 14, -14318.6, 485.781, 8.58937, 0, 0, 0, 0, 0),
(686, 15, -14313, 501.729, 8.61711, 0, 0, 0, 0, 0),
(686, 16, -14301.7, 513.679, 8.67555, 0, 0, 0, 0, 0),
(695, 1, -14465.5, 479.746, 26.8295, 0, 0, 0, 0, 0),
(695, 2, -14466.8, 471.284, 30.7113, 0, 0, 0, 0, 0),
(695, 3, -14469.5, 462.674, 30.6577, 0, 0, 0, 0, 0),
(695, 4, -14472.3, 454.081, 30.4917, 0, 0, 0, 0, 0),
(695, 5, -14470.2, 446.919, 30.5566, 0, 0, 0, 0, 0),
(695, 6, -14474.8, 441.263, 30.705, 0, 0, 0, 0, 0),
(695, 7, -14474.5, 434.851, 33.2027, 0, 0, 0, 0, 0),
(695, 8, -14473.8, 431.647, 34.314, 0, 0, 0, 0, 0),
(695, 9, -14478.6, 428.314, 34.249, 0, 0, 0, 0, 0),
(695, 10, -14473.8, 431.647, 34.314, 0, 0, 0, 0, 0),
(695, 11, -14474.5, 434.851, 33.2027, 0, 0, 0, 0, 0),
(695, 12, -14474.8, 441.263, 30.705, 0, 0, 0, 0, 0),
(695, 13, -14470.2, 446.919, 30.5566, 0, 0, 0, 0, 0),
(695, 14, -14472.3, 454.081, 30.4917, 0, 0, 0, 0, 0),
(695, 15, -14469.5, 462.674, 30.6577, 0, 0, 0, 0, 0),
(695, 16, -14467, 470.439, 30.7043, 0, 0, 0, 0, 0),
(695, 17, -14465.5, 479.746, 26.8295, 0, 0, 0, 0, 0),
(695, 18, -14474, 487.33, 26.7089, 0, 0, 0, 0, 0),
(715, 1, -14443.3, 410.566, 25.0075, 0, 0, 0, 0, 0),
(715, 2, -14457.4, 426.895, 25.1528, 0, 0, 0, 0, 0),
(715, 3, -14466.7, 441.322, 29.8059, 0, 0, 0, 0, 0),
(715, 4, -14455.6, 425.828, 25.131, 0, 0, 0, 0, 0),
(715, 5, -14443.5, 432.869, 20.2956, 0, 0, 0, 0, 0),
(715, 6, -14455.6, 425.828, 25.131, 0, 0, 0, 0, 0),
(715, 7, -14466.7, 441.322, 29.8059, 0, 0, 0, 0, 0),
(715, 8, -14457.4, 426.895, 25.1528, 0, 0, 0, 0, 0),
(715, 9, -14443.3, 410.566, 25.0075, 0, 0, 0, 0, 0),
(715, 10, -14437.1, 398.968, 31.7248, 0, 0, 0, 0, 0);

-- UDB_218
-- q.4265 'Freed from the Hive'
DELETE FROM dbscripts_on_quest_start WHERE id = 4265;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(4265,2,10,9546,18000,0,0,0,0,0,0,0,-5323.15,431.758,12.1273,3.34124,''),
(4265,3,0,0,0,9546,20,7,2000000519,0,0,0,0,0,0,0,''),
(4265,7,0,0,0,9546,20,7,2000000520,0,0,0,0,0,0,0,''),
(4265,13,1,2,0,9546,20,7,0,0,0,0,0,0,0,0,''),
(4265,14,7,4265,0,0,0,0,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 4265 WHERE entry = 4265;
DELETE FROM db_script_string WHERE entry BETWEEN 2000000519 AND 2000000520;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000519,'Oh man, I thought I was dead for sure. Ugh... Still dizzy...',0,0,0,462,NULL),
(2000000520,'I can get back to Stronghold on my own, I think. Now that you bought me some time, I should be able to stealth out of here. Who ever you are... thank you. May Elune bless you always!',0,0,0,1,NULL);

-- UDB_219
-- q.4129 'The Knife Revealed'
DELETE FROM dbscripts_on_quest_end WHERE id = 4129;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(4129,0,29,131,2,0,0,0,0,0,0,0,0,0,0,0,'npcFlags removed'),
(4129,2,0,0,0,0,0,0,2000000521,0,0,0,0,0,0,0,''),
(4129,3,15,15050,0,0,0,0,0,0,0,0,0,0,0,0,''),
(4129,10,0,0,0,0,0,0,2000000522,0,0,0,0,0,0,0,''),
(4129,12,29,131,1,0,0,0,0,0,0,0,0,0,0,0,'npcFlags added');
UPDATE quest_template SET CompleteScript = 4129 WHERE entry = 4129;
DELETE FROM db_script_string WHERE entry BETWEEN 2000000521 AND 2000000522;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000521,'I will need to focus my energies onto this knife. By doing so, I should catch some of the stronger psychic impressions associated with it.',0,0,0,0,NULL),
(2000000522,'I... I\'ve seen enough I think... so very draining...',0,0,0,462,NULL);
-- Quintis Jonespyre
-- temp. solution (we need to find gossipID)
DELETE FROM npc_gossip WHERE npc_guid = 51258;
INSERT INTO npc_gossip (npc_guid, textid) VALUES
(51258, 2575);
-- NPC Quintis Jonespyre (7879)
-- Repeatable quest 'Morrowgrain to Feathermoon Stronghold' (3792) must be available after 'The Mystery of Morrowgrain'(3791)
UPDATE quest_template SET PrevQuestId = 3791 WHERE entry = 3792;

-- UDB_220
-- q.2943 'Return to Troyas'
DELETE FROM dbscripts_on_quest_end WHERE id = 2943;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2943,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'npcFlags removed'),
(2943,1,0,0,0,0,0,0,2000000523,0,0,0,0,0,0,0,''),
(2943,2,3,0,0,0,0,0,0,0,0,0,-4476.23,3230.55,13.7301,4.20931,''),
(2943,4,3,0,0,0,0,0,0,0,0,0,0,0,0,4.99471,''),
(2943,5,0,0,0,0,0,0x02,2000000524,0,0,0,0,0,0,0,''),
(2943,10,0,0,0,0,0,0,2000000525,0,0,0,0,0,0,0,''),
(2943,12,3,0,0,0,0,0,0,0,0,0,-4474.9,3232.88,13.7295,0.951991,''),
(2943,14,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'npcFlags added');
UPDATE quest_template SET CompleteScript = 2943 WHERE entry = 2943;
DELETE FROM db_script_string WHERE entry BETWEEN 2000000523 AND 2000000525;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000523,'A History... Hmmmm... Let me examine this for a moment.',0,0,0,0,NULL),
(2000000524,'%s skims the pages of the book.',0,2,0,0,NULL),
(2000000525,'Amazing! I think I have found it, $N.',0,0,0,0,NULL);

-- UDB_221
-- q.3463 'Set Them Ablaze!'
DELETE FROM dbscripts_on_quest_end WHERE id = 3463;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3463,1,31,8479,100,0,0,0,0,0,0,0,0,0,0,0,'search for Kalaran Windblade'),
(3463,2,18,0,0,8479,5921,7 | 0x10,0,0,0,0,0,0,0,0,'desp'),
(3463,3,10,8480,54000,0,0,0,0,0,0,0,-6679.93,-1194.36,240.297,2.96706,'summon Kalaran the Deceiver');
UPDATE quest_template SET CompleteScript = 3463 WHERE entry = 3463;
-- Kalaran Windblade
UPDATE creature SET spawntimesecs = 120 WHERE id = 8479;
-- Kalaran the Deceiver
UPDATE creature_template SET MovementType = 2 WHERE entry = 8480;
DELETE FROM creature_movement_template WHERE entry = 8480;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(8480, 1, -6679.93,-1194.36,240.297,45000,848001,2.96706,0,0),
(8480, 2, -6879.3,-1187.34,253.384,0,0,3.10877,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 848001;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(848001,1,21,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Kalaran the Deceiver - active'),
(848001,1,0,0,0,0,0,0,2000000526,0,0,0,0,0,0,0,''),
(848001,3,0,0,0,0,0,0,2000000527,0,0,0,0,0,0,0,''),
(848001,7,0,0,0,0,0,0,2000000528,0,0,0,0,0,0,0,''),
(848001,13,0,0,0,8509,20,7,2000000529,0,0,0,0,0,0,0,''),
(848001,15,3,0,0,0,0,0,0,0,0,0,0,0,0,4.65994,''),
(848001,18,0,0,0,0,0,0,2000000530,0,0,0,0,0,0,0,''),
(848001,22,0,0,0,0,0,0,2000000531,0,0,0,0,0,0,0,''),
(848001,27,0,0,0,0,0,0,2000000532,0,0,0,0,0,0,0,''),
(848001,32,0,0,0,8509,20,7,2000000533,0,0,0,0,0,0,0,''),
(848001,35,0,0,0,0,0,0,2000000534,0,0,0,0,0,0,0,''),
(848001,38,0,0,0,0,0,0,2000000535,0,0,0,0,0,0,0,''),
(848001,41,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(848001,44,0,0,0,0,0,0,2000000536,0,0,0,0,0,0,0,''),
(848001,48,21,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Kalaran the Deceiver - unactive');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000526 AND 2000000536;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000526,'Glorious, indeed, Maltrake. It looks as if my plan worked perfectly. Wouldn\'t you say so, mortal?',0,0,0,0,NULL),
(2000000527,'%s lets loose a reptilian laugh... at least you think it\'s a laugh.',0,2,0,0,NULL),
(2000000528,'You would not have helped the legion of Blackrock had we just asked for your assistance, now would you?',0,0,0,0,NULL),
(2000000529,'What will we do with them, master? They are of no use to us anymore.',0,0,0,1,NULL),
(2000000530,'SILENCE FOOL!',0,0,0,0,NULL),
(2000000531,'They will live of only to see the fruits of their labor: the destruction and chaos that will surely ensue as the legion of Blackrock invade the gorge.',0,0,0,0,NULL),
(2000000532,'I leave you now, mortals. Alive and with these trinkets. Maltrake! Present them with the trinkets!',0,0,0,0,NULL),
(2000000533,'Right away, master!',0,0,0,0,NULL),
(2000000534,'%s begins to flap his massive wings faster. He is preparing for flight.',0,2,0,0,NULL),
(2000000535,'Oh yes, the molt - do not lose it. There are those of my kin in the Burning Steppes that would craft items that only the molt of the black dragonflight could fortify.',0,0,0,0,NULL),
(2000000536,'The legion of Blackrock comes, dwarflings! We shall scorch the earth and set fire to the heavens. None shall survive...',0,1,0,0,NULL);

-- UDB_222
-- q.1059 'Reclaiming the Charred Vale 2'
DELETE FROM dbscripts_on_quest_end WHERE id = 1059;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1059,0,29,2,2,0,0,0,0,0,0,0,0,0,0,0,'npcFlags removed'),
(1059,1,0,0,0,0,0,0,2000000537,0,0,0,0,0,0,0,''),
(1059,2,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 2:iwaypoints');
UPDATE quest_template SET CompleteScript = 1059 WHERE entry = 1059;
DELETE FROM db_script_string WHERE entry BETWEEN 2000000537 AND 2000000539;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000537, 'We must hurry.', 0, 0, 0, 1, NULL),
(2000000538, 'Spirits of the forest come forth and heed nature\'s call!', 0, 0, 0, 1, NULL),
(2000000539, 'Spirits of the forest, you are needed! Make haste to the Charred Vale!', 0, 0, 0, 25, NULL);
-- Falfindel Waywarder
UPDATE creature SET Spawndist = 0, MovementType = 0 WHERE id = 4048; -- movement will be set by q.
DELETE FROM creature_movement WHERE id = 51337;
UPDATE creature_template SET MovementType = 0 WHERE entry = 4048;
DELETE FROM creature_movement_template WHERE entry = 4048;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(4048, 1, -4524.24, -782.628, -41.5763, 0,0,0,0,0),
(4048, 2, -4520.69, -775.438, -41.0733, 0,0,0,0,0),
(4048, 3, -4514.55, -770.937, -40.0658, 0,0,0,0,0),
(4048, 4, -4503.63, -774.032, -40.224, 0,0,0,0,0),
(4048, 5, -4488.25, -767.98, -36.61, 27000,404801,0,0,0),
(4048, 6, -4499.17, -773.174, -39.449, 0,0,0,0,0),
(4048, 7, -4514.09, -771.136, -40.0971, 0,0,0,0,0),
(4048, 8, -4520.48, -775.049, -41.0191, 0,0,0,0,0),
(4048, 9, -4524.16, -782.978, -41.2406, 0,0,0,0,0),
(4048, 10, -4524.12, -788.099, -41.6929, 0,0,0,0,0),
(4048, 11, -4524.12, -788.099, -41.6929, 3000,404802,5.0091,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 404801 AND 404802;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(404801 ,1, 21,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Falfindel Waywarder - active'),
(404801, 2, 0, 0, 0, 0, 0, 0, 2000000538, 0, 0, 0, 0, 0, 0, 0, ''),
(404801, 4, 15, 6537, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(404801, 6, 10, 4059, 50000, 0, 0, 0, 0, 0, 0, 0, -4479.45, -768.01, -37.36, 0, ''),
(404801, 7, 10, 4059, 50000, 0, 0, 0, 0, 0, 0, 0, -4486.55, -769.80, -37.23, 0, ''),
(404801, 8, 10, 4059, 50000, 0, 0, 0, 0, 0, 0, 0, -4484.95, -767.87, -36.61, 0, ''),
(404801, 9, 10, 4059, 50000, 0, 0, 0, 0, 0, 0, 0, -4484.90, -770.79, -37.62, 0, ''),
(404801, 10, 10, 4059, 50000, 0, 0, 0, 0, 0, 0, 0, -4484.07, -765.04, -35.74, 0, ''),
(404801, 11, 10, 4059, 50000, 0, 0, 0, 0, 0, 0, 0, -4485.88, -764.05, -35.19, 0, ''),
(404801, 14, 0, 0, 0, 0, 0, 0, 2000000539, 0, 0, 0, 0, 0, 0, 0, ''),
(404801, 13, 14, 6537, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(404802, 1, 20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(404802, 1, 29,2,1,0,0,0,0,0,0,0,0,0,0,0,'npcFlags added'),
(404802 ,2, 21,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Falfindel Waywarder - unactive');
-- Forest Spirit
UPDATE creature_template SET MovementType = 0 WHERE entry = 4059;
DELETE FROM creature_movement_template WHERE entry = 4059;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(4059, 1, -4484.5, -759, -33.57, 0, 405901, 0, 0, 0),
(4059, 2, -4484.5, -759, -33.57, 0, 0, 0, 0, 0),
(4059, 3, -4483, -755.56, -31.94, 0, 0, 0, 0, 0),
(4059, 4, -4481, -686.51, -14.39, 0, 0, 0, 0, 0),
(4059, 5, -4472, -571.90, 5.91, 40000, 0, 0, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 405901;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(405901, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'RUN ON');

-- UDB_223
-- Torwa Pathfinder
-- new gossip after q. 4289
-- additional menu should be available after q.4290
UPDATE gossip_menu SET condition_id = 1006 WHERE entry = 2188 AND text_id = 2821;
UPDATE gossip_menu_option SET condition_id = 1007 WHERE menu_id = 2188;
DELETE FROM conditions WHERE condition_entry IN (1006, 1007); 
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1006, 8, 4289, 0),
(1007, 8, 4290, 0);

-- UDB_224
-- q.4321 'Making Sense of It'
-- first: fix start_script
DELETE FROM dbscripts_on_quest_start WHERE id = 4321;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(4321,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'npcFlags removed'),
(4321,2,0,0,0,0,0,0,2000000030,0,0,0,0,0,0,0,''),
(4321,5,1,22,0,0,0,0,0,0,0,0,0,0,0,0,''),
(4321,5,7,4321,0,0,0,0,0,0,0,0,0,0,0,0,''),
(4321,6,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'npcFlags added');
UPDATE quest_template SET StartScript = 4321 WHERE entry = 4321;
-- second: missing end_script added 
DELETE FROM dbscripts_on_quest_end WHERE id = 4321;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(4321,1,21,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'J.D. Collie - active'),
(4321,2,9,63180,30,0,0,0,0,0,0,0,-6034.46,-1014.57,-216.735,6.07572,''),
(4321,3,0,0,0,0,0,0,2000000540,0,0,0,0,0,0,0,''),
(4321,3,3,0,0,0,0,0,0,0,0,0,0,0,0,2.36912,''),
(4321,8,0,0,0,0,0,0,2000000541,0,0,0,0,0,0,0,''),
(4321,12,3,0,0,0,0,0,0,0,0,0,0,0,0,0.872665,''),
(4321,12,0,0,0,0,0,0,2000000542,0,0,0,0,0,0,0,''),
(4321,13,21,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'J.D. Collie - unactive');
UPDATE quest_template SET CompleteScript = 4321 WHERE entry = 4321;
DELETE FROM db_script_string WHERE entry BETWEEN 2000000540 AND 2000000542;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000540, 'Now, let\'s see... If I am correct, then... Hmmm...', 0, 0, 0, 4, NULL),
(2000000541, 'Blue plus red... I predict...', 0, 0, 0, 0, NULL),
(2000000542, '$N, that\'s it! I have finally figured it out!', 0, 0, 0, 0, NULL);
-- missing object added - UDB free guid reused
DELETE FROM gameobject WHERE guid = 63180;
INSERT INTO gameobject VALUES ( 63180, 174683, 1, 1,1,-6034.46, -1014.57, -216.735, 6.07572, 0, 0, 0.103548, -0.994624, -30, 255, 1);
-- missing equip added
UPDATE creature_template SET EquipmentTemplateId = 7 WHERE entry = 9117;

-- UDB_225
-- J.D. Collie <Marshal Expeditions>
-- new gossip after q. 4321
-- additional menus should be available after q.4321
UPDATE gossip_menu SET condition_id = 124 WHERE entry = 2184 AND text_id = 2833;
UPDATE gossip_menu_option SET condition_id = 124 WHERE menu_id = 2184 AND id IN (0,1,2);
UPDATE gossip_menu_option SET action_menu_id = 2202 WHERE menu_id = 2184 AND id = 0; -- eastern
UPDATE gossip_menu_option SET action_menu_id = 2203 WHERE menu_id = 2184 AND id = 1; -- northern
UPDATE gossip_menu_option SET action_menu_id = 2204 WHERE menu_id = 2184 AND id = 2; -- western
-- missing gossips added
DELETE FROM gossip_menu WHERE entry IN (2202,2203,2204,2205); 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(2202, 2834, 0, 0),
(2203, 2836, 0, 0),
(2204, 2837, 0, 0),
(2205, 2838, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 2184 AND ID = 3;            
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(2184,3,0,'I lost my Crystal Pylon User\'s Manual and need another one.',1,1,2205,0,2184,0,0,'',1009);  -- book only if we missing object and only after quest
DELETE FROM conditions WHERE condition_entry IN (1008,1009); 
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1008, 16, 11482, 1),
(1009, -1, 1008, 124);
DELETE FROM dbscripts_on_gossip WHERE id = 2184;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2184,1,17,11482,1,0,0,0,0,0,0,0,0,0,0,0,'');

-- UDB_226
-- Arathandris Silversky
-- still menu_id and text_id for this option
UPDATE gossip_menu_option SET condition_id = 113 WHERE menu_id = 2208 AND id = 1;

-- UDB_227
-- q.4901 'Guardians of the Altar'
-- Added missing GO 177414 (Gem of Elune), 177415 (Light of Elune), 177416 (Aura of Elune) in Winterspring
DELETE FROM gameobject WHERE guid IN (63182, 63190, 65375, 65883, 65885, 65887, 65903, 65904);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(63182, 177414, 1, 5514.49, -4917.57, 850.538, 2.3911, 0, 0, 0.930417, 0.366502, -900, 100, 1),
(63190, 177415, 1, 5510.28, -4929.31, 845.214, 1.62064, 0, 0, 0.724507, 0.689267, -600, 255, 1),
(65375, 177415, 1, 5520.35, -4925.22, 843.644, 2.13507, 0, 0, 0.876015, 0.482283, -600, 255, 1),
(65883, 177415, 1, 5526.7, -4916.41, 843.452, 3.01865, 0, 0, 0.998111, 0.0614331, -600, 255, 1),
(65885, 177415, 1, 5501.69, -4920.04, 848.791, 0.155868, 0, 0, 0.0778553, 0.996965, -600, 255, 1),
(65887, 177415, 1, 5505.09, -4909.36, 848.961, 5.63402, 0, 0, 0.318914, -0.947784, -600, 255, 1),
(65903, 177415, 1, 5515.71, -4905.82, 846.322, 4.62478, 0, 0, 0.737392, -0.675466, -600, 255, 1),
(65904, 177416, 1, 5514.49, -4917.57, 845.538, 2.3911, 0, 0, 0.930417, 0.366502, -900, 100, 1);
UPDATE gameobject_template SET size = 8 WHERE entry = 177414;
UPDATE gameobject_template SET size = 0.5 WHERE entry = 177415;
UPDATE gameobject_template SET size = 5 WHERE entry = 177416;

-- UDB_228
-- Some of objects (q. related) should respawn almost instant after ... despawn. 
-- New Avalon Registry
UPDATE gameobject SET spawntimesecs = 2 WHERE guid = 66384;
-- The Book of Ur
UPDATE gameobject SET spawntimesecs = 2 WHERE guid = 40667;
-- Empty Cauldron
UPDATE gameobject SET spawntimesecs = 2 WHERE guid = 66377;
-- Iron Chain
UPDATE gameobject SET spawntimesecs = 2 WHERE guid = 66378;
-- New Avalon Patrol Schedule
UPDATE gameobject SET spawntimesecs = 2 WHERE guid = 66308;

-- UDB_229
-- q.12270 'Shred the Alliance' -- Horde ver.
-- q.12244 'Shredder Repair' -- Alliance ver.
-- player must be able to ride veh only during q.
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (27354,27496);
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, quest_start_active, quest_end, cast_flags, condition_id) VALUES
(27354, 62309, 12270, 1, 12270, 1, 0),
(27354, 62309, 12244, 1, 12244, 1, 0),
-- available with q. reward key.
(27496, 60944, 0, 0, 0, 1, 1010);
DELETE FROM conditions WHERE condition_entry = 1010;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1010, 2, 37500, 1);
-- spell must have a target
DELETE FROM spell_script_target WHERE entry = 48610;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(48610, 1, 27354, 0);
-- player must be unboarded from veh. - let's veh to despawn after that.
DELETE FROM dbscripts_on_spell WHERE id = 48610;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(48610,1,14,62309,0,0,0,0,0,0,0,0,0,0,0,0,''),
(48610,1,18,5,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn');
-- missing object added -- UDB free guids Reused
-- Basecamp
DELETE FROM gameobject WHERE id = 300202;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(65865, 300202, 571, 1, 1, 4379.63, -2917.05, 309.944, 0.910624, 0, 0, 0.439743, 0.898124, 300, 0, 1),
(65866, 300202, 571, 1, 1, 3993.29, -3189.94, 282.416, 3.81135, 0, 0, 0.94445, -0.328654, 300, 0, 1);
-- Updates in Ble Sky Logging Grounds
-- Conquest Hold Skirmisher
DELETE FROM creature WHERE guid IN (102015,102016,101982,102014,102020,102013,102006,101983,102457,102463,102458);
DELETE FROM creature_addon WHERE guid IN (102015,102016,101982,102014,102020,102013,102006,101983,102457,102463,102458);
DELETE FROM creature_movement WHERE id IN (102015,102016,101982,102014,102020,102013,102006,101983,102457,102463,102458);
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE guid IN (102021,101980,102019,101990,102018,102017,101989,101971);
-- Broken-down Shredder
UPDATE creature SET spawntimesecs = 30 WHERE id = 27354;
UPDATE creature_template_spells SET spell1 = 48548, spell2 = 48558, spell3 = 48604, spell4 = 0, spell5 = 48610 WHERE entry = 27354;
UPDATE creature SET position_x = 4156.482, position_y = -2963.999, position_z = 283.8623, orientation = 6.091199 WHERE guid = 116888;
DELETE FROM creature WHERE guid IN (54956,54960);
DELETE FROM creature_addon WHERE guid IN (54956,54960);
DELETE FROM creature_movement WHERE id IN (54956,54960);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(54956,27354,571,1,1,0,0,4183.59,-3014.55,280.193,4.79031,25,0,0,4920,0,0,0),
(54960,27354,571,1,1,0,0,4114.21,-2891.88,279.423,2.76634,25,0,0,4920,0,0,0);
UPDATE creature_template_spells SET spell1 = 0, spell2 = 48984, spell3 = 49063, spell4 = 0, spell5 = 0, spell6 = 49025 WHERE entry = 27496;
-- only 2 available in same time
DELETE FROM pool_template WHERE entry = 25481;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(25481,2,'Grizzly Hills - Broken-down Shredder');
DELETE FROM pool_creature WHERE pool_entry = 25481;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES 
(54956,25481,0,'Grizzly Hills - Broken-down Shredder - Pool 1'),
(54960,25481,0,'Grizzly Hills - Broken-down Shredder - Pool 2'),
(116887,25481,0,'Grizzly Hills - Broken-down Shredder - Pool 3'),
(116888,25481,0,'Grizzly Hills - Broken-down Shredder - Pool 4');

-- UDB_230
-- Darrok
UPDATE creature_template SET GossipMenuId = 9528 WHERE entry = 27425;
DELETE FROM gossip_menu WHERE entry = 9528;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9528, 12838, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 9528;           
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(9528,0,0,'Yes, I am ready to travel to Venture Bay!',1,1,-1,0,9528,0,0,'',0);
DELETE FROM dbscripts_on_gossip WHERE id = 9528;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9528,0,15,48961,0,0,0,0x02,0,0,0,0,0,0,0,0,''),
(9528,1,15,48960,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM spell_target_position WHERE id = 48960;
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(48960, 571, 4313.37, -2958.17, 318.463, 1.98);
-- Gordun
UPDATE creature_template SET GossipMenuId = 9531 WHERE entry = 27414;
DELETE FROM gossip_menu WHERE entry = 9531;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9531, 12845, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 9531;           
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(9531,0,0,'Yes, I am ready to travel to Venture Bay!',1,1,-1,0,9531,0,0,'',0);
DELETE FROM dbscripts_on_gossip WHERE id = 9531;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9531,0,15,48621,0,0,0,0x02,0,0,0,0,0,0,0,0,''),
(9531,1,15,48622,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM spell_target_position WHERE id = 48622;
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(48622, 571, 4274.53, -3055.55, 319.463, 2.535);

-- UDB_231
-- r3130
UPDATE creature_template SET ScriptName='npc_grand_admiral_westwind' WHERE entry=29621;
-- r3131
UPDATE creature_template SET ScriptName='npc_concentrated_bullet' WHERE entry IN (34628,34630);
UPDATE creature_template SET ScriptName='npc_valkyr_stalker' WHERE entry IN (34704,34720);
-- r3135
UPDATE instance_template SET ScriptName='instance_halls_of_reflection' WHERE map=668;
-- r3140
UPDATE creature_template SET ScriptName='npc_bone_spike' WHERE entry IN (36619,38711,38712);
UPDATE creature_template SET ScriptName='npc_coldflame' WHERE entry=36672;

-- UDB_232
-- Classic [1034]
-- Winterspring - Rak'shiri 
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, UnitFlags = 64, SpeedWalk = 1, SpeedRun = (10 / 7), MovementType = 2, MeleeBaseAttackTime = 1500, RangedBaseAttackTime = 1500 WHERE Entry = 10200;
UPDATE creature SET modelid = 0,position_x = 8021.76, position_y = -3946.803, position_z = 687.1479, orientation = 6.225225, MovementType = 2 WHERE id = 10200;
DELETE FROM creature_movement_template WHERE entry = 10200;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(10200,1, 8028.811, -3947.212, 687.1479, 0, 0, 0, 0, 0),
(10200,2, 8037.275, -3942.646, 687.1479, 0, 0, 0, 0, 0),
(10200,3, 8046.581, -3938.139, 687.1479, 0, 0, 0, 0, 0),
(10200,4, 8052.147, -3930.226, 687.1479, 0, 0, 0, 0, 0),
(10200,5, 8053.363, -3919.330, 687.1479, 0, 0, 0, 0, 0),
(10200,6, 8042.460, -3905.253, 687.1479, 0, 0, 0, 0, 0),
(10200,7, 8036.599, -3897.281, 687.1479, 0, 0, 0, 0, 0),
(10200,8, 8026.449, -3889.370, 687.1479, 0, 0, 0, 0, 0),
(10200,9, 8018.806, -3883.733, 687.1479, 0, 0, 0, 0, 0),
(10200,10, 8010.596, -3876.309, 687.1479, 0, 0, 0, 0, 0),
(10200,11, 8000.862, -3872.118, 687.1479, 0, 0, 0, 0, 0),
(10200,12, 7992.011, -3874.467, 687.1479, 0, 0, 0, 0, 0),
(10200,13, 7985.668, -3879.896, 687.1479, 0, 0, 0, 0, 0),
(10200,14, 7980.295, -3887.226, 687.1479, 0, 0, 0, 0, 0),
(10200,15, 7982.961, -3899.094, 687.1479, 0, 0, 0, 0, 0),
(10200,16, 7988.211, -3905.684, 687.1479, 0, 0, 0, 0, 0),
(10200,17, 8000.712, -3905.205, 687.1479, 0, 0, 0, 0, 0),
(10200,18, 8007.098, -3908.700, 687.1479, 0, 0, 0, 0, 0),
(10200,19, 8012.041, -3917.679, 687.1479, 0, 0, 0, 0, 0),
(10200,20, 8013.973, -3929.078, 687.1479, 0, 0, 0, 0, 0),
(10200,21, 8014.293, -3941.990, 687.1479, 0, 0, 0, 0, 0),
(10200,22, 8018.936, -3946.639, 687.1479, 0, 0, 0, 0, 0);
-- Classic [1028]
-- Fixed respawn time of minerals in DM East 
UPDATE gameobject SET spawntimesecs = 40 * 60 WHERE map = 429 AND id = 175404;
-- Classic [1027]
-- Winterspring updates 
-- Added missing WP to creature 10807 (Brumeran) in Winterspring
UPDATE creature_template SET MovementType = 2 WHERE Entry = 10807;
UPDATE creature SET MovementType = 2 WHERE id = 10807;
DELETE FROM creature_movement_template WHERE entry = 10807;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(10807, 1, 5794.21, -4756.73, 776.631, 0, 0, 0, 0, 0),
(10807, 2, 5767.78, -4750.23, 776.266, 0, 0, 0, 0, 0),
(10807, 3, 5741.93, -4739.3, 776.337, 0, 0, 0, 0, 0),
(10807, 4, 5729.39, -4728.64, 776.861, 0, 0, 0, 0, 0),
(10807, 5, 5716.83, -4712.63, 780.549, 0, 0, 0, 0, 0),
(10807, 6, 5701.37, -4690.78, 780.221, 0, 0, 0, 0, 0),
(10807, 7, 5685.64, -4666.45, 775.247, 0, 0, 0, 0, 0),
(10807, 8, 5663.94, -4633.49, 770.941, 0, 0, 0, 0, 0),
(10807, 9, 5652.06, -4612.04, 769.91, 0, 0, 0, 0, 0),
(10807, 10, 5605.16, -4523.35, 761.301, 0, 0, 0, 0, 0),
(10807, 11, 5596.44, -4510.74, 761.037, 0, 0, 0, 0, 0),
(10807, 12, 5578.46, -4501.28, 758.607, 0, 0, 0, 0, 0),
(10807, 13, 5546.2, -4498.32, 757.152, 0, 0, 0, 0, 0),
(10807, 14, 5536.28, -4498.46, 756.273, 0, 0, 0, 0, 0),
(10807, 15, 5548.03, -4498.12, 757.283, 0, 0, 0, 0, 0),
(10807, 16, 5580.57, -4501.62, 758.791, 0, 0, 0, 0, 0),
(10807, 17, 5596.8, -4510.74, 761.013, 0, 0, 0, 0, 0),
(10807, 18, 5607.1, -4525.25, 761.14, 0, 0, 0, 0, 0),
(10807, 19, 5652.85, -4611.9, 769.809, 0, 0, 0, 0, 0),
(10807, 20, 5663.82, -4632.54, 770.918, 0, 0, 0, 0, 0),
(10807, 21, 5688.06, -4666.14, 775.173, 0, 0, 0, 0, 0),
(10807, 22, 5701.32, -4688.96, 779.968, 0, 0, 0, 0, 0),
(10807, 23, 5716.02, -4709.93, 780.711, 0, 0, 0, 0, 0),
(10807, 24, 5732.58, -4729.74, 776.94, 0, 0, 0, 0, 0),
(10807, 25, 5743.5, -4739.83, 776.143, 0, 0, 0, 0, 0),
(10807, 26, 5768.83, -4750.62, 776.265, 0, 0, 0, 0, 0),
(10807, 27, 5791.36, -4756.39, 776.534, 0, 0, 0, 0, 0),
(10807, 28, 5800.65, -4754.66, 775.339, 0, 0, 0, 0, 0),
(10807, 29, 5810.53, -4747.72, 770.679, 0, 0, 0, 0, 0),
(10807, 30, 5825.56, -4722.8, 761.2, 0, 0, 0, 0, 0),
(10807, 31, 5847.45, -4695.13, 756.06, 0, 0, 0, 0, 0),
(10807, 32, 5846.56, -4653.15, 751.855, 0, 0, 0, 0, 0),
(10807, 33, 5852.02, -4626.78, 748.715, 0, 0, 0, 0, 0),
(10807, 34, 5857.67, -4617.24, 746.566, 0, 0, 0, 0, 0),
(10807, 35, 5873.96, -4604.09, 740.28, 0, 0, 0, 0, 0),
(10807, 36, 5906.14, -4580.95, 726.465, 0, 0, 0, 0, 0),
(10807, 37, 5933.6, -4552.5, 719.467, 0, 0, 0, 0, 0),
(10807, 38, 5948.97, -4526.39, 714.178, 0, 0, 0, 0, 0),
(10807, 39, 5966, -4490.83, 706.834, 0, 0, 0, 0, 0),
(10807, 40, 5983.18, -4454.48, 707.231, 0, 0, 0, 0, 0),
(10807, 41, 6004.34, -4417.37, 710.368, 0, 0, 0, 0, 0),
(10807, 42, 6043.83, -4367.21, 715.066, 0, 0, 0, 0, 0),
(10807, 43, 6083.28, -4327.06, 725.178, 0, 0, 0, 0, 0),
(10807, 44, 6120.37, -4306.62, 731.31, 0, 0, 0, 0, 0),
(10807, 45, 6166.59, -4284.45, 744.508, 0, 0, 0, 0, 0),
(10807, 46, 6191.89, -4270.68, 738.337, 0, 0, 0, 0, 0),
(10807, 47, 6245.56, -4242.19, 736.044, 0, 0, 0, 0, 0),
(10807, 48, 6307.77, -4218.71, 722.994, 0, 0, 0, 0, 0),
(10807, 49, 6355.26, -4200.94, 713.745, 0, 0, 0, 0, 0),
(10807, 50, 6392.92, -4182.05, 703.888, 0, 0, 0, 0, 0),
(10807, 51, 6357.57, -4201.57, 713.224, 0, 0, 0, 0, 0),
(10807, 52, 6311.36, -4220.95, 723.374, 0, 0, 0, 0, 0),
(10807, 53, 6246.39, -4244.92, 735.806, 0, 0, 0, 0, 0),
(10807, 54, 6192.39, -4270.93, 738.002, 0, 0, 0, 0, 0),
(10807, 55, 6168.06, -4284.54, 744.458, 0, 0, 0, 0, 0),
(10807, 56, 6124.04, -4304.35, 731.797, 0, 0, 0, 0, 0),
(10807, 57, 6081.23, -4327.11, 724.821, 0, 0, 0, 0, 0),
(10807, 58, 6044.83, -4366.46, 715.08, 0, 0, 0, 0, 0),
(10807, 59, 6007.47, -4413.15, 710.907, 0, 0, 0, 0, 0),
(10807, 60, 5983.53, -4455.11, 707.048, 0, 0, 0, 0, 0),
(10807, 61, 5965.38, -4490.02, 706.943, 0, 0, 0, 0, 0),
(10807, 62, 5948.68, -4526.07, 714.223, 0, 0, 0, 0, 0),
(10807, 63, 5934.61, -4551.4, 719.322, 0, 0, 0, 0, 0),
(10807, 64, 5907.66, -4580.78, 725.546, 0, 0, 0, 0, 0),
(10807, 65, 5873.21, -4606.02, 740.637, 0, 0, 0, 0, 0),
(10807, 66, 5862.26, -4614.75, 744.791, 0, 0, 0, 0, 0),
(10807, 67, 5853.82, -4625.17, 748.087, 0, 0, 0, 0, 0),
(10807, 68, 5845.46, -4654.04, 752.156, 0, 0, 0, 0, 0),
(10807, 69, 5844.74, -4689.32, 755.539, 0, 0, 0, 0, 0),
(10807, 70, 5824.63, -4722.99, 761.315, 0, 0, 0, 0, 0),
(10807, 71, 5809.48, -4746.69, 770.559, 0, 0, 0, 0, 0),
(10807, 72, 5799.53, -4755.23, 775.666, 0, 0, 0, 0, 0);
-- Moved waypoints for Ursius to creature_movement_template table
-- because this NPC is unique 
UPDATE creature_template SET MovementType = 2 WHERE Entry = 10806;
UPDATE creature SET MovementType = 2 WHERE id = 10806;
DELETE FROM creature_movement WHERE id = 41757;
DELETE FROM creature_movement_template WHERE entry = 10806;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(10806, 1, 7392.47, -4863.76, 717.538, 0, 0, 0, 0, 0),
(10806, 2, 7386.98, -4854.89, 717.025, 0, 0, 0, 0, 0),
(10806, 3, 7382.2, -4849.15, 714.358, 0, 0, 0, 0, 0),
(10806, 4, 7377.91, -4843.06, 709.955, 0, 0, 0, 0, 0),
(10806, 5, 7374.17, -4833.31, 707.622, 0, 0, 0, 0, 0),
(10806, 6, 7367.56, -4826.19, 706.673, 0, 0, 0, 0, 0),
(10806, 7, 7356.6, -4819.11, 705.119, 0, 0, 0, 0, 0),
(10806, 8, 7346.57, -4817.34, 704.422, 0, 0, 0, 0, 0),
(10806, 9, 7338.89, -4814.45, 701.118, 0, 0, 0, 0, 0),
(10806, 10, 7332.93, -4808.81, 695.472, 0, 0, 0, 0, 0),
(10806, 11, 7324.25, -4803.01, 694.299, 0, 0, 0, 0, 0),
(10806, 12, 7313.4, -4808.02, 696.404, 0, 0, 0, 0, 0),
(10806, 13, 7304.99, -4811.13, 695.083, 0, 0, 0, 0, 0),
(10806, 14, 7294.66, -4812.62, 688.862, 0, 0, 0, 0, 0),
(10806, 15, 7280.04, -4809.81, 685.032, 0, 0, 0, 0, 0),
(10806, 16, 7267.66, -4804.58, 683.578, 0, 0, 0, 0, 0),
(10806, 17, 7256.03, -4799.48, 684.846, 0, 0, 0, 0, 0),
(10806, 18, 7246.93, -4792.95, 688.579, 0, 0, 0, 0, 0),
(10806, 19, 7233.74, -4783.62, 692.866, 0, 0, 0, 0, 0),
(10806, 20, 7227.48, -4781.13, 699.379, 0, 0, 0, 0, 0),
(10806, 21, 7222.56, -4779.32, 702.658, 0, 0, 0, 0, 0),
(10806, 22, 7214.65, -4774.53, 706.959, 0, 0, 0, 0, 0),
(10806, 23, 7206.99, -4768.56, 715.328, 0, 0, 0, 0, 0),
(10806, 24, 7197.63, -4766.04, 718.111, 0, 0, 0, 0, 0),
(10806, 25, 7187.17, -4766.88, 722.862, 0, 0, 0, 0, 0),
(10806, 26, 7176.04, -4767.88, 726.34, 0, 0, 0, 0, 0),
(10806, 27, 7158.39, -4772.67, 728.308, 0, 0, 0, 0, 0),
(10806, 28, 7146.15, -4775.98, 730.806, 0, 0, 0, 0, 0),
(10806, 29, 7130.09, -4779.49, 732.639, 0, 0, 0, 0, 0),
(10806, 30, 7119.01, -4778.06, 733.071, 0, 0, 0, 0, 0),
(10806, 31, 7107.81, -4778.12, 736.737, 0, 0, 0, 0, 0),
(10806, 32, 7093.41, -4773.02, 740.822, 0, 0, 0, 0, 0),
(10806, 33, 7080.23, -4769.07, 743.451, 0, 0, 0, 0, 0),
(10806, 34, 7063.14, -4761.69, 744.717, 0, 0, 0, 0, 0),
(10806, 35, 7048.81, -4751.61, 741.236, 0, 0, 0, 0, 0),
(10806, 36, 7040.23, -4731.74, 734.484, 0, 0, 0, 0, 0),
(10806, 37, 7033.46, -4721.02, 734.604, 0, 0, 0, 0, 0),
(10806, 38, 7022.16, -4709.08, 735.978, 0, 0, 0, 0, 0),
(10806, 39, 7013.91, -4698.55, 739.685, 0, 0, 0, 0, 0),
(10806, 40, 7009.08, -4688.44, 743.001, 0, 0, 0, 0, 0),
(10806, 41, 7010.87, -4675.89, 746.968, 0, 0, 0, 0, 0),
(10806, 42, 7017.92, -4665.31, 752.719, 0, 0, 0, 0, 0),
(10806, 43, 7020.02, -4651.64, 756.594, 0, 0, 0, 0, 0),
(10806, 44, 7012.05, -4647.55, 755.447, 0, 0, 0, 0, 0),
(10806, 45, 7002.2, -4644.09, 751.775, 0, 0, 0, 0, 0),
(10806, 46, 6993.5, -4640.75, 749.158, 0, 0, 0, 0, 0),
(10806, 47, 6980.03, -4632, 750.785, 0, 0, 0, 0, 0),
(10806, 48, 6976.06, -4642.05, 748.789, 0, 0, 0, 0, 0),
(10806, 49, 6994.9, -4644.68, 749.273, 0, 0, 0, 0, 0),
(10806, 50, 7004.91, -4647.66, 753.137, 0, 0, 0, 0, 0),
(10806, 51, 7013.32, -4650.74, 755.831, 0, 0, 0, 0, 0),
(10806, 52, 7025.52, -4660.47, 755.501, 0, 0, 0, 0, 0),
(10806, 53, 7025.86, -4674.66, 750.418, 0, 0, 0, 0, 0),
(10806, 54, 7024.98, -4684.34, 748.902, 0, 0, 0, 0, 0),
(10806, 55, 7017.76, -4686.15, 747.49, 0, 0, 0, 0, 0),
(10806, 56, 7010.29, -4689.55, 742.97, 0, 0, 0, 0, 0),
(10806, 57, 7012.05, -4702.11, 737.811, 0, 0, 0, 0, 0),
(10806, 58, 7016.5, -4714.78, 735.262, 0, 0, 0, 0, 0),
(10806, 59, 7020.46, -4724.02, 736.569, 0, 0, 0, 0, 0),
(10806, 60, 7027.68, -4739.57, 739.237, 0, 0, 0, 0, 0),
(10806, 61, 7034.47, -4752.03, 742.704, 0, 0, 0, 0, 0),
(10806, 62, 7045.98, -4764.76, 746.637, 0, 0, 0, 0, 0),
(10806, 63, 7058.23, -4774.53, 750.034, 0, 0, 0, 0, 0),
(10806, 64, 7068.01, -4778.17, 749.764, 0, 0, 0, 0, 0),
(10806, 65, 7078.76, -4779.57, 747.332, 0, 0, 0, 0, 0),
(10806, 66, 7092.94, -4779.63, 744.443, 0, 0, 0, 0, 0),
(10806, 67, 7105.6, -4776.52, 737.177, 0, 0, 0, 0, 0),
(10806, 68, 7115.29, -4775.7, 733.084, 0, 0, 0, 0, 0),
(10806, 69, 7130.93, -4776.73, 731.908, 0, 0, 0, 0, 0),
(10806, 70, 7153.58, -4774.45, 729.665, 0, 0, 0, 0, 0),
(10806, 71, 7164.17, -4770.8, 727.533, 0, 0, 0, 0, 0),
(10806, 72, 7174.96, -4761.62, 727.535, 0, 0, 0, 0, 0),
(10806, 73, 7184.6, -4760.66, 724.858, 0, 0, 0, 0, 0),
(10806, 74, 7198.73, -4761.51, 719.09, 0, 0, 0, 0, 0),
(10806, 75, 7212.3, -4758.14, 717.17, 0, 0, 0, 0, 0),
(10806, 76, 7224.75, -4755.78, 710.305, 0, 0, 0, 0, 0),
(10806, 77, 7228.49, -4758.9, 707.014, 0, 0, 0, 0, 0),
(10806, 78, 7223.53, -4769.22, 702.701, 0, 0, 0, 0, 0),
(10806, 79, 7220.49, -4775.61, 703.898, 0, 0, 0, 0, 0),
(10806, 80, 7216.82, -4782.13, 703.347, 0, 0, 0, 0, 0),
(10806, 81, 7213.77, -4789.75, 700.667, 0, 0, 0, 0, 0),
(10806, 82, 7217.39, -4793.82, 697.248, 0, 0, 0, 0, 0),
(10806, 83, 7220, -4797.1, 694.03, 0, 0, 0, 0, 0),
(10806, 84, 7229.3, -4799.91, 690.164, 0, 0, 0, 0, 0),
(10806, 85, 7247.28, -4804.95, 686.025, 0, 0, 0, 0, 0),
(10806, 86, 7270.05, -4806.01, 683.494, 0, 0, 0, 0, 0),
(10806, 87, 7286.59, -4803.12, 683.779, 0, 0, 0, 0, 0),
(10806, 88, 7291.67, -4814.98, 688.04, 0, 0, 0, 0, 0),
(10806, 89, 7297.18, -4814.11, 690.571, 0, 0, 0, 0, 0),
(10806, 90, 7305.28, -4812.83, 695.358, 0, 0, 0, 0, 0),
(10806, 91, 7313.95, -4810.56, 696.792, 0, 0, 0, 0, 0),
(10806, 92, 7316.1, -4815.38, 699.242, 0, 0, 0, 0, 0),
(10806, 93, 7312.7, -4823.64, 702.979, 0, 0, 0, 0, 0),
(10806, 94, 7314.2, -4831.71, 706.757, 0, 0, 0, 0, 0),
(10806, 95, 7318.58, -4832.64, 709.229, 0, 0, 0, 0, 0),
(10806, 96, 7325.25, -4833.66, 715.018, 0, 0, 0, 0, 0),
(10806, 97, 7332.31, -4830.25, 714.763, 0, 0, 0, 0, 0),
(10806, 98, 7342.48, -4825.56, 709.241, 0, 0, 0, 0, 0),
(10806, 99, 7347.32, -4823.64, 707.8, 0, 0, 0, 0, 0),
(10806, 100, 7356.01, -4821.47, 705.914, 0, 0, 0, 0, 0),
(10806, 101, 7367.44, -4826.87, 707.032, 0, 0, 0, 0, 0),
(10806, 102, 7372.68, -4835.88, 709.016, 0, 0, 0, 0, 0),
(10806, 103, 7378.35, -4843.68, 710.309, 0, 0, 0, 0, 0),
(10806, 104, 7382.27, -4850.01, 715.1, 0, 0, 0, 0, 0),
(10806, 105, 7386.34, -4856.25, 717.67, 0, 0, 0, 0, 0);
-- Added missing equipment to NPC 10196 (General Cobaltann) and changed its rank to rare elite
-- Added missing spawns position and added them to a pool
UPDATE creature_template SET Rank = 2, EquipmentTemplateId = 1223 WHERE Entry = 10196;
DELETE FROM creature WHERE guid IN (54961,55052);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(54961, 10196, 1, 1, 1, 0, 0, 6153.17, -4164.74, 797.163, 1.70246, 43200, 5, 0, 8097, 7860, 0, 1),
(55052, 10196, 1, 1, 1, 0, 0, 6189.21, -4553.49, 714.408, 1.57288, 43200, 5, 0, 8097, 7860, 0, 1);
UPDATE creature SET spawndist = 5, MovementType = 1 WHERE id = 10196;
DELETE FROM pool_creature_template WHERE id = 10196;
INSERT INTO pool_creature_template VALUES
(10196, 25482, 0, 'Winterspring - General Cobaltann');
DELETE FROM pool_template WHERE entry = 25482;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(25482, 1, 'Winterspring - General Cobaltann');
-- Classic [1026]
-- DM:N 
-- Wandering Eye of Kilrogg - new model
-- Wandering Eye of Kilrogg - update move / runspeed
-- Guard Mol'dar, Slip'kik, Fengus - update move / runspeed
UPDATE creature_template SET SpeedWalk = 2 WHERE Entry = 14321;
UPDATE creature_template SET SpeedWalk = 2 WHERE Entry = 14323;
UPDATE creature_template SET SpeedWalk = 2 WHERE Entry = 14326;
UPDATE creature_template SET ModelId1 = 14430, SpeedWalk = (10 / 2.5), SpeedRun = (10 / 7) WHERE Entry = 14386;  
-- Classic [1025]
-- Gravis Slipknot - an alternative model caused this guy to be invisible
UPDATE creature_model_info SET modelid_other_gender = 0 WHERE modelid = 2582;
-- Classic [1024]
-- Added missing equipment to NPC 11141 (Spirit of Trey Lightforge) in Felwood  
UPDATE creature_template SET EquipmentTemplateId = 250 WHERE Entry = 11141;
-- Classic [1022]
-- Crushridge Plunderer are tiny, tiny creatures
UPDATE creature_template SET Scale = 0 WHERE Entry = 2416; 
-- Classic [1021]
-- STV - Stranglethorn Fever
-- Description was given twice, a proper objective should be given instead.
UPDATE quest_template SET Objectives ='Seek out Witch Doctor Unbagwa and have him summon Mokk the Savage. Bring the Heart of Mokk to Fin Fizracket.' WHERE entry = 348;
-- Classic [1020]
-- LBRS - Chamber of Battle
DELETE FROM creature WHERE guid IN (45813, 45814, 45815, 45816, 45817, 45758, 45759, 45812, 45822, 45821, 45820, 45811, 45819, 45760, 45809, 45761, 45810, 45818);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(45813, 9692, 229, 1, 1, 0, 0, -37.5607, -521.641, 87.7160, 3.45575, 7200, 0, 0, 8613, 0, 0, 0),
(45814, 9696, 229, 1, 1, 0, 0, -36.2227, -523.632, 87.4320, 3.56047, 7200, 0, 0, 2784, 0, 0, 0),
(45815, 9583, 229, 1, 1, 0, 0, -53.6383, -442.827, 78.2854, 4.70957, 7200, 0, 0, 8883, 0, 0, 2),
(45816, 9693, 229, 1, 1, 0, 0, -72.4302, -520.961, 82.3316, 3.40339, 7200, 0, 0, 7107, 2369, 0, 0),
(45817, 9268, 229, 1, 1, 0, 0, -77.5619, -516.932, 81.4632, 4.52040, 7200, 0, 0, 8613, 0, 0, 0),
(45758, 9696, 229, 1, 1, 0, 0, -47.1127, -480.153, 77.9991, 2.82743, 7200, 0, 0, 2784, 0, 0, 0),
(45759, 9692, 229, 1, 1, 0, 0, -49.4956, -482.156, 77.9991, 2.37365, 7200, 0, 0, 8613, 0, 0, 0),
(45812, 9696, 229, 1, 1, 0, 0, -51.8879, -483.818, 77.9991, 1.88496, 7200, 0, 0, 2784, 0, 0, 0),
(45822, 9693, 229, 1, 1, 0, 0, -57.4802, -487.082, 77.9991, 3.22886, 7200, 0, 0, 7107, 2369, 0, 0),
(45821, 9583, 229, 1, 1, 0, 0, -58.8099, -481.005, 77.9991, 4.41568, 7200, 0, 0, 8883, 0, 0, 0),
(45820, 9268, 229, 1, 1, 0, 0, -63.3201, -485.629, 77.9991, 0.85521, 7200, 0, 0, 8613, 0, 0, 0),
(45811, 9583, 229, 1, 1, 0, 0, -56.9907, -427.546, 77.8323, 1.44862, 7200, 0, 0, 8883, 0, 0, 0),
(45819, 9583, 229, 1, 1, 0, 0, -43.5588, -515.171, 88.5866, 3.70166, 7200, 0, 0, 8883, 0, 0, 0),
(45760, 9268, 229, 1, 1, 0, 0, -49.6838, -514.303, 88.3960, 5.44524, 7200, 0, 0, 8613, 0, 0, 0),
(45809, 9693, 229, 1, 1, 0, 0, -47.7750, -520.564, 87.5643, 1.30227, 7200, 0, 0, 7107, 2369, 0, 0),
(45761, 9696, 229, 1, 1, 0, 0, -38.1504, -519.232, 88.0403, 3.36848, 7200, 0, 0, 2784, 0, 0, 0),
(45810, 9216, 229, 1, 1, 0, 0, -79.4547, -523.615, 82.6267, 0.80285, 7200, 0, 0, 14355, 0, 0, 0),
(45818, 9216, 229, 1, 1, 0, 0, -49.0348, -427.765, 77.8322, 1.64061, 7200, 0, 0, 14355, 0, 0, 0);
DELETE FROM creature_movement WHERE id = 45815; 
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(45815, 1, -53.7135, -469.510, 77.8413, 0, 0, 0, 0, 0),
(45815, 2, -57.2509, -477.311, 77.9158, 0, 0, 0, 0, 0),
(45815, 3, -61.6685, -480.695, 77.9158, 0, 0, 0, 0, 0),
(45815, 4, -68.0847, -485.191, 77.9158, 0, 0, 0, 0, 0),
(45815, 5, -76.1309, -488.445, 77.9158, 0, 0, 0, 0, 0),
(45815, 6, -78.7550, -497.510, 77.9866, 0, 0, 0, 0, 0),
(45815, 7, -77.5000, -506.460, 79.4722, 0, 0, 0, 0, 0),
(45815, 8, -73.2358, -515.496, 81.0900, 0, 0, 0, 0, 0),
(45815, 9, -65.7134, -519.569, 82.9049, 0, 0, 0, 0, 0),
(45815, 10, -57.8619, -517.623, 86.6360, 0, 0, 0, 0, 0),
(45815, 11, -50.2694, -512.905, 88.2413, 0, 0, 0, 0, 0),
(45815, 12, -47.6077, -508.537, 88.6223, 0, 0, 0, 0, 0),
(45815, 13, -43.8517, -499.036, 90.1431, 0, 0, 0, 0, 0),
(45815, 14, -33.9322, -488.698, 90.6663, 0, 0, 0, 0, 0),
(45815, 15, -43.8517, -499.036, 90.1431, 0, 0, 0, 0, 0),
(45815, 16, -47.6077, -508.537, 88.6223, 0, 0, 0, 0, 0),
(45815, 17, -50.2694, -512.905, 88.2413, 0, 0, 0, 0, 0),
(45815, 18, -57.8619, -517.623, 86.6360, 0, 0, 0, 0, 0),
(45815, 19, -65.7134, -519.569, 82.9049, 0, 0, 0, 0, 0),
(45815, 20, -73.2358, -515.496, 81.0900, 0, 0, 0, 0, 0),
(45815, 21, -77.5000, -506.460, 79.4722, 0, 0, 0, 0, 0),
(45815, 22, -78.7550, -497.510, 77.9866, 0, 0, 0, 0, 0),
(45815, 23, -76.1309, -488.445, 77.9158, 0, 0, 0, 0, 0),
(45815, 24, -68.0847, -485.191, 77.9158, 0, 0, 0, 0, 0),
(45815, 25, -61.6685, -480.695, 77.9158, 0, 0, 0, 0, 0),
(45815, 26, -57.2509, -477.311, 77.9158, 0, 0, 0, 0, 0),
(45815, 27, -53.7135, -469.510, 77.8413, 0, 0, 0, 0, 0),
(45815, 28, -53.3688, -431.997, 78.2854, 0, 0, 0, 0, 0);
-- Classic [1019]
-- Fixed respawn time of herbs in Dire Maul. Set respawn time to 40 min instead of 3
UPDATE gameobject SET spawntimesecs = 40 * 60 WHERE map = 429 AND id IN (176584, 142145, 142144);
-- Classic [1013]
-- BWL - Swingtimers
UPDATE creature_template SET MeleeBaseAttackTime = 4000, RangedBaseAttackTime = 4000 WHERE Entry = 12435;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 14456;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 12557;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 12422;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 12420;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 12416;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 13996;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 13020;
UPDATE creature_template SET MeleeBaseAttackTime = 2400, RangedBaseAttackTime = 2400 WHERE Entry = 12467;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 12463;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 12465;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 12464;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 12468;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 14022;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 14024;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 14025;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 14023;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 12017;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 12459;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 12458;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 12457;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 16604;
UPDATE creature_template SET FactionAlliance = 103, FactionHorde = 103, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 12461;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 12460;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 14401;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 11983;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 14601;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 11981;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 14020;
UPDATE creature_template SET FactionAlliance = 14, FactionHorde = 14, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 11583;
UPDATE creature_template SET FactionAlliance = 103, FactionHorde = 103, MeleeBaseAttackTime = 1000, RangedBaseAttackTime = 1000 WHERE Entry = 14605;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 14668;
UPDATE creature_template SET FactionAlliance = 103, FactionHorde = 103 WHERE Entry = 14261;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 14262;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 14263;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 14264;
UPDATE creature_template SET FactionAlliance = 103, FactionHorde = 103 WHERE Entry = 14302;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 13976;
-- Classic [1012]
-- Razorgore's brood
UPDATE gameobject SET animprogress = 100 WHERE id = 177807;
UPDATE gameobject_template SET faction = 14, flags = 0 WHERE entry = 177807; 
-- Classic [1011]
-- UBRS door
UPDATE gameobject_template SET faction = 114 WHERE entry = 175533;
UPDATE gameobject_template SET faction = 114 WHERE entry = 175532;
UPDATE gameobject_template SET faction = 114 WHERE entry = 175531;
UPDATE gameobject_template SET faction = 114 WHERE entry = 175530;
UPDATE gameobject_template SET faction = 114 WHERE entry = 175529;
UPDATE gameobject_template SET faction = 114 WHERE entry = 175528;
UPDATE gameobject_template SET faction = 114 WHERE entry = 164725;
-- Classic [1010]
-- Mr. Vaelastrasz' doors
UPDATE gameobject SET animprogress = 100 WHERE id = 179364;  
UPDATE gameobject SET animprogress = 100 WHERE id = 176965;  
UPDATE gameobject SET animprogress = 100 WHERE id = 176964;
UPDATE gameobject_template SET faction = 114, flags = 32 WHERE entry = 179364;  
UPDATE gameobject_template SET faction = 114, flags = 32 WHERE entry = 176965;  
UPDATE gameobject_template SET faction = 114, flags = 32 WHERE entry = 176964;  
-- Classic [1008]
-- Broodlord Lashlayer's door 
UPDATE gameobject SET animprogress = 100 WHERE id = 179365;  
UPDATE gameobject_template SET faction = 114, flags = 32 WHERE entry = 179365; 
-- Classic [1007]
-- Lord Victor Whatever's doors
UPDATE gameobject SET animprogress = 100 WHERE id = 179117;  
UPDATE gameobject SET animprogress = 100 WHERE id = 176966; 
UPDATE gameobject_template SET faction = 114, flags = 32 WHERE entry = 179117;  
UPDATE gameobject_template SET faction = 114, flags = 32 WHERE entry = 176966; 
-- Classic [1006] 
-- Chromaggus' door 
UPDATE gameobject SET orientation = 5.340709 WHERE id = 179148;
UPDATE gameobject SET animprogress = 100 WHERE id = 179116;
UPDATE gameobject_template SET flags = 32, size = 5 WHERE entry = 179148;
UPDATE gameobject_template SET faction = 114, flags = 32 WHERE entry = 179116;
-- Classic [1005] 
-- Faction templates and swing timers of AQ40's inhabitants! 
UPDATE creature_template SET MinLevel = 61 WHERE Entry = 11338;
UPDATE creature_template SET MinLevel = 60 WHERE Entry = 11831;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15264;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310 WHERE Entry = 15262;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15263;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15502;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15504;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60, RangedBaseAttackTime = 2000 WHERE Entry = 15503;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310 WHERE Entry = 15247;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310 WHERE Entry = 15233;
UPDATE creature_template SET MinLevel = 61, FactionAlliance = 310, FactionHorde = 310 WHERE Entry = 15230;
UPDATE creature_template SET MinLevel = 60, FactionAlliance = 310, FactionHorde = 310 WHERE Entry = 15622;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, MeleeBaseAttackTime = 2500, RangedBaseAttackTime = 2500 WHERE Entry = 15544;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, MeleeBaseAttackTime = 1500, RangedBaseAttackTime = 1500 WHERE Entry = 15621;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15543;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, MeleeBaseAttackTime = 2500, RangedBaseAttackTime = 2500 WHERE Entry = 15511;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 1200, RangedBaseAttackTime = 1200 WHERE Entry = 15516;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 1600, RangedBaseAttackTime = 1600 WHERE Entry = 15984;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310 WHERE Entry = 15300;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310 WHERE Entry = 15229;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15510;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, Scale = 0, MeleeBaseAttackTime = 2000 WHERE Entry = 15630;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310 WHERE Entry = 15962;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310 WHERE Entry = 15240;
UPDATE creature_template SET MeleeBaseAttackTime = 1300, RangedBaseAttackTime = 1300 WHERE Entry = 15299;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310 WHERE Entry = 15235;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310 WHERE Entry = 15236;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 1600, RangedBaseAttackTime = 1600 WHERE Entry = 15249;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15509;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310 WHERE Entry = 15277;
UPDATE creature_template SET MinLevel = 60, RangedBaseAttackTime = 2000 WHERE Entry = 15316;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15275;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15276;
UPDATE creature_template SET MinLevel = 63, MaxLevel = 63, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15963;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310 WHERE Entry = 15250;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, Scale = 0 WHERE Entry = 15246;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310 WHERE Entry = 15252;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310 WHERE Entry = 15312;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310 WHERE Entry = 15311;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, MeleeBaseAttackTime = 2700, RangedBaseAttackTime = 2700 WHERE Entry = 15517;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, MeleeBaseAttackTime = 1000, RangedBaseAttackTime = 1000 WHERE Entry = 15718;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE Entry = 15957;
UPDATE creature_template SET FactionAlliance = 35, FactionHorde = 35, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15380;
UPDATE creature_template SET FactionAlliance = 35, FactionHorde = 35, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15379;
UPDATE creature_template SET FactionAlliance = 35, FactionHorde = 35, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15378;
UPDATE creature_template SET FactionAlliance = 370, FactionHorde = 370, Scale = 0, MeleeBaseAttackTime = 2500, RangedBaseAttackTime = 2500 WHERE Entry = 15589;
UPDATE creature_template SET Scale = 0, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15727;
UPDATE creature_template SET FactionAlliance = 370, FactionHorde = 370 WHERE Entry = 15896;
UPDATE creature_template SET Scale = 0 WHERE Entry = 15809;
UPDATE creature_template SET MinLevel = 60, ModelId1 = 15948, FactionAlliance = 370, FactionHorde = 370, Scale = 0, MeleeBaseAttackTime = 2000 WHERE Entry = 15334;
UPDATE creature_template SET MinLevel = 60, FactionAlliance = 16, FactionHorde = 16, Scale = 0, MeleeBaseAttackTime = 1000, RangedBaseAttackTime = 1000 WHERE Entry = 15725;
UPDATE creature_template SET MinLevel = 60, FactionAlliance = 16, FactionHorde = 16, Scale = 0, MeleeBaseAttackTime = 1000, RangedBaseAttackTime = 1000 WHERE Entry = 15726;
UPDATE creature_template SET FactionAlliance = 370, FactionHorde = 370, Scale = 0, MeleeBaseAttackTime = 2500, RangedBaseAttackTime = 2500 WHERE Entry = 15728;
UPDATE creature_template SET MinLevel = 60, FactionAlliance = 16, FactionHorde = 16, Scale = 0, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15802;
UPDATE creature_template SET MinLevel = 63, MaxLevel = 63, Scale = 0 WHERE Entry = 15904;
UPDATE creature_template SET MinLevel = 63, MaxLevel = 63, Scale = 0 WHERE Entry = 15910;
-- Classic [1004] 
-- Faction templates and swing timers of AQ20's inhabitants! 
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15324;
UPDATE creature_template SET FactionAlliance = 15, FactionHorde = 15, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15168;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, RangedBaseAttackTime = 1500 WHERE Entry = 15343;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15327;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15325;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, Scale = 0, MeleeBaseAttackTime = 2000 WHERE Entry = 15348;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 1300, RangedBaseAttackTime = 1300 WHERE Entry = 15344;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, Scale = 0, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15387;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15391;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15392;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15390;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15389;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15386;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15385;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15388;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15341;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 800, RangedBaseAttackTime = 800 WHERE Entry = 15323;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15320;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, Scale = 0, MeleeBaseAttackTime = 2500, RangedBaseAttackTime = 2500 WHERE Entry = 15370;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15964;
UPDATE creature_template SET FactionAlliance = 148, FactionHorde = 148, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15335;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, Scale = 0, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15521;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15333;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 15336, RangedBaseAttackTime = 15336 WHERE Entry = 15336;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15319;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15318;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, MeleeBaseAttackTime = 1200, RangedBaseAttackTime = 1200 WHERE Entry = 15369;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310 WHERE Entry = 15934;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15555;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, MeleeBaseAttackTime = 1800, RangedBaseAttackTime = 1800 WHERE Entry = 15339;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE Entry = 15590;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15355;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15537;
UPDATE creature_template SET MeleeBaseAttackTime = 1300, RangedBaseAttackTime = 1300 WHERE Entry = 15538;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15461;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15462;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15338;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15340;
UPDATE creature_template SET FactionAlliance = 1878, FactionHorde = 1878, MeleeBaseAttackTime = 1200, RangedBaseAttackTime = 1200 WHERE Entry = 15505;
UPDATE creature_template SET Scale = 0 WHERE Entry = 15514;
UPDATE creature_template SET Scale = 0 WHERE Entry = 15507;
-- Classic [1003]
-- Moam was slightly moved.
UPDATE creature SET position_x = -8845.518, position_y = 2260.144, position_z = 21.46967, orientation = 4.642576 WHERE id = 15340;
-- Classic [1002]
-- AQ40
UPDATE creature_template SET Scale = 0 WHERE Entry = 15543;
UPDATE creature_template SET Scale = 0 WHERE Entry = 15511;
UPDATE creature_template SET Scale = 0 WHERE Entry = 15544;
-- AQ20
UPDATE creature_template SET Scale = 0 WHERE Entry = 15168;
UPDATE creature_template SET Scale = 0 WHERE Entry = 15343;
UPDATE creature_template SET Scale = 0 WHERE Entry = 15461;
UPDATE creature_template SET Scale = 0 WHERE Entry = 15462;
-- Classic [0997]
-- Fixed gossip menu of NPC 3430 (Mangletooth) in the Barrens
UPDATE creature_template SET GossipMenuId = 2944 WHERE entry = 3430;
DELETE FROM gossip_menu WHERE entry = 2944;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(2944, 3656, 0, 0),
(2944, 3670, 0, 1012);
DELETE FROM conditions WHERE condition_entry = 1012; 
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1012, 8, 5052, 0);
-- Classic [0996]
-- Fixed several graveyards for Horde and Alliance accross the world
-- Darkshore : Horde should not respawn in Ashenvale
DELETE FROM game_graveyard_zone WHERE id = 512 AND ghost_zone = 148 AND faction = 67;
UPDATE game_graveyard_zone SET faction = 0 WHERE id = 469 AND ghost_zone = 148;
-- Undercity : graveyard missing
DELETE FROM game_graveyard_zone WHERE ghost_zone = 1497;
INSERT INTO game_graveyard_zone VALUES
(96, 1497, 67),
(853, 1497, 469);
-- Hinterlands : Alliance should be able to respawn at Overlook Cliffs
UPDATE game_graveyard_zone SET faction = 0 WHERE id = 789;
UPDATE game_graveyard_zone SET faction = 0 WHERE id = 349;
-- Ironforge
-- Alliance should respawn at entrance
DELETE FROM game_graveyard_zone WHERE id = 852; -- Dun Morogh, Gates of Ironforge
INSERT INTO game_graveyard_zone VALUES
(852, 1, 469), -- alliance dies around Ironforge
(852, 1537, 469); -- alliance dies inside Ironforge
-- Horde should respawn at far-east graveyard
DELETE FROM game_graveyard_zone WHERE id = 1472; -- Dun Morogh, Dun Morogh, East Road
INSERT INTO game_graveyard_zone VALUES
(1472, 1, 0),
(1472, 1537, 67);
-- Classic [0995]
-- Fixed quest 7838 (Arean Grand Master) in Stranglethorn Vale
UPDATE quest_template SET Method = 2 WHERE entry = 7838;
-- Classic [0992]
-- Added missing object 181073 (Fragrant Cauldron) for Love in the Air event
-- Linked quest 9029 (A bubbling cauldron) to it
DELETE FROM gameobject_involvedrelation WHERE quest = 9029;
INSERT INTO gameobject_involvedrelation (id, quest) VALUES
(181073, 9029);
DELETE FROM gameobject_questrelation WHERE quest = 9029;
INSERT INTO gameobject_questrelation  (id, quest) VALUES
(181073, 9029);
DELETE FROM gameobject_template WHERE entry = 181073;
INSERT INTO gameobject_template (entry, type, displayId, name, IconName, castBarCaption, unk1, faction, flags, size, questItem1, questItem2, questItem3, questItem4, questItem5, questItem6, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, ScriptName) VALUES
(181073,2,216,'Fragrant Cauldron','','','',0,0,1,0,0,0,0,0,0,93,7244,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM gameobject WHERE guid = 65917;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(65917, 181073, 0, 1, 1, 87.6351, -1724.96, 220.192, 1.88655, 0, 0, 0.809484, 0.587141, 25, 100, 1);
DELETE FROM game_event_gameobject WHERE guid = 65917;
INSERT INTO game_event_gameobject (guid, event) VALUES
(65917, 8);
UPDATE quest_template SET MinLevel = 1, QuestLevel = -1 WHERE entry = 9029;
-- Classic [0991]
-- Fixed quest 5525 (Free Knot!) and its repeatable follow up 7429 (Free Knot!) in Dire Maul North
DELETE FROM dbscripts_on_quest_end WHERE id = 5525;
INSERT INTO dbscripts_on_quest_end  (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(5525, 0, 0, 0, 0, 0, 0, 0, 2000000543, 0, 0, 0, 0, 0, 0, 0, ''),
(5525, 0, 29, 3, 0x02, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'remove flag'),
(5525, 1, 9, 65867, 43200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'spawn cache'),
(5525, 2, 13, 0, 0, 179511, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'remove ball and chains'),
(5525, 4, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'run on'),
(5525, 6, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500.42, 540.966, -25.3846, 2.72271, 'WP movement'),
(5525, 15, 18, 0, 0, 0, 0, 0x04, 0, 0, 0, 0, 0, 0, 0, 0, 'despawn');
UPDATE quest_template SET OfferRewardText = 'Oh, thank you for freeing me! You - ranked number one. Everyone else - ranked number two or lower.$B$BI knew my life was destined for more than just being an appetizer to some ogre!', CompleteScript = 5525 WHERE entry = 5525;
UPDATE quest_template SET RewRepFaction1 = 169, RewRepValue1 = 350, CompleteScript = 5525 WHERE entry = 7429;
DELETE FROM db_script_string WHERE entry = 2000000543;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000543, "$N, I'll make sure all my friends in the Cartel know that you've saved my life today. Here - I'm going to need to be able to travel light, so please help yourself to my cache of tailoring and leatherworking supplies! Thanks again - see ya!", 0, 0, 0, 4, NULL);
-- gossip updates
DELETE FROM gossip_menu WHERE entry = 5668;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(5668, 6875, 0, 0);
DELETE FROM gossip_menu_option WHERE (menu_id = 5668) OR (menu_id = 5667 AND id = 0);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(5667, 0, 0, 'So, I found this shackle key...', 1, 1, 5668, 0, 0, 0, 0, '', 1011),
(5668, 0, 0, 'I guess so!', 1, 1, -1, 0, 0, 0, 0, '', 0);
UPDATE gossip_menu_option SET action_menu_id = 5716 WHERE menu_id = 5667 AND id = 1;
DELETE FROM conditions WHERE condition_entry = 1011;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1011, 2, 18250, 1); -- Has gordok shackles key
-- missing object added
DELETE FROM gameobject WHERE guid = 65867;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(65867,179501,429, 1, 1, 583.60, 523.44, -25.40, 3.1848, 0, 0, 0.861341, -0.508028, -43200, 100, 1);
UPDATE gameobject SET spawntimesecs = 43200 WHERE id = 179511;
-- quest updates
UPDATE quest_template SET RequiredRaces = 0, CompletedText = 'Return to Knot Thimblejack' WHERE entry = 5518; -- q. must be available for all races
UPDATE quest_template SET PrevQuestId = 5518, CompletedText = 'Return to Knot Thimblejack' WHERE entry = 5519; -- this one available only after main finished 
UPDATE quest_template SET CompletedText = 'Return to Knot Thimblejack' WHERE entry = 5525;

-- UDB_233
-- Classic [1072]
-- LBRS - Roughshod Pike
-- Omokk's head should always drop
-- Roughshod Pike duplicate removed
DELETE FROM gameobject WHERE guid = 82573;
UPDATE gameobject SET position_x = -34.73237, position_y = -589.6146, position_z = 30.93392, orientation = 0, rotation2 = 0.7253742, rotation3 = 0.6883547 WHERE guid = 82567;
UPDATE gameobject SET position_x = -36.29766, position_y = -589.6169, position_z = 31.01031, orientation = 0, rotation2 = 0.5224981, rotation3 = 0.8526405 WHERE guid = 82568;
UPDATE gameobject SET position_x = -37.10931, position_y = -589.6414, position_z = 30.95476, orientation = 0, rotation2 = 0.6018143, rotation3 = 0.7986361 WHERE guid = 82569;
UPDATE gameobject SET position_x = -35.6387, position_y = -589.6323, position_z = 30.98253, orientation = 0, rotation2 = -0.8338852, rotation3 = 0.5519379 WHERE guid = 82570;
UPDATE gameobject SET position_x = -37.78564, position_y = -589.6395, position_z = 30.99642, orientation = 0, rotation2 = -0.9996567, rotation3 = 0.02620165 WHERE guid = 82571;
UPDATE gameobject SET position_y = -589.6351, position_z = 30.99642, orientation = 0, rotation2 = -0.2923717, rotation3 = 0.9563047 WHERE guid = 82572;
UPDATE creature_loot_template SET ChanceOrQuestChance = 100 WHERE entry = 9196 and item = 12534;
-- Classic [1071]
-- LBRS - Inconspicuous Documents
-- Added more spawnpoints for Inconspicuous Documents in LBRS. These are not always next to Voone.
DELETE FROM gameobject WHERE guid IN (35860, 65973, 66029, 66031);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(35860, 175785, 229, -10.52417, -391.3383, 48.82137, 0, 0, 0, -0.8746195, 0.4848101, 0, 0, 1),
(65973, 175785, 229, -12.27355, -446.6286, -18.64427, 0, 0, 0, 0.9170599, 0.3987495, 0, 0, 1),
(66029, 175785, 229, -18.37604, -299.2709, 31.61826, 0, 0, 0, 0.9996567, 0.02620165, 0, 0, 1),
(66031, 175785, 229, -16.12174, -492.5576, 90.65852, 0, 0, 0, 0.3665009, 0.93041770, 0, 0, 1);
DELETE FROM pool_template WHERE entry = 25484;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25484, 1, 'LBRS - Inconspicuous Documents');
DELETE FROM pool_gameobject_template WHERE id = 175785 OR pool_entry = 25484;
INSERT INTO pool_gameobject_template (id, pool_entry, chance, description) VALUES
(175785, 25484, 0, 'LBRS - Inconspicuous Documents');
-- Classic [1070]
-- LBRS - Warosh
DELETE FROM creature WHERE guid = 56025; -- Free UDB guids reused
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(56025,10799,229,1,1,0,0,44.49939,-372.6492,48.79031,4.893657,7200,0,0,4120,0,0,2);
UPDATE creature_template SET movementType = 2 WHERE entry = 10799;
DELETE FROM creature_movement_template WHERE entry = 10799;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(10799,1, 49.90298, -402.1319, 48.80593, 0, 0, 0, 0, 0),
(10799,2, 58.41603, -418.7091, 45.02646, 0, 0, 0, 0, 0),
(10799,3, 71.58976, -436.8153, 41.41042, 0, 0, 0, 0, 0),
(10799,4, 78.66329, -463.2451, 35.48121, 0, 0, 0, 0, 0),
(10799,5, 81.10400, -479.9030, 30.86245, 0, 0, 0, 0, 0),
(10799,6, 73.26363, -487.8571, 27.89152, 0, 0, 0, 0, 0),
(10799,7, 54.61135, -489.3818, 28.67157, 0, 0, 0, 0, 0),
(10799,8, 44.71681, -491.0370, 29.58880, 0, 0, 0, 0, 0),
(10799,9, 52.60767, -511.5597, 29.21095, 0, 0, 0, 0, 0),
(10799,10, 50.58394, -533.1805, 26.77670, 0, 0, 0, 0, 0),
(10799,11, 50.20008, -560.1547, 30.55615, 0, 0, 0, 0, 0),
(10799,12, 50.46281, -576.0350, 30.58301, 0, 0, 0, 0, 0),
(10799,13, 39.67855, -579.5101, 31.06995, 0, 0, 0, 0, 0),
(10799,14, 17.70854, -578.2368, 26.56120, 0, 0, 0, 0, 0),
(10799,15, -5.465746, -576.0652, 29.19087, 0, 0, 0, 0, 0),
(10799,16, -27.13421, -574.5060, 29.19087, 0, 0, 0, 0, 0),
(10799,17, -47.66818, -572.6104, 29.19087, 0, 0, 0, 0, 0),
(10799,18, -60.44478, -573.6581, 29.19087, 0, 0, 0, 0, 0),
(10799,19, -43.34514, -571.0668, 29.19087, 0, 0, 0, 0, 0),
(10799,20, -36.48037, -563.5282, 29.19087, 0, 0, 0, 0, 0),
(10799,21, -48.50640, -537.1736, 29.19087, 0, 0, 0, 0, 0),
(10799,22, -36.48037, -563.5282, 29.19087, 0, 0, 0, 0, 0),
(10799,23, -43.34514, -571.0668, 29.19087, 0, 0, 0, 0, 0),
(10799,24, -60.44478, -573.6581, 29.19087, 0, 0, 0, 0, 0),
(10799,25, -47.66818, -572.6104, 29.19087, 0, 0, 0, 0, 0),
(10799,26, -27.13421, -574.5060, 29.19087, 0, 0, 0, 0, 0),
(10799,27, -5.465746, -576.0652, 29.19087, 0, 0, 0, 0, 0),
(10799,28, 17.42213, -578.2202, 26.65305, 0, 0, 0, 0, 0),
(10799,29, 39.67855, -579.5101, 31.06995, 0, 0, 0, 0, 0),
(10799,30, 50.46281, -576.0350, 30.58301, 0, 0, 0, 0, 0),
(10799,31, 50.20008, -560.1547, 30.55615, 0, 0, 0, 0, 0),
(10799,32, 50.54165, -533.7271, 26.73937, 0, 0, 0, 0, 0),
(10799,33, 52.60767, -511.5597, 29.21095, 0, 0, 0, 0, 0),
(10799,34, 44.71681, -491.0370, 29.58880, 0, 0, 0, 0, 0),
(10799,35, 54.37603, -489.4010, 28.65347, 0, 0, 0, 0, 0),
(10799,36, 73.26363, -487.8571, 27.89152, 0, 0, 0, 0, 0),
(10799,37, 81.10400, -479.9030, 30.86245, 0, 0, 0, 0, 0),
(10799,38, 78.66329, -463.2451, 35.48121, 0, 0, 0, 0, 0),
(10799,39, 71.58976, -436.8153, 41.41042, 0, 0, 0, 0, 0),
(10799,40, 58.41603, -418.7091, 45.02646, 0, 0, 0, 0, 0),
(10799,41, 49.90298, -402.1319, 48.80593, 0, 0, 0, 0, 0),
(10799,42, 46.01845, -387.0023, 48.69103, 0, 0, 0, 0, 0);
-- Classic [1069]
-- LBRS - Skitterweb Tunnels
DELETE FROM creature WHERE id IN (10374, 10375, 10376, 10596);
DELETE FROM creature WHERE guid IN (55466, 55472, 55749, 55752, 55757, 55768, 55803, 55805, 55807, 55922, 55946, 55950, 55986, 55987, 55989, 55990, 56020, 56021, 56022, 56023, 56024); -- Free UDB guids reused
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(55466, 10374, 229, 1, 1, 0, 0, -127.297, -520.325, 11.7612, 1.586780, 7200, 0, 0, 8613, 0, 0, 2),
(55472, 10376, 229, 1, 1, 0, 0, -138.318, -468.999, 13.8768, 0.206570, 7200, 2, 0, 9156, 0, 0, 1),
(55749, 10374, 229, 1, 1, 0, 0, -138.318, -468.999, 13.8768, 0.206570, 7200, 2, 0, 8613, 0, 0, 1),
(55752, 10374, 229, 1, 1, 0, 0, -143.059, -478.358, 12.8284, 0.798163, 7200, 2, 0, 8613, 0, 0, 1),
(55757, 10374, 229, 1, 1, 0, 0, -115.997, -546.753, 2.13922, 5.827920, 7200, 2, 0, 8613, 0, 0, 1),
(55768, 10374, 229, 1, 1, 0, 0, -109.584, -558.254, 5.97215, 5.016080, 7200, 2, 0, 8613, 0, 0, 1),
(55803, 10374, 229, 1, 1, 0, 0, -139.079, -543.960, 7.28465, 1.544500, 7200, 2, 0, 8613, 0, 0, 1),
(55805, 10374, 229, 1, 1, 0, 0, -146.663, -538.030, 7.51950, 2.933440, 7200, 2, 0, 8613, 0, 0, 1),
(55807, 10375, 229, 1, 1, 0, 0, -136.728, -474.423, 12.8312, 2.082020, 7200, 3, 0, 2699, 0, 0, 1),
(55922, 10375, 229, 1, 1, 0, 0, -142.430, -473.287, 14.7701, 0.926899, 7200, 3, 0, 2699, 0, 0, 1),
(55946, 10375, 229, 1, 1, 0, 0, -138.021, -483.627, 11.5026, 4.643740, 7200, 3, 0, 2699, 0, 0, 1),
(55950, 10375, 229, 1, 1, 0, 0, -144.252, -486.798, 12.2607, 3.249650, 7200, 3, 0, 2699, 0, 0, 1),
(55986, 10375, 229, 1, 1, 0, 0, -104.987, -548.240, 2.40518, 4.187700, 7200, 3, 0, 2699, 0, 0, 1),
(55987, 10375, 229, 1, 1, 0, 0, -103.748, -553.987, 4.86079, 4.825850, 7200, 3, 0, 2699, 0, 0, 1),
(55989, 10375, 229, 1, 1, 0, 0, -110.213, -551.456, 3.32568, 4.707060, 7200, 3, 0, 2699, 0, 0, 1),
(55990, 10375, 229, 1, 1, 0, 0, -116.352, -553.506, 4.88814, 5.401010, 7200, 3, 0, 2699, 0, 0, 1),
(56020, 10375, 229, 1, 1, 0, 0, -135.254, -538.651, 7.12265, 7.144860, 7200, 3, 0, 2699, 0, 0, 1),
(56021, 10375, 229, 1, 1, 0, 0, -141.288, -537.482, 6.93766, 5.602510, 7200, 3, 0, 2699, 0, 0, 1),
(56022, 10375, 229, 1, 1, 0, 0, -147.480, -544.562, 7.88285, 1.102460, 7200, 3, 0, 2699, 0, 0, 1),
(56023, 10375, 229, 1, 1, 0, 0, -139.028, -532.190, 6.68119, 2.221220, 7200, 3, 0, 2699, 0, 0, 1),
(56024, 10596, 229, 1, 1, 0, 0, -135.51, -565.850, 10.1700, 0.670000, 1000000, 2, 0, 23688, 0, 0, 1);
DELETE FROM creature_movement WHERE id = 55466;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(55466, 1, -127.151, -511.369, 11.3636, 0, 0, 0, 0, 0),
(55466, 2, -127.429, -493.976, 11.3567, 0, 0, 0, 0, 0),
(55466, 3, -127.005, -504.143, 11.3607, 0, 0, 0, 0, 0),
(55466, 4, -126.588, -516.658, 11.7612, 0, 0, 0, 0, 0),
(55466, 5, -126.609, -520.664, 11.7612, 0, 0, 0, 0, 0),
(55466, 6, -122.625, -521.096, 11.7612, 0, 0, 0, 0, 0),
(55466, 7, -116.240, -521.575, 11.0583, 0, 0, 0, 0, 0),
(55466, 8, -104.837, -520.382, 10.8036, 0, 0, 0, 0, 0),
(55466, 9, -116.714, -521.250, 11.0689, 0, 0, 0, 0, 0),
(55466, 10, -125.462, -520.888, 11.7612, 0, 0, 0, 0, 0),
(55466, 11, -127.024, -530.692, 11.3652, 0, 0, 0, 0, 0),
(55466, 12, -126.508, -540.155, 11.3652, 0, 0, 0, 0, 0),
(55466, 13, -126.758, -552.192, 11.3652, 0, 0, 0, 0, 0),
(55466, 14, -127.207, -540.946, 11.3652, 0, 0, 0, 0, 0),
(55466, 15, -126.976, -530.475, 11.3652, 0, 0, 0, 0, 0),
(55466, 16, -127.018, -521.193, 11.7612, 0, 0, 0, 0, 0),
(55466, 17, -130.026, -520.442, 11.7612, 0, 0, 0, 0, 0),
(55466, 18, -136.242, -520.639, 11.3496, 0, 0, 0, 0, 0),
(55466, 19, -141.835, -520.482, 11.3498, 0, 0, 0, 0, 0),
(55466, 20, -133.624, -520.864, 11.3495, 0, 0, 0, 0, 0),
(55466, 21, -127.177, -520.906, 11.7612, 0, 0, 0, 0, 0);
DELETE FROM pool_creature WHERE guid IN (55472, 55749) OR pool_entry = 25483;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(55472, 25483, 10, 'LBRS - Crystal Fang / Spire Spider'),
(55749, 25483, 90, 'LBRS - Crystal Fang / Spire Spider');
DELETE FROM pool_template WHERE entry = 25483;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25483, 1, 'LBRS - Crystal Fang / Spire Spider');
UPDATE creature_template SET MinLevel = 57, Family = 3, UnitFlags = 32832, CreatureTypeFlags = 72, SpeedWalk = 1, HealthMultiplier = 3, PowerMultiplier = 1, DamageMultiplier = 3.7, ArmorMultiplier = 1, MinMeleeDmg = 73.4, MaxMeleeDmg = 99.3, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3435, MeleeAttackPower = 242, RangedAttackPower = 25, MeleeBaseAttackTime = 1500, RangedBaseAttackTime = 1500 WHERE Entry = 10374;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, Family = 3, UnitFlags = 32832, CreatureTypeFlags = 72, SpeedWalk = 1, PowerMultiplier = 1, DamageMultiplier = 3.7, MinMeleeDmg = 77.9, MaxMeleeDmg = 103.4, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 252, RangedAttackPower = 26, MeleeBaseAttackTime = 1500, RangedBaseAttackTime = 1500 WHERE Entry = 10376;
UPDATE creature_template SET Family = 3, UnitFlags = 32832, CreatureTypeFlags = 72, SpeedWalk = 1, PowerMultiplier = 1, DamageMultiplier = 5.7, MinMeleeDmg = 76.4, MaxMeleeDmg = 101.3, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 248, RangedAttackPower = 25, MeleeBaseAttackTime = 1500, RangedBaseAttackTime = 1500 WHERE Entry = 10596;
UPDATE creature_template SET UnitFlags = 32768, CreatureTypeFlags = 73, SpeedWalk = 1, DamageMultiplier = 1.5, MinMeleeDmg = 70.5, MaxMeleeDmg = 95.4, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3327, MeleeAttackPower = 234, RangedAttackPower = 23, MeleeBaseAttackTime = 1500, RangedBaseAttackTime = 1500 WHERE Entry = 10375;
-- Classic [1067]
-- Dustwallow Marsh - Brackenwall 
UPDATE creature SET modelid = 0, position_x = -3175.54, position_y = -2868.45, position_z = 34.8193, orientation = 1.963480, spawndist = 0, MovementType = 2 WHERE guid = 8479;
UPDATE creature SET modelid = 0, position_x = -3138.59, position_y = -2928.90, position_z = 34.5513, orientation = 1.649140, spawndist = 0 WHERE guid = 24050;
UPDATE creature SET modelid = 0, position_x = -3095.63, position_y = -2871.48, position_z = 34.1132, orientation = 0.204674, spawndist = 0, MovementType = 2 WHERE guid = 30450;
DELETE FROM creature_movement WHERE id IN (8479, 24050, 30450);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(8479, 1, -3180.15, -2857.3, 35.9913, 0, 0, 0, 0, 0),
(8479, 2, -3176.94, -2844.8, 35.2267, 0, 0, 0, 0, 0),
(8479, 3, -3170.16, -2833.04, 34.6933, 0, 0, 0, 0, 0),
(8479, 4, -3160.74, -2825.33, 34.3194, 0, 0, 0, 0, 0),
(8479, 5, -3170.16, -2833.04, 34.6933, 0, 0, 0, 0, 0),
(8479, 6, -3176.94, -2844.8, 35.2267, 0, 0, 0, 0, 0),
(8479, 7, -3180.15, -2857.3, 35.9913, 0, 0, 0, 0, 0),
(8479, 8, -3177.65, -2866.58, 35.3351, 0, 0, 0, 0, 0),
(24050, 1, -3140.23, -2907.91, 34.3162, 0, 0, 0, 0, 0),
(24050, 2, -3141.59, -2888.42, 33.9922, 0, 0, 0, 0, 0),
(24050, 3, -3139.52, -2875.64, 34.761, 0, 0, 0, 0, 0),
(24050, 4, -3137.37, -2864.11, 34.7546, 0, 0, 0, 0, 0),
(24050, 5, -3131.76, -2857.62, 34.9704, 0, 0, 0, 0, 0),
(24050, 6, -3122.09, -2848.02, 34.8454, 0, 0, 0, 0, 0),
(24050, 7, -3111.08, -2839.94, 34.3261, 0, 0, 0, 0, 0),
(24050, 8, -3098.52, -2827.34, 34.363, 0, 0, 0, 0, 0),
(24050, 9, -3104.83, -2842.1, 34.3349, 0, 0, 0, 0, 0),
(24050, 10, -3110.89, -2851.87, 34.8088, 0, 0, 0, 0, 0),
(24050, 11, -3118.15, -2869.64, 34.953, 0, 0, 0, 0, 0),
(24050, 12, -3118.79, -2878.74, 35.078, 0, 0, 0, 0, 0),
(24050, 13, -3123.36, -2885.75, 34.828, 0, 0, 0, 0, 0),
(24050, 14, -3128.95, -2889.75, 34.578, 0, 0, 0, 0, 0),
(24050, 15, -3129.52, -2902.29, 34.116, 0, 0, 0, 0, 0),
(24050, 16, -3128.31, -2913.81, 34.3355, 0, 0, 0, 0, 0),
(30450, 1, -3081.79, -2868.61, 34.6922, 0, 0, 0, 0, 0),
(30450, 2, -3074.66, -2870.62, 35.5564, 0, 0, 0, 0, 0),
(30450, 3, -3068.83, -2878.9, 39.7268, 0, 0, 0, 0, 0),
(30450, 4, -3075.73, -2879.89, 35.0886, 0, 0, 0, 0, 0),
(30450, 5, -3082.28, -2878.8, 34.1155, 0, 0, 0, 0, 0),
(30450, 6, -3090.32, -2882.07, 34.8022, 0, 0, 0, 0, 0),
(30450, 7, -3094.6, -2885.3, 35.1155, 0, 0, 0, 0, 0),
(30450, 8, -3099.95, -2890.04, 34.6797, 0, 0, 0, 0, 0),
(30450, 9, -3101.65, -2898.47, 34.4566, 0, 0, 0, 0, 0),
(30450, 10, -3100.24, -2912.59, 36.0703, 0, 0, 0, 0, 0),
(30450, 11, -3096.2, -2918.31, 40.525, 0, 0, 0, 0, 0),
(30450, 12, -3092.2, -2921.99, 42.586, 0, 0, 0, 0, 0),
(30450, 13, -3095.92, -2918.65, 40.525, 0, 0, 0, 0, 0),
(30450, 14, -3100.24, -2912.59, 36.0703, 0, 0, 0, 0, 0),
(30450, 15, -3101.64, -2898.68, 34.453, 0, 0, 0, 0, 0),
(30450, 16, -3099.95, -2890.04, 34.6797, 0, 0, 0, 0, 0),
(30450, 17, -3094.6, -2885.3, 35.1155, 0, 0, 0, 0, 0),
(30450, 18, -3090.32, -2882.07, 34.8022, 0, 0, 0, 0, 0),
(30450, 19, -3082.28, -2878.8, 34.1155, 0, 0, 0, 0, 0),
(30450, 20, -3075.73, -2879.89, 35.0886, 0, 0, 0, 0, 0),
(30450, 21, -3068.83, -2878.9, 39.7268, 0, 0, 0, 0, 0),
(30450, 22, -3074.66, -2870.62, 35.5564, 0, 0, 0, 0, 0),
(30450, 23, -3081.79, -2868.61, 34.6922, 0, 0, 0, 0, 0),
(30450, 24, -3089.66, -2871.72, 33.9905, 0, 0, 0, 0, 0);
-- Classic [1066]
-- Added support for Dark Coffer event in Blackrock Depths
-- Added missing GO (portraits and nameplates) and put them into pools
-- Fixed texts on nameplates GOs
-- Added script to spawn Dark Keepers NPCs (one per instance)
-- Added waypoints for one of the Dark Keeper
-- Prevent exploit of the Dark Coffer
-- Various fixes: flags, factions, respawn time...
-- Added missing GO spawns (Dark Keeper Nameplate and Dark Keeper Portrait)
-- Fixed spawn time
DELETE FROM gameobject WHERE guid IN (66033, 66038, 66065, 66116, 66117, 66118, 66119, 66120, 66123, 66124);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(66033, 164820, 230, 831.54, -339.529, -46.682, 0.802851, 0, 0, 0.390731, 0.920505, 3 * 60 * 60 * 1000, 100, 1),
(66038, 164821, 230, 831.54, -339.529, -46.682, 0.802851, 0, 0, 0.390731, 0.920505, 3 * 60 * 60 * 1000, 100, 1),
(66065, 164822, 230, 831.54, -339.529, -46.682, 0.802851, 0, 0, 0.390731, 0.920505, 3 * 60 * 60 * 1000, 100, 1),
(66116, 164823, 230, 831.54, -339.529, -46.682, 0.802851, 0, 0, 0.390731, 0.920505, 3 * 60 * 60 * 1000, 100, 1),
(66117, 164824, 230, 831.54, -339.529, -46.682, 0.802851, 0, 0, 0.390731, 0.920505, 3 * 60 * 60 * 1000, 100, 1),
(66118, 164818, 230, 831.471, -339.58, -46.7698, 0.820305, 0, 0, 0.398749, 0.91706, 3 * 60 * 60 * 1000, 100, 1),
(66119, 161456, 230, 831.471, -339.58, -46.7698, 0.820305, 0, 0, 0.398749, 0.91706, 3 * 60 * 60 * 1000, 100, 1),
(66120, 161457, 230, 831.471, -339.58, -46.7698, 0.820305, 0, 0, 0.398749, 0.91706, 3 * 60 * 60 * 1000, 100, 1),
(66123, 161458, 230, 831.471, -339.58, -46.7698, 0.820305, 0, 0, 0.398749, 0.91706, 3 * 60 * 60 * 1000, 100, 1),
(66124, 161459, 230, 831.471, -339.58, -46.7698, 0.820305, 0, 0, 0.398749, 0.91706, 3 * 60 * 60 * 1000, 100, 1);
UPDATE gameobject SET spawntimesecs = 3 * 60 * 60 * 1000 WHERE id IN (164825, 164819);
-- Fixed wrong flags for some of the Dark Keeper Nameplate
UPDATE gameobject_template SET flags = 0 WHERE entry IN (164820, 164821, 164822, 164823, 164824, 164825);
-- Group all the GOs into pools and pools of pools to have only one Dark Keeper per instance
DELETE FROM pool_gameobject WHERE guid IN (66033, 66038, 66065, 66116, 66117, 66118, 66119, 66120, 66123, 66124, 43130, 43131);
INSERT INTO pool_gameobject VALUES
(43130, 25485, 100 ,'Dark Keeper Nameplate'),
(43131, 25485, 100 ,'Dark Keeper Nameplate'),
(66033, 25486, 100, 'Dark Keeper Nameplate'),
(66119, 25486, 100, 'Dark Keeper Nameplate'),
(66038, 25487, 100, 'Dark Keeper Nameplate'),
(66120, 25487, 100, 'Dark Keeper Nameplate'),
(66065, 25488, 100, 'Dark Keeper Nameplate'),
(66123, 25488, 100, 'Dark Keeper Nameplate'),
(66116, 25489, 100, 'Dark Keeper Nameplate'),
(66124, 25489, 100, 'Dark Keeper Nameplate'),
(66117, 25490, 100, 'Dark Keeper Nameplate'),
(66118, 25490, 100, 'Dark Keeper Nameplate');
DELETE FROM pool_pool WHERE pool_id BETWEEN 25485 AND 25490;
INSERT INTO pool_pool VALUES
(25485, 25491, 0, 'Dark Keeper Nameplate'),
(25486, 25491, 0, 'Dark Keeper Nameplate'),
(25487, 25491, 0, 'Dark Keeper Nameplate'),
(25488, 25491, 0, 'Dark Keeper Nameplate'),
(25489, 25491, 0, 'Dark Keeper Nameplate'),
(25490, 25491, 0, 'Dark Keeper Nameplate');
DELETE FROM pool_template WHERE entry BETWEEN 25485 AND 25491;
INSERT INTO pool_template VALUES
(25485, 2, 'Dark Keeper Nameplate'),
(25486, 2, 'Dark Keeper Nameplate'),
(25487, 2, 'Dark Keeper Nameplate'),
(25488, 2, 'Dark Keeper Nameplate'),
(25489, 2, 'Dark Keeper Nameplate'),
(25490, 2, 'Dark Keeper Nameplate'),
(25491, 1, 'MASTER - Dark Keeper Nameplate');
-- Fixed the name plate texts which were using wrong text or bad line breaks
UPDATE page_text SET text = 'Vorfalk Irongourd$B$BVorfalk works the store room of the Grim Guzzler, and his sacrifice to the Dark Keepers runs deep.$B$BMay his spirit hold strong.' WHERE entry = 1431;
UPDATE page_text SET text = 'Bethek Stormbrow$B$BBethek\'s wanderings take him deep within Blackrock. The secrets of the mountain beckon him.$B$BMay his spirit never falter.' WHERE entry = 1432;
UPDATE page_text SET text = 'Uggel Hammerhand$B$BUggel is a skilled and solemn chiseler, and when not burdened with the dark key, his hands shape great works in the Hall of Crafting.' WHERE entry = 1433;
UPDATE page_text SET text = 'Zimrel Darktooth$B$BWhen the madness of the dark key takes hold of Zimrel, only the screams of the dying can soothe him.$B$BFor his sacrifice, he will always have a bench above the arena.  May our blood sports temper the rage in his heart.' WHERE entry = 1434;
UPDATE page_text SET text = 'Ofgut Stonefist$B$BThose fallen before Dark Keeper Ofgut\'s hammer cannot be counted.$B$BThe soldiers of the West Garrison bow in awe as he passes.  For who among them can look into the eyes of Ofgut and see the secrets the dark key whispers?.' WHERE entry = 1435;
UPDATE page_text SET text = 'Pelver Deepstomp$B$BDark Keeper Pelver is our most honored disciple.  He has borne the key for longer than any, and it has cost him dearly.  When he is called for his burden, he is guarded in the Domicile.$B$BHis sacrifice is cherished, and he will remain in our hearts for many years... after the darkness takes him.' WHERE entry = 1436;
-- Added script for each Dark Keeper portrait in order to spawn the respective Dark Keeper NPC and his guards
DELETE FROM dbscripts_on_go_template_use WHERE id IN (161456, 161457, 161458, 161459, 164818, 164819);
INSERT INTO dbscripts_on_go_template_use VALUES
(161456, 1, 10, 9437, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 815.276, -168.652, -49.6699, 6.23083, 'Spawn Dark Keeper Vorfalk and his guards'),
(161456, 1, 10, 9445, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 816.276, -167.652, -49.6699, 5.58505, 'Spawn Dark Keeper Vorfalk and his guards'),
(161456, 1, 10, 9445, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 817.276, -166.652, -49.6699, 4.88692, 'Spawn Dark Keeper Vorfalk and his guards'),
(161458, 1, 10, 9439, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 901.537, -359.291, -49.908, 3.31613, 'Spawn Dark Keeper Uggel and his guards'),
(161458, 1, 10, 9445, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 903.295, -356.783, -49.8522, 3.68264, 'Spawn Dark Keeper Uggel and his guards'),
(161458, 1, 10, 9445, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 902.896, -361.966, -50.0812, 2.74017, 'Spawn Dark Keeper Uggel and his guards'),
(161459, 1, 10, 9441, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 549.701, -214.474, -36.8893, 0.331613, 'Spawn Dark Keeper Zimrel and his guards'),
(161459, 1, 10, 9445, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 549.796, -217.958, -36.8654, 0.890118, 'Spawn Dark Keeper Zimrel and his guards'),
(161459, 1, 10, 9445, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 548.083, -212.932, -36.8628, 6.26573, 'Spawn Dark Keeper Zimrel and his guards'),
(164818, 1, 10, 9442, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 679.491, -7.79026, -59.9754, 1.8326, 'Spawn Dark Keeper Ofgut and his guards'),
(164818, 1, 10, 9445, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 680.491, -6.79026, -59.9754, 2.18166, 'Spawn Dark Keeper Ofgut and his guards'),
(164818, 1, 10, 9445, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 681.491, -5.79026, -59.9754, 2.58309, 'Spawn Dark Keeper Ofgut and his guards'),
(164819, 1, 10, 9443, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 802.755, -245.25, -43.2198, 2.93215, 'Spawn Dark Keeper Pelver and his guards'),
(164819, 1, 10, 9445, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 805.289, -243.172, -43.2198, 3.42085, 'Spawn Dark Keeper Pelver and his guards'),
(164819, 1, 10, 9445, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 801.935, -248.841, -43.2198, 1.95477, 'Spawn Dark Keeper Pelver and his guards'),
(161457, 1, 10, 9438, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 862.461, -309.724, -49.8757, 3.85883, 'Spawn Dark Keeper Bethek and his guards'),
(161457, 1, 10, 9445, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 863.219, -305.041, -49.8751, 3.68264, 'Spawn Dark Keeper Bethek and his guards'),
(161457, 1, 10, 9445, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 860.947, -302.54, -49.8787, 4.04916, 'Spawn Dark Keeper Bethek and his guards'),
(161457, 1, 10, 9445, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 864.232, -303.735, -49.8527, 3.735, 'Spawn Dark Keeper Bethek and his guards'),
(161457, 1, 10, 9445, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 862.676, -301.922, -49.8527, 3.9619, 'Spawn Dark Keeper Bethek and his guards');
-- Made Dark Coffer (GO 160845) usable by players only once they have open the Dark Coffer Door (GO 174565) 
DELETE FROM dbscripts_on_go_template_use WHERE id = 174565;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(174565, 0, 27, 0x08, 0, 160845, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
-- Fixed spawn time of GO 160836 (Relic Coffer): they were respawning in 10 min, making them easily exploitable
UPDATE gameobject SET spawntimesecs = 3 * 60 * 60 * 1000 WHERE id = 160836;
-- Fixed faction and movement of the Dark Keepers: they are Dark Iron Dwarves and not wolves.
-- Only NPC 9438 (Dark Keeper Bethek) should move (WP movement)
UPDATE creature_template SET FactionAlliance = 54, FactionHorde = 54, MovementType = 0 WHERE Entry IN (9437, 9445, 9439, 9441, 9442, 9443);
UPDATE creature_template SET FactionAlliance = 54, FactionHorde = 54, MovementType = 2 WHERE Entry = 9438;
UPDATE creature_template SET EquipmentTemplateId = 156 WHERE Entry = 9445;
-- Waypoints for NPC 9438 (Dark Keeper Bethek)
-- He will now spawn in the back of the player using the Nameplate and kick his/her ass
DELETE FROM creature_movement_template WHERE entry = 9438;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(9438, 1, 855.505, -309.724, -50.1398, 0, 0, 0, 0, 0),
(9438, 2, 847.214, -316.912, -50.2843, 0, 0, 0, 0, 0),
(9438, 3, 842.652, -321.334, -50.2848, 0, 0, 0, 0, 0),
(9438, 4, 839.316, -324.232, -50.6638, 0, 0, 0, 0, 0),
(9438, 5, 833.983, -329.089, -50.6638, 0, 0, 0, 0, 0),
(9438, 6, 822.84, -339.999, -50.1851, 0, 0, 0, 0, 0),
(9438, 7, 810.483, -350.225, -50.5781, 0, 0, 0, 0, 0),
(9438, 8, 806.646, -353.272, -50.1957, 0, 0, 0, 0, 0),
(9438, 9, 806.646, -353.272, -50.1957, 0, 0, 0.715585, 0, 0);
-- Linked Dark Guards with Dark Keeper Bethek: aggro and follow
DELETE FROM creature_linking_template WHERE entry = 9445;
INSERT INTO creature_linking_template VALUES
(9445, 230, 9438, 515, 20);
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
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000544, 'You will perish here. <Your mind fills with visions of chaos and destruction.>', 0, 4, 0, 0, NULL),
(2000000545, 'Leave this place. <The relic emits a white hot arc of flame. A memory has been gained: A lone Dark Iron dwarf is surrounded by seven corpses, kneeling before a monolith of flame.>', 0, 4, 0, 0, NULL),
(2000000546, 'Defiler... you will be punished for this incursion. <A symbol of flame radiates from the relic before it crumbles to the earth.>', 0, 4, 0, 0, NULL),
(2000000547, 'Help us, outsider. <The relic crumbles to dust. A vision of eight Dark Iron dwarves performing some sort of ritual fills your head.>', 0, 4, 0, 0, NULL),
(2000000548, 'Your existence is acknowledged. <The relic turns to dust. Your head throbs with newfound wisdom. Something evil lurks in the heart of the mountain.>', 0, 4, 0, 0, NULL),
(2000000549, 'Leave this place. <The relic emits a white hot arc of flame. A memory has been gained: A lone Dark Iron dwarf is surrounded by seven corpses, kneeling before a monolith of flame.>', 0, 4, 0, 0, NULL),
(2000000550, 'He cannot be defeated. <The relic burns to nothing. The memories it held are now your own. This city was destroyed by a being not of this world.>', 0, 4, 0, 0, NULL),
(2000000551, 'Do not taint these ruins, mortal. <You are engulfed in a blinding flash of light. A creature composed entirely of flame is the only thing you can remember seeing.>', 0, 4, 0, 0, NULL);
-- Classic [1062]
-- DM:N - Stomper Kreeg and Guard Mol'dar
DELETE FROM creature_movement WHERE id IN (138185, 138184);
UPDATE creature SET position_x = 491.2311, position_y = 97.38786, position_z = -2.500396, orientation = 4.031711, currentwaypoint = 0, MovementType = 0 WHERE guid = 138185;
UPDATE creature SET position_x = 410.7114, position_y = -3.150411, position_z = -24.55797, orientation = 5.288348, spawndist = 3, currentwaypoint = 0, MovementType = 1 WHERE guid = 138184;
-- Classic [1061]
-- Mauraudon - Deeprot Tangler 
UPDATE creature SET modelid = 0, position_x = 753.899, position_y = -478.24, position_z = -52.9061, orientation = 5.36458, spawndist = 0, MovementType = 2 WHERE guid = 55090;
UPDATE creature SET modelid = 0, position_x = 807.818, position_y = -373.907, position_z = -59.0394, orientation = 4.50135, spawndist = 0, MovementType = 2 WHERE guid = 54362;
UPDATE creature SET modelid = 0, position_x = 712.483, position_y = -340.126, position_z = 51.8134, orientation = 4.2224, spawndist = 0, MovementType = 2 WHERE guid = 54682;
DELETE FROM creature_movement WHERE id IN (55090, 54362, 54682);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(55090, 1, 763.721, -491.101, -52.9628, 0, 0, 0, 0, 0),
(55090, 2, 771.351, -514.9, -52.809, 0, 0, 0, 0, 0),
(55090, 3, 778.083, -526.269, -50.1292, 0, 0, 0, 0, 0),
(55090, 4, 795.591, -531.922, -46.8029, 0, 0, 0, 0, 0),
(55090, 5, 806.335, -516.47, -41.7183, 0, 0, 0, 0, 0),
(55090, 6, 803.93, -498.025, -40.1386, 0, 0, 0, 0, 0),
(55090, 7, 790.813, -490.499, -39.9062, 0, 0, 0, 0, 0),
(55090, 8, 775.956, -484.787, -40.554, 0, 0, 0, 0, 0),
(55090, 9, 771, -468.174, -41.1924, 0, 0, 0, 0, 0),
(55090, 10, 748.947, -467.97, -38.6926, 0, 0, 0, 0, 0),
(55090, 11, 733.283, -472.854, -40.6056, 0, 0, 0, 0, 0),
(55090, 12, 732.63, -485.955, -41.1771, 0, 0, 0, 0, 0),
(55090, 13, 737.17, -503.406, -41.0881, 0, 0, 0, 0, 0),
(55090, 14, 731.663, -522.193, -41.3618, 0, 0, 0, 0, 0),
(55090, 15, 743.795, -546.76, -33.0687, 0, 0, 0, 0, 0),
(55090, 16, 761.255, -559.478, -32.9473, 0, 0, 0, 0, 0),
(55090, 17, 770.305, -540.82, -36.2739, 0, 0, 0, 0, 0),
(55090, 18, 761.255, -559.478, -32.9473, 0, 0, 0, 0, 0),
(55090, 19, 743.795, -546.76, -33.0687, 0, 0, 0, 0, 0),
(55090, 20, 731.642, -522.264, -41.3582, 0, 0, 0, 0, 0),
(55090, 21, 737.17, -503.406, -41.0881, 0, 0, 0, 0, 0),
(55090, 22, 732.63, -485.955, -41.1771, 0, 0, 0, 0, 0),
(55090, 23, 733.283, -472.854, -40.6056, 0, 0, 0, 0, 0),
(55090, 24, 748.947, -467.97, -38.6926, 0, 0, 0, 0, 0),
(55090, 25, 771, -468.174, -41.1924, 0, 0, 0, 0, 0),
(55090, 26, 775.956, -484.787, -40.554, 0, 0, 0, 0, 0),
(55090, 27, 790.813, -490.499, -39.9062, 0, 0, 0, 0, 0),
(55090, 28, 803.93, -498.025, -40.1386, 0, 0, 0, 0, 0),
(55090, 29, 806.335, -516.47, -41.7183, 0, 0, 0, 0, 0),
(55090, 30, 795.591, -531.922, -46.8029, 0, 0, 0, 0, 0),
(55090, 31, 778.083, -526.269, -50.1292, 0, 0, 0, 0, 0),
(55090, 32, 771.351, -514.9, -52.809, 0, 0, 0, 0, 0),
(55090, 33, 763.721, -491.101, -52.9628, 0, 0, 0, 0, 0),
(55090, 34, 745.018, -470.13, -52.932, 0, 0, 0, 0, 0),
(54362, 1, 802.307, -399.631, -58.6786, 0, 0, 0, 0, 0),
(54362, 2, 794.326, -424.056, -53.7634, 0, 0, 0, 0, 0),
(54362, 3, 804.861, -435.457, -54.3872, 0, 0, 0, 0, 0),
(54362, 4, 828.242, -447.366, -56.3251, 0, 0, 0, 0, 0),
(54362, 5, 863.367, -424.879, -52.4803, 0, 0, 0, 0, 0),
(54362, 6, 880.127, -407.996, -51.9375, 0, 0, 0, 0, 0),
(54362, 7, 881.719, -383.418, -52.0587, 0, 0, 0, 0, 0),
(54362, 8, 870.876, -356.302, -51.9569, 0, 0, 0, 0, 0),
(54362, 9, 847.458, -345.491, -52.0496, 0, 0, 0, 0, 0),
(54362, 10, 826.787, -344.677, -51.8641, 0, 0, 0, 0, 0),
(54362, 11, 808.003, -347.446, -51.7879, 0, 0, 0, 0, 0),
(54362, 12, 775.91, -328.178, -50.0448, 0, 0, 0, 0, 0),
(54362, 13, 756.83, -326.607, -51.5775, 0, 0, 0, 0, 0),
(54362, 14, 775.91, -328.178, -50.0448, 0, 0, 0, 0, 0),
(54362, 15, 808.003, -347.446, -51.7879, 0, 0, 0, 0, 0),
(54362, 16, 826.787, -344.677, -51.8641, 0, 0, 0, 0, 0),
(54362, 17, 847.458, -345.491, -52.0496, 0, 0, 0, 0, 0),
(54362, 18, 870.876, -356.302, -51.9569, 0, 0, 0, 0, 0),
(54362, 19, 881.719, -383.418, -52.0587, 0, 0, 0, 0, 0),
(54362, 20, 880.127, -407.996, -51.9375, 0, 0, 0, 0, 0),
(54362, 21, 863.367, -424.879, -52.4803, 0, 0, 0, 0, 0),
(54362, 22, 828.242, -447.366, -56.3251, 0, 0, 0, 0, 0),
(54362, 23, 804.861, -435.457, -54.3872, 0, 0, 0, 0, 0),
(54362, 24, 794.326, -424.056, -53.7634, 0, 0, 0, 0, 0),
(54362, 25, 802.307, -399.631, -58.6786, 0, 0, 0, 0, 0),
(54362, 26, 806.3, -374.526, -59.1968, 0, 0, 0, 0, 0),
(54682, 1, 704.78, -354.567, -52.0194, 0, 0, 0, 0, 0),
(54682, 2, 688.518, -374.707, -52.0337, 0, 0, 0, 0, 0),
(54682, 3, 664.968, -367.766, -52.0194, 0, 0, 0, 0, 0),
(54682, 4, 653.587, -356.119, -52.0194, 0, 0, 0, 0, 0),
(54682, 5, 632.64, -350.617, -52.0194, 0, 0, 0, 0, 0),
(54682, 6, 619.242, -351.718, -52.0194, 0, 0, 0, 0, 0),
(54682, 7, 605.31, -377.231, -52.0194, 0, 0, 0, 0, 0),
(54682, 8, 618.102, -353.072, -52.0194, 0, 0, 0, 0, 0),
(54682, 9, 646.418, -346.681, -52.0194, 0, 0, 0, 0, 0),
(54682, 10, 656.121, -333.659, -52.0194, 0, 0, 0, 0, 0),
(54682, 11, 642.682, -309.279, -52.0213, 0, 0, 0, 0, 0),
(54682, 12, 636.873, -290.451, -52.4324, 0, 0, 0, 0, 0),
(54682, 13, 633.122, -257.915, -53.0354, 0, 0, 0, 0, 0),
(54682, 14, 631.546, -229.03, -59.214, 0, 0, 0, 0, 0),
(54682, 15, 632.252, -273.576, -53.5685, 0, 0, 0, 0, 0),
(54682, 16, 639.393, -299.352, -52.0207, 0, 0, 0, 0, 0),
(54682, 17, 649.654, -322.972, -52.0194, 0, 0, 0, 0, 0),
(54682, 18, 662.256, -329.124, -52.0194, 0, 0, 0, 0, 0),
(54682, 19, 675.187, -326.388, -52.0826, 0, 0, 0, 0, 0),
(54682, 20, 692.328, -322.362, -52.0194, 0, 0, 0, 0, 0),
(54682, 21, 709.139, -325.213, -51.851, 0, 0, 0, 0, 0),
(54682, 22, 692.328, -322.362, -52.0194, 0, 0, 0, 0, 0),
(54682, 23, 675.211, -326.383, -52.0797, 0, 0, 0, 0, 0),
(54682, 24, 662.4, -329.094, -52.0194, 0, 0, 0, 0, 0),
(54682, 25, 649.654, -322.972, -52.0194, 0, 0, 0, 0, 0),
(54682, 26, 639.393, -299.352, -52.0207, 0, 0, 0, 0, 0),
(54682, 27, 632.252, -273.576, -53.5685, 0, 0, 0, 0, 0),
(54682, 28, 631.546, -229.03, -59.214, 0, 0, 0, 0, 0),
(54682, 29, 633.122, -257.915, -53.0354, 0, 0, 0, 0, 0),
(54682, 30, 636.835, -290.33, -52.5084, 0, 0, 0, 0, 0),
(54682, 31, 642.682, -309.279, -52.0213, 0, 0, 0, 0, 0),
(54682, 32, 656.121, -333.659, -52.0194, 0, 0, 0, 0, 0),
(54682, 33, 646.418, -346.681, -52.0194, 0, 0, 0, 0, 0),
(54682, 34, 618.102, -353.072, -52.0194, 0, 0, 0, 0, 0),
(54682, 35, 605.31, -377.231, -52.0194, 0, 0, 0, 0, 0),
(54682, 36, 619.242, -351.718, -52.0194, 0, 0, 0, 0, 0),
(54682, 37, 632.64, -350.617, -52.0194, 0, 0, 0, 0, 0),
(54682, 38, 653.587, -356.119, -52.0194, 0, 0, 0, 0, 0),
(54682, 39, 664.968, -367.766, -52.0194, 0, 0, 0, 0, 0),
(54682, 40, 688.518, -374.707, -52.0337, 0, 0, 0, 0, 0),
(54682, 41, 704.78, -354.567, -52.0194, 0, 0, 0, 0, 0),
(54682, 42, 714.44, -332.152, -51.7661, 0, 0, 0, 0, 0);
-- Classic [1060]
-- Maraudon - Putridus Shadowstalker ...
UPDATE creature SET modelid = 0, position_x = 837.646, position_y = -346.113, position_z = -52.0496, orientation = 0.163293, spawndist = 0, MovementType = 2 WHERE guid = 54767;
UPDATE creature SET modelid = 0, position_x = 788.881, position_y = -336.129, position_z = -50.4012, orientation = 2.12786, spawndist = 0, MovementType = 2 WHERE guid = 54721;
UPDATE creature SET modelid = 0, position_x = 617.64, position_y = -223.231, position_z = -61.1964, orientation = 5.81495, spawndist = 0 WHERE guid = 54733;
DELETE FROM creature_movement WHERE id IN (54721, 54767, 54733);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(54721, 1, 784.514, -329.119, -50.0284, 0, 0, 0, 0, 0),
(54721, 2, 764.984, -324.438, -51.5668, 0, 0, 0, 0, 0),
(54721, 3, 749.575, -337.565, -50.711, 0, 0, 0, 0, 0),
(54721, 4, 726.619, -332.595, -50.9028, 0, 0, 0, 0, 0),
(54721, 5, 710.256, -333.295, -51.8757, 0, 0, 0, 0, 0),
(54721, 6, 689.742, -330.869, -52.1619, 0, 0, 0, 0, 0),
(54721, 7, 674.977, -327.453, -52.1277, 0, 0, 0, 0, 0),
(54721, 8, 664.431, -341.292, -52.4921, 0, 0, 0, 0, 0),
(54721, 9, 674.977, -327.453, -52.1277, 0, 0, 0, 0, 0),
(54721, 10, 689.742, -330.869, -52.1619, 0, 0, 0, 0, 0),
(54721, 11, 710.256, -333.295, -51.8757, 0, 0, 0, 0, 0),
(54721, 12, 726.619, -332.595, -50.9028, 0, 0, 0, 0, 0),
(54721, 13, 749.332, -337.513, -50.7263, 0, 0, 0, 0, 0),
(54721, 14, 764.902, -324.507, -51.5706, 0, 0, 0, 0, 0),
(54721, 15, 784.514, -329.119, -50.0284, 0, 0, 0, 0, 0),
(54721, 16, 792.5, -339.12, -51.1177, 0, 0, 0, 0, 0),
(54767, 1, 869.798, -340.816, -50.5748, 0, 0, 0, 0, 0),
(54767, 2, 882.282, -377.741, -52.0554, 0, 0, 0, 0, 0),
(54767, 3, 886.861, -419.037, -52.3727, 0, 0, 0, 0, 0),
(54767, 4, 886.861, -419.037, -52.3727, 0, 0, 0, 0, 0),
(54767, 5, 882.282, -377.741, -52.0554, 0, 0, 0, 0, 0),
(54767, 6, 869.798, -340.816, -50.5748, 0, 0, 0, 0, 0),
(54767, 7, 829.586, -349.214, -52.0311, 0, 0, 0, 0, 0),
(54733, 1, 629.567, -229.285, -59.0616, 0, 0, 0, 0, 0),
(54733, 2, 630.475, -251.076, -52.8189, 0, 0, 0, 0, 0),
(54733, 3, 635.491, -278.567, -53.5015, 0, 0, 0, 0, 0),
(54733, 4, 642.036, -307.16, -52.0211, 0, 0, 0, 0, 0),
(54733, 5, 644.665, -314.411, -52.0764, 0, 0, 0, 0, 0),
(54733, 6, 652.222, -324.701, -52.0194, 0, 0, 0, 0, 0),
(54733, 7, 650.916, -339.38, -52.0194, 0, 0, 0, 0, 0),
(54733, 8, 631.083, -348.107, -52.0194, 0, 0, 0, 0, 0),
(54733, 9, 618.584, -352.651, -52.0194, 0, 0, 0, 0, 0),
(54733, 10, 615.864, -362.478, -52.0194, 0, 0, 0, 0, 0),
(54733, 11, 601.241, -383.172, -52.0194, 0, 0, 0, 0, 0),
(54733, 12, 615.727, -362.671, -52.0194, 0, 0, 0, 0, 0),
(54733, 13, 618.584, -352.651, -52.0194, 0, 0, 0, 0, 0),
(54733, 14, 631.083, -348.107, -52.0194, 0, 0, 0, 0, 0);
-- Classic [1059]
-- correct map for 165554 (Heart of the Mountain) in Blackrock Depths.
UPDATE gameobject SET map = 230 WHERE guid = 93892;
-- Classic [1057]
-- Wandering Eye of Kilrogg
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60, HealthMultiplier = 0.1, ArmorMultiplier = 1, MinLevelHealth = 305, MaxLevelHealth = 305, MinMeleeDmg = 103.9, MaxMeleeDmg = 137.9, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3791, MeleeAttackPower = 252, RangedAttackPower = 26, MinLootGold = 0, MaxLootGold = 0, MovementType = 1 WHERE Entry = 14386; 
-- Classic [1056]
-- Quest: A Terrible Purpose
-- The item "Nature's Whisper" will be mailed to players who complete this quest. 
DELETE FROM dbscripts_on_quest_end WHERE id = 8287;
INSERT INTO dbscripts_on_quest_end (id, command, datalong, datalong2, dataint, comments) VALUES
(8287, 38, 110, 0, 86400, 'Send Mail on QuestReward');
UPDATE quest_template SET RewMailTemplateId = 0, RewMailDelaySecs = 0, CompleteScript = 8287 WHERE entry = 8287;
-- Classic [1053]
-- BRD - Redundant NPCs 
-- Should be summoned by AT-Script 1786.
DELETE FROM creature WHERE guid IN (91106, 91107);
DELETE FROM creature_addon WHERE guid IN (91106, 91107);
-- Classic [1052]
-- BRD - Fineous Darkvire - 47631
UPDATE creature SET modelid = 0, position_x = 960.0227, position_y = -340.8864, position_z = -71.45806, orientation = 5.654867, MovementType = 2 WHERE guid = 47631;
UPDATE creature_template SET movementType = 2 WHERE entry = 9056;
DELETE FROM creature_movement WHERE id = 47631;
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
DELETE FROM dbscripts_on_creature_movement WHERE id IN (905601, 905602, 905603, 905604);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(905601, 3, 1, 133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fineous Darkvire - state_usestanding_nosheathe'),
(905601, 13, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fineous Darkvire - oneshot_none'),
(905602, 3, 1, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fineous Darkvire - state_work'),
(905602, 13, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fineous Darkvire - oneshot_none'),
(905603, 1, 1, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fineous Darkvire - oneshot_kneel'),
(905604, 0, 20, 1, 3, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Fineous Darkvire - movementtype_random'),
(905604, 90, 20, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fineous Darkvire - movementtype_waypoint'); 
-- Classic [1051]
-- BRD - Weapon Technician - 47294
UPDATE creature SET modelid = 0, position_x = 753.3763, position_y = 41.77242, position_z = -53.55002, orientation = 3.071779, spawndist = 0, MovementType = 2 WHERE guid = 47294;
DELETE FROM creature_movement WHERE id = 47294;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(47294, 1, 764.5972, 45.60373, -53.73522, 0, 0, 0, 0, 0),
(47294, 2, 774.8519, 60.06964, -53.67472, 0, 0, 0, 0, 0),
(47294, 3, 774.8519, 60.06964, -53.67472, 7000, 892001, 2.251475, 0, 0),
(47294, 4, 784.5489, 54.02416, -53.73522, 0, 0, 0, 0, 0),
(47294, 5, 785.1476, 35.85176, -53.69954, 0, 0, 0, 0, 0),
(47294, 6, 776.2892, 27.4625, -53.6479, 20000, 0, 0, 0, 0),
(47294, 7, 783.7801, 14.00154, -53.69062, 0, 0, 0, 0, 0),
(47294, 8, 786.7015, -12.90366, -53.69477, 0, 0, 0, 0, 0),
(47294, 9, 784.7334, -32.3172, -53.71082, 0, 0, 0, 0, 0),
(47294, 10, 784.6624, -39.48956, -53.74002, 0, 0, 0, 0, 0),
(47294, 11, 781.2883, -46.3105, -53.74668, 60000, 0, 0, 0, 0),
(47294, 12, 778.1983, -33.92217, -53.73601, 0, 0, 0, 0, 0),
(47294, 13, 783.9739, -27.30031, -53.69369, 0, 0, 0, 0, 0),
(47294, 14, 762.94, 8.657146, -53.70293, 0, 0, 0, 0, 0),
(47294, 15, 761.0406, 41.19921, -53.69276, 0, 0, 0, 0, 0),
(47294, 16, 753.7232, 41.79961, -53.63493, 25000, 0, 0, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 892001;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(892001, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,'Weapon Technician - state_usestanding'),
(892001, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,'Weapon Technician - oneshot_none');
-- Classic [1050]
-- BRD - Weapon Technician - 90591
UPDATE creature SET modelid = 0, position_x = 771.2347, position_y = 54.82289, position_z = -53.72943, orientation = 3.631114, spawndist = 0, MovementType = 2 WHERE guid = 90591;
DELETE FROM creature_movement WHERE id = 90591;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(90591, 1, 762.993, 50.43193, -53.71109, 0, 0, 0, 0, 0),
(90591, 2, 761.4188, 29.33115, -53.62895, 0, 0, 0, 0, 0),
(90591, 3, 762.9675, 9.711073, -53.70116, 0, 0, 0, 0, 0),
(90591, 4, 769.3185, -3.635589, -53.72075, 0, 0, 0, 0, 0),
(90591, 5, 777.6145, -18.19811, -53.69268, 0, 0, 0, 0, 0),
(90591, 6, 792.4933, -18.67612, -53.638, 0, 0, 0, 0, 0),
(90591, 7, 802.6974, -9.927484, -53.67644, 0, 0, 0, 0, 0),
(90591, 8, 803.8586, 12.95672, -53.67821, 0, 0, 0, 0, 0),
(90591, 9, 803.3323, 36.05414, -53.6515, 0, 0, 0, 0, 0),
(90591, 10, 788.0638, 46.94962, -53.71598, 0, 0, 0, 0, 0),
(90591, 11, 773.9392, 57.17932, -53.70298, 0, 0, 0, 0, 0);
-- Classic [1049]
-- BRD - Weapon Technician - 90810
UPDATE creature SET modelid = 0, position_x =  808.8599, position_y = -36.32873, position_z = -53.71901, orientation = 2.305541, spawndist = 0, MovementType = 2 WHERE guid = 90810;
DELETE FROM creature_movement WHERE id = 90810;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(90810, 1, 795.791, -21.86399, -53.65269, 0, 0, 0, 0, 0),
(90810, 2, 802.4556, -8.263514, -53.68124, 0, 0, 0, 0, 0),
(90810, 3, 798.2274, 7.701714, -53.70551, 0, 0, 0, 0, 0),
(90810, 4, 781.1216, 8.112905, -53.70006, 0, 0, 0, 0, 0),
(90810, 5, 777.2592, 21.72934, -53.67865, 0, 0, 0, 0, 0),
(90810, 6, 761.2012, 22.35078, -53.64519, 0, 0, 0, 0, 0),
(90810, 7, 762.3487, 41.59404, -53.70325, 0, 0, 0, 0, 0),
(90810, 8, 799.3561, 43.34861, -53.67487, 0, 0, 0, 0, 0),
(90810, 9, 803.8307, 32.75117, -53.63648, 0, 0, 0, 0, 0),
(90810, 10, 799.3561, 43.34861, -53.67487, 0, 0, 0, 0, 0),
(90810, 11, 762.3487, 41.59404, -53.70325, 0, 0, 0, 0, 0),
(90810, 12, 761.2012, 22.35078, -53.64519, 0, 0, 0, 0, 0),
(90810, 13, 777.2592, 21.72934, -53.67865, 0, 0, 0, 0, 0),
(90810, 14, 781.1216, 8.112905, -53.70006, 0, 0, 0, 0, 0),
(90810, 15, 798.2274, 7.701714, -53.70551, 0, 0, 0, 0, 0),
(90810, 16, 802.4556, -8.263514, -53.68124, 0, 0, 0, 0, 0),
(90810, 17, 795.791, -21.86399, -53.65269, 0, 0, 0, 0, 0),
(90810, 18, 813.2817, -40.84308, -53.73804, 0, 0, 0, 0, 0);
-- Classic [1048]
-- BRD - Warbringer Construct - 47716
UPDATE creature SET position_x = 953.696, position_y = -333.891, position_z = -71.658, orientation = 5.45262, spawndist = 0 WHERE guid = 47716;
DELETE FROM creature_movement WHERE id = 47716;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(47716, 1, 966.938, -348.388, -71.7394, 0, 0, 0, 0, 0),
(47716, 2, 983.848, -364.54, -65.9521, 0, 0, 0, 0, 0),
(47716, 3, 971.354, -385.583, -61.7422, 0, 0, 0, 0, 0),
(47716, 4, 959.036, -399.658, -60.8377, 0, 0, 0, 0, 0),
(47716, 5, 941.767, -415.445, -55.1021, 0, 0, 0, 0, 0),
(47716, 6, 918.571, -399.838, -49.4846, 0, 0, 0, 0, 0),
(47716, 7, 899.659, -377.061, -49.9357, 0, 0, 0, 0, 0),
(47716, 8, 918.571, -399.838, -49.4846, 0, 0, 0, 0, 0),
(47716, 9, 941.767, -415.445, -55.1021, 0, 0, 0, 0, 0),
(47716, 10, 959.036, -399.658, -60.8377, 0, 0, 0, 0, 0),
(47716, 11, 971.295, -385.683, -61.6674, 0, 0, 0, 0, 0),
(47716, 12, 983.899, -364.589, -65.9473, 0, 0, 0, 0, 0),
(47716, 13, 967.006, -348.462, -71.711, 0, 0, 0, 0, 0),
(47716, 14, 951.51, -331.141, -71.7394, 0, 0, 0, 0, 0); 
-- Classic [1047]
-- BRD - Blazing Fireguard - 47795
UPDATE creature SET modelid = 0, position_x = 543.279, position_y = 31.168, position_z = -70.6287, spawndist = 0 WHERE guid = 47795;
DELETE FROM creature_movement WHERE id = 47795;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(47795, 1, 559.336, 25.6248, -70.9375, 0, 0, 0, 0, 0),
(47795, 2, 585.917, 30.7769, -71.5727, 0, 0, 0, 0, 0),
(47795, 3, 593.018, 17.1292, -72.0339, 0, 0, 0, 0, 0),
(47795, 4, 574.099, 8.61546, -70.391, 0, 0, 0, 0, 0),
(47795, 5, 558.878, 15.2068, -70.477, 0, 0, 0, 0, 0),
(47795, 6, 543.641, 12.3111, -70.38, 0, 0, 0, 0, 0),
(47795, 7, 532.831, 13.9816, -70.7128, 0, 0, 0, 0, 0),
(47795, 8, 527.879, 24.4454, -70.8921, 0, 0, 0, 0, 0),
(47795, 9, 541.627, 30.8387, -70.7471, 0, 0, 0, 0, 0); 
-- Classic [1046]
-- BRD - Blazing Fireguard - 47793
UPDATE creature SET modelid = 0, position_x = 698.705, position_y = -112.313, position_z = -71.5597, orientation = 2.35222, spawndist = 0, MovementType = 2 WHERE guid = 47793;
DELETE FROM creature_movement WHERE id = 47793;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(47793, 1, 676.798, -90.2307, -71.3314, 0, 0, 0, 0, 0),
(47793, 2, 648.377, -55.4042, -73.2871, 0, 0, 0, 0, 0),
(47793, 3, 633.829, -22.9795, -73.2442, 0, 0, 0, 0, 0),
(47793, 4, 615.686, 24.084, -73.6782, 0, 0, 0, 0, 0),
(47793, 5, 637.238, 62.4306, -73.2463, 0, 0, 0, 0, 0),
(47793, 6, 658.546, 104.195, -73.2762, 0, 0, 0, 0, 0),
(47793, 7, 656.38, 138.719, -73.314, 0, 0, 0, 0, 0),
(47793, 8, 666.779, 156.764, -73.2472, 0, 0, 0, 0, 0),
(47793, 9, 670.164, 186.106, -72.2097, 0, 0, 0, 0, 0),
(47793, 10, 666.779, 156.764, -73.2472, 0, 0, 0, 0, 0),
(47793, 11, 656.38, 138.719, -73.314, 0, 0, 0, 0, 0),
(47793, 12, 658.546, 104.195, -73.2762, 0, 0, 0, 0, 0),
(47793, 13, 637.238, 62.4306, -73.2463, 0, 0, 0, 0, 0),
(47793, 14, 615.686, 24.084, -73.6782, 0, 0, 0, 0, 0),
(47793, 15, 633.829, -22.9795, -73.2442, 0, 0, 0, 0, 0),
(47793, 16, 648.268, -55.2706, -73.3191, 0, 0, 0, 0, 0),
(47793, 17, 676.798, -90.2307, -71.3314, 0, 0, 0, 0, 0),
(47793, 18, 697.865, -114.558, -71.6739, 0, 0, 0, 0, 0);
-- Classic [1045]
-- BRD - Blazing Fireguard - 45868 
UPDATE creature SET modelid = 0, position_x = 722.875, position_y = 171.915, position_z = -71.9736, orientation = 4.0795, spawndist = 0 WHERE guid = 45868;
DELETE FROM creature_movement WHERE id = 45868;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(45868, 1, 709.072, 153.098, -72.1472, 0, 0, 0, 0, 0),
(45868, 2, 684.26, 141.267, -73.0777, 0, 0, 0, 0, 0),
(45868, 3, 672.939, 126.329, -73.3347, 0, 0, 0, 0, 0),
(45868, 4, 646.748, 121.308, -73.2764, 0, 0, 0, 0, 0),
(45868, 5, 626.573, 87.8224, -73.245, 0, 0, 0, 0, 0),
(45868, 6, 615.804, 54.5907, -73.2435, 0, 0, 0, 0, 0),
(45868, 7, 626.423, 31.1992, -73.9867, 0, 0, 0, 0, 0),
(45868, 8, 641.05, -2.70842, -73.2486, 0, 0, 0, 0, 0),
(45868, 9, 654.979, -23.1092, -73.2679, 0, 0, 0, 0, 0),
(45868, 10, 661.686, -38.4629, -73.3256, 0, 0, 0, 0, 0),
(45868, 11, 688.575, -56.3307, -72.5608, 0, 0, 0, 0, 0),
(45868, 12, 723.935, -91.0813, -71.6334, 0, 0, 0, 0, 0),
(45868, 13, 688.575, -56.3307, -72.5608, 0, 0, 0, 0, 0),
(45868, 14, 661.686, -38.4629, -73.3256, 0, 0, 0, 0, 0),
(45868, 15, 654.979, -23.1092, -73.2679, 0, 0, 0, 0, 0),
(45868, 16, 641.05, -2.70842, -73.2486, 0, 0, 0, 0, 0),
(45868, 17, 626.423, 31.1992, -73.9867, 0, 0, 0, 0, 0),
(45868, 18, 615.804, 54.5907, -73.2435, 0, 0, 0, 0, 0),
(45868, 19, 626.573, 87.8224, -73.245, 0, 0, 0, 0, 0),
(45868, 20, 646.748, 121.308, -73.2764, 0, 0, 0, 0, 0),
(45868, 21, 672.939, 126.329, -73.3347, 0, 0, 0, 0, 0),
(45868, 22, 684.26, 141.267, -73.0777, 0, 0, 0, 0, 0),
(45868, 23, 709.072, 153.098, -72.1472, 0, 0, 0, 0, 0),
(45868, 24, 723.607, 172.848, -72.049, 0, 0, 0, 0, 0);
-- Classic [1044]
-- BRD - Fireguard - 47836
UPDATE creature SET modelid = 0, position_x = 614.934, position_y = -57.1995, position_z = -59.9881, orientation = 2.23727, spawndist = 0 WHERE guid = 47836;
DELETE FROM creature_movement WHERE id = 47836;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(47836, 1, 608.582, -49.123, -60.0567, 0, 0, 0, 0, 0),
(47836, 2, 583.026, -48.0046, -60.0359, 0, 0, 0, 0, 0),
(47836, 3, 569.448, -59.0047, -60.0201, 0, 0, 0, 0, 0),
(47836, 4, 575.228, -61.9547, -60.0105, 0, 0, 0, 0, 0),
(47836, 5, 595.55, -62.0733, -52.0719, 0, 0, 0, 0, 0),
(47836, 6, 595.334, -81.3019, -45.4656, 0, 0, 0, 0, 0),
(47836, 7, 594.804, -104.408, -45.4327, 0, 0, 0, 0, 0),
(47836, 8, 595.334, -81.3019, -45.4656, 0, 0, 0, 0, 0),
(47836, 9, 595.55, -62.0733, -52.0719, 0, 0, 0, 0, 0),
(47836, 10, 575.228, -61.9547, -60.0105, 0, 0, 0, 0, 0),
(47836, 11, 569.448, -59.0047, -60.0201, 0, 0, 0, 0, 0),
(47836, 12, 583.026, -48.0046, -60.0359, 0, 0, 0, 0, 0),
(47836, 13, 608.582, -49.123, -60.0567, 0, 0, 0, 0, 0),
(47836, 14, 619.276, -60.7888, -60.0573, 0, 0, 0, 0, 0);
-- Classic [1043]
-- BRD - Fireguard - 45943
UPDATE creature SET modelid = 0, position_x = 699.724, position_y = -128.184, position_z = -45.6961, orientation = 3.9079, spawndist = 0 WHERE guid = 45943;
DELETE FROM creature_movement WHERE id = 45943;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(45943, 1, 682.134, -145.115, -46.2337, 0, 0, 0, 0, 0),
(45943, 2, 652.99, -131.139, -46.2337, 0, 0, 0, 0, 0),
(45943, 3, 626.382, -119.613, -46.2041, 0, 0, 0, 0, 0),
(45943, 4, 625.212, -88.7561, -45.9408, 0, 0, 0, 0, 0),
(45943, 5, 587.486, -89.0767, -45.4716, 0, 0, 0, 0, 0),
(45943, 6, 582.532, -72.8387, -45.4674, 0, 0, 0, 0, 0),
(45943, 7, 587.486, -89.0767, -45.4716, 0, 0, 0, 0, 0),
(45943, 8, 625.212, -88.7561, -45.9408, 0, 0, 0, 0, 0),
(45943, 9, 626.382, -119.613, -46.2041, 0, 0, 0, 0, 0),
(45943, 10, 652.99, -131.139, -46.2337, 0, 0, 0, 0, 0),
(45943, 11, 682.134, -145.115, -46.2337, 0, 0, 0, 0, 0),
(45943, 12, 700.327, -127.72, -45.7609, 0, 0, 0, 0, 0);
-- Classic [1042]
-- BRD - Fireguard Destroyer - 90728
UPDATE creature SET modelid = 0, position_x = 754.091, position_y = -73.9451, position_z = -46.2159, orientation = 0.84735, spawndist = 0 WHERE guid = 90728;
DELETE FROM creature_movement WHERE id = 90728;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(90728, 1, 761.283, -65.8021, -46.2337, 0, 0, 0, 0, 0),
(90728, 2, 762.053, -59.3832, -46.2337, 0, 0, 0, 0, 0),
(90728, 3, 740.873, -15.4984, -46.2337, 0, 0, 0, 0, 0),
(90728, 4, 733.056, -6.43943, -46.1815, 0, 0, 0, 0, 0),
(90728, 5, 710.789, -8.89487, -45.9405, 0, 0, 0, 0, 0),
(90728, 6, 706.555, 13.0863, -45.5852, 0, 0, 0, 0, 0),
(90728, 7, 710.562, 22.7446, -45.4594, 0, 0, 0, 0, 0),
(90728, 8, 696.138, 34.8861, -45.467, 0, 0, 0, 0, 0),
(90728, 9, 691.576, 46.4976, -45.467, 0, 0, 0, 0, 0),
(90728, 10, 696.138, 34.8861, -45.467, 0, 0, 0, 0, 0),
(90728, 11, 710.562, 22.7446, -45.4594, 0, 0, 0, 0, 0),
(90728, 12, 706.555, 13.0863, -45.5852, 0, 0, 0, 0, 0),
(90728, 13, 710.789, -8.89487, -45.9405, 0, 0, 0, 0, 0),
(90728, 14, 733.056, -6.43943, -46.1815, 0, 0, 0, 0, 0),
(90728, 15, 740.873, -15.4984, -46.2337, 0, 0, 0, 0, 0),
(90728, 16, 762.053, -59.3832, -46.2337, 0, 0, 0, 0, 0),
(90728, 17, 761.283, -65.8021, -46.2337, 0, 0, 0, 0, 0),
(90728, 18, 747.48, -80.9312, -46.2337, 0, 0, 0, 0, 0);
-- Classic [1041]
-- BRD - Fireguard Destroyer - 47738
UPDATE creature SET modelid = 0, position_x = 562.103, position_y = -282.939, position_z = -43.1013, orientation = 0.00912, spawndist = 0, MovementType = 2 WHERE guid = 47738;
DELETE FROM creature_movement WHERE id = 47738;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(47738, 1, 595.023, -282.501, -43.1034, 0, 0, 0, 0, 0),
(47738, 2, 633.051, -282.096, -43.2186, 0, 0, 0, 0, 0),
(47738, 3, 653.19, -284.079, -43.1904, 0, 0, 0, 0, 0),
(47738, 4, 688.829, -280.882, -43.1993, 0, 0, 0, 0, 0),
(47738, 5, 724.116, -276.83, -42.8501, 0, 0, 0, 0, 0),
(47738, 6, 688.829, -280.882, -43.1993, 0, 0, 0, 0, 0),
(47738, 7, 653.19, -284.079, -43.1904, 0, 0, 0, 0, 0),
(47738, 8, 633.051, -282.096, -43.2186, 0, 0, 0, 0, 0),
(47738, 9, 595.023, -282.501, -43.1034, 0, 0, 0, 0, 0),
(47738, 10, 560.518, -281.275, -43.1014, 0, 0, 0, 0, 0);
-- Classic [1040]
-- BRD - Blazing Fireguard - 90828 
UPDATE creature SET modelid = 0, position_x = 861.324, position_y = -258.804, position_z = -49.8696, orientation = 4.42832, spawndist = 0, MovementType = 2 WHERE guid = 90828;
DELETE FROM creature_movement WHERE id = 90828;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(90828, 1, 854.438, -282.389, -49.934, 0, 0, 0, 0, 0),
(90828, 2, 861.951, -299.681, -49.936, 0, 0, 0, 0, 0),
(90828, 3, 871.463, -303.62, -49.936, 0, 0, 0, 0, 0),
(90828, 4, 883.993, -313.336, -49.936, 0, 0, 0, 0, 0),
(90828, 5, 898.929, -313.426, -49.936, 0, 0, 0, 0, 0),
(90828, 6, 896.321, -334.966, -49.7995, 0, 0, 0, 0, 0),
(90828, 7, 894.078, -359.278, -49.9362, 0, 0, 0, 0, 0),
(90828, 8, 896.321, -334.966, -49.7995, 0, 0, 0, 0, 0),
(90828, 9, 898.929, -313.426, -49.936, 0, 0, 0, 0, 0),
(90828, 10, 883.993, -313.336, -49.936, 0, 0, 0, 0, 0),
(90828, 11, 871.463, -303.62, -49.936, 0, 0, 0, 0, 0),
(90828, 12, 861.951, -299.681, -49.936, 0, 0, 0, 0, 0),
(90828, 13, 854.474, -282.47, -49.936, 0, 0, 0, 0, 0),
(90828, 14, 860.654, -258.971, -49.971, 0, 0, 0, 0, 0);
-- Classic [1039]
-- Maraudon - Spirit of Maraudos
UPDATE creature SET modelid = 0, position_x = 736.248, position_y = -456.79, position_z = -52.8932, orientation = 5.40292, spawndist = 0, currentwaypoint = 0, MovementType = 2 WHERE id = 12242;
UPDATE creature_template SET movementType = 2 WHERE entry = 12242;
DELETE FROM creature_movement WHERE id = 12242;
DELETE FROM creature_movement_template WHERE entry = 12242;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(12242,1, 755.9363, -480.6198, -52.90856, 0, 0, 0, 0, 0),
(12242,2, 769.3544, -505.1759, -52.85908, 0, 0, 0, 0, 0),
(12242,3, 784.3037, -508.379, -53.0263, 0, 0, 0, 0, 0),
(12242,4, 801.0869, -492.0177, -53.81177, 0, 0, 0, 0, 0),
(12242,5, 814.9312, -484.2513, -55.0167, 0, 0, 0, 0, 0),
(12242,6, 822.5286, -461.7411, -56.28494, 0, 0, 0, 0, 0),
(12242,7, 828.3035, -448.5358, -56.35105, 0, 0, 0, 0, 0),
(12242,8, 793.596, -424.0394, -53.79723, 0, 0, 0, 0, 0),
(12242,9, 829.3204, -448.1856, -56.35316, 0, 0, 0, 0, 0),
(12242,10, 862.0096, -424.002, -52.43996, 0, 0, 0, 0, 0),
(12242,11, 886.9448, -405.5167, -52.09523, 0, 0, 0, 0, 0),
(12242,12, 880.3082, -369.967, -52.04964, 0, 0, 0, 0, 0),
(12242,13, 856.7214, -349.8064, -52.04964, 0, 0, 0, 0, 0),
(12242,14, 826.5951, -346.6646, -51.92785, 0, 0, 0, 0, 0),
(12242,15, 807.8654, -346.475, -51.7706, 0, 0, 0, 0, 0),
(12242,16, 775.6643, -328.4655, -50.0463, 0, 0, 0, 0, 0),
(12242,17, 756.8548, -327.6703, -51.55397, 0, 0, 0, 0, 0),
(12242,18, 745.7422, -340.5418, -50.73648, 0, 0, 0, 0, 0),
(12242,19, 718.0483, -329.1714, -51.41955, 0, 0, 0, 0, 0),
(12242,20, 704.3214, -351.085, -52.00996, 0, 0, 0, 0, 0),
(12242,21, 690.3201, -374.0625, -52.06044, 0, 0, 0, 0, 0),
(12242,22, 655.8417, -358.8916, -52.05203, 0, 0, 0, 0, 0),
(12242,23, 642.3574, -347.1523, -52.01936, 0, 0, 0, 0, 0),
(12242,24, 620.6495, -351.6401, -52.01936, 0, 0, 0, 0, 0),
(12242,25, 608.4368, -379.101, -52.01936, 0, 0, 0, 0, 0),
(12242,26, 620.1765, -351.2938, -52.01936, 0, 0, 0, 0, 0),
(12242,27, 650.0255, -343.3729, -52.01936, 0, 0, 0, 0, 0),
(12242,28, 646.0782, -315.0015, -52.0653, 0, 0, 0, 0, 0),
(12242,29, 634.4776, -286.2214, -52.94971, 0, 0, 0, 0, 0),
(12242,30, 633.8284, -260.07, -53.10785, 0, 0, 0, 0, 0),
(12242,31, 629.4022, -228.5276, -59.41068, 0, 0, 0, 0, 0),
(12242,32, 633.8284, -260.07, -53.10785, 0, 0, 0, 0, 0),
(12242,33, 634.4776, -286.2214, -52.94971, 0, 0, 0, 0, 0),
(12242,34, 646.0782, -315.0015, -52.0653, 0, 0, 0, 0, 0),
(12242,35, 650.0255, -343.3729, -52.01936, 0, 0, 0, 0, 0),
(12242,36, 620.1765, -351.2938, -52.01936, 0, 0, 0, 0, 0),
(12242,37, 608.4368, -379.101, -52.01936, 0, 0, 0, 0, 0),
(12242,38, 620.6495, -351.6401, -52.01936, 0, 0, 0, 0, 0),
(12242,39, 642.3574, -347.1523, -52.01936, 0, 0, 0, 0, 0),
(12242,40, 655.8417, -358.8916, -52.05203, 0, 0, 0, 0, 0),
(12242,41, 690.3201, -374.0625, -52.06044, 0, 0, 0, 0, 0),
(12242,42, 704.3214, -351.085, -52.00996, 0, 0, 0, 0, 0),
(12242,43, 718.0483, -329.1714, -51.41955, 0, 0, 0, 0, 0),
(12242,44, 745.7422, -340.5418, -50.73648, 0, 0, 0, 0, 0),
(12242,45, 756.8548, -327.6703, -51.55397, 0, 0, 0, 0, 0),
(12242,46, 775.6643, -328.4655, -50.0463, 0, 0, 0, 0, 0),
(12242,47, 807.8654, -346.475, -51.7706, 0, 0, 0, 0, 0),
(12242,48, 826.327, -346.6367, -51.91992, 0, 0, 0, 0, 0),
(12242,49, 856.7214, -349.8064, -52.04964, 0, 0, 0, 0, 0),
(12242,50, 880.3082, -369.967, -52.04964, 0, 0, 0, 0, 0),
(12242,51, 886.9448, -405.5167, -52.09523, 0, 0, 0, 0, 0),
(12242,52, 862.0096, -424.002, -52.43996, 0, 0, 0, 0, 0),
(12242,53, 829.3204, -448.1856, -56.35316, 0, 0, 0, 0, 0),
(12242,54, 793.596, -424.0394, -53.79723, 0, 0, 0, 0, 0),
(12242,55, 828.3035, -448.5358, -56.35105, 0, 0, 0, 0, 0),
(12242,56, 822.5286, -461.7411, -56.28494, 0, 0, 0, 0, 0),
(12242,57, 814.9387, -484.2289, -55.03092, 0, 0, 0, 0, 0),
(12242,58, 801.0869, -492.0177, -53.81177, 0, 0, 0, 0, 0),
(12242,59, 784.3037, -508.379, -53.0263, 0, 0, 0, 0, 0),
(12242,60, 769.3544, -505.1759, -52.85908, 0, 0, 0, 0, 0),
(12242,61, 755.9363, -480.6198, -52.90856, 0, 0, 0, 0, 0),
(12242,62, 736.6956, -455.5942, -52.88465, 0, 0, 0, 0, 0);

-- UDB_234
-- Warbringer Construct 8905
-- UnitFlags corrected
-- Not-selectable 0x2000000 & not_attackable 0x100 - are added only for 4 of them in Black Vault by aura 
UPDATE creature_template SET UnitFlags = 64 WHERE Entry = 8905;

-- UDB_235
-- Blue Sky Logging Grounds
-- q.12288 'Overwhelmed!' -- horde
DELETE FROM dbscripts_on_spell WHERE id = 48812;
-- q.12296 'Life or Death' -- Alliance
DELETE FROM dbscripts_on_spell WHERE id = 48845;
-- Wounded Skirmisher & Wounded Westfall Infantry - they're wounded - not aggressive
UPDATE creature_template SET UnitFlags = 512 WHERE Entry IN (27463,27482);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27463);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27482);
DELETE FROM creature_template_addon WHERE entry IN (27463,27482);
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(27463,0,8,1,1,0,0,NULL),
(27482,0,8,1,1,0,0,NULL);
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 104181;
UPDATE creature SET spawntimesecs = 120 WHERE id = 27463;
UPDATE creature SET spawntimesecs = 120 WHERE id = 27482;
-- missing spawns
-- Wounded Skirmisher 
DELETE FROM creature  WHERE guid BETWEEN 44340 AND 44347;
DELETE FROM creature_addon WHERE guid BETWEEN 44340 AND 44347;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(44340,27463,571,1,1,0,0,4142.41,-3019.99,285.239,3.23352,120,0,0,9940,0,0,0),
(44341,27463,571,1,1,0,0,4017.43,-2833.86,279.32,1.8778,120,0,0,9940,0,0,0),
-- Wounded Westfall Infantry
(44342,27482,571,1,1,0,0,4207.22,-3003.51,282.771,3.17932,120,0,0,9940,3387,0,0),
(44343,27482,571,1,1,0,0,4126.14,-2944.9,282.311,2.51947,120,0,0,9940,3387,0,0),
(44344,27482,571,1,1,0,0,4091.4,-2861.47,283.9,2.32936,120,0,0,10282,3466,0,0),
(44345,27482,571,1,1,0,0,4169.54,-2904.81,281.763,4.55053,120,0,0,10282,3466,0,0),
(44346,27482,571,1,1,0,0,4231.25,-2966.08,282.449,4.43822,120,0,0,9940,3387,0,0),
-- Broken-down Shredder
(44347,27354,571,1,1,0,0,4098.64,-2829.87,285.394,3.65989,25,0,0,4920,0,0,0);
-- missing pool added
DELETE FROM pool_creature WHERE guid = 44347 AND pool_entry = 25481;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(44347,25481,0,'Grizzly Hills - Broken-down Shredder - Pool 5');
-- correct MovementType will be set by quest script
-- Wounded Skirmisher -- #14
DELETE FROM creature_movement WHERE id IN (44340,44341,102453,102469,102464,102466,102454,102462,102459,102461,102455,102460,102467,102456,44346,44342,104181,104190,44345,44343,104185,104187,44344,104188,104189,104184,104182); 
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(44340, 1, 4142.41,-3019.99,285.239, 2000, 2746301, 3.23352, 0, 0),
(44340, 2, 4184.81,-2908.39,280.222, 2000, 2746302, 0, 0, 0),
(44341, 1, 4017.43,-2833.86,279.32, 2000, 2746301, 1.8778, 0, 0),
(44341, 2, 4184.81,-2908.39,280.222, 2000, 2746302, 0, 0, 0),
(102453, 1, 4230.5,-2982.41,283.434, 2000, 2746301, 0.38631, 0, 0),
(102453, 2, 4184.81,-2908.39,280.222, 2000, 2746302, 0, 0, 0),
(102469, 1, 4183.3,-2934.44,283.114, 2000, 2746301, 5.63741, 0, 0),
(102469, 2, 4184.81,-2908.39,280.222, 2000, 2746302, 0, 0, 0),
(102464, 1, 4167.19,-2968.62,283.27, 2000, 2746301, -1.79852, 0, 0),
(102464, 2, 4184.81,-2908.39,280.222, 2000, 2746302, 0, 0, 0),
(102466, 1, 4142.65,-2919.83,281.385, 2000, 2746301, -1.21211, 0, 0),
(102466, 2, 4184.81,-2908.39,280.222, 2000, 2746302, 0, 0, 0),
(102454, 1, 4110.93,-2883.57,280.429, 2000, 2746301, 5.37592, 0, 0),
(102454, 2, 4184.81,-2908.39,280.222, 2000, 2746302, 0, 0, 0),
(102462, 1, 4074.38,-2940.38,276.122, 2000, 2746301, -0.252544, 0, 0),
(102462, 2, 4184.81,-2908.39,280.222, 2000, 2746302, 0, 0, 0),
(102459, 1, 4073.33,-2906.89,278.332, 2000, 2746301, 6.10865, 0, 0),
(102459, 2, 4184.81,-2908.39,280.222, 2000, 2746302, 0, 0, 0),
(102461, 1, 4071.18,-2886.01,281.6, 2000, 2746301, 5.8294, 0, 0),
(102461, 2, 4184.81,-2908.39,280.222, 2000, 2746302, 0, 0, 0),
(102455, 1, 4123.8,-2835.11,284.196, 2000, 2746301, 0.610865, 0, 0),
(102455, 2, 4184.81,-2908.39,280.222, 2000, 2746302, 0, 0, 0),
(102460, 1, 4085.95,-2846.31,286.589, 2000, 2746301, 2.94961, 0, 0),
(102460, 2, 4184.81,-2908.39,280.222, 2000, 2746302, 0, 0, 0),
(102467, 1, 4057.32,-2822.2,288.962, 2000, 2746301, 3.4383, 0, 0),
(102467, 2, 4184.81,-2908.39,280.222, 2000, 2746302, 0, 0, 0),
(102456, 1, 4000.98,-2847.93,273.325, 2000, 2746301, 6.03884, 0, 0),
(102456, 2, 4184.81,-2908.39,280.222, 2000, 2746302, 0, 0, 0),
-- Wounded Westfall Infantry -- #
(44346, 1, 4231.25,-2966.08,282.449, 2000, 2748201, 4.43822, 0, 0),
(44346, 2, 4044.81,-2938.7,275.457, 2000, 2748202, 0, 0, 0),
(44342, 1, 4207.22,-3003.51,282.771, 2000, 2748201, 3.17932, 0, 0),
(44342, 2, 4044.81,-2938.7,275.457, 2000, 2748202, 0, 0, 0),
(104190, 1, 4184.69,-2980.58,284.83, 2000, 2748201, 3.54302, 0, 0),
(104190, 2, 4044.81,-2938.7,275.457, 2000, 2748202, 0, 0, 0),
(104181, 1, 4173.72,-2932.61,283.362, 2000, 2748201, 2.76104, 0, 0),
(104181, 2, 4044.81,-2938.7,275.457, 2000, 2748202, 0, 0, 0),
(44345, 1, 4169.54,-2904.81,281.763, 2000, 2748201, 4.55053, 0, 0),
(44345, 2, 4044.81,-2938.7,275.457, 2000, 2748202, 0, 0, 0),
(44343, 1, 4126.14,-2944.9,282.311, 2000, 2748201, 2.51947, 0, 0),
(44343, 2, 4044.81,-2938.7,275.457, 2000, 2748202, 0, 0, 0),
(104185, 1, 4096.38,-2901.66,280.065, 2000, 2748201, 0.942478, 0, 0),
(104185, 2, 4044.81,-2938.7,275.457, 2000, 2748202, 0, 0, 0),
(104187, 1, 4065.72,-2897.43,280.652, 2000, 2748201, 4.41568, 0, 0),
(104187, 2, 4044.81,-2938.7,275.457, 2000, 2748202, 0, 0, 0),
(44344, 1, 4091.4,-2861.47,283.9, 2000, 2748201, 2.32936, 0, 0),
(44344, 2, 4044.81,-2938.7,275.457, 2000, 2748202, 0, 0, 0),
(104189, 1, 4118.52,-2838.18,285.096, 2000, 2748201, 0.872665, 0, 0),
(104189, 2, 4044.81,-2938.7,275.457, 2000, 2748202, 0, 0, 0),
(104188, 1, 4086.66,-2822.89,287.166, 2000, 2748201, 1.62316, 0, 0),
(104188, 2, 4044.81,-2938.7,275.457, 2000, 2748202, 0, 0, 0),
(104184, 1, 4061.91,-2848.54,285.016, 2000, 2748201, 3.76991, 0, 0),
(104184, 2, 4044.81,-2938.7,275.457, 2000, 2748202, 0, 0, 0),
(104182, 1, 3995.66,-2843.98,272.487, 2000, 2748201, 0.122173, 0, 0),
(104182, 2, 4044.81,-2938.7,275.457, 2000, 2748202, 0, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2746301,2746302);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2746301,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2746301,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2746302,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
(2746302,2,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn');
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2748201,2748202);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2748201,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2748201,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2748202,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
(2748202,2,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn');

-- UDB_236
-- Spawn of Dimensius
-- must be able to cast channeling spell on his master.
UPDATE creature_template SET MovementType = 0 WHERE entry = 21780;

-- UDB_237
-- Weegli Blastfuse - Script Update 
-- Ukorz Sandscalp can yell without any error.
UPDATE dbscripts_on_creature_movement SET search_radius = 37996, data_flags = 0x10 WHERE id = 760713 and delay = 5;

-- UDB_238
-- script targets for spell 53110
DELETE FROM spell_script_target WHERE entry = 53110;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES 
(53110, 1, 29102, 0),
(53110, 1, 29103, 0);

-- UDB_239
-- q.11690 'Bring 'Em Back Alive'
-- quest has time limit = 10min
UPDATE quest_template SET LimitTime = 600 WHERE entry = 11690;
-- Kodo update
UPDATE creature_template_spells SET spell1 = 45876, spell2 = 45877 WHERE entry = 25596;
UPDATE creature_template_addon SET auras = 45771 WHERE entry = 25596;
-- script targets for spell 45877
DELETE FROM spell_script_target WHERE entry = 45877;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES 
(45877, 1, 25596, 0);
DELETE FROM dbscripts_on_spell WHERE id = 45877;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(45877,1,15,48203,0,0,0,0,0,0,0,0,0,0,0,0,''),
(45877,5,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_spell WHERE id = 48204;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(48204,1,14,45875,0,0,0,0,0,0,0,0,0,0,0,0,''),
(48204,1,0,0,0,0,0,0x04,2000000554,2000000555,2000000556,2000000557,0,0,0,0,''),
(48204,4,0,0,0,25607,138494,0x10,2000000552,2000000553,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000552 AND 2000000557;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000552,'Great job!',0,0,0,71,NULL),
(2000000553,'YES! It worked!',0,0,0,71,NULL),
(2000000554,'One more beast saved from certain death!',0,0,0,0,NULL),
(2000000555,'Here\'s your kodo, Torp!',0,0,0,0,NULL),
(2000000556,'Door-to-door kodo delivery!',0,0,0,0,NULL),
(2000000557,'Delivered as promised, Torp!',0,0,0,0,NULL);

-- UDB_240
-- q.11676 'Merciful Freedom'
-- Scourge Prisoner
UPDATE creature SET spawntimesecs = 120 WHERE id = 25610;
DELETE FROM dbscripts_on_go_template_use WHERE id IN (187854,187855,187856,187857,187858,187859,187860,187861,187862,187863,187864,187865,187866,187867,187868,187870,187871,187872,187873,187874);
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 187854
(187854,1,0,0,0,25610,20,7,2000000558,2000000559,2000000560,2000000561,0,0,0,0,'random say'),
(187854,2,8,25610,0,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(187854,2,18,3000,0,25610,20,7,0,0,0,0,0,0,0,0,'desp'),
-- 187855
(187855,1,0,0,0,25610,20,7,2000000558,2000000559,2000000560,2000000561,0,0,0,0,'random say'),
(187855,2,8,25610,0,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(187855,2,18,3000,0,25610,20,7,0,0,0,0,0,0,0,0,'desp'),
-- 187856
(187856,1,0,0,0,25610,20,7,2000000558,2000000559,2000000560,2000000561,0,0,0,0,'random say'),
(187856,2,8,25610,0,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(187856,2,18,3000,0,25610,20,7,0,0,0,0,0,0,0,0,'desp'),
-- 187857
(187857,1,0,0,0,25610,20,7,2000000558,2000000559,2000000560,2000000561,0,0,0,0,'random say'),
(187857,2,8,25610,0,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(187857,2,18,3000,0,25610,20,7,0,0,0,0,0,0,0,0,'desp'),
-- 187858
(187858,1,0,0,0,25610,20,7,2000000558,2000000559,2000000560,2000000561,0,0,0,0,'random say'),
(187858,2,8,25610,0,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(187858,2,18,3000,0,25610,20,7,0,0,0,0,0,0,0,0,'desp'),
-- 187859
(187859,1,0,0,0,25610,20,7,2000000558,2000000559,2000000560,2000000561,0,0,0,0,'random say'),
(187859,2,8,25610,0,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(187859,2,18,3000,0,25610,20,7,0,0,0,0,0,0,0,0,'desp'),
-- 187860
(187860,1,0,0,0,25610,20,7,2000000558,2000000559,2000000560,2000000561,0,0,0,0,'random say'),
(187860,2,8,25610,0,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(187860,2,18,3000,0,25610,20,7,0,0,0,0,0,0,0,0,'desp'),
-- 187861
(187861,1,0,0,0,25610,20,7,2000000558,2000000559,2000000560,2000000561,0,0,0,0,'random say'),
(187861,2,8,25610,0,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(187861,2,18,3000,0,25610,20,7,0,0,0,0,0,0,0,0,'desp'),
-- 187862
(187862,1,0,0,0,25610,20,7,2000000558,2000000559,2000000560,2000000561,0,0,0,0,'random say'),
(187862,2,8,25610,0,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(187862,2,18,3000,0,25610,20,7,0,0,0,0,0,0,0,0,'desp'),
-- 187863
(187863,1,0,0,0,25610,20,7,2000000558,2000000559,2000000560,2000000561,0,0,0,0,'random say'),
(187863,2,8,25610,0,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(187863,2,18,3000,0,25610,20,7,0,0,0,0,0,0,0,0,'desp'),
-- 187864
(187864,1,0,0,0,25610,20,7,2000000558,2000000559,2000000560,2000000561,0,0,0,0,'random say'),
(187864,2,8,25610,0,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(187864,2,18,3000,0,25610,20,7,0,0,0,0,0,0,0,0,'desp'),
-- 187865
(187865,1,0,0,0,25610,20,7,2000000558,2000000559,2000000560,2000000561,0,0,0,0,'random say'),
(187865,2,8,25610,0,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(187865,2,18,3000,0,25610,20,7,0,0,0,0,0,0,0,0,'desp'),
-- 187866
(187866,1,0,0,0,25610,20,7,2000000558,2000000559,2000000560,2000000561,0,0,0,0,'random say'),
(187866,2,8,25610,0,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(187866,2,18,3000,0,25610,20,7,0,0,0,0,0,0,0,0,'desp'),
-- 187867
(187867,1,0,0,0,25610,20,7,2000000558,2000000559,2000000560,2000000561,0,0,0,0,'random say'),
(187867,2,8,25610,0,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(187867,2,18,3000,0,25610,20,7,0,0,0,0,0,0,0,0,'desp'),
-- 187868
(187868,1,0,0,0,25610,20,7,2000000558,2000000559,2000000560,2000000561,0,0,0,0,'random say'),
(187868,2,8,25610,0,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(187868,2,18,3000,0,25610,20,7,0,0,0,0,0,0,0,0,'desp'),
-- 187870
(187870,1,0,0,0,25610,20,7,2000000558,2000000559,2000000560,2000000561,0,0,0,0,'random say'),
(187870,2,8,25610,0,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(187870,2,18,3000,0,25610,20,7,0,0,0,0,0,0,0,0,'desp'),
-- 187871
(187871,1,0,0,0,25610,20,7,2000000558,2000000559,2000000560,2000000561,0,0,0,0,'random say'),
(187871,2,8,25610,0,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(187871,2,18,3000,0,25610,20,7,0,0,0,0,0,0,0,0,'desp'),
-- 187872
(187872,1,0,0,0,25610,20,7,2000000558,2000000559,2000000560,2000000561,0,0,0,0,'random say'),
(187872,2,8,25610,0,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(187872,2,18,3000,0,25610,20,7,0,0,0,0,0,0,0,0,'desp'),
-- 187873
(187873,1,0,0,0,25610,20,7,2000000558,2000000559,2000000560,2000000561,0,0,0,0,'random say'),
(187873,2,8,25610,0,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(187873,2,18,3000,0,25610,20,7,0,0,0,0,0,0,0,0,'desp'),
-- 187874
(187874,1,0,0,0,25610,20,7,2000000558,2000000559,2000000560,2000000561,0,0,0,0,'random say'),
(187874,2,8,25610,0,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(187874,2,18,3000,0,25610,20,7,0,0,0,0,0,0,0,0,'desp');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000558 AND 2000000561;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000558,'Thank you, friend.',0,0,0,1,NULL),
(2000000559,'I am forever indebted to you, friend.',0,0,0,1,NULL),
(2000000560,'Freedom at last! I must return to Warsong at once!',0,0,0,1,NULL),
(2000000561,'You have my thanks, stranger.',0,0,0,1,NULL);

-- UDB_248
-- Orithos the Sky Darkener and Scourge Sky Darkener
-- shouldnt be attacked by Scarlet Defenders
UPDATE creature_template SET UnitFlags = 32770 WHERE Entry IN (28642,28647);
-- Dark Rider of Acherus
UPDATE creature_template SET MechanicImmuneMask = 8388656 WHERE entry = 28768; 
-- Scarlet Fleet Defender
UPDATE creature_addon SET auras = 48356 WHERE guid IN (SELECT guid FROM creature WHERE id = 28834);

-- UDB_249
-- Ruul the Darkener
UPDATE creature_template SET MechanicImmuneMask = 8461348 WHERE entry = 21315;
UPDATE creature SET position_x = -3806.91, position_y = 1074.55, position_z = 87.0019 WHERE id = 21315;
DELETE FROM creature_movement_template WHERE entry = 21315;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(21315,1,-3806.91,1074.55,87.0019,2000,2131501,3.09641,0,0),
(21315,2,-3871.77,1061.12,104.353,0,0,4.09388,0,0),
(21315,3,-3946.31,1007.96,41.4916,0,0,4.09388,0,0),
(21315,4,-3981.2,987.16,17.436,2000,2131502,4.09388,0,0),
(21315,5,-3993.67,972.909,13.7035,0,0,4.09388,0,0),
(21315,6,-4005.54,940.329,13.9175,0,0,4.39311,0,0),
(21315,7,-4020.11,896.722,7.69662,0,0,4.40095,0,0),
(21315,8,-4028.87,860.941,4.21714,0,0,4.47164,0,0),
(21315,9,-4037.39,811.117,2.06301,0,0,4.35555,0,0),
(21315,10,-4052.31,778.566,2.59821,0,0,4.28879,0,0),
(21315,11,-4062.38,747.941,0.669277,0,0,4.19061,0,0),
(21315,12,-4088.7,713.37,2.51993,0,0,3.93929,0,0),
(21315,13,-4112.87,681.706,2.70455,0,0,4.38304,0,0),
(21315,14,-4129.74,646.929,4.20341,0,0,4.22596,0,0),
(21315,15,-4142.77,622.847,3.48307,0,0,4.51413,0,0),
(21315,16,-4150.78,575.896,9.39146,0,0,4.53377,0,0),
(21315,17,-4161.78,548.95,13.7863,0,0,4.27459,0,0),
(21315,18,-4175.77,521.903,23.8752,3000,0,4.36491,0,0),
(21315,19,-4175.77,521.903,23.8752,1000,1,4.36491,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2131501,2131502); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2131501,1,39,1,0,0,0,0,0,0,0,0,0,0,0,0,'fly ON'),
(2131501,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2131502,1,39,0,0,0,0,0,0,0,0,0,0,0,0,0,'fly OFF'),
(2131502,1,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN OFF');

-- UDB_251
-- The Wailing Caverns
-- Main Hall
-- Duplicates removed
DELETE FROM creature WHERE guid IN (27349,26256,27359,27367,27360);
DELETE FROM creature_addon WHERE guid IN (27349,26256,27359,27367,27360);
DELETE FROM creature_movement WHERE id IN (27349,26256,27359,27367,27360);
-- Missing added
DELETE FROM creature WHERE guid IN (27353,18688); -- empty guids from creatures deleted in this instance
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(27353,3636,43,1,1,0,0,18.9434,284.015,-87.7345,0.44334,7200,5,0,1251,0,0,1),
(18688,3636,43,1,1,0,0,4.29095,303.612,-87.6656,1.08737,7200,5,0,1251,0,0,1);
-- Deviate Moccasin / NIGHTMARE_ECTOPLASM / MUTANUS - they must ignore MMaps to work correctly
UPDATE creature_template SET ExtraFlags = 16384 WHERE entry IN (3654,5762,5763);
-- Deviate Guardian/Ravager
UPDATE creature SET position_x = -107.136887, position_y = 243.697266, position_z = -93.119705, orientation = 4.852786, spawndist = 2, MovementType = 1 WHERE guid = 26202;
UPDATE creature SET position_x = -100.263298, position_y = 180.224976, position_z = -78.493256, orientation = 2.959969, spawndist = 2, MovementType = 1 WHERE guid = 26224;
UPDATE creature SET position_x = -4.321824, position_y = 307.168152, position_z = -88.147560, spawndist = 2, MovementType = 1 WHERE guid = 27364;
-- snake
UPDATE creature SET position_x = -53.176250, position_y = 263.859100, position_z = -92.843735 WHERE guid = 26238;
-- Deviate Crocolisk
UPDATE creature_template SET SpeedWalk = 1 WHERE entry = 5053;
UPDATE creature SET spawndist = 5, MovementType = 1 WHERE guid IN (26197,33978,18678,26206,33970,26257,26258,26254,27365,27374);
-- Evolving Ectoplasm
UPDATE creature_template_addon SET auras = 7940 WHERE entry = 3640;
-- #26200
UPDATE creature SET spawndist = 0, movementType = 2 WHERE guid IN (26200,26229,27363);
DELETE FROM creature_movement WHERE id IN (26200,26229,27363);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(26200,1,-68.1524,203.433,-93.674,0,0,1.31066,0,0),
(26200,2,-69.961,212.707,-93.5038,0,0,2.09606,0,0),
(26200,3,-78.7136,218.987,-94.0952,0,0,2.09606,0,0),
(26200,4,-85.6643,225.037,-93.2043,0,0,2.44714,0,0),
(26200,5,-100.668,231.587,-91.4226,0,0,3.39276,0,0),
(26200,6,-110.268,230.005,-90.4413,0,0,4.17815,0,0),
(26200,7,-111.443,214.012,-85.3093,0,0,4.86302,0,0),
(26200,8,-108.986,203.938,-81.9642,0,0,4.96669,0,0),
(26200,9,-111.286,213.68,-85.2575,0,0,1.56234,0,0),
(26200,10,-110.096,229.464,-90.3296,0,0,0.552158,0,0),
(26200,11,-101.01,231.305,-91.2858,0,0,5.88676,0,0),
(26200,12,-86.0461,225.309,-93.0858,0,0,5.63151,0,0),
(26200,13,-78.9576,219.426,-94.0533,0,0,5.70848,0,0),
(26200,14,-70.0722,212.752,-93.5082,0,0,5.14928,0,0),
(26200,15,-68.2919,203.988,-93.6674,0,0,4.37077,0,0),
(26200,16,-79.1239,186.051,-93.1735,0,0,4.21762,0,0),
-- #26229 
(26229,1,-36.9481,192.669,-96.5478,0,0,4.9423,0,0),
(26229,2,-33.0708,177.147,-96.3141,0,0,4.47578,0,0),
(26229,3,-37.9909,156.333,-94.9096,0,0,4.24645,0,0),
(26229,4,-48.0045,140.481,-91.8653,0,0,4.39803,0,0),
(26229,5,-55.4778,122.223,-89.6402,0,0,4.28965,0,0),
(26229,6,-47.8948,140.425,-91.8465,0,0,1.01611,0,0),
(26229,7,-38.109,156.232,-94.8953,0,0,1.43865,0,0),
(26229,8,-33.0733,177.137,-96.3138,0,0,1.55803,0,0),
(26229,9,-37.0588,192.811,-96.5582,0,0,1.51248,0,0),
(26229,10,-35.1795,210.319,-96.2248,0,0,1.47164,0,0),
(26229,11,-32.656,228.21,-94.9624,0,0,1.5541,0,0),
(26229,12,-33.2975,242.874,-93.6593,0,0,1.96958,0,0),
(26229,13,-39.2168,256.586,-92.8235,0,0,1.65856,0,0),
(26229,14,-40.962,275.043,-92.4866,0,0,1.92874,0,0),
(26229,15,-46.6966,286.608,-92.4283,0,0,2.32772,0,0),
(26229,16,-57.9612,295.736,-90.1559,0,0,2.57512,0,0),
(26229,17,-46.9098,286.265,-92.4936,0,0,5.36407,0,0),
(26229,18,-41.2171,274.316,-92.5108,0,0,5.04913,0,0),
(26229,19,-39.8032,256.102,-92.8306,0,0,5.0672,0,0),
(26229,20,-33.2436,242.648,-93.6555,0,0,4.96667,0,0),
(26229,21,-33.0231,228.434,-94.9126,0,0,4.54963,0,0),
(26229,22,-34.8833,210.837,-96.1466,0,0,4.60932,0,0),
-- #27363
(27363,1,51.8623,209.877,-89.2127,0,0,2.15017,0,0),
(27363,2,48.2785,222.57,-88.5033,0,0,1.79282,0,0),
(27363,3,51.5756,212.811,-88.8591,0,0,5.61535,0,0),
(27363,4,60.3946,207.222,-91.6151,0,0,5.98288,0,0),
(27363,5,70.9029,206.649,-93.1381,0,0,0.284024,0,0),
(27363,6,83.4113,213.794,-92.9334,0,0,0.987741,0,0),
(27363,7,88.5347,230.272,-95.2437,0,0,0.879356,0,0),
(27363,8,96.3243,238.458,-95.8381,0,0,0.489013,0,0),
(27363,9,101.659,238.844,-95.8739,0,0,6.10775,0,0),
(27363,10,107.732,236.449,-96.0159,0,0,5.85878,0,0),
(27363,11,101.679,239.024,-95.8774,0,0,3.06974,0,0),
(27363,12,93.7623,237.393,-95.9306,0,0,3.64465,0,0),
(27363,13,87.7015,230.192,-95.2919,0,0,4.38214,0,0),
(27363,14,83.8539,215.539,-93.0563,0,0,4.17403,0,0),
(27363,15,77.8885,209.165,-92.959,0,0,3.55357,0,0),
(27363,16,71.0565,206.448,-93.1129,0,0,3.3101,0,0),
(27363,17,61.4155,207.113,-91.7314,0,0,3.10197,0,0);
-- Druid of the Fang
UPDATE creature SET spawndist = 0, movementType = 2 WHERE guid IN (26239,27348,27357,26225);
DELETE FROM creature_movement WHERE id IN (26239,27348,27357,26225);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #26239 
(26239,1,-56.3975,265.139,-92.8434,0,0,2.85711,0,0),
(26239,2,-62.6119,267.854,-92.8434,0,0,2.3521,0,0),
(26239,3,-66.2731,274.048,-92.8434,0,0,1.86437,0,0),
(26239,4,-65.887,278.532,-92.5521,0,0,1.13097,0,0),
(26239,5,-62.0234,283.8,-91.974,0,0,0.756338,0,0),
(26239,6,-56.3948,286.851,-91.9572,0,0,0.270962,0,0),
(26239,7,-48.7796,283.578,-92.8443,0,0,5.73341,0,0),
(26239,8,-44.9437,278.699,-92.6976,0,0,5.164,0,0),
(26239,9,-42.87,272.868,-92.6368,0,0,4.90325,0,0),
(26239,10,-44.9356,268.481,-92.8257,0,0,3.99455,0,0),
(26239,11,-50.2492,264.342,-92.8442,0,0,3.51874,0,0),
-- #27348 
(27348,1,9.68975,197.043,-84.0878,0,0,4.78291,0,0),
(27348,2,10.2678,207.534,-84.3362,0,0,1.36014,0,0),
(27348,3,14.5732,222.643,-84.5247,0,0,1.23291,0,0),
(27348,4,20.72,235.967,-85.4468,0,0,1.00907,0,0),
(27348,5,29.986,250.396,-87.5133,0,0,1.6688,0,0),
(27348,6,28.1387,262.184,-87.385,0,0,2.24136,0,0),
(27348,7,13.8197,277.082,-86.2148,0,0,2.11648,0,0),
(27348,8,3.75275,292.614,-85.5411,0,0,2.31047,0,0),
(27348,9,-11.572,306.829,-88.4024,0,0,2.41493,0,0),
(27348,10,-30.8699,319.153,-89.2336,0,0,2.56023,0,0),
(27348,11,-11.0633,306.451,-88.3487,0,0,5.51254,0,0),
(27348,12,4.12528,291.684,-85.5452,0,0,5.45546,0,0),
(27348,13,14.0051,276.815,-86.2056,0,0,5.48688,0,0),
(27348,14,27.9405,261.821,-87.3832,0,0,5.11067,0,0),
(27348,15,30.0687,249.523,-87.435,0,0,4.55225,0,0),
(27348,16,25.2162,240.198,-86.165,0,0,4.21453,0,0),
(27348,17,14.3869,222.38,-84.5234,0,0,4.30878,0,0),
(27348,18,10.1017,210.273,-84.1564,0,0,4.59466,0,0),
(27348,19,9.74381,204.494,-84.1363,0,0,4.71718,0,0),
-- #27357 
(27357,1,49.4473,218.755,-88.6672,0,0,1.55818,0,0),
(27357,2,48.178,232.093,-88.5543,0,0,1.74275,0,0),
(27357,3,49.4085,218.762,-88.6588,0,0,4.3974,0,0),
(27357,4,43.1834,206.45,-88.2157,0,0,3.95129,0,0),
(27357,5,25.8099,200.155,-86.0444,0,0,3.69133,0,0),
(27357,6,13.8656,193.124,-84.9796,0,0,3.9694,0,0),
(27357,7,9.89033,184.731,-85.4648,0,0,4.57337,0,0),
(27357,8,10.3683,175.054,-86.6094,0,0,4.5875,0,0),
(27357,9,7.91235,167.02,-86.6623,0,0,4.41943,0,0),
(27357,10,1.81814,153.567,-88.56,0,0,4.26314,0,0),
(27357,11,-15.7426,119.127,-89.8857,0,0,4.28277,0,0),
(27357,12,-25.4447,101.016,-89.8553,0,0,4.52467,0,0),
(27357,13,-28.177,82.8804,-91.1606,0,0,4.39744,0,0),
(27357,14,-37.892,68.0999,-88.5432,0,0,4.08249,0,0),
(27357,15,-27.7804,83.4066,-91.2526,0,0,1.12704,0,0),
(27357,16,-25.3866,101.015,-89.871,0,0,1.10112,0,0),
(27357,17,-6.3389,137.829,-88.4654,0,0,1.10907,0,0),
(27357,18,7.90365,167.725,-86.6462,0,0,1.45639,0,0),
(27357,19,10.7275,177.886,-86.4483,0,0,1.52079,0,0),
(27357,20,9.73913,186.363,-85.4123,0,0,1.43911,0,0),
(27357,21,12.2051,191.933,-84.7278,0,0,0.766027,0,0),
(27357,22,26.7711,200.425,-86.1275,0,0,0.398735,0,0),
(27357,23,40.3936,204.973,-87.9399,0,0,0.621003,0,0),
(27357,24,46.2976,209.539,-88.3763,0,0,0.958724,0,0),
-- #26225
(26225,1,-40.4414,150.653,-94.0708,0,0,4.2188,0,0),
(26225,2,-46.9905,138.931,-91.4253,0,0,4.11278,0,0),
(26225,3,-63.7112,117.635,-89.222,0,0,3.83396,0,0),
(26225,4,-73.6791,111.54,-88.6808,0,0,3.68474,0,0),
(26225,5,-60.8873,122.093,-89.4241,0,0,0.904425,0,0),
(26225,6,-43.415,143.576,-92.526,0,0,1.13062,0,0),
(26225,7,-37.8829,157.212,-95.03,0,0,1.21701,0,0),
(26225,8,-36.1888,195.916,-96.7587,0,0,1.54295,0,0),
(26225,9,-35.4668,166.732,-96.1359,0,0,4.7356,0,0);
-- Kresh
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 27368;
DELETE FROM creature_movement WHERE id = 27368;
UPDATE creature_template SET MovementType = 2, SpeedWalk = 1 WHERE entry = 3653;
DELETE FROM creature_movement_template WHERE entry = 3653;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(3653,1,-44.8007,305.259,-106.417,0,0,5.56568,0,0),
(3653,2,-32.5041,290.754,-106.417,0,0,5.35127,0,0),
(3653,3,-20.8746,273.006,-106.417,0,0,5.13136,0,0),
(3653,4,-11.3159,247.89,-106.344,0,0,4.74102,0,0),
(3653,5,-8.17325,223.437,-106.163,0,0,4.71353,0,0),
(3653,6,-7.57741,202.096,-106.163,0,0,4.67584,0,0),
(3653,7,-8.89105,181.096,-106.163,0,0,4.6405,0,0),
(3653,8,-11.3937,163.913,-106.163,0,0,4.3499,0,0),
(3653,9,-16.1442,149.352,-106.163,0,0,4.39702,0,0),
(3653,10,-28.404,128.264,-106.163,0,0,4.12606,0,0),
(3653,11,-46.7483,102.631,-106.163,0,0,4.25958,0,0),
(3653,12,-52.9205,90.712,-106.163,0,0,4.53492,0,0),
(3653,13,-55.1093,83.4505,-106.163,0,0,4.22312,0,0),
(3653,14,-58.6901,76.3781,-106.163,0,0,3.97022,0,0),
(3653,15,-62.9525,72.3359,-106.163,0,0,3.48328,0,0),
(3653,16,-75.996,71.5946,-106.163,0,0,3.36782,0,0),
(3653,17,-84.1777,69.2621,-106.163,0,0,3.64035,0,0),
(3653,18,-92.3134,65.9368,-106.163,0,0,3.27122,0,0),
(3653,19,-100.357,66.2251,-106.259,0,0,2.80312,0,0),
(3653,20,-120.69,71.8824,-106.442,0,0,3.06701,0,0),
(3653,21,-139.212,71.107,-106.166,0,0,3.45657,0,0),
(3653,22,-150.104,65.7444,-106.311,0,0,3.89404,0,0),
(3653,23,-155.877,58.1956,-106.361,0,0,4.52157,0,0),
(3653,24,-154.651,32.4415,-106.648,0,0,4.82708,0,0),
(3653,25,-154.773,12.4538,-105.7,0,0,4.348,0,0),
(3653,26,-158.958,2.82365,-106.208,0,0,4.04719,0,0),
(3653,27,-173.109,-6.59597,-106.397,0,0,3.51705,0,0),
(3653,28,-190.102,-9.4344,-106.243,0,0,3.1267,0,0),
(3653,29,-169.26,-5.08474,-106.375,0,0,0.448495,0,0),
(3653,30,-156.951,6.08111,-106.009,0,0,1.07681,0,0),
(3653,31,-153.483,21.6673,-105.47,0,0,1.55198,0,0),
(3653,32,-154.685,51.2861,-106.352,0,0,1.34699,0,0),
(3653,33,-149.849,64.9798,-106.338,0,0,0.953333,0,0),
(3653,34,-139.068,71.1707,-106.154,0,0,0.311758,0,0),
(3653,35,-120.406,72.0676,-106.439,0,0,6.03417,0,0),
(3653,36,-109.081,70.1327,-106.401,0,0,6.08915,0,0),
(3653,37,-97.633,66.0886,-106.184,0,0,6.23837,0,0),
(3653,38,-88.6407,66.2216,-106.161,0,0,0.385583,0,0),
(3653,39,-80.4933,71.5953,-106.161,0,0,0.338459,0,0),
(3653,40,-63.3656,72.3782,-106.161,0,0,0.422497,0,0),
(3653,41,-56.8746,77.2352,-106.161,0,0,1.02333,0,0),
(3653,42,-52.9606,90.3188,-106.161,0,0,1.29036,0,0),
(3653,43,-45.6264,103.709,-106.161,0,0,0.948714,0,0),
(3653,44,-28.8159,127.738,-106.161,0,0,0.960495,0,0),
(3653,45,-19.063,141.466,-106.161,0,0,1.03118,0,0),
(3653,46,-12.2858,158.042,-106.161,0,0,1.45451,0,0),
(3653,47,-9.01831,171.966,-106.161,0,0,1.39561,0,0),
(3653,48,-7.55996,201.698,-106.161,0,0,1.60766,0,0),
(3653,49,-7.859,222.945,-106.161,0,0,1.6862,0,0),
(3653,50,-11.2468,247.599,-106.339,0,0,1.77652,0,0),
(3653,51,-16.3697,265.351,-106.417,0,0,1.88648,0,0),
(3653,52,-26.2989,282.527,-106.417,0,0,2.17315,0,0),
(3653,53,-39.9706,301.609,-106.417,0,0,2.38128,0,0),
(3653,54,-50.4176,309.288,-106.417,0,0,2.53836,0,0),
(3653,55,-72.4502,323.797,-106.162,0,0,2.38442,0,0),
(3653,56,-76.8971,329.161,-106.162,0,0,1.99722,0,0),
(3653,57,-77.1239,335.797,-106.162,0,0,1.3634,0,0),
(3653,58,-72.0056,353.657,-106.173,0,0,1.36733,0,0),
(3653,59,-70.9167,374.263,-105.182,0,0,1.67756,0,0),
(3653,60,-75.7733,401.265,-107.862,0,0,1.57546,0,0),
(3653,61,-72.2112,417.555,-107.009,0,0,0.850539,0,0),
(3653,62,-57.6043,427.606,-105.979,0,0,0.556015,0,0),
(3653,63,-71.9469,416.472,-107.104,0,0,4.17591,0,0),
(3653,64,-76.9202,400.773,-107.867,0,0,4.80423,0,0),
(3653,65,-75.4612,388.477,-106.392,0,0,4.93382,0,0),
(3653,66,-69.6617,368.65,-105.263,0,0,4.83172,0,0),
(3653,67,-72.0043,352.597,-106.162,0,0,4.49793,0,0),
(3653,68,-77.3223,330.255,-106.162,0,0,5.07125,0,0),
(3653,69,-73.4961,323.783,-106.162,0,0,5.64066,0,0),
(3653,70,-66.2326,318.345,-106.592,0,0,5.80559,0,0);

-- UDB_252
-- The Wailing Caverns
-- Left Wing
-- Duplicates removed
DELETE FROM creature WHERE guid IN (33938,27379,33967,33960,27388,33936);
DELETE FROM creature_addon WHERE guid IN (33938,27379,33967,33960,27388,33936);
DELETE FROM creature_movement WHERE id IN (33938,27379,33967,33960,27388,33936);
-- Deviate Viper
UPDATE creature SET position_x = 5.956939, position_y = 455.083618, position_z = -77.977341, spawndist = 2, MovementType = 1 WHERE guid = 33948;
UPDATE creature SET position_x = 17.332829, position_y = 434.110718, position_z = -80.834145, spawndist = 2, MovementType = 1 WHERE guid = 33949;
UPDATE creature SET position_x = -27.127914, position_y = 381.332458, position_z = -60.059540, spawndist = 2, MovementType = 1 WHERE guid = 27372;
UPDATE creature SET position_x = -7.147677, position_y = 504.356445, position_z = -56.001366, spawndist = 5, MovementType = 1 WHERE guid = 33951;
UPDATE creature SET position_x = -19.490566, position_y = 488.676270, position_z = -55.430050, spawndist = 5, MovementType = 1 WHERE guid = 33947;
-- Deviate Adder
UPDATE creature SET position_x = -84.996887, position_y = 481.093903, position_z = -66.405075, orientation = 0.965283 WHERE guid = 33934;
UPDATE creature SET spawndist = 0, movementType = 2 WHERE guid IN (33952,33934);
DELETE FROM creature_movement WHERE id IN (33952,33934);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #33952 
(33952,1,18.3882,471.101,-88.0586,0,0,2.39738,0,0),
(33952,2,29.0196,455.613,-86.1838,0,0,5.12664,0,0),
(33952,3,31.3535,445.19,-85.3345,0,0,4.96956,0,0),
(33952,4,31.8656,437.95,-84.0014,0,0,4.49518,0,0),
(33952,5,29.3349,432.054,-83.1705,0,0,3.61004,0,0),
(33952,6,22.6037,431.228,-81.9907,0,0,2.87134,0,0),
(33952,7,17.624,434.439,-80.9945,0,0,2.17155,0,0),
(33952,8,12.3668,444.198,-79.534,0,0,2.17862,0,0),
(33952,9,6.53194,452.764,-77.8434,0,0,2.87526,0,0),
(33952,10,1.70567,452.306,-76.3355,0,0,4.16683,0,0),
(33952,11,0.497222,446.235,-74.9738,0,0,4.91399,0,0),
(33952,12,4.66517,437.492,-73.3332,0,0,5.01209,0,0),
(33952,13,4.9966,431.932,-71.3576,0,0,4.44897,0,0),
(33952,14,0.990924,422.873,-67.8055,0,0,4.08219,0,0),
(33952,15,-8.8705,415.241,-65.0212,0,0,3.83086,0,0),
(33952,16,-16.7775,409.627,-60.6643,0,0,3.74054,0,0),
(33952,17,-9.80849,414.747,-64.8074,0,0,0.649997,0,0),
(33952,18,1.41618,423.453,-68.0128,0,0,0.94138,0,0),
(33952,19,5.25315,433.678,-72.0517,0,0,1.55792,0,0),
(33952,20,4.72326,438.894,-73.789,0,0,1.87679,0,0),
(33952,21,0.419972,446.218,-74.9489,0,0,1.80453,0,0),
(33952,22,1.03652,451.119,-75.9471,0,0,1.05291,0,0),
(33952,23,3.76451,453.807,-77.2048,0,0,0.275362,0,0),
(33952,24,8.33111,453.161,-78.4086,0,0,5.69147,0,0),
(33952,25,13.1434,442.055,-79.5827,0,0,5.09379,0,0),
(33952,26,18.5203,433.383,-81.3881,0,0,5.65141,0,0),
(33952,27,24.043,430.722,-82.1867,0,0,6.26598,0,0),
(33952,28,29.6276,432.259,-83.2049,0,0,0.811386,0,0),
(33952,29,32.2469,436.867,-83.8849,0,0,1.45669,0,0),
(33952,30,31.5933,445.346,-85.3358,0,0,1.79805,0,0),
(33952,31,29.0614,454.303,-86.0651,0,0,1.97476,0,0),
-- #33934
(33934,1,-81.3997,486.056,-65.0403,0,0,0.838834,0,0),
(33934,2,-76.5929,489.002,-63.4276,0,0,0.0997735,0,0),
(33934,3,-68.2558,483.684,-61.237,0,0,5.50096,0,0),
(33934,4,-55.36,473.697,-57.5728,0,0,5.44206,0,0),
(33934,5,-49.505,464.937,-56.59,0,0,5.20644,0,0),
(33934,6,-55.0437,474.004,-57.5264,0,0,2.41278,0,0),
(33934,7,-74.0426,488.033,-62.9592,0,0,2.89894,0,0),
(33934,8,-77.8686,488.177,-63.8568,0,0,3.54666,0,0),
(33934,9,-83.133,484.854,-65.4919,0,0,4.09565,0,0),
(33934,10,-85.6188,479.08,-66.9086,0,0,4.50092,0,0),
(33934,11,-86.6055,468.673,-68.7278,0,0,4.31635,0,0),
(33934,12,-90.6928,463.931,-69.9754,0,0,3.61499,0,0),
(33934,13,-98.2663,463.126,-70.671,0,0,3.238,0,0),
(33934,14,-110.833,460.458,-71.7726,0,0,3.71002,0,0),
(33934,15,-115.395,456.6,-72.3846,0,0,4.20797,0,0),
(33934,16,-117.256,450.734,-72.6647,0,0,4.60983,0,0),
(33934,17,-112.016,436.477,-72.8273,0,0,5.14389,0,0),
(33934,18,-108.051,430.357,-73.3957,0,0,4.82817,0,0),
(33934,19,-111.652,414.39,-73.8526,0,0,4.38992,0,0),
(33934,20,-107.801,430.569,-73.4287,0,0,1.76826,0,0),
(33934,21,-116.12,451.115,-72.6451,0,0,1.47531,0,0),
(33934,22,-115.575,456.322,-72.403,0,0,1.15015,0,0),
(33934,23,-108.838,460.621,-71.6793,0,0,0.32941,0,0),
(33934,24,-90.2806,463.658,-69.9699,0,0,0.705616,0,0),
(33934,25,-86.2516,468.787,-68.6661,0,0,1.12152,0,0),
(33934,26,-85.1272,480.383,-66.5854,0,0,1.38855,0,0);
-- Druid of the Fang
UPDATE creature SET spawndist = 5, MovementType = 1 WHERE guid = 27384;
UPDATE creature SET position_x = 40.250111, position_y = 477.857727, position_z = -65.968185, orientation = 5.372137 WHERE guid = 33964;
UPDATE creature SET position_x = 21.978088, position_y = 507.476837, position_z = -58.773094, spawndist = 10, MovementType = 1 WHERE guid = 33956;
UPDATE creature SET position_x = -31.707466, position_y = 473.150970, position_z = -53.801693, spawndist = 5, MovementType = 1 WHERE guid = 33946;
UPDATE creature SET spawndist = 0, movementType = 2 WHERE guid IN (33964);
DELETE FROM creature_movement WHERE id IN (33964);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #33964 
(33964,1,51.2705,462.79,-65.6538,0,0,5.22684,0,0),
(33964,2,61.4426,441.233,-64.5607,0,0,5.12474,0,0),
(33964,3,66.6446,427.09,-64.1669,0,0,4.75718,0,0),
(33964,4,65.3818,411.521,-63.7163,0,0,4.08119,0,0),
(33964,5,66.97,428.045,-64.2591,0,0,1.77447,0,0),
(33964,6,53.7275,457.406,-65.408,0,0,2.00774,0,0),
(33964,7,50.3768,465.739,-65.2606,0,0,2.14518,0,0),
(33964,8,40.5128,478.114,-65.9229,0,0,1.91192,0,0),
(33964,9,41.5158,488.841,-64.2444,0,0,1.89115,0,0),
(33964,10,36.7258,497.087,-62.1721,0,0,2.54217,0,0),
(33964,11,27.2896,504.402,-60.0476,0,0,1.36015,0,0),
(33964,12,32.4338,515.703,-58.0155,0,0,1.94056,0,0),
(33964,13,27.5284,523.319,-57.4901,0,0,2.58359,0,0),
(33964,14,17.4092,523.534,-57.0785,0,0,3.55198,0,0),
(33964,15,-0.718095,509.193,-56.2755,0,0,3.84257,0,0),
(33964,16,-22.3696,489.422,-54.4679,0,0,3.87006,0,0),
(33964,17,-32.7447,475.967,-53.7104,0,0,4.08605,0,0),
(33964,18,-21.6127,490.094,-54.6732,0,0,0.889474,0,0),
(33964,19,-7.64358,498.594,-56.1589,0,0,0.818003,0,0),
(33964,20,0.0910954,509.674,-56.3452,0,0,0.766952,0,0),
(33964,21,12.5018,517.24,-57.3461,0,0,0.863243,0,0),
(33964,22,17.3274,523.661,-57.0825,0,0,0.429703,0,0),
(33964,23,27.2714,523.02,-57.5083,0,0,5.84895,0,0),
(33964,24,33.1255,514.965,-58.1352,0,0,5.12639,0,0),
(33964,25,41.5672,488.218,-64.3173,0,0,5.06356,0,0);

-- UDB_253
-- The Wailing Caverns
-- Right Wing
-- Duplicates removed
DELETE FROM creature WHERE guid IN (38144,38113,85947,85961,38117);
DELETE FROM creature_addon WHERE guid IN (38144,38113,85947,85961,38117);
DELETE FROM creature_movement WHERE id IN (38144,38113,85947,85961,38117);
-- Skum
UPDATE creature SET position_x = -283.573700, position_y = -310.881409, position_z = -69.183708, orientation = 0.564664, spawndist = 10, MovementType = 1 WHERE guid = 87131;
-- Deviate Faerie Dragon
UPDATE creature SET position_x = 3.990831, position_y = -48.752422, position_z = -66.029633, orientation = 4.191853 WHERE guid = 517;
-- should have reduced chance to spawn in WC
DELETE FROM pool_template WHERE entry = 25492;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(25492,1,'WC - Deviate Faerie Dragon / Druid of the Fang');
DELETE FROM pool_creature WHERE pool_entry = 25492;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES 
(517,25492,35,'WC - Deviate Faerie Dragon'),
(85959,25492,65,'WC - Druid of the Fang');
-- Deviate Lasher
UPDATE creature SET spawndist = 5, MovementType = 1 WHERE guid IN (18679,18681,18680);
-- Deviate Shambler
UPDATE creature SET position_x = 22.807135, position_y = -151.118713, position_z = -78.651627 WHERE guid = 85963;
UPDATE creature SET position_x = -7.038766, position_y = -71.016472, position_z = -67.098122, spawndist = 5, MovementType = 1 WHERE guid = 85954;
UPDATE creature SET position_x = -166.194336, position_y = -89.008423, position_z = -67.355522, spawndist = 5, MovementType = 1 WHERE guid = 45723;
UPDATE creature SET position_x = -226.982697, position_y = 44.669109, position_z = -82.440079, spawndist = 5, MovementType = 1 WHERE guid = 38114;
UPDATE creature SET position_x = -112.500587, position_y = -104.252632, position_z = -75.274391, spawndist = 2, MovementType = 1 WHERE guid = 45724;
UPDATE creature SET position_x = 10.453961, position_y = -231.321625, position_z = -77.228943, spawndist = 5, MovementType = 1 WHERE guid = 87105;
UPDATE creature SET position_x = 38.975677, position_y = -164.936310, position_z = -82.935074, spawndist = 2, MovementType = 1 WHERE guid = 87113;
UPDATE creature SET spawndist = 0, movementType = 2 WHERE guid IN (38116,38168,85963);
DELETE FROM creature_movement WHERE id IN (38116,38168,85963);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #38116 
(38116,1,-241.193,42.2694,-83.8524,0,0,3.15753,0,0),
(38116,2,-257.169,41.459,-86.9647,0,0,3.66727,0,0),
(38116,3,-268.754,32.5239,-87.9437,0,0,3.1882,0,0),
(38116,4,-279.79,33.354,-88.8636,0,0,2.70361,0,0),
(38116,5,-302.306,48.9864,-93.0104,0,0,2.86854,0,0),
(38116,6,-321.468,52.3916,-96.2298,0,0,3.42146,0,0),
(38116,7,-335.7,45.4104,-98.3198,0,0,4.00894,0,0),
(38116,8,-340.7,36.0533,-99.0784,0,0,4.69929,0,0),
(38116,9,-339.409,28.5987,-100.247,0,0,5.25928,0,0),
(38116,10,-332.995,21.5768,-103.176,0,0,5.70217,0,0),
(38116,11,-338.99,28.3312,-100.283,0,0,1.99666,0,0),
(38116,12,-340.614,36.4627,-99.0447,0,0,1.45787,0,0),
(38116,13,-335.639,46.0422,-98.2416,0,0,0.692109,0,0),
(38116,14,-322.301,52.3214,-96.3296,0,0,0.144241,0,0),
(38116,15,-302.867,49.2066,-93.0867,0,0,5.72843,0,0),
(38116,16,-280.559,33.8918,-88.9843,0,0,6.06065,0,0),
(38116,17,-269.405,32.6903,-87.9801,0,0,0.513374,0,0),
(38116,18,-256.297,40.9856,-86.9004,0,0,0.286394,0,0),
(38116,19,-241.16,42.102,-83.8425,0,0,0.329591,0,0),
(38116,20,-217.971,49.149,-82.2794,0,0,0.628828,0,0),
(38116,21,-207.092,59.329,-82.3576,0,0,0.997965,0,0),
(38116,22,-196.834,74.8148,-81.7144,0,0,0.661029,0,0),
(38116,23,-186.296,84.9382,-79.5481,0,0,0.424624,0,0),
(38116,24,-174.414,87.8771,-77.7629,0,0,6.19573,0,0),
(38116,25,-164.768,80.992,-76.0056,0,0,5.37342,0,0),
(38116,26,-147.974,53.8704,-75.8208,0,0,5.05691,0,0),
(38116,27,-141.957,42.629,-75.4675,0,0,4.98623,0,0),
(38116,28,-141.45,22.0252,-74.8123,0,0,4.63673,0,0),
(38116,29,-145.667,8.31579,-74.5782,0,0,4.39718,0,0),
(38116,30,-155.675,-14.5223,-78.0544,0,0,4.62495,0,0),
(38116,31,-153.295,-27.8904,-80.1074,0,0,5.36714,0,0),
(38116,32,-142.287,-38.5889,-78.8823,0,0,5.72842,0,0),
(38116,33,-152.379,-27.9155,-79.9458,0,0,2.06061,0,0),
(38116,34,-155.651,-14.4576,-78.042,0,0,1.38988,0,0),
(38116,35,-145.77,7.76751,-74.5628,0,0,1.27992,0,0),
(38116,36,-145.77,7.76751,-74.5628,0,0,1.27992,0,0),
(38116,37,-142.01,35.0579,-75.3986,0,0,1.81321,0,0),
(38116,38,-143.771,45.6428,-75.3807,0,0,2.06454,0,0),
(38116,39,-153.842,59.4346,-75.6966,0,0,2.13915,0,0),
(38116,40,-164.62,80.9623,-76.0071,0,0,2.30251,0,0),
(38116,41,-175.641,87.215,-78.0969,0,0,3.05964,0,0),
(38116,42,-184.698,85.9708,-79.4345,0,0,3.53637,0,0),
(38116,43,-197.63,74.554,-81.7961,0,0,4.0783,0,0),
(38116,44,-217.403,50.4437,-82.285,0,0,3.8199,0,0),
-- #38168
(38168,1,-163.207,-96.9781,-66.663,0,0,5.75562,0,0),
(38168,2,-147.497,-101.802,-68.5947,0,0,6.27759,0,0),
(38168,3,-128.496,-102.5,-71.5074,0,0,0.273224,0,0),
(38168,4,-120.008,-95.097,-72.086,0,0,1.09868,0,0),
(38168,5,-115.215,-75.2305,-69.3508,0,0,1.11831,0,0),
(38168,6,-98.7366,-61.618,-67.1226,0,0,0.615658,0,0),
(38168,7,-72.1005,-51.2044,-61.7233,0,0,0.391819,0,0),
(38168,8,-99.5672,-62.2831,-67.2459,0,0,3.79332,0,0),
(38168,9,-114.608,-75.3549,-69.5214,0,0,4.17816,0,0),
(38168,10,-120.449,-94.6039,-71.8979,0,0,4.03522,0,0),
(38168,11,-128.759,-102.215,-71.4281,0,0,3.4933,0,0),
(38168,12,-147.378,-101.769,-68.6083,0,0,3.06918,0,0),
(38168,13,-162.921,-96.9254,-66.6689,0,0,2.53511,0,0),
(38168,14,-172.51,-86.2992,-67.6991,0,0,1.85339,0,0),
(38168,15,-173.39,-74.8943,-68.2057,0,0,1.44733,0,0),
(38168,16,-172.706,-85.6673,-67.6947,0,0,4.96198,0,0),
-- #85963
(85963,1,29.286,-162.936,-81.8688,0,0,4.85667,0,0),
(85963,2,28.182,-173.572,-83.5399,0,0,4.28255,0,0),
(85963,3,16.1552,-183.5,-83.0248,0,0,3.66994,0,0),
(85963,4,-1.6968,-185.095,-80.7507,0,0,4.15375,0,0),
(85963,5,-6.77331,-200.482,-79.1849,0,0,4.70968,0,0),
(85963,6,-3.68555,-216.02,-75.899,0,0,4.89582,0,0),
(85963,7,-7.23298,-228.119,-73.028,0,0,4.25965,0,0),
(85963,8,-26.7252,-246.039,-68.2434,0,0,3.64704,0,0),
(85963,9,-7.8933,-228.985,-72.7269,0,0,1.11885,0,0),
(85963,10,-3.70738,-216.133,-75.8558,0,0,1.5783,0,0),
(85963,11,-6.38523,-200.621,-79.2912,0,0,1.58245,0,0),
(85963,12,-0.725946,-186.789,-80.8895,0,0,0.565363,0,0),
(85963,13,14.953,-183.662,-82.9322,0,0,0.418483,0,0),
(85963,14,28.237,-173.451,-83.5226,0,0,1.16449,0,0),
(85963,15,29.3999,-163.131,-81.9668,0,0,2.06298,0,0),
(85963,16,23.2016,-152.043,-78.9337,0,0,2.38131,0,0),
(85963,17,2.10258,-137.804,-76.5998,0,0,2.62086,0,0),
(85963,18,-30.1591,-123.821,-72.1101,0,0,2.78187,0,0),
(85963,19,1.53461,-137.419,-76.5367,0,0,5.71297,0,0),
(85963,20,22.1765,-150.683,-78.5273,0,0,5.65799,0,0);
-- Druid of the Fang
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 85948;
UPDATE creature SET spawndist = 5, MovementType = 1 WHERE guid = 85919;
UPDATE creature SET spawndist = 5, MovementType = 1 WHERE guid = 87122;
UPDATE creature SET spawndist = 5, MovementType = 1 WHERE guid = 18682;
UPDATE creature SET position_x = -341.693024, position_y = -112.663597, position_z = -63.787231, spawndist = 5, MovementType = 1 WHERE guid = 87150;
UPDATE creature SET position_x = -214.287292, position_y = 46.809830, position_z = -82.261520, spawndist = 5, MovementType = 1 WHERE guid = 33987;
UPDATE creature SET position_x = -176.696625, position_y = -92.646103, position_z = -67.163155, spawndist = 5, MovementType = 1 WHERE guid = 45722;
UPDATE creature SET position_x = -329.414398, position_y = -84.181580, position_z = -65.576790, spawndist = 5, MovementType = 1 WHERE guid = 87153;
-- Evolving Ectoplasm
UPDATE creature SET position_x = -110.559517, position_y = -260.382935, position_z = -57.422146, orientation = 2.382781 WHERE guid = 86047;
UPDATE creature SET spawndist = 0, movementType = 2 WHERE guid IN (38142,86047,87157);
DELETE FROM creature_movement WHERE id IN (38142,86047,87157);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #38142
(38142,1,-350.974,31.0695,-100.592,0,0,1.7402,0,0),
(38142,2,-351.788,41.0876,-100.147,0,0,1.43783,0,0),
(38142,3,-347.339,49.4633,-99.1387,0,0,0.68879,0,0),
(38142,4,-336.402,53.256,-97.9688,0,0,0.103668,0,0),
(38142,5,-312.729,50.5003,-94.6583,0,0,6.13945,0,0),
(38142,6,-291.86,46.1814,-91.512,0,0,5.79781,0,0),
(38142,7,-280.678,36.3304,-89.1863,0,0,5.97295,0,0),
(38142,8,-263.52,36.9492,-87.3749,0,0,0.166829,0,0),
(38142,9,-238.667,41.2443,-83.4696,0,0,6.01412,0,0),
(38142,10,-220.935,35.1547,-82.4884,0,0,0.387526,0,0),
(38142,11,-198.897,58.9616,-82.4193,0,0,1.17271,0,0),
(38142,12,-195.385,75.752,-81.5061,0,0,1.17899,0,0),
(38142,13,-183.378,88.3891,-79.3061,0,0,0.289136,0,0),
(38142,14,-171.484,91.2173,-77.3679,0,0,5.97306,0,0),
(38142,15,-163.106,85.5603,-75.9694,0,0,5.50183,0,0),
(38142,16,-151.344,64.7209,-75.8932,0,0,5.16647,0,0),
(38142,17,-143.995,38.4453,-75.6764,0,0,4.95048,0,0),
(38142,18,-139.451,5.96934,-74.4381,0,0,4.87195,0,0),
(38142,19,-134.782,-33.7224,-77.1659,0,0,4.52323,0,0),
(38142,20,-136.786,-44.3986,-78.842,0,0,4.30096,0,0),
(38142,21,-141.118,-49.3827,-78.7078,0,0,3.70014,0,0),
(38142,22,-149.677,-55.6208,-77.09,0,0,3.54306,0,0),
(38142,23,-171.933,-61.6922,-72.176,0,0,3.44881,0,0),
(38142,24,-149.235,-55.7584,-77.1013,0,0,0.516917,0,0),
(38142,25,-140.16,-49.1157,-78.7086,0,0,0.874273,0,0),
(38142,26,-135.532,-41.8277,-78.5371,0,0,1.28959,0,0),
(38142,27,-134.492,-32.9108,-77.1015,0,0,1.56632,0,0),
(38142,28,-136.449,-16.7871,-76.3314,0,0,1.71555,0,0),
(38142,29,-139.388,5.44889,-74.552,0,0,1.65664,0,0),
(38142,30,-143.965,38.5244,-75.6675,0,0,1.75089,0,0),
(38142,31,-151.563,64.9649,-75.8898,0,0,2.04542,0,0),
(38142,32,-163.332,85.8414,-75.9659,0,0,2.34387,0,0),
(38142,33,-172.358,91.2293,-77.5342,0,0,2.82432,0,0),
(38142,34,-180.071,90.9801,-78.9868,0,0,3.433,0,0),
(38142,35,-195.65,75.7468,-81.5234,0,0,4.24588,0,0),
(38142,36,-201.077,52.6642,-82.1164,0,0,4.11001,0,0),
(38142,37,-221.619,35.6366,-82.3932,0,0,3.20288,0,0),
(38142,38,-229.538,37.0909,-82.3751,0,0,2.7929,0,0),
(38142,39,-238.57,41.3212,-83.4619,0,0,3.06622,0,0),
(38142,40,-263.201,36.9681,-87.3377,0,0,3.32882,0,0),
(38142,41,-281.6,36.9127,-89.3543,0,0,2.63767,0,0),
(38142,42,-292.172,46.6155,-91.5915,0,0,2.75941,0,0),
(38142,43,-312.89,50.7145,-94.6917,0,0,3.08535,0,0),
(38142,44,-336.385,53.0905,-97.954,0,0,3.24243,0,0),
(38142,45,-346.969,49.7175,-99.0876,0,0,3.7765,0,0),
(38142,46,-349.946,46.301,-99.6044,0,0,4.21298,0,0),
(38142,47,-351.877,39.3114,-100.228,0,0,4.80281,0,0),
(38142,48,-350.779,30.2739,-100.625,0,0,5.33844,0,0),
(38142,49,-339.655,21.6589,-101.701,0,0,5.9214,0,0),
(38142,50,-313.309,14.4102,-106.172,0,0,6.05099,0,0),
(38142,51,-293.229,12.7872,-105.805,0,0,6.25519,0,0),
(38142,52,-315.887,15.0052,-106.098,0,0,2.96515,0,0),
(38142,53,-340.819,22.63,-101.44,0,0,2.72168,0,0),
-- #86047
(86047,1,-92.1335,-263.5,-55.1471,0,0,6.02698,0,0),
(86047,2,-106.231,-261.353,-56.7172,0,0,2.73224,0,0),
(86047,3,-120.101,-253.275,-60.6152,0,0,2.38902,0,0),
(86047,4,-139.359,-231.038,-69.0037,0,0,2.36938,0,0),
(86047,5,-151.376,-220.705,-71.1936,0,0,2.18795,0,0),
(86047,6,-153.009,-209.864,-69.7622,0,0,1.62639,0,0),
(86047,7,-146.822,-194.599,-67.9765,0,0,1.1473,0,0),
(86047,8,-136.908,-184.485,-67.9747,0,0,0.695698,0,0),
(86047,9,-123.475,-183.161,-68.5726,0,0,0.032036,0,0),
(86047,10,-100.027,-189.878,-69.2976,0,0,5.88011,0,0),
(86047,11,-92.9727,-197.987,-69.0403,0,0,5.06173,0,0),
(86047,12,-86.1435,-234.91,-67.3263,0,0,4.72008,0,0),
(86047,13,-88.5791,-206.593,-68.7181,0,0,2.01046,0,0),
(86047,14,-93.7853,-193.261,-69.1191,0,0,2.56024,0,0),
(86047,15,-109.382,-186.175,-68.2055,0,0,2.86654,0,0),
(86047,16,-129.302,-182.523,-68.2975,0,0,3.0786,0,0),
(86047,17,-140.864,-187.701,-68.3682,0,0,3.7776,0,0),
(86047,18,-150.024,-201.89,-68.2674,0,0,4.31167,0,0),
(86047,19,-152.654,-214.459,-70.5901,0,0,4.90542,0,0),
(86047,20,-146.049,-226.086,-70.5659,0,0,5.36488,0,0),
(86047,21,-130.668,-237.694,-65.8215,0,0,5.60049,0,0),
(86047,22,-120.01,-253.226,-60.5953,0,0,5.33346,0,0),
(86047,23,-111.762,-260.232,-57.7123,0,0,5.89501,0,0),
-- #87157
(87157,1,-363.202,-124.745,-64.5286,0,0,5.37462,0,0),
(87157,2,-351.567,-139.68,-62.6226,0,0,5.55212,0,0),
(87157,3,-336.065,-152.713,-62.5707,0,0,5.90241,0,0),
(87157,4,-322.947,-155.601,-61.6374,0,0,0.110092,0,0),
(87157,5,-312.726,-146.397,-61.6134,0,0,1.05257,0,0),
(87157,6,-307.947,-129.021,-61.4873,0,0,1.37458,0,0),
(87157,7,-303.853,-114.418,-63.221,0,0,0.85622,0,0),
(87157,8,-300.46,-104.332,-63.9405,0,0,1.73508,0,0),
(87157,9,-307.52,-87.7816,-64.5265,0,0,2.2613,0,0),
(87157,10,-316.789,-74.3077,-64.6553,0,0,2.0139,0,0),
(87157,11,-318.486,-57.8479,-64.3392,0,0,1.61334,0,0),
(87157,12,-299.255,-27.578,-60.9011,0,0,1.07613,0,0),
(87157,13,-296.014,-16.0174,-59.9064,0,0,2.13956,0,0),
(87157,14,-301.692,-15.5349,-59.7131,0,0,3.91149,0,0),
(87157,15,-310.984,-28.9368,-60.89,0,0,3.86515,0,0),
(87157,16,-326.361,-35.7607,-63.2927,0,0,3.66802,0,0),
(87157,17,-341.033,-53.6849,-64.2189,0,0,4.08271,0,0),
(87157,18,-354.261,-77.6512,-65.5206,0,0,4.23586,0,0),
(87157,19,-362.873,-94.2526,-65.9622,0,0,4.02144,0,0),
(87157,20,-373.72,-100.064,-65.2587,0,0,4.11177,0,0);
-- Deviate Dreadfang / Venomwing
UPDATE creature SET position_x = -216.087051, position_y = -326.585144, position_z = -71.001495, spawndist = 10, MovementType = 1 WHERE guid = 87132;
UPDATE creature SET position_x = -360.120270, position_y = -117.154121, position_z = -64.733063, spawndist = 5, MovementType = 1 WHERE guid = 87156;
UPDATE creature SET position_x = -248.955383, position_y = -216.704453, position_z = -63.100262, spawndist = 5, MovementType = 1 WHERE guid = 87130;
UPDATE creature SET spawndist = 0, movementType = 2 WHERE guid = 38122;
DELETE FROM creature_movement WHERE id = 38122;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(38122,1,-208.549,58.0016,-49.601,0,0,6.06974,0,0),
(38122,2,-203.835,54.7533,-49.2746,0,0,5.43749,0,0),
(38122,3,-199.685,46.4123,-48.9119,0,0,5.21208,0,0),
(38122,4,-197.392,41.2041,-48.6779,0,0,5.93308,0,0),
(38122,5,-192.449,41.5195,-47.8548,0,0,0.744733,0,0),
(38122,6,-179.34,54.9077,-43.814,0,0,1.23011,0,0),
(38122,7,-177.227,63.0098,-43.5805,0,0,1.74062,0,0),
(38122,8,-182.851,69.7657,-45.6939,0,0,2.64618,0,0),
(38122,9,-193.14,70.3026,-47.7897,0,0,3.75202,0,0),
(38122,10,-196.643,63.5984,-48.3302,0,0,4.56491,0,0),
(38122,11,-189.152,56.1746,-47.3711,0,0,5.96683,0,0),
(38122,12,-174.955,55.8997,-42.2382,0,0,6.19852,0,0),
(38122,13,-165.256,50.6814,-39.4577,0,0,5.64874,0,0),
(38122,14,-157.318,42.6426,-35.5535,0,0,5.36208,0,0),
(38122,15,-153.533,37.0276,-32.6655,0,0,5.28354,0,0),
(38122,16,-146.112,23.6438,-28.4371,0,0,5.20107,0,0),
(38122,17,-153.574,37.4096,-32.7856,0,0,2.18094,0,0),
(38122,18,-157.071,42.8507,-35.5542,0,0,2.33881,0,0),
(38122,19,-164.853,50.4357,-39.3263,0,0,2.44484,0,0),
(38122,20,-175.119,55.5717,-42.3054,0,0,3.19297,0,0),
(38122,21,-185.059,55.6917,-46.2679,0,0,3.06103,0,0),
(38122,22,-193.243,58.1374,-48.1044,0,0,2.56544,0,0),
(38122,23,-196.708,63.5264,-48.3384,0,0,1.69443,0,0),
(38122,24,-194.343,68.5748,-47.9196,0,0,0.840706,0,0),
(38122,25,-188.65,71.3681,-47.0857,0,0,0.275219,0,0),
(38122,26,-182.183,69.6568,-45.4077,0,0,5.82799,0,0),
(38122,27,-177.402,63.6642,-43.6598,0,0,4.94835,0,0),
(38122,28,-179.533,54.5513,-43.8893,0,0,4.10876,0,0),
(38122,29,-190.949,42.8993,-47.4698,0,0,3.55742,0,0),
(38122,30,-198.366,42.2613,-48.7994,0,0,2.89297,0,0),
(38122,31,-201.596,51.2377,-49.1721,0,0,1.96227,0,0),
(38122,32,-205.358,57.1103,-49.3369,0,0,2.71233,0,0),
(38122,33,-211.604,58.3914,-49.856,0,0,3.32268,0,0),
(38122,34,-220.119,58.1735,-49.0032,0,0,2.96791,0,0),
(38122,35,-230.435,59.9715,-49.5928,0,0,3.21346,0,0),
(38122,36,-245.867,58.3075,-51.8376,0,0,3.44123,0,0),
(38122,37,-262.987,52.1493,-54.1098,0,0,3.66507,0,0),
(38122,38,-269.738,46.4245,-54.6324,0,0,4.3837,0,0),
(38122,39,-272.867,29.4482,-59.3862,0,0,4.54471,0,0),
(38122,40,-276.413,17.8821,-61.3901,0,0,4.27375,0,0),
(38122,41,-273.023,29.1812,-59.436,0,0,1.28924,0,0),
(38122,42,-269.989,46.11,-54.7535,0,0,0.975077,0,0),
(38122,43,-262.959,52.3755,-54.0855,0,0,0.485774,0,0),
(38122,44,-245.125,58.3236,-51.7314,0,0,0.104855,0,0),
(38122,45,-234.488,59.2599,-50.0718,0,0,6.25131,0,0),
(38122,46,-220.257,58.488,-49.0034,0,0,6.26701,0,0);

-- UDB_254
-- q.13188 'Where kings walk' -- ALLIANCE
-- script targets for spell 58533
DELETE FROM spell_script_target WHERE entry = 58533;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES 
(58533, 1, 68, 0), 
(58533, 1, 1756, 0),
(58533, 1, 1976, 0);
-- q.13189 'Warchief's Blessing'  -- HORDE 
-- script targets for spell 58552
DELETE FROM spell_script_target WHERE entry = 58552;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES 
(58552, 1, 3296, 0), 
(58552, 1, 14304, 0);

-- UDB_256
-- All Is Well That Ends Well (q.13631) 
-- Heroic: All Is Well That Ends Well (q.13819) 
-- UPDATE
-- Generic Trigger movement scripts
DELETE FROM creature_movement WHERE id IN (88673,88680,88679,88682,88681,88675,88676,88672,88677,88678);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, script_id, waittime, orientation) VALUES
(88673,1,5713.23,646.632,653.144,2833201,1000,0),
(88680,1,5711.03,645.710,653.777,2833201,1000,0),
(88679,1,5709.35,644.943,655.873,2833201,1000,0),
(88682,1,5712.54,644.603,656.470,2833201,1000,0),
(88681,1,5710.70,648.617,656.536,2833201,1000,0),
(88675,1,5713.02,648.027,657.159,2833201,1000,0),
(88676,1,5711.06,645.764,672.082,2833202,1000,0),
(88672,1,5711.69,645.936,737.186,2833202,1000,0),
(88677,1,5711.45,646.144,761.046,2833202,1000,0),
(88678,1,5711.72,645.971,796.194,2833202,1000,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (8867301,8867601); -- how i missed that :/
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2833201,2833202);
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,comments) VALUES
(2833201,0,32,1,0,0,0,0,'Generic Trigger LAB (Large AOI) - pause wp'),
(2833201,0,15,64367,0,28332,88676,25,'Generic Trigger LAB (Large AOI) - Cast Algalon Event Beam'),
(2833202,0,32,1,0,0,0,0,'Generic Trigger LAB (Large AOI) - pause wp'),
(2833202,0,15,64367,0,28332,88674,25,'Generic Trigger LAB (Large AOI) - Cast Algalon Event Beam'),
(2833202,0,15,64510,0,28332,88674,16,'Generic Trigger LAB (Large AOI) - Cast Reply-Code Alpha'),
(2833202,49,15,64581,0,28332,88674,16,'Generic Trigger LAB (Large AOI) - Cast Reply-Code Alpha'),
(2833202,49,15,64580,0,28332,88674,25,'Generic Trigger LAB (Large AOI) - Cast Algalon Event Beam Climax');
-- Rhonin updates
UPDATE creature_movement_template SET script_id = 1612801 WHERE entry = 16128 AND point = 23;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1612823; -- old script not needed (lets use correct id)
DELETE FROM dbscripts_on_creature_movement WHERE id = 1612801;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES 
(1612801,0,32,1,0,0,0,0,0,'Rhonin - pause wp'),
(1612801,1,21,1,0,0,0,0,0,'Rhonin - active'),
(1612801,1,1,22,0,0,0,0,0,'Rhonin - emote shout'),
(1612801,1,35,5,200,0,0,0,0,'Rhonin - send custom AI event A for the spell event'),
(1612801,0,0,0,0,0,0,0,2000000335,'Rhonin - say_event_1'),
(1612801,6,0,0,0,0,0,0,2000000336,'Rhonin - say_event_2'),
(1612801,12,0,0,0,0,0,0,2000000337,'Rhonin - say_event_3'),
(1612801,21,0,0,0,0,0,0,2000000338,'Rhonin - say_event_4'),
(1612801,25,0,0,0,0,0,0,2000000339,'Rhonin - say_event_5'),
(1612801,34,0,0,0,0,0,0,2000000340,'Rhonin - say_event_6'),
(1612801,49,0,0,0,0,0,0,2000000341,'Rhonin - say_event_complete'),
-- ToDo: trigger the universe animation globe
(1612801,63,15,51347,0,0,0,0,0,'Rhonin - Cast Simple Teleport'),
(1612801,63,35,6,220,0,0,0,0,'Rhonin - send custom AI event B'),
(1612801,64,29,3,1,0,0,0,0,'Rhonin - add npc_flag questgiver'),
(1612801,64,21,0,0,0,0,0,0,'Rhonin - unactive'),
(1612801,64,18,0,0,0,0,0,0,'Rhonin - despawn'),
(1612801,65,41,0,0,0,0,0,0,'Rhonin - respawn');

-- UDB_257
-- q.10097 'Brother Against Brother'
-- Lakka - correct gossip script
-- wrong submenus removed (they belong to Isfar.)
select * from dbscripts_on_gossip WHERE id = 7868;
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 7868, condition_id = 1013 WHERE menu_id = 7868;
DELETE FROM dbscripts_on_gossip WHERE id = 7868;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(7868,1,8,18956,1,0,0,0,0,0,0,0,0,0,0,0,''),
(7868,1,0,0,0,18956,132569,0x10,2000000600,0,0,0,0,0,0,0,''),
(7868,4,13,0,0,183051,50,1,0,0,0,0,0,0,0,0,''),
(7868,4,20,2,0,18956,132569,0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint');
-- gossip should be available only with q. active
DELETE FROM conditions WHERE condition_entry = 1013; 
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1013, 9, 10097, 0);
-- Lakka and Cage should be available also in heroic mode
UPDATE creature SET spawnmask = 3, spawntimesecs = 10800 WHERE id = 18956;
UPDATE gameobject SET spawnmask = 3 WHERE guid = 67620;
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
DELETE FROM db_script_string WHERE entry IN (2000000600,2000000601);
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000600, 'Thank you for freeing me, $n! I\'m going to make my way to Shattrath!', 0, 0, 0, 0, NULL),
(2000000601, 'Well done! Hurry, though, we don\'t want to be caught!', 0, 1, 0, 0, NULL);
-- Lakka must yell after Darkweaver Syth's death
DELETE FROM dbscripts_on_creature_death WHERE id = 18472;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(18472,1,0,0,0,18956,132569,0x10,2000000601,0,0,0,0,0,0,0,'');

-- UDB_258
-- Auchindoun
-- portals corrected
-- Sethekk Halls
DELETE FROM gameobject WHERE guid = 25060;
UPDATE gameobject SET spawnmask = 3 WHERE guid = 5395;
-- Shadow Labyrinth
UPDATE gameobject SET spawnmask = 3 WHERE guid = 25061;
-- Auchenai Crypts
UPDATE gameobject SET id = 184184 WHERE guid = 5388;
UPDATE gameobject SET spawnmask = 3 WHERE guid = 5389;
-- Mana Tombs
DELETE FROM gameobject WHERE guid = 5236;

-- UDB_259
-- Isfar
-- missing gossip added
UPDATE gossip_menu_option SET action_menu_id = 7875 WHERE menu_id = 7866 AND id = 2;
DELETE FROM gossip_menu WHERE entry = 7875; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7875, 9639, 0, 0);

-- UDB_260
-- Sethekk Halls - Update
-- Sethekk Oracle
DELETE FROM creature WHERE guid = 84633; -- Duplicate
UPDATE creature SET position_x = -75.43511, position_y = 173.65, position_z = 0.009714, orientation = 5.811946 WHERE guid = 43422;
-- Avian Flye
UPDATE creature_template SET InhabitType = 4 WHERE entry IN (21931,21988);
-- missing spawns added -- UDB free guids reused
DELETE FROM creature WHERE guid IN (26256,27349,27359,27360,27367,27379,27388,33936,33938,33960,33967,38113,38117,38144,44351);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, curhealth, curmana, spawndist, MovementType) VALUES
(26256, 21931, 556, 3, 1, -69.078, 255.062, 27.6692, 2.23169, 7200, 6326, 0, 0, 2),
(27349, 21931, 556, 3, 1, 84.91618,251.3969,37.0668, 3.204143, 7200, 6326, 0, 0, 2),
(27359, 21931, 556, 3, 1, 82.7928, 251.0653, 37.0668, 3.192098, 7200, 6326, 0, 0, 2),
(27360, 21931, 556, 3, 1, -55.35431, 292.4135, 27.84376, 3.334406, 7200, 6326, 0, 0, 2),
(27367, 21931, 556, 3, 1, -56.81138, 293.4768, 27.82975, 1.066901, 7200, 6326, 0, 0, 2),
(27379, 21931, 556, 3, 1, -109.229, 288.209, 53.3584, 3.249347, 7200, 6326, 0, 0, 2),
(27388, 21931, 556, 3, 1, -77.7733, 299.15, 60.5558, 5.757163, 7200, 6326, 0, 0, 2),
(33936, 21931, 556, 3, 1, -52.39689, 293.2879, 27.82958, 1.420948, 7200, 6326, 0, 0, 2),
(33938, 21931, 556, 3, 1, -65.26201, 281.413, 47.28283, 0.8305511, 7200, 6326, 0, 0, 2),
(33960, 21931, 556, 3, 1, -59.42, 289.0999, 27.89292, 2.894336, 7200, 6326, 0, 0, 2),
(33967, 21931, 556, 3, 1, -102.279, 278.86, 56.0703, 5.414571, 7200, 6326, 0, 0, 2),
(38113, 21931, 556, 3, 1, -86.60637, 286.1224, 27.48317, 2.953945, 7200, 6326, 0, 0, 2),
(38117, 21931, 556, 3, 1, -68.3353, 281.741, 61.757, 3.844181, 7200, 6326, 0, 0, 2),
(38144, 21931, 556, 3, 1, -71.9701, 272.574, 59.1446, 6.184331, 7200, 6326, 0, 0, 2),
(44351, 21931, 556, 3, 1, -84.35631, 263.7281, 27.80793, 4.523829, 7200, 6326, 0, 0, 2);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2193101,2193102); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2193101,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2193102,1,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'despawn'),
(2193102,2,41,0,0,0,0,0,0,0,0,0,0,0,0,0,'respawn');
-- Waypoints
DELETE FROM creature_movement WHERE id IN (26256,44351,27359,33938,27367,33960,33936,27360,27379,38144,38113,38117,33967,27388,27349);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #1
(26256,1,-69.078,255.062,27.6692,1000,2193101,0,0,0),
(26256,2,-69.078,255.062,27.6692,0,0,0,0,0),
(26256,3,-77.6467,256.825,27.8182,0,0,0,0,0),
(26256,4,-85.5541,263.248,37.4314,0,0,0,0,0),
(26256,5,-89.3701,273.449,46.1637,0,0,0,0,0),
(26256,6,-87.3918,283.626,55.5433,0,0,0,0,0),
(26256,7,-81.6323,288.392,67.374,0,0,0,0,0),
(26256,8,-83.6451,281.803,77.323,0,0,0,0,0),
(26256,9,-97.3242,280.983,74.488,0,0,0,0,0),
(26256,10,-95.2966,294.303,27.4832,0,0,0,0,0),
(26256,11,-91.9066,298.554,40.3148,0,0,0,0,0),
(26256,12,-84.9968,296.969,52.3776,0,0,0,0,0),
(26256,13,-81.5458,289.807,63.8514,0,0,0,0,0),
(26256,14,-91.5585,284.275,71.9894,0,0,0,0,0),
(26256,15,-95.834,292.943,27.4832,0,0,0,0,0),
(26256,16,-94.3393,295.352,41.1404,0,0,0,0,0),
(26256,17,-88.5665,292.19,53.5047,0,0,0,0,0),
(26256,18,-88.0789,284.173,65.0211,0,0,0,0,0),
(26256,19,-96.7033,282.247,75.63,0,0,0,0,0),
(26256,20,-92.1857,296.241,27.4832,0,0,0,0,0),
-- #2
(44351,1,-84.35631,263.7281,27.80793,1000,2193101,0,0,0),
(44351,2,-87.4666,261.464,58.4138,0,0,0,0,0),
(44351,3,-94.4575,270.352,66.6585,0,0,0,0,0),
(44351,4,-95.7386,284.443,27.4832,0,0,0,0,0),
(44351,5,-91.3219,290.488,39.2894,0,0,0,0,0),
(44351,6,-84.573,290.53,51.5467,0,0,0,0,0),
(44351,7,-83.1581,284.409,64.0506,0,0,0,0,0),
(44351,8,-92.9101,280.978,73.484,0,0,0,0,0),
(44351,9,-96.079,293.202,74.566,0,0,0,0,0),
(44351,10,-82.8515,297.569,74.9201,0,0,0,0,0),
(44351,11,-77.4638,284.989,27.4832,0,0,0,0,0),
(44351,12,-81.0183,279.803,39.9446,0,0,0,0,0),
(44351,13,-89.1536,280.506,51.3678,0,0,0,0,0),
(44351,14,-94.1382,293.611,27.4832,0,0,0,0,0),
(44351,15,-88.9669,297.982,39.6762,0,0,0,0,0),
(44351,16,-84.4414,293.357,52.098,0,0,0,0,0),
(44351,17,-86.5034,284.787,63.0289,0,0,0,0,0),
(44351,18,-97.8593,278.945,26.2094,0,0,0,0,0),
(44351,19,-83.9472,285.452,63.0513,0,0,0,0,0),
(44351,20,-93.4871,275.608,26.8408,0,0,0,0,0),
-- #3
(27359,1,84.91618,251.3969,37.0668,1000,2193101,0,0,0),
(27359,2,83.96513,251.0878,37.0668,0,0,0,0,0),
(27359,3,51.4796,252.1832,37.0668,0,0,0,0,0),
(27359,4,33.24739,282.4318,37.0668,0,0,0,0,0),
(27359,5,-4.585953,288.248,37.0668,0,0,0,0,0),
(27359,6,-33.12523,287.3879,33.65012,0,0,0,0,0),
(27359,7,-63.6614,287.1449,37.0668,0,0,0,0,0),
(27359,8,-86.58053,281.3122,37.0668,0,0,0,0,0),
(27359,9,-122.8668,287.5829,33.70568,0,0,0,0,0),
(27359,10,-166.1352,286.0018,37.0668,0,0,0,0,0),
(27359,11,-197.1293,319.5987,41.56683,0,0,0,0,0),
(27359,12,-226.7219,321.6883,41.53905,0,0,0,0,0),
(27359,13,-241.978,284.0257,37.0668,0,0,0,0,0),
(27359,14,-241.867,239.6969,34.78908,0,0,0,0,0),
(27359,15,-240.4087,205.2585,33.28898,0,0,0,0,0),
(27359,16,-247.9211,181.8263,37.0668,0,0,0,0,0),
(27359,17,-258.5413,176.8185,28.87236,0,0,0,0,0),
(27359,18,-254.5885,187.9291,17.59458,0,0,0,0,0),
(27359,19,-233.2822,183.525,9.455688,0,0,0,0,0),
(27359,20,-207.9685,174.1038,9.455688,0,0,0,0,0),
(27359,21,-174.2731,173.5923,7.177915,0,0,0,0,0),
(27359,22,-153.4284,164.0868,10.48346,0,0,0,0,0),
(27359,23,-141.7187,162.8539,10.98347,0,0,0,0,0),
(27359,24,-125.9314,171.5796,9.150148,0,0,0,0,0),
(27359,25,-97.73457,173.6499,7.150136,0,0,0,0,0),
(27359,26,-82.8989,173.9212,10.3168,0,0,0,0,0),
(27359,27,-73.91816,173.0771,10.3168,0,0,0,0,0),
(27359,28,-69.98465,163.4588,10.3168,0,0,0,0,0),
(27359,29,-70.28123,156.7726,9.34458,0,0,0,0,0),
(27359,30,-71.15484,128.5923,6.705695,0,0,0,0,0),
(27359,31,-80.03834,115.5755,7.511248,0,0,0,0,0),
(27359,32,-82.54434,99.08558,7.511248,0,0,0,0,0),
(27359,33,-74.70563,88.52892,7.511248,0,0,0,0,0),
(27359,34,-60.10373,87.1475,7.511248,0,0,0,0,0),
(27359,35,-43.85668,99.20913,7.039028,0,0,0,0,0),
(27359,36,-21.47738,99.80711,7.261249,0,0,0,0,0),
(27359,37,7.509675,100.2483,7.511248,0,0,0,0,0),
(27359,38,27.40248,97.8097,19.31681,0,0,0,0,0),
(27359,39,37.0373,95.82257,30.84459,3000,2193102,0,0,0),
-- #4
(33938,1,-119.16,291.958,26.7305,1000,2193101,0,0,0),
(33938,2,-119.16,291.958,26.7305,0,0,0,0,0),
(33938,3,-118.246,291.551,26.7198,0,0,0,0,0),
(33938,4,-116.125,290.169,41.5238,0,0,0,0,0),
(33938,5,-114.528,275.12,40.1532,0,0,0,0,0),
(33938,6,-90.689,265.24,41.0333,0,0,0,0,0),
(33938,7,-62.0894,286.098,48.6939,0,0,0,0,0),
(33938,8,-76.8407,304.686,51.9439,0,0,0,0,0),
(33938,9,-98.7576,303.572,46.4161,0,0,0,0,0),
-- #5
(27367,1,-56.81138,293.4768,27.82975,1000,2193101,0,0,0),
(27367,2,-58.7468,295.764,29.4033,0,0,0,0,0),
(27367,3,-80.8255,317.109,28.9557,0,0,0,0,0),
(27367,4,-84.6018,313.357,62.0829,0,0,0,0,0),
(27367,5,-100.485,310.06,60.6726,0,0,0,0,0),
(27367,6,-119.643,290.201,57.4676,0,0,0,0,0),
(27367,7,-119.602,271.028,61.3137,0,0,0,0,0),
(27367,8,-99.3827,260.039,59.8997,0,0,0,0,0),
(27367,9,-62.9444,265.206,63.3061,0,0,0,0,0),
(27367,10,-53.9817,286.896,63.0482,0,0,0,0,0),
(27367,11,-66.9341,300.934,58.5854,0,0,0,0,0),
(27367,12,-82.0958,309.241,61.3414,0,0,0,0,0),
(27367,13,-100.199,310.19,60.9001,0,0,0,0,0),
(27367,14,-109.249,296.2,58.5368,0,0,0,0,0),
(27367,15,-112.956,287.824,28.945,0,0,0,0,0),
(27367,16,-131.244,263.41,30.9794,0,0,0,0,0),
(27367,17,-124.562,262.687,57.9071,0,0,0,0,0),
(27367,18,-89.1208,261.935,60.3001,0,0,0,0,0),
(27367,19,-66.6449,264.328,64.3038,0,0,0,0,0),
(27367,20,-56.4546,270.201,65.3866,0,0,0,0,0),
(27367,21,-53.7442,287.453,64.0839,0,0,0,0,0),
(27367,22,-56.4072,293.549,29.5758,0,0,0,0,0),
-- #6
(33960,1,-59.42,289.0999,27.89292,1000,2193101,0,0,0),
(33960,2,-58.7468,295.764,29.4033,0,0,0,0,0),
(33960,3,-80.8255,317.109,28.9557,0,0,0,0,0),
(33960,4,-84.6018,313.357,62.0829,0,0,0,0,0),
(33960,5,-100.485,310.06,60.6726,0,0,0,0,0),
(33960,6,-119.643,290.201,57.4676,0,0,0,0,0),
(33960,7,-119.602,271.028,61.3137,0,0,0,0,0),
(33960,8,-99.3827,260.039,59.8997,0,0,0,0,0),
(33960,9,-62.9444,265.206,63.3061,0,0,0,0,0),
(33960,10,-53.9817,286.896,63.0482,0,0,0,0,0),
(33960,11,-66.9341,300.934,58.5854,0,0,0,0,0),
(33960,12,-82.0958,309.241,61.3414,0,0,0,0,0),
(33960,13,-100.199,310.19,60.9001,0,0,0,0,0),
(33960,14,-109.249,296.2,58.5368,0,0,0,0,0),
(33960,15,-112.956,287.824,28.945,0,0,0,0,0),
(33960,16,-131.244,263.41,30.9794,0,0,0,0,0),
(33960,17,-124.562,262.687,57.9071,0,0,0,0,0),
(33960,18,-89.1208,261.935,60.3001,0,0,0,0,0),
(33960,19,-66.6449,264.328,64.3038,0,0,0,0,0),
(33960,20,-56.4546,270.201,65.3866,0,0,0,0,0),
(33960,21,-53.7442,287.453,64.0839,0,0,0,0,0),
(33960,22,-56.4072,293.549,29.5758,0,0,0,0,0),
-- #7
(33936,1,-52.39689,293.2879,27.82958,1000,2193101,0,0,0),
(33936,2,-58.7468,295.764,29.4033,0,0,0,0,0),
(33936,3,-80.8255,317.109,28.9557,0,0,0,0,0),
(33936,4,-84.6018,313.357,62.0829,0,0,0,0,0),
(33936,5,-100.485,310.06,60.6726,0,0,0,0,0),
(33936,6,-119.643,290.201,57.4676,0,0,0,0,0),
(33936,7,-119.602,271.028,61.3137,0,0,0,0,0),
(33936,8,-99.3827,260.039,59.8997,0,0,0,0,0),
(33936,9,-62.9444,265.206,63.3061,0,0,0,0,0),
(33936,10,-53.9817,286.896,63.0482,0,0,0,0,0),
(33936,11,-66.9341,300.934,58.5854,0,0,0,0,0),
(33936,12,-82.0958,309.241,61.3414,0,0,0,0,0),
(33936,13,-100.199,310.19,60.9001,0,0,0,0,0),
(33936,14,-109.249,296.2,58.5368,0,0,0,0,0),
(33936,15,-112.956,287.824,28.945,0,0,0,0,0),
(33936,16,-131.244,263.41,30.9794,0,0,0,0,0),
(33936,17,-124.562,262.687,57.9071,0,0,0,0,0),
(33936,18,-89.1208,261.935,60.3001,0,0,0,0,0),
(33936,19,-66.6449,264.328,64.3038,0,0,0,0,0),
(33936,20,-56.4546,270.201,65.3866,0,0,0,0,0),
(33936,21,-53.7442,287.453,64.0839,0,0,0,0,0),
(33936,22,-56.4072,293.549,29.5758,0,0,0,0,0),
-- #8
(27360,1,-62.0894,286.098,48.6939,1000,2193101,0,0,0),
(27360,2,-76.8407,304.686,51.9439,0,0,0,0,0),
(27360,3,-98.7576,303.572,46.4161,0,0,0,0,0),
(27360,4,-119.16,291.958,26.7305,0,0,0,0,0),
(27360,5,-119.16,291.958,26.7305,0,0,0,0,0),
(27360,6,-118.246,291.551,26.7198,0,0,0,0,0),
(27360,7,-116.125,290.169,41.5238,0,0,0,0,0),
(27360,8,-114.528,275.12,40.1532,0,0,0,0,0),
(27360,9,-90.689,265.24,41.0333,0,0,0,0,0),
-- #9
(27379,1,-109.229,288.209,53.3584,1000,2193101,0,0,0),
(27379,2,-102.279,278.86,56.0703,0,0,0,0,0),
(27379,3,-88.1313,272.423,59.4688,0,0,0,0,0),
(27379,4,-71.9701,272.574,59.1446,0,0,0,0,0),
(27379,5,-68.3353,281.741,61.757,0,0,0,0,0),
(27379,6,-77.7733,299.15,60.5558,0,0,0,0,0),
(27379,7,-94.7425,300.49,56.1018,0,0,0,0,0),
-- #10
(38144,1,-71.9701,272.574,59.1446,1000,2193101,0,0,0),
(38144,2,-68.3353,281.741,61.757,0,0,0,0,0),
(38144,3,-77.7733,299.15,60.5558,0,0,0,0,0),
(38144,4,-94.7425,300.49,56.1018,0,0,0,0,0),
(38144,5,-109.229,288.209,53.3584,0,0,0,0,0),
(38144,6,-102.279,278.86,56.0703,0,0,0,0,0),
(38144,7,-88.1313,272.423,59.4688,0,0,0,0,0),
-- #11
(38117,1,-68.3353,281.741,61.757,1000,2193101,0,0,0),
(38117,2,-77.7733,299.15,60.5558,0,0,0,0,0),
(38117,3,-94.7425,300.49,56.1018,0,0,0,0,0),
(38117,4,-109.229,288.209,53.3584,0,0,0,0,0),
(38117,5,-102.279,278.86,56.0703,0,0,0,0,0),
(38117,6,-88.1313,272.423,59.4688,0,0,0,0,0),
(38117,7,-71.9701,272.574,59.1446,0,0,0,0,0),
-- #12
(33967,1,-102.279,278.86,56.0703,1000,2193101,0,0,0),
(33967,2,-88.1313,272.423,59.4688,0,0,0,0,0),
(33967,3,-71.9701,272.574,59.1446,0,0,0,0,0),
(33967,4,-68.3353,281.741,61.757,0,0,0,0,0),
(33967,5,-77.7733,299.15,60.5558,0,0,0,0,0),
(33967,6,-94.7425,300.49,56.1018,0,0,0,0,0),
(33967,7,-109.229,288.209,53.3584,0,0,0,0,0),
-- #13
(27388,1,-77.7733,299.15,60.5558,1000,2193101,0,0,0),
(27388,2,-94.7425,300.49,56.1018,0,0,0,0,0),
(27388,3,-109.229,288.209,53.3584,0,0,0,0,0), 
(27388,4,-102.279,278.86,56.0703,0,0,0,0,0),
(27388,5,-88.1313,272.423,59.4688,0,0,0,0,0),
(27388,6,-71.9701,272.574,59.1446,0,0,0,0,0),
(27388,7,-68.3353,281.741,61.757,0,0,0,0,0),
-- #14
(38113,1,-86.60637,286.1224,27.48317,1000,2193101,0,0,0),
(38113,2,-84.2669,286.076,57.4227,0,0,0,0,0),
(38113,3,-71.9701,272.574,59.1446,0,0,0,0,0),
(38113,4,-68.3353,281.741,61.757,0,0,0,0,0),
(38113,5,-77.7733,299.15,60.5558,0,0,0,0,0),
(38113,6,-94.7425,300.49,56.1018,0,0,0,0,0),
(38113,7,-109.229,288.209,53.3584,0,0,0,0,0),
(38113,8,-102.279,278.86,56.0703,0,0,0,0,0),
(38113,9,-88.1313,272.423,59.4688,0,0,0,0,0),
-- #15
(27349,1,84.91618,251.3969,37.0668,1000,2193101,0,0,0),
(27349,2,83.96513,251.0878,37.0668,0,0,0,0,0),
(27349,3,51.4796,252.1832,37.0668,0,0,0,0,0),
(27349,4,33.24739,282.4318,37.0668,0,0,0,0,0),
(27349,5,-4.585953,288.248,37.0668,0,0,0,0,0),
(27349,6,-33.12523,287.3879,33.65012,0,0,0,0,0),
(27349,7,-63.6614,287.1449,37.0668,0,0,0,0,0),
(27349,8,-77.5616,286.325,98.1903,3000,2193102,0,0,0);

-- UDB_261
-- Mana Tombs
-- Ethereal Darkcaster
UPDATE creature SET position_x = -223.980988, position_y = -203.967545, position_z = -0.436449, orientation = 5.690035, MovementType = 0, spawndist = 0 WHERE guid = 83345;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 83344;
DELETE FROM creature_movement WHERE id = 83344;
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
UPDATE creature SET position_x = -375.374268, position_y = -197.648071, position_z = -0.960078, orientation = 4.735300 WHERE guid = 83331;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 83329;
DELETE FROM creature_movement WHERE id = 83329;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(83329,1,-372.874,-237.685,-0.957908,0,0,0,0,0),
(83329,2,-373.266,-189.421,-0.959992,0,0,0,0,0);
-- links
DELETE FROM creature_linking WHERE guid IN (83330,83331);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(83330, 83329, 515),
(83331, 83329, 515);
-- Nexus Terror
UPDATE creature SET position_x = -283.658905, position_y = -4.813263, position_z = 16.685390, orientation = 4.643475, MovementType = 2, spawndist = 0 WHERE guid = 91201;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 91194;
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

-- UDB_262
-- Arcane Fiend in Mana Tombs - Duplicates removed 
-- should be spawned by Ethereal Sorcerer
DELETE FROM creature WHERE guid IN (91246,91245);
DELETE FROM creature_addon WHERE guid IN (91246,91245);
DELETE FROM creature_movement WHERE id IN (91246,91245);

-- UDB_263
-- q.10216 'Safety Is Job One'
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 8023, condition_id = 1016 WHERE menu_id = 8023;
DELETE FROM dbscripts_on_gossip WHERE id = 8023;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8023,1,31,19671,200,0,0,0x08,0,0,0,0,0,0,0,0,'search for 19671'), -- script wont run if one is already there
(8023,2,10,19671,7200000,0,0,0,0,0,0,0,-362.876,-71.3333,-0.960223,0.19633,'summon Cryo-Engineer Sha\'heen'),
(8023,3,10,19672,30000,0,0,0,0,0,0,0,-364.486,-78.9999,-0.950388,0.64874,'summon Consortium Laborer'),
(8023,3,10,19672,30000,0,0,0,0,0,0,0,-369.053,-60.7257,-0.957958,5.85593,'summon Consortium Laborer'),
(8023,3,10,19672,30000,0,0,0,0,0,0,0,-377.158,-55.3329,-0.960079,6.03029,'summon Consortium Laborer'),
(8023,4,10,19672,30000,0,0,0,0,0,0,0,-382.865,-65.0304,-0.959933,4.75847,'summon Consortium Laborer'),
(8023,5,10,19672,30000,0,0,0,0,0,0,0,-374.18,-83.7084,-0.959933,6.2613,'summon Consortium Laborer');
-- gossip should be available only after q.10216 completed and before q.10218
DELETE FROM conditions WHERE condition_entry IN (1014,1015,1016); 
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1016, -1, 1015, 1014),
(1015, 8, 10216, 0),
(1014, 22, 10218, 0);
-- Cryo-Engineer Sha'heen
UPDATE creature_template SET MovementType = 0 WHERE entry = 19671;
-- Control Panel
UPDATE gameobject SET orientation = 3.85718, spawntimesecs = 7200, animprogress = 255 WHERE guid = 43146;
-- Consortium Laborer
-- emote shouldnt be for all.
UPDATE creature_template_addon SET emote = 0 WHERE entry = 19672;
DELETE FROM creature_addon WHERE guid IN (84499,84500,84501,84502);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(84499,0,0,0,0,233,0,NULL),
(84500,0,0,0,0,233,0,NULL),
(84501,0,0,0,0,233,0,NULL),
(84502,0,0,0,0,233,0,NULL);

-- UDB_264
-- Auchenai Crypts
-- Cosmetic Raging Soul - missing added - UDB free guids reused
DELETE FROM creature WHERE guid = 44352;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, curhealth, curmana, spawndist, MovementType) VALUES
(44352, 18778, 558, 3, 1, 141.688, -17.801, 9.30814, 2.129302, 7200, 3785, 2790, 0, 0);
UPDATE creature_template SET InhabitType = 4, UnitFlags = 33554688, ExtraFlags = 2 WHERE entry IN (18778,20304);
-- spell targets
DELETE FROM spell_script_target WHERE entry IN (30662,32930);
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(32930,1,18778),
(30662,1,18778);
-- Flying Raging Soul
-- Missing added - UDB free guids reused
UPDATE creature_template SET InhabitType = 4, UnitFlags = 33554688, ExtraFlags = 2 WHERE entry IN (18726,20307);
DELETE FROM creature WHERE guid IN (44353,44354,44355,44356,44374,44375);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, curhealth, curmana, spawndist, MovementType) VALUES
(44353, 18726, 558, 3, 1, 72.23869, -139.2275, 41.15045, 0.7930897, 7200, 3914, 2846, 0, 2),
(44354, 18726, 558, 3, 1, 25.64213, -339.9637, 45.4259, 4.855016, 7200, 3914, 2846, 0, 2),
(44355, 18726, 558, 3, 1, 147.2713, 46.16996, 24.40821, 3.304033, 7200, 3914, 2846, 0, 2),
(44356, 18726, 558, 3, 1, 148.9696, -195.7763, 26.32425, 3.020732, 7200, 3914, 2846, 0, 2),
(44374, 18726, 558, 3, 1, 228.2336, -154.235, 39.60511, 4.203284, 7200, 3914, 2846, 0, 2),
(44375, 18726, 558, 3, 1, -23.60418, -384.0119, 52.44639, 1.562078, 7200, 3914, 2846, 0, 2);
-- waypoints
DELETE FROM creature_movement WHERE id IN (44353,44354,44355,44356,44374,44375);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #44353
(44353,1,-20.0318,-137.465,43.2731,000,0,6.1988,0,0),
(44353,2,72.2387,-139.227,41.0532,2000,0,0.0098567,0,0),
-- #44354
(44354,1,25.589,-434.98,46.7206,2000,0,4.67513,0,0),
(44354,2,25.6421,-339.964,45.4259,2000,0,1.45108,0,0),
-- #44355
(44355,1,146.815,-46.1878,25.3337,2000,0,2.0794,0,0),
(44355,2,147.271,46.17,24.4082,2000,0,1.29006,0,0),
-- #44356
(44356,1,93.4215,-196.428,32.1182,0,0,0.0294966,0,0),
(44356,2,91.0446,-196.97,29.245,0,0,0.0294966,0,0),
(44356,3,148.97,-195.776,26.3242,0,0,0.0294966,0,0),
-- #44374
(44374,1,228.0246,-154.6508,42.45242,0,0,0,0,0),
(44374,2,225.3313,-160.4796,42.92464,0,0,0,0,0),
(44374,3,226.2643,-167.0521,43.61908,0,0,0,0,0),
(44374,4,228.9986,-171.2268,44.09132,0,0,0,0,0),
(44374,5,234.1654,-174.739,44.61909,0,0,0,0,0),
(44374,6,240.2302,-175.1677,44.75796,0,0,0,0,0),
(44374,7,245.7996,-173.5961,44.83619,0,0,0,0,0),
(44374,8,250.7344,-170.3529,44.89179,0,0,0,0,0),
(44374,9,253.1533,-164.7733,44.44733,0,0,0,0,0),
(44374,10,251.4086,-158.4295,43.8496,0,0,0,0,0),
(44374,11,247.6237,-153.5221,43.16824,0,0,0,0,0),
(44374,12,241.5865,-149.2656,42.47379,0,0,0,0,0),
(44374,13,236.1653,-148.9468,42.22376,0,0,0,0,0),
(44374,14,231.1449,-151.0212,42.19597,0,0,0,0,0),
-- #44375
(44375,1,-22.8491,-341.315,52.3623,2000,0,4.63425,0,0),
(44375,2,-22.9796,-434.141,52.2505,2000,0,1.60654,0,0);
-- Phasing Stalker 
-- Missing added - UDB free guids reused
DELETE FROM creature WHERE guid IN (44376,44377,44378,44415,44416);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, curhealth, curmana, spawndist, MovementType) VALUES
(44376, 18559, 558, 3, 1, 60.7609, 14.71426, 3.013803, 4.572762, 120, 4892, 8538, 0, 2),
(44377, 18559, 558, 3, 1, 108.4743, -168.0823, 14.76628, 4.031711, 120, 4892, 8538, 0, 2),
(44378, 18559, 558, 3, 1, 252.8566, -143.3315, 31.52239, 3.944444, 120, 4892, 8538, 0, 2),
(44415, 18559, 558, 3, 1, 244.7959, -108.7978, 26.6746, 5.410521, 120, 4892, 8538, 0, 2),
(44416, 18559, 558, 3, 1, -133.7521, -394.2897, 26.58947, 5.358066, 120, 4892, 8538, 0, 2);
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
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, curhealth, curmana, spawndist, MovementType) VALUES
(44422, 18556, 558, 3, 1, 126.1766, 27.94813, -0.04512966, 5.288348, 60, 6116, 0, 0, 2),
(56027, 18556, 558, 3, 1, 170.2127, -18.67884, 1.893939, 6.126106, 60, 6116, 0, 0, 2),
(56029, 18556, 558, 3, 1, 234.8801, -118.7665, 26.67463, 0.6283185, 60, 6116, 0, 0, 2),
(56030, 18556, 558, 3, 1, 254.0859, 16.28111, 1.211097, 3.996804, 60, 6116, 0, 0, 2);
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
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, curhealth, curmana, spawndist, MovementType) VALUES
(56031, 18557, 558, 3, 1, 103.5104, -31.66116, 2.187038, 1.361357, 90, 4892, 8370, 0, 2), 
(56033, 18557, 558, 3, 1, -138.9091, -205.6192, 26.67431, 2.75762, 90, 4892, 8370, 0, 2),
(56034, 18557, 558, 3, 1, 186.351, -184.6046, 26.61729, 1.586355, 90, 4892, 8370, 0, 2), 
(56035, 18557, 558, 3, 1, 265.7227, -167.3999, 26.67464, 3.647738, 90, 4892, 8370, 0, 2);
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
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, curhealth, curmana, spawndist, MovementType) VALUES
(56036, 18558, 558, 3, 1, 235.8882, 37.07132, 26.68999, 6.230825, 180, 4731, 8538, 0, 2),
(56038, 18558, 558, 3, 1, 127.6753, -9.820141, 0.9926163, 4.747295, 180, 4731, 8538, 0, 2),
(56045, 18558, 558, 3, 1, -150.5842, -157.2742, 26.67392, 2.111848, 180, 4731, 8538, 0, 2),
(56047, 18558, 558, 3, 1, 63.40744, -175.2639, 15.4378, 6.143559, 180, 4731, 8538, 0, 2),
(56048, 18558, 558, 3, 1, 163.4202, -22.14446, 3.989299, 3.508112, 180, 4731, 8538, 0, 2),
(56050, 18558, 558, 3, 1, 219.379, 0.330607, 28.41068, 3.909538, 180, 4731, 8538, 0, 2),
(56051, 18558, 558, 3, 1, 182.6577, -140.5554, 26.481, 2.251475, 180, 4731, 8538, 0, 2);
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
UPDATE creature_template_addon SET bytes1 = 0, emote = 0 WHERE entry = 18497;
DELETE FROM creature_addon WHERE guid IN (83389,83390,83391,83392,83394,83395,83404,83406,83407,83408,83409);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
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
DELETE FROM creature_linking WHERE guid = 83406;
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

-- UDB_266
-- Areatrigger teleports in battlegrounds
DELETE FROM areatrigger_teleport WHERE id IN (4917, 4919, 4921, 4922, 4923, 4924, 4925, 4927, 4928, 4929, 4930, 4931, 4932, 4933, 4934, 4935, 4936, 4941, 4944, 5326, 5328, 5329, 5330, 5331, 5447);
INSERT INTO areatrigger_teleport (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation, name) VALUES
(4917, 559, 4054.57, 2923.23, 13.8179, 0, 'Arena - Nagrand - Teleport Target - Game On'),
(4919, 562, 6238.89, 264.155, 0.894302, 0, 'Arena - Bladesedge - Teleport Target - Game On'),
(4921, 562, 6238.89, 264.155, 0.894302, 0, 'Arena - Bladesedge - Teleport Target - Game On'),
(4922, 562, 6238.89, 264.155, 0.894302, 0, 'Arena - Bladesedge - Teleport Target - Game On'),
(4923, 562, 6238.89, 264.155, 0.894302, 0, 'Arena - Bladesedge - Teleport Target - Game On'),
(4924, 562, 6238.89, 264.155, 0.894302, 0, 'Arena - Bladesedge - Teleport Target - Game On'),
(4925, 562, 6238.89, 264.155, 0.894302, 0, 'Arena - Bladesedge - Teleport Target - Game On'),
(4927, 572, 1286.57, 1667.4, 39.602, 0, 'Arena - Undercity - Teleport Target - Game On'),
(4928, 572, 1286.57, 1667.4, 39.602, 0, 'Arena - Undercity - Teleport Target - Game On'),
(4929, 572, 1286.57, 1667.4, 39.602, 0, 'Arena - Undercity - Teleport Target - Game On'),
(4930, 572, 1286.57, 1667.4, 39.602, 0, 'Arena - Undercity - Teleport Target - Game On'),
(4931, 572, 1286.57, 1667.4, 39.602, 0, 'Arena - Undercity - Teleport Target - Game On'),
(4932, 572, 1286.57, 1667.4, 39.602, 0, 'Arena - Undercity - Teleport Target - Game On'),
(4933, 572, 1286.57, 1667.4, 39.602, 0, 'Arena - Undercity - Teleport Target - Game On'),
(4934, 572, 1286.57, 1667.4, 39.602, 0, 'Arena - Undercity - Teleport Target - Game On'),
(4935, 572, 1286.57, 1667.4, 39.602, 0, 'Arena - Undercity - Teleport Target - Game On'),
(4936, 572, 1286.57, 1667.4, 39.602, 0, 'Arena - Undercity - Teleport Target - Game On'),
(4941, 572, 1286.57, 1667.4, 39.602, 0, 'Arena - Undercity - Teleport Target - Game On'),
(4944, 562, 6238.89, 264.155, 0.894302, 0, 'Arena - Bladesedge - Teleport Target - Game On'),
(5326, 617, 1291.57, 792.965, 8.11463, 0, 'Arena - Dalaran Arena - Teleport Target'),
(5328, 617, 1291.57, 792.965, 8.11463, 0, 'Arena - Dalaran Arena - Teleport Target'),
(5329, 617, 1291.57, 792.965, 8.11463, 0, 'Arena - Dalaran Arena - Teleport Target'),
(5330, 617, 1291.57, 792.965, 8.11463, 0, 'Arena - Dalaran Arena - Teleport Target'),
(5331, 617, 1291.57, 792.965, 8.11463, 0, 'Arena - Dalaran Arena - Teleport Target'),
(5447, 618, 763.365, -284.29, 28.2767, 0, 'Arena - Orgrimmar - Teleport Target 3');

-- UDB_267
ALTER TABLE db_version CHANGE COLUMN required_12864_01_mangos_spell_template required_12916_01_mangos_battleground_template bit;
ALTER TABLE `battleground_template` ADD `StartMaxDist` float NOT NULL DEFAULT 0 AFTER `HordeStartO`;
UPDATE `battleground_template` SET `StartMaxDist`=200 WHERE `id`=30; -- IC
UPDATE `battleground_template` SET `StartMaxDist`=100 WHERE `id`=1; -- AV
UPDATE `battleground_template` SET `StartMaxDist`=75 WHERE `id` IN (2,3,7); -- WS, AB, EY

-- UDB_268
-- q.10091 'The Soul Devices'
DELETE FROM dbscripts_on_quest_start WHERE id = 10091;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10091,1,13,0,0,182942,50,1,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 10091 WHERE entry = 10091;

DELETE FROM dbscripts_on_go_template_use WHERE id = 182942;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(182942,1,3,0,0,18891,67850,7 | 0x10,0,0,0,0,-63.5416,42.9283,0.206252,2.42972,'');
-- Cage - Update
-- need to be visible also in Heroic difficulty 
UPDATE gameobject SET spawnmask = 3 WHERE guid IN (23857,23858);

-- UDB_269
-- Jaina, Thrall and Tyrande - Hyjal Summit
-- Script id: 17772
DELETE FROM dbscripts_on_creature_death WHERE id = 17772;
INSERT INTO dbscripts_on_creature_death VALUES 
(17772,10,18,0,0,0,0,4,0,0,0,0,0,0,0,0,'Jaina (Hyjal Summit instance) - force despawn.'),
(17772,15,41,0,0,0,0,68,0,0,0,0,0,0,0,0,'Jaina (Hyjal Summit instance) - respawn.');
-- Script id: 17852
DELETE FROM dbscripts_on_creature_death WHERE id = 17852;
INSERT INTO dbscripts_on_creature_death VALUES 
(17852,10,18,0,0,0,0,4,0,0,0,0,0,0,0,0,'Thrall (Hyjal Summit instance) - force despawn.'),
(17852,15,41,0,0,0,0,68,0,0,0,0,0,0,0,0,'Thrall (Hyjal Summit instance) - respawn.');
-- Script id: 17948
DELETE FROM dbscripts_on_creature_death WHERE id = 17948;
INSERT INTO dbscripts_on_creature_death VALUES 
(17948,10,18,0,0,0,0,4,0,0,0,0,0,0,0,0,'Tyrande (Hyjal Summit instance) - force despawn.'),
(17948,15,41,0,0,0,0,68,0,0,0,0,0,0,0,0,'Tyrande (Hyjal Summit instance) - respawn.');
-- Medivh - Dark Portal instance.
-- Script id: 15608
DELETE FROM dbscripts_on_creature_death WHERE id = 15608;
INSERT INTO dbscripts_on_creature_death VALUES 
(15608,10,18,0,0,0,0,4,0,0,0,0,0,0,0,0,'Medivh (Dark Portal instance) - force despawn.'),
(15608,15,41,0,0,0,0,68,0,0,0,0,0,0,0,0,'Medivh (Dark Portal instance) - respawn.');

-- UDB_270
ALTER TABLE db_version CHANGE COLUMN required_12916_01_mangos_battleground_template required_12936_01_mangos_mangos_string bit;
DELETE FROM mangos_string WHERE entry=58;
INSERT INTO mangos_string VALUES
(58,'Using script library',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- UDB_271
-- Shadow Labyrinth -- Part 1.
-- Duplicates
DELETE FROM creature WHERE guid IN (66834,66860,67088,67087,68885,68888,68882,68887,68891,68883,68886,68884,68880,68890,68894,68893,68892,68881,68889);
DELETE FROM creature_addon WHERE guid IN (66834,66860,67088,67087,68885,68888,68882,68887,68891,68883,68886,68884,68880,68890,68894,68893,68892,68881,68889);
DELETE FROM creature_movement WHERE id IN (66834,66860,67088,67087,68885,68888,68882,68887,68891,68883,68886,68884,68880,68890,68894,68893,68892,68881,68889);
-- Cabal Deathsworn
-- Missing added - UDB free guids reused
DELETE FROM creature WHERE guid = 56052;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, curhealth, curmana, spawndist, MovementType) VALUES
(56052, 18635, 555, 3, 1, -91.7096, -19.436, -1.12819, 0.0386012, 7200, 20958, 0, 0, 2);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1863501 AND 1863503;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1863501,2,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1863501,4,1,6,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1863501,8,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1863502,1,1,1,0,0,0,0,5,273,0,0,0,0,0,0,''),
(1863503,1,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1863503,7,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1863503,13,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1863503,20,1,4,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- waypoints
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (66857,66861,66856,66859,66868,66867,66865,66863,66866,66864);
DELETE FROM creature_movement WHERE id IN (56052,66857,66861,66856,66859,66868,66867,66865,66863,66866,66864);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #56052
(56052,1,-62.1643,-18.331,-1.12955,0,0,0.231035,0,0),
(56052,2,-58.8384,-12.529,-1.12955,0,0,1.52616,0,0),
(56052,3,-58.4549,6.17609,-1.12955,0,0,1.26383,0,0),
(56052,4,-55.2975,10.4386,-1.12955,0,0,0.618236,0,0),
(56052,5,-38.1628,9.84286,-1.1295,0,0,5.70997,0,0),
(56052,6,-37.3887,5.34975,-1.13016,0,0,4.76986,0,0),
(56052,7,-39.8703,-3.38196,-1.13844,10000,1863501,3.909538,0,0),
(56052,8,-38.0451,10.1566,-1.12945,0,0,1.55365,0,0),
(56052,9,-39.8703,-3.38196,-1.13844,10000,1863501,3.909538,0,0),
(56052,10,-38.0451,10.1566,-1.12945,0,0,1.55365,0,0),
(56052,11,-39.8703,-3.38196,-1.13844,10000,1863501,3.909538,0,0),
(56052,12,-38.0451,10.1566,-1.12945,0,0,1.55365,0,0),
(56052,13,-56.0397,16.2384,-1.12952,10000,1863501,1.81262,0,0),
(56052,14,-59.0589,-14.4868,-1.12952,0,0,4.34003,0,0),
(56052,15,-63.3941,-18.394,-1.12952,0,0,3.14309,0,0),
(56052,16,-91.7216,-19.2639,-1.12952,0,0,0.0386012,0,0),
-- #66857
(66857,1,-35.078,-81.0337,-1.04491,10000,1863502,5.18363,0,0),
-- #66861
(66861,1,-91.919,-88.183,-1.04498,13000,1863502,6.00393,0,0),
-- #66856
(66856,1,-44.641,-34.6061,-1.04484,17000,1863502,1.44862,0,0),
-- #66859
(66859,1,-74.3842,-0.151916,-1.04487,14000,1863502,0.034907,0,0),
-- #66868
(66868,1,-281.939,20.0421,8.15636,6000,1863502,5.68977,0,0),
-- #66867
(66867,1,-267.801,3.11204,8.15628,26000,1863503,3.76991,0,0),
-- #66865
(66865,1,-263.687,-31.7085,8.17044,26000,1863503,3.33358,0,0),
-- #66863
(66863,1,-254.445,-49.5956,8.15618,26000,1863503,3.01942,0,0),
-- #66866
(66866,1,-271.845,-50.1835,8.15619,26000,1863503,3.1765,0,0),
-- #66864
(66864,1,-265.305,-82.2931,8.15626,26000,1863503,2.84489,0,0);
-- Cabal Acolyte
-- Missing added - UDB free guids reused
DELETE FROM creature WHERE guid = 56056;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, curhealth, curmana, spawndist, MovementType) VALUES
(56056, 18633, 555, 3, 1, -91.1616, -63.4688, -1.12825, 0.3125403, 7200, 16227, 9240, 0, 2);
-- #66835
UPDATE creature SET position_x = -48.3232, position_y = -89.74366, position_z = -1.128311, orientation = 2.561189, MovementType = 2, spawndist = 0 WHERE guid = 66835;
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1863301 AND 1863306;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1863301,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1863301,57,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1863302,3,1,5,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1863302,7,1,274,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1863303,1,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'wp pause'),
(1863303,2,15,6606,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1863304,2,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1863304,28,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1863305,2,1,273,0,0,0,0,1,5,0,0,0,0,0,0,''),
(1863306,1,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1863306,7,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1863306,13,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1863306,20,1,4,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- waypoints
UPDATE creature_addon SET bytes1 = 0 WHERE guid IN (66838,66839);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (66832,66828,66821,66836,66842,66837,66839,66840,66838,66841);
DELETE FROM creature_movement WHERE id IN (56056,66835,66832,66828,66821,66836,66842,66837,66839,66840,66838,66841);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #56056
(56056,1,-73.9905,-56.6604,-1.12827,0,0,1.30588,0,0),
(56056,2,-73.2549,-45.9498,-1.12827,0,0,1.65538,0,0),
(56056,3,-75.0944,-30.1813,-1.12822,0,0,1.58469,0,0),
(56056,4,-70.5653,-8.30113,-1.12822,0,0,1.61375,0,0),
(56056,5,-72.3215,4.56919,-1.12987,0,0,2.16133,0,0),
(56056,6,-77.9667,14.1025,-1.12999,0,0,2.66848,0,0),
(56056,7,-83.7679,16.5422,-1.12999,60000,1863301,2.7046,0,0),
(56056,8,-83.6025,8.70041,-1.12999,0,0,4.35829,0,0),
(56056,9,-87.8532,5.27927,-1.13002,0,0,3.23674,0,0),
(56056,10,-92.5521,6.64523,-1.12897,60000,1863301,2.86996,0,0),
(56056,11,-72.5581,4.44944,-1.12984,0,0,5.47435,0,0),
(56056,12,-70.761,0.231342,-1.12984,0,0,4.87253,0,0),
(56056,13,-71.5466,-14.8948,-1.12984,0,0,4.53246,0,0),
(56056,14,-78.4255,-35.2431,-1.12984,12000,1863302,4.19081,0,0),
(56056,15,-70.3944,-6.51887,-1.12814,0,0,1.53224,0,0),
(56056,16,-71.9001,5.61683,-1.12964,0,0,2.31528,0,0),
(56056,17,-77.8864,14.2479,-1.12942,0,0,2.53049,0,0),
(56056,18,-77.9667,14.1025,-1.12999,0,0,2.66848,0,0),
(56056,19,-83.7679,16.5422,-1.12999,60000,1863301,2.7046,0,0),
(56056,20,-83.6025,8.70041,-1.12999,0,0,4.35829,0,0),
(56056,21,-87.8532,5.27927,-1.13002,0,0,3.23674,0,0),
(56056,22,-92.5521,6.64523,-1.12897,60000,1863301,2.86996,0,0),
(56056,23,-91.8479,10.6848,-1.12769,0,0,2.02198,0,0),
(56056,24,-95.19748,15.9352,-1.128194,5000,1863303,1.845741,0,0),
-- #66835
(66835,1,-54.6675,-85.9776,-1.12963,0,0,2.99316,0,0),
(66835,2,-70.376,-87.7163,-1.12963,0,0,3.80604,0,0),
(66835,3,-74.892,-92.3215,-1.12963,30000,1863304,3.89636,0,0),
(66835,4,-76.8264,-87.9499,-1.12963,0,0,2.95703,0,0),
(66835,5,-83.747,-84.5661,-1.13266,0,0,3.0285,0,0),
(66835,6,-88.7698,-85.5596,-1.1298,0,0,3.94742,0,0),
(66835,7,-93.4333,-92.9113,-1.1298,30000,1863304,0.8028514,0,0),
(66835,8,-87.759,-84.1235,-1.12985,0,0,0.252121,0,0),
(66835,9,-84.2478,-84.9727,-1.132,0,0,5.96982,0,0),
(66835,10,-54.1444,-86.075,-1.12955,0,0,0.012572,0,0),
(66835,11,-43.3482,-84.6378,-1.13556,0,0,0.436687,0,0),
(66835,12,-38.9303,-82.203,-1.1357,0,0,0.742207,0,0),
(66835,13,-31.7121,-76.6745,-1.13016,30000,1863304,0.71943,0,0),
(66835,14,-41.2586,-83.6097,-1.13761,0,0,3.66232,0,0),
(66835,15,-47.1808,-85.1115,-1.13502,0,0,3.25599,0,0),
(66835,16,-53.786,-86.0242,-1.12974,0,0,5.27917,0,0),
(66835,17,-48.3232,-89.74366,-1.128311,0,0,2.561189,0,0),
-- #66832
(66832,1,-85.9936,11.2334,-1.04485,15000,1863305,3.56047,0,0),
-- #66828
(66828,1,-73.5278,-1.96912,-1.04486,9000,1863305,1.22173,0,0),
-- #66821
(66821,1,-47.365,-33.8044,-1.04484,12000,1863305,0.331613,0,0),
-- #66836
(66836,1,-90.6977,-92.3565,-1.04497,12000,1863305,0.715585,0,0),
-- #66842
(66842,1,-272.845,-76.4279,8.15625,26000,1863306,2.6529,0,0),
-- #66837
(66837,1,-247.273,-49.6712,8.15618,26000,1863306,3.03687,0,0),
-- #66839
(66839,1,-263.805,-48.9857,8.15618,26000,1863306,3.10669,0,0),
-- #66840
(66840,1,-271.978,-47.9963,8.15619,26000,1863306,3.14159,0,0),
-- #66838
(66838,1,-255.77,-27.5678,8.18844,26000,1863306,3.24631,0,0),
-- #66841
(66841,1,-265.829,0.056211,8.15626,26000,1863306,3.68265,0,0);
-- Cabal Familiar
DELETE FROM dbscripts_on_creature_movement WHERE id = 1864101;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1864101,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON');
-- waypoints
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 66903;
-- #66903
DELETE FROM creature_movement WHERE id = 66903;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(66903,1,-73.18436,-72.6354,-1.1283,2000,1864101,0,0,0),
(66903,2,-78.9781,-68.9761,-1.12973,0,0,0,0,0),
(66903,3,-79.0138,-64.0902,-1.1296,0,0,0,0,0),
(66903,4,-73.483,-62.1501,-1.1296,0,0,0,0,0),
(66903,5,-65.6294,-68.134,-1.1296,0,0,0,0,0),
(66903,6,-64.7255,-75.9003,-1.1296,0,0,0,0,0),
(66903,7,-70.5239,-77.2716,-1.1296,0,0,0,0,0);
-- link
DELETE FROM creature_linking WHERE guid = 66905;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(66905, 66903, 515);
-- Cabal Warlock
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1864001 AND 1864006;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1864001,1,1,11,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1864002,1,1,25,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1864002,2,3,0,0,18641,66899,7 | 0x10,0,0,0,0,-53.6404,-76.4585,-1.12736,0.0800861,''),
(1864002,2,3,0,0,18641,66900,7 | 0x10,0,0,0,0,-56.2526,-76.2223,-1.12736,6.2376,''),
(1864002,2,3,0,0,18641,66901,7 | 0x10,0,0,0,0,-53.2162,-81.0359,-1.12736,0.424172,''),
(1864002,2,3,0,0,18641,66902,7 | 0x10,0,0,0,0,-55.6699,-80.9882,-1.12736,0.185325,''),
(1864003,1,1,15,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1864003,2,28,7,0,18641,66898,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_DEAD'),
(1864003,2,28,7,0,18641,66899,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_DEAD'),
(1864003,2,28,7,0,18641,66900,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_DEAD'),
(1864003,2,28,7,0,18641,66901,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_DEAD'),
(1864003,2,28,7,0,18641,66902,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_DEAD'),
(1864003,6,28,0,0,18641,66898,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1864003,6,28,0,0,18641,66899,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1864003,6,28,0,0,18641,66900,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1864003,6,28,0,0,18641,66901,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1864003,6,28,0,0,18641,66902,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1864004,1,1,25,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1864004,2,3,0,0,18641,66898,7 | 0x10,0,0,0,0,-49.399,-72.3794,-1.13478,4.47965,''),
(1864004,2,3,0,0,18641,66899,7 | 0x10,0,0,0,0,-52.038,-71.5567,-1.12901,5.20887,''),
(1864004,2,3,0,0,18641,66900,7 | 0x10,0,0,0,0,-54.4324,-73.9512,-1.12769,6.26131,''),
(1864004,2,3,0,0,18641,66901,7 | 0x10,0,0,0,0,-56.4157,-77.1166,-1.12821,6.26131,''),
(1864004,2,3,0,0,18641,66902,7 | 0x10,0,0,0,0,-56.4429,-80.5976,-1.12824,0.135202,''),
(1864005,1,1,25,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1864005,2,3,0,0,18641,66898,7 | 0x10,0,0,0,0,-54.7495,-78.6855,-1.12821,0.048723,''),
(1864005,2,3,0,0,18641,66899,7 | 0x10,0,0,0,0,-56.7471,-78.7829,-1.12821,6.15284,''),
(1864005,2,3,0,0,18641,66900,7 | 0x10,0,0,0,0,-58.7448,-78.8803,-1.12822,6.20498,''),
(1864005,2,3,0,0,18641,66901,7 | 0x10,0,0,0,0,-60.7424,-78.9777,-1.12823,0.138545,''),
(1864005,2,3,0,0,18641,66902,7 | 0x10,0,0,0,0,-62.74,-79.0751,-1.12823,6.27203,''),
(1864006,1,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1864006,7,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1864006,13,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1864006,20,1,4,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- waypoints
UPDATE creature_addon SET bytes1 = 0 WHERE guid = 66897;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (66894,66895,66896,66897);
DELETE FROM creature_movement WHERE id IN (66894,66895,66896,66897);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #66896
(66896,1,-259.324,5.18744,8.15627,26000,1864006,3.64774,0,0),
-- #66897
(66897,1,-282.122,-76.7587,8.15625,26000,1864006,2.72271,0,0),
-- #66895
(66895,1,-74.4987,-77.2237,-1.04497,9000,1864001,1.55334,0,0),
-- #66894
(66894,1,-51.2688,-78.5158,-1.0449,7000,1864002,2.49582,0,0),
(66894,2,-51.2688,-78.5158,-1.0449,7000,1864003,2.49582,0,0),
(66894,3,-51.2688,-78.5158,-1.0449,7000,1864004,2.49582,0,0),
(66894,4,-51.2688,-78.5158,-1.0449,7000,1864005,2.49582,0,0);
-- link
DELETE FROM creature_linking WHERE guid BETWEEN 66898 AND 66902;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(66898, 66894, 3),
(66899, 66894, 3),
(66900, 66894, 3),
(66901, 66894, 3),
(66902, 66894, 3);
-- Fel Overseer
-- waypoints
UPDATE creature SET position_x = -192.957199, position_y = -38.907349, position_z = 8.073121, orientation = 0.188621 WHERE guid = 67085;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (67089,67086,67085);
DELETE FROM creature_movement WHERE id IN (67089,67086,67085);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #67089
(67089,1,-133.777,-45.4417,8.07306,0,0,1.4773,0,0),
(67089,2,-133.168,-14.853,8.07306,0,0,1.82052,0,0),
(67089,3,-136.233,-10.809,8.07306,0,0,2.89168,0,0),
(67089,4,-138.923,-11.9668,8.07306,0,0,4.05721,0,0),
(67089,5,-140.664,-17.0985,8.07306,0,0,4.67218,0,0),
(67089,6,-139.211,-35.3736,8.07306,0,0,4.47386,0,0),
(67089,7,-141.635,-65.2013,8.07306,0,0,4.98123,0,0),
(67089,8,-140.107,-68.8754,8.07168,0,0,6.16325,0,0),
(67089,9,-136.832,-68.4133,8.07168,0,0,0.693638,0,0),
-- #67086
(67086,1,-156.123,-77.7129,8.07317,0,0,4.56329,0,0),
(67086,2,-156.698,-95.8719,8.07317,0,0,4.71959,0,0),
(67086,3,-155.225,-76.3361,8.07317,0,0,1.05414,0,0),
(67086,4,-143.051,-63.9529,8.07317,0,0,0.902555,0,0),
(67086,5,-156.879,-78.4626,8.07317,0,0,4.35674,0,0),
(67086,6,-156.639,-96.7147,8.07317,0,0,4.75101,0,0),
(67086,7,-156.324,-76.755,8.07317,0,0,2.19297,0,0),
(67086,8,-167.977,-66.2064,8.07317,0,0,2.37518,0,0),
-- #67085
(67085,1,-184.645,-41.3219,8.07312,0,0,5.84742,0,0),
(67085,2,-179.747,-49.1775,8.07312,0,0,5.03846,0,0),
(67085,3,-179.576,-62.0679,8.07312,0,0,5.17826,0,0),
(67085,4,-176.469,-65.0651,8.07312,0,0,6.14744,0,0),
(67085,5,-172.372,-62.5618,8.07312,0,0,1.29211,0,0),
(67085,6,-171.186,-16.2219,8.07312,0,0,1.77356,0,0),
(67085,7,-173.789,-12.5579,8.07312,0,0,2.7773,0,0),
(67085,8,-178.321,-13.3478,8.07312,0,0,3.82737,0,0),
(67085,9,-180.416,-17.4129,8.07312,0,0,4.52794,0,0),
(67085,10,-182.764,-34.4485,8.07312,0,0,3.96403,0,0),
(67085,11,-193.633,-38.8202,8.07312,0,0,3.19198,0,0);
-- Malicious Instructor
UPDATE creature_template SET SpeedWalk = 1 WHERE Entry IN (18848,20656);
-- waypoints
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (67254,67255,67253);
DELETE FROM creature_movement WHERE id IN (67254,67255,67253);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #67254
(67254,1,-240.83,-53.8866,8.07382,0,0,1.07272,0,0),
(67254,2,-241.476,-42.973,8.07382,0,0,1.60051,0,0),
(67254,3,-242.377,-22.3699,8.07382,0,0,2.865,0,0),
(67254,4,-250.474,-21.8143,8.08259,0,0,3.27969,0,0),
(67254,5,-272.863,-25.1252,8.13811,0,0,3.7357,0,0),
(67254,6,-275.332,-30.782,8.09939,0,0,4.68289,0,0),
(67254,7,-275.938,-52.9257,8.07421,0,0,5.34733,0,0),
(67254,8,-262.235,-53.6467,8.07421,0,0,6.24817,0,0),
-- #67255
(67255,1,-285.854,-77.5161,8.07381,0,0,2.06431,0,0),
(67255,2,-282.747,-66.7713,8.07381,0,0,5.85857,0,0),
(67255,3,-258.559,-76.3208,8.07381,0,0,6.12874,0,0),
(67255,4,-249.362,-80.1672,8.07381,0,0,4.85641,0,0),
(67255,5,-249.869,-90.3513,8.07381,0,0,3.11597,0,0),
(67255,6,-270.731,-85.5789,8.07381,0,0,2.95182,0,0),
-- #67253
(67253,1,-250.228,2.6866,8.07296,0,0,1.67084,0,0),
(67253,2,-254.981,11.1584,8.07296,0,0,2.92276,0,0),
(67253,3,-266.85,10.475,8.07296,0,0,1.7698,0,0),
(67253,4,-269.391,30.2374,8.07296,0,0,1.71639,0,0),
(67253,5,-267.728,9.55352,8.07296,0,0,4.04353,0,0),
(67253,6,-276.255,2.81464,8.07296,0,0,3.86839,0,0),
(67253,7,-267.646,10.5747,8.07296,0,0,1.49334,0,0),
(67253,8,-269.451,30.236,8.07296,0,0,1.65356,0,0),
(67253,9,-266.399,10.8521,8.07296,0,0,6.21672,0,0),
(67253,10,-254.456,10.7344,8.07296,0,0,5.22555,0,0),
(67253,11,-250.863,1.76369,8.07296,0,0,3.53762,0,0),
(67253,12,-277.576,-9.4165,8.07296,0,0,2.77343,0,0),
(67253,13,-292.796,2.95694,8.07296,0,0,2.49471,0,0),
(67253,14,-277.495,-9.40503,8.07296,0,0,0.207622,0,0),
(67253,15,-262.507,-2.5602,8.07296,0,0,0.476228,0,0);
-- Cabal Cultist
UPDATE creature_addon SET bytes1 = 0 WHERE guid IN (66800,66804);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1863101,1863102);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1863101,1,1,1,0,0,0,0,5,273,11,0,0,0,0,0,''),
(1863102,1,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1863102,7,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1863102,13,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1863102,20,1,4,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (66806,66807,66805,66804,66799,66798,66802,66800,66801,66803);
DELETE FROM creature_movement WHERE id IN (66806,66807,66805,66804,66799,66798,66802,66800,66801,66803);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #66806
(66806,1,-276.704,22.5176,8.15633,8000,1863101,0.017453,0,0),
-- #66807 
(66807,1,-286.707,-99.5,8.15633,6000,1863101,1.32645,0,0),
-- #66805
(66805,1,-287.804,-96.3896,8.15635,8000,1863101,5.48033,0,0),
-- #66804
(66804,1,-273.674,-80.3384,8.15627,26000,1863102,2.74017,0,0),
-- #66799
(66799,1,-246.87,-45.9737,8.15617,26000,1863102,3.10669,0,0),
-- #66798
(66798,1,-254.365,-46.4247,8.15618,26000,1863102,3.08923,0,0),
-- #66802
(66802,1,-271.784,-45.5444,8.15619,26000,1863102,3.1765,0,0),
-- #66800
(66800,1,-255.435,-31.2176,8.17054,26000,1863102,3.28122,0,0),
-- #66801
(66801,1,-263.761,-29.1943,8.18301,26000,1863102,3.12414,0,0),
-- #66803
(66803,1,-275.089,-4.42197,8.15625,26000,1863102,3.66519,0,0);
-- Cabal Shadow Priest
UPDATE creature_addon SET bytes1 = 0 WHERE guid = 66872;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1863701;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1863701,1,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1863701,7,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1863701,13,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1863701,20,1,4,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (66872,66873,66874,66875);
DELETE FROM creature_movement WHERE id IN (66872,66873,66874,66875);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #66872
(66872,1,-263.226,-45.5273,8.15618,26000,1863701,3.12414,0,0),
-- #66873
(66873,1,-264.152,-79.2966,8.15624,26000,1863701,2.87979,0,0),
-- #66874
(66874,1,-263.794,-26.8056,8.19487,26000,1863701,3.49066,0,0),
-- #66875
(66875,1,-275.427,-0.559913,8.15628,26000,1863701,3.56047,0,0);
-- Links to first Boss - Blackheart the Inciter
-- all in "The Refectory" must be linked to Boss
DELETE FROM creature_linking WHERE master_guid = 66937;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(66872, 66937, 1), (66873, 66937, 1), (66874, 66937, 1), (66875, 66937, 1), (66806, 66937, 1), (66807, 66937, 1), (66805, 66937, 1), (66804, 66937, 1), (66799, 66937, 1), (66798, 66937, 1), 
(66802, 66937, 1), (66800, 66937, 1), (66801, 66937, 1), (66803, 66937, 1), (67254, 66937, 1), (67255, 66937, 1), (67253, 66937, 1), (66896, 66937, 1), (66897, 66937, 1), (66842, 66937, 1), 
(66837, 66937, 1), (66839, 66937, 1), (66840, 66937, 1), (66838, 66937, 1), (66841, 66937, 1), (66867, 66937, 1), (66865, 66937, 1), (66863, 66937, 1), (66866, 66937, 1), (66864, 66937, 1);

-- UDB_272
-- Shadow Labyrinth -- Part 2.
-- Duplicates
DELETE FROM creature WHERE guid IN (67133,67149,85584);
DELETE FROM creature_addon WHERE guid IN (67133,67149,85584);
DELETE FROM creature_movement WHERE id IN (67133,67149,85584);
-- Missing added - UDB free guids reused
DELETE FROM creature WHERE guid IN (56058,56059);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, curhealth, curmana, spawndist, MovementType) VALUES
(56058, 18848, 555, 3, 1, -429.269, -164.208, 12.8429, 1.46941, 7200, 68465, 9693, 0, 2), -- Malicious Instructor
(56059, 18796, 555, 3, 1, -429.269, -164.208, 12.8429, 1.46941, 7200, 83832, 0, 0, 2); -- Fel Overseer 
-- waypoints
DELETE FROM creature_movement WHERE id IN (56058,56059);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #56058
(56058,1,-429.292,-151.568,12.7285,0,0,1.08457,0,0),
(56058,2,-421.039,-139.61,13.5211,0,0,1.40737,0,0),
(56058,3,-418.878,-129.877,12.7572,0,0,1.52439,0,0),
(56058,4,-421.126,-120.375,12.7369,0,0,2.57133,0,0),
(56058,5,-428.992,-119.874,12.7277,0,0,4.1587,0,0),
(56058,6,-431.674,-129.208,12.8984,0,0,4.68177,0,0),
(56058,7,-430.502,-145.853,12.5057,0,0,4.65978,0,0),
(56058,8,-430.78,-163.413,12.4118,0,0,4.68727,0,0),
(56058,9,-431.827,-171.839,12.912,0,0,4.32207,0,0),
(56058,10,-438.555,-179.567,13.1316,0,0,4.33699,0,0),
(56058,11,-440.367,-186.258,12.6892,0,0,4.72261,0,0),
(56058,12,-436.943,-191.156,12.6892,0,0,5.87636,0,0),
(56058,13,-429.428,-191.682,12.6892,0,0,0.454692,0,0),
(56058,14,-424.702,-181.096,12.6892,0,0,1.6375,0,0),
(56058,15,-429.456,-163.267,12.7784,0,0,1.78437,0,0),
-- #56059
(56059,1,-429.292,-151.568,12.7285,0,0,1.08457,0,0),
(56059,2,-421.039,-139.61,13.5211,0,0,1.40737,0,0),
(56059,3,-418.878,-129.877,12.7572,0,0,1.52439,0,0),
(56059,4,-421.126,-120.375,12.7369,0,0,2.57133,0,0),
(56059,5,-428.992,-119.874,12.7277,0,0,4.1587,0,0),
(56059,6,-431.674,-129.208,12.8984,0,0,4.68177,0,0),
(56059,7,-430.502,-145.853,12.5057,0,0,4.65978,0,0),
(56059,8,-430.78,-163.413,12.4118,0,0,4.68727,0,0),
(56059,9,-431.827,-171.839,12.912,0,0,4.32207,0,0),
(56059,10,-438.555,-179.567,13.1316,0,0,4.33699,0,0),
(56059,11,-440.367,-186.258,12.6892,0,0,4.72261,0,0),
(56059,12,-436.943,-191.156,12.6892,0,0,5.87636,0,0),
(56059,13,-429.428,-191.682,12.6892,0,0,0.454692,0,0),
(56059,14,-424.702,-181.096,12.6892,0,0,1.6375,0,0),
(56059,15,-429.456,-163.267,12.7784,0,0,1.78437,0,0);
-- Pool -- only one should be spawned.
DELETE FROM pool_template WHERE entry = 25493;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(25493,1,'SL - Malicious Instructor / Fel Overseer');
DELETE FROM pool_creature WHERE pool_entry = 25493;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES 
(56058,25493,0,'SL - Malicious Instructor'),
(56059,25493,0,'SL - Fel Overseer');
-- Cabal Deathsworn
-- waypoints
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 66869;
DELETE FROM creature_movement WHERE id = 66869;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #66869
(66869,1,-453.685,-186.804,12.7725,14000,1863502,1.53589,0,0);
-- Cabal Acolyte
-- waypoints
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 66843;
DELETE FROM creature_movement WHERE id = 66843;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #66843
(66843,1,-454.315,-183.092,12.7725,11000,1863305,5.06145,0,0);
-- Tortured Skeleton
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (67145,67090,67093,67091,67092,67094,67095,67146,67099,67096,67098,67097,67147,67133);
-- Sanctum of Shadows
-- 1st group
-- Missing added - UDB free guids reused
DELETE FROM creature WHERE guid IN (56062,56064);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, curhealth, curmana, spawndist, MovementType) VALUES
(56062, 18638, 555, 3, 1, -367.967,-269.298, 12.6889, 0.0211422, 7200, 16767, 9465, 0, 0),
(56064, 18631, 555, 3, 1, -367.898224, -267.586578, 12.689170, 0.0211422, 7200, 18164, 0, 0, 2);
UPDATE creature SET position_x = -367.924713, position_y = -265.591736, position_z = 12.689170, orientation = 0.0211422, MovementType = 0, spawndist = 0 WHERE guid = 67244;
UPDATE creature SET position_x = -368.105591, position_y = -263.493958, position_z = 12.689170, orientation = 0.0211422, MovementType = 0, spawndist = 0 WHERE guid = 66876;
DELETE FROM creature_movement WHERE id = 56064;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(56064,1,-367.898224,-267.586578,12.689170,18000,1863103,0.0211422,0,0),
(56064,2,-354.834,-267.555,12.6874,18000,1863103,0.0211422,0,0);
-- link
DELETE FROM creature_linking WHERE master_guid = 56064;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(56062, 56064, 515),
(67244, 56064, 515),
(66876, 56064, 515);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1863103;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1863103,5,3,0,0,0,0,0,0,0,0,0,0,0,0,0.0211422,''),
(1863103,5,3,0,0,18638,56062,7 | 0x10,0,0,0,0,0,0,0,0.0211422,''),
(1863103,5,3,0,0,18830,67244,7 | 0x10,0,0,0,0,0,0,0,0.0211422,''),
(1863103,5,3,0,0,18638,66876,7 | 0x10,0,0,0,0,0,0,0,0.0211422,''),
(1863103,6,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1863103,6,28,8,0,18638,56062,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1863103,6,28,8,0,18830,67244,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1863103,6,28,8,0,18638,66876,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1863103,15,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1863103,15,28,0,0,18638,56062,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1863103,15,28,0,0,18830,67244,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1863103,15,28,0,0,18638,66876,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND');
-- 2nd group
UPDATE creature SET position_x = -313.243744, position_y = -268.244324, position_z = 12.683684, orientation = 3.256969 WHERE guid = 66880;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 66877;
DELETE FROM creature_movement WHERE id = 66877;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(66877,1,-288.638,-265.622,12.6827,18000,1863801,0.0211422,0,0),
(66877,2,-313.295,-263.085,12.6835,18000,1863801,0.0211422,0,0);
-- link
DELETE FROM creature_linking WHERE master_guid = 66877;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(66810, 66877, 515),
(67245, 66877, 515),
(66880, 66877, 515);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1863801;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1863801,5,3,0,0,0,0,0,0,0,0,0,0,0,0,0.0211422,''),
(1863801,5,3,0,0,18631,66810,7 | 0x10,0,0,0,0,0,0,0,0.0211422,''),
(1863801,5,3,0,0,18830,67245,7 | 0x10,0,0,0,0,0,0,0,0.0211422,''),
(1863801,5,3,0,0,18638,66880,7 | 0x10,0,0,0,0,0,0,0,0.0211422,''),
(1863801,6,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1863801,6,28,8,0,18631,66810,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1863801,6,28,8,0,18830,67245,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1863801,6,28,8,0,18638,66880,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1863801,15,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1863801,15,28,0,0,18631,66810,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1863801,15,28,0,0,18830,67245,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1863801,15,28,0,0,18638,66880,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND');
-- 3rd group
UPDATE creature_addon SET bytes1 = 0 WHERE guid IN (66878,66879,67246,67247);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 67246;
DELETE FROM creature_movement WHERE id = 67246;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(67246,1,-271.362,-265.765,12.7637,18000,1883001,0.11843,0,0);
-- link
DELETE FROM creature_linking WHERE master_guid = 67246;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(66878, 67246, 3),
(66879, 67246, 3),
(67247, 67246, 3);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1883001;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1883001,6,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1883001,6,28,8,0,18638,66878,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1883001,6,28,8,0,18638,66879,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1883001,6,28,8,0,18830,67247,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1883001,15,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1883001,15,28,0,0,18638,66878,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1883001,15,28,0,0,18638,66879,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1883001,15,28,0,0,18830,67247,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND');
-- 4th group
-- Missing added - UDB free guids reused
DELETE FROM creature WHERE guid = 56066;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, curhealth, curmana, spawndist, MovementType) VALUES
(56066, 18830, 555, 3, 1, -276.893, -266.896, 12.6807, 0.0211422, 7200, 20958, 0, 0, 0);
UPDATE creature SET position_x = -277.385162, position_y = -264.977478, position_z = 12.680085, orientation = 0.0211422 WHERE guid = 67248;
UPDATE creature SET position_x = -277.139832, position_y = -263.290375, position_z = 12.680609, orientation = 0.0211422 WHERE guid = 66812;
UPDATE creature SET position_x = -276.840057, position_y = -268.581909, position_z = 12.680760, orientation = 0.0211422 WHERE guid = 66811;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 67248;
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
-- link
DELETE FROM creature_linking WHERE master_guid = 67248;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(56066, 67248, 515),
(66812, 67248, 515),
(66811, 67248, 515);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1883002,1883003,1883004);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1883002,2,3,0,0,0,0,0,0,0,0,0,0,0,0,0.0211422,''),
(1883002,2,3,0,0,18830,56066,7 | 0x10,0,0,0,0,0,0,0,0.0211422,''),
(1883002,2,3,0,0,18631,66812,7 | 0x10,0,0,0,0,0,0,0,0.0211422,''),
(1883002,2,3,0,0,18631,66811,7 | 0x10,0,0,0,0,0,0,0,0.0211422,''),
(1883002,6,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1883002,6,28,8,0,18830,56066,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1883002,6,28,8,0,18631,66812,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1883002,6,28,8,0,18631,66811,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1883002,15,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1883002,15,28,0,0,18830,56066,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1883002,15,28,0,0,18631,66812,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1883002,15,28,0,0,18631,66811,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1883003,2,3,0,0,0,0,0,0,0,0,0,0,0,0,1.39639,''),
(1883003,2,3,0,0,18830,56066,7 | 0x10,0,0,0,0,0,0,0,1.25343,''),
(1883003,2,3,0,0,18631,66812,7 | 0x10,0,0,0,0,0,0,0,1.45449,''),
(1883003,2,3,0,0,18631,66811,7 | 0x10,0,0,0,0,0,0,0,1.51104,''),
(1883003,6,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1883003,6,28,8,0,18830,56066,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1883003,6,28,8,0,18631,66812,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1883003,6,28,8,0,18631,66811,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1883003,15,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1883003,15,28,0,0,18830,56066,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1883003,15,28,0,0,18631,66812,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1883003,15,28,0,0,18631,66811,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1883004,2,3,0,0,0,0,0,0,0,0,0,0,0,0,3.20202,''),
(1883004,2,3,0,0,18830,56066,7 | 0x10,0,0,0,0,0,0,0,3.43762,''),
(1883004,2,3,0,0,18631,66812,7 | 0x10,0,0,0,0,0,0,0,3.09518,''),
(1883004,2,3,0,0,18631,66811,7 | 0x10,0,0,0,0,0,0,0,3.15173,''),
(1883004,6,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1883004,6,28,8,0,18830,56066,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1883004,6,28,8,0,18631,66812,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1883004,6,28,8,0,18631,66811,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1883004,15,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1883004,15,28,0,0,18830,56066,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1883004,15,28,0,0,18631,66812,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1883004,15,28,0,0,18631,66811,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND');
-- Grandmaster Vorpil
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 67000;
DELETE FROM creature_movement WHERE id = 67000;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(67000,1,-253.06,-264.024,17.0864,13000,1873201,3.15559,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1873201;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1873201,1,1,15,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1873201,5,1,5,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1873201,9,1,274,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- UDB_273
-- Shadow Labyrinth -- Part 3.
-- Duplicates
DELETE FROM creature WHERE guid IN (68738,85585,68739,66849,66854,66855,66884);
DELETE FROM creature_addon WHERE guid IN (68738,85585,68739,66849,66854,66855,66884);
DELETE FROM creature_movement WHERE id IN (68738,85585,68739,66849,66854,66855,66884);
-- door should control when event will start
DELETE FROM dbscripts_on_go_template_use WHERE id = 183295;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(183295,1,20,2,0,18632,66813,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,1,20,2,0,18632,66814,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,1,20,2,0,18632,66815,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,2,20,2,0,18632,66816,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,2,20,2,0,18632,66817,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,2,20,2,0,18632,66818,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,3,20,2,0,18632,66819,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,3,20,2,0,18632,66820,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
--
(183295,1,20,2,0,18634,66844,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,1,20,2,0,18634,66845,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,1,20,2,0,18634,66846,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,2,20,2,0,18634,66847,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,2,20,2,0,18634,66848,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,2,20,2,0,18634,66850,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,3,20,2,0,18634,66851,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,3,20,2,0,18634,66853,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
--
(183295,1,20,2,0,18639,66881,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,1,20,2,0,18639,66882,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,1,20,2,0,18639,66885,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,2,20,2,0,18639,66886,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,2,20,2,0,18639,66888,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,2,20,2,0,18639,66892,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,2,20,2,0,18639,66893,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint');
-- Murmur
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 66952;
DELETE FROM creature_movement WHERE id = 66952;
UPDATE creature_template SET ExtraFlags = 4096, MovementType = 2 WHERE entry = 18708;
DELETE FROM creature_movement_template WHERE entry = 18708;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(18708,1,-157.895,-497.322,15.8651,5000,1870801,1.5708,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1870801); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1870801,1,35,5,500,0,0,0,0,0,0,0,0,0,0,0,'THROW_AI_EVENT');
-- Cabal Executioner
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 18632);
-- correct spawn point
UPDATE creature SET position_x = -171.642, position_y = -370.791, position_z = 17.0818, orientation = 0.5235988 WHERE guid = 66817;
UPDATE creature SET position_x = -173.133, position_y = -366.97, position_z = 17.0828, orientation = 5.916666 WHERE guid = 66818;
UPDATE creature SET position_x = -142.203, position_y = -390.029, position_z = 17.0806, orientation = 4.485496 WHERE guid = 66819;
UPDATE creature SET position_x = -140.54, position_y = -410.52, position_z = 17.079, orientation = 1.448623 WHERE guid = 66820;
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1863201 AND 1863202;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1863201,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1863202,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(1863202,1,1,376,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- waypoints will be set by script
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid IN (66813,66814,66815,66816,66817,66818,66819,66820);
DELETE FROM creature_movement WHERE id IN (66813,66814,66815,66816,66817,66818,66819,66820);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #66813
(66813,1,-172.173,-325.754,17.1697,2000,1863201,5.53269,0,0),
(66813,2,-160.339,-328.603,17.0869,5000,1863202,4.726873,0,0),
-- #66814
(66814,1,-168.532,-352.302,17.1662,2000,1863201,4.83456,0,0),
(66814,2,-162.415,-350.568,17.0835,5000,1863202,4.743177,0,0),
-- #66815
(66815,1,-135.771,-329.128,17.1687,2000,1863201,3.50811,0,0),
(66815,2,-152.625,-325.811,17.0865,5000,1863202,4.681669,0,0),
-- #66816
(66816,1,-174.082,-354.553,17.1667,2000,1863201,5.35816,0,0),
(66816,2,-149.628,-355.988,17.0834,5000,1863202,4.653963,0,0),
-- #66817
(66817,1,-171.642,-370.791,17.0818,2000,1863201,0.5235988,0,0),
(66817,2,-150.133,-378.117,17.0814,5000,1863202,4.647361,0,0),
-- #66818
(66818,1,-173.133,-366.97,17.0828,2000,1863201,5.916666,0,0),
(66818,2,-163.108,-374.718,17.0811,5000,1863202,4.754881,0,0),
-- #66819
(66819,1,-142.203,-390.029,17.0806,2000,1863201,4.485496,0,0),
(66819,2,-148.384,-417.065,17.0784,5000,1863202,4.594431,0,0),
-- #66820
(66820,1,-140.54,-410.52,17.079,2000,1863201,1.448623,0,0),
(66820,2,-162.943,-421.588,17.0776,5000,1863202,4.778943,0,0);
-- Cabal Summoner
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 18634);
-- correct spawn point
UPDATE creature SET orientation = 3.141593 WHERE guid = 66845;
UPDATE creature SET position_x = -135.201, position_y = -360.271, position_z = 17.0819, orientation = 3.490659 WHERE guid = 66846;
UPDATE creature SET position_x = -141.612, position_y = -363.212, position_z = 17.0827, orientation = 4.258604 WHERE guid = 66848;
UPDATE creature SET position_x = -171.826, position_y = -401.41, position_z = 17.0799, orientation = 0.8901179 WHERE guid = 66850;
UPDATE creature SET position_x = -143.49, position_y = -443.834, position_z = 17.0779, orientation = 3.15222 WHERE guid = 66853;
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1863401 AND 1863403;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1863401,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1863402,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(1863403,1,15,33331,0,18708,66952,3 | 0x08 | 0x10,0,0,0,0,0,0,0,0,'force buddy to cast 33329');
-- waypoints will be set by script
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid IN (66844,66845,66846,66847,66848,66850,66851,66853);
DELETE FROM creature_movement WHERE id IN (66844,66845,66846,66847,66848,66850,66851,66853);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #66844
(66844,1,-175.894,-349.783,17.166,7000,1863401,5.61996,0,0),
(66844,2,-156.496,-325.849,17.0865,5000,1863403,4.73628,0,0),
-- #66845
(66845,1,-156.498,-328.007,17.1696,4000,0,3.141593,0,0),
(66845,2,-156.498,-328.007,17.1696,2000,1863403,3.141593,0,0),
-- #66846
(66846,1,-135.201,-360.271,17.0819,2000,1863401,3.490659,0,0),
(66846,2,-157.038,-354.905,17.0836,5000,1863402,4.706368,0,0),
-- #66847
(66847,1,-136.037,-343.41,17.1648,2000,1863401,3.1765,0,0),
(66847,2,-162.127,-345.104,17.084,15000,0,4.740183,0,0),
(66847,3,-149.744,-341.401,17.0847,15000,0,4.660159,0,0),
(66847,4,-154.979,-338.741,17.0853,15000,0,4.66635,0,0),
(66847,5,-162.127,-345.104,17.084,15000,0,4.740183,0,0),
(66847,6,-149.744,-341.401,17.0847,15000,0,4.660159,0,0),
(66847,7,-154.979,-338.741,17.0853,15000,0,4.66635,0,0),
(66847,8,-162.127,-345.104,17.084,15000,1863402,4.740183,0,0),
-- #66848
(66848,1,-141.612,-363.212,17.0827,2000,1863401,4.258604,0,0),
(66848,2,-157.923,-374.597,17.0818,5000,1863402,4.712615,0,0),
-- #66850
(66850,1,-171.826,-401.41,17.0799,2000,1863401,0.8901179,0,0),
(66850,2,-158.9,-420.073,17.0777,5000,1863402,4.725399,0,0),
-- #66851
(66851,1,-134.274,-388.795,17.1657,2000,1863401,3.14159,0,0),
(66851,2,-145.634,-396.327,17.0802,15000,0,3.72706,0,0),
(66851,3,-164.682,-401.259,17.0797,15000,0,5.26035,0,0),
(66851,4,-155.47,-402.097,17.0795,15000,1863403,5.04987,0,0),
-- #66853
(66853,1,-143.49,-443.834,17.078,20000,1863401,3.15222,0,0),
(66853,2,-154.002,-443.803,17.0779,5000,1863403,4.60457,0,0);
-- Cabal Spellbinder
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 18639);
-- correct spawn point
UPDATE creature SET position_x = -140.42, position_y = -369.956, position_z = 17.0815, orientation = 3.036873 WHERE guid = 66882;
UPDATE creature SET position_x = -143.33, position_y = -397.343, position_z = 17.0801, orientation = 2.373648 WHERE guid = 66885;
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1863901 AND 1863904;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1863901,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1863902,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(1863902,1,1,5,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1863903,1,15,33331,0,18708,66952,3 | 0x08 | 0x10,0,0,0,0,0,0,0,0,'force buddy to cast 33329'),
(1863904,4,15,33331,0,18708,66952,3 | 0x08 | 0x10,0,0,0,0,0,0,0,0,'force buddy to cast 33329');
-- waypoints will be set by script
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid IN (66881,66882,66885,66886,66888,66892,66893);
DELETE FROM creature_movement WHERE id IN (66881,66882,66885,66886,66888,66892,66893);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #66881
(66881,1,-139.912,-353.917,17.1665,4000,1863901,5.75959,0,0),
(66881,2,-153.403,-352.024,17.0838,7000,1863902,4.70338,0,0),
-- #66882
(66882,1,-140.42,-369.956,17.0815,2000,1863901,3.036873,0,0),
(66882,2,-153.032,-375.78,17.0816,7000,1863902,4.672398,0,0),
-- #66885
(66885,1,-143.33,-397.343,17.0801,2000,1863901,2.3736483,0,0),
(66885,2,-153.364,-417.684,17.078,7000,1863902,4.655547,0,0),
-- #66886
(66886,1,-179.281,-350.271,17.1665,2000,1863901,5.98648,0,0),
(66886,2,-164.621,-364.47,17.0824,20000,0,4.77388,0,0),
(66886,3,-149.681,-366.439,17.0824,5000,1863903,4.61994,0,0),
-- #66888
(66888,1,-134.274,-388.795,17.1657,17000,1863901,3.72706,0,0),
(66888,2,-134.274,-388.795,17.1657,1000,1863904,3.72706,0,0),
(66888,3,-164.751,-400.857,17.0797,5000,1863902,4.51183,0,0),
-- #66892
(66892,1,-176.776,-434.265,17.1622,30000,1863901,0.279253,0,0),
(66892,2,-165.452,-432.216,17.0783,20000,0,4.61994,0,0),
(66892,3,-157.677,-431.365,17.0778,20000,0,4.61994,0,0),
(66892,4,-151.013,-429.674,17.0777,12000,0,4.61994,0,0),
(66892,5,-151.013,-429.674,17.0777,5000,1863903,4.61994,0,0),
-- #66893 
(66893,1,-130.551,-443.696,17.164,60000,1863901,3.14527,0,0),
(66893,2,-149.68,-443.899,17.0779,2000,1863904,4.60428,0,0);

-- UDB_274
-- Murmur - Update
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 66952;
DELETE FROM creature_movement WHERE id = 66952;
UPDATE creature_template SET ExtraFlags = 4096, MovementType = 2 WHERE entry = 18708;
DELETE FROM creature_movement_template WHERE entry = 18708;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(18708,1,-157.895,-497.322,15.8651,5000,1870801,1.5708,0,0),
(18708,2,-157.895,-497.322,15.8651,5000,1870802,1.5708,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1870801); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1870801,1,35,5,500,0,0,0,0,0,0,0,0,0,0,0,'THROW_AI_EVENT'),
(1870801,4,15,33332,0,0,0,0,0,0,0,0,0,0,0,0,'cast 33332'),
(1870802,1,35,5,500,0,0,0,0,0,0,0,0,0,0,0,'THROW_AI_EVENT');

-- UDB_275
-- Ring of Observance - Shadow Labyrinth entrance
-- Lower City Healer
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 69877;
DELETE FROM creature_movement WHERE id = 69877;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(69877,1,-3610.66,4948.03,-101.05,15000,0,3.12345,0,0),
(69877,2,-3610.79,4938.52,-101.05,15000,0,3.07789,0,0);
-- Lower City Operative
UPDATE creature SET position_x = -3615.746338, position_y = 4945.628906, position_z = -101.048439, orientation = 3.256698 WHERE guid = 85755;
UPDATE creature SET position_x = -3615.463623, position_y = 4943.306641, position_z = -101.048439, orientation = 3.344565 WHERE guid = 85754;
UPDATE creature SET position_x = -3616.228516, position_y = 4940.459473, position_z = -101.048439, orientation = 2.924377 WHERE guid = 84773;
DELETE FROM dbscripts_on_creature_death WHERE id = 19501;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(19501,5,41,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'resp');
-- Cabal Agent
-- Missing added - UDB free guids reused
DELETE FROM creature WHERE guid = 56341;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, curhealth, curmana, spawndist, MovementType) VALUES
(56341, 19503, 530, 1, 1, -3655.25, 4940.03, -101.048, 0.17698, 300, 6542, 0, 0, 2);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (56341,69878,69879);
DELETE FROM creature_movement WHERE id IN (56341,69878,69879);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(56341,1, -3655.25,4940.03,-101.048,4000,1950301,0.17698,0,0),
(56341,2,-3618.24,4944.49,-101.049,5000,1950302,6.21765,0,0),
(69878,1,-3655.05,4945.2,-101.048,2000,1950301,6.04428,0,0),
(69878,2,-3618.24,4944.49,-101.049,5000,1950302,6.21765,0,0),
(69879,1,-3655.25,4943.03,-101.048,2000,1950301,0.115848,0,0),
(69879,2,-3619.75,4942.19,-101.049,5000,1950302,0.0216377,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1950301 AND 1950302;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1950301,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1950302,1,31,19501,50,0,0,0,0,0,0,0,0,0,0,0,'search for 19501'),
(1950302,2,26,0,0,19501,50,1,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_creature_death WHERE id = 19503;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(19503,10,41,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'resp');

-- UDB_277
-- Rotting Forest-Rager
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 78437;
DELETE FROM creature_movement WHERE id = 78437;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(78437,1,-3912.88,4442.68,-21.8564,0,0,0.232798,0,0),
(78437,2,-3885.3,4449.06,-17.6061,0,0,0.104001,0,0),
(78437,3,-3870.17,4444.44,-17.0983,0,0,5.45649,0,0),
(78437,4,-3857.8,4425.22,-11.9723,0,0,5.54288,0,0),
(78437,5,-3843.65,4414.56,-5.42625,0,0,5.62927,0,0),
(78437,6,-3826,4395.88,-2.76405,25000,0,5.15019,0,0),
(78437,7,-3843.95,4414.5,-5.43119,0,0,2.57015,0,0),
(78437,8,-3858.05,4425.61,-12.0773,0,0,2.49554,0,0),
(78437,9,-3870.53,4444.23,-17.1895,0,0,2.46098,0,0),
(78437,10,-3885.38,4448.33,-17.5162,0,0,3.33513,0,0),
(78437,11,-3901.84,4441.53,-20.5696,0,0,3.48009,0,0),
(78437,12,-3912.32,4442.49,-21.6698,0,0,2.92639,0,0),
(78437,13,-3922.04,4441.38,-24.3755,0,0,3.74713,0,0),
(78437,14,-3929.11,4435.51,-24.3135,25000,0,0.757902,0,0);

-- Vagath
UPDATE creature_template SET  MinLevel = 70, MaxLevel = 70, FactionAlliance = 1843, FactionHorde = 1843, MinLevelHealth = 139720,  MaxLevelHealth = 139720, UnitFlags = 768, MovementType = 0 WHERE entry = 21768;
-- Illidari Temptress 
UPDATE creature_template SET  MinLevel = 69, MaxLevel = 69, FactionAlliance = 1813, FactionHorde = 1813, MinLevelHealth = 6896,  MaxLevelHealth = 6896, UnitFlags = 768, MovementType = 0 WHERE entry = 21776;
DELETE FROM creature_linking_template WHERE entry = 21776;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(21776,530,21768,8704,100);

-- UDB_279
-- Classic [1123]
-- Humar the Pridelord 
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, UnitFlags = 64, SpeedWalk = 1, SpeedRun = 1.428571429, DamageMultiplier = 1.7, MinMeleeDmg = 21.5, MaxMeleeDmg = 28.5, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 80, RangedAttackPower = 5, MeleeBaseAttackTime = 1300, RangedBaseAttackTime = 1300 WHERE Entry = 5828;
UPDATE creature SET modelid = 0, position_x = -639.0886, position_y = -3664.568, position_z = 95.22452, orientation = 2.440573, spawndist = 1, MovementType = 1 WHERE id = 5828;
-- Classic [1122]
-- Ambassador Infernus
UPDATE creature_template SET MinLevel = 42, SpeedWalk = 1, HealthMultiplier = 3, DamageMultiplier = 2.2, ArmorMultiplier = 1, MinMeleeDmg = 58.1, MaxMeleeDmg = 76.9, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 142, RangedAttackPower = 13, MeleeBaseAttackTime = 2000, DamageSchool = 2 WHERE Entry = 2745;
-- Classic [1121]
-- King Mosh
UPDATE creature_template SET MinLevel = 60, HealthMultiplier = 20, DamageMultiplier = 8.5, ArmorMultiplier = 1, MinLevelHealth = 61040, MaxLevelHealth = 61040, MinMeleeDmg = 77.9, MaxMeleeDmg = 103.4, MeleeAttackPower = 252, RangedAttackPower = 26, MeleeBaseAttackTime = 1500, RangedBaseAttackTime = 1500 WHERE Entry = 6584;
-- Classic [1120]
-- Huricanian - stats, pathing
UPDATE creature_template SET Scale = 0, UnitFlags = 64, SpeedWalk = 1.4, SpeedRun = 1.428571429, MinMeleeDmg = 92.9, MaxMeleeDmg = 123.0, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 228, RangedAttackPower = 23, MeleeBaseAttackTime = 2000, MovementType = 2 WHERE Entry = 14478;
UPDATE creature SET modelid = 0, position_x = -6518.560, position_y = 1786.397, position_z = 8.675016, spawndist = 0, MovementType = 2 WHERE guid = 43125;
DELETE FROM creature_movement WHERE id = (SELECT guid FROM creature WHERE id = 14478);
DELETE FROM creature_movement_template WHERE entry = 14478;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(14478, 1, -6513.018, 1813.922, 4.013925, 0, 0, 100, 0, 0),
(14478, 2, -6487.165, 1817.592, 3.343527, 0, 0, 100, 0, 0),
(14478, 3, -6463.739, 1787.981, 8.027637, 0, 0, 100, 0, 0),
(14478, 4, -6442.454, 1782.878, 10.88384, 0, 0, 100, 0, 0),
(14478, 5, -6413.579, 1788.175, 4.621660, 0, 0, 100, 0, 0),
(14478, 6, -6382.024, 1780.843, 2.502150, 0, 0, 100, 0, 0),
(14478, 7, -6345.296, 1774.620, 4.610785, 0, 0, 100, 0, 0),
(14478, 8, -6325.381, 1751.388, 1.960434, 0, 0, 100, 0, 0),
(14478, 9, -6316.682, 1718.207, 2.535166, 0, 0, 100, 0, 0),
(14478, 10, -6304.689, 1690.992, 1.901709, 0, 0, 100, 0, 0),
(14478, 11, -6279.769, 1689.267, 4.675986, 0, 0, 100, 0, 0),
(14478, 12, -6274.726, 1643.707, 4.396110, 0, 0, 100, 0, 0),
(14478, 13, -6275.510, 1612.685, 5.163792, 0, 0, 100, 0, 0),
(14478, 14, -6295.463, 1580.651, 0.492463, 0, 0, 100, 0, 0),
(14478, 15, -6310.759, 1549.342, 2.731886, 0, 0, 100, 0, 0),
(14478, 16, -6332.532, 1518.061, 1.550802, 0, 0, 100, 0, 0),
(14478, 17, -6355.264, 1514.468, 4.780538, 0, 0, 100, 0, 0),
(14478, 18, -6391.027, 1513.292, 4.346939, 0, 0, 100, 0, 0),
(14478, 19, -6421.498, 1502.604, 5.614395, 0, 0, 100, 0, 0),
(14478, 20, -6453.850, 1490.276, 6.788818, 0, 0, 100, 0, 0),
(14478, 21, -6487.023, 1501.032, 5.496054, 0, 0, 100, 0, 0),
(14478, 22, -6522.183, 1504.034, 2.713829, 0, 0, 100, 0, 0),
(14478, 23, -6552.034, 1512.453, 3.947961, 0, 0, 100, 0, 0),
(14478, 24, -6577.897, 1544.810, 0.103735, 0, 0, 100, 0, 0),
(14478, 25, -6579.297, 1580.114, 3.186564, 0, 0, 100, 0, 0),
(14478, 26, -6578.358, 1614.054, 8.826277, 0, 0, 100, 0, 0),
(14478, 27, -6598.862, 1645.875, 6.050514, 0, 0, 100, 0, 0),
(14478, 28, -6593.506, 1689.174, 4.137568, 0, 0, 100, 0, 0),
(14478, 29, -6587.823, 1725.753, 4.022511, 0, 0, 100, 0, 0),
(14478, 30, -6582.305, 1748.842, 3.366025, 0, 0, 100, 0, 0),
(14478, 31, -6554.310, 1776.093, 3.573771, 0, 0, 100, 0, 0),
(14478, 32, -6518.560, 1786.397, 8.675016, 0, 0, 100, 0, 0);
-- Classic [1119]
-- Bloodroar the Stalker
UPDATE creature_template SET MinLevel = 48, MaxLevel = 48, FactionAlliance = 16, FactionHorde = 16, UnitFlags = 64, SpeedWalk = 1, HealthMultiplier = 1.25, ArmorMultiplier = 1, MinMeleeDmg = 80.4, MaxMeleeDmg = 106.6, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 196, RangedAttackPower = 19, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MovementType = 1 WHERE Entry = 5346;
UPDATE creature SET modelid = 0, position_x = -5188.988, position_y = 1825.247, position_z = 115.7616, orientation = 4.312038, spawndist = 3, MovementType = 1 WHERE guid = 51841;
UPDATE creature SET modelid = 0, position_x = -5168.509, position_y = 1840.464, position_z = 114.0250, orientation = 2.338799 WHERE guid = 50984;
-- Classic [1118]
-- Diamond Head 
UPDATE creature_template SET Scale = 0, UnitFlags = 64, SpeedWalk = 1, ArmorMultiplier = 2, MinMeleeDmg = 75.6, MaxMeleeDmg = 100.3, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 184, RangedAttackPower = 17, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MovementType = 1 WHERE Entry = 5345;
-- Classic [1117]
-- Shanda the Spinner
UPDATE creature_template SET MinLevel = 19, MaxLevel = 19, UnitFlags = 64, SpeedWalk = 1, ArmorMultiplier = 1, MinLevelHealth = 449, MaxLevelHealth = 449, MinMeleeDmg = 27.6, MaxMeleeDmg = 36.5, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 817, MeleeAttackPower = 68, RangedAttackPower = 3, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MovementType = 1 WHERE Entry = 14266;
-- Classic [1116]
-- Olm the Wise
UPDATE creature_template SET MinLevel = 52, MaxLevel = 52, UnitFlags = 32832, SpeedWalk = 1, HealthMultiplier = 1.3, ArmorMultiplier = 1, MinLevelHealth = 3082, MaxLevelHealth = 3082, MinMeleeDmg = 88.3, MaxMeleeDmg = 117.2, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3108, MeleeAttackPower = 214, RangedAttackPower = 21, MeleeBaseAttackTime = 2000, ResistanceFire = 0, ResistanceNature = 0, ResistanceShadow = 0, ResistanceArcane = 0, MovementType = 1 WHERE Entry = 14343;
UPDATE creature SET curhealth = 3082 WHERE id = 14343;
-- Classic [1115]
-- Hayoc
UPDATE creature_template SET MinLevel = 41, MaxLevel = 41, Scale = 0, UnitFlags = 64, HealthMultiplier = 1.2, ArmorMultiplier = 1, MinLevelHealth = 1902, MaxLevelHealth = 1902, MinMeleeDmg = 58.7, MaxMeleeDmg = 77.9, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 2101, MeleeAttackPower = 142, RangedAttackPower = 15, MeleeBaseAttackTime = 2000, ResistanceFire = 0, ResistanceNature = 0, ResistanceFrost = 0, ResistanceShadow = 0, ResistanceArcane = 0, MovementType = 1 WHERE Entry = 14234;
UPDATE creature SET curhealth = 1902 WHERE id = 14234;
-- Classic [1114]
-- Antilus the Soarer
UPDATE creature_template SET MinLevel = 48, MaxLevel = 48, FactionAlliance = 16, FactionHorde = 16, UnitFlags = 64, SpeedWalk = 1, HealthMultiplier = 1.25, DamageMultiplier = 1.25, ArmorMultiplier = 1, MinMeleeDmg = 80.4, MaxMeleeDmg = 106.6, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 196, RangedAttackPower = 19, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 5347;
UPDATE creature SET modelid = 0, position_x = -5802.390, position_y = 1577.410, position_z = 73.78505, MovementType = 2 WHERE guid = 51840;
DELETE FROM creature_movement_template WHERE entry = 5347;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(5347, 1, -5771.840, 1553.960, 69.56287, 0, 0, 100, 0, 0),
(5347, 2, -5740.690, 1535.510, 68.61464, 0, 0, 100, 0, 0),
(5347, 3, -5705.140, 1546.160, 69.12675, 0, 0, 100, 0, 0),
(5347, 4, -5673.370, 1580.830, 69.91760, 0, 0, 100, 0, 0),
(5347, 5, -5646.900, 1594.460, 70.99152, 0, 0, 100, 0, 0),
(5347, 6, -5613.440, 1575.120, 64.29109, 0, 0, 100, 0, 0),
(5347, 7, -5576.160, 1568.940, 60.28103, 0, 0, 100, 0, 0),
(5347, 8, -5565.660, 1594.916, 67.81759, 0, 0, 100, 0, 0),
(5347, 9, -5560.140, 1629.560, 68.72121, 0, 0, 100, 0, 0),
(5347, 10, -5555.990, 1650.140, 68.10619, 0, 0, 100, 0, 0),
(5347, 11, -5526.420, 1648.400, 50.91718, 0, 0, 100, 0, 0),
(5347, 12, -5491.720, 1619.420, 47.95635, 0, 0, 100, 0, 0),
(5347, 13, -5455.810, 1596.310, 47.60862, 0, 0, 100, 0, 0),
(5347, 14, -5412.830, 1618.730, 50.18225, 0, 0, 100, 0, 0),
(5347, 15, -5378.369, 1646.102, 49.86166, 0, 0, 100, 0, 0),
(5347, 16, -5393.750, 1672.950, 51.37539, 0, 0, 100, 0, 0),
(5347, 17, -5417.440, 1697.570, 61.02838, 0, 0, 100, 0, 0),
(5347, 18, -5451.480, 1689.920, 56.94900, 0, 0, 100, 0, 0),
(5347, 19, -5485.370, 1705.930, 58.49550, 0, 0, 100, 0, 0),
(5347, 20, -5523.350, 1695.240, 60.49908, 0, 0, 100, 0, 0),
(5347, 21, -5549.170, 1714.110, 75.12833, 0, 0, 100, 0, 0),
(5347, 22, -5591.390, 1713.790, 82.83695, 0, 0, 100, 0, 0),
(5347, 23, -5631.340, 1708.570, 86.39445, 0, 0, 100, 0, 0),
(5347, 24, -5673.967, 1694.068, 90.81719, 0, 0, 100, 0, 0),
(5347, 25, -5704.540, 1686.800, 90.89021, 0, 0, 100, 0, 0),
(5347, 26, -5731.920, 1661.130, 87.00084, 0, 0, 100, 0, 0),
(5347, 27, -5762.200, 1647.850, 84.15019, 0, 0, 100, 0, 0),
(5347, 28, -5793.000, 1617.910, 82.89826, 0, 0, 100, 0, 0),
(5347, 29, -5802.390, 1577.410, 73.78505, 0, 0, 100, 0, 0);
-- Classic [1113]
-- Warlord Thresh'jin - stats, position & equipment
UPDATE creature SET modelid = 0, position_x = 3439.25, position_y = -4980.96, position_z = 195.8113, orientation = 2.321288 WHERE guid = 86607;
UPDATE creature_template SET UnitFlags = 32768, SpeedWalk = 1, DamageMultiplier = 1.25, MinMeleeDmg = 99.8, MaxMeleeDmg = 132.4, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 242, RangedAttackPower = 25, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MovementType = 1, EquipmentTemplateId = 259 WHERE Entry = 10822;
-- Classic [1112]
-- Improved social behaviour of some NPCs in Blackrock Depths
-- Linked all NPCs in The Manufactory to NPC 8983 (Golem Lord Argelmach) in Blackrock Depths
-- Moved creature addons for golems to template addons and moved the stone aura to ACID for better handling
DELETE FROM creature_linking_template WHERE map = 230 AND entry IN (8900, 8906, 8907, 8920);
INSERT INTO creature_linking_template VALUES
(8900, 230, 8983, 1, 100), -- Doomforge Arcanasmith : not all of them, only those in The Manufactory, those in Halls of Crafting are not linked
(8906, 230, 8920, 1, 12), -- Ragereaver Golem
(8907, 230, 8983, 1, 0), -- Wrath Hammer Construct
(8920, 230, 8983, 1, 100); -- Weapon Technician: only those in The Manufactory, those in Shadowforge City are not linked 
DELETE FROM creature_linking WHERE guid = 45932;
INSERT INTO creature_linking VALUES
(45932, 45931, 1);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (8906, 8907));
DELETE FROM creature_template_addon WHERE entry IN (8906, 8907);
INSERT INTO creature_template_addon VALUES
(8906, 0, 0, 1, 16, 0, 0, NULL),
(8907, 0, 0, 1, 16, 0, 0, NULL);
-- Classic [1111]
-- stats
-- Anub-Shiah
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, SpeedWalk = 1, HealthMultiplier = 8, PowerMultiplier = 5, DamageMultiplier = 6, ArmorMultiplier = 1, MinLevelHealth = 16208, MaxLevelHealth = 16208, MinLevelMana = 10205, MaxLevelMana = 10205, MinMeleeDmg = 77.1, MaxMeleeDmg = 102.2, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 2610, MeleeAttackPower = 210, RangedAttackPower = 20, MeleeBaseAttackTime = 1800, RangedBaseAttackTime = 1800 WHERE Entry = 9031;
-- Gorosh the Dervish
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, SpeedWalk = 1, HealthMultiplier = 6, PowerMultiplier = 2, DamageMultiplier = 6, ArmorMultiplier = 1, MinLevelHealth = 16194, MaxLevelHealth = 16194, MinMeleeDmg = 86.3, MaxMeleeDmg = 114.4, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3327, MeleeAttackPower = 234, RangedAttackPower = 23, MeleeBaseAttackTime = 1800, RangedBaseAttackTime = 1800 WHERE Entry = 9027;
-- Grizzle
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, SpeedWalk = 0.666668, HealthMultiplier = 9, PowerMultiplier = 2, DamageMultiplier = 6, ArmorMultiplier = 1, MinLevelHealth = 22797, MaxLevelHealth = 22797, MinMeleeDmg = 92.1, MaxMeleeDmg = 122.2, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3244, MeleeAttackPower = 224, RangedAttackPower = 22, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 9028;
-- Classic [1110]
-- Gravis Slipknot
UPDATE creature_template SET UnitFlags = 32832, SpeedWalk = 1, MinMeleeDmg = 49.7, MaxMeleeDmg = 66.0, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 120, RangedAttackPower = 12, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MovementType = 1 WHERE Entry = 14221;
UPDATE creature SET modelid = 0, position_x = 717.6572, position_y = -846.4034, position_z = 160.7536, orientation = 3.351032, MovementType = 2 WHERE id = 14221;
DELETE FROM creature_movement_template WHERE entry = 14221;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(14221, 1, 710.1757, -847.2303, 158.9778, 0, 0, 100, 0, 0),
(14221, 2, 700.1337, -853.0627, 158.5158, 0, 0, 100, 0, 0),
(14221, 3, 684.4196, -847.6795, 158.4978, 0, 0, 100, 0, 0),
(14221, 4, 666.9366, -858.7391, 158.4978, 0, 0, 100, 0, 0),
(14221, 5, 663.8845, -866.6437, 158.4985, 0, 0, 100, 0, 0),
(14221, 6, 662.6373, -879.3889, 158.2913, 0, 0, 100, 0, 0),
(14221, 7, 659.8421, -884.8450, 158.6172, 0, 0, 100, 0, 0),
(14221, 8, 666.7291, -899.7902, 164.6245, 0, 0, 100, 0, 0),
(14221, 9, 669.0222, -904.2005, 164.4140, 0, 0, 100, 0, 0),
(14221, 10, 667.2293, -921.9614, 164.4140, 0, 0, 100, 0, 0),
(14221, 11, 666.7783, -939.5458, 164.8495, 0, 0, 100, 0, 0),
(14221, 12, 673.5872, -950.2739, 164.3495, 0, 0, 100, 0, 0),
(14221, 13, 684.3471, -959.2615, 164.3495, 0, 0, 100, 0, 0),
(14221, 14, 698.7084, -966.3210, 164.6530, 0, 0, 100, 0, 0),
(14221, 15, 708.3213, -976.5755, 165.5618, 30000, 0, 100, 0, 0),
(14221, 16, 700.1210, -957.0955, 164.6795, 0, 0, 100, 0, 0),
(14221, 17, 715.2240, -933.3687, 164.3436, 0, 0, 100, 0, 0),
(14221, 18, 716.5434, -899.9173, 166.3662, 0, 0, 100, 0, 0),
(14221, 19, 715.2043, -866.5953, 161.6596, 0, 0, 100, 0, 0),
(14221, 20, 717.6572, -846.4034, 160.7536, 0, 0, 100, 0, 0),
(14221, 21, 717.6572, -846.4034, 160.7536, 30000, 0, 3.351032, 0, 0);
-- Classic [1108]
-- Fixed stats of boss NPCs in Blackrock Depths
-- Lord Roccor
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, PowerMultiplier = 2, DamageMultiplier = 3.6, ArmorMultiplier = 1.5, MinMeleeDmg = 86.3, MaxMeleeDmg = 114.4, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 210, RangedAttackPower = 20, MeleeBaseAttackTime = 2000, ResistanceFire = 153, ResistanceNature = 153, ResistanceFrost = 0, ResistanceShadow = 0, ResistanceArcane = 0 WHERE Entry = 9025;
-- Houndmaster Grebmar
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, PowerMultiplier = 2, DamageMultiplier = 3.7, MinMeleeDmg = 88.3, MaxMeleeDmg = 117.2, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 214, RangedAttackPower = 14, MeleeBaseAttackTime = 2000 WHERE Entry = 9319;
-- High Interrogator Gerstahn
UPDATE creature_template SET CreatureTypeFlags = 72, DamageMultiplier = 3.3, MinMeleeDmg = 82.2, MaxMeleeDmg = 108.9, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 202, RangedAttackPower = 19, MeleeBaseAttackTime = 2000 WHERE Entry = 9018;
-- High Justice Grimstone
UPDATE creature_template SET UnitFlags = 832, DynamicFlags = 0, PowerMultiplier = 2, DamageMultiplier = 3.7, MinMeleeDmg = 88.3, MaxMeleeDmg = 117.2, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3108, MeleeAttackPower = 214, RangedAttackPower = 21, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10096;
-- Hedrum the Creeper
UPDATE creature_template SET MinLevel = 52, UnitFlags = 32832, CreatureTypeFlags = 72, SpeedWalk = 1, PowerMultiplier = 2, DamageMultiplier = 5.5, ArmorMultiplier = 1, MinLevelHealth = 20851, MaxLevelHealth = 20851, MinMeleeDmg = 108.0, MaxMeleeDmg = 143.3, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3163, MeleeAttackPower = 218, RangedAttackPower = 22, MeleeBaseAttackTime = 2400, RangedBaseAttackTime = 2400 WHERE Entry = 9032;
-- Okthor the Breaker
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, SpeedWalk = 1.6, HealthMultiplier = 8, PowerMultiplier = 8, DamageMultiplier = 4.25, ArmorMultiplier = 1, MinLevelHealth = 15696, MaxLevelHealth = 15696, MinLevelMana = 15856, MaxLevelMana = 15856, MinMeleeDmg = 83.8, MaxMeleeDmg = 111.0, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 2544, MeleeAttackPower = 206, RangedAttackPower = 20, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 9030;
-- Pyromancer Loregrain
-- Warder Stilgiss
UPDATE creature_template SET CreatureTypeFlags = 72, HealthMultiplier = 4, PowerMultiplier = 5, DamageMultiplier = 3.5, ArmorMultiplier = 1, MinLevelHealth = 8636, MaxLevelHealth = 8636, MinLevelMana = 10815, MaxLevelMana = 10815, MinMeleeDmg = 89.3, MaxMeleeDmg = 118.2, Armor = 2699, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 220, RangedAttackPower = 21, MeleeBaseAttackTime = 2000 WHERE Entry = 9041;
UPDATE creature SET curhealth = 8636, curmana = 10815 WHERE id = 9041;
-- Verek
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, HealthMultiplier = 4, PowerMultiplier = 2, DamageMultiplier = 4.5, ArmorMultiplier = 1, MinLevelHealth = 10456, MaxLevelHealth = 10456, MinMeleeDmg = 94.0, MaxMeleeDmg = 124.7, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3327, MeleeAttackPower = 228, RangedAttackPower = 23, MeleeBaseAttackTime = 2000 WHERE Entry = 9042;
UPDATE creature SET curhealth = 10456 WHERE id = 9042;
-- Watchman Doomgrip
UPDATE creature_template SET FactionAlliance = 54, FactionHorde = 54, UnitFlags = 32832, CreatureTypeFlags = 72, SpeedWalk = 1, HealthMultiplier = 5, PowerMultiplier = 2, DamageMultiplier = 5, ArmorMultiplier = 1, MinLevelHealth = 10455, MaxLevelHealth = 10455, MinLevelMana = 4234, MaxLevelMana = 4234, MinMeleeDmg = 87.5, MaxMeleeDmg = 115.9, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 2654, MeleeAttackPower = 214, RangedAttackPower = 21, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 9476;
-- Dark Keeper Bethek
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, SpeedWalk = 1, HealthMultiplier = 3, PowerMultiplier = 2, DamageMultiplier = 3.5, ArmorMultiplier = 1, MinLevelHealth = 6273, MaxLevelHealth = 6273, MinLevelMana = 4234, MaxLevelMana = 4234, MinMeleeDmg = 87.5, MaxMeleeDmg = 115.9, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 2654, MeleeAttackPower = 214, RangedAttackPower = 21, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MovementType = 1 WHERE Entry = 9437;
-- Dark Keeper Ofgut
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, SpeedWalk = 1, HealthMultiplier = 3, PowerMultiplier = 2, DamageMultiplier = 3.5, ArmorMultiplier = 1, MinLevelHealth = 6273, MaxLevelHealth = 6273, MinLevelMana = 4234, MaxLevelMana = 4234, MinMeleeDmg = 87.5, MaxMeleeDmg = 115.9, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 2654, MeleeAttackPower = 214, RangedAttackPower = 21, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MovementType = 1 WHERE Entry = 9438;
-- Dark Keeper Pelver
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, SpeedWalk = 1, HealthMultiplier = 3, PowerMultiplier = 2, DamageMultiplier = 3.5, ArmorMultiplier = 1, MinLevelHealth = 6273, MaxLevelHealth = 6273, MinLevelMana = 4234, MaxLevelMana = 4234, MinMeleeDmg = 87.5, MaxMeleeDmg = 115.9, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 2654, MeleeAttackPower = 214, RangedAttackPower = 21, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MovementType = 1 WHERE Entry = 9441;
-- Dark Keeper Uggel
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, SpeedWalk = 1, HealthMultiplier = 3, PowerMultiplier = 2, DamageMultiplier = 3.5, ArmorMultiplier = 1, MinLevelHealth = 6273, MaxLevelHealth = 6273, MinLevelMana = 4234, MaxLevelMana = 4234, MinMeleeDmg = 87.5, MaxMeleeDmg = 115.9, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 2654, MeleeAttackPower = 214, RangedAttackPower = 21, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MovementType = 1 WHERE Entry = 9442;
-- Dark Keeper Vorfalk
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, SpeedWalk = 1, HealthMultiplier = 3, PowerMultiplier = 2, DamageMultiplier = 3.5, ArmorMultiplier = 1, MinLevelHealth = 6273, MaxLevelHealth = 6273, MinLevelMana = 4234, MaxLevelMana = 4234, MinMeleeDmg = 87.5, MaxMeleeDmg = 115.9, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 2654, MeleeAttackPower = 214, RangedAttackPower = 21, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MovementType = 1 WHERE Entry = 9443;
-- Dark Keeper Zimrel
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, SpeedWalk = 1, HealthMultiplier = 3, PowerMultiplier = 2, DamageMultiplier = 3.5, ArmorMultiplier = 1, MinLevelHealth = 6273, MaxLevelHealth = 6273, MinLevelMana = 4234, MaxLevelMana = 4234, MinMeleeDmg = 87.5, MaxMeleeDmg = 115.9, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 2654, MeleeAttackPower = 214, RangedAttackPower = 21, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MovementType = 1 WHERE Entry = 9439;
-- Lord Incendius
UPDATE creature_template SET MinLevel = 55, MaxLevel = 55, UnitFlags = 32832, CreatureTypeFlags = 72, HealthMultiplier = 6.5, PowerMultiplier = 5, DamageMultiplier = 5, ArmorMultiplier = 1, MinLevelHealth = 16991, MaxLevelHealth = 16991, MinMeleeDmg = 94.0, MaxMeleeDmg = 124.7, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3244, MeleeAttackPower = 228, RangedAttackPower = 23, MeleeBaseAttackTime = 2000, ResistanceFire = 0, ResistanceNature = 0, ResistanceFrost = 0, ResistanceShadow = 0, ResistanceArcane = 0 WHERE Entry = 9017;
UPDATE creature SET curhealth = 16991 WHERE id = 9017;
-- BaelGar
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, HealthMultiplier = 10, PowerMultiplier = 2, DamageMultiplier = 6, ArmorMultiplier = 1, MinLevelHealth = 25330, MaxLevelHealth = 25330, MinMeleeDmg = 110.5, MaxMeleeDmg = 146.6, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3216, MeleeAttackPower = 224, RangedAttackPower = 22, MeleeBaseAttackTime = 2400, RangedBaseAttackTime = 2400 WHERE Entry = 9016;
UPDATE creature SET curhealth = 25330 WHERE id = 9016;
-- General Angerforge
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, HealthMultiplier = 8, PowerMultiplier = 2, DamageMultiplier = 6.5, ArmorMultiplier = 1, MinLevelHealth = 22272, MaxLevelHealth = 22272, MinMeleeDmg = 88.1, MaxMeleeDmg = 116.9, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3326, MeleeAttackPower = 238, RangedAttackPower = 24, MeleeBaseAttackTime = 1800, RangedBaseAttackTime = 1800 WHERE Entry = 9033;
UPDATE creature SET curhealth = 22272 WHERE id = 9033;
-- Golem Lord Argelmach
UPDATE creature_template SET HealthMultiplier = 6, PowerMultiplier = 8, DamageMultiplier = 6.25, ArmorMultiplier = 1, MinLevelHealth = 13362, MaxLevelHealth = 13362, MinLevelMana = 17928, MaxLevelMana = 17928, MinMeleeDmg = 91.1, MaxMeleeDmg = 120.7, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 2744, MeleeAttackPower = 224, RangedAttackPower = 22, MeleeBaseAttackTime = 2000 WHERE Entry = 8983;
UPDATE creature SET curhealth = 13362, curmana = 17928 WHERE id = 8983;
-- Hurley Blackbreath
UPDATE creature_template SET FactionAlliance = 54, FactionHorde = 54, UnitFlags = 33088, CreatureTypeFlags = 72, HealthMultiplier = 5, PowerMultiplier = 2, ArmorMultiplier = 1, MinLevelHealth = 13070, MaxLevelHealth = 13070, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3271, MeleeAttackPower = 228, RangedAttackPower = 23, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 9537;
-- Phalanx
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, PowerMultiplier = 2, DamageMultiplier = 7, MinMeleeDmg = 94.0, MaxMeleeDmg = 124.7, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 228, RangedAttackPower = 23, MovementType = 1 WHERE Entry = 9502;
-- Ambassador Flamelash
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, HealthMultiplier = 10, PowerMultiplier = 2, DamageMultiplier = 5, ArmorMultiplier = 1, MinLevelHealth = 27840, MaxLevelHealth = 27840, MinMeleeDmg = 97.9, MaxMeleeDmg = 129.8, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3380, MeleeAttackPower = 283, RangedAttackPower = 24, MeleeBaseAttackTime = 2000 WHERE Entry = 9156;
UPDATE creature SET curhealth = 27840 WHERE id = 9156;
-- Emperor Dagran Thaurissan
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, HealthMultiplier = 9, PowerMultiplier = 2, DamageMultiplier = 7.25, ArmorMultiplier = 1, MinLevelHealth = 26649, MaxLevelHealth = 26649, MinMeleeDmg = 101.8, MaxMeleeDmg = 135.0, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3489, MeleeAttackPower = 248, RangedAttackPower = 25, MeleeBaseAttackTime = 2000 WHERE Entry = 9019;
UPDATE creature SET curhealth = 26649 WHERE id = 9019;
-- Christmas Emperor Dagran Thaurissan
UPDATE creature_template SET MinLevel = 59, MaxLevel = 59, FactionAlliance = 54, FactionHorde = 54, Scale = 0, UnitFlags = 32832, CreatureTypeFlags = 72, SpeedWalk = 1, PowerMultiplier = 2, DamageMultiplier = 7.25, MinLevelHealth = 26649, MaxLevelHealth = 26649, MinMeleeDmg = 101.8, MaxMeleeDmg = 135.0, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3489, MeleeAttackPower = 248, RangedAttackPower = 25 WHERE Entry = 15775;
-- Princess Moira Bronzebeard
UPDATE creature_template SET HealthMultiplier = 6.5, PowerMultiplier = 3, DamageMultiplier = 4.5, ArmorMultiplier = 1, MinLevelHealth = 14931, MaxLevelHealth = 14931, MinLevelMana = 6867, MaxLevelMana = 6867, MinMeleeDmg = 92.9, MaxMeleeDmg = 123.0, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 2788, MeleeAttackPower = 228, RangedAttackPower = 23, MeleeBaseAttackTime = 2000 WHERE Entry = 8929;
UPDATE creature SET curhealth = 14931, curmana = 6867 WHERE id = 8929;
-- High Priestess of Thaurissan
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, SpeedWalk = 1, HealthMultiplier = 6.5, PowerMultiplier = 3, DamageMultiplier = 4.5, ArmorMultiplier = 1, MinLevelHealth = 14931, MaxLevelHealth = 14931, MinLevelMana = 6867, MaxLevelMana = 6867, MinMeleeDmg = 92.9, MaxMeleeDmg = 123, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 2788, MeleeAttackPower = 228, RangedAttackPower = 23, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10076;
-- Classic [1104]
-- Fix model of NPC 8096 (Protector of the People) in Westfall
UPDATE creature SET modelid = 0 WHERE id = 8096;
UPDATE creature_template SET ModelId2 = 7310 WHERE Entry = 8096;
UPDATE creature_model_info SET modelid_other_gender = 0 WHERE modelid = 7310;
-- Classic [1103]
-- Removed two duplicate NPCs in Feralas
DELETE FROM creature WHERE guid IN (51697, 51692);  
-- Classic [1097]
-- The Deadmines - Defias Companion - they are summoned as pets and do not exist without a master.
DELETE FROM creature WHERE id = 3450;
-- Classic [1096]
-- Warrior 63 - Classlevelstats
-- slighty modified basedamage, should fit better
UPDATE creature_template_classlevelstats SET BaseDamageExp0 = 35.775 WHERE Level = 63 and Class = 1; 
 -- Classic [1095]
-- Deathmaw has always been a level 53, non-elite wolf, according to my sources. He should also be skinnable.
UPDATE creature_template SET MinLevel = 53, MaxLevel = 53, SpeedWalk = 1, HealthMultiplier = 1.3, DamageVariance = 1.35, ArmorMultiplier = 1, MinMeleeDmg = 54.0, MaxMeleeDmg = 71.7, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3163, MeleeAttackPower = 218, RangedAttackPower = 22, MeleeBaseAttackTime = 1200, RangedBaseAttackTime = 1200, ResistanceFire = 0, ResistanceNature = 0, ResistanceFrost = 0, ResistanceShadow = 0, ResistanceArcane = 0, MovementType = 1 WHERE Entry = 10077;
DELETE FROM skinning_loot_template WHERE entry = 10156;
INSERT INTO skinning_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) VALUES
(10156, 8170, 50, 1, 1, 2, 0),
(10156, 4304, 45, 1, 1, 2, 0),
(10156, 8171, 3, 1, 1, 1, 0),
(10156, 8169, 2, 1, 1, 1, 0);
-- Classic [1094]
-- Followup Tactical Assignment 
-- A followup wasn't guaranteed, should no longer happen
UPDATE item_loot_template SET ChanceOrQuestChance = 0, groupid = 1 WHERE entry = 21133 and item = 20943;
UPDATE item_loot_template SET ChanceOrQuestChance = 0, groupid = 1 WHERE entry = 21133 and item = 20945;
UPDATE item_loot_template SET ChanceOrQuestChance = 0, groupid = 1 WHERE entry = 21133 and item = 20947;
UPDATE item_loot_template SET ChanceOrQuestChance = 0, groupid = 1 WHERE entry = 21133 and item = 20948;
UPDATE item_loot_template SET ChanceOrQuestChance = 0, groupid = 1 WHERE entry = 21133 and item = 21167;
UPDATE item_loot_template SET ChanceOrQuestChance = 0, groupid = 1 WHERE entry = 21133 and item = 21245;
UPDATE item_loot_template SET ChanceOrQuestChance = 0 WHERE entry = 20809 and item = 20944;
UPDATE item_loot_template SET ChanceOrQuestChance = 0 WHERE entry = 20809 and item = 21165;
UPDATE item_loot_template SET ChanceOrQuestChance = 0 WHERE entry = 20809 and item = 21166;
UPDATE item_loot_template SET ChanceOrQuestChance = 0 WHERE entry = 20809 and item = 21245;
UPDATE item_loot_template SET ChanceOrQuestChance = 0 WHERE entry = 20809 and item = 21751;
-- Classic [1093]
-- Dire Maul: North - Guard Fengus, Slip'kik and Mol'dar
UPDATE creature_template SET MinLevel = 59, NpcFlags = 3, UnitFlags = 32832, CreatureTypeFlags = 72, HealthMultiplier = 8, PowerMultiplier = 1, DamageMultiplier = 7, ArmorMultiplier = 1, MinMeleeDmg = 101.8, MaxMeleeDmg = 135.0, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 248, RangedAttackPower = 25 WHERE Entry = 14326;
UPDATE creature_template SET NpcFlags = 3, UnitFlags = 32832, CreatureTypeFlags = 72, PowerMultiplier = 1, DamageMultiplier = 7, MinMeleeDmg = 101.8, MaxMeleeDmg = 135.0, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 248, RangedAttackPower = 25, MovementType = 1 WHERE Entry = 14321;
UPDATE creature_template SET NpcFlags = 3, UnitFlags = 32832, CreatureTypeFlags = 72, PowerMultiplier = 1, DamageMultiplier = 7, MinMeleeDmg = 101.8, MaxMeleeDmg = 135.0, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 248, RangedAttackPower = 25, MovementType = 1 WHERE Entry = 14323;
-- Classic [1091]
-- Darkshore - Lady Moongazer
UPDATE creature_template SET SpeedWalk = 1, MinMeleeDmg = 25, MaxMeleeDmg = 33.2, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 60, RangedAttackPower = 2, MeleeBaseAttackTime = 2000 WHERE Entry = 2184;
-- Classic [1090]
-- Updates for the Plaguelands 
-- Removed useless creature addon and moved them to creature_template_addon for NPC 10580 (Fetid Zombie) in Western Plaguelands
DELETE FROM creature_template_addon WHERE entry = 10580;
INSERT INTO creature_template_addon VALUES
(10580, 0, 0, 1, 16, 0, 0, NULL);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 10580);
-- Fixed stats of NPC 10717 (Temporal Parasite) that was dealing too much damage and was missing mana
UPDATE creature_template SET InhabitType = 1, UnitClass = 2, MinLevelHealth = 2823, MaxLevelHealth = 3006, HealthMultiplier = 1.35, MinLevelMana = 2117, MaxLevelMana = 2241, ArmorMultiplier = 1 WHERE Entry = 10717;
UPDATE creature_template SET MinMeleeDmg = 93, MaxMeleeDmg = 130, MeleeAttackPower = 238, MeleeBaseAttackTime = 2000  WHERE Entry = 10717;
-- Added missing spell target
DELETE FROM spell_script_target WHERE entry = 16613;
INSERT INTO spell_script_target VALUES (16613, 0, 175795, 0);
-- Fixed stats of one undead NPC at Dalsons Tear in Western Plaguelands
-- Skeletal Terror
UPDATE creature_template SET MinMeleeDmg = 88, MaxMeleeDmg = 122, MeleeAttackPower = 224, RangedAttackPower = 22, MeleeBaseAttackTime = 2000, Armor = 3180 WHERE Entry = 1785;
-- Fixed stats NPC 1796 (Freezing Ghoul) in Andorhal in Western Plaguelands: it was dealing too much damage (still having its elite damage)
-- also fixed Fire resistance of NPC 1795 (Searing Ghoul)
UPDATE creature_template SET ResistanceFire = 150 WHERE Entry = 1795; -- Searing Ghoul 
UPDATE creature_template SET MinMeleeDmg = 94, MaxMeleeDmg = 127, MeleeAttackPower = 234, RangedAttackPower = 22, MeleeBaseAttackTime = 2000 WHERE Entry = 1796; -- Freezeing Ghoul
-- Deleted NPC 10979 at Dalsons Tear in Western Plaguelands as it is summoned
DELETE FROM creature WHERE guid = 52635;
DELETE FROM creature_addon WHERE guid = 52635;
-- Fixed speed of NPC 11076 (Cauldron Lord Razarch) in Western Plaguelands who was moving too fast (walk/run speed were inverted)
UPDATE creature_template SET SpeedWalk = 1.14286, SpeedRun = 1.89 WHERE Entry = 11076;
-- Added missing WP to NPC 10816 (Wandering Skeleton) because
-- it was very static for a wandering one
-- Source: http://www.wowhead.com/npc = 10816/wandering-skeleton#comments
DELETE FROM creature_movement_template WHERE entry = 10816;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(10816, 1, 1936.95, -1635.07, 60.0263, 0, 0, 5.59485, 0, 0),
(10816, 2, 1930.95, -1657.73, 59.31, 0, 0, 4.44345, 0, 0),
(10816, 3, 1912, -1660.12, 61.2311, 0, 0, 3.33997, 0, 0),
(10816, 4, 1902.82, -1651.78, 60.0138, 0, 0, 2.40377, 0, 0),
(10816, 5, 1886.67, -1651.37, 61.2298, 0, 0, 2.95355, 0, 0),
(10816, 6, 1882.75, -1629.76, 61.5077, 0, 0, 1.75032, 0, 0),
(10816, 7, 1899.4, -1616.07, 60.4586, 0, 0, 0.688462, 0, 0),
(10816, 8, 1915.49, -1615.05, 61.0254, 0, 0,  0.0632846, 0, 0),
(10816, 9, 1927.59, -1627.02, 60.4777, 0, 0, 05.4307, 0, 0),
(10816, 10, 1925.09, -1627, 60.455, 0, 0, 5.942, 0, 0);
UPDATE creature_template SET MovementType = 2 WHERE Entry = 10816;
UPDATE creature SET position_x = 1936.95, position_y = -1635.07, position_z = 60.0263, MovementType = 2 WHERE id = 10816;
-- Fixed drop chance of quest item 12738 (Dalson Outhouse Key) as it should only drop once the first part of the quest line is completed
-- Source: http://www.wowwiki.com/Locked_Away_quest_chain
DELETE FROM conditions WHERE condition_entry = 1017;
INSERT INTO conditions VALUES 
(1017, 8, 5058, 0);
UPDATE creature_loot_template SET condition_id = 1017 WHERE item = 12738;
UPDATE quest_template SET SpecialFlags = 0 WHERE entry = 5058;
-- Removed spawns of NPC 10979 (Scarlet Hounds) because they should be summoned
DELETE FROM creature WHERE guid IN (52664, 52666, 52667, 52665, 52668);
DELETE FROM creature_addon WHERE guid IN (52664, 52666, 52667, 52665, 52668);
-- Improved gossip menu of NPC 10739 (Mulgris Deepriver) in Western Plaguelands
DELETE FROM conditions WHERE condition_entry = 1018;
INSERT INTO conditions VALUES 
(1018, 8, 4985, 0);
UPDATE gossip_menu SET condition_id = 1018 WHERE entry = 2921 AND text_id = 3635;
-- Improved gossip menu of NPC 10304 (Aurora Skycaller) in Eastern Plaguelands
DELETE FROM conditions WHERE condition_entry IN (1019, 1020);
INSERT INTO conditions VALUES
(1019, 9, 5247, 0),
(1020, 8, 5245, 0);
UPDATE gossip_menu_option SET action_menu_id = 50100, condition_id = 1019 WHERE menu_id = 4743 AND id = 0;
UPDATE gossip_menu_option SET action_menu_id = 50101, condition_id = 1019 WHERE menu_id = 4743 AND id = 1;
DELETE FROM gossip_menu WHERE entry IN (50100, 50101);
INSERT INTO gossip_menu VALUES
(50100, 5796, 0, 0),
(50101, 5797, 0, 0);
UPDATE gossip_menu SET condition_id = 3 WHERE entry = 4743 AND text_id = 5795;
UPDATE gossip_menu SET condition_id = 1020 WHERE entry = 4743 AND text_id = 5817;
-- Added missing spawns of rare NPC 10821 (Hedmush the Rotting) in Eastern Plaguelands
-- Put them into a pool
DELETE FROM creature WHERE guid in (67087,67088,67133);
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(67087, 10821, 0, 0, 0, 1853.9, -3720, 162.224, 1.254, 28800, 0, 0, 3758, 0, 0, 0),
(67088, 10821, 0, 0, 0, 2524.42, -4757.21, 100.484, 2.33279, 28800, 0, 0, 3758, 0, 0, 0),
(67133, 10821, 0, 0, 0, 3157.01, -4327.84, 133.152, 2.43097, 28800, 5, 0, 3758, 0, 0, 1);
UPDATE creature SET spawndist = 5, MovementType = 1 WHERE id = 10821;
DELETE FROM pool_creature_template WHERE id = 10821;
INSERT INTO pool_creature_template VALUES
(10821, 25494, 0, 'Hed\mush the Rotting (10821)');
DELETE FROM pool_template WHERE entry = 25494;
INSERT INTO pool_template VALUES
(25494, 1, 'Hed\mush the Rotting (10821)');
-- Classic [1088]
-- Western Plaguelands Wailing Deaths, Hungering Wraiths, Searing Ghouls, Soulless Ghouls
UPDATE creature_template SET UnitFlags = 64, CreatureTypeFlags = 72, MinMeleeDmg = 85.7, MaxMeleeDmg = 115.9, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 214, RangedAttackPower = 21, MeleeBaseAttackTime = 2000 WHERE Entry = 1794;
UPDATE creature_template SET UnitFlags = 64, CreatureTypeFlags = 72, MinMeleeDmg = 87.5, MaxMeleeDmg = 118.2, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 220, RangedAttackPower = 21, MeleeBaseAttackTime = 2000 WHERE Entry = 1795;
UPDATE creature_template SET UnitFlags = 64, CreatureTypeFlags = 72, MinMeleeDmg = 95.9, MaxMeleeDmg = 132.4, MeleeAttackPower = 242, RangedAttackPower = 25, MeleeBaseAttackTime = 2000 WHERE Entry = 1802;
UPDATE creature_template SET UnitFlags = 64, CreatureTypeFlags = 72, MinMeleeDmg = 95.9, MaxMeleeDmg = 129.9, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 238, RangedAttackPower = 24, MeleeBaseAttackTime = 2000 WHERE Entry = 1804;
-- Classic [1087]
-- Western Plaguelands - Blighted Zombie
UPDATE creature_template SET UnitFlags = 64, CreatureTypeFlags = 72, MinMeleeDmg = 88.3, MaxMeleeDmg = 119.5, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 218, RangedAttackPower = 22, MeleeBaseAttackTime = 2000 WHERE Entry = 4475;
UPDATE creature_template SET UnitFlags = 64, CreatureTypeFlags = 72, MinMeleeDmg = 90.0, MaxMeleeDmg = 122.2, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 224, RangedAttackPower = 22 WHERE Entry = 4474;
-- Classic [1085]
-- Fixed quest 4136 (Ribbly Screwspigot) in Blackrock Depths
-- Added missing condition for gossip menu
-- Added missing script
DELETE FROM conditions WHERE condition_entry = 1016;
INSERT INTO conditions VALUES
(1016, 9, 4136, 0);
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 197001, condition_id  = 1016 WHERE menu_id = 1970 AND id = 1;
DELETE FROM dbscripts_on_gossip WHERE id  =  197001;
INSERT INTO dbscripts_on_gossip VALUES
(197001, 0, 22, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ribbly - update faction'),
(197001, 0, 22, 21, 0, 10043, 46616, 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Ribbly Crony - update faction'),
(197001, 0, 22, 21, 0, 10043, 46617, 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Ribbly Crony - update faction'),
(197001, 0, 22, 21, 0, 10043, 46618, 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Ribbly Crony - update faction'),
(197001, 1, 0, 0, 0, 0, 0, 0, 2000000611, 0, 0, 0, 0, 0, 0, 0,''),
(197001, 3, 26, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ribbly  - attack player');
DELETE FROM db_script_string WHERE entry  = 2000000611;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000000611,'No! Get away from me! Help!!',0,0,0,0,NULL);
-- Classic [1084]
-- Lakeshire - Guard Adams
UPDATE creature SET modelid = 0, position_x = -9245.81, position_y = -2167.49, position_z = 64.1168, orientation = 3.58002, MovementType = 2 WHERE guid = 10080;
DELETE FROM creature_movement WHERE id = 10080;
UPDATE creature_template SET MovementType = 2 WHERE entry = 936;
DELETE FROM creature_movement_template WHERE entry = 936;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(936, 20, -9245.68, -2167.47, 63.9388, 15000, 0, 100, 0, 0),
(936, 19, -9245.3, -2171.29, 63.9388, 0, 0, 0, 0, 0),
(936, 18, -9212.64, -2174.06, 64.0584, 0, 0, 0, 0, 0),
(936, 17, -9187.23, -2160.7, 64.0584, 0, 0, 0, 0, 0),
(936, 16, -9187.41, -2138.51, 64.0064, 0, 0, 0, 0, 0),
(936, 15, -9212.24, -2135.42, 64.0584, 0, 0, 0, 0, 0),
(936, 14, -9232.15, -2130.65, 64.0584, 0, 0, 0, 0, 0),
(936, 13, -9246.59, -2118.7, 65.591, 0, 0, 0, 0, 0),
(936, 12, -9245.79, -2099.05, 72.1959, 0, 0, 0, 0, 0),
(936, 11, -9235.08, -2087.05, 76.554, 0, 0, 0, 0, 0),
(936, 10, -9189.04, -2094.36, 87.8603, 15000, 0, 100, 0, 0),
(936, 9, -9206.65, -2088.98, 86.1227, 0, 0, 0, 0, 0),
(936, 8, -9220.59, -2089.07, 81.4125, 0, 0, 0, 0, 0),
(936, 7, -9234.09, -2083.62, 76.7928, 0, 0, 0, 0, 0),
(936, 6, -9234.39, -2072.97, 76.5348, 0, 0, 0, 0, 0),
(936, 5, -9239.85, -2075.51, 75.7547, 15000, 0, 100, 0, 0),
(936, 4, -9243.47, -2098.98, 72.6224, 0, 0, 0, 0, 0),
(936, 3, -9246.5, -2115.22, 66.5529, 0, 0, 0, 0, 0),
(936, 2, -9254.05, -2135.93, 63.9399, 0, 0, 0, 0, 0),
(936, 1, -9253.7, -2167.14, 64.0579, 0, 0, 0, 0, 0);
-- Classic [1083]
-- Lakeshire Guards are summoned by nearby civilians, they do not guard the town on their own.
DELETE FROM creature WHERE guid = 31839;
DELETE FROM creature_addon WHERE guid = 31839;
-- Classic [1082]
-- LBRS - Hordemar City
UPDATE creature SET modelid = 0, position_x = -19.7833, position_y = -365.125, position_z = 50.1377, orientation = 5.49779, spawntimesecs = 7200, MovementType = 2 WHERE guid = 44456;
DELETE FROM creature_movement WHERE id = 44456;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(44456, 1, -29.4354, -374.537, 49.2465, 0, 0, 0, 0, 0),
(44456, 2, -35.8591, -385.568, 48.6559, 0, 0, 0, 0, 0),
(44456, 3, -46.1924, -393.206, 49.2342, 0, 0, 0, 0, 0),
(44456, 4, -61.7472, -396.152, 44.5767, 0, 0, 0, 0, 0),
(44456, 5, -88.6538, -400.578, 37.8984, 30000, 0, 100, 0, 0),
(44456, 6, -54.4929, -392.754, 46.3396, 0, 0, 0, 0, 0),
(44456, 7, -32.5814, -377.415, 49.0143, 0, 0, 0, 0, 0),
(44456, 8, -25.1649, -365.964, 50.3259, 0, 0, 0, 0, 0),
(44456, 9, -19.7295, -365.061, 50.0607, 0, 0, 0, 0, 0),
(44456, 10, -19.7295, -365.061, 50.0607, 30000, 0, 5.5676, 0, 0);
-- Classic [1081]
-- LBRS - Spire Scarabs / Scorpions
UPDATE creature_template SET MinLevel = 58, UnitFlags = 32768, CreatureTypeFlags = 72, SpeedWalk = 1, HealthMultiplier = 1.35, ArmorMultiplier = 1, MinMeleeDmg = 99.8, MaxMeleeDmg = 132.4, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3435, MeleeAttackPower = 242, RangedAttackPower = 25, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10177;
UPDATE creature_template SET MinLevel = 58, UnitFlags = 32768, CreatureTypeFlags = 72, SpeedWalk = 1, HealthMultiplier = 1.35, ArmorMultiplier = 1, MinMeleeDmg = 99.8, MaxMeleeDmg = 132.4, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3435, MeleeAttackPower = 242, RangedAttackPower = 25, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 9701;
-- Missing added - UDB free guids reused
DELETE FROM creature WHERE guid IN (56343,56486,56487,56488,56502,56503,56504,56505,56516,56517,56518,64058,66834,66849,66854,66855,66860,66884,66921,66922);
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(56343, 10177, 229, 0, 0, -68.8686, -343.093, 55.1160, 1.81514, 7200, 5, 0, 3876, 0, 0, 1),
(56486, 10177, 229, 0, 0, -73.5343, -331.947, 56.8824, 3.94444, 7200, 5, 0, 3876, 0, 0, 1),
(56487, 10177, 229, 0, 0, -66.8659, -352.762, 54.4785, 1.08210, 7200, 5, 0, 3876, 0, 0, 1),
(56488, 10177, 229, 0, 0, -72.0317, -347.075, 54.8219, 1.36136, 7200, 5, 0, 3876, 0, 0, 1),
(56502, 10177, 229, 0, 0, -71.5690, -358.213, 54.5978, 2.39110, 7200, 5, 0, 3876, 0, 0, 1),
(56503, 10177, 229, 0, 0, -75.4103, -341.562, 55.3937, 4.90438, 7200, 5, 0, 3876, 0, 0, 1),
(56504, 10177, 229, 0, 0, -79.7917, -328.192, 58.5470, 5.95157, 7200, 5, 0, 3876, 0, 0, 1),
(56505, 10177, 229, 0, 0, -102.763, -349.062, 60.7782, 1.51844, 7200, 5, 0, 3876, 0, 0, 1),
(56516, 10177, 229, 0, 0, -108.382, -341.040, 61.1785, 1.64061, 7200, 5, 0, 3876, 0, 0, 1),
(56517, 10177, 229, 0, 0, -107.424, -351.940, 59.7058, 4.48550, 7200, 5, 0, 3876, 0, 0, 1),
(56518, 10177, 229, 0, 0, -112.261, -336.356, 62.3371, 4.92183, 7200, 5, 0, 3876, 0, 0, 1),
(64058, 10177, 229, 0, 0, -110.012, -356.647, 58.5433, 4.36332, 7200, 5, 0, 3876, 0, 0, 1),
(66834, 10177, 229, 0, 0, -111.704, -348.742, 60.0788, 0.82031, 7200, 5, 0, 3876, 0, 0, 1),
(66849, 10177, 229, 0, 0, -108.927, -364.601, 56.6248, 1.04720, 7200, 5, 0, 3876, 0, 0, 1),
(66854, 9701, 229, 0, 0, -77.2828, -324.738, 59.1126, 4.991640, 7200, 5, 0, 3876, 0, 0, 1),
(66855, 9701, 229, 0, 0, -80.2467, -313.909, 59.7635, 0.45379, 7200, 5, 0, 3876, 0, 0, 1),
(66860, 9701, 229, 0, 0, -80.8737, -298.923, 61.8178, 5.18363, 7200, 5, 0, 3876, 0, 0, 1),
(66884, 9701, 229, 0, 0, -109.429, -324.918, 64.3253, 0.03491, 7200, 5, 0, 3876, 0, 0, 1),
(66921, 9701, 229, 0, 0, -112.332, -331.009, 63.2146, 3.07178, 7200, 5, 0, 3876, 0, 0, 1),
(66922, 9701, 229, 0, 0, -112.900, -323.074, 64.3181, 5.41052, 7200, 5, 0, 3876, 0, 0, 1);
-- Classic [1080]
-- Wavethrasher Scales are quest items and should only drop if quest 'Wavethrashing' is active.
UPDATE creature_loot_template SET ChanceOrQuestChance = -ChanceOrQuestChance WHERE item = 20087 AND ChanceOrQuestChance > 0;
-- Classic [1079]
-- Gerard Tiller should no longer drop blacksmithing plans
DELETE FROM creature_loot_template WHERE entry = 255 AND item IN (11614, 11615, 12827, 12830);
UPDATE creature_template SET lootId = 0 WHERE Entry = 255;
-- Classic [1078]
-- Zul'Farak - some rare NPCs were not attackable ...
UPDATE creature_template SET UnitFlags = 32832 WHERE Entry = 10080;
UPDATE creature_template SET UnitFlags = 32832 WHERE Entry = 10081;
-- Classic [1077]
-- Improved fight again NPC 9033 in Blackrock Depths 
-- Fixed respawn time of NPCs 8901 (Anvilrage Reservist) in front of General Angerforge in Blackrock Depths. Made them respawn on General Angerforge fight reset.
UPDATE creature SET spawntimesecs = 3 * 60 * 60 WHERE guid IN (45955, 45956, 45958, 45959);
DELETE FROM creature_linking WHERE `guid` IN (45955, 45956, 45958, 45959);
INSERT INTO creature_linking VALUES
(45955, 45954, 1031),
(45956, 45954, 1031),
(45958, 45954, 1031),
(45959, 45954, 1031);
-- Classic [1075]
-- UBRS - Damage & Friends
UPDATE creature_template SET MinLevel = 62, MaxLevel = 62, HealthMultiplier = 25, DamageMultiplier = 10, ArmorMultiplier = 1, MinMeleeDmg = 107.9, MaxMeleeDmg = 143.1, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 262, RangedAttackPower = 30, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10363;
UPDATE creature_template SET DamageMultiplier = 9.1, MinMeleeDmg = 101.8, MaxMeleeDmg = 137.9, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3791, MeleeAttackPower = 252, RangedAttackPower = 26, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10814;
UPDATE creature_template SET DamageMultiplier = 3.9, MinMeleeDmg = 68.4, MaxMeleeDmg = 92.3, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 2788, MeleeAttackPower = 228, RangedAttackPower = 23, MeleeBaseAttackTime = 1500, RangedBaseAttackTime = 1500, ResistanceHoly = 0 WHERE Entry = 10442;
UPDATE creature_template SET DamageMultiplier = 3.75, MinMeleeDmg = 101.8, MaxMeleeDmg = 137.9, MinRangedDmg = 0, MaxRangedDmg = 0 WHERE Entry = 10447;
UPDATE creature_template SET MinLevel = 62, MaxLevel = 62, HealthMultiplier = 25, DamageMultiplier = 10, ArmorMultiplier = 1, MinMeleeDmg = 107.9, MaxMeleeDmg = 143.1, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 262, RangedAttackPower = 30, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10430;
UPDATE creature_template SET DamageMultiplier = 6, ArmorMultiplier = 2, MinMeleeDmg = 103.9, MaxMeleeDmg = 140.3, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 258, RangedAttackPower = 28, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10319;
UPDATE creature_template SET DamageMultiplier = 6, MinMeleeDmg = 119.5, MaxMeleeDmg = 161.3, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 258, RangedAttackPower = 28, MeleeBaseAttackTime = 2300, RangedBaseAttackTime = 2300 WHERE Entry = 10317;
UPDATE creature_template SET DamageMultiplier = 7.5, ArmorMultiplier = 0.5, MinMeleeDmg = 103.9, MaxMeleeDmg = 161.3, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 258, RangedAttackPower = 28, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10318;
UPDATE creature_template SET DamageMultiplier = 6, MinMeleeDmg = 107.9, MaxMeleeDmg = 143.1, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 262, RangedAttackPower = 30, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10371;
UPDATE creature_template SET DamageMultiplier = 5, MinMeleeDmg = 99.8, MaxMeleeDmg = 135.0, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3489, MeleeAttackPower = 248, RangedAttackPower = 25, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 9096;
UPDATE creature_template SET DamageMultiplier = 3.9, MinMeleeDmg = 92.9, MaxMeleeDmg = 125.5, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 2832, MeleeAttackPower = 234, RangedAttackPower = 23, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10083;
UPDATE creature_template SET DamageMultiplier = 6, ArmorMultiplier = 1.5, MinMeleeDmg = 103.9, MaxMeleeDmg = 140.3, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 6095, MeleeAttackPower = 258, RangedAttackPower = 28, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10366;
UPDATE creature_template SET DamageMultiplier = 6, MinMeleeDmg = 103.9, MaxMeleeDmg = 140.3, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 4091, MeleeAttackPower = 258, RangedAttackPower = 28, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10372;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, DamageMultiplier = 2.5, MinMeleeDmg = 95.9, MaxMeleeDmg = 129.8, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3380, MeleeAttackPower = 238, RangedAttackPower = 24, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10161;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, DamageMultiplier = 3.9, MinMeleeDmg = 99.8, MaxMeleeDmg = 135.0, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3489, MeleeAttackPower = 248, RangedAttackPower = 25, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10258;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, DamageMultiplier = 3.5, MinMeleeDmg = 99.8, MaxMeleeDmg = 135.0, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3489, MeleeAttackPower = 248, RangedAttackPower = 25, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10683;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, SpeedWalk = 1, SpeedRun = 1.428571429, DamageMultiplier = 6, MinMeleeDmg = 103.9, MaxMeleeDmg = 137.9, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 252, RangedAttackPower = 26, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10264;
UPDATE creature_template SET MinLevel = 62, MaxLevel = 62, FactionAlliance = 40, FactionHorde = 40, CreatureTypeFlags = 8, HealthMultiplier = 10, DamageMultiplier = 6.5, ArmorMultiplier = 1, MinMeleeDmg = 129.5, MaxMeleeDmg = 171.8, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 4391, MeleeAttackPower = 262, RangedAttackPower = 30, MeleeBaseAttackTime = 2400, RangedBaseAttackTime = 2400 WHERE Entry = 10429;
UPDATE creature_template SET MinLevel = 62, MaxLevel = 62, FactionAlliance = 40, FactionHorde = 40, Scale = 0, SpeedWalk = 1, Rank = 3, HealthMultiplier = 10, DamageMultiplier = 6.5, ArmorMultiplier = 1, MinLevelHealth = 32370, MaxLevelHealth = 32370, MinMeleeDmg = 129.5, MaxMeleeDmg = 171.8, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 4391, MeleeAttackPower = 262, RangedAttackPower = 30, MeleeBaseAttackTime = 2400, RangedBaseAttackTime = 2400, MinLootGold = 6929, MaxLootGold = 34647, EquipmentTemplateId = 1082 WHERE Entry = 15776;
UPDATE creature_template SET FactionAlliance = 40, FactionHorde = 40, DamageMultiplier = 5, MinMeleeDmg = 107.9, MaxMeleeDmg = 143.1, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 262, RangedAttackPower = 30, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10339;
UPDATE creature_template SET MinLevel = 60, HealthMultiplier = 5, DamageMultiplier = 6, ArmorMultiplier = 1, MinMeleeDmg = 103.9, MaxMeleeDmg = 137.9, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 252, RangedAttackPower = 26, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10762;
UPDATE creature_template SET MinLevel = 59, DamageMultiplier = 4, MinMeleeDmg = 101.8, MaxMeleeDmg = 137.9, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 252, RangedAttackPower = 26, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 9819;
UPDATE creature_template SET MinLevel = 59, HealthMultiplier = 3, DamageMultiplier = 4, ArmorMultiplier = 1, MinLevelHealth = 8883, MaxLevelHealth = 9156, MinMeleeDmg = 101.8, MaxMeleeDmg = 137.9, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3791, MeleeAttackPower = 252, RangedAttackPower = 26, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10681;
UPDATE creature_template SET DamageMultiplier = 4, ArmorMultiplier = 1, MinMeleeDmg = 94.8, MaxMeleeDmg = 128.2, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 238, RangedAttackPower = 24, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 9818;
UPDATE creature_template SET HealthMultiplier = 3, DamageMultiplier = 4, ArmorMultiplier = 1, MaxLevelHealth = 7326, MinMeleeDmg = 94.8, MaxMeleeDmg = 128.2, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3075, MeleeAttackPower = 238, RangedAttackPower = 24, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10680;
UPDATE creature_template SET DamageMultiplier = 4, DamageVariance = 1, MinMeleeDmg = 94.8, MaxMeleeDmg = 128.2, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 238, RangedAttackPower = 24, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 9817;
UPDATE creature_template SET DamageMultiplier = 2, MinMeleeDmg = 101.8, MaxMeleeDmg = 137.9, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 252, RangedAttackPower = 26, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10316;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60, HealthMultiplier = 8, DamageMultiplier = 6, ArmorMultiplier = 1, MinMeleeDmg = 103.9, MaxMeleeDmg = 137.9, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 252, RangedAttackPower = 26, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 9816;
UPDATE creature_template SET MinLevel = 61, MaxLevel = 61, FactionAlliance = 40, FactionHorde = 40, Scale = 0, SpeedWalk = 1, HealthMultiplier = 4, DamageMultiplier = 6, ArmorMultiplier = 1, MinLevelHealth = 12576, MaxLevelHealth = 12576, MinMeleeDmg = 105.8, MaxMeleeDmg = 140.3, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 4091, MeleeAttackPower = 258, RangedAttackPower = 28, MinLootGold = 981, MaxLootGold = 1286, MechanicImmuneMask = 0, MovementType = 1, EquipmentTemplateId = 1138 WHERE Entry = 15796;
UPDATE creature_template SET DamageMultiplier = 6, MinMeleeDmg = 105.8, MaxMeleeDmg = 140.3, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 258, RangedAttackPower = 28, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MovementType = 1 WHERE Entry = 10899;
UPDATE creature_template SET HealthMultiplier = 3, DamageMultiplier = 4, ArmorMultiplier = 1, MinLevelHealth = 8883, MaxLevelHealth = 8883, MinMeleeDmg = 101.8, MaxMeleeDmg = 135.0, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3489, MeleeAttackPower = 248, RangedAttackPower = 25, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MovementType = 1 WHERE Entry = 10509;
UPDATE creature_template SET DamageMultiplier = 4, ArmorMultiplier = 3, MinMeleeDmg = 101.8, MaxMeleeDmg = 137.9, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 252, RangedAttackPower = 26, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10742;
UPDATE creature_template SET DamageMultiplier = 1.2, MinMeleeDmg = 103.9, MaxMeleeDmg = 137.9, MeleeAttackPower = 258, RangedAttackPower = 28 WHERE Entry = 16066;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60, MinLevelHealth = 3052, MaxLevelHealth = 3052, MinMeleeDmg = 103.9, MaxMeleeDmg = 137.9, Armor = 3791, MeleeAttackPower = 252, RangedAttackPower = 26, RangedBaseAttackTime = 2000 WHERE Entry = 16048;
UPDATE creature_template SET SpeedWalk = 1, HealthMultiplier = 45, ArmorMultiplier = 1, MinLevelHealth = 119925, MaxLevelHealth = 119925, MinMeleeDmg = 1329, MaxMeleeDmg = 1759, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3795, MeleeAttackPower = 252, RangedAttackPower = 27 WHERE Entry = 16073;
UPDATE creature_template SET MinMeleeDmg = 1329, MaxMeleeDmg = 1759, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3795, MeleeAttackPower = 252, RangedAttackPower = 27 WHERE Entry = 16042;

-- UDB_280
-- Classic [1147]
-- Master Elemental Shaper Krixix
DELETE FROM creature_template_spells WHERE entry = 14401;
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4) VALUES
(14401, 22968, 0, 0, 0); 
-- Classic [1146]
-- Kurmokk
DELETE FROM creature WHERE guid BETWEEN 134210 AND 134219;
DELETE FROM pool_creature_template WHERE id = 14491;
DELETE FROM pool_template WHERE entry = 1120;
UPDATE creature_template SET ModelId1 = 3188, FactionAlliance = 72, FactionHorde = 72, Scale = 0, UnitFlags = 64, DamageMultiplier = 1.25, MinMeleeDmg = 62.4, MaxMeleeDmg = 82.7, MeleeAttackPower = 152, RangedAttackPower = 15, MeleeBaseAttackTime = 2000, MovementType = 2 WHERE Entry = 14491;
UPDATE creature SET modelid = 0, position_x = -13769.472, position_y = -210.8100, position_z = 28.15880, orientation = 1.6824140, MovementType = 2 WHERE guid = 49126;
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
-- Classic [1144]
-- Sister Rathtalon
UPDATE creature_template SET SpeedWalk = 1.388888, Rank = 2, DamageMultiplier = 1.7, MinMeleeDmg = 25.8, MaxMeleeDmg = 34.4, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 60, RangedAttackPower = 3, MeleeBaseAttackTime = 2000, MovementType = 2  WHERE Entry = 5830;
UPDATE creature SET modelid = 0, position_x = 578.5403, position_y = -1335.659, position_z = 92.83743, spawndist = 0, MovementType = 2 WHERE id = 5830;
DELETE FROM creature_movement WHERE id = (SELECT guid FROM creature WHERE id = 5830);
DELETE FROM creature_movement_template WHERE entry = 5830;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(5830, 1, 591.0984, -1326.512, 92.29165, 0, 0, 100, 0, 0),
(5830, 2, 605.8834, -1321.843, 91.79165, 0, 0, 100, 0, 0),
(5830, 3, 624.9481, -1316.583, 91.79165, 0, 0, 100, 0, 0),
(5830, 4, 643.6866, -1307.641, 91.79163, 0, 0, 100, 0, 0),
(5830, 5, 668.6307, -1300.918, 91.79163, 0, 0, 100, 0, 0),
(5830, 6, 692.3193, -1303.288, 91.79163, 0, 0, 100, 0, 0),
(5830, 7, 718.7735, -1311.100, 91.85694, 0, 0, 100, 0, 0),
(5830, 8, 742.3602, -1321.819, 92.64588, 0, 0, 100, 0, 0),
(5830, 9, 754.9189, -1329.235, 91.79163, 0, 0, 100, 0, 0),
(5830, 10, 761.7515, -1348.345, 91.72881, 0, 0, 100, 0, 0),
(5830, 11, 758.3610, -1361.865, 91.72881, 0, 0, 100, 0, 0),
(5830, 12, 746.0123, -1375.537, 91.79163, 0, 0, 100, 0, 0),
(5830, 13, 722.1871, -1385.720, 91.79163, 0, 0, 100, 0, 0),
(5830, 14, 699.2408, -1382.385, 91.79163, 0, 0, 100, 0, 0),
(5830, 15, 686.0149, -1369.511, 91.79163, 0, 0, 100, 0, 0),
(5830, 16, 675.7952, -1361.891, 91.79163, 0, 0, 100, 0, 0),
(5830, 17, 665.3279, -1355.352, 91.79163, 0, 0, 100, 0, 0),
(5830, 18, 652.1882, -1344.566, 91.79163, 0, 0, 100, 0, 0),
(5830, 19, 636.4287, -1334.760, 91.79163, 0, 0, 100, 0, 0),
(5830, 20, 628.5359, -1323.144, 91.79165, 0, 0, 100, 0, 0),
(5830, 21, 623.6190, -1314.026, 91.79165, 0, 0, 100, 0, 0),
(5830, 22, 615.4075, -1298.601, 91.79166, 0, 0, 100, 0, 0),
(5830, 23, 604.1143, -1284.030, 91.79166, 0, 0, 100, 0, 0),
(5830, 24, 587.8508, -1269.006, 92.06193, 0, 0, 100, 0, 0),
(5830, 25, 576.0312, -1259.969, 91.79163, 0, 0, 100, 0, 0),
(5830, 26, 560.8948, -1256.678, 92.04676, 0, 0, 100, 0, 0),
(5830, 27, 545.4825, -1255.181, 91.87135, 0, 0, 100, 0, 0),
(5830, 28, 534.8517, -1253.385, 91.79163, 0, 0, 100, 0, 0),
(5830, 29, 526.5915, -1260.618, 91.79163, 0, 0, 100, 0, 0),
(5830, 30, 510.4008, -1285.216, 91.79163, 0, 0, 100, 0, 0),
(5830, 31, 510.3910, -1306.537, 91.79163, 0, 0, 100, 0, 0),
(5830, 32, 515.1241, -1321.950, 91.79163, 0, 0, 100, 0, 0),
(5830, 33, 521.8954, -1336.838, 91.79166, 0, 0, 100, 0, 0),
(5830, 34, 529.7821, -1343.760, 91.79166, 0, 0, 100, 0, 0),
(5830, 35, 556.7917, -1356.994, 91.79166, 0, 0, 100, 0, 0),
(5830, 36, 567.0636, -1368.908, 91.79165, 0, 0, 100, 0, 0),
(5830, 37, 574.6062, -1382.896, 91.79165, 0, 0, 100, 0, 0),
(5830, 38, 578.4109, -1399.870, 93.36684, 0, 0, 100, 0, 0),
(5830, 39, 584.3145, -1420.103, 91.79166, 0, 0, 100, 0, 0),
(5830, 40, 588.7415, -1440.735, 91.79166, 0, 0, 100, 0, 0),
(5830, 41, 577.5681, -1461.407, 92.66666, 0, 0, 100, 0, 0),
(5830, 42, 567.4086, -1473.391, 92.44877, 0, 0, 100, 0, 0),
(5830, 43, 555.5693, -1487.626, 91.79166, 0, 0, 100, 0, 0),
(5830, 44, 538.3452, -1499.215, 93.13493, 0, 0, 100, 0, 0),
(5830, 45, 517.2163, -1501.068, 94.51033, 0, 0, 100, 0, 0),
(5830, 46, 492.0973, -1496.377, 94.32227, 0, 0, 100, 0, 0),
(5830, 47, 474.5859, -1480.677, 93.07898, 0, 0, 100, 0, 0),
(5830, 48, 464.5303, -1462.176, 91.79166, 0, 0, 100, 0, 0),
(5830, 49, 460.6976, -1444.193, 91.79166, 0, 0, 100, 0, 0),
(5830, 50, 466.9402, -1424.123, 91.79166, 0, 0, 100, 0, 0),
(5830, 51, 470.6940, -1413.053, 91.79166, 0, 0, 100, 0, 0),
(5830, 52, 482.4163, -1399.121, 91.79166, 0, 0, 100, 0, 0),
(5830, 53, 502.0721, -1380.881, 91.79166, 0, 0, 100, 0, 0),
(5830, 54, 527.9912, -1362.113, 91.79166, 0, 0, 100, 0, 0),
(5830, 55, 542.1295, -1349.177, 91.79166, 0, 0, 100, 0, 0),
(5830, 56, 562.3475, -1341.453, 91.87980, 0, 0, 100, 0, 0),
(5830, 57, 578.5403, -1335.659, 92.83743, 0, 0, 100, 0, 0); 
-- Classic [1143]
-- Emogg the Crusher
UPDATE creature_template SET UnitFlags = 64, SpeedWalk = 1, Rank = 2, DamageMultiplier = 1.7, MinMeleeDmg = 27.6, MaxMeleeDmg = 36.5, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 68, RangedAttackPower = 3, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MovementType = 2 WHERE Entry = 14267;
UPDATE creature SET modelid = 0, position_x = -4983.443, position_y = -4009.711, position_z = 299.5536, spawndist = 0, MovementType = 2 WHERE id = 14267;
DELETE FROM creature_movement WHERE id = (SELECT guid FROM creature WHERE id = 14267);
DELETE FROM creature_movement_template WHERE entry = 14267;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(14267, 1, -4939.537, -3988.177, 297.6642, 0, 0, 100, 0, 0),
(14267, 2, -4934.412, -3956.615, 299.3215, 0, 0, 100, 0, 0),
(14267, 3, -4930.901, -3929.371, 300.8730, 0, 0, 100, 0, 0),
(14267, 4, -4947.590, -3919.897, 304.7906, 0, 0, 100, 0, 0),
(14267, 5, -4964.144, -3915.315, 304.2408, 0, 0, 100, 0, 0),
(14267, 6, -4979.532, -3920.973, 306.6892, 0, 0, 100, 0, 0),
(14267, 7, -4992.262, -3902.353, 304.6826, 0, 0, 100, 0, 0),
(14267, 8, -4966.503, -3892.559, 308.4520, 0, 0, 100, 0, 0),
(14267, 9, -4938.917, -3897.534, 306.8287, 0, 0, 100, 0, 0),
(14267, 10, -4922.351, -3899.447, 304.1685, 0, 0, 100, 0, 0),
(14267, 11, -4902.495, -3875.902, 301.9054, 0, 0, 100, 0, 0),
(14267, 12, -4901.661, -3855.753, 303.3250, 0, 0, 100, 0, 0),
(14267, 13, -4894.049, -3836.621, 303.6957, 0, 0, 100, 0, 0),
(14267, 14, -4882.614, -3858.981, 303.0668, 0, 0, 100, 0, 0),
(14267, 15, -4882.659, -3888.173, 303.5529, 0, 0, 100, 0, 0),
(14267, 16, -4876.704, -3915.521, 303.2025, 0, 0, 100, 0, 0),
(14267, 17, -4866.463, -3938.079, 303.7190, 0, 0, 100, 0, 0),
(14267, 18, -4866.313, -3951.324, 303.3816, 0, 0, 100, 0, 0),
(14267, 19, -4870.636, -3979.350, 299.5655, 0, 0, 100, 0, 0),
(14267, 20, -4885.615, -3994.896, 298.7455, 0, 0, 100, 0, 0),
(14267, 21, -4907.389, -3993.521, 297.6739, 0, 0, 100, 0, 0),
(14267, 22, -4933.758, -3980.665, 298.4330, 0, 0, 100, 0, 0),
(14267, 23, -4953.597, -4002.146, 299.0535, 0, 0, 100, 0, 0),
(14267, 24, -4983.443, -4009.711, 299.5536, 0, 0, 100, 0, 0);
-- Classic [1142]
-- Added missing spawn of NPC 5981 (Portal Seeker) in Blasted Lands - UDB free guids reused
DELETE FROM creature WHERE guid = 31839;
INSERT INTO creature (guid,id,map,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,curhealth,curmana,MovementType) VALUES
(31839, 5981, 0, -11351.9, -2754.5, 7.95043, 2.103, 430, 7, 2200, 4506, 2);
UPDATE creature_template SET MovementType = 2 WHERE Entry = 5981;
DELETE FROM creature_movement_template WHERE entry = 5981;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(5981, 1, -11351.9, -2754.5, 7.95043, 0, 0, 100, 0, 0),
(5981, 13, -11370.7, -2855.8, 4.71995, 0, 0, 100, 0, 0),
(5981, 12, -11396.9, -2926.05, 3.04129, 0, 0, 100, 0, 0),
(5981, 11, -11331, -2986.1, 3.21401, 0, 0, 100, 0, 0),
(5981, 10, -11380.8, -3012.74, -4.27558, 0, 0, 100, 0, 0),
(5981, 9, -11444.1, -3037.88, 1.11443, 0, 0, 100, 0, 0),
(5981, 8, -11500.1, -3041.02, -0.783425, 0, 0, 100, 0, 0),
(5981, 7, -11444, -3037.98, 1.11936, 0, 0, 100, 0, 0),
(5981, 6, -11380.8, -3013.05, -4.29948, 0, 0, 100, 0, 0),
(5981, 5, -11330.8, -2986.01, 3.24732, 0, 0, 100, 0, 0),
(5981, 4, -11396.7, -2926.03, 3.05246, 0, 0, 100, 0, 0),
(5981, 3, -11370.9, -2855.73, 4.67282, 0, 0, 100, 0, 0),
(5981, 2, -11358.7, -2797.01, 5.45784, 0, 0, 100, 0, 0),
(5981, 14, -11358.6, -2796.98, 5.47431, 0, 0, 100, 0, 0);
-- Classic [1140]
-- Azurous, Hematos, Volchan
-- Azurous
UPDATE creature_template SET FactionAlliance = 103, FactionHorde = 103, UnitFlags = 64, SpeedWalk = 1, Rank = 2, PowerMultiplier = 3, DamageMultiplier = 3.9, MinMeleeDmg = 101.8, MaxMeleeDmg = 135.0, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 248, RangedAttackPower = 25, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MovementType = 2 WHERE Entry = 10202;
UPDATE creature SET modelid = 0, position_x = 5986.524, position_y = -5055.288, position_z = 795.3389, orientation = 0.4098937,  MovementType = 2 WHERE guid = 51890;
DELETE FROM creature_movement_template WHERE entry = 10202;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(10202, 1, 6019.497, -5040.973, 784.7110, 0, 0, 100, 0, 0),
(10202, 2, 6064.572, -5021.378, 783.7690, 0, 0, 100, 0, 0),
(10202, 3, 6110.539, -5029.359, 791.5023, 0, 0, 100, 0, 0),
(10202, 4, 6143.759, -5048.502, 788.6542, 0, 0, 100, 0, 0),
(10202, 5, 6182.437, -5064.908, 783.3755, 0, 0, 100, 0, 0),
(10202, 6, 6224.185, -5048.121, 777.5784, 0, 0, 100, 0, 0),
(10202, 7, 6255.662, -5044.650, 774.0142, 0, 0, 100, 0, 0),
(10202, 8, 6295.048, -5045.930, 768.9189, 0, 0, 100, 0, 0),
(10202, 9, 6333.048, -5046.227, 760.8947, 0, 0, 100, 0, 0),
(10202, 10, 6378.587, -5045.983, 751.7699, 0, 0, 100, 0, 0),
(10202, 11, 6408.906, -5042.450, 747.1038, 0, 0, 100, 0, 0),
(10202, 12, 6438.631, -5018.775, 739.4670, 0, 0, 100, 0, 0),
(10202, 13, 6466.921, -4989.887, 733.5924, 0, 0, 100, 0, 0),
(10202, 14, 6484.619, -4964.162, 728.3881, 0, 0, 100, 0, 0),
(10202, 15, 6500.905, -4934.625, 725.9751, 0, 0, 100, 0, 0),
(10202, 16, 6510.156, -4904.851, 721.8889, 0, 0, 100, 0, 0),
(10202, 17, 6535.346, -4877.962, 709.6600, 0, 0, 100, 0, 0),
(10202, 18, 6559.993, -4860.916, 701.8981, 0, 0, 100, 0, 0),
(10202, 19, 6560.690, -4846.943, 702.0397, 0, 0, 100, 0, 0),
(10202, 20, 6551.316, -4819.473, 703.5016, 0, 0, 100, 0, 0),
(10202, 21, 6550.175, -4785.075, 698.3546, 0, 0, 100, 0, 0),
(10202, 22, 6574.485, -4751.122, 696.6307, 0, 0, 100, 0, 0),
(10202, 23, 6583.190, -4721.823, 699.9848, 0, 0, 100, 0, 0),
(10202, 24, 6580.944, -4680.032, 700.6795, 0, 0, 100, 0, 0),
(10202, 25, 6568.839, -4646.381, 694.2059, 0, 0, 100, 0, 0),
(10202, 26, 6559.538, -4618.036, 699.1639, 0, 0, 100, 0, 0),
(10202, 27, 6552.842, -4585.877, 703.9992, 0, 0, 100, 0, 0),
(10202, 28, 6525.884, -4563.002, 713.3481, 0, 0, 100, 0, 0),
(10202, 29, 6495.584, -4547.865, 716.1367, 0, 0, 100, 0, 0),
(10202, 30, 6458.242, -4526.247, 723.9024, 0, 0, 100, 0, 0),
(10202, 31, 6450.272, -4486.055, 733.4114, 0, 0, 100, 0, 0),
(10202, 32, 6460.925, -4454.014, 729.6072, 0, 0, 100, 0, 0),
(10202, 33, 6449.634, -4421.929, 723.3950, 0, 0, 100, 0, 0),
(10202, 34, 6424.509, -4403.555, 722.5399, 0, 0, 100, 0, 0),
(10202, 35, 6389.606, -4387.151, 731.3281, 0, 0, 100, 0, 0),
(10202, 36, 6364.207, -4363.729, 738.5326, 0, 0, 100, 0, 0),
(10202, 37, 6362.864, -4328.876, 726.9081, 0, 0, 100, 0, 0),
(10202, 38, 6356.477, -4298.460, 720.3398, 0, 0, 100, 0, 0),
(10202, 39, 6338.967, -4285.139, 725.5330, 0, 0, 100, 0, 0),
(10202, 40, 6317.179, -4280.970, 733.0714, 0, 0, 100, 0, 0),
(10202, 41, 6280.007, -4269.131, 735.8939, 0, 0, 100, 0, 0),
(10202, 42, 6258.955, -4251.505, 735.4764, 0, 0, 100, 0, 0),
(10202, 43, 6260.608, -4236.567, 734.0861, 0, 0, 100, 0, 0),
(10202, 44, 6286.389, -4221.496, 724.3796, 0, 0, 100, 0, 0),
(10202, 45, 6327.709, -4218.922, 721.2304, 0, 0, 100, 0, 0),
(10202, 46, 6365.357, -4205.964, 711.0905, 0, 0, 100, 0, 0),
(10202, 47, 6380.780, -4186.573, 705.8233, 0, 0, 100, 0, 0),
(10202, 48, 6365.357, -4205.964, 711.0905, 0, 0, 100, 0, 0),
(10202, 49, 6327.709, -4218.922, 721.2304, 0, 0, 100, 0, 0),
(10202, 50, 6286.389, -4221.496, 724.3796, 0, 0, 100, 0, 0),
(10202, 51, 6260.608, -4236.567, 734.0861, 0, 0, 100, 0, 0),
(10202, 52, 6258.955, -4251.505, 735.4764, 0, 0, 100, 0, 0),
(10202, 53, 6280.007, -4269.131, 735.8939, 0, 0, 100, 0, 0),
(10202, 54, 6317.179, -4280.970, 733.0714, 0, 0, 100, 0, 0),
(10202, 55, 6338.889, -4285.093, 725.6608, 0, 0, 100, 0, 0),
(10202, 56, 6356.398, -4298.412, 720.1580, 0, 0, 100, 0, 0),
(10202, 57, 6362.864, -4328.876, 726.9081, 0, 0, 100, 0, 0),
(10202, 58, 6364.207, -4363.729, 738.5326, 0, 0, 100, 0, 0),
(10202, 59, 6389.606, -4387.151, 731.3281, 0, 0, 100, 0, 0),
(10202, 60, 6424.509, -4403.555, 722.5399, 0, 0, 100, 0, 0),
(10202, 61, 6449.634, -4421.929, 723.3950, 0, 0, 100, 0, 0),
(10202, 62, 6460.925, -4454.014, 729.6072, 0, 0, 100, 0, 0),
(10202, 63, 6450.272, -4486.055, 733.4114, 0, 0, 100, 0, 0),
(10202, 64, 6458.242, -4526.247, 723.9024, 0, 0, 100, 0, 0),
(10202, 65, 6495.584, -4547.865, 716.1367, 0, 0, 100, 0, 0),
(10202, 66, 6525.884, -4563.002, 713.3481, 0, 0, 100, 0, 0),
(10202, 67, 6552.842, -4585.877, 703.9992, 0, 0, 100, 0, 0),
(10202, 68, 6559.538, -4618.036, 699.1639, 0, 0, 100, 0, 0),
(10202, 69, 6568.839, -4646.381, 694.2059, 0, 0, 100, 0, 0),
(10202, 70, 6580.944, -4680.032, 700.6795, 0, 0, 100, 0, 0),
(10202, 71, 6583.190, -4721.823, 699.9848, 0, 0, 100, 0, 0),
(10202, 72, 6574.485, -4751.122, 696.6307, 0, 0, 100, 0, 0),
(10202, 73, 6550.175, -4785.075, 698.3546, 0, 0, 100, 0, 0),
(10202, 74, 6551.271, -4819.074, 703.5016, 0, 0, 100, 0, 0),
(10202, 75, 6560.692, -4846.882, 702.2216, 0, 0, 100, 0, 0),
(10202, 76, 6559.995, -4860.855, 701.9147, 0, 0, 100, 0, 0),
(10202, 77, 6535.346, -4877.962, 709.6600, 0, 0, 100, 0, 0),
(10202, 78, 6510.156, -4904.851, 721.8889, 0, 0, 100, 0, 0),
(10202, 79, 6500.905, -4934.625, 725.9751, 0, 0, 100, 0, 0),
(10202, 80, 6484.619, -4964.162, 728.3881, 0, 0, 100, 0, 0),
(10202, 81, 6466.921, -4989.887, 733.5924, 0, 0, 100, 0, 0),
(10202, 82, 6438.633, -5018.775, 739.5107, 0, 0, 100, 0, 0),
(10202, 83, 6408.906, -5042.450, 747.1038, 0, 0, 100, 0, 0),
(10202, 84, 6378.587, -5045.983, 751.7699, 0, 0, 100, 0, 0),
(10202, 85, 6333.245, -5046.217, 760.8995, 0, 0, 100, 0, 0),
(10202, 86, 6295.048, -5045.930, 768.9189, 0, 0, 100, 0, 0),
(10202, 87, 6255.662, -5044.650, 774.0142, 0, 0, 100, 0, 0),
(10202, 88, 6224.249, -5048.050, 777.6802, 0, 0, 100, 0, 0),
(10202, 89, 6182.588, -5064.937, 783.4294, 0, 0, 100, 0, 0),
(10202, 90, 6143.759, -5048.502, 788.6542, 0, 0, 100, 0, 0),
(10202, 91, 6110.539, -5029.359, 791.5023, 0, 0, 100, 0, 0),
(10202, 92, 6064.572, -5021.378, 783.7690, 0, 0, 100, 0, 0),
(10202, 93, 6019.497, -5040.973, 784.7110, 0, 0, 100, 0, 0),
(10202, 94, 5977.622, -5059.156, 798.2071, 0, 0, 100, 0, 0);
-- Hematos
UPDATE creature_template SET UnitFlags = 64, Rank = 2, PowerMultiplier = 2, DamageMultiplier = 5, MinMeleeDmg = 103.9, MaxMeleeDmg = 137.9, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3791, MeleeAttackPower = 252, RangedAttackPower = 26, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 8976;
--  Volchan
UPDATE creature_template SET SpeedWalk = 1, SpeedRun = 1.4285714129, Rank = 2, HealthMultiplier = 5, PowerMultiplier = 2, DamageMultiplier = 5, MinMeleeDmg = 96.8, MaxMeleeDmg = 128.2, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 238, RangedAttackPower = 24, MeleeBaseAttackTime = 2000 WHERE Entry = 10119;
-- Classic [1139]
-- Remade the Manufactory in Blackrock Depths 
DELETE FROM creature WHERE guid IN (90809, 90586, 90587, 80587, 47293, 47259, 90589, 47260, 47257, 90590, 90894, 90808, 90816, 90813, 90594, 47295, 47292, 90892, 90810, 90591, 47294, 90812, 90595, 90588, 90895, 90593, 47255, 47258, 90814, 90815, 47256, 90817, 90811, 90592);
DELETE FROM creature_addon WHERE guid IN (90809, 90586, 90587, 80587, 47293, 47259, 90589, 47260, 47257, 90590, 90894, 90808, 90816, 90813, 90594, 47295, 47292, 90892, 90810, 90591, 47294, 90812, 90595, 90588, 90895, 90593, 47255, 47258, 90814, 90815, 47256, 90817, 90811, 90592);
DELETE FROM creature_movement WHERE id IN (90809, 90586, 90587, 80587, 47293, 47259, 90589, 47260, 47257, 90590, 90894, 90808, 90816, 90813, 90594, 47295, 47292, 90892, 90810, 90591, 47294, 90812, 90595, 90588, 90895, 90593, 47255, 47258, 90814, 90815, 47256, 90817, 90811, 90592);
DELETE FROM dbscripts_on_creature_movement WHERE id = 892001;
-- Static Doomforge Arcanasmith / Weapon Technician
INSERT INTO creature (guid,id,map, spawnMask, phaseMask, position_x,position_y,position_z,orientation,spawntimesecs,spawndist,curhealth,curmana,MovementType) VALUES
(90809, 8900, 230, 1, 1, 759.862, 58.2598, -53.6085, 3.9619, 7200, 0, 9298, 4896, 0),
(90586, 8920, 230, 1, 1, 759.862, 58.2598, -53.6085, 3.9619, 7200, 0, 9298, 4896, 0),
(90587, 8900, 230, 1, 1, 756.804, 55.0023, -53.5866, 0.715585, 7200, 0, 9298, 4896, 0),
(47293, 8920, 230, 1, 1, 756.804, 55.0023, -53.5866, 0.715585, 7200, 0, 9298, 4896, 0),
(47259, 8900, 230, 1, 1, 756.6, 52.5513, -53.5831, 3.90954, 7200, 0, 9298, 4896, 0),
(90589, 8920, 230, 1, 1, 756.6, 52.5513, -53.5831, 3.90954, 7200, 0, 9298, 4896, 0),
(47260, 8900, 230, 1, 1, 760.166, 55.6209, -53.6182, 3.24631, 7200, 0, 9298, 4896, 0),
(47257, 8920, 230, 1, 1, 760.166, 55.6209, -53.6182, 3.24631, 7200, 0, 9298, 4896, 0),
(90590, 8900, 230, 1, 1, 809.952, 49.7623, -53.559, 1.22173, 7200, 0, 9298, 4896, 0),
(90894, 8920, 230, 1, 1, 809.952, 49.7623, -53.559, 1.22173, 7200, 0, 9298, 4896, 0),
(90808, 8900, 230, 1, 1, 804.537, 50.8482, -53.5804, 0.139626, 7200, 0, 9298, 4896, 0),
(90816, 8920, 230, 1, 1, 804.537, 50.8482, -53.5804, 0.139626, 7200, 0, 9298, 4896, 0),
(90813, 8900, 230, 1, 1, 786.798, -42.1107, -53.6505, 0.366519, 7200, 0, 9298, 4896, 0),
(90594, 8920, 230, 1, 1, 786.798, -42.1107, -53.6505, 0.366519, 7200, 0, 9298, 4896, 0),
(47295, 8900, 230, 1, 1, 793.538, -34.395, -53.631, 5.28835, 7200, 0, 9298, 4896, 0),
(47292, 8920, 230, 1, 1, 793.538, -34.395, -53.631, 5.28835, 7200, 0, 9298, 4896, 0);
DELETE FROM pool_creature WHERE guid IN (90809, 90586, 90587, 47293, 47259, 90589, 47260, 47257, 90590, 90894, 90808, 90816, 90813, 90594, 47295, 47292);
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES 
(90809, 25495, 0, 'BRD - Doomforge Arcanasmith/Weapon Technician'),
(90586, 25495, 0, 'BRD - Doomforge Arcanasmith/Weapon Technician'),
(90587, 25496, 0, 'BRD - Doomforge Arcanasmith/Weapon Technician'),
(47293, 25496, 0, 'BRD - Doomforge Arcanasmith/Weapon Technician'),
(47259, 25497, 0, 'BRD - Doomforge Arcanasmith/Weapon Technician'),
(90589, 25497, 0, 'BRD - Doomforge Arcanasmith/Weapon Technician'),
(47260, 25498, 0, 'BRD - Doomforge Arcanasmith/Weapon Technician'),
(47257, 25498, 0, 'BRD - Doomforge Arcanasmith/Weapon Technician'),
(90590, 25499, 0, 'BRD - Doomforge Arcanasmith/Weapon Technician'),
(90894, 25499, 0, 'BRD - Doomforge Arcanasmith/Weapon Technician'),
(90808, 25500, 0, 'BRD - Doomforge Arcanasmith/Weapon Technician'),
(90816, 25500, 0, 'BRD - Doomforge Arcanasmith/Weapon Technician'),
(90813, 25501, 0, 'BRD - Doomforge Arcanasmith/Weapon Technician'),
(90594, 25501, 0, 'BRD - Doomforge Arcanasmith/Weapon Technician'),
(47295, 25502, 0, 'BRD - Doomforge Arcanasmith/Weapon Technician'),
(47292, 25502, 0, 'BRD - Doomforge Arcanasmith/Weapon Technician');
DELETE FROM pool_template WHERE entry BETWEEN 25495 AND 25502;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(25495, 1, 'BRD - Doomforge Arcanasmith/Weapon Technician'),
(25496, 1, 'BRD - Doomforge Arcanasmith/Weapon Technician'),
(25497, 1, 'BRD - Doomforge Arcanasmith/Weapon Technician'),
(25498, 1, 'BRD - Doomforge Arcanasmith/Weapon Technician'),
(25499, 1, 'BRD - Doomforge Arcanasmith/Weapon Technician'),
(25500, 1, 'BRD - Doomforge Arcanasmith/Weapon Technician'),
(25501, 1, 'BRD - Doomforge Arcanasmith/Weapon Technician'),
(25502, 1, 'BRD - Doomforge Arcanasmith/Weapon Technician');
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, curhealth, curmana, spawndist, MovementType) VALUES
(90892, 8900, 230, 1, 1, 759.628, 61.429, -53.5742, 3.21141, 7200, 9298, 4896, 0, 0),
(90810, 8920, 230, 1, 1, 755.346, 51.0896, -53.57, 1.0472, 7200, 9298, 4896, 0, 0),
(90591, 8920, 230, 1, 1, 755.999, 61.6141, -53.5721, 6.21337, 7200, 9298, 4896, 0, 0),
(47294, 8920, 230, 1, 1, 757.366, 59.5952, -53.5933, 0.837758, 7200, 9298, 4896, 0, 0),
(90812, 8920, 230, 1, 1, 778.728, 42.3766, -53.6518, 2.19911, 7200, 9298, 4896, 0, 0),
(90595, 8920, 230, 1, 1, 776.288, 43.6711, -53.6518, 0.418879, 7200, 9298, 4896, 0, 0),
(90593, 8920, 230, 1, 1, 781.008, 46.79, -53.6518, 3.52557, 7200, 9298, 4896, 0, 0),
(47255, 8920, 230, 1, 1, 778.715, 47.5265, -53.6518, 4.7822, 7200, 9298, 4896, 0, 0),
(47258, 8920, 230, 1, 1, 791.143, -40.9252, -53.6506, 3.85718, 7200, 9298, 4896, 0, 0),
(90814, 8920, 230, 1, 1, 787.464, -40.3752, -53.6493, 5.23599, 7200, 9298, 4896, 0, 0),
(90815, 8920, 230, 1, 1, 806.096, 54.2448, -53.5767, 5.48033, 7200, 9298, 4896, 0, 0),
(47256, 8920, 230, 1, 1, 794.78, -35.9308, -53.6368, 2.04204, 7200, 9298, 4896, 0, 0);
-- Static Wrath Hammer Construct and Ragereaver Golem
DELETE FROM creature WHERE guid IN ( 90817, 90811, 90592, 51692, 51697, 52635);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, curhealth, curmana, spawndist, MovementType) VALUES
(90817, 8906, 230, 1, 1, 779.212, 44.9612, -53.6518, 3.19395, 7200, 9298, 4896, 0, 0),
(90811, 8907, 230, 1, 1, 779.212, 44.9612, -53.6518, 3.19395, 7200, 9298, 4896, 0, 0),
(90592, 8906, 230, 1, 1, 807.141, 52.1214, -53.5713, 3.1765, 7200, 9298, 4896, 0, 0),
(51692, 8907, 230, 1, 1, 807.141, 52.1214, -53.5713, 3.1765, 7200, 9298, 4896, 0, 0),
(51697, 8906, 230, 1, 1, 789.356, -42.4263, -53.6514, 1.95477, 7200, 9298, 4896, 0, 0),
(52635, 8907, 230, 1, 1, 789.356, -42.4263, -53.6514, 1.95477, 7200, 9298, 4896, 0, 0);
DELETE FROM pool_creature WHERE guid IN (90817, 90811, 90592, 51692, 51697, 52635);
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES 
(90817, 25503, 0, 'BRD - Ragereaver Golem/Wrath Hammer Construct'),
(90811, 25503, 0, 'BRD - Ragereaver Golem/Wrath Hammer Construct'),
(90592, 25504, 0, 'BRD - Ragereaver Golem/Wrath Hammer Construct'),
(51692, 25504, 0, 'BRD - Ragereaver Golem/Wrath Hammer Construct'),
(51697, 25505, 0, 'BRD - Ragereaver Golem/Wrath Hammer Construct'),
(52635, 25505, 0, 'BRD - Ragereaver Golem/Wrath Hammer Construct');
DELETE FROM pool_template WHERE entry BETWEEN 25503 AND 25505;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25503, 1, 'BRD - Ragereaver Golem/Wrath Hammer Construct'),
(25504, 1, 'BRD - Ragereaver Golem/Wrath Hammer Construct'),
(25505, 1, 'BRD - Ragereaver Golem/Wrath Hammer Construct');
DELETE FROM creature WHERE guid IN (52664, 52665, 52666, 52667, 52668, 67149, 68738, 68739);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, curhealth, curmana, spawndist, MovementType) VALUES
(52664, 8906, 230, 1, 1, 794.549, 2.11547, -53.6519, 3.28122, 7200, 9298, 4896, 0, 0),
(52665, 8907, 230, 1, 1, 794.549, 2.11547, -53.6519, 3.28122, 7200, 9298, 4896, 0, 0),
(52666, 8906, 230, 1, 1, 793.348, -9.29995, -53.6518, 3.07178, 7200, 9298, 4896, 0, 0),
(52667, 8907, 230, 1, 1, 793.348, -9.29995, -53.6518, 3.07178, 7200, 9298, 4896, 0, 0),
(52668, 8906, 230, 1, 1, 780.244, -9.44037, -53.6513, 1.72788, 7200, 9298, 4896, 0, 0),
(67149, 8907, 230, 1, 1, 780.244, -9.44037, -53.6513, 1.72788, 7200, 9298, 4896, 0, 0),
(68738, 8906, 230, 1, 1, 779.154, 1.81084, -53.6518, 0.0174533, 7200, 9298, 4896, 0, 0),
(68739, 8907, 230, 1, 1, 779.154, 1.81084, -53.6518, 0.0174533, 7200, 9298, 4896, 0, 0);
DELETE FROM pool_creature WHERE guid IN (52664, 52665, 52666, 52667, 52668, 67149, 68738, 68739);
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES 
(52664, 25506, 0, 'BRD - Ragereaver Golem/Wrath Hammer Construct'),
(52665, 25506, 0, 'BRD - Ragereaver Golem/Wrath Hammer Construct'),
(52666, 25507, 0, 'BRD - Ragereaver Golem/Wrath Hammer Construct'),
(52667, 25507, 0, 'BRD - Ragereaver Golem/Wrath Hammer Construct'),
(52668, 25508, 0, 'BRD - Ragereaver Golem/Wrath Hammer Construct'),
(67149, 25508, 0, 'BRD - Ragereaver Golem/Wrath Hammer Construct'),
(68738, 25509, 0, 'BRD - Ragereaver Golem/Wrath Hammer Construct'),
(68739, 25509, 0, 'BRD - Ragereaver Golem/Wrath Hammer Construct');
DELETE FROM pool_pool WHERE pool_id BETWEEN 25506 AND 25509;
INSERT INTO pool_pool (pool_id, mother_pool, chance, description) VALUES
(25506, 25510, 0, 'BRD - Ragereaver Golem/Wrath Hammer Construct'),
(25507, 25510, 0, 'BRD - Ragereaver Golem/Wrath Hammer Construct'),
(25508, 25511, 0, 'BRD - Ragereaver Golem/Wrath Hammer Construct'),
(25509, 25511, 0, 'BRD - Ragereaver Golem/Wrath Hammer Construct');
DELETE FROM pool_template WHERE entry BETWEEN 25506 AND 25511;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25506, 1, 'BRD - Ragereaver Golem/Wrath Hammer Construct'),
(25507, 1, 'BRD - Ragereaver Golem/Wrath Hammer Construct'),
(25508, 1, 'BRD - Ragereaver Golem/Wrath Hammer Construct'),
(25509, 1, 'BRD - Ragereaver Golem/Wrath Hammer Construct'),
(25510, 1, 'BRD - Master Ragereaver Golem/Wrath Hammer Construct'),
(25511, 1, 'BRD - Master Ragereaver Golem/Wrath Hammer Construct');
-- Patrols
DELETE FROM creature WHERE guid IN (68880, 68881, 68882, 68883, 68884, 68885, 68886, 68887, 68888, 68889);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, curhealth, curmana, spawndist, MovementType) VALUES
(68880, 8900, 230, 1, 1, 803.859, 12.9567, -53.6615, 3.9619, 7200, 9298, 4896, 0, 2),
(68881, 8920, 230, 1, 1, 803.859, 12.9567, -53.6615, 3.9619, 7200, 9298, 4896, 0, 2),
(68882, 8920, 230, 1, 1, 762.349, 41.594, -53.7146, 3.9619, 7200, 9298, 4896, 0, 2),
(68883, 8900, 230, 1, 1, 782.138, -45.6668, -53.7721, 3.9619, 7200, 9298, 4896, 0, 2),
(68884, 8920, 230, 1, 1, 782.138, -45.6668, -53.7721, 3.9619, 7200, 9298, 4896, 0, 2),
(68885, 8900, 230, 1, 1, 792.438, 45.7173, -53.7176, 3.9619, 7200, 9298, 4896, 0, 2),
(68886, 8920, 230, 1, 1, 792.438, 45.7173, -53.7176, 3.9619, 7200, 9298, 4896, 0, 2),
(68887, 8920, 230, 1, 1, 773.925, 3.11658, -53.7172, 3.9619, 7200, 9298, 4896, 0, 2),
(68888, 8900, 230, 1, 1, 811.87, -25.2166, -53.6904, 3.9619, 7200, 9298, 4896, 0, 2),
(68889, 8920, 230, 1, 1, 811.87, -25.2166, -53.6904, 3.9619, 7200, 9298, 4896, 0, 2);
DELETE FROM pool_creature WHERE guid BETWEEN 68880 AND 68889;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES 
(68880, 25512, 0, 'BRD - Doomforge Arcanasmith/Weapon Technician'),
(68881, 25512, 0, 'BRD - Doomforge Arcanasmith/Weapon Technician'),
(68883, 25513, 0, 'BRD - Doomforge Arcanasmith/Weapon Technician'),
(68884, 25513, 0, 'BRD - Doomforge Arcanasmith/Weapon Technician'),
(68885, 25514, 0, 'BRD - Doomforge Arcanasmith/Weapon Technician'),
(68886, 25514, 0, 'BRD - Doomforge Arcanasmith/Weapon Technician'),
(68888, 25515, 0, 'BRD - Doomforge Arcanasmith/Weapon Technician'),
(68889, 25515, 0, 'BRD - Doomforge Arcanasmith/Weapon Technician');
DELETE FROM pool_template WHERE entry BETWEEN 25512 AND 25515;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25512, 1, 'BRD - Doomforge Arcanasmith/Weapon Technician'),
(25513, 1, 'BRD - Doomforge Arcanasmith/Weapon Technician'),
(25514, 1, 'BRD - Doomforge Arcanasmith/Weapon Technician'),
(25515, 1, 'BRD - Doomforge Arcanasmith/Weapon Technician');
DELETE FROM creature_movement WHERE id BETWEEN 68880 AND 68889;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- First patrol (two possible spawns)
(68880, 1, 803.859, 12.9567, -53.6615, 0, 0, 100, 0, 0),
(68880, 2, 803.332, 36.0541, -53.6688, 0, 0, 100, 0, 0),
(68880, 3, 788.064, 46.9496, -53.7332, 0, 0, 100, 0, 0),
(68880, 4, 773.939, 57.1793, -53.7083, 0, 0, 100, 0, 0),
(68880, 5, 762.993, 50.4319, -53.7269, 0, 0, 100, 0, 0),
(68880, 6, 761.421, 29.3542, -53.6321, 0, 0, 100, 0, 0),
(68880, 7, 762.968, 9.71107, -53.701, 0, 0, 100, 0, 0),
(68880, 8, 769.319, -3.63559, -53.7241, 0, 0, 100, 0, 0),
(68880, 9, 777.615, -18.1981, -53.7212, 0, 0, 100, 0, 0),
(68880, 10, 792.493, -18.6761, -53.6741, 0, 0, 100, 0, 0),
(68880, 11, 802.697, -9.92748, -53.6707, 0, 0, 100, 0, 0),
(68881, 1, 803.859, 12.9567, -53.6615, 0, 0, 100, 0, 0),
(68881, 2, 803.332, 36.0541, -53.6688, 0, 0, 100, 0, 0),
(68881, 3, 788.064, 46.9496, -53.7332, 0, 0, 100, 0, 0),
(68881, 4, 773.939, 57.1793, -53.7083, 0, 0, 100, 0, 0),
(68881, 5, 762.993, 50.4319, -53.7269, 0, 0, 100, 0, 0),
(68881, 6, 761.421, 29.3542, -53.6321, 0, 0, 100, 0, 0),
(68881, 7, 762.968, 9.71107, -53.701, 0, 0, 100, 0, 0),
(68881, 8, 769.319, -3.63559, -53.7241, 0, 0, 100, 0, 0),
(68881, 9, 777.615, -18.1981, -53.7212, 0, 0, 100, 0, 0),
(68881, 10, 792.493, -18.6761, -53.6741, 0, 0, 100, 0, 0),
(68881, 11, 802.697, -9.92748, -53.6707, 0, 0, 100, 0, 0),
-- Second patrol
(68882, 1, 762.349, 41.594, -53.7146, 0, 0, 100, 0, 0),
(68882, 2, 799.356, 43.3486, -53.6921, 0, 0, 100, 0, 0),
(68882, 3, 803.831, 32.7512, -53.6365, 0, 0, 100, 0, 0),
(68882, 4, 799.356, 43.3486, -53.6921, 0, 0, 100, 0, 0),
(68882, 5, 762.349, 41.594, -53.7146, 0, 0, 100, 0, 0),
(68882, 6, 761.201, 22.3508, -53.6527, 0, 0, 100, 0, 0),
(68882, 7, 777.259, 21.7293, -53.6562, 0, 0, 100, 0, 0),
(68882, 8, 781.122, 8.1129, -53.6999, 0, 0, 100, 0, 0),
(68882, 9, 798.227, 7.70171, -53.6888, 0, 0, 100, 0, 0),
(68882, 10, 802.456, -8.26351, -53.6719, 0, 0, 100, 0, 0),
(68882, 11, 795.791, -21.864, -53.6543, 0, 0, 100, 0, 0),
(68882, 12, 813.282, -40.8431, -53.746, 0, 0, 100, 0, 0),
(68882, 13, 795.791, -21.864, -53.6543, 0, 0, 100, 0, 0),
(68882, 14, 802.456, -8.26351, -53.6719, 0, 0, 100, 0, 0),
(68882, 15, 798.227, 7.70171, -53.6888, 0, 0, 100, 0, 0),
(68882, 16, 781.122, 8.1129, -53.6999, 0, 0, 100, 0, 0),
(68882, 17, 777.259, 21.7293, -53.6562, 0, 0, 100, 0, 0),
(68882, 18, 761.201, 22.3508, -53.6527, 0, 0, 100, 0, 0),
-- Third patrol (two possible spawns)
(68883, 1, 782.138, -45.6668, -53.7721, 0, 0, 100, 0, 0),
(68883, 2, 778.198, -33.9222, -53.7311, 0, 0, 100, 0, 0),
(68883, 3, 783.974, -27.3003, -53.6742, 0, 0, 100, 0, 0),
(68883, 4, 762.94, 8.65715, -53.71, 0, 0, 100, 0, 0),
(68883, 5, 761.041, 41.1992, -53.7038, 0, 0, 100, 0, 0),
(68883, 6, 753.723, 41.7996, -53.6441, 40000, 0, 100, 0, 0),
(68883, 7, 764.597, 45.6037, -53.7352, 0, 0, 100, 0, 0),
(68883, 8, 774.852, 60.0696, -53.6795, 0, 0, 100, 0, 0),
(68883, 9, 774.852, 60.0696, -53.6795, 5000, 0, 100, 0, 0),
(68883, 10, 784.549, 54.0242, -53.7352, 0, 0, 100, 0, 0),
(68883, 11, 785.148, 35.8518, -53.6995, 0, 0, 100, 0, 0),
(68883, 12, 776.289, 27.4625, -53.6255, 20000, 0, 100, 0, 0),
(68883, 13, 776.729, 26.9007, -53.6282, 0, 0, 100, 0, 0),
(68883, 14, 783.783, 14.001, -53.6906, 0, 0, 100, 0, 0),
(68883, 15, 786.595, -12.3495, -53.7113, 0, 0, 100, 0, 0),
(68883, 16, 784.733, -32.3172, -53.7235, 0, 0, 100, 0, 0),
(68883, 17, 784.662, -39.4896, -53.7492, 0, 0, 100, 0, 0),
(68883, 18, 781.288, -46.3105, -53.7746, 35000, 0, 100, 0, 0),
(68884, 1, 782.138, -45.6668, -53.7721, 0, 0, 100, 0, 0),
(68884, 2, 778.198, -33.9222, -53.7311, 0, 0, 100, 0, 0),
(68884, 3, 783.974, -27.3003, -53.6742, 0, 0, 100, 0, 0),
(68884, 4, 762.94, 8.65715, -53.71, 0, 0, 100, 0, 0),
(68884, 5, 761.041, 41.1992, -53.7038, 0, 0, 100, 0, 0),
(68884, 6, 753.723, 41.7996, -53.6441, 40000, 0, 100, 0, 0),
(68884, 7, 764.597, 45.6037, -53.7352, 0, 0, 100, 0, 0),
(68884, 8, 774.852, 60.0696, -53.6795, 0, 0, 100, 0, 0),
(68884, 9, 774.852, 60.0696, -53.6795, 5000, 0, 100, 0, 0),
(68884, 10, 784.549, 54.0242, -53.7352, 0, 0, 100, 0, 0),
(68884, 11, 785.148, 35.8518, -53.6995, 0, 0, 100, 0, 0),
(68884, 12, 776.289, 27.4625, -53.6255, 20000, 0, 100, 0, 0),
(68884, 13, 776.729, 26.9007, -53.6282, 0, 0, 100, 0, 0),
(68884, 14, 783.783, 14.001, -53.6906, 0, 0, 100, 0, 0),
(68884, 15, 786.595, -12.3495, -53.7113, 0, 0, 100, 0, 0),
(68884, 16, 784.733, -32.3172, -53.7235, 0, 0, 100, 0, 0),
(68884, 17, 784.662, -39.4896, -53.7492, 0, 0, 100, 0, 0),
(68884, 18, 781.288, -46.3105, -53.7746, 35000, 0, 100, 0, 0),
-- Fourth patrol (two possible spawns)
(68885, 1, 792.438, 45.7173, -53.7176, 0, 0, 100, 0, 0),
(68885, 2, 795.405, 38.8804, -53.6981, 0, 0, 100, 0, 0),
(68885, 3, 800.774, 35.1317, -53.6755, 0, 0, 100, 0, 0),
(68885, 4, 800.455, 27.8962, -53.6365, 0, 0, 100, 0, 0),
(68885, 5, 800.281, 15.0601, -53.6782, 0, 0, 100, 0, 0),
(68885, 6, 804.687, -0.79423, -53.6417, 0, 0, 100, 0, 0),
(68885, 7, 809.65, -1.35354, -53.5894, 40000, 0, 100, 0, 0),
(68885, 8, 808.37, -0.974017, -53.6027, 0, 0, 100, 0, 0),
(68885, 9, 798.703, -14.2282, -53.6685, 0, 0, 100, 0, 0),
(68885, 10, 785.097, -22.9216, -53.6839, 0, 0, 100, 0, 0),
(68885, 11, 778.349, -26.1744, -53.6948, 30000, 0, 100, 0, 0),
(68885, 12, 779.015, -25.8711, -53.6937, 0, 0, 100, 0, 0),
(68885, 13, 770.726, -10.8395, -53.731, 0, 0, 100, 0, 0),
(68885, 14, 765.311, 6.20587, -53.7134, 0, 0, 100, 0, 0),
(68885, 15, 763.947, 21.5177, -53.6724, 0, 0, 100, 0, 0),
(68885, 16, 777.62, 24.3637, -53.6415, 0, 0, 100, 0, 0),
(68885, 17, 787.35, 36.6482, -53.6692, 0, 0, 100, 0, 0),
(68885, 18, 790.302, 56.138, -53.7397, 0, 0, 100, 0, 0),
(68885, 19, 791.537, 60.003, -53.6842, 15000, 0, 100, 0, 0),
(68885, 20, 790.544, 58.6389, -53.6977, 0, 0, 100, 0, 0),
(68885, 21, 791.594, 46.1057, -53.7208, 0, 0, 100, 0, 0),
(68885, 22, 791.594, 46.1057, -53.7208, 30000, 0, 100, 0, 0),
(68886, 1, 792.438, 45.7173, -53.7176, 0, 0, 100, 0, 0),
(68886, 2, 795.405, 38.8804, -53.6981, 0, 0, 100, 0, 0),
(68886, 3, 800.774, 35.1317, -53.6755, 0, 0, 100, 0, 0),
(68886, 4, 800.455, 27.8962, -53.6365, 0, 0, 100, 0, 0),
(68886, 5, 800.281, 15.0601, -53.6782, 0, 0, 100, 0, 0),
(68886, 6, 804.687, -0.79423, -53.6417, 0, 0, 100, 0, 0),
(68886, 7, 809.65, -1.35354, -53.5894, 40000, 0, 100, 0, 0),
(68886, 8, 808.37, -0.974017, -53.6027, 0, 0, 100, 0, 0),
(68886, 9, 798.703, -14.2282, -53.6685, 0, 0, 100, 0, 0),
(68886, 10, 785.097, -22.9216, -53.6839, 0, 0, 100, 0, 0),
(68886, 11, 778.349, -26.1744, -53.6948, 30000, 0, 100, 0, 0),
(68886, 12, 779.015, -25.8711, -53.6937, 0, 0, 100, 0, 0),
(68886, 13, 770.726, -10.8395, -53.731, 0, 0, 100, 0, 0),
(68886, 14, 765.311, 6.20587, -53.7134, 0, 0, 100, 0, 0),
(68886, 15, 763.947, 21.5177, -53.6724, 0, 0, 100, 0, 0),
(68886, 16, 777.62, 24.3637, -53.6415, 0, 0, 100, 0, 0),
(68886, 17, 787.35, 36.6482, -53.6692, 0, 0, 100, 0, 0),
(68886, 18, 790.302, 56.138, -53.7397, 0, 0, 100, 0, 0),
(68886, 19, 791.537, 60.003, -53.6842, 15000, 0, 100, 0, 0),
(68886, 20, 790.544, 58.6389, -53.6977, 0, 0, 100, 0, 0),
(68886, 21, 791.594, 46.1057, -53.7208, 0, 0, 100, 0, 0),
(68886, 22, 791.594, 46.1057, -53.7208, 30000, 0, 100, 0, 0),
-- Fifth patrol
(68887, 1, 773.925, 3.11658, -53.7172, 0, 0, 100, 0, 0),
(68887, 2, 774.192, -10.6106, -53.7327, 0, 0, 100, 0, 0),
(68887, 3, 786.545, -21.9167, -53.6825, 0, 0, 100, 0, 0),
(68887, 4, 785.527, -33.0789, -53.726, 0, 0, 100, 0, 0),
(68887, 5, 789.237, -36.13, -53.7359, 0, 0, 100, 0, 0),
(68887, 6, 785.527, -33.0789, -53.726, 0, 0, 100, 0, 0),
(68887, 7, 786.545, -21.9167, -53.6825, 0, 0, 100, 0, 0),
(68887, 8, 774.192, -10.6106, -53.7327, 0, 0, 100, 0, 0),
(68887, 9, 773.925, 3.11658, -53.7172, 0, 0, 100, 0, 0),
(68887, 10, 781.98, 7.79252, -53.6991, 0, 0, 100, 0, 0),
(68887, 11, 783.496, 44.9433, -53.7352, 0, 0, 100, 0, 0),
(68887, 12, 784.57, 58.7309, -53.6953, 0, 0, 100, 0, 0),
(68887, 13, 783.496, 44.9433, -53.7352, 0, 0, 100, 0, 0),
(68887, 14, 781.98, 7.79252, -53.6991, 0, 0, 100, 0, 0),
-- Sixth patrol (two possible spawns)
(68888, 1, 811.87, -25.2166, -53.6904, 0, 0, 100, 0, 0),
(68888, 2, 796.794, -14.5872, -53.6733, 0, 0, 100, 0, 0),
(68888, 3, 803.802, -5.47762, -53.6552, 0, 0, 100, 0, 0),
(68888, 4, 800.327, 11.2513, -53.6704, 0, 0, 100, 0, 0),
(68888, 5, 803.43, 28.3222, -53.6365, 0, 0, 100, 0, 0),
(68888, 6, 803.879, 39.4262, -53.672, 0, 0, 100, 0, 0),
(68888, 7, 810.038, 40.6187, -53.6542, 40000, 0, 100, 0, 0),
(68888, 8, 809.069, 40.2641, -53.6568, 0, 0, 100, 0, 0),
(68888, 9, 801.317, 31.8698, -53.6365, 0, 0, 100, 0, 0),
(68888, 10, 796.212, 24.2951, -53.6492, 0, 0, 100, 0, 0),
(68888, 11, 780.355, 12.836, -53.6862, 0, 0, 100, 0, 0),
(68888, 12, 774.289, 3.12628, -53.7185, 0, 0, 100, 0, 0),
(68888, 13, 758.585, 1.25146, -53.714, 40000, 0, 100, 0, 0),
(68888, 14, 768.231, 0.35128, -53.72, 0, 0, 100, 0, 0),
(68888, 15, 775.579, -15.6753, -53.7378, 0, 0, 100, 0, 0),
(68888, 16, 791.5, -26.4753, -53.7006, 20000, 0, 100, 0, 0),
(68888, 17, 791.093, -26.4291, -53.7006, 0, 0, 100, 0, 0),
(68888, 18, 795.717, -22.4336, -53.6528, 0, 0, 100, 0, 0),
(68888, 19, 812.793, -25.571, -53.6914, 45000, 0, 100, 0, 0),
(68889, 1, 811.87, -25.2166, -53.6904, 0, 0, 100, 0, 0),
(68889, 2, 796.794, -14.5872, -53.6733, 0, 0, 100, 0, 0),
(68889, 3, 803.802, -5.47762, -53.6552, 0, 0, 100, 0, 0),
(68889, 4, 800.327, 11.2513, -53.6704, 0, 0, 100, 0, 0),
(68889, 5, 803.43, 28.3222, -53.6365, 0, 0, 100, 0, 0),
(68889, 6, 803.879, 39.4262, -53.672, 0, 0, 100, 0, 0),
(68889, 7, 810.038, 40.6187, -53.6542, 40000, 0, 100, 0, 0),
(68889, 8, 809.069, 40.2641, -53.6568, 0, 0, 100, 0, 0),
(68889, 9, 801.317, 31.8698, -53.6365, 0, 0, 100, 0, 0),
(68889, 10, 796.212, 24.2951, -53.6492, 0, 0, 100, 0, 0),
(68889, 11, 780.355, 12.836, -53.6862, 0, 0, 100, 0, 0),
(68889, 12, 774.289, 3.12628, -53.7185, 0, 0, 100, 0, 0),
(68889, 13, 758.585, 1.25146, -53.714, 40000, 0, 100, 0, 0),
(68889, 14, 768.231, 0.35128, -53.72, 0, 0, 100, 0, 0),
(68889, 15, 775.579, -15.6753, -53.7378, 0, 0, 100, 0, 0),
(68889, 16, 791.5, -26.4753, -53.7006, 20000, 0, 100, 0, 0),
(68889, 17, 791.093, -26.4291, -53.7006, 0, 0, 100, 0, 0),
(68889, 18, 795.717, -22.4336, -53.6528, 0, 0, 100, 0, 0),
(68889, 19, 812.793, -25.571, -53.6914, 45000, 0, 100, 0, 0);
-- Classic [1137]
-- Foulbelly
UPDATE creature_template SET UnitFlags = 64, SpeedWalk = 1, UnitClass = 2, DamageMultiplier = 2.2, MinMeleeDmg = 58.1, MaxMeleeDmg = 76.9, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 1841, MeleeAttackPower = 142, RangedAttackPower = 13, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 2601;
-- Classic [1136]
-- Swinegart Spearhide
UPDATE creature_template SET UnitFlags = 64, SpeedWalk = 1, Rank = 2, HealthMultiplier = 3, DamageMultiplier = 1.7, ArmorMultiplier = 1, MinLevelHealth = 1686, MaxLevelHealth = 1686, MinMeleeDmg = 32, MaxMeleeDmg = 42.4, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 922, MeleeAttackPower = 78, RangedAttackPower = 4, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MovementType = 1 WHERE Entry = 5864;
-- Classic [1135]
-- Siege Golem
UPDATE creature_template SET UnitFlags = 64, SpeedWalk = 1, Rank = 2, DamageMultiplier = 1.4, ArmorMultiplier = 1.5, MinMeleeDmg = 56.0, MaxMeleeDmg = 74.3, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 136, RangedAttackPower = 14, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 2749;
-- Classic [1134]
-- Vile Sting
UPDATE creature_template SET UnitFlags = 64, SpeedWalk = 1, Rank = 2, DamageMultiplier = 1.7, MinMeleeDmg = 48.6, MaxMeleeDmg = 64.4, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 118, RangedAttackPower = 11, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MovementType = 1 WHERE Entry = 5937;
-- Classic [1133]
-- Zora 
UPDATE creature_template SET UnitFlags = 64, SpeedWalk = 1.4, SpeedRun = 10 / 7, DamageMultiplier = 3.9, MinMeleeDmg = 101.8, MaxMeleeDmg = 135.0, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 248, RangedAttackPower = 25, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MovementType = 1 WHERE Entry = 14474;
-- Classic [1132]
-- Zaricotl 
UPDATE creature_template SET SpeedWalk = 1, Rank = 2, DamageMultiplier = 3.5, MinMeleeDmg = 94.00, MaxMeleeDmg = 124.7, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 228, RangedAttackPower = 23 WHERE Entry = 2931;
-- Classic [1130]
-- Rocklance
UPDATE creature_template SET SpeedWalk = 0.66668, DamageMultiplier = 1.7, MinMeleeDmg = 25.0, MaxMeleeDmg = 33.2, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 60, RangedAttackPower = 2, MeleeBaseAttackTime = 2000 WHERE Entry = 5841;
-- Classic [1129]
-- Skarr the Unbreakable Mushgog & The Razza
UPDATE creature_template SET UnitFlags = 64, SpeedWalk = 0.666668, Rank = 2, DamageMultiplier = 5, MinMeleeDmg = 103.9, MaxMeleeDmg = 137.9, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3791, MeleeAttackPower = 252, RangedAttackPower = 26, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, ResistanceShadow = 0, MovementType = 1 WHERE Entry = 11447;
UPDATE creature_template SET UnitFlags = 64, SpeedWalk = 1, Rank = 2, DamageMultiplier = 12, MinMeleeDmg = 96.8, MaxMeleeDmg = 128.2, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3075, MeleeAttackPower = 238, RangedAttackPower = 24, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MovementType = 1 WHERE Entry = 11497;
UPDATE creature_template SET SpeedWalk = 1, Rank = 2, DamageMultiplier = 10, MinMeleeDmg = 99.8, MaxMeleeDmg = 132.4, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3435, MeleeAttackPower = 242, RangedAttackPower = 25, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MovementType = 1, EquipmentTemplateId = 20 WHERE Entry = 11498;
-- Classic [1128]
-- Dishu
UPDATE creature_template SET UnitFlags = 64, MinMeleeDmg = 13.9, MaxMeleeDmg = 18.3, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 46, RangedAttackPower = 1, MeleeBaseAttackTime = 1500, RangedBaseAttackTime = 1500, MovementType = 1 WHERE Entry = 5865;
UPDATE creature SET modelid = 0, position_x = 542.3774, position_y = -2402.823, position_z = 91.79166, orientation = 1.328636, spawndist = 3, MovementType = 1 WHERE guid = 51810;
-- Classic [1127]
-- Start eating and cooking healthier with Foreman Grills! 
-- stats, pathing
UPDATE creature_template SET SpeedWalk = 1, DamageMultiplier = 1.7, MinMeleeDmg = 22.1, MaxMeleeDmg = 29.2, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 68, RangedAttackPower = 3, MeleeBaseAttackTime = 1600, RangedBaseAttackTime = 1600, MovementType = 2 WHERE Entry = 5835;
UPDATE creature SET modelid = 0, equipment_id = 0, position_x = 1060.825, position_y = -3089.710, position_z = 105.2289, MovementType = 2 WHERE id = 5835;
DELETE FROM creature_movement_template WHERE entry = 5835;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(5835, 1, 1061.986, -3086.345, 105.1251, 0, 0, 100, 0, 0),
(5835, 2, 1061.634, -3082.626, 105.1249, 0, 0, 100, 0, 0),
(5835, 3, 1060.180, -3079.965, 105.1250, 0, 0, 100, 0, 0),
(5835, 4, 1058.067, -3075.866, 105.5008, 0, 0, 100, 0, 0),
(5835, 5, 1054.894, -3071.720, 105.1248, 0, 0, 100, 0, 0),
(5835, 6, 1051.250, -3069.849, 105.1248, 0, 0, 100, 0, 0),
(5835, 7, 1047.294, -3069.876, 105.2895, 0, 0, 100, 0, 0),
(5835, 8, 1043.630, -3072.360, 105.7200, 0, 0, 100, 0, 0),
(5835, 9, 1038.298, -3076.431, 105.3281, 0, 0, 100, 0, 0),
(5835, 10, 1033.588, -3075.666, 105.1248, 0, 0, 100, 0, 0),
(5835, 11, 1031.403, -3070.742, 105.1248, 0, 0, 100, 0, 0),
(5835, 12, 1030.159, -3066.548, 105.0886, 0, 0, 100, 0, 0),
(5835, 13, 1031.585, -3060.083, 102.1546, 0, 0, 100, 0, 0),
(5835, 14, 1032.791, -3056.734, 100.4098, 0, 0, 100, 0, 0),
(5835, 15, 1035.055, -3054.109, 98.96556, 0, 0, 100, 0, 0),
(5835, 16, 1039.284, -3052.886, 98.45665, 0, 0, 100, 0, 0),
(5835, 17, 1043.775, -3054.494, 96.87997, 0, 0, 100, 0, 0),
(5835, 18, 1049.612, -3058.207, 93.91737, 0, 0, 100, 0, 0),
(5835, 19, 1053.437, -3062.934, 91.81248, 0, 0, 100, 0, 0),
(5835, 20, 1055.306, -3067.910, 91.71753, 0, 0, 100, 0, 0),
(5835, 21, 1057.021, -3073.869, 91.74790, 0, 0, 100, 0, 0),
(5835, 22, 1058.284, -3077.768, 91.74529, 0, 0, 100, 0, 0),
(5835, 23, 1059.488, -3082.520, 91.74529, 0, 0, 100, 0, 0),
(5835, 24, 1059.709, -3086.135, 91.74529, 0, 0, 100, 0, 0),
(5835, 25, 1054.993, -3091.561, 89.71048, 0, 0, 100, 0, 0),
(5835, 26, 1051.957, -3093.599, 87.61989, 0, 0, 100, 0, 0),
(5835, 27, 1047.680, -3095.379, 84.87052, 0, 0, 100, 0, 0),
(5835, 28, 1043.322, -3097.008, 82.05359, 0, 0, 100, 0, 0),
(5835, 29, 1039.548, -3097.979, 80.94704, 0, 0, 100, 0, 0),
(5835, 30, 1032.461, -3100.741, 80.94704, 0, 0, 100, 0, 0),
(5835, 31, 1028.604, -3104.469, 80.99876, 0, 0, 100, 0, 0),
(5835, 32, 1025.096, -3106.792, 80.99876, 0, 0, 100, 0, 0),
(5835, 33, 1021.447, -3109.207, 80.99876, 0, 0, 100, 0, 0),
(5835, 34, 1017.709, -3109.375, 80.82066, 0, 0, 100, 0, 0),
(5835, 35, 1017.246, -3113.847, 80.93858, 0, 0, 100, 0, 0),
(5835, 36, 1015.240, -3116.812, 81.25938, 0, 0, 100, 0, 0),
(5835, 37, 1013.111, -3118.452, 81.71165, 0, 0, 100, 0, 0),
(5835, 38, 1010.256, -3117.703, 81.96433, 0, 0, 100, 0, 0),
(5835, 39, 1009.359, -3115.536, 81.93699, 0, 0, 100, 0, 0),
(5835, 40, 1009.965, -3111.183, 81.45860, 0, 0, 100, 0, 0),
(5835, 41, 1012.349, -3109.547, 80.85960, 0, 0, 100, 0, 0),
(5835, 42, 1013.989, -3110.127, 80.97349, 0, 0, 100, 0, 0),
(5835, 43, 1019.784, -3109.268, 81.41851, 0, 0, 100, 0, 0),
(5835, 44, 1023.758, -3107.677, 80.99876, 0, 0, 100, 0, 0),
(5835, 45, 1026.932, -3105.576, 80.99876, 0, 0, 100, 0, 0),
(5835, 46, 1036.321, -3099.220, 80.94704, 0, 0, 100, 0, 0),
(5835, 47, 1043.881, -3096.502, 82.47501, 0, 0, 100, 0, 0),
(5835, 48, 1048.609, -3095.175, 85.44218, 0, 0, 100, 0, 0),
(5835, 49, 1054.600, -3092.406, 89.33358, 0, 0, 100, 0, 0),
(5835, 50, 1058.679, -3089.168, 91.74529, 0, 0, 100, 0, 0),
(5835, 51, 1060.600, -3083.751, 91.74529, 0, 0, 100, 0, 0),
(5835, 52, 1059.441, -3080.283, 91.74529, 0, 0, 100, 0, 0),
(5835, 53, 1058.013, -3076.833, 91.74529, 0, 0, 100, 0, 0),
(5835, 54, 1055.768, -3074.566, 91.74231, 0, 0, 100, 0, 0),
(5835, 55, 1053.489, -3072.353, 91.74322, 0, 0, 100, 0, 0),
(5835, 56, 1048.930, -3072.945, 91.73545, 0, 0, 100, 0, 0),
(5835, 57, 1041.483, -3075.292, 91.73331, 0, 0, 100, 0, 0),
(5835, 58, 1037.056, -3077.865, 91.77201, 0, 0, 100, 0, 0),
(5835, 59, 1030.979, -3080.973, 91.75402, 0, 0, 100, 0, 0),
(5835, 60, 1023.379, -3082.191, 91.73473, 0, 0, 100, 0, 0),
(5835, 61, 1015.590, -3080.345, 91.71867, 0, 0, 100, 0, 0),
(5835, 62, 1016.861, -3076.982, 91.72570, 0, 0, 100, 0, 0),
(5835, 63, 1019.508, -3077.520, 91.73126, 0, 0, 100, 0, 0),
(5835, 64, 1020.740, -3079.885, 91.73131, 0, 0, 100, 0, 0),
(5835, 65, 1023.992, -3081.433, 91.73708, 0, 0, 100, 0, 0),
(5835, 66, 1030.161, -3080.516, 91.75265, 0, 0, 100, 0, 0),
(5835, 67, 1035.140, -3078.666, 91.76655, 0, 0, 100, 0, 0),
(5835, 68, 1039.213, -3076.151, 91.73331, 0, 0, 100, 0, 0),
(5835, 69, 1044.727, -3073.745, 91.73195, 0, 0, 100, 0, 0),
(5835, 70, 1048.532, -3072.013, 91.73095, 0, 0, 100, 0, 0),
(5835, 71, 1052.280, -3069.468, 91.74916, 0, 0, 100, 0, 0),
(5835, 72, 1053.241, -3067.037, 91.76199, 0, 0, 100, 0, 0),
(5835, 73, 1052.287, -3063.901, 91.64170, 0, 0, 100, 0, 0),
(5835, 74, 1051.005, -3060.317, 93.13999, 0, 0, 100, 0, 0),
(5835, 75, 1046.463, -3055.466, 95.48847, 0, 0, 100, 0, 0),
(5835, 76, 1043.437, -3054.262, 97.09176, 0, 0, 100, 0, 0),
(5835, 77, 1039.259, -3053.316, 98.44495, 0, 0, 100, 0, 0),
(5835, 78, 1035.709, -3054.802, 98.98147, 0, 0, 100, 0, 0),
(5835, 79, 1033.222, -3056.353, 100.1441, 0, 0, 100, 0, 0),
(5835, 80, 1030.545, -3058.914, 101.8723, 0, 0, 100, 0, 0),
(5835, 81, 1029.746, -3062.890, 103.9907, 0, 0, 100, 0, 0),
(5835, 82, 1028.885, -3066.461, 105.0688, 0, 0, 100, 0, 0),
(5835, 83, 1027.566, -3071.804, 105.1248, 0, 0, 100, 0, 0),
(5835, 84, 1026.921, -3074.341, 105.1623, 0, 0, 100, 0, 0),
(5835, 85, 1029.291, -3078.578, 105.1248, 0, 0, 100, 0, 0),
(5835, 86, 1031.795, -3080.060, 105.1248, 0, 0, 100, 0, 0),
(5835, 87, 1034.149, -3084.094, 105.1250, 0, 0, 100, 0, 0),
(5835, 88, 1035.669, -3087.390, 104.9839, 0, 0, 100, 0, 0),
(5835, 89, 1037.765, -3091.234, 104.7197, 0, 0, 100, 0, 0),
(5835, 90, 1040.766, -3093.771, 105.0264, 0, 0, 100, 0, 0),
(5835, 91, 1044.164, -3096.444, 105.4315, 0, 0, 100, 0, 0),
(5835, 92, 1048.075, -3097.355, 105.6495, 0, 0, 100, 0, 0),
(5835, 93, 1055.781, -3094.849, 105.5749, 0, 0, 100, 0, 0),
(5835, 94, 1059.139, -3093.441, 105.4970, 0, 0, 100, 0, 0),
(5835, 95, 1060.825, -3089.710, 105.2289, 0, 0, 100, 0, 0);
-- Classic [1126]
-- Taylor Swiftmane
UPDATE creature_template SET SpeedWalk = 1, SpeedRun = 2.142857143, Rank = 2, DamageMultiplier = 1.7, MinMeleeDmg = 30.5, MaxMeleeDmg = 40.5, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 74, RangedAttackPower = 4, MeleeBaseAttackTime = 2000, MovementType = 2 WHERE Entry = 5831;
UPDATE creature SET modelid = 0, position_x = -715.678, position_y = -3581.36, position_z = 92.3236, orientation = 4.86482, MovementType = 2 WHERE guid = 20433;
DELETE FROM creature_movement_template WHERE entry = 5831;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(5831, 38, -715.575, -3582.03, 92.3202, 0, 0, 100, 0, 0),
(5831, 37, -718.461, -3563.25, 92.4140, 0, 0, 100, 0, 0),
(5831, 36, -714.682, -3548.67, 93.9140, 0, 0, 100, 0, 0),
(5831, 35, -698.236, -3537.26, 92.6640, 0, 0, 100, 0, 0),
(5831, 34, -671.141, -3522.95, 91.8839, 0, 0, 100, 0, 0),
(5831, 33, -650.802, -3498.19, 91.8199, 0, 0, 100, 0, 0),
(5831, 32, -652.568, -3476.71, 93.8199, 0, 0, 100, 0, 0),
(5831, 31, -639.502, -3449.70, 93.8133, 0, 0, 100, 0, 0),
(5831, 30, -623.082, -3433.78, 91.7890, 0, 0, 100, 0, 0),
(5831, 29, -601.774, -3430.94, 91.7890, 0, 0, 100, 0, 0),
(5831, 28, -583.176, -3440.61, 91.7890, 0, 0, 100, 0, 0),
(5831, 27, -567.257, -3454.55, 92.2805, 0, 0, 100, 0, 0),
(5831, 26, -554.641, -3469.96, 92.9621, 0, 0, 100, 0, 0),
(5831, 25, -544.309, -3489.59, 92.9094, 0, 0, 100, 0, 0),
(5831, 24, -541.695, -3517.06, 91.7890, 0, 0, 100, 0, 0),
(5831, 23, -546.260, -3538.08, 91.7890, 0, 0, 100, 0, 0),
(5831, 22, -540.395, -3560.10, 93.1640, 0, 0, 100, 0, 0),
(5831, 21, -537.209, -3579.71, 93.4125, 0, 0, 100, 0, 0),
(5831, 20, -519.625, -3594.80, 93.7065, 0, 0, 100, 0, 0),
(5831, 19, -496.266, -3591.78, 93.5876, 0, 0, 100, 0, 0),
(5831, 18, -464.342, -3564.53, 91.7890, 0, 0, 100, 0, 0),
(5831, 17, -455.548, -3552.11, 91.9140, 0, 0, 100, 0, 0),
(5831, 16, -455.237, -3516.19, 95.3331, 0, 0, 100, 0, 0),
(5831, 15, -474.164, -3490.81, 93.2984, 0, 0, 100, 0, 0),
(5831, 14, -493.592, -3469.16, 94.1670, 0, 0, 100, 0, 0),
(5831, 13, -508.566, -3457.70, 93.4341, 0, 0, 100, 0, 0),
(5831, 12, -521.856, -3444.02, 94.6973, 0, 0, 100, 0, 0),
(5831, 11, -532.917, -3435.41, 93.4966, 0, 0, 100, 0, 0),
(5831, 10, -559.095, -3427.52, 91.7890, 0, 0, 100, 0, 0),
(5831, 9, -568.124, -3434.60, 91.7890, 0, 0, 100, 0, 0),
(5831, 8, -592.714, -3457.25, 91.7890, 0, 0, 100, 0, 0),
(5831, 7, -598.635, -3474.48, 92.5627, 0, 0, 100, 0, 0),
(5831, 6, -608.157, -3497.97, 94.3281, 0, 0, 100, 0, 0),
(5831, 5, -631.250, -3524.16, 93.1640, 0, 0, 100, 0, 0),
(5831, 4, -649.281, -3550.45, 91.7890, 0, 0, 100, 0, 0),
(5831, 3, -664.382, -3573.64, 91.7890, 0, 0, 100, 0, 0),
(5831, 2, -685.513, -3594.81, 91.8542, 0, 0, 100, 0, 0),
(5831, 1, -702.322, -3593.87, 93.8325, 0, 583101, 100, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 583101;
INSERT INTO dbscripts_on_creature_movement  (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(583101,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'Swiftmane - RUN ON');

-- UDB_281
-- Classic [1172]
-- Elwynn Forest - Ridgepoint Tower
UPDATE creature SET modelid = 0, position_x = -9776.48, position_y = -1383.62, position_z = 62.9761, orientation = 3.24447, MovementType = 2 WHERE guid = 81362;
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
UPDATE creature SET modelid = 0, position_x = -9776.60, position_y = -1394.83, position_z = 98.0706, orientation = 1.01229, MovementType = 2 WHERE guid = 81365;
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
-- Classic [1171]
-- Molten Core - Molten Core Circle XYZ 
-- Missing template
DELETE FROM gameobject_template WHERE entry = 178188;
INSERT INTO gameobject_template (entry, type, displayId, name, IconName, castBarCaption, unk1, faction, flags, size, questItem1, questItem2, questItem3, questItem4, questItem5, questItem6, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, ScriptName) VALUES
(178188,6,410,'Molten Core Circle BARON','','','',114,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
UPDATE gameobject_template SET faction = 114 WHERE entry = 178187;
UPDATE gameobject_template SET faction = 114 WHERE entry = 178190;
UPDATE gameobject_template SET faction = 114 WHERE entry = 178189;
-- Classic [1170]
-- Lakeshire - Guard Clarke
UPDATE creature SET modelid = 0, position_x = -9266.45, position_y = -2181.94, position_z = 64.2375, orientation = 4.7822, spawndist = 0 WHERE guid = 10088;
DELETE FROM creature_movement WHERE id = 10088;
DELETE FROM creature_movement_template WHERE entry = 934;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(934, 18, -9297.22, -2212.78, 61.8978, 0, 0, 100, 0, 0),
(934, 17, -9311.43, -2210.67, 61.8978, 0, 0, 100, 0, 0),
(934, 16, -9322.40, -2210.03, 61.8978, 0, 0, 100, 0, 0),
(934, 15, -9335.03, -2207.95, 61.8978, 0, 0, 100, 0, 0),
(934, 14, -9344.36, -2206.35, 61.8978, 0, 0, 100, 0, 0),
(934, 13, -9335.00, -2207.96, 61.8978, 0, 0, 100, 0, 0),
(934, 12, -9322.40, -2210.03, 61.8978, 0, 0, 100, 0, 0),
(934, 11, -9311.43, -2210.67, 61.8978, 0, 0, 100, 0, 0),
(934, 10, -9296.33, -2212.81, 61.8978, 0, 0, 100, 0, 0),
(934, 9, -9285.21, -2216.08, 63.2600, 0, 0, 100, 0, 0),
(934, 8, -9284.11, -2226.77, 63.3911, 0, 0, 100, 0, 0),
(934, 7, -9283.65, -2243.70, 63.5711, 0, 0, 100, 0, 0),
(934, 6, -9281.13, -2260.52, 65.9722, 0, 0, 100, 0, 0),
(934, 5, -9275.42, -2273.58, 67.4109, 0, 0, 100, 0, 0),
(934, 4, -9271.06, -2266.03, 66.2466, 0, 0, 100, 0, 0),
(934, 3, -9270.65, -2245.76, 64.0462, 0, 0, 100, 0, 0),
(934, 2, -9269.66, -2222.43, 64.0023, 0, 0, 100, 0, 0),
(934, 1, -9268.26, -2200.00, 64.0579, 0, 0, 100, 0, 0),
(934, 19, -9285.21, -2216.08, 63.2600, 0, 0, 100, 0, 0),
(934, 20, -9284.11, -2226.77, 63.3911, 0, 0, 100, 0, 0),
(934, 21, -9283.65, -2243.70, 63.5711, 0, 0, 100, 0, 0),
(934, 22, -9281.13, -2260.52, 65.9722, 0, 0, 100, 0, 0),
(934, 23, -9275.42, -2273.58, 67.4109, 0, 0, 100, 0, 0),
(934, 24, -9271.06, -2266.03, 66.2466, 0, 0, 100, 0, 0),
(934, 25, -9270.65, -2245.76, 64.0462, 0, 0, 100, 0, 0),
(934, 26, -9269.66, -2222.43, 64.0023, 0, 0, 100, 0, 0),
(934, 27, -9268.26, -2200.00, 64.0579, 0, 0, 100, 0, 0),
(934, 28, -9266.45, -2182.23, 64.0896, 0, 0, 100, 0, 0);
-- Classic [1169]
-- Gnomeregan - Model Size
UPDATE creature_template SET Scale = 0 WHERE Entry = 6223;
UPDATE creature_template SET Scale = 0 WHERE Entry = 6222;
UPDATE creature_template SET Scale = 0 WHERE Entry = 6224;
UPDATE creature_template SET Scale = 0 WHERE Entry = 7603;
UPDATE creature_template SET Scale = 0 WHERE Entry = 6391;
UPDATE creature_template SET Scale = 0 WHERE Entry = 6392;
UPDATE creature_template SET Scale = 0 WHERE Entry = 6407;
UPDATE creature_template SET Scale = 0 WHERE Entry = 9676;
-- Classic [1168]
-- Gnomeregan - Viscous Fallout
UPDATE creature SET modelid = 0, position_x = -471.39, position_y = 48.4756, position_z = -207.954, orientation = 6.03304, MovementType = 2 WHERE guid = 30137;
DELETE FROM creature_movement_template WHERE entry = 7079;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(7079, 1, -440.007, 40.4573, -208.528, 0, 0, 100, 0, 0),
(7079, 2, -403.428, 48.1517, -208.920, 0, 0, 100, 0, 0),
(7079, 3, -393.459, 63.5904, -209.678, 0, 0, 100, 0, 0),
(7079, 4, -406.709, 75.8918, -210.990, 0, 0, 100, 0, 0),
(7079, 5, -421.506, 82.5705, -210.045, 0, 0, 100, 0, 0),
(7079, 6, -428.759, 100.234, -209.626, 0, 0, 100, 0, 0),
(7079, 7, -409.098, 109.523, -210.525, 0, 0, 100, 0, 0),
(7079, 8, -393.271, 112.121, -209.804, 0, 0, 100, 0, 0),
(7079, 9, -380.830, 95.3402, -210.582, 0, 0, 100, 0, 0),
(7079, 10, -372.115, 112.371, -209.234, 0, 0, 100, 0, 0),
(7079, 11, -372.697, 137.794, -208.769, 0, 0, 100, 0, 0),
(7079, 12, -396.703, 139.501, -210.381, 0, 0, 100, 0, 0),
(7079, 13, -372.697, 137.794, -208.769, 0, 0, 100, 0, 0),
(7079, 14, -396.703, 139.501, -210.381, 0, 0, 100, 0, 0),
(7079, 15, -372.697, 137.794, -208.769, 0, 0, 100, 0, 0),
(7079, 16, -372.115, 112.371, -209.234, 0, 0, 100, 0, 0),
(7079, 17, -380.830, 95.3402, -210.582, 0, 0, 100, 0, 0),
(7079, 18, -393.271, 112.121, -209.804, 0, 0, 100, 0, 0),
(7079, 19, -409.098, 109.523, -210.525, 0, 0, 100, 0, 0),
(7079, 20, -428.759, 100.234, -209.626, 0, 0, 100, 0, 0),
(7079, 21, -421.506, 82.5705, -210.045, 0, 0, 100, 0, 0),
(7079, 22, -406.709, 75.8918, -210.990, 0, 0, 100, 0, 0),
(7079, 23, -393.459, 63.5904, -209.678, 0, 0, 100, 0, 0),
(7079, 24, -403.428, 48.1517, -208.920, 0, 0, 100, 0, 0),
(7079, 25, -440.007, 40.4573, -208.528, 0, 0, 100, 0, 0),
(7079, 26, -471.277, 47.9361, -208.061, 0, 0, 100, 0, 0);
-- Classic [1167]
-- Gnomeregan - Mobile Alert System
UPDATE creature SET modelid = 0, position_x = -445.317, position_y = 207.375, position_z = -207.823, orientation = 1.58319, spawntimesecs = 1800, spawndist = 0, MovementType = 2 WHERE guid = 30140;
DELETE FROM creature_movement WHERE id = 30140;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(30140, 1, -445.727, 240.449, -207.960, 0, 0, 100, 0, 0),
(30140, 2, -452.575, 254.154, -207.934, 0, 0, 100, 0, 0),
(30140, 3, -470.160, 262.695, -207.917, 0, 0, 100, 0, 0),
(30140, 4, -513.443, 262.288, -207.904, 0, 0, 100, 0, 0),
(30140, 5, -546.600, 275.132, -207.880, 0, 0, 100, 0, 0),
(30140, 6, -561.003, 309.061, -213.367, 0, 0, 100, 0, 0),
(30140, 7, -559.208, 348.035, -226.040, 0, 0, 100, 0, 0),
(30140, 8, -552.732, 385.997, -231.667, 0, 0, 100, 0, 0),
(30140, 9, -546.476, 411.262, -230.601, 0, 0, 100, 0, 0),
(30140, 10, -517.223, 411.910, -230.601, 0, 0, 100, 0, 0),
(30140, 11, -489.928, 432.148, -230.601, 0, 0, 100, 0, 0),
(30140, 12, -466.543, 462.255, -230.601, 0, 0, 100, 0, 0),
(30140, 13, -455.236, 500.509, -230.601, 0, 0, 100, 0, 0),
(30140, 14, -462.632, 545.029, -230.601, 0, 0, 100, 0, 0),
(30140, 15, -485.715, 575.266, -230.601, 0, 0, 100, 0, 0),
(30140, 16, -527.179, 599.641, -230.601, 0, 0, 100, 0, 0),
(30140, 17, -544.401, 593.652, -230.601, 0, 0, 100, 0, 0),
(30140, 18, -569.650, 599.277, -230.601, 0, 0, 100, 0, 0),
(30140, 19, -607.075, 581.481, -230.601, 0, 0, 100, 0, 0),
(30140, 20, -632.904, 554.956, -230.601, 0, 0, 100, 0, 0),
(30140, 21, -645.848, 527.711, -230.601, 0, 0, 100, 0, 0),
(30140, 22, -650.649, 489.373, -230.601, 0, 0, 100, 0, 0),
(30140, 23, -645.848, 527.711, -230.601, 0, 0, 100, 0, 0),
(30140, 24, -632.904, 554.956, -230.601, 0, 0, 100, 0, 0),
(30140, 25, -607.075, 581.481, -230.601, 0, 0, 100, 0, 0),
(30140, 26, -569.650, 599.277, -230.601, 0, 0, 100, 0, 0),
(30140, 27, -544.401, 593.652, -230.601, 0, 0, 100, 0, 0),
(30140, 28, -527.179, 599.641, -230.601, 0, 0, 100, 0, 0),
(30140, 29, -485.715, 575.266, -230.601, 0, 0, 100, 0, 0),
(30140, 30, -462.632, 545.029, -230.601, 0, 0, 100, 0, 0),
(30140, 31, -455.176, 500.711, -230.601, 0, 0, 100, 0, 0),
(30140, 32, -466.543, 462.255, -230.601, 0, 0, 100, 0, 0),
(30140, 33, -489.928, 432.148, -230.601, 0, 0, 100, 0, 0),
(30140, 34, -517.223, 411.910, -230.601, 0, 0, 100, 0, 0),
(30140, 35, -546.476, 411.262, -230.601, 0, 0, 100, 0, 0),
(30140, 36, -552.732, 385.997, -231.667, 0, 0, 100, 0, 0),
(30140, 37, -559.208, 348.035, -226.040, 0, 0, 100, 0, 0),
(30140, 38, -561.003, 309.061, -213.367, 0, 0, 100, 0, 0),
(30140, 39, -547.065, 275.352, -207.906, 0, 0, 100, 0, 0),
(30140, 40, -513.443, 262.288, -207.904, 0, 0, 100, 0, 0),
(30140, 41, -470.218, 262.723, -207.937, 0, 0, 100, 0, 0),
(30140, 42, -452.575, 254.154, -207.934, 0, 0, 100, 0, 0),
(30140, 43, -445.727, 240.449, -207.960, 0, 0, 100, 0, 0),
(30140, 44, -446.388, 214.340, -207.907, 0, 0, 100, 0, 0);
-- Missing added - UDB free guids reused
DELETE FROM creature WHERE guid = 68890;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, curhealth, curmana, spawndist, MovementType) VALUES
(68890, 7849, 90, 1, 1, -894.855, 397.924, -272.519, 1.40283, 1800, 70, 0, 0, 2);
DELETE FROM creature_movement WHERE id = 68890;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(68890, 1, -890.732, 422.234, -272.596, 0, 0, 100, 0, 0),
(68890, 2, -880.317, 431.704, -272.596, 0, 0, 100, 0, 0),
(68890, 3, -853.094, 428.800, -272.596, 0, 0, 100, 0, 0),
(68890, 4, -829.955, 426.405, -272.602, 0, 0, 100, 0, 0),
(68890, 5, -784.237, 419.781, -272.578, 0, 0, 100, 0, 0),
(68890, 6, -761.810, 411.242, -272.578, 0, 0, 100, 0, 0),
(68890, 7, -756.636, 388.790, -272.578, 0, 0, 100, 0, 0),
(68890, 8, -762.376, 360.669, -272.596, 0, 0, 100, 0, 0),
(68890, 9, -768.185, 319.563, -272.596, 0, 0, 100, 0, 0),
(68890, 10, -776.393, 288.366, -272.596, 0, 0, 100, 0, 0),
(68890, 11, -798.922, 281.951, -272.596, 0, 0, 100, 0, 0),
(68890, 12, -840.639, 289.840, -272.607, 0, 0, 100, 0, 0),
(68890, 13, -882.196, 294.143, -272.596, 0, 0, 100, 0, 0),
(68890, 14, -901.243, 300.200, -272.596, 0, 0, 100, 0, 0),
(68890, 15, -906.519, 327.149, -272.596, 0, 0, 100, 0, 0),
(68890, 16, -900.599, 360.755, -272.596, 0, 0, 100, 0, 0),
(68890, 17, -895.579, 397.062, -272.596, 0, 0, 100, 0, 0);
-- Missing added - UDB free guids reused
DELETE FROM creature WHERE guid = 80587;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, curhealth, curmana, spawndist, MovementType) VALUES
(80587, 7849, 90, 1, 1, -644.602, 512.406, -272.998, 1.35457, 1800, 70, 0, 0, 2);
DELETE FROM creature_movement WHERE id = 80587;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(80587, 45, -739.957, 557.628, -303.783, 0, 0, 100, 0, 0),
(80587, 46, -717.644, 552.360, -300.474, 0, 0, 100, 0, 0),
(80587, 47, -694.687, 547.437, -293.879, 0, 0, 100, 0, 0),
(80587, 48, -670.469, 540.196, -285.783, 0, 0, 100, 0, 0),
(80587, 49, -640.771, 529.846, -273.061, 0, 0, 100, 0, 0),
(80587, 50, -643.777, 511.738, -273.062, 0, 0, 100, 0, 0),
(80587, 44, -754.181, 572.554, -303.783, 0, 0, 100, 0, 0),
(80587, 43, -754.067, 592.240, -303.783, 0, 0, 100, 0, 0),
(80587, 42, -748.994, 614.791, -310.535, 0, 0, 100, 0, 0),
(80587, 41, -741.027, 641.893, -319.187, 0, 0, 100, 0, 0),
(80587, 40, -735.820, 670.718, -328.270, 0, 0, 100, 0, 0),
(80587, 39, -727.032, 694.194, -330.783, 0, 0, 100, 0, 0),
(80587, 38, -707.421, 706.391, -330.783, 0, 0, 100, 0, 0),
(80587, 37, -684.131, 701.498, -330.962, 0, 0, 100, 0, 0),
(80587, 36, -666.277, 697.114, -331.799, 0, 0, 100, 0, 0),
(80587, 35, -651.783, 694.365, -328.874, 0, 0, 100, 0, 0),
(80587, 34, -632.855, 692.141, -327.059, 0, 0, 100, 0, 0),
(80587, 33, -637.027, 706.925, -327.056, 0, 0, 100, 0, 0),
(80587, 32, -667.857, 715.439, -324.987, 0, 0, 100, 0, 0),
(80587, 31, -695.022, 722.327, -318.060, 0, 0, 100, 0, 0),
(80587, 30, -721.290, 719.670, -318.060, 0, 0, 100, 0, 0),
(80587, 29, -739.127, 702.301, -318.060, 0, 0, 100, 0, 0),
(80587, 28, -746.609, 687.276, -318.060, 0, 0, 100, 0, 0),
(80587, 27, -752.096, 660.962, -309.737, 0, 0, 100, 0, 0),
(80587, 26, -758.149, 636.062, -302.208, 0, 0, 100, 0, 0),
(80587, 25, -766.533, 606.338, -292.413, 0, 0, 100, 0, 0),
(80587, 24, -758.149, 636.062, -302.208, 0, 0, 100, 0, 0),
(80587, 23, -752.096, 660.962, -309.737, 0, 0, 100, 0, 0),
(80587, 22, -746.609, 687.276, -318.060, 0, 0, 100, 0, 0),
(80587, 21, -739.127, 702.301, -318.060, 0, 0, 100, 0, 0),
(80587, 20, -721.290, 719.670, -318.060, 0, 0, 100, 0, 0),
(80587, 19, -695.022, 722.327, -318.060, 0, 0, 100, 0, 0),
(80587, 18, -667.857, 715.439, -324.987, 0, 0, 100, 0, 0),
(80587, 17, -637.027, 706.925, -327.056, 0, 0, 100, 0, 0),
(80587, 16, -632.855, 692.141, -327.059, 0, 0, 100, 0, 0),
(80587, 15, -651.783, 694.365, -328.874, 0, 0, 100, 0, 0),
(80587, 14, -666.277, 697.114, -331.799, 0, 0, 100, 0, 0),
(80587, 13, -684.131, 701.498, -330.962, 0, 0, 100, 0, 0),
(80587, 12, -707.421, 706.391, -330.783, 0, 0, 100, 0, 0),
(80587, 11, -727.032, 694.194, -330.783, 0, 0, 100, 0, 0),
(80587, 10, -735.820, 670.718, -328.270, 0, 0, 100, 0, 0),
(80587, 9, -741.027, 641.893, -319.187, 0, 0, 100, 0, 0),
(80587, 8, -748.994, 614.791, -310.535, 0, 0, 100, 0, 0),
(80587, 7, -754.067, 592.240, -303.783, 0, 0, 100, 0, 0),
(80587, 6, -754.181, 572.554, -303.783, 0, 0, 100, 0, 0),
(80587, 5, -739.957, 557.628, -303.783, 0, 0, 100, 0, 0),
(80587, 4, -717.644, 552.360, -300.474, 0, 0, 100, 0, 0),
(80587, 3, -694.687, 547.437, -293.879, 0, 0, 100, 0, 0),
(80587, 2, -670.469, 540.196, -285.783, 0, 0, 100, 0, 0),
(80587, 1, -640.771, 529.846, -273.061, 0, 0, 100, 0, 0);
-- Classic [1158]
-- Darnassus - Huntress Leafrunner
UPDATE creature SET modelid = 0, position_x = 9629.786, position_y = 2347.465, position_z = 1327.814, orientation = 6.15194, spawndist = 0 WHERE guid = 46220;
DELETE FROM creature_movement WHERE id = 46220;
UPDATE creature_template SET MovementType = 2 WHERE Entry = 14380;
DELETE FROM creature_movement_template WHERE entry = 14380;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(14380, 1, 9638.431, 2346.324, 1327.555, 0, 0, 100, 0, 0),
(14380, 2, 9642.419, 2345.290, 1327.555, 0, 0, 100, 0, 0),
(14380, 3, 9646.583, 2338.545, 1327.555, 0, 0, 100, 0, 0),
(14380, 4, 9651.487, 2331.639, 1327.608, 0, 0, 100, 0, 0),
(14380, 5, 9657.660, 2327.231, 1327.608, 0, 0, 100, 0, 0),
(14380, 6, 9666.333, 2319.357, 1327.700, 0, 0, 100, 0, 0),
(14380, 7, 9675.031, 2310.875, 1327.615, 0, 0, 100, 0, 0),
(14380, 8, 9683.046, 2301.887, 1327.615, 0, 0, 100, 0, 0),
(14380, 9, 9690.498, 2290.400, 1327.693, 0, 0, 100, 0, 0),
(14380, 10, 9696.083, 2281.541, 1327.615, 0, 0, 100, 0, 0),
(14380, 11, 9703.657, 2272.612, 1327.601, 0, 0, 100, 0, 0),
(14380, 12, 9713.594, 2265.065, 1327.558, 0, 0, 100, 0, 0),
(14380, 13, 9722.450, 2259.798, 1327.558, 0, 0, 100, 0, 0),
(14380, 14, 9728.661, 2257.945, 1327.558, 0, 0, 100, 0, 0),
(14380, 15, 9732.499, 2259.535, 1327.558, 0, 0, 100, 0, 0),
(14380, 16, 9739.262, 2264.789, 1327.610, 0, 0, 100, 0, 0),
(14380, 17, 9744.646, 2271.522, 1327.745, 0, 0, 100, 0, 0),
(14380, 18, 9753.025, 2281.126, 1327.745, 0, 0, 100, 0, 0),
(14380, 19, 9761.169, 2288.400, 1327.745, 0, 0, 100, 0, 0),
(14380, 20, 9766.561, 2293.850, 1327.745, 0, 0, 100, 0, 0),
(14380, 21, 9768.287, 2297.788, 1327.602, 0, 0, 100, 0, 0),
(14380, 22, 9767.628, 2303.676, 1327.534, 0, 0, 100, 0, 0),
(14380, 23, 9763.534, 2310.935, 1327.917, 0, 0, 100, 0, 0),
(14380, 24, 9758.542, 2320.253, 1328.392, 0, 0, 100, 0, 0),
(14380, 25, 9752.692, 2329.334, 1328.729, 0, 0, 100, 0, 0),
(14380, 26, 9746.058, 2335.501, 1328.771, 0, 0, 100, 0, 0),
(14380, 27, 9740.735, 2340.184, 1328.285, 0, 0, 100, 0, 0),
(14380, 28, 9733.448, 2342.196, 1327.968, 0, 0, 100, 0, 0),
(14380, 29, 9728.343, 2347.025, 1327.624, 0, 0, 100, 0, 0),
(14380, 30, 9724.544, 2351.812, 1327.499, 0, 0, 100, 0, 0),
(14380, 31, 9719.772, 2357.380, 1327.499, 0, 0, 100, 0, 0),
(14380, 32, 9716.239, 2359.507, 1327.499, 0, 0, 100, 0, 0),
(14380, 33, 9713.919, 2358.900, 1327.499, 0, 0, 100, 0, 0),
(14380, 34, 9713.397, 2357.470, 1327.499, 0, 0, 100, 0, 0),
(14380, 35, 9715.076, 2355.188, 1327.499, 0, 0, 100, 0, 0),
(14380, 36, 9722.508, 2348.681, 1327.387, 0, 0, 100, 0, 0),
(14380, 37, 9731.412, 2339.112, 1327.911, 0, 0, 100, 0, 0),
(14380, 38, 9738.889, 2335.746, 1328.719, 0, 0, 100, 0, 0),
(14380, 39, 9742.572, 2333.895, 1328.969, 0, 0, 100, 0, 0),
(14380, 40, 9748.336, 2329.593, 1328.979, 0, 0, 100, 0, 0),
(14380, 41, 9752.227, 2325.577, 1328.802, 0, 0, 100, 0, 0),
(14380, 42, 9755.486, 2319.336, 1328.479, 0, 0, 100, 0, 0),
(14380, 43, 9756.311, 2314.428, 1328.285, 0, 0, 100, 0, 0),
(14380, 44, 9760.533, 2310.068, 1327.979, 0, 0, 100, 0, 0),
(14380, 45, 9762.571, 2305.798, 1327.908, 0, 0, 100, 0, 0),
(14380, 46, 9771.149, 2298.075, 1327.395, 0, 0, 100, 0, 0),
(14380, 47, 9779.689, 2289.906, 1327.500, 0, 0, 100, 0, 0),
(14380, 48, 9783.950, 2287.094, 1327.588, 0, 0, 100, 0, 0),
(14380, 49, 9791.250, 2283.944, 1327.716, 0, 0, 100, 0, 0),
(14380, 50, 9798.119, 2283.382, 1327.408, 0, 0, 100, 0, 0),
(14380, 51, 9804.935, 2283.008, 1326.901, 0, 0, 100, 0, 0),
(14380, 52, 9814.322, 2278.783, 1327.145, 0, 0, 100, 0, 0),
(14380, 53, 9822.917, 2276.220, 1327.083, 0, 0, 100, 0, 0),
(14380, 54, 9832.749, 2277.004, 1327.020, 0, 0, 100, 0, 0),
(14380, 55, 9843.302, 2278.076, 1326.685, 0, 0, 100, 0, 0),
(14380, 56, 9858.146, 2278.747, 1327.309, 0, 0, 100, 0, 0),
(14380, 57, 9869.672, 2278.275, 1328.654, 0, 0, 100, 0, 0),
(14380, 58, 9880.758, 2278.403, 1333.929, 0, 0, 100, 0, 0),
(14380, 59, 9890.188, 2279.551, 1338.621, 0, 0, 100, 0, 0),
(14380, 60, 9899.403, 2279.797, 1341.390, 0, 0, 100, 0, 0),
(14380, 61, 9912.734, 2278.861, 1341.390, 0, 0, 100, 0, 0),
(14380, 62, 9924.001, 2278.351, 1341.390, 0, 0, 100, 0, 0),
(14380, 63, 9936.090, 2278.166, 1341.390, 0, 0, 100, 0, 0),
(14380, 64, 9943.570, 2279.430, 1341.390, 0, 0, 100, 0, 0),
(14380, 65, 9947.863, 2282.394, 1341.390, 0, 0, 100, 0, 0),
(14380, 66, 9949.195, 2285.000, 1341.390, 0, 0, 100, 0, 0),
(14380, 67, 9949.310, 2287.860, 1341.390, 0, 0, 100, 0, 0),
(14380, 68, 9949.212, 2293.424, 1341.014, 0, 0, 100, 0, 0),
(14380, 69, 9948.451, 2304.298, 1336.548, 0, 0, 100, 0, 0),
(14380, 70, 9948.394, 2313.227, 1336.548, 0, 0, 100, 0, 0),
(14380, 71, 9948.185, 2323.522, 1335.337, 0, 0, 100, 0, 0),
(14380, 72, 9947.305, 2336.464, 1331.538, 0, 0, 100, 0, 0),
(14380, 73, 9946.194, 2354.281, 1330.606, 0, 0, 100, 0, 0),
(14380, 74, 9945.447, 2375.022, 1329.949, 0, 0, 100, 0, 0),
(14380, 75, 9944.130, 2409.817, 1327.685, 0, 0, 100, 0, 0),
(14380, 76, 9942.999, 2428.544, 1325.305, 0, 0, 100, 0, 0),
(14380, 77, 9942.942, 2447.719, 1322.232, 0, 0, 100, 0, 0),
(14380, 78, 9944.978, 2470.112, 1317.458, 0, 0, 100, 0, 0),
(14380, 79, 9946.156, 2480.067, 1316.245, 0, 0, 100, 0, 0),
(14380, 80, 9945.303, 2483.645, 1316.221, 0, 0, 100, 0, 0),
(14380, 81, 9937.996, 2489.999, 1317.360, 0, 0, 100, 0, 0),
(14380, 82, 9932.352, 2496.281, 1317.902, 0, 0, 100, 0, 0),
(14380, 83, 9923.413, 2503.712, 1318.043, 0, 0, 100, 0, 0),
(14380, 84, 9919.168, 2505.463, 1317.522, 0, 0, 100, 0, 0),
(14380, 85, 9915.682, 2505.947, 1316.991, 0, 0, 100, 0, 0),
(14380, 86, 9907.494, 2505.247, 1316.045, 0, 0, 100, 0, 0),
(14380, 87, 9899.113, 2503.240, 1318.117, 0, 0, 100, 0, 0),
(14380, 88, 9888.548, 2501.814, 1317.874, 0, 0, 100, 0, 0),
(14380, 89, 9882.413, 2498.562, 1315.876, 0, 0, 100, 0, 0),
(14380, 90, 9878.960, 2494.411, 1315.862, 0, 0, 100, 0, 0),
(14380, 91, 9876.619, 2488.410, 1315.853, 0, 0, 100, 0, 0),
(14380, 92, 9876.187, 2481.462, 1316.107, 0, 0, 100, 0, 0),
(14380, 93, 9877.872, 2476.743, 1317.799, 0, 0, 100, 0, 0),
(14380, 94, 9880.842, 2470.346, 1317.878, 0, 0, 100, 0, 0),
(14380, 95, 9883.099, 2465.261, 1317.301, 0, 0, 100, 0, 0),
(14380, 96, 9886.263, 2458.912, 1317.370, 0, 0, 100, 0, 0),
(14380, 97, 9886.657, 2453.557, 1317.245, 0, 0, 100, 0, 0),
(14380, 98, 9883.715, 2439.952, 1316.120, 0, 0, 100, 0, 0),
(14380, 99, 9878.992, 2428.082, 1316.381, 0, 0, 100, 0, 0),
(14380, 100, 9863.950, 2399.860, 1316.916, 0, 0, 100, 0, 0),
(14380, 101, 9850.006, 2376.192, 1316.352, 0, 0, 100, 0, 0),
(14380, 102, 9843.149, 2368.845, 1315.745, 0, 0, 100, 0, 0),
(14380, 103, 9840.700, 2365.624, 1316.859, 0, 0, 100, 0, 0),
(14380, 104, 9837.719, 2360.185, 1316.715, 0, 0, 100, 0, 0),
(14380, 105, 9838.506, 2348.590, 1314.842, 0, 0, 100, 0, 0),
(14380, 106, 9839.290, 2340.451, 1314.305, 0, 0, 100, 0, 0),
(14380, 107, 9839.903, 2333.726, 1314.305, 0, 0, 100, 0, 0),
(14380, 108, 9839.616, 2321.726, 1315.656, 0, 0, 100, 0, 0),
(14380, 109, 9839.226, 2310.679, 1318.187, 0, 0, 100, 0, 0),
(14380, 110, 9840.335, 2308.157, 1318.489, 0, 0, 100, 0, 0),
(14380, 111, 9843.700, 2303.417, 1319.433, 0, 0, 100, 0, 0),
(14380, 112, 9846.722, 2298.525, 1320.629, 0, 0, 100, 0, 0),
(14380, 113, 9849.659, 2288.964, 1324.027, 0, 0, 100, 0, 0),
(14380, 114, 9850.785, 2280.185, 1326.279, 0, 0, 100, 0, 0),
(14380, 115, 9851.716, 2269.079, 1327.139, 0, 0, 100, 0, 0),
(14380, 116, 9851.055, 2260.467, 1327.667, 0, 0, 100, 0, 0),
(14380, 117, 9849.521, 2250.543, 1327.667, 0, 0, 100, 0, 0),
(14380, 118, 9846.156, 2241.251, 1327.768, 0, 0, 100, 0, 0),
(14380, 119, 9842.947, 2232.971, 1327.705, 0, 0, 100, 0, 0),
(14380, 120, 9838.708, 2226.465, 1327.705, 0, 0, 100, 0, 0),
(14380, 121, 9835.183, 2221.209, 1327.830, 0, 0, 100, 0, 0),
(14380, 122, 9830.405, 2218.199, 1327.933, 0, 0, 100, 0, 0),
(14380, 123, 9824.442, 2216.953, 1327.894, 0, 0, 100, 0, 0),
(14380, 124, 9816.691, 2216.248, 1327.757, 0, 0, 100, 0, 0),
(14380, 125, 9806.703, 2217.334, 1327.769, 0, 0, 100, 0, 0),
(14380, 126, 9798.703, 2220.233, 1327.714, 0, 0, 100, 0, 0),
(14380, 127, 9791.346, 2224.926, 1327.681, 0, 0, 100, 0, 0),
(14380, 128, 9781.249, 2231.720, 1327.705, 0, 0, 100, 0, 0),
(14380, 129, 9769.538, 2238.827, 1327.769, 0, 0, 100, 0, 0),
(14380, 130, 9759.598, 2244.793, 1327.735, 0, 0, 100, 0, 0),
(14380, 131, 9747.959, 2250.432, 1327.610, 0, 0, 100, 0, 0),
(14380, 132, 9739.264, 2255.175, 1327.610, 0, 0, 100, 0, 0),
(14380, 133, 9727.248, 2261.617, 1327.558, 0, 0, 100, 0, 0),
(14380, 134, 9719.518, 2265.091, 1327.558, 0, 0, 100, 0, 0),
(14380, 135, 9712.614, 2270.799, 1327.601, 0, 0, 100, 0, 0),
(14380, 136, 9704.029, 2278.192, 1327.601, 0, 0, 100, 0, 0),
(14380, 137, 9698.979, 2283.580, 1327.615, 0, 0, 100, 0, 0),
(14380, 138, 9696.374, 2289.908, 1327.615, 0, 0, 100, 0, 0),
(14380, 139, 9690.615, 2298.115, 1327.615, 0, 0, 100, 0, 0),
(14380, 140, 9681.883, 2308.396, 1327.615, 0, 0, 100, 0, 0),
(14380, 141, 9673.433, 2317.446, 1327.615, 0, 0, 100, 0, 0),
(14380, 142, 9667.442, 2324.237, 1327.615, 0, 0, 100, 0, 0),
(14380, 143, 9662.449, 2327.011, 1327.608, 0, 0, 100, 0, 0),
(14380, 144, 9658.771, 2330.163, 1327.608, 0, 0, 100, 0, 0),
(14380, 145, 9650.278, 2338.987, 1327.555, 0, 0, 100, 0, 0),
(14380, 146, 9647.562, 2342.802, 1327.555, 0, 0, 100, 0, 0),
(14380, 147, 9644.049, 2347.352, 1327.555, 0, 0, 100, 0, 0),
(14380, 148, 9640.743, 2349.446, 1327.599, 0, 0, 100, 0, 0),
(14380, 149, 9636.612, 2349.854, 1327.769, 0, 0, 100, 0, 0),
(14380, 150, 9632.391, 2350.492, 1327.862, 0, 0, 100, 0, 0),
(14380, 151, 9630.265, 2349.638, 1327.884, 0, 0, 100, 0, 0),
(14380, 152, 9632.665, 2347.168, 1327.848, 0, 0, 100, 0, 0);
-- Classic [1155]
-- Darnassus - Huntress Ravenoak
UPDATE creature SET modelid = 0, position_x = 10130.43, position_y = 2577.263, position_z = 1324.224, orientation = 5.441463, spawndist = 0, MovementType = 2 WHERE guid = 46219;
DELETE FROM creature_movement WHERE id = 46219;
UPDATE creature_template SET MovementType = 2 WHERE Entry = 14379;
DELETE FROM creature_movement_template WHERE entry = 14379;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(14379, 1, 10141.19, 2565.228, 1321.783, 0, 0, 100, 0, 0),
(14379, 2, 10142.36, 2562.295, 1321.798, 0, 0, 100, 0, 0),
(14379, 3, 10143.79, 2553.874, 1321.798, 0, 0, 100, 0, 0),
(14379, 4, 10140.74, 2548.878, 1321.923, 0, 0, 100, 0, 0),
(14379, 5, 10120.08, 2539.568, 1321.684, 0, 0, 100, 0, 0),
(14379, 6, 10107.54, 2537.902, 1320.304, 0, 0, 100, 0, 0),
(14379, 7, 10098.92, 2536.347, 1319.321, 0, 0, 100, 0, 0),
(14379, 8, 10090.91, 2529.963, 1317.507, 0, 0, 100, 0, 0),
(14379, 9, 10090.29, 2526.435, 1317.594, 0, 0, 100, 0, 0),
(14379, 10, 10099.54, 2510.198, 1317.763, 0, 0, 100, 0, 0),
(14379, 11, 10108.54, 2492.170, 1317.602, 0, 0, 100, 0, 0),
(14379, 12, 10109.87, 2483.666, 1317.563, 0, 0, 100, 0, 0),
(14379, 13, 10104.17, 2464.978, 1317.459, 0, 0, 100, 0, 0),
(14379, 14, 10105.29, 2454.704, 1318.763, 0, 0, 100, 0, 0),
(14379, 15, 10106.12, 2442.883, 1318.861, 0, 0, 100, 0, 0),
(14379, 16, 10104.32, 2411.591, 1316.345, 0, 0, 100, 0, 0),
(14379, 17, 10098.77, 2392.371, 1316.550, 0, 0, 100, 0, 0),
(14379, 18, 10099.89, 2389.500, 1316.604, 0, 0, 100, 0, 0),
(14379, 19, 10107.35, 2385.018, 1316.978, 0, 0, 100, 0, 0),
(14379, 20, 10115.67, 2379.915, 1317.353, 0, 0, 100, 0, 0),
(14379, 21, 10127.53, 2374.583, 1319.478, 0, 0, 100, 0, 0),
(14379, 22, 10133.71, 2372.879, 1320.352, 0, 0, 100, 0, 0),
(14379, 23, 10142.16, 2372.354, 1321.360, 0, 0, 100, 0, 0),
(14379, 24, 10152.84, 2371.748, 1323.194, 0, 0, 100, 0, 0),
(14379, 25, 10163.95, 2367.417, 1324.744, 0, 0, 100, 0, 0),
(14379, 26, 10169.94, 2361.327, 1326.082, 0, 0, 100, 0, 0),
(14379, 27, 10172.47, 2350.917, 1327.884, 0, 0, 100, 0, 0),
(14379, 28, 10174.81, 2346.637, 1328.173, 0, 0, 100, 0, 0),
(14379, 29, 10182.47, 2339.694, 1328.039, 0, 0, 100, 0, 0),
(14379, 30, 10185.93, 2333.111, 1327.829, 0, 0, 100, 0, 0),
(14379, 31, 10186.51, 2328.583, 1327.898, 0, 0, 100, 0, 0),
(14379, 32, 10181.39, 2314.363, 1327.830, 0, 0, 100, 0, 0),
(14379, 33, 10170.86, 2294.655, 1327.872, 0, 0, 100, 0, 0),
(14379, 34, 10155.12, 2273.715, 1328.549, 0, 0, 100, 0, 0),
(14379, 35, 10140.39, 2259.703, 1328.087, 0, 0, 100, 0, 0),
(14379, 36, 10131.01, 2249.278, 1327.739, 0, 0, 100, 0, 0),
(14379, 37, 10126.19, 2246.830, 1327.705, 0, 0, 100, 0, 0),
(14379, 38, 10120.07, 2247.956, 1327.580, 0, 0, 100, 0, 0),
(14379, 39, 10114.01, 2253.089, 1327.580, 0, 0, 100, 0, 0),
(14379, 40, 10098.96, 2271.402, 1328.175, 0, 0, 100, 0, 0),
(14379, 41, 10088.49, 2287.248, 1329.363, 0, 0, 100, 0, 0),
(14379, 42, 10081.59, 2295.719, 1329.564, 0, 0, 100, 0, 0),
(14379, 43, 10075.93, 2295.842, 1329.488, 0, 0, 100, 0, 0),
(14379, 44, 10067.78, 2290.903, 1329.488, 0, 0, 100, 0, 0),
(14379, 45, 10055.84, 2285.361, 1329.468, 0, 0, 100, 0, 0),
(14379, 46, 10035.52, 2280.124, 1328.993, 0, 0, 100, 0, 0),
(14379, 47, 10019.12, 2281.627, 1335.943, 0, 0, 100, 0, 0),
(14379, 48, 10009.49, 2282.591, 1341.057, 0, 0, 100, 0, 0),
(14379, 49, 10001.86, 2282.778, 1341.390, 0, 0, 100, 0, 0),
(14379, 50, 9974.475, 2279.730, 1341.390, 0, 0, 100, 0, 0),
(14379, 51, 9958.831, 2279.625, 1341.390, 0, 0, 100, 0, 0),
(14379, 52, 9954.916, 2282.523, 1341.390, 0, 0, 100, 0, 0),
(14379, 53, 9950.621, 2289.635, 1341.390, 0, 0, 100, 0, 0),
(14379, 54, 9948.640, 2298.739, 1338.218, 0, 0, 100, 0, 0),
(14379, 55, 9948.245, 2316.274, 1336.548, 0, 0, 100, 0, 0),
(14379, 56, 9947.918, 2327.039, 1334.304, 0, 0, 100, 0, 0),
(14379, 57, 9946.038, 2352.682, 1330.656, 0, 0, 100, 0, 0),
(14379, 58, 9944.608, 2386.319, 1329.331, 0, 0, 100, 0, 0),
(14379, 59, 9942.545, 2429.390, 1325.195, 0, 0, 100, 0, 0),
(14379, 60, 9943.560, 2456.695, 1320.440, 0, 0, 100, 0, 0),
(14379, 61, 9945.888, 2478.355, 1316.335, 0, 0, 100, 0, 0),
(14379, 62, 9945.462, 2483.710, 1316.209, 0, 0, 100, 0, 0),
(14379, 63, 9941.516, 2488.427, 1316.874, 0, 0, 100, 0, 0),
(14379, 64, 9934.638, 2492.629, 1317.829, 0, 0, 100, 0, 0),
(14379, 65, 9931.781, 2496.816, 1317.902, 0, 0, 100, 0, 0),
(14379, 66, 9923.838, 2505.300, 1318.094, 0, 0, 100, 0, 0),
(14379, 67, 9918.912, 2507.741, 1317.503, 0, 0, 100, 0, 0),
(14379, 68, 9915.424, 2512.410, 1317.085, 0, 0, 100, 0, 0),
(14379, 69, 9914.591, 2520.892, 1316.923, 0, 0, 100, 0, 0),
(14379, 70, 9910.341, 2527.942, 1316.421, 0, 0, 100, 0, 0),
(14379, 71, 9909.560, 2533.262, 1316.421, 0, 0, 100, 0, 0),
(14379, 72, 9912.560, 2537.834, 1316.571, 0, 0, 100, 0, 0),
(14379, 73, 9924.190, 2546.505, 1317.251, 0, 0, 100, 0, 0),
(14379, 74, 9941.216, 2553.063, 1316.754, 0, 0, 100, 0, 0),
(14379, 75, 9949.143, 2553.751, 1316.442, 0, 0, 100, 0, 0),
(14379, 76, 9955.251, 2548.693, 1316.787, 0, 0, 100, 0, 0),
(14379, 77, 9961.833, 2545.140, 1316.981, 0, 0, 100, 0, 0),
(14379, 78, 9968.583, 2541.928, 1316.862, 0, 0, 100, 0, 0),
(14379, 79, 9987.741, 2520.834, 1316.185, 0, 0, 100, 0, 0),
(14379, 80, 9993.467, 2514.215, 1316.238, 0, 0, 100, 0, 0),
(14379, 81, 10002.20, 2510.385, 1316.525, 0, 0, 100, 0, 0),
(14379, 82, 10012.16, 2506.149, 1319.015, 0, 0, 100, 0, 0),
(14379, 83, 10031.35, 2500.337, 1318.437, 0, 0, 100, 0, 0),
(14379, 84, 10036.81, 2500.605, 1318.422, 0, 0, 100, 0, 0),
(14379, 85, 10051.14, 2508.172, 1318.381, 0, 0, 100, 0, 0),
(14379, 86, 10062.54, 2514.762, 1320.093, 0, 0, 100, 0, 0),
(14379, 87, 10074.39, 2521.597, 1319.614, 0, 0, 100, 0, 0),
(14379, 88, 10084.52, 2527.638, 1317.594, 0, 0, 100, 0, 0),
(14379, 89, 10089.42, 2533.484, 1317.886, 0, 0, 100, 0, 0),
(14379, 90, 10095.45, 2538.912, 1319.045, 0, 0, 100, 0, 0),
(14379, 91, 10101.06, 2539.833, 1319.652, 0, 0, 100, 0, 0),
(14379, 92, 10116.98, 2542.476, 1321.312, 0, 0, 100, 0, 0),
(14379, 93, 10124.51, 2544.185, 1321.726, 0, 0, 100, 0, 0),
(14379, 94, 10131.54, 2546.765, 1321.837, 0, 0, 100, 0, 0),
(14379, 95, 10136.55, 2550.135, 1321.678, 0, 0, 100, 0, 0),
(14379, 96, 10139.29, 2553.622, 1321.798, 0, 0, 100, 0, 0),
(14379, 97, 10139.45, 2557.882, 1321.923, 0, 0, 100, 0, 0),
(14379, 98, 10138.06, 2563.778, 1322.168, 0, 0, 100, 0, 0),
(14379, 99, 10135.03, 2566.400, 1322.563, 0, 0, 100, 0, 0),
(14379, 100, 10132.25, 2571.297, 1323.270, 0, 0, 100, 0, 0),
(14379, 101, 10131.47, 2574.562, 1323.755, 0, 0, 100, 0, 0),
(14379, 102, 10133.98, 2573.481, 1323.259, 0, 0, 100, 0, 0);
-- Classic [1154]
-- Darnassus - Huntress Skymane 
UPDATE creature SET modelid = 0, position_x = 9937.492, position_y = 2509.925, position_z = 1317.899, orientation = 4.250524, MovementType = 2 WHERE guid = 46216;
DELETE FROM creature_movement WHERE id = 46216;
UPDATE creature_template SET MovementType = 2 WHERE Entry = 14378;
DELETE FROM creature_movement_template WHERE entry = 14378;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(14378, 1, 9934.845, 2504.607, 1317.881, 0, 0, 100, 0, 0),
(14378, 2, 9933.505, 2502.286, 1317.881, 0, 0, 100, 0, 0),
(14378, 3, 9931.775, 2500.849, 1317.921, 0, 0, 100, 0, 0),
(14378, 4, 9929.057, 2500.652, 1317.997, 0, 0, 100, 0, 0),
(14378, 5, 9918.979, 2508.099, 1317.511, 0, 0, 100, 0, 0),
(14378, 6, 9917.283, 2509.890, 1317.308, 0, 0, 100, 0, 0),
(14378, 7, 9915.525, 2521.381, 1317.148, 0, 0, 100, 0, 0),
(14378, 8, 9914.626, 2523.595, 1316.932, 0, 0, 100, 0, 0),
(14378, 9, 9913.533, 2525.348, 1316.690, 0, 0, 100, 0, 0),
(14378, 10, 9907.015, 2533.012, 1316.177, 0, 0, 100, 0, 0),
(14378, 11, 9905.482, 2533.702, 1315.972, 0, 0, 100, 0, 0),
(14378, 12, 9903.213, 2534.096, 1315.589, 0, 0, 100, 0, 0),
(14378, 13, 9896.527, 2534.522, 1316.006, 0, 0, 100, 0, 0),
(14378, 14, 9886.226, 2534.427, 1318.751, 0, 0, 100, 0, 0),
(14378, 15, 9854.982, 2533.488, 1320.892, 0, 0, 100, 0, 0),
(14378, 16, 9825.171, 2532.564, 1321.052, 0, 0, 100, 0, 0),
(14378, 17, 9789.950, 2531.943, 1319.854, 0, 0, 100, 0, 0),
(14378, 18, 9776.548, 2531.544, 1318.925, 0, 0, 100, 0, 0),
(14378, 19, 9769.356, 2531.154, 1320.454, 0, 0, 100, 0, 0),
(14378, 20, 9767.588, 2531.534, 1321.087, 0, 0, 100, 0, 0),
(14378, 21, 9764.525, 2532.300, 1322.156, 0, 0, 100, 0, 0),
(14378, 22, 9736.575, 2537.274, 1331.960, 0, 0, 100, 0, 0),
(14378, 23, 9726.991, 2538.126, 1335.331, 0, 0, 100, 0, 0),
(14378, 24, 9723.632, 2540.354, 1335.677, 0, 0, 100, 0, 0),
(14378, 25, 9721.653, 2542.902, 1335.677, 0, 0, 100, 0, 0),
(14378, 26, 9710.676, 2562.697, 1335.675, 0, 0, 100, 0, 0),
(14378, 27, 9691.403, 2586.067, 1335.676, 0, 0, 100, 0, 0),
(14378, 28, 9666.763, 2605.763, 1335.676, 0, 0, 100, 0, 0),
(14378, 29, 9663.600, 2607.967, 1335.676, 0, 0, 100, 0, 0),
(14378, 30, 9661.927, 2610.403, 1335.676, 0, 0, 100, 0, 0),
(14378, 31, 9661.103, 2613.186, 1335.676, 0, 0, 100, 0, 0),
(14378, 32, 9659.822, 2627.531, 1335.676, 0, 0, 100, 0, 0),
(14378, 33, 9658.547, 2628.941, 1335.676, 0, 0, 100, 0, 0),
(14378, 34, 9654.964, 2629.389, 1335.676, 0, 0, 100, 0, 0),
(14378, 35, 9652.197, 2626.193, 1335.676, 0, 0, 100, 0, 0),
(14378, 36, 9652.265, 2623.642, 1335.676, 0, 0, 100, 0, 0),
(14378, 37, 9653.908, 2602.251, 1335.676, 0, 0, 100, 0, 0),
(14378, 38, 9654.321, 2600.849, 1335.676, 0, 0, 100, 0, 0),
(14378, 39, 9656.183, 2598.450, 1335.676, 0, 0, 100, 0, 0),
(14378, 40, 9661.168, 2596.108, 1335.676, 0, 0, 100, 0, 0),
(14378, 41, 9663.255, 2594.923, 1335.676, 0, 0, 100, 0, 0),
(14378, 42, 9665.192, 2593.212, 1335.676, 0, 0, 100, 0, 0),
(14378, 43, 9683.416, 2575.189, 1335.676, 0, 0, 100, 0, 0),
(14378, 44, 9702.045, 2556.368, 1335.676, 0, 0, 100, 0, 0),
(14378, 45, 9711.033, 2542.860, 1335.680, 0, 0, 100, 0, 0),
(14378, 46, 9712.059, 2513.477, 1335.680, 0, 0, 100, 0, 0),
(14378, 47, 9709.944, 2499.129, 1335.678, 0, 0, 100, 0, 0),
(14378, 48, 9686.857, 2471.142, 1335.676, 0, 0, 100, 0, 0),
(14378, 49, 9661.401, 2446.295, 1335.676, 0, 0, 100, 0, 0),
(14378, 50, 9659.697, 2443.971, 1335.676, 0, 0, 100, 0, 0),
(14378, 51, 9658.896, 2441.078, 1335.676, 0, 0, 100, 0, 0),
(14378, 52, 9658.383, 2437.548, 1335.676, 0, 0, 100, 0, 0),
(14378, 53, 9654.817, 2413.695, 1335.676, 0, 0, 100, 0, 0),
(14378, 54, 9655.167, 2410.476, 1335.676, 0, 0, 100, 0, 0),
(14378, 55, 9656.116, 2408.800, 1335.676, 0, 0, 100, 0, 0),
(14378, 56, 9660.053, 2406.618, 1335.676, 0, 0, 100, 0, 0),
(14378, 57, 9662.481, 2407.192, 1335.676, 0, 0, 100, 0, 0),
(14378, 58, 9664.225, 2408.921, 1335.676, 0, 0, 100, 0, 0),
(14378, 59, 9665.176, 2411.423, 1335.676, 0, 0, 100, 0, 0),
(14378, 60, 9665.354, 2414.144, 1335.676, 0, 0, 100, 0, 0),
(14378, 61, 9664.271, 2432.980, 1335.676, 0, 0, 100, 0, 0),
(14378, 62, 9665.229, 2435.956, 1335.676, 0, 0, 100, 0, 0),
(14378, 63, 9695.222, 2463.222, 1335.677, 0, 0, 100, 0, 0),
(14378, 64, 9713.304, 2489.688, 1335.676, 0, 0, 100, 0, 0),
(14378, 65, 9719.495, 2512.306, 1335.676, 0, 0, 100, 0, 0),
(14378, 66, 9720.287, 2513.848, 1335.676, 0, 0, 100, 0, 0),
(14378, 67, 9722.419, 2515.672, 1335.676, 0, 0, 100, 0, 0),
(14378, 68, 9729.856, 2518.506, 1334.586, 0, 0, 100, 0, 0),
(14378, 69, 9735.124, 2520.266, 1332.734, 0, 0, 100, 0, 0),
(14378, 70, 9736.726, 2520.529, 1332.167, 0, 0, 100, 0, 0),
(14378, 71, 9766.791, 2522.688, 1321.450, 0, 0, 100, 0, 0),
(14378, 72, 9776.266, 2523.301, 1318.891, 0, 0, 100, 0, 0),
(14378, 73, 9807.236, 2524.392, 1320.614, 0, 0, 100, 0, 0),
(14378, 74, 9827.915, 2524.931, 1321.114, 0, 0, 100, 0, 0),
(14378, 75, 9852.384, 2525.862, 1321.083, 0, 0, 100, 0, 0),
(14378, 76, 9878.071, 2526.711, 1319.323, 0, 0, 100, 0, 0),
(14378, 77, 9894.906, 2529.189, 1316.535, 0, 0, 100, 0, 0),
(14378, 78, 9909.726, 2533.668, 1316.378, 0, 0, 100, 0, 0),
(14378, 79, 9910.847, 2535.159, 1316.365, 0, 0, 100, 0, 0),
(14378, 80, 9913.321, 2539.019, 1316.662, 0, 0, 100, 0, 0),
(14378, 81, 9922.596, 2545.774, 1317.307, 0, 0, 100, 0, 0),
(14378, 82, 9939.886, 2553.770, 1316.844, 0, 0, 100, 0, 0),
(14378, 83, 9944.878, 2555.716, 1316.444, 0, 0, 100, 0, 0),
(14378, 84, 9946.142, 2555.788, 1316.317, 0, 0, 100, 0, 0),
(14378, 85, 9970.481, 2541.573, 1316.552, 0, 0, 100, 0, 0),
(14378, 86, 9982.519, 2526.076, 1316.408, 0, 0, 100, 0, 0),
(14378, 87, 9983.063, 2524.382, 1316.468, 0, 0, 100, 0, 0),
(14378, 88, 9982.894, 2522.087, 1316.488, 0, 0, 100, 0, 0),
(14378, 89, 9978.963, 2519.387, 1317.085, 0, 0, 100, 0, 0),
(14378, 90, 9968.582, 2510.826, 1317.692, 0, 0, 100, 0, 0),
(14378, 91, 9966.939, 2506.628, 1317.386, 0, 0, 100, 0, 0),
(14378, 92, 9964.396, 2498.458, 1316.622, 0, 0, 100, 0, 0),
(14378, 93, 9963.428, 2496.605, 1316.495, 0, 0, 100, 0, 0),
(14378, 94, 9961.617, 2494.321, 1316.544, 0, 0, 100, 0, 0),
(14378, 95, 9949.460, 2481.621, 1316.245, 0, 0, 100, 0, 0),
(14378, 96, 9949.141, 2478.519, 1316.245, 0, 0, 100, 0, 0),
(14378, 97, 9949.900, 2444.029, 1323.012, 0, 0, 100, 0, 0),
(14378, 98, 9950.918, 2406.309, 1328.163, 0, 0, 100, 0, 0),
(14378, 99, 9951.813, 2372.257, 1330.051, 0, 0, 100, 0, 0),
(14378, 100, 9952.048, 2347.561, 1330.745, 0, 0, 100, 0, 0),
(14378, 101, 9953.081, 2310.857, 1336.548, 0, 0, 100, 0, 0),
(14378, 102, 9953.782, 2289.469, 1341.390, 0, 0, 100, 0, 0),
(14378, 103, 9953.672, 2270.071, 1340.670, 0, 0, 100, 0, 0),
(14378, 104, 9955.032, 2250.605, 1334.954, 0, 0, 100, 0, 0),
(14378, 105, 9954.898, 2229.241, 1331.776, 0, 0, 100, 0, 0),
(14378, 106, 9955.754, 2200.319, 1328.330, 0, 0, 100, 0, 0),
(14378, 107, 9955.946, 2176.617, 1327.580, 0, 0, 100, 0, 0),
(14378, 108, 9955.340, 2148.661, 1327.830, 0, 0, 100, 0, 0),
(14378, 109, 9953.308, 2119.954, 1327.769, 0, 0, 100, 0, 0),
(14378, 110, 9957.024, 2095.751, 1327.801, 0, 0, 100, 0, 0),
(14378, 111, 9952.513, 2076.105, 1327.801, 0, 0, 100, 0, 0),
(14378, 112, 9952.513, 2073.932, 1327.801, 0, 0, 100, 0, 0),
(14378, 113, 9954.760, 2069.536, 1327.926, 0, 0, 100, 0, 0),
(14378, 114, 9973.545, 2042.184, 1328.137, 0, 0, 100, 0, 0),
(14378, 115, 9974.004, 2040.551, 1328.137, 0, 0, 100, 0, 0),
(14378, 116, 9972.787, 2038.654, 1328.137, 0, 0, 100, 0, 0),
(14378, 117, 9969.603, 2038.984, 1328.137, 0, 0, 100, 0, 0),
(14378, 118, 9967.370, 2040.953, 1328.035, 0, 0, 100, 0, 0),
(14378, 119, 9957.313, 2052.815, 1328.367, 0, 0, 100, 0, 0),
(14378, 120, 9955.881, 2055.001, 1328.329, 0, 0, 100, 0, 0),
(14378, 121, 9954.635, 2057.547, 1328.373, 0, 0, 100, 0, 0),
(14378, 122, 9946.692, 2073.500, 1327.794, 0, 0, 100, 0, 0),
(14378, 123, 9946.453, 2077.417, 1327.801, 0, 0, 100, 0, 0),
(14378, 124, 9951.131, 2094.519, 1327.801, 0, 0, 100, 0, 0),
(14378, 125, 9951.546, 2096.966, 1327.801, 0, 0, 100, 0, 0),
(14378, 126, 9951.196, 2099.706, 1327.801, 0, 0, 100, 0, 0),
(14378, 127, 9950.028, 2136.157, 1327.705, 0, 0, 100, 0, 0),
(14378, 128, 9949.285, 2181.962, 1327.603, 0, 0, 100, 0, 0),
(14378, 129, 9948.413, 2224.646, 1330.972, 0, 0, 100, 0, 0),
(14378, 130, 9949.032, 2253.350, 1335.409, 0, 0, 100, 0, 0),
(14378, 131, 9950.259, 2270.027, 1340.687, 0, 0, 100, 0, 0),
(14378, 132, 9949.621, 2288.903, 1341.390, 0, 0, 100, 0, 0),
(14378, 133, 9948.974, 2311.088, 1336.548, 0, 0, 100, 0, 0),
(14378, 134, 9947.622, 2346.411, 1330.760, 0, 0, 100, 0, 0),
(14378, 135, 9947.481, 2372.315, 1330.039, 0, 0, 100, 0, 0),
(14378, 136, 9947.573, 2406.613, 1328.108, 0, 0, 100, 0, 0),
(14378, 137, 9946.794, 2444.887, 1322.822, 0, 0, 100, 0, 0),
(14378, 138, 9947.043, 2473.771, 1316.543, 0, 0, 100, 0, 0),
(14378, 139, 9946.339, 2481.540, 1316.245, 0, 0, 100, 0, 0),
(14378, 140, 9943.713, 2484.507, 1316.515, 0, 0, 100, 0, 0),
(14378, 141, 9941.126, 2486.058, 1316.745, 0, 0, 100, 0, 0),
(14378, 142, 9933.913, 2491.383, 1317.766, 0, 0, 100, 0, 0),
(14378, 143, 9933.145, 2494.476, 1317.902, 0, 0, 100, 0, 0),
(14378, 144, 9933.655, 2496.918, 1317.870, 0, 0, 100, 0, 0),
(14378, 145, 9936.654, 2504.626, 1317.881, 0, 0, 100, 0, 0),
(14378, 146, 9937.353, 2506.569, 1317.881, 0, 0, 100, 0, 0),
(14378, 147, 9936.716, 2507.736, 1317.881, 0, 0, 100, 0, 0);
-- Classic [1153]
-- Darnassus - Ancient Protector - 49857
UPDATE creature SET modelid = 0, position_x = 9983.682, position_y = 2045.124, position_z = 1328.656, orientation = 2.194992 WHERE guid = 49857;
DELETE FROM creature_movement WHERE id = 49857;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(49857, 1, 9961.919, 2075.339, 1328.544, 0, 0, 100, 0, 0),
(49857, 2, 9965.915, 2090.447, 1329.121, 0, 0, 100, 0, 0),
(49857, 3, 9966.134, 2106.592, 1328.414, 0, 0, 100, 0, 0),
(49857, 4, 9965.078, 2125.257, 1328.769, 0, 0, 100, 0, 0),
(49857, 5, 9968.492, 2155.663, 1329.175, 0, 0, 100, 0, 0),
(49857, 6, 9968.492, 2155.663, 1329.175, 60000, 0, 4.694936, 0, 0),
(49857, 7, 9942.159, 2158.076, 1328.208, 0, 0, 100, 0, 0),
(49857, 8, 9942.159, 2158.076, 1328.208, 60000, 0, 4.747295, 0, 0),
(49857, 9, 9940.522, 2121.686, 1328.219, 0, 0, 100, 0, 0),
(49857, 10, 9940.983, 2097.813, 1328.715, 0, 0, 100, 0, 0),
(49857, 11, 9935.438, 2072.527, 1328.721, 0, 0, 100, 0, 0),
(49857, 12, 9953.167, 2042.370, 1329.106, 0, 0, 100, 0, 0),
(49857, 13, 9953.167, 2042.370, 1329.106, 60000, 0, 0.08726646, 0, 0),
(49857, 14, 9983.079, 2046.026, 1328.544, 0, 0, 100, 0, 0),
(49857, 15, 9983.079, 2046.026, 1328.544, 60000, 0, 4.677482, 0, 0);
-- Classic [1152]
-- Ro'Bark
UPDATE creature_template SET SpeedWalk = 1.2, MinMeleeDmg = 39.3, MaxMeleeDmg = 52.1, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 96, RangedAttackPower = 8, MeleeBaseAttackTime = 2000, MovementType = 2 WHERE Entry = 14278;
UPDATE creature SET modelid = 0, position_x = -883.28, position_y = -1036.26, position_z = 30.49453, orientation = 3.344934, MovementType = 2 WHERE guid = 15973;
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
-- Classic [1151]
-- Classlevelstats - Paladin 61 
UPDATE creature_template_classlevelstats SET BaseDamageExp0 = 31.837 WHERE Level = 61 and Class = 2; 
-- Classic [1150]
-- Timbermaw Hold
UPDATE creature SET modelid = 0, spawndist = 0, MovementType = 0 WHERE id = 11516;
UPDATE creature_template SET MovementType = 2 WHERE Entry = 11558;
UPDATE creature SET modelid = 0, position_x = 6998.405, position_y = -2124.38, position_z = 589.217, orientation = 0, MovementType = 2 WHERE guid = 39359;
DELETE FROM creature_movement WHERE id = 39359;
DELETE FROM creature_movement_template WHERE entry = 11558;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(11558, 1, 7031.818, -2119.087, 586.5599, 0, 0, 100, 0, 0),
(11558, 2, 7049.333, -2116.203, 586.4012, 0, 0, 100, 0, 0),
(11558, 3, 7059.674, -2115.573, 586.4418, 0, 0, 100, 0, 0),
(11558, 4, 7085.175, -2116.508, 582.4188, 0, 0, 100, 0, 0),
(11558, 5, 7059.865, -2115.562, 586.5015, 0, 0, 100, 0, 0),
(11558, 6, 7049.333, -2116.203, 586.4012, 0, 0, 100, 0, 0),
(11558, 7, 7031.818, -2119.087, 586.5679, 0, 0, 100, 0, 0),
(11558, 8, 7000.174, -2123.915, 588.5158, 0, 0, 100, 0, 0);
UPDATE creature SET modelid = 0, position_x = 7025.413, position_y = -2129.193, position_z = 605.0363, orientation = 1.291544, spawndist = 0, MovementType = 2 WHERE guid = 39685;
DELETE FROM creature_movement WHERE id = 39685;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(39685, 1, 7022.205, -2154.976, 594.6618, 0, 0, 100, 0, 0),
(39685, 2, 7022.062, -2176.411, 592.7449, 0, 0, 100, 0, 0),
(39685, 3, 7005.899, -2190.952, 587.4102, 0, 0, 100, 0, 0),
(39685, 4, 6993.098, -2203.730, 586.9760, 0, 0, 100, 0, 0),
(39685, 5, 6985.287, -2222.637, 583.5713, 0, 0, 100, 0, 0),
(39685, 6, 6978.516, -2237.384, 582.9865, 0, 0, 100, 0, 0),
(39685, 7, 6972.774, -2252.150, 584.3915, 0, 0, 100, 0, 0),
(39685, 8, 6963.883, -2262.671, 587.7775, 0, 0, 100, 0, 0),
(39685, 9, 6938.069, -2262.126, 589.8793, 0, 0, 100, 0, 0),
(39685, 10, 6916.303, -2284.507, 589.8978, 0, 0, 100, 0, 0),
(39685, 11, 6938.069, -2262.126, 589.8793, 0, 0, 100, 0, 0),
(39685, 12, 6963.745, -2262.835, 587.8318, 0, 0, 100, 0, 0),
(39685, 13, 6972.690, -2252.366, 584.4597, 0, 0, 100, 0, 0),
(39685, 14, 6978.516, -2237.384, 582.9865, 0, 0, 100, 0, 0),
(39685, 15, 6985.287, -2222.637, 583.5713, 0, 0, 100, 0, 0),
(39685, 16, 6993.098, -2203.730, 586.9760, 0, 0, 100, 0, 0),
(39685, 17, 7005.899, -2190.952, 587.4102, 0, 0, 100, 0, 0),
(39685, 18, 7022.062, -2176.411, 592.7449, 0, 0, 100, 0, 0),
(39685, 19, 7022.205, -2154.976, 594.6618, 0, 0, 100, 0, 0),
(39685, 20, 7025.473, -2127.168, 602.7562, 0, 0, 100, 0, 0);
UPDATE creature SET modelid = 0, position_x = 6831.052, position_y = -2105.397, position_z = 625.7256, orientation = 5.870968, spawndist = 0, MovementType = 2 WHERE guid = 39721;
DELETE FROM creature_movement WHERE id = 39721;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(39721, 1, 6861.227, -2118.594, 624.9129, 0, 0, 100, 0, 0),
(39721, 2, 6872.077, -2119.138, 621.5582, 0, 0, 100, 0, 0),
(39721, 3, 6889.064, -2104.111, 618.3158, 0, 0, 100, 0, 0),
(39721, 4, 6904.970, -2087.587, 616.8079, 0, 0, 100, 0, 0),
(39721, 5, 6931.437, -2081.785, 615.0275, 0, 0, 100, 0, 0),
(39721, 6, 6949.078, -2077.913, 612.6089, 0, 0, 100, 0, 0),
(39721, 7, 6973.942, -2077.549, 609.5292, 0, 0, 100, 0, 0),
(39721, 8, 6992.606, -2068.745, 607.9701, 0, 0, 100, 0, 0),
(39721, 9, 7003.582, -2069.158, 608.5594, 0, 0, 100, 0, 0),
(39721, 10, 7013.248, -2074.656, 605.4859, 0, 0, 100, 0, 0),
(39721, 11, 7018.258, -2092.183, 601.7110, 0, 0, 100, 0, 0),
(39721, 12, 7020.412, -2103.148, 601.8949, 0, 0, 100, 0, 0),
(39721, 13, 7025.168, -2115.448, 604.9564, 0, 0, 100, 0, 0),
(39721, 14, 7020.412, -2103.148, 601.8949, 0, 0, 100, 0, 0),
(39721, 15, 7018.258, -2092.183, 601.7110, 0, 0, 100, 0, 0),
(39721, 16, 7013.248, -2074.656, 605.4859, 0, 0, 100, 0, 0),
(39721, 17, 7003.582, -2069.158, 608.5594, 0, 0, 100, 0, 0),
(39721, 18, 6992.825, -2068.754, 607.9570, 0, 0, 100, 0, 0),
(39721, 19, 6973.942, -2077.549, 609.5292, 0, 0, 100, 0, 0),
(39721, 20, 6949.078, -2077.913, 612.6089, 0, 0, 100, 0, 0),
(39721, 21, 6931.437, -2081.785, 615.0275, 0, 0, 100, 0, 0),
(39721, 22, 6904.970, -2087.587, 616.8079, 0, 0, 100, 0, 0),
(39721, 23, 6889.150, -2104.021, 618.3832, 0, 0, 100, 0, 0),
(39721, 24, 6872.077, -2119.138, 621.5582, 0, 0, 100, 0, 0),
(39721, 25, 6861.416, -2118.674, 624.6057, 0, 0, 100, 0, 0),
(39721, 26, 6828.422, -2103.566, 626.0240, 0, 0, 100, 0, 0);
UPDATE creature SET modelid = 0, position_x = 7098.979, position_y = -2133.087, position_z = 583.0118, orientation = 0.8901179, spawndist = 0, MovementType = 2 WHERE guid = 39360;
DELETE FROM creature_movement WHERE id = 39360;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(39360, 1, 7095.828, -2121.545, 579.1931, 0, 0, 100, 0, 0),
(39360, 2, 7081.223, -2115.833, 583.0578, 0, 0, 100, 0, 0),
(39360, 3, 7064.823, -2116.140, 585.7307, 0, 0, 100, 0, 0),
(39360, 4, 7047.048, -2116.423, 586.3578, 0, 0, 100, 0, 0),
(39360, 5, 7024.865, -2120.003, 586.5849, 0, 0, 100, 0, 0),
(39360, 6, 7046.836, -2116.457, 586.3970, 0, 0, 100, 0, 0),
(39360, 7, 7064.598, -2116.144, 585.7569, 0, 0, 100, 0, 0),
(39360, 8, 7081.223, -2115.833, 583.0578, 0, 0, 100, 0, 0),
(39360, 9, 7095.828, -2121.545, 579.1931, 0, 0, 100, 0, 0),
(39360, 10, 7098.671, -2134.876, 575.7117, 0, 0, 100, 0, 0);
UPDATE creature SET modelid = 0, position_x = 7262.518, position_y = -2183.3, position_z = 557.6961, orientation = 3.945828, spawndist = 0, MovementType = 2 WHERE guid = 39354;
DELETE FROM creature_movement WHERE id = 39354;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(39354, 1, 7252.949, -2193.239, 560.9904, 0, 0, 100, 0, 0),
(39354, 2, 7236.648, -2193.185, 564.5721, 0, 0, 100, 0, 0),
(39354, 3, 7215.199, -2189.851, 565.7800, 0, 0, 100, 0, 0),
(39354, 4, 7198.736, -2188.620, 565.3500, 0, 0, 100, 0, 0),
(39354, 5, 7183.260, -2183.077, 566.4570, 0, 0, 100, 0, 0),
(39354, 6, 7165.008, -2165.219, 565.8566, 0, 0, 100, 0, 0),
(39354, 7, 7142.976, -2161.157, 566.7985, 0, 0, 100, 0, 0),
(39354, 8, 7120.088, -2156.991, 568.0010, 0, 0, 100, 0, 0),
(39354, 9, 7104.307, -2151.730, 571.6407, 0, 0, 100, 0, 0),
(39354, 10, 7098.696, -2136.954, 575.3649, 0, 0, 100, 0, 0),
(39354, 11, 7104.307, -2151.730, 571.6407, 0, 0, 100, 0, 0),
(39354, 12, 7120.088, -2156.991, 568.0010, 0, 0, 100, 0, 0),
(39354, 13, 7142.976, -2161.157, 566.7985, 0, 0, 100, 0, 0),
(39354, 14, 7165.008, -2165.219, 565.8566, 0, 0, 100, 0, 0),
(39354, 15, 7183.260, -2183.077, 566.4570, 0, 0, 100, 0, 0),
(39354, 16, 7198.736, -2188.620, 565.3500, 0, 0, 100, 0, 0),
(39354, 17, 7215.199, -2189.851, 565.7800, 0, 0, 100, 0, 0),
(39354, 18, 7236.648, -2193.185, 564.5721, 0, 0, 100, 0, 0),
(39354, 19, 7252.917, -2193.272, 561.0329, 0, 0, 100, 0, 0),
(39354, 20, 7262.740, -2183.327, 557.5908, 0, 0, 100, 0, 0);
UPDATE creature SET modelid = 0, position_x = 7379.257, position_y = -2205.77, position_z = 535.443, orientation = 3.641864, spawndist = 0, MovementType = 2 WHERE guid = 39353;
DELETE FROM creature_movement WHERE id = 39353;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(39353, 1, 7366.813, -2205.410, 536.4895, 0, 0, 100, 0, 0),
(39353, 2, 7347.722, -2200.018, 535.3674, 0, 0, 100, 0, 0),
(39353, 3, 7327.252, -2194.810, 537.0091, 0, 0, 100, 0, 0),
(39353, 4, 7319.292, -2188.173, 539.6313, 0, 0, 100, 0, 0),
(39353, 5, 7316.772, -2171.578, 543.1376, 0, 0, 100, 0, 0),
(39353, 6, 7312.691, -2157.716, 546.9731, 0, 0, 100, 0, 0),
(39353, 7, 7300.049, -2151.267, 549.9345, 0, 0, 100, 0, 0),
(39353, 8, 7284.350, -2149.601, 553.5342, 0, 0, 100, 0, 0),
(39353, 9, 7274.504, -2160.827, 557.1345, 0, 0, 100, 0, 0),
(39353, 10, 7262.698, -2180.895, 557.1959, 0, 0, 100, 0, 0),
(39353, 11, 7274.458, -2160.906, 557.1588, 0, 0, 100, 0, 0),
(39353, 12, 7283.938, -2149.754, 553.5929, 0, 0, 100, 0, 0),
(39353, 13, 7300.049, -2151.267, 549.9345, 0, 0, 100, 0, 0),
(39353, 14, 7312.691, -2157.716, 546.9731, 0, 0, 100, 0, 0),
(39353, 15, 7316.772, -2171.578, 543.1376, 0, 0, 100, 0, 0),
(39353, 16, 7319.292, -2188.173, 539.6313, 0, 0, 100, 0, 0),
(39353, 17, 7327.252, -2194.810, 537.0091, 0, 0, 100, 0, 0),
(39353, 18, 7347.710, -2200.015, 535.3946, 0, 0, 100, 0, 0),
(39353, 19, 7366.664, -2205.368, 536.4964, 0, 0, 100, 0, 0),
(39353, 20, 7381.741, -2204.716, 534.7780, 0, 0, 100, 0, 0);
-- Classic [1149]
-- Feathers for Nafien - You need to complete 'Deadwood of the North' first, not 'Timbermaw Ally'.
UPDATE quest_template SET PrevQuestId = 8461 WHERE entry = 8467; 

-- UDB_282
-- Classic [1191]
-- Lava Surger & Deathmaw
UPDATE creature_template SET DamageMultiplier = 1.35, DamageVariance = 1 WHERE Entry = 10077;
UPDATE creature_template SET DamageMultiplier = 13, DamageVariance = 1 WHERE Entry = 12101;
-- Classic [1183]
-- Temple of Ahn'Qiraj 
-- This should fix the door right after Prophet Skeram.
UPDATE gameobject SET position_x = -8429.594, position_y = 2048.813, position_z = 153.3087, rotation2 = -0.9824495, rotation3 = 0.1865285, spawntimesecs = 7200, animprogress = 100 WHERE guid = 21785;
-- Classic [1180]
-- Small updates for the Grim Guzzler 
-- Made some of the Grim Guzzler patrons dance on the tables
UPDATE creature_addon SET emote = 10 WHERE guid IN (90741, 91011, 48168, 91066, 46620, 90738, 90888);
DELETE FROM creature_linking_template WHERE entry = 9541;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(9541, 230, 9537, 3, 0);
-- Classic [1177]
-- Uldaman - Shrike Bats
UPDATE creature SET modelid = 0, position_x = -189.706, position_y = 277.083, position_z = -48.4021, orientation = 1.296810, spawndist = 0, MovementType = 2 WHERE guid = 30081;
UPDATE creature SET modelid = 0, position_x = -144.605, position_y = 223.960, position_z = -46.1905, orientation = 0.596879, spawndist = 0, MovementType = 2 WHERE guid = 30085;
UPDATE creature SET modelid = 0, position_x = -107.367, position_y = 351.402, position_z = -47.2184, orientation = 1.296810, spawndist = 0, MovementType = 2 WHERE guid = 33523;
DELETE FROM creature_movement WHERE id = 30081;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(30081, 1, -186.122, 284.889, -47.9277, 0, 0, 100, 0, 0),
(30081, 2, -184.537, 290.529, -48.2939, 0, 0, 100, 0, 0),
(30081, 3, -181.906, 297.890, -50.6951, 0, 0, 100, 0, 0),
(30081, 4, -180.537, 306.196, -52.5285, 0, 0, 100, 0, 0),
(30081, 5, -178.855, 315.518, -53.1097, 0, 0, 100, 0, 0),
(30081, 6, -176.023, 323.062, -52.1430, 0, 0, 100, 0, 0),
(30081, 7, -166.295, 323.899, -50.5788, 0, 0, 100, 0, 0),
(30081, 8, -161.012, 321.039, -49.6787, 0, 0, 100, 0, 0),
(30081, 9, -154.187, 319.611, -48.9430, 0, 0, 100, 0, 0),
(30081, 10, -147.616, 323.359, -47.8096, 0, 0, 100, 0, 0),
(30081, 11, -144.867, 328.990, -45.8678, 0, 0, 100, 0, 0),
(30081, 12, -140.307, 330.953, -44.4280, 0, 0, 100, 0, 0),
(30081, 13, -134.932, 328.717, -44.3512, 0, 0, 100, 0, 0),
(30081, 14, -129.093, 319.235, -44.3214, 0, 0, 100, 0, 0),
(30081, 15, -122.974, 316.957, -44.8064, 0, 0, 100, 0, 0),
(30081, 16, -114.836, 317.766, -46.7871, 0, 0, 100, 0, 0),
(30081, 17, -122.974, 316.957, -44.8064, 0, 0, 100, 0, 0),
(30081, 18, -129.093, 319.235, -44.3214, 0, 0, 100, 0, 0),
(30081, 19, -134.932, 328.717, -44.3512, 0, 0, 100, 0, 0),
(30081, 20, -140.307, 330.953, -44.4280, 0, 0, 100, 0, 0),
(30081, 21, -144.773, 329.030, -45.8512, 0, 0, 100, 0, 0),
(30081, 22, -147.616, 323.359, -47.8096, 0, 0, 100, 0, 0),
(30081, 23, -154.187, 319.611, -48.9430, 0, 0, 100, 0, 0),
(30081, 24, -161.012, 321.039, -49.6787, 0, 0, 100, 0, 0),
(30081, 25, -166.295, 323.899, -50.5788, 0, 0, 100, 0, 0),
(30081, 26, -176.023, 323.062, -52.1430, 0, 0, 100, 0, 0),
(30081, 27, -178.855, 315.518, -53.1097, 0, 0, 100, 0, 0),
(30081, 28, -180.506, 306.386, -52.5748, 0, 0, 100, 0, 0),
(30081, 29, -181.906, 297.890, -50.6951, 0, 0, 100, 0, 0),
(30081, 30, -184.435, 290.816, -48.3882, 0, 0, 100, 0, 0),
(30081, 31, -186.122, 284.889, -47.9277, 0, 0, 100, 0, 0),
(30081, 32, -189.706, 277.083, -48.4021, 0, 0, 100, 0, 0);
DELETE FROM creature_movement WHERE id = 33523;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(33523, 20, -107.367, 351.402, -47.2184, 0, 0, 100, 0, 0),
(33523, 19, -94.7018, 350.589, -49.0758, 0, 0, 100, 0, 0),
(33523, 18, -84.5173, 353.872, -50.8818, 0, 0, 100, 0, 0),
(33523, 17, -74.8239, 357.502, -51.4498, 0, 0, 100, 0, 0),
(33523, 16, -67.5208, 362.644, -50.7932, 0, 0, 100, 0, 0),
(33523, 15, -64.3753, 369.092, -50.2486, 0, 0, 100, 0, 0),
(33523, 14, -56.0625, 371.559, -50.5752, 0, 0, 100, 0, 0),
(33523, 13, -46.5493, 368.680, -49.2223, 0, 0, 100, 0, 0),
(33523, 12, -44.3358, 362.808, -48.0807, 0, 0, 100, 0, 0),
(33523, 11, -40.5576, 353.328, -46.9238, 0, 0, 100, 0, 0),
(33523, 10, -32.346, 347.496, -44.5815, 0, 0, 100, 0, 0),
(33523, 9, -40.5853, 353.397, -46.8918, 0, 0, 100, 0, 0),
(33523, 8, -44.3358, 362.808, -48.0807, 0, 0, 100, 0, 0),
(33523, 7, -46.5493, 368.680, -49.2223, 0, 0, 100, 0, 0),
(33523, 6, -56.0625, 371.559, -50.5752, 0, 0, 100, 0, 0),
(33523, 5, -64.3753, 369.092, -50.2486, 0, 0, 100, 0, 0),
(33523, 4, -67.5208, 362.644, -50.7932, 0, 0, 100, 0, 0),
(33523, 3, -74.8239, 357.502, -51.4498, 0, 0, 100, 0, 0),
(33523, 2, -84.5173, 353.872, -50.8818, 0, 0, 100, 0, 0),
(33523, 1, -94.7018, 350.589, -49.0758, 0, 0, 100, 0, 0);
DELETE FROM creature_movement WHERE id = 30085;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(30085, 1, -133.322, 231.628, -47.7201, 0, 0, 100, 0, 0),
(30085, 2, -128.497, 235.402, -47.7797, 0, 0, 100, 0, 0),
(30085, 3, -123.754, 240.053, -48.3936, 0, 0, 100, 0, 0),
(30085, 4, -122.252, 246.016, -48.2522, 0, 0, 100, 0, 0),
(30085, 5, -122.236, 251.897, -48.4177, 0, 0, 100, 0, 0),
(30085, 6, -121.885, 258.539, -47.5953, 0, 0, 100, 0, 0),
(30085, 7, -125.347, 266.097, -46.0830, 0, 0, 100, 0, 0),
(30085, 8, -130.547, 281.654, -45.8065, 0, 0, 100, 0, 0),
(30085, 9, -136.135, 288.273, -46.0188, 0, 0, 100, 0, 0),
(30085, 10, -140.443, 293.482, -46.2818, 0, 0, 100, 0, 0),
(30085, 11, -140.142, 300.930, -46.0073, 0, 0, 100, 0, 0),
(30085, 12, -140.431, 293.771, -46.2399, 0, 0, 100, 0, 0),
(30085, 13, -136.135, 288.273, -46.0188, 0, 0, 100, 0, 0),
(30085, 14, -130.713, 281.851, -45.8294, 0, 0, 100, 0, 0),
(30085, 15, -125.347, 266.097, -46.0830, 0, 0, 100, 0, 0),
(30085, 16, -121.888, 258.545, -47.6056, 0, 0, 100, 0, 0),
(30085, 17, -122.236, 251.897, -48.4177, 0, 0, 100, 0, 0),
(30085, 18, -122.252, 246.016, -48.2522, 0, 0, 100, 0, 0),
(30085, 19, -123.671, 240.135, -48.3101, 0, 0, 100, 0, 0),
(30085, 20, -128.497, 235.402, -47.7797, 0, 0, 100, 0, 0),
(30085, 21, -133.322, 231.628, -47.7201, 0, 0, 100, 0, 0),
(30085, 22, -144.274, 224.024, -46.1978, 0, 0, 100, 0, 0);
-- Classic [1175]
-- Temple of Ahn'qiraj
DELETE FROM creature WHERE id = 15622;
DELETE FROM creature WHERE id = 15240 AND NOT guid IN (87939, 87940, 87941, 87942, 87943, 87944);
DELETE FROM creature WHERE guid IN (87614, 87615, 87616, 87645, 87646, 87647); 
-- Classic [1173]
-- Elwynn Forest - Forest's Edge
UPDATE creature SET modelid = 0, position_x = -9798.49, position_y = 695.4, position_z = 33.2954, orientation = 0.303533, MovementType = 2 WHERE guid = 80484;
UPDATE creature SET modelid = 0, position_x = -9802.66, position_y = 715.261, position_z = 33.2008, orientation = 2.39323, spawndist = 2, MovementType = 1 WHERE guid = 80486;
UPDATE creature SET modelid = 0, position_x = -9800.45, position_y = 706.165, position_z = 68.3899, orientation = 4.53786, MovementType = 2 WHERE guid = 80488;
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
DELETE FROM creature_movement WHERE id = 80488;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(80488, 8, -9800.41, 706.331, 68.2065, 60000, 0, 4.5204, 0, 0),
(80488, 7, -9800.41, 706.331, 68.2065, 0, 0, 100, 0, 0),
(80488, 6, -9807.69, 717.244, 68.2060, 60000, 0, 2.89725, 0, 0),
(80488, 5, -9807.69, 717.244, 68.2060, 0, 0, 100, 0, 0),
(80488, 4, -9796.79, 723.860, 68.2065, 60000, 0, 1.32645, 0, 0),
(80488, 3, -9796.79, 723.860, 68.2065, 0, 0, 100, 0, 0),
(80488, 2, -9789.82, 713.630, 68.2065, 60000, 0, 6.14356, 0, 0),
(80488, 1, -9789.82, 713.630, 68.2065, 0, 0, 100, 0, 0);

-- UDB_283
-- Scarlet Hound - should be only spawned as Scarlet Hunters Pet
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 10979);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 10979);
DELETE FROM creature WHERE id = 10979;

-- UDB_284
-- Mottled Worg - spawn point corrected
UPDATE creature SET position_x = 1012.858887, position_y = 1488.146973, position_z = 41.295895, orientation = 0.157890, spawndist = 5, movementType = 1 WHERE guid = 17952;

-- UDB_285
-- Journal of Jandice Barov
-- shouldnt be a static spawn
DELETE FROM gameobject WHERE id = 180794;
-- book must be droped by Jandice Barov on her death
DELETE FROM dbscripts_on_creature_death WHERE id = 10503;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10503, 1, 0, 0, 0, 0, 0, 0, 2000000612, 0, 0, 0, 0, 0, 0, 0, ''),
(10503, 1, 15, 26096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jandice Barov - Summon Journal of Jandice Barov on Death');
-- missing spell added
DELETE FROM spell_template WHERE id = 26096;
INSERT INTO spell_template (id, attr, attr_ex, attr_ex2, attr_ex3, proc_flags, proc_chance, duration_index, effect0, effect0_implicit_target_a, effect0_implicit_target_b, effect0_radius_idx, effect0_apply_aura_name, effect0_misc_value, effect0_misc_value_b, effect0_trigger_spell, comments) VALUES
(26096, 8388864, 0, 1, 0, 0, 101, 21, 76, 32, 0, 7, 0, 180794, 0, 0, 'Jandice Drops Journal');
-- gossip
DELETE FROM gossip_menu WHERE entry = 6799;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6799, 8120, 0, 0),
(6799, 8121, 0, 1024),
(6799, 8122, 0, 1025);
DELETE FROM gossip_menu_option WHERE menu_id = 6799;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(6799, 0, 0, ' Decipher the pattern and learn its content.', 1, 1, -1, 0, 6799, 0, 0, NULL, 1024);
DELETE FROM dbscripts_on_gossip WHERE id = 6799;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(6799, 0, 15, 26095, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Learn Felcloth Bag');
DELETE FROM conditions WHERE condition_entry BETWEEN 1021 AND 1025;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1021, 7, 197, 280),
(1022, 17, 26086, 1),
(1023, 17, 26086, 0),
(1024, -1, 1021, 1022),
(1025, -1, 1021, 1023);
-- texts added
DELETE FROM db_script_string WHERE entry = 2000000612;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000000612,'%s loosens her grasp on the journal she had been clutching.',0,2,0,0,NULL);
DELETE FROM npc_text WHERE ID IN (8121,8122);
INSERT INTO npc_text (ID,text0_0,text0_1,lang0,prob0) VALUES
(8121,'The journal of Jandice Barov is filled with rantings and ravings about the undead. Towards the end of the book is what appears to be a tailoring pattern for the creation of a bag of some sort.','',0,1),
(8122,'UDB Missing text','',0,1);

-- UDB_286
-- q.9932 'Body of Evidence'
DELETE FROM dbscripts_on_event WHERE id = 11675; 
INSERT INTO dbscripts_on_event VALUES 
(11675,1,10,18396,200000,0,0,0,0,0,0,0,-880.977,7723.34,34.4599,3.40423,'spawn - Boulderfist Saboteur #1'),
(11675,2,10,18396,200000,0,0,0,0,0,0,0,-885.034,7721.97,35.1005,0.267349,'spawn - Boulderfist Saboteur #2'),
(11675,3,20,2,0,18396,100,7,0,0,0,0,0,0,0,0,'movement changed to 2:waypoint'),
(11675,81,34,1026,9932,0,0,0,0,0,0,0,0,0,0,0,'q. check'),
(11675,83,8,18395,0,0,0,0,0,0,0,0,0,0,0,0,'q.9932 completed');
DELETE FROM creature_movement_template WHERE entry = 18396;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(18396,1,-880.977,7723.34,34.4599,12000,1839601,3.40423,0,0),
(18396,2,-870.818054,7729.425293,33.072216,7000,1839602,0.588451,0,0),
(18396,3,-854.718506,7736.624023,33.605515,7000,1839603,6.248030,0,0),
(18396,4,-843.973633,7734.010254,34.304436,7000,1839604,5.245867,0,0),
(18396,5,-840.694641,7725.600098,34.427502,0,0,4.720438,0,0),
(18396,6,-843.479553,7712.913086,34.926540,7000,1839605,3.578475,0,0),
(18396,7,-852.309692,7708.916016,35.747322,0,0,2.976861,0,0),
(18396,8,-862.609924,7712.046875,36.545654,10000,1839606,3.075036,0,0),
(18396,9,-880.005249,7719.872070,34.585533,0,0,3.813309,0,0),
(18396,10,-895.986755,7699.797852,39.720840,0,0,3.821946,0,0),
(18396,11,-906.355347,7692.775879,38.878551,5000,1839607,3.777111,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1839601 AND 1839607; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1839601,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(1839601,1,0,0,0,0,0,0,2000000613,2000000614,2000000615,0,0,0,0,0,''),
(1839601,3,0,0,0,18396,100,7,2000000616,0,0,0,0,0,0,0,''),
(1839601,6,0,0,0,0,0,0,2000000617,0,0,0,0,0,0,0,''),
(1839601,9,0,0,0,18396,100,7,2000000618,0,0,0,0,0,0,0,''),
(1839601,12,3,0,0,18396,100,7,0,0,0,0,-868.813,7726.22,33.2503,0.526763,'force buddy to move'),
(1839602,3,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1839602,4,1,16,0,18396,100,7,0,0,0,0,0,0,0,0,''),
(1839602,5,15,32318,0,0,0,0,0,0,0,0,0,0,0,0,'Invader corpse #1'),
(1839602,6,15,32318,0,18396,100,7,0,0,0,0,0,0,0,0,'Invader corpse #1'),
(1839602,6,0,0,0,0,0,0,2000000619,2000000620,2000000621,2000000622,0,0,0,0,''),
(1839602,7,0,0,0,18396,100,7,2000000620,2000000621,2000000622,2000000619,0,0,0,0,''),
(1839602,8,3,0,0,18396,100,7,0,0,0,0,-856.478,7732.11,33.3715,6.28059,'force buddy to move'),
(1839603,3,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1839603,4,1,16,0,18396,100,7,0,0,0,0,0,0,0,0,''),
(1839603,5,15,32318,0,0,0,0,0,0,0,0,0,0,0,0,'Invader corpse #1'),
(1839603,6,15,32318,0,18396,100,7,0,0,0,0,0,0,0,0,'Invader corpse #1'),
(1839603,6,0,0,0,0,0,0,2000000621,2000000622,2000000619,2000000620,0,0,0,0,''),
(1839603,7,0,0,0,18396,100,7,2000000622,2000000619,2000000620,2000000621,0,0,0,0,''),
(1839603,8,3,0,0,18396,100,7,0,0,0,0,-846.731,7729.53,34.3368,5.38681,'force buddy to move'),
(1839604,3,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1839604,4,1,16,0,18396,100,7,0,0,0,0,0,0,0,0,''),
(1839604,5,15,32318,0,0,0,0,0,0,0,0,0,0,0,0,'Invader corpse #1'),
(1839604,6,15,32318,0,18396,100,7,0,0,0,0,0,0,0,0,'Invader corpse #1'),
(1839604,6,0,0,0,0,0,0,2000000621,2000000622,2000000619,2000000620,0,0,0,0,''),
(1839604,7,0,0,0,18396,100,7,2000000620,2000000621,2000000622,2000000619,0,0,0,0,''),
(1839604,8,3,0,0,18396,100,7,0,0,0,0,-845.993,7717.55,34.4689,3.57625,'force buddy to move'),
(1839605,3,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1839605,4,1,16,0,18396,100,7,0,0,0,0,0,0,0,0,''),
(1839605,5,15,32318,0,0,0,0,0,0,0,0,0,0,0,0,'Invader corpse #1'),
(1839605,6,15,32318,0,18396,100,7,0,0,0,0,0,0,0,0,'Invader corpse #1'),
(1839605,6,0,0,0,0,0,0,2000000621,2000000622,2000000619,2000000620,0,0,0,0,''),
(1839605,7,0,0,0,18396,100,7,2000000622,2000000619,2000000620,2000000621,0,0,0,0,''),
(1839605,8,3,0,0,18396,100,7,0,0,0,0,-860.757,7715.71,35.3607,2.97546,'force buddy to move'),
(1839606,3,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1839606,4,1,16,0,18396,100,7,0,0,0,0,0,0,0,0,''),
(1839606,5,15,32318,0,0,0,0,0,0,0,0,0,0,0,0,'Invader corpse #1'),
(1839606,6,15,32318,0,18396,100,7,0,0,0,0,0,0,0,0,'Invader corpse #1'),
(1839606,6,0,0,0,0,0,0,2000000623,0,0,0,0,0,0,0,''),
(1839606,7,0,0,0,18396,100,7,2000000624,0,0,0,0,0,0,0,''),
(1839606,8,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1839606,8,25,1,0,18396,100,7,0,0,0,0,0,0,0,0,'RUN ON'),
(1839606,9,3,0,0,18396,100,7,0,0,0,0,-906.355347,7692.775879,38.878551,3.78,'force buddy to move'),
(1839606,9,18,7000,0,18396,100,7,0,0,0,0,0,0,0,0,'desp'),
(1839607,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
(1839607,2,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'desp');
-- quest check
DELETE FROM conditions WHERE condition_entry = 1026;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1026, 36, 0, 100);
DELETE FROM db_script_string WHERE entry BETWEEN 2000000613 AND 2000000624;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000613,'Shadow Council come for you Warmaul! We is mad at you!',0,1,0,0,NULL),
(2000000614,'Rawr! Me is Shadow Council magishun! Me came for Warmaul terri... tettritor... Me come for Warmaul land!',0,1,0,0,NULL),
(2000000615,'I killed another Warmaul ogre! I am Shadow Council! Come get me',0,1,0,0,NULL),
(2000000616,'Shut up, stupid! Why you yell?',0,0,0,0,NULL),
(2000000617,'Me wanted to make it belive... Me wanted to make it real. Dey tink for shure it Shadow Council now!',0,0,0,1,NULL),
(2000000618,'You so smart. Le\'s do dis now before more come.',0,0,0,1,NULL),
(2000000619,'Your dead orc sound ok. Mine better.',0,0,0,0,NULL),
(2000000620,'You make dat sound pretty good. Sound like da orc dieded.',0,0,0,0,NULL),
(2000000621,'My dead orc sound is da best!',0,0,0,0,NULL),
(2000000622,'For shure it be good.',0,0,0,0,NULL),
(2000000623,'Last mont, me won da dead orc sound champi... champichi... me won da dead orc sound contest.',0,0,0,0,NULL),
(2000000624,'Dat\'s all of dem! Dese Warmaul be so mad! Hooray!',0,0,0,0,NULL);
-- fix for Kil'sorrow Invader
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, UnitFlags = 2, DynamicFlags = 32, MovementType = 0 WHERE entry = 18397;
UPDATE creature_template_addon SET bytes1 = 7, b2_0_sheath = 1, emote = 65 WHERE entry = 18397;
-- Boulderfist Saboteur 
UPDATE creature_template SET MovementType = 0 WHERE entry = 18396; -- movement will be set by script
-- Warmaul Shaman and Reaver - update
UPDATE creature SET position_x = -868.073853, position_y = 7752.742188, position_z = 33.407558, spawndist = 2, MovementType = 1 WHERE guid = 60139;
UPDATE creature SET position_x = -863.464478, position_y = 7695.895020, position_z = 37.632339, spawndist = 2, MovementType = 1 WHERE guid = 63882;

-- UDB_287
-- q.9931 'Returning the Favor'
-- 1 banner = 1 body
DELETE FROM dbscripts_on_spell WHERE id = 32314;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(32314,1,18,3000,0,0,0,0,0,0,0,0,0,0,0,0,'despawn');

-- UDB_288
-- q.9927 'Ruthless Cunning'
-- 1 banner = 1 body
DELETE FROM dbscripts_on_spell WHERE id = 32307;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(32307,1,18,3000,0,0,0,0,0,0,0,0,0,0,0,0,'despawn');

-- UDB_289
-- q.10929 'Fumping'
DELETE FROM spell_template WHERE id IN (39240,39241);
INSERT INTO spell_template (id, attr, attr_ex, attr_ex2, attr_ex3, proc_flags, proc_chance, duration_index, effect0, effect0_implicit_target_a, effect0_implicit_target_b, effect0_radius_idx, effect0_apply_aura_name, effect0_misc_value, effect0_misc_value_b, effect0_trigger_spell, comments) VALUES
(39240,0,0,0,0,0,101,21,28,41,0,8,0,22483,64,0,'Summon Summon Sand Gnome front of the caster'),
(39241,0,0,0,0,0,101,21,28,41,0,8,0,22482,64,0,'Summon Mature Bone Sifter front of the caster');
DELETE FROM dbscripts_on_spell WHERE id = 39238;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(39238,1,15,39240,0,0,0,0,39241,0,0,0,0,0,0,0,'cast random spell');
-- Sand Gnome - equipment update
UPDATE creature_template SET equipmentTemplateid = 191 WHERE entry = 22483;

-- UDB_291
-- Obsidian Shard & * of Ahn'Qiraj
-- missing spells added (DBC 1.12.x)
DELETE FROM spell_template WHERE id in (27627,27630);
INSERT INTO spell_template (id, attr, attr_ex, attr_ex2, attr_ex3, proc_flags, proc_chance, duration_index, effect0, effect0_implicit_target_a, effect0_implicit_target_b, effect0_radius_idx, effect0_apply_aura_name, effect0_misc_value, effect0_misc_value_b, effect0_trigger_spell, comments) VALUES
(27627, 256, 0, 0, 0, 0, 101, 21, 76, 32, 0, 14, 0, 181068, 0, 0, 'Drop Obsidian'),
(27630, 256, 0, 0, 0, 0, 101, 21, 76, 32, 0, 14, 0, 181069, 0, 0, 'Drop Obsidian');
-- Delete spawn static go
DELETE FROM gameobject WHERE id IN (181068, 181069);
-- should be droped on creatures death
DELETE FROM dbscripts_on_creature_death WHERE id in (15355, 15338, 15264, 15340, 15277);
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(15355, 1, 15, 27627, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'drops small obsidian chunk'),
(15338, 1, 15, 27627, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'drops small obsidian chunk'),
(15264, 1, 15, 27627, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'drops small obsidian chunk'),
(15340, 1, 15, 27630, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'drops large obsidian chunk'),
(15277, 1, 15, 27630, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'drops large obsidian chunk');

-- UDB_292
-- q.9709 'Stealing Back the Mushrooms'
DELETE FROM dbscripts_on_quest_end WHERE id = 9709;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9709,1,20,2,0,17831,63512,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(9709,2,0,0,0,0,0,0,2000000625,0,0,0,0,0,0,0,''),
(9709,84,0,0,0,0,0,0,2000000629,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 9709 WHERE entry = 9709;
-- used only during q.
DELETE FROM creature_movement_template WHERE entry = 17831;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(17831,1, -283.861, 8302.74, 19.7109, 4000, 1783101, 0.925025, 0, 0),
(17831,2, -279.541,8304.48,19.88, 0, 0, 100, 0, 0),
(17831,3, -276.254,8299.12,19.835, 0, 0, 100, 0, 0),
(17831,4, -277.253,8292.89,19.78, 0, 0, 100, 0, 0),
(17831,5, -280.11,8284.88,18.4662, 0, 0, 100, 0, 0),
(17831,6, -292.934,8242.46,18.2843, 0, 0, 100, 0, 0),
(17831,7, -293.665,8233.73,20.3739, 55000, 1783102, 3.83194, 0, 0),
(17831,8, -292.913,8242.31,18.2988, 0, 0, 100, 0, 0),
(17831,9, -282.882,8283.62,18.1645, 0, 0, 100, 0, 0),
(17831,10, -277.159,8294.56,19.8014, 0, 0, 100, 0, 0),
(17831,11, -277.396,8299.08,19.8348, 0, 0, 100, 0, 0),
(17831,12, -280.191,8301.87,19.8223, 0, 0, 100, 0, 0),
(17831,13, -283.861, 8302.74, 19.7109, 5000, 1783103, 0.925025, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1783101 AND 1783103; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1783101,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(1783101,1,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'npc_flag removed'),
(1783101,2,21,1,0,17953,63623,7 | 0x10,0,0,0,0,0,0,0,0,'Buddy - active'),
(1783101,4,20,2,0,17953,63623,7 | 0x10,0,0,0,0,0,0,0,0,'Buddy - movement chenged to 2:waypoint'),
(1783102,2,0,0,0,0,0,0,2000000626,0,0,0,0,0,0,0,''),
(1783102,9,15,32618,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1783102,20,0,0,0,0,0,0,2000000627,0,0,0,0,0,0,0,''),
(1783102,22,9,9306,60,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1783102,22,10,17955,70000,0,0,0,0,0,0,0,-362.3764, 8215.58, 25.25911, 0.3794507,'summon Hungry Boglord'),
(1783102,40,0,0,0,0,0,0,2000000628,0,0,0,0,0,0,0,''),
(1783103,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(1783103,1,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'npc_flag added'),
(1783103,2,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
-- Buddy
UPDATE creature SET position_x = -287.241425, position_y = 8308.556641, position_z = 19.843025, spawndist = 5, MovementType = 1 WHERE guid = 63623;
-- used only during q.
DELETE FROM creature_movement_template WHERE entry = 17953;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(17953,1,-276.83,8300.08,19.8581, 0, 0, 100, 0, 0),
(17953,2,-280.337,8285.79,18.8336, 0, 0, 100, 0, 0),
(17953,3,-292.95,8242.65,18.2649, 0, 0, 100, 0, 0),
(17953,4,-294.656,8234.74,20.3036, 58000, 0, 100, 0, 0),
(17953,5,-293.185,8242.32,18.3132, 0, 0, 100, 0, 0),
(17953,6,-281.958,8284.04,18.2655, 0, 0, 100, 0, 0),
(17953,7,-276.682,8298.99,19.8316, 0, 0, 100, 0, 0),
(17953,8,-287.241425,8308.556641,19.843025, 2000, 1795301, 100, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1795301; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1795301,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
(1795301,1,20,1,5,0,0,0,0,0,0,0,0,0,0,0,'Buddy - movement chenged to 1:random');
-- Hungry Boglord
UPDATE creature_template SET MovementType = 2 WHERE entry = 17955;
-- used only during q.
DELETE FROM creature_movement_template WHERE entry = 17955;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(17955,1, -362.3764, 8215.58, 25.25911,  2000, 1795501, 0.3794507, 0, 0),
(17955,2, -303.5525, 8217.391, 22.25951, 19000, 1795502, 100, 0, 0),
(17955,3, -263.247,8221.46,19.7823, 0, 0, 100, 0, 0),
(17955,4, -250.962,8215.91,20.2557, 0, 0, 100, 0, 0),
(17955,5, -226.744,8179.7,19.8254, 0, 0, 100, 0, 0),
(17955,6, -225.618,8139.61,19.9743, 2000, 1795503, 100, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1795501 AND 1795503; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1795501,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1795502,3,0,0,0,0,0,0,2000000630,0,0,0,0,0,0,0,''),
(1795502,10,0,0,0,0,0,0,2000000631,0,0,0,0,0,0,0,''),
(1795502,12,40,0,0,182073,30,7,0,0,0,0,0,0,0,0,''),
(1795503,1,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn'); 
-- texts
DELETE FROM db_script_string WHERE entry BETWEEN 2000000625 AND 2000000631;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000625,'$n, let\'s go see if this plan will work.  Come along, Buddy!',0,0,0,1,NULL),
(2000000626,'Ok, let\'s see about using those mushrooms you brought back to grow the bog lords a new food supply.',0,0,0,0,NULL),
(2000000627,'Wait and see what happens!',0,0,0,0,NULL),
(2000000628,'Oh Buddy, you big baby!  Look, it\'s working.  It\'s really working!!  Now all I need to do is grow more of these mushrooms here and the bog lords will likely leave the sporelings alone!',0,0,0,0,NULL),
(2000000629,'Oh, thank you, $n!  You\'ve made it possible to save both the sporelings from the bog lords, and the bog lords from our wrath.',0,0,0,0,NULL),
(2000000630,'The %s takes a piece of the mushroom tree and holds it to its \'nose\'.  Seemingly satisfied, it eats it!',0,2,0,36,NULL),
(2000000631,'The %s uproots the rest of the mushroom tree and makes off with it.',0,2,0,36,NULL);
-- missing spell for trap added. Source: dbc 4.3.4 
DELETE FROM spell_template WHERE id = 31338;
INSERT INTO spell_template (id, attr, attr_ex, attr_ex2, attr_ex3, proc_flags, proc_chance, duration_index, effect0, effect0_implicit_target_a, effect0_implicit_target_b, effect0_radius_idx, effect0_apply_aura_name, effect0_misc_value, effect0_misc_value_b, effect0_trigger_spell, comments) VALUES
(31338, 384, 0, 0, 0, 0, 101, 3, 28, 32, 0, 8, 0, 18120, 64, 0, 'Summon Ogre');
-- missing objects added - UDB free guids reused
-- Box of Mushrooms Trap
DELETE FROM gameobject WHERE guid IN (5236, 9301, 9306);
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES 
(5236, 182051, 530, 1,1, 1627.71, 8604.54, -25.4862, -2.94959, 0, 0, -0.995395, 0.0958539, 181, 255, 1),
(9301, 182051, 530, 1,1, 1722.83, 8473.81, -4.44422, -1.91986, 0, 0, -0.819151, 0.573577, 181, 255, 1),
-- Grown Mushroom
(9306, 182073, 530, 1,1, -293.1354, 8218.522, 22.26159, 2.757613, 0, 0, 0, 0, -60, 255, 1);
-- Box of Mushrooms #22408
UPDATE gameobject SET position_x = 1708.371, position_y = 8458.188, position_z = -4.837735, orientation = 2.495818, rotation0 = 0, rotation1 = 0, rotation2 = 0.9483232, rotation3 = 0.3173059 WHERE guid = 22408;
-- Ango'rosh Shadowmoage
UPDATE creature SET position_x = 1636.920776, position_y = 8507.608398, position_z = -53.615044, orientation = 6.061350, spawndist = 0, MovementType = 0 WHERE guid = 72425;

-- UDB_293
-- Dark Rider of Acherus
DELETE FROM creature_template_addon WHERE entry = 28768;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(28768, 25445, 0, 1, 1, 0, 0, NULL);
DELETE FROM dbscripts_on_creature_death WHERE id = 28768;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(28768,0,24,0,0,0,0,0,0,0,0,0,0,0,0,0,'unmount'),
(28768,0,10,28782,300000,0,0,0,0,0,0,0,0,0,0,0,'summon Acherus Deathcharger'),
(28768,1,0,0,0,28782,10,7,2000000632,0,0,0,0,0,0,0,''),
(28768,1,22,35,0x01 | 0x80,28782,10,7,0,0,0,0,0,0,0,0,'temp faction');
DELETE FROM db_script_string WHERE entry = 2000000632;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000632,'%s rears up, beconing you to ride it.',0,2,0,0,NULL);
-- Salanar the Horseman
UPDATE creature_template SET MinLevel = 55, MaxLevel = 55, MinLevelHealth = 26140, MaxLevelHealth = 26140, FactionAlliance = 2084, FactionHorde = 2084, EquipmentTemplateId = 448 WHERE entry = 28788;
-- not req.
DELETE FROM vehicle_accessory WHERE vehicle_entry = 28782 AND seat = 0;
-- swap Acherus Deathcharger with Dark Rider of Acherus
UPDATE creature SET id = 28768, spawntimesecs = 300, curhealth = 13945, curmana = 0 WHERE guid IN (87007,128617,128618,128619,128621,128622,128623,128624,128625,128626,103471,103470,103363,103323,103322,103321,103300,103299,103294,103293,103292,103246,103245,103239,101589);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 28768);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 28782);

-- UDB_294
-- More Updates realted to DK Starting Zone
-- Duplicates
DELETE FROM creature WHERE guid IN (129218,129219);
DELETE FROM creature_addon WHERE guid IN (129218,129219);
DELETE FROM creature_movement WHERE id IN (129218,129219);
-- Scourge Sky Darkener
UPDATE creature_template_addon SET auras = NULL WHERE entry = 28642;
-- Scourge Gryphon
UPDATE creature_template SET minlevel = 56, maxlevel = 56, MinLevelHealth = 53980, MaxLevelHealth = 53980 WHERE entry = 28864;
UPDATE creature_movement_template SET waittime = 1000, script_id = 2886402 WHERE entry = 28864 AND point = 1;
DELETE FROM dbscripts_on_creature_movement WHERE id = 2886402; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2886402,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON');
-- q.12680 'Grand Theft Palomino'
DELETE FROM dbscripts_on_spell WHERE id = 52264; 
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(52264,1,22,2084,0x01,28653,20,5,0,0,0,0,0,0,0,0,'temp faction'),
(52264,1,14,52263,0,0,0,0,0,0,0,0,0,0,0,0,''),
(52264,2,15,52266,0,0,0,0,0,0,0,0,0,0,0,0,''),
(52264,3,37,0,0,28654,20,0,0,0,0,0,0,0,0,0,''),
(52264,6,15,52267,0,28654,20,3,0,0,0,0,0,0,0,0,''),
(52264,8,0,0,0,28654,20,3,2000000410,0,0,0,0,0,0,0,'');
-- These mobs should not give any xp.
UPDATE creature_template SET ExtraFlags = ExtraFlags|64 WHERE Entry IN (28834, 28850, 28856, 29102, 29103, 29104);
-- After complete - source item must be removed from the player
-- The Gift That Keeps On Giving 
UPDATE quest_template SET ReqItemid1 = 39253, ReqItemCount1 = 1 WHERE entry = 12698;
-- An End To All Things...
UPDATE quest_template SET ReqItemid1 = 39700, ReqItemCount1 = 1 WHERE entry = 12779;

-- UDB_295
-- q.10538 'Boiling Blood'
DELETE FROM spell_script_target WHERE entry = 36546;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(36546,0,184715);
DELETE FROM dbscripts_on_go_template_use WHERE id = 184715;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(184715,1,10,21308,4000,0,0,0,0,0,0,0,-967.271,2174.77,15.8136,3.94127,'');
UPDATE creature_template SET MovementType = 2 WHERE entry = 21308;
DELETE FROM creature_movement_template WHERE entry = 21308;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(21308,1,-967.271,2174.77,15.8136,10000,2130801,3.94127,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2130801; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2130801,1,15,36555,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- UDB_296
-- Few missing ones added
-- Emplty UDB guids reused
DELETE FROM creature WHERE guid IN (52633, 52634, 52637, 52641, 52662, 68891, 68892, 68893, 68894, 84633, 84939, 85584, 85585, 85947, 85961, 86175, 86178, 86628, 87614, 87615, 87616, 87645);
INSERT INTO creature (guid, id, modelid, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, curhealth, curmana, MovementType) VALUES
-- Scarlet Ghoul
(52633, 28897, 0, 609, 1, 4, 1830.53, -5934.8, 112.407, 3.57632, 60, 10, 960, 0, 1),
(52634, 28897, 0, 609, 1, 4, 1829.65, -5941.62, 114.704, 3.55276, 60, 10, 960, 0, 1),
(52637, 28897, 0, 609, 1, 4, 1818.11, -5941.9, 115.451, 0.477924, 60, 10, 960, 0, 1),
(52641, 28897, 0, 609, 1, 4, 1807.21, -5924.33, 115.279, 0.399384, 60, 10, 960, 0, 1),
(52662, 28897, 0, 609, 1, 4, 1813, -5917.67, 114.99, 0.454362, 60, 10, 960, 0, 1),
(68891, 28897, 0, 609, 1, 4, 1820.78, -5921.09, 112.038, 0.399384, 60, 10, 960, 0, 1),
(68892, 28897, 0, 609, 1, 4, 1822.16, -5928.89, 112.739, 2.54823, 60, 10, 960, 0, 1),
(68893, 28897, 0, 609, 1, 4, 1815.59, -5929.34, 114.074, 4.58948, 60, 10, 960, 0, 1),
(68894, 28897, 0, 609, 1, 4, 1793.61, -5829.32, 112.894, 3.3407, 60, 10, 960, 0, 1),
(84633, 28897, 0, 609, 1, 4, 1786.86, -5826.59, 113.392, 3.28337, 60, 10, 960, 0, 1),
(84939, 28897, 0, 609, 1, 4, 1782.62, -5833.89, 116.159, 3.4538, 60, 10, 960, 0, 1),
(85584, 28897, 0, 609, 1, 4, 1775.76, -5827.66, 115.727, 0.182615, 60, 10, 960, 0, 1),
(85585, 28897, 0, 609, 1, 4, 1775.38, -5814.34, 115.468, 0.108002, 60, 10, 960, 0, 1),
(85947, 28897, 0, 609, 1, 4, 1778.46, -5806.83, 115.446, 0.104075, 60, 10, 960, 0, 1),
(85961, 28897, 0, 609, 1, 4, 1784.95, -5805, 114.293, 0.151199, 60, 10, 960, 0, 1),
(86175, 28897, 0, 609, 1, 4, 1787.82, -5810.13, 112.933, 0.0805136, 60, 10, 960, 0, 1),
(86178, 28897, 0, 609, 1, 4, 1780.82, -5818.16, 114.458, 3.28286, 60, 10, 960, 0, 1),
(86628, 28897, 0, 609, 1, 4, 1831.87, -5925.96, 110.189, 3.41639, 60, 10, 960, 0, 1),
(87614, 28897, 0, 609, 1, 4, 1826.24, -5912.54, 112.272, 3.73604, 60, 10, 960, 0, 1),
(87615, 28897, 0, 609, 1, 4, 1837.97, -5939.68, 113.988, 3.09359, 60, 10, 960, 0, 1),
(87616, 28897, 0, 609, 1, 4, 1796.02, -5821.16, 110.384, 3.30329, 60, 10, 960, 0, 1),
(87645, 28897, 0, 609, 1, 4, 1795.91, -5812.9, 110.402, 3.14464, 60, 10, 960, 0, 1);
-- After complete - source item must be removed from the player
-- Ambush At The Overlook
UPDATE quest_template SET ReqSourceCount4 = 1 WHERE entry = 12754;
-- Pet level stats
-- Tamed Ravage & Tamed Sporebat
DELETE FROM pet_levelstats WHERE creature_entry IN (18201,19461); 
insert into pet_levelstats (creature_entry, level, hp, mana, armor, str, agi, sta, inte, spi) values
(18201,80,4551,2134,4513,178,95,92,99,87),
(18201,79,4494,2108,4456,176,94,91,98,86),
(18201,78,4437,2082,4399,174,93,90,97,85),
(18201,77,4380,2056,4342,172,92,89,96,84),
(18201,76,4323,2030,4285,170,91,88,95,83),
(18201,75,4266,2004,4228,168,90,87,94,82),
(18201,74,4209,1978,4171,166,89,86,93,81),
(18201,73,4152,1952,4114,164,88,85,92,80),
(18201,72,4095,1926,4057,162,87,84,91,79),
(18201,71,4038,1900,4000,160,86,83,90,78),
(18201,70,3981,1874,3943,158,85,82,89,77),
(18201,69,3924,1848,3886,156,84,81,88,76),
(18201,68,3867,1822,3829,154,83,80,87,75),
(18201,67,3810,1796,3772,152,82,79,86,74),
(18201,66,3753,1770,3715,150,81,78,85,73),
(18201,65,3696,1744,3658,148,80,77,84,72),
(18201,64,3639,1718,3601,146,79,76,83,71),
(18201,63,3582,1692,3544,144,78,75,82,70),
(18201,62,3525,1666,3487,142,77,74,81,69),
(18201,61,3468,1640,3430,140,76,73,80,68),
(18201,60,3411,1614,3373,138,75,72,79,67),
(18201,59,3354,1588,3316,136,74,71,78,66),
(18201,58,3297,1562,3259,134,73,70,77,65),
(18201,57,3240,1536,3202,132,72,69,76,64),
(18201,56,3183,1510,3145,130,71,68,75,63),
(18201,55,3126,1484,3088,128,70,67,74,62),
(18201,54,3069,1458,3031,126,69,66,73,61),
(18201,53,3012,1432,2974,124,68,65,72,60),
(18201,52,2955,1406,2917,122,67,64,71,59),
(18201,51,2898,1380,2860,120,66,63,70,58),
(18201,50,2841,1354,2803,118,65,62,69,57),
(18201,49,2784,1328,2746,116,64,61,68,56),
(18201,48,2727,1302,2689,114,63,60,67,55),
(18201,47,2670,1276,2632,112,62,59,66,54),
(18201,46,2613,1250,2575,110,61,58,65,53),
(18201,45,2556,1224,2518,108,60,57,64,52),
(18201,44,2499,1198,2461,106,59,56,63,51),
(18201,43,2442,1172,2404,104,58,55,62,50),
(18201,42,2385,1146,2347,102,57,54,61,49),
(18201,41,2328,1120,2290,100,56,53,60,48),
(18201,40,2271,1094,2233,98,55,52,59,47),
(18201,39,2214,1068,2176,96,54,51,58,46),
(18201,38,2157,1042,2119,94,53,50,57,45),
(18201,37,2100,1016,2062,92,52,49,56,44),
(18201,36,2043,990,2005,90,51,48,55,43),
(18201,35,1986,964,1948,88,50,47,54,42),
(18201,34,1929,938,1891,86,49,46,53,41),
(18201,33,1872,912,1834,84,48,45,52,40),
(18201,32,1815,886,1777,82,47,44,51,39),
(18201,31,1758,860,1720,80,46,43,50,38),
(18201,30,1701,834,1663,78,45,42,49,37),
(18201,29,1644,808,1606,76,44,41,48,36),
(18201,28,1587,782,1549,74,43,40,47,35),
(18201,27,1530,756,1492,72,42,39,46,34),
(18201,26,1473,730,1435,70,41,38,45,33),
(18201,25,1416,704,1378,68,40,37,44,32),
(18201,24,1359,678,1321,66,39,36,43,31),
(18201,23,1302,652,1264,64,38,35,42,30),
(18201,22,1245,626,1207,62,37,34,41,29),
(18201,21,1188,600,1150,60,36,33,40,28),
(18201,20,1131,574,1093,58,35,32,39,27),
(18201,19,1074,548,1036,56,34,31,38,26),
(18201,18,1017,522,979,54,33,30,37,25),
(18201,17,960,496,922,52,32,29,36,24),
(18201,16,903,470,865,50,31,28,35,23),
(18201,15,846,444,808,48,30,27,34,22),
(18201,14,789,418,751,46,29,26,33,21),
(18201,13,732,392,694,44,28,25,32,20),
(18201,12,675,366,637,42,27,24,31,19),
(18201,11,618,340,580,40,26,23,30,18),
(18201,10,561,314,523,38,25,22,29,17),
(18201,9,504,288,466,36,24,21,28,16),
(18201,8,447,262,409,34,23,20,27,15),
(18201,7,390,236,352,32,22,19,26,14),
(18201,6,333,210,295,30,21,18,25,13),
(18201,5,276,184,238,28,20,17,24,12),
(18201,4,219,158,181,26,19,16,23,11),
(18201,3,162,132,124,24,18,15,22,10),
(18201,2,105,106,67,22,17,14,21,9),
(18201,1,48,80,10,20,16,13,20,8),
(19461,80,4551,2134,4513,178,95,92,99,87),
(19461,79,4494,2108,4456,176,94,91,98,86),
(19461,78,4437,2082,4399,174,93,90,97,85),
(19461,77,4380,2056,4342,172,92,89,96,84),
(19461,76,4323,2030,4285,170,91,88,95,83),
(19461,75,4266,2004,4228,168,90,87,94,82),
(19461,74,4209,1978,4171,166,89,86,93,81),
(19461,73,4152,1952,4114,164,88,85,92,80),
(19461,72,4095,1926,4057,162,87,84,91,79),
(19461,71,4038,1900,4000,160,86,83,90,78),
(19461,70,3981,1874,3943,158,85,82,89,77),
(19461,69,3924,1848,3886,156,84,81,88,76),
(19461,68,3867,1822,3829,154,83,80,87,75),
(19461,67,3810,1796,3772,152,82,79,86,74),
(19461,66,3753,1770,3715,150,81,78,85,73),
(19461,65,3696,1744,3658,148,80,77,84,72),
(19461,64,3639,1718,3601,146,79,76,83,71),
(19461,63,3582,1692,3544,144,78,75,82,70),
(19461,62,3525,1666,3487,142,77,74,81,69),
(19461,61,3468,1640,3430,140,76,73,80,68),
(19461,60,3411,1614,3373,138,75,72,79,67),
(19461,59,3354,1588,3316,136,74,71,78,66),
(19461,58,3297,1562,3259,134,73,70,77,65),
(19461,57,3240,1536,3202,132,72,69,76,64),
(19461,56,3183,1510,3145,130,71,68,75,63),
(19461,55,3126,1484,3088,128,70,67,74,62),
(19461,54,3069,1458,3031,126,69,66,73,61),
(19461,53,3012,1432,2974,124,68,65,72,60),
(19461,52,2955,1406,2917,122,67,64,71,59),
(19461,51,2898,1380,2860,120,66,63,70,58),
(19461,50,2841,1354,2803,118,65,62,69,57),
(19461,49,2784,1328,2746,116,64,61,68,56),
(19461,48,2727,1302,2689,114,63,60,67,55),
(19461,47,2670,1276,2632,112,62,59,66,54),
(19461,46,2613,1250,2575,110,61,58,65,53),
(19461,45,2556,1224,2518,108,60,57,64,52),
(19461,44,2499,1198,2461,106,59,56,63,51),
(19461,43,2442,1172,2404,104,58,55,62,50),
(19461,42,2385,1146,2347,102,57,54,61,49),
(19461,41,2328,1120,2290,100,56,53,60,48),
(19461,40,2271,1094,2233,98,55,52,59,47),
(19461,39,2214,1068,2176,96,54,51,58,46),
(19461,38,2157,1042,2119,94,53,50,57,45),
(19461,37,2100,1016,2062,92,52,49,56,44),
(19461,36,2043,990,2005,90,51,48,55,43),
(19461,35,1986,964,1948,88,50,47,54,42),
(19461,34,1929,938,1891,86,49,46,53,41),
(19461,33,1872,912,1834,84,48,45,52,40),
(19461,32,1815,886,1777,82,47,44,51,39),
(19461,31,1758,860,1720,80,46,43,50,38),
(19461,30,1701,834,1663,78,45,42,49,37),
(19461,29,1644,808,1606,76,44,41,48,36),
(19461,28,1587,782,1549,74,43,40,47,35),
(19461,27,1530,756,1492,72,42,39,46,34),
(19461,26,1473,730,1435,70,41,38,45,33),
(19461,25,1416,704,1378,68,40,37,44,32),
(19461,24,1359,678,1321,66,39,36,43,31),
(19461,23,1302,652,1264,64,38,35,42,30),
(19461,22,1245,626,1207,62,37,34,41,29),
(19461,21,1188,600,1150,60,36,33,40,28),
(19461,20,1131,574,1093,58,35,32,39,27),
(19461,19,1074,548,1036,56,34,31,38,26),
(19461,18,1017,522,979,54,33,30,37,25),
(19461,17,960,496,922,52,32,29,36,24),
(19461,16,903,470,865,50,31,28,35,23),
(19461,15,846,444,808,48,30,27,34,22),
(19461,14,789,418,751,46,29,26,33,21),
(19461,13,732,392,694,44,28,25,32,20),
(19461,12,675,366,637,42,27,24,31,19),
(19461,11,618,340,580,40,26,23,30,18),
(19461,10,561,314,523,38,25,22,29,17),
(19461,9,504,288,466,36,24,21,28,16),
(19461,8,447,262,409,34,23,20,27,15),
(19461,7,390,236,352,32,22,19,26,14),
(19461,6,333,210,295,30,21,18,25,13),
(19461,5,276,184,238,28,20,17,24,12),
(19461,4,219,158,181,26,19,16,23,11),
(19461,3,162,132,124,24,18,15,22,10),
(19461,2,105,106,67,22,17,14,21,9),
(19461,1,48,80,10,20,16,13,20,8);

-- UDB_297
-- frozen halls entrance teleport
DELETE FROM game_tele WHERE id = 1426; 
INSERT INTO game_tele (id, position_x, position_y, position_z, orientation, map, name) VALUES
(1426, 5632.477, 2016.71, 798.27, 4.73, 571, 'frozenhalls');
-- fix for few items
-- now they will display correct info (and 100% they're not part of milling)
UPDATE item_template SET Flags = 2048 WHERE entry = 37020;
UPDATE item_template SET Flags = 2048 WHERE entry = 37200;
UPDATE item_template SET Flags = 64 WHERE entry = 40652;
UPDATE item_template SET Flags = 2112 WHERE entry = 40970;
UPDATE item_template SET Flags = 2048 WHERE entry = 41843;

-- UDB_298
ALTER TABLE db_version CHANGE COLUMN required_12936_01_mangos_mangos_string required_12938_01_mangos_scriptdev2_tables bit;
DROP TABLE IF EXISTS `custom_texts`;
CREATE TABLE `custom_texts` (
  `entry` mediumint(8) NOT NULL,
  `content_default` text NOT NULL,
  `content_loc1` text,
  `content_loc2` text,
  `content_loc3` text,
  `content_loc4` text,
  `content_loc5` text,
  `content_loc6` text,
  `content_loc7` text,
  `content_loc8` text,
  `sound` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `language` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `emote` smallint(5) unsigned NOT NULL DEFAULT '0',
  `comment` text,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Custom Texts';

DROP TABLE IF EXISTS `gossip_texts`;
CREATE TABLE `gossip_texts` (
  `entry` mediumint(8) NOT NULL,
  `content_default` text NOT NULL,
  `content_loc1` text,
  `content_loc2` text,
  `content_loc3` text,
  `content_loc4` text,
  `content_loc5` text,
  `content_loc6` text,
  `content_loc7` text,
  `content_loc8` text,
  `comment` text,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Gossip Texts';
DROP TABLE IF EXISTS `script_texts`;
CREATE TABLE `script_texts` (
  `entry` mediumint(8) NOT NULL,
  `content_default` text NOT NULL,
  `content_loc1` text,
  `content_loc2` text,
  `content_loc3` text,
  `content_loc4` text,
  `content_loc5` text,
  `content_loc6` text,
  `content_loc7` text,
  `content_loc8` text,
  `sound` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `language` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `emote` smallint(5) unsigned NOT NULL DEFAULT '0',
  `comment` text,
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Script Texts';
DROP TABLE IF EXISTS script_waypoint;
CREATE TABLE script_waypoint (
  entry mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'creature_template entry',
  pointid mediumint(8) unsigned NOT NULL DEFAULT '0',
  location_x float NOT NULL DEFAULT '0',
  location_y float NOT NULL DEFAULT '0',
  location_z float NOT NULL DEFAULT '0',
  waittime int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'waittime in millisecs',
  point_comment text,
  PRIMARY KEY (entry, pointid)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Script Creature waypoints';

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
UPDATE db_version set version = 'UDB 0.12.2 (408) for CMaNGOS 12938 with ScriptDev2';
UPDATE db_version set cache_id = 408;
