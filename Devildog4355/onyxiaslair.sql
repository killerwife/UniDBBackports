-- ---------------
-- Onyxia Lair
-- ---------------
-- Onyxia Lair guard link
DELETE FROM creature_linking_template WHERE entry = 36561;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(36561, 249, 10184, 4096, 0);