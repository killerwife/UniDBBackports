-- Updatepack_408

-- UDB_059
-- Headless Horseman 
UPDATE creature_template SET EquipmentTemplateId = 2494 WHERE entry = 23682;

-- 2.4 progression?
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
