-- Sunfury Warlock
-- spell must have a target -- Sunfury Warlock uses it to channel on Azaloth
DELETE FROM spell_script_target WHERE entry = 38722;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES 
(38722, 1, 21506);
UPDATE creature_template SET factionAlliance = 1813, factionHorde = 1813 WHERE entry = 21503;
UPDATE creature SET MovementType = 2, spawndist  =0 WHERE guid = 75414;
DELETE FROM creature_movement WHERE id = 75414;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(75414,1,-3824.080566,342.716705,120.657806,0,0,0,0,0,0,0,0,0,1.511785,0,0),
(75414,2,-3824.897949,309.914795,120.632156,0,0,0,0,0,0,0,0,0,4.684789,0,0),
(75414,3,-3824.870605,256.013763,120.616676,0,0,0,0,0,0,0,0,0,4.751546,0,0),
(75414,4,-3824.703613,314.869141,120.657677,0,0,0,0,0,0,0,0,0,1.570683,0,0);
-- now 5 that channel spell on Azaloth
-- 1st
UPDATE creature SET position_x = -3821.185059, position_y = 388.192596, position_z = 120.564316, orientation = 3.542035, MovementType = 2, spawndist = 0 WHERE guid = 75409;
DELETE FROM creature_movement WHERE id = 75409;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(75409,1,-3821.185059,388.192596,120.564316,30000,0,0,0,0,0,0,38722,0,3.542035,0,0), -- TO DO: Spell stucks on npc - should be removed on aggro
(75409,2,-3821.185059,388.192596,120.564316,0,0,0,0,0,0,0,0,0,3.542035,0,0);
-- 2nd
UPDATE creature SET position_x =- 3844.86499, position_y = 388.54379, position_z = 120.416885, orientation = 5.969026, MovementType = 2, spawndist = 0 WHERE guid = 75410;
DELETE FROM creature_movement WHERE id = 75410;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(75410,1,-3844.86499,388.54379,120.416885,30000,0,0,0,0,0,0,38722,0,5.969026,0,0), -- TO DO: Spell stucks on npc - should be removed on aggro
(75410,2,-3844.86499,388.54379,120.416885,0,0,0,0,0,0,0,0,0,5.969026,0,0);
-- 3rd
UPDATE creature SET position_x = -3841.58496, position_y = 376.102, position_z = 120.403328, orientation = 0.9948376, MovementType = 2, spawndist = 0 WHERE guid = 75411;
DELETE FROM creature_movement WHERE id = 75411;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(75411,1,-3841.58496,376.102,120.403328,30000,0,0,0,0,0,0,38722,0,0.9948376,0,0), -- TO DO: Spell stucks on npc - should be removed on aggro
(75411,2,-3841.58496,376.102,120.403328,0,0,0,0,0,0,0,0,0,0.9948376,0,0);
-- 4th
UPDATE creature SET position_x = -3824.62988, position_y = 374.3699, position_z = 120.57457, orientation = 2.234, MovementType = 2, spawndist = 0 WHERE guid = 75412;
DELETE FROM creature_movement WHERE id = 75412;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(75412,1,-3824.62988,374.3699,120.57457,30000,0,0,0,0,0,0,38722,0,2.234,0,0), -- TO DO: Spell stucks on npc - should be removed on aggro
(75412,2,-3824.62988,374.3699,120.57457,0,0,0,0,0,0,0,0,0,2.234,0,0);
-- 5th
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 75408;
DELETE FROM creature_movement WHERE id = 75408;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(75408,1,-3839.98,403.547,120.641,30000,0,0,0,0,0,0,38722,0,5.25344,0,0), -- TO DO: Spell stucks on npc - should be removed on aggro
(75408,2,-3839.98,403.547,120.641,0,0,0,0,0,0,0,0,0,5.25344,0,0);