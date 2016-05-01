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
(1200701, 18475, 0, 1, 1, 1, 0), -- Oddly Magical Belt, 2, 60
(1200701, 18476, 0, 1, 1, 1, 0), -- Mud Stained Boots, 2, 60
(1200701, 18477, 0, 1, 1, 1, 0), -- Shaggy Leggings, 2, 60
(1200701, 18478, 0, 1, 1, 1, 0), -- Hyena Hide Jerkin, 2, 60
(1200701, 18479, 0, 1, 1, 1, 0), -- Carrion Scorpid Helm, 2, 60
(1200701, 18480, 0, 1, 1, 1, 0), -- Scarab Plate Helm, 2, 60
(1200701, 18481, 0, 1, 1, 1, 0), -- Skullcracking Mace, 2, 60
(1200701, 18482, 0, 1, 1, 1, 0), -- Ogre Toothpick Shooter, 2, 60
-- 2 bosses alive, additional
(1200702, 18500, 0, 2, 1, 1, 0), -- Tarnished Elven Ring, 3, 61
(1200702, 18528, 0, 2, 1, 1, 0), -- Cyclone Spaulders, 3, 61
(1200702, 18529, 0, 2, 1, 1, 0), -- Elemental Plate Girdle, 3, 61
-- 3 bosses alive, additional
(1200703, 18499, 0, 3, 1, 1, 0), -- Barrier Shield, 3, 62
(1200703, 18530, 0, 3, 1, 1, 0), -- Ogre Forged Hauberk, 3, 62
(1200703, 18531, 0, 3, 1, 1, 0), -- Unyielding Maul, 3, 62
(1200703, 18532, 0, 3, 1, 1, 0), -- Mindsurge Robe, 3, 62
-- 4 bosses alive, additional
(1200704, 18655, 0, 4, 1, 1, 0), -- Schematic: Major Recombobulator, 2, 55
(1200704, 18495, 0, 4, 1, 1, 0), -- Redoubt Cloak, 3, 63
(1200704, 18533, 0, 4, 1, 1, 0), -- Gordok Bracers of Power, 3, 63
(1200704, 18534, 0, 4, 1, 1, 0), -- Rod of the Ogre Magi, 3, 63
(1200704, 18537, 0, 4, 1, 1, 0), -- Counterattack Lodestone, 3, 63
(1200704, 18538, 0, 4, 1, 1, 0); -- Treant's Bane  4  63