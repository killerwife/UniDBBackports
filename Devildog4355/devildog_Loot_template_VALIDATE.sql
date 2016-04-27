-- KILLERWIFE | Please validate change "Spell_loot_Template" to "gameobject_loot_template"
-- NeatElves: Jewelcrafting loot spell 62941
-- Chances are unclear, but probably equally is just fine
DELETE FROM gameobject_loot_template WHERE entry = 62941;
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) VALUES
(62941, 23094, 0, 1, 1, 1, 0), -- Teardrop(Brilliant) Blood Garnet      5 7
(62941, 23095, 0, 1, 1, 1, 0), -- Bold Blood Garnet          6 5
(62941, 23097, 0, 1, 1, 1, 0), -- Delicate Blood Garnet        1
(62941, 23114, 0, 1, 1, 1, 0), -- Gleaming Golden Draenite  
(62941, 23115, 0, 1, 1, 1, 0), -- Thick Golden Draenite     
(62941, 23116, 0, 1, 1, 1, 0), -- Rigid Golden Draenite     
(62941, 23118, 0, 1, 1, 1, 0), -- Solid Azure Moonstone      5 6
(62941, 23119, 0, 1, 1, 1, 0), -- Sparkling Azure Moonstone 11 5
(62941, 23120, 0, 1, 1, 1, 0), -- Stormy Azure Moonstone    
(62941, 28595, 0, 1, 1, 1, 0); -- Bright Blood Garnet        4







DELETE FROM reference_loot_template WHERE entry = 29500;
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) VALUES
-- first chest
(29500, 33480, 0, 1, 1, 1, 0), --  'Cord of Braided Troll Hair', 128
(29500, 33805, 0, 1, 1, 1, 0), --  'Shadowhunter's Treads', 128
(29500, 33971, 0, 1, 1, 1, 0), --  'Elunite Imbued Leggings', 128
(29500, 33590, 0, 1, 1, 1, 0), --  'Cloak of Fiends', 128
(29500, 33481, 0, 1, 1, 1, 0), --  'Pauldrons of Stone Resolve', 128
(29500, 33591, 0, 1, 1, 1, 0), --  'Shadowcaster's Drape', 128
(29500, 33483, 0, 1, 1, 1, 0), --  'Life-step Belt', 128
(29500, 33489, 0, 1, 1, 1, 0), --  'Mantle of Ill Intent', 128
-- second chest
(29500, 33495, 0, 2, 1, 1, 0), -- 'Rage', 132
(29500, 33493, 0, 2, 1, 1, 0), -- 'Umbral Shiv', 132
(29500, 33494, 0, 2, 1, 1, 0), -- 'Amani Divining Staff', 132
(29500, 33490, 0, 2, 1, 1, 0), -- 'Staff of Dark Mending', 132
(29500, 33492, 0, 2, 1, 1, 0), -- 'Trollbane', 132
(29500, 33491, 0, 2, 1, 1, 0), -- 'Tuskbreaker', 132
-- third chest
(29500, 33500, 0, 3, 1, 1, 0), -- 'Signet of Eternal Life', 141
(29500, 33496, 0, 3, 1, 1, 0), -- 'Signet of Primal Wrath', 141
(29500, 33497, 0, 3, 1, 1, 0), -- 'Mana Attuned Band', 141
(29500, 33498, 0, 3, 1, 1, 0), -- 'Signet of the Quiet Forest', 141
(29500, 33499, 0, 3, 1, 1, 0); -- 'Signet of the Last Defender', 141

DELETE FROM gameobject_loot_template WHERE entry IN (22699, 22790, 22797, 22968);
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) VALUES
-- Chest 22699, 186648, 'Tanzar's Trunk' at Bear
(22699, 29434, 100, 0, 1, 1, 0), -- Badge
(22699, 1, 100, 1, -29500, 1, 734), -- as first chest
(22699, 2, 100, 2, -29500, 1, 735), -- as second chest
(22699, 3, 100, 3, -29500, 1, 736), -- as third chest
(22699, 33809, 100, 0, 1, 1, 737),  -- as forth chest: 'Amani War Bear'
-- Chest 22790, 186667, 'Kraz's Package' at Phoenix
(22790, 29434, 100, 0, 1, 1, 0), -- Badge
(22790, 1, 100, 1, -29500, 1, 734), -- as first chest
(22790, 2, 100, 2, -29500, 1, 735), -- as second chest
(22790, 3, 100, 3, -29500, 1, 736), -- as third chest
(22790, 33809, 100, 0, 1, 1, 737),  -- as forth chest: 'Amani War Bear'
-- Chest 22797, 186672, 'Ashli's Bag' at Lynx
(22797, 29434, 100, 0, 1, 1, 0), -- Badge
(22797, 1, 100, 1, -29500, 1, 734), -- as first chest
(22797, 2, 100, 2, -29500, 1, 735), -- as second chest
(22797, 3, 100, 3, -29500, 1, 736), -- as third chest
(22797, 33809, 100, 0, 1, 1, 737),  -- as forth chest: 'Amani War Bear'
-- Chest 22968, 187021, 'Harkor's Satchel' at Eagle
(22968, 29434, 100, 0, 1, 1, 0), -- Badge
(22968, 1, 100, 1, -29500, 1, 734), -- as first chest
(22968, 2, 100, 2, -29500, 1, 735), -- as second chest
(22968, 3, 100, 3, -29500, 1, 736), -- as third chest
(22968, 33809, 100, 0, 1, 1, 737);  -- as forth chest: 'Amani War Bear'

-- Sartharion special loot, 10m
DELETE FROM creature_loot_template WHERE entry = 28860 AND groupid IN (5, 6, 7);
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) VALUES
-- at least 1 drake
(28860, 43990, 0, 5, 1, 1, 739),
(28860, 43988, 0, 5, 1, 1, 739),
(28860, 43991, 0, 5, 1, 1, 739),
(28860, 43989, 0, 5, 1, 1, 739),
(28860, 43992, 0, 5, 1, 1, 739),
-- at least 2 drakes
(28860, 43995, 0, 6, 1, 1, 738),
(28860, 43998, 0, 6, 1, 1, 738),
(28860, 43994, 0, 6, 1, 1, 738),
(28860, 43996, 0, 6, 1, 1, 738),
(28860, 43993, 0, 6, 1, 1, 738),
-- 3 drakes
(28860, 43986, 0, 7, 1, 1, 736);

-- Sartharion special loot, 25m
DELETE FROM creature_loot_template WHERE entry = 31311 AND groupid IN (5, 6, 7);
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) VALUES
-- at least 1 drake
(31311, 44004, 0, 5, 1, 1, 739),
(31311, 44000, 0, 5, 1, 1, 739),
(31311, 44002, 0, 5, 1, 1, 739),
(31311, 44003, 0, 5, 1, 1, 739),
-- at least 2 drakes
(31311, 44007, 0, 6, 1, 1, 738),
(31311, 44006, 0, 6, 1, 1, 738),
(31311, 44005, 0, 6, 1, 1, 738),
(31311, 44011, 0, 6, 1, 1, 738),
(31311, 44008, 0, 6, 1, 1, 738),
-- 3 drakes
(31311, 43954, 0, 7, 1, 1, 736);

-- DireMaul Tribute Run loot
DELETE FROM gameobject_loot_template WHERE entry = 16577;
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) VALUES
-- Always lootable
(16577, 8766, 100, 0, 15, 20, 0), -- Morning Glory Dew, 1, 55
(16577, 8952, 100, 0, 15, 20, 0), -- Roasted Quail, 1, 55
(16577, 13446, 0, 1, 2, 5, 0), -- Major Healing Potion, 1, 55
(16577, 13444, 0, 1, 2, 5, 0), -- Major Mana Potion, 1, 59
-- 1 boss alive, additional
(16577, 1200701, 100, 1, -12007, 1, 739), -- give in mode 1, 2 or 3
-- 2 bosses alive, additional
(16577, 1200702, 100, 2, -12007, 1, 738), -- give in mode 2 or 3
-- 3 bosses alive, additional
(16577, 1200703, 100, 3, -12007, 1, 736), -- give only in mode 3
-- 4 bosses alive give full loot
(16577, 1200704, 100, 0, -12007, 1, 737); -- give only in mode 4

DELETE FROM reference_loot_template WHERE entry = 12007;
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) VALUES
-- 1 boss alive, additional
(12007, 18475, 0, 1, 1, 1, 0), -- Oddly Magical Belt, 2, 60
(12007, 18476, 0, 1, 1, 1, 0), -- Mud Stained Boots, 2, 60
(12007, 18477, 0, 1, 1, 1, 0), -- Shaggy Leggings, 2, 60
(12007, 18478, 0, 1, 1, 1, 0), -- Hyena Hide Jerkin, 2, 60
(12007, 18479, 0, 1, 1, 1, 0), -- Carrion Scorpid Helm, 2, 60
(12007, 18480, 0, 1, 1, 1, 0), -- Scarab Plate Helm, 2, 60
(12007, 18481, 0, 1, 1, 1, 0), -- Skullcracking Mace, 2, 60
(12007, 18482, 0, 1, 1, 1, 0), -- Ogre Toothpick Shooter, 2, 60
-- 2 bosses alive, additional
(12007, 18500, 0, 2, 1, 1, 0), -- Tarnished Elven Ring, 3, 61
(12007, 18528, 0, 2, 1, 1, 0), -- Cyclone Spaulders, 3, 61
(12007, 18529, 0, 2, 1, 1, 0), -- Elemental Plate Girdle, 3, 61
-- 3 bosses alive, additional
(12007, 18499, 0, 3, 1, 1, 0), -- Barrier Shield, 3, 62
(12007, 18530, 0, 3, 1, 1, 0), -- Ogre Forged Hauberk, 3, 62
(12007, 18531, 0, 3, 1, 1, 0), -- Unyielding Maul, 3, 62
(12007, 18532, 0, 3, 1, 1, 0), -- Mindsurge Robe, 3, 62
-- 4 bosses alive, additional
(12007, 18655, 0, 4, 1, 1, 0), -- Schematic: Major Recombobulator, 2, 55
(12007, 18495, 0, 4, 1, 1, 0), -- Redoubt Cloak, 3, 63
(12007, 18533, 0, 4, 1, 1, 0), -- Gordok Bracers of Power, 3, 63
(12007, 18534, 0, 4, 1, 1, 0), -- Rod of the Ogre Magi, 3, 63
(12007, 18537, 0, 4, 1, 1, 0), -- Counterattack Lodestone, 3, 63
(12007, 18538, 0, 4, 1, 1, 0); -- Treant's Bane  4  63