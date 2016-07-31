-- ----------------
-- Sunwell
-- ----------------
DELETE FROM creature_template_addon WHERE entry = 24895;
UPDATE creature_template SET MinLevel = 74, MaxLevel = 74, MinLevelHealth = 424900, Armor = 7857, MinMeleeDmg = 226, MaxMeleeDmg = 339, InhabitType = InhabitType|4, RegenerateStats = 0 WHERE entry = 24895;
UPDATE creature_template SET FactionAlliance = 14, FactionHorde = 14, UnitFlags = UnitFlags|33554432, MinLevel = 70, MaxLevel = 70, MinLevelHealth = 4890, MaxLevelHealth = 4890 WHERE entry = 25879;
UPDATE creature_template SET FactionAlliance = 14, FactionHorde = 14, MinLevelHealth = 2835, MaxLevelHealth = 2835 WHERE entry = 25855;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70, UnitFlags = UnitFlags|33555200, MinLevelHealth = 6986, MaxLevelHealth = 6986 WHERE entry = 26262;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70, FactionAlliance = 16, FactionHorde = 16, UnitFlags = UnitFlags|33587200, MinLevelHealth = 97804, MaxLevelHealth = 97804 WHERE entry = 25653;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, UnitFlags = UnitFlags|32832, MinLevel = 70, MaxLevel = 70, MinLevelHealth = 78246, MaxLevelHealth = 78246, MinLevelMana = 78875, MaxLevelMana = 78875 WHERE entry = 25708;
UPDATE creature_template SET MinLevel = 73, MaxLevel = 73, MinLevelHealth = 1805825, MaxLevelHealth = 1805825, MinLevelMana = 1693500, MaxLevelMana = 1693500, UnitFlags = UnitFlags|32832 WHERE entry = 25319;
UPDATE creature_template SET MinLevelHealth = 42, MaxLevelHealth = 42, UnitFlags = UnitFlags|33555200 WHERE entry = 26254;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70, MinLevelHealth = 3912160, MaxLevelHealth = 3912160, FactionAlliance = 114, FactionHorde = 114, UnitFlags = UnitFlags|33555200 WHERE entry = 25703;
UPDATE creature_template SET FactionAlliance = 1959, FactionHorde = 1959, UnitFlags = UnitFlags|32832 WHERE entry = 24892;
UPDATE creature_template SET FactionAlliance = 1770, FactionHorde = 1770, UnitFlags = 32832 WHERE entry = 24891;
DELETE FROM spell_script_target WHERE entry IN (44844,44884,45666,44845);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES 
(44844, 1, 24895, 0),
(44884, 1, 24895, 0),
(45666, 1, 25315, 0),
(44845, 1, 24892, 0),
(44845, 1, 24891, 0),
(44845, 1, 24850, 0); 
-- doors
DELETE FROM spell_script_target WHERE entry IN (46609,46610,46637,46650,46652,46638);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES 
(46609, 0, 19871, 0),
(46610, 0, 188119, 0),
(46637, 1, 19871, 0),
(46650, 1, 23472, 0),
(46652, 0, 188075, 0),
(46638, 0, 188119, 0);
DELETE FROM dbscripts_on_spell WHERE id IN (46650, 46609);
INSERT INTO dbscripts_on_spell (id, command, datalong, data_flags, comments) VALUES
(46609,15,46610,8,'Cast Freeze on Ice Barrier'),
(46650,15,46652,8,'Cast Open Brutallus Back Door on Fire Barrier');
-- tele spells
DELETE FROM spell_target_position WHERE id IN (46020,46019);
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z,  target_orientation) VALUES
(46020, 580, 1690.339, 942.1176, 53.07742, 0),
(46019, 580, 1696.196, 951.1885, -74.55846, 0);
-- fix some bad locations
UPDATE gameobject SET position_x = 1746.565, position_y = 621.9134, position_z = 28.05021, orientation = 2.984498 WHERE id = 187869;
UPDATE gameobject SET position_x = 1704.303, position_y = 582.6811, position_z = 28.16483, orientation = 1.605702 WHERE id = 188114;
UPDATE gameobject SET position_x = 1651.921, position_y = 635.3501, position_z = 28.12865, orientation = 6.19592 WHERE id = 188115;
UPDATE gameobject SET position_x = 1696.155, position_y = 674.9676, position_z = 28.05021, orientation = 4.81711 WHERE id = 188116;
UPDATE creature SET position_x = 1696.01, position_y = 675.3926, position_z = 28.13354, orientation = 0.6108652 WHERE guid = 140022;
UPDATE creature SET position_x = 1704.316, position_y = 582.7225, position_z = 28.25068, orientation = 5.009095 WHERE guid = 140020;
UPDATE creature SET position_x = 1652.034, position_y = 635.3538, position_z = 28.20865, orientation = 3.752458 WHERE guid = 140023;
UPDATE creature SET position_x = 1746.551, position_y = 621.9463, position_z = 28.13354, orientation = 2.094395 WHERE guid = 140021;
UPDATE creature SET position_x = 1698.092, position_y = 627.2899, position_z = 58.17708, orientation = 1.692969 WHERE id = 26046;
UPDATE creature SET position_x = 1699.906, position_y = 929.0208, position_z = -74.28365, orientation = 6.161012 WHERE id = 24892;
-- Felmyst movement (currently not used because of MMaps, but keep here for the future);
DELETE FROM creature_movement_template WHERE entry IN (25038);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, orientation) VALUES
(25038,1,1441.640, 520.520, 50.083, 0, 0),
(25038,2,1467.219, 516.318, 50.083, 0, 0),
(25038,3,1492.819, 515.668, 50.083, 0, 0),
(25038,4,1458.170, 501.295, 60.083, 2000, 2.93),
(25038,5,1446.540, 702.570, 50.083, 0, 0),
(25038,6,1469.939, 704.239, 50.083, 0, 0),
(25038,7,1494.760, 705.000, 50.083, 0, 0),
(25038,8,1468.380, 730.267, 60.083, 2000, 5.07); 
-- script targets for felmyst
DELETE FROM spell_script_target WHERE entry = 45388;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(45388, 1, 25038, 0);
DELETE FROM spell_script_target WHERE entry = 45389;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(45389, 1, 25265, 0);
DELETE FROM spell_script_target WHERE entry = 45714;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(45714, 1, 25038, 0);