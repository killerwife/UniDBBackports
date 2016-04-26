-- spell must have a target -- Eclipsion Spellbinder uses it to channel Eclipse Point - Bloodcrystal Spell Orgin
DELETE FROM spell_script_target WHERE entry = 35190;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES 
(35190, 1, 20431);
-- spell must have a target -- Sunfury Summoner uses it to channel on Spellbound Terrorguard
DELETE FROM spell_script_target WHERE entry = 38711;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES 
(38711, 1, 21908);
-- spell must have a target -- Shadowmoon Soulstealer uses this spell on 'Heart of Fury Visual Trigger'
DELETE FROM spell_script_target WHERE entry = 38250;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES 
(38250, 1, 22058);