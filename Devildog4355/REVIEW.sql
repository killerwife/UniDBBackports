-- #### Magtheridon ####
DELETE FROM spell_script_target WHERE entry IN (30531, 30541, 30657, 30572);
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(30531, 1 ,17256),
(30657, 1 ,17474),
(30572, 1 ,17474),
(30541, 1 ,17474);
-- target entry for Blood Furnace Magtheridon
DELETE FROM spell_script_target WHERE entry = 30207 and targetEntry = 21174;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(30207, 1, 21174);
