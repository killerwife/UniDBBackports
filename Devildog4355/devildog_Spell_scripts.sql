-- spell must have a target -- Eclipsion Spellbinder uses it to channel Eclipse Point - Bloodcrystal Spell Orgin
DELETE FROM spell_script_target WHERE entry = 35190;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES 
(35190, 1, 20431);