-- spell must have a target -- Sunfury Summoner uses it to channel on Spellbound Terrorguard
DELETE FROM spell_script_target WHERE entry = 38711;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES 
(38711, 1, 21908);
-- spell must have a target -- Shadowmoon Soulstealer uses this spell on 'Heart of Fury Visual Trigger'
DELETE FROM spell_script_target WHERE entry = 38250;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES 
(38250, 1, 22058);
-- spell must have a target -- Sunfury Warlock uses it to channel on Azaloth
DELETE FROM spell_script_target WHERE entry = 38722;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES 
(38722, 1, 21506);
-- Summoner Skartax - EVENT
DELETE FROM spell_script_target WHERE entry = 36431;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(36431,1,21211);