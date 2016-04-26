-- Invasion point: Cataclysm -- Shadowmoon Valley
-- Deathforged Infernal - existed objects ..correct spawn points
UPDATE gameobject SET position_x = -2681.76, position_y = 2650.57, position_z = 74.9248, orientation = 1.49062, rotation2 = 0.6782, rotation3 = 0.734878, spawntimesecs = 120 WHERE guid = 64100;
UPDATE gameobject SET position_x = -2667.45, position_y = 2650.3, position_z = 74.9248, orientation = 1.49062, rotation2 = 0.6782, rotation3 = 0.734878, spawntimesecs = 120 WHERE guid = 64102;
UPDATE gameobject SET position_x = -2650.01, position_y = 2650.63, position_z = 74.9207, orientation = 1.50005, rotation2 = 0.681655, rotation3 = 0.731673, spawntimesecs = 120 WHERE guid = 64103;
UPDATE gameobject SET position_x = -2635.25, position_y = 2651.28, position_z = 74.2272, orientation = 1.5024, rotation2 = 0.682516, rotation3 = 0.730871, spawntimesecs = 120 WHERE guid = 64104;
UPDATE gameobject SET position_x = -2619.16, position_y = 2651.79, position_z = 74.0234, orientation = 1.38538, rotation2 = 0.63861, rotation3 = 0.76953, spawntimesecs = 120 WHERE guid = 64105;
UPDATE gameobject SET position_x = -2681.33, position_y = 2637.01, position_z = 74.9247, orientation = 1.52707, rotation2 = 0.69148, rotation3 = 0.722396, spawntimesecs = 120 WHERE guid = 64106;
UPDATE gameobject SET position_x = -2667.66, position_y = 2636.73, position_z = 74.9247, orientation = 1.52707, rotation2 = 0.69148, rotation3 = 0.722396, spawntimesecs = 120 WHERE guid = 64107;
UPDATE gameobject SET position_x = -2649.8, position_y = 2636.73, position_z = 74.9247, orientation = 1.64017, rotation2 = 0.731203, rotation3 = 0.68216, spawntimesecs = 120 WHERE guid = 64108;
UPDATE gameobject SET position_x = -2634.09, position_y = 2637.02, position_z = 74.9247, orientation = 1.65588, rotation2 = 0.736538, rotation3 = 0.676396, spawntimesecs = 120 WHERE guid = 64109;
UPDATE gameobject SET position_x = -2618.6, position_y = 2637.48, position_z = 74.5369, orientation = 1.5365, rotation2 = 0.694876, rotation3 = 0.719129, spawntimesecs = 120 WHERE guid = 64110;
UPDATE gameobject SET position_x = -2681.85, position_y = 2627.42, position_z = 74.3517, orientation = 1.64645, rotation2 = 0.733342, rotation3 = 0.67986, spawntimesecs = 120 WHERE guid = 64111;
UPDATE gameobject SET position_x = -2667.73, position_y = 2628.37, position_z = 74.9249, orientation = 1.48937, rotation2 = 0.67774, rotation3 = 0.735301, spawntimesecs = 120 WHERE guid = 64112;
UPDATE gameobject SET position_x = -2649.61, position_y = 2628.14, position_z = 74.78, orientation = 1.59032, rotation2 = 0.713975, rotation3 = 0.700171, spawntimesecs = 120 WHERE guid = 64113;
UPDATE gameobject SET position_x = -2634.08, position_y = 2628.45, position_z = 74.9248, orientation = 1.59032, rotation2 = 0.713975, rotation3 = 0.700171, spawntimesecs = 120 WHERE guid = 64114;
UPDATE gameobject SET position_x = -2617.89, position_y = 2628.77, position_z = 74.9248, orientation = 1.59032, rotation2 = 0.713975, rotation3 = 0.700171, spawntimesecs = 120 WHERE guid = 64115;
UPDATE gameobject SET position_x = -2681.65, position_y = 2616.81, position_z = 74.1963, orientation = 1.52199, rotation2 = 0.689644, rotation3 = 0.724149, spawntimesecs = 120 WHERE guid = 64116;
UPDATE gameobject SET position_x = -2667.56, position_y = 2618.04, position_z = 74.9077, orientation = 1.54083, rotation2 = 0.696433, rotation3 = 0.717622, spawntimesecs = 120 WHERE guid = 64117;
UPDATE gameobject SET position_x = -2649.27, position_y = 2619.03, position_z = 74.9252, orientation = 1.54083, rotation2 = 0.696433, rotation3 = 0.717622, spawntimesecs = 120 WHERE guid = 64118;
-- Shadow Council Felsworn/Shadow Council Zealot/Gan'arg Technician/Cataclysm Overseer/ - faction update 
UPDATE creature_template SET factionAlliance = 90, factionHorde = 90 WHERE entry IN (21753, 21754, 21960, 21961);
-- Doctor Maleficus - correct movement
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 1117;
-- Plexi - correct spawn point
UPDATE creature SET position_x = -2764.22, position_y = 1980.787, position_z = 167.44, orientation = 1.797 WHERE guid = 86238;
-- Script for Fel Reaver Sentinel
DELETE FROM dbscripts_on_creature_movement WHERE id = 2194901; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES
(2194901,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON');
-- spell must have a target -- Gan'arg Technician uses this spell on Deathforged Infernal
DELETE FROM spell_script_target WHERE entry = 38053;
INSERT INTO spell_script_target (entry, TYPE, targetEntry) VALUES 
(38053, 0, 184979);