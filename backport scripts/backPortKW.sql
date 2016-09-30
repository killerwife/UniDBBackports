-- UDB_015
-- Mistress of Deception(q.6568)
UPDATE quest_template SET OfferRewardText ='Hmph. That one.$B$BHow is Rokaro? As suspicious as ever, sending me a note like this.$B$BYou must be on an important mission if Rokaro has sent you to me.$B$BWell, I owe the Warchief a favor or two.' WHERE entry = 6568; 

-- redundant wrong script
DELETE FROM dbscripts_on_quest_start WHERE id = 114;
UPDATE quest_template SET StartScript = 0 WHERE Entry = 114;

-- UDB_255
-- r3153
UPDATE creature_template SET ScriptName='guard_orgrimmar' WHERE entry=14304;
UPDATE creature_template SET ScriptName='guard_stormwind' WHERE entry IN (1756);

-- UDB_059
-- Headless Horseman 
DELETE FROM creature_equip_template WHERE entry=152;
INSERT INTO creature_equip_template VALUES(152,13222,0,0);
UPDATE creature_template SET EquipmentTemplateId = 152 WHERE entry = 23682;

UPDATE quest_template SET SpecialFlags = SpecialFlags|1 WHERE QuestFlags = QuestFlags|4096;
UPDATE quest_template SET SpecialFlags = SpecialFlags|1 WHERE QuestFlags = QuestFlags|32768;