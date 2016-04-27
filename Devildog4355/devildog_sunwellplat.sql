-- #### Sunwell Plateau ####
UPDATE gameobject_template SET flags = flags | 16 WHERE entry IN (187869, 188114, 188115, 188116);
-- other
UPDATE creature_template SET unitflags = unitflags | 33554432 WHERE entry = 25640;
UPDATE creature_template SET InhabitType = InhabitType | 4 WHERE entry IN (25319, 26046, 25502);
-- Linking
DELETE FROM creature_linking_template WHERE entry IN (26046, 25319, 25502, 25708,25588, 25735);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(26046, 580, 25315, 4, 0),
(25319, 580, 25315, 4096, 0),
(25502, 580, 25315, 4112, 0),
(25708, 580, 25315, 4112, 0),
(25735, 580, 25315, 4112, 0),
(25588, 580, 25588, 15, 0);
UPDATE creature_template SET minlevelhealth = 1000, maxlevelhealth = 1000, minlevelmana = 10000, maxlevelmana = 10000 WHERE entry=26046;
-- Shield Orbs stats (ytdb)
UPDATE creature_template SET minlevel=70, maxlevel=70, minlevelhealth=13986, maxlevelhealth=13986, armor=6740, factionAlliance=14, factionHorde=14 WHERE entry = 25502;
-- Power of the blue flight spells (ytdb)
DELETE FROM creature_template_spells WHERE entry=25653;
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4) VALUES
(25653, 45862, 45860, 45856, 45848);
-- Fil Kil'jaeden stats (ytdb)
UPDATE creature_template SET minlevelhealth=9347800, maxlevelhealth=9347800, minlevelmana=1693500, maxlevelmana=1693500 WHERE entry=25315;
