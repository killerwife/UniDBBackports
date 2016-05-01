-- Tested By Devildog | WORKING
-- Enraged Spirits of Air(q.10481) -H -A
DELETE FROM dbscripts_on_quest_end WHERE id = 10481;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES
(10481,0,0,0,0,0,0,0,2000005489,0,0,0,0,0,0,0,''),
(10481,2,10,21129,84000,0,0,0,0,0,0,0,-3604.86,1915.55,48.033,4.92384,'summon - Scorned Spirit of Earth'),
(10481,2,10,21130,84000,0,0,0,0,0,0,0,-3596.865,1914.886,47.969,4.393,'summon - Scorned Spirit of Fire'),
(10481,3,15,25035,0,21129,15,7,0,0,0,0,0,0,0,0,'cast Elemental Spawn-in'),
(10481,3,15,25035,0,21130,15,7,0,0,0,0,0,0,0,0,'cast Elemental Spawn-in'),
(10481,3,10,21131,83000,0,0,0,0,0,0,0,-3611.59,1912.09,47.6579,5.31953,'summon - Scorned Spirit of Water'),
(10481,3,10,21132,83000,0,0,0,0,0,0,0,-3591.5,1911.29,47.3262,4.03163,'summon - Scorned Spirit of Air'),
(10481,4,15,25035,0,21131,15,7,0,0,0,0,0,0,0,0,'cast Elemental Spawn-in'),
(10481,4,15,25035,0,21132,15,7,0,0,0,0,0,0,0,0,'cast Elemental Spawn-in'),
(10481,4,3,0,0,0,0,0,0,0,0,0,0,0,0,1.60145,''),
(10481,4,3,0,0,21026,15,0x04,0,0,0,0,0,0,0,1.60145,''),
(10481,7,0,0,0,21129,15,0x04,2000005490,0,0,0,0,0,0,0,''),
(10481,9,0,0,0,21130,15,0x04,2000005491,0,0,0,0,0,0,0,''),
(10481,11,1,2,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10481,11,0,2,0,0,0,0,2000005492,0,0,0,0,0,0,0,''),
(10481,14,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10481,14,0,0,0,0,0,0,2000005493,0,0,0,0,0,0,0,''),
(10481,18,0,0,0,21131,15,0x04,2000005494,0,0,0,0,0,0,0,''),
(10481,21,0,0,0,21132,15,0x04,2000005495,0,0,0,0,0,0,0,''),
(10481,25,1,273,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10481,25,0,2,0,0,0,0,2000005496,0,0,0,0,0,0,0,''),
(10481,28,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10481,29,0,0,0,0,0,0,2000005497,0,0,0,0,0,0,0,''),
(10481,34,1,6,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10481,34,0,0,0,0,0,0,2000005498,0,0,0,0,0,0,0,''),
(10481,38,0,0,0,21129,15,0x04,2000005499,0,0,0,0,0,0,0,''),
(10481,45,1,6,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10481,45,0,0,0,0,0,0,2000005500,0,0,0,0,0,0,0,''),
(10481,48,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10481,52,0,0,0,21130,15,0x04,2000005501,0,0,0,0,0,0,0,''),
(10481,55,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10481,55,0,0,0,0,0,0,2000005502,0,0,0,0,0,0,0,''),
(10481,59,0,0,0,21131,15,0x04,2000005503,0,0,0,0,0,0,0,''),
(10481,63,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10481,63,0,0,0,0,0,0,2000005504,0,0,0,0,0,0,0,''),
(10481,68,0,0,0,21132,15,0x04,2000005505,0,0,0,0,0,0,0,''),
(10481,71,0,0,0,21129,15,0x04,2000005506,0,0,0,0,0,0,0,''),
(10481,75,0,0,0,21130,15,0x04,2000005507,0,0,0,0,0,0,0,''),
(10481,78,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10481,78,0,0,0,0,0,0,2000005508,0,0,0,0,0,0,0,''),
(10481,82,0,0,0,21129,15,0x04,2000005509,0,0,0,0,0,0,0,''),
(10481,86,1,273,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10481,86,0,2,0,0,0,0,2000005496,0,0,0,0,0,0,0,''),
(10481,90,0,0,0,0,0,0,2000005510,0,0,0,0,0,0,0,''),
(10481,90,3,0,0,0,0,0,0,0,0,0,0,0,0,4.93928,''),
(10481,90,3,0,0,21026,15,0x04,0,0,0,0,0,0,0,4.90438,'');
UPDATE quest_template SET CompleteScript = 10481 WHERE entry = 10481;
UPDATE creature_template SET MovementType = 0 WHERE entry IN (21129, 21130, 21131, 21132);
DELETE FROM db_script_string WHERE entry BETWEEN 2000005489 AND 2000005510;
INSERT INTO db_script_string (entry, content_default) VALUES
(2000005489,'Stand back, $N. The spirits may lash out.'),
(2000005490,'Why have you captured us?'),
(2000005491,'What is it that you hope to gain from this?'),
(2000005492,'%s bows.'),
(2000005493,'We wish to help you, spirit. We seek your wisdom.'),
(2000005494,'Wisdom? It was your people that caused the insufferable wrath of Cyrukh.'),
(2000005495,'Why should we help you? The world is ruined. Destroyed.'),
(2000005496,'%s nods.'),
(2000005497,'You are right, spirit. It was my people that did this to you. Allow us to make it right.'),
(2000005498,'Please tell us this: Who or what is Cyrukh?'),
(2000005499,'Fool! Cyrukh the fire lord! When the tie was severed, Cyrukh awoke. It is the tears of Cyrukh that fill this land with molten rock.'),
(2000005500,'The... The fire lord? An elemental lord was unearthed? Of course... Gul\'dan you were a damned fool!'),
(2000005501,'He is insane now. Driven mad during the shattering. There is no rest for the elements.'),
(2000005502,'There must be a way.'),
(2000005503,'Yes, a way. Destroy Cyrukh. Destroy an elemental lord.'),
(2000005504,'Do not doubt my comrades and I, spirit. Tell us how to conjure the fire lord. My allies will destroy him.'),
(2000005505,'You must utter the words...'),
(2000005506,'Yes... Yes... the words. The words of damnation. The words spoken by the dark one. Your master.'),
(2000005507,'Yes... Gul\'dan...'),
(2000005508,'We will find these words. We will summon your master and we will destroy him.'),
(2000005509,'Talk. More talk... Now release us, mortal.'),
(2000005510,'Now to recover the lost words!');


-- Schmoozerd
-- Important - vehicle accessory related
UPDATE creature_template_addon SET auras=NULL WHERE entry IN (32638, 32639, 32642, 32641);

-- thx to Reamer
DELETE FROM spell_script_target WHERE entry IN (63820, 64425, 64620);
INSERT INTO spell_script_target (entry, TYPE, targetEntry) VALUES
(63820, 1, 33856),
(64425, 1, 33856),
(64620, 1, 33856);

-- Dire Maul doors to library, appears ONLY 179550 can have flags 48, but if and only if entering DM north
UPDATE gameobject_template SET flags=34 WHERE entry IN (179550, 179549);

-- Drop ReqSpellCast fields
UPDATE quest_template SET ReqSpellCast1 = 0, ReqSpellCast2 = 0, ReqSpellCast3 = 0,ReqSpellCast4 = 0 WHERE entry IN (28, 29, 532, 553, 849, 13119, 11607, 5096, 9294, 10488, 10833);
