-- misc changes (Thx @ evil@WoW for pointing & providing part of the dataz)
DELETE FROM conditions WHERE condition_entry = 724;
INSERT INTO conditions (condition_entry, TYPE, value1, value2) VALUES
(724, -1, 229, 114);
UPDATE gossip_menu_option SET condition_id = 724 WHERE menu_id = 2703 AND id = 0;

DELETE FROM conditions WHERE condition_entry IN (725, 726, 727, 728, 729, 730, 731, 732);
INSERT INTO conditions (condition_entry, TYPE, value1, value2) VALUES
(725, 30, 942, 4),
(726, 30, 942, 5),
(727, 30, 942, 6),
(728, 30, 942, 7),
(729, -1, 240, 725),
(730, -1, 239, 726),
(731, -1, 435, 727),
(732, -1, 392, 728);
UPDATE gossip_menu_option SET condition_id = 729 WHERE menu_id IN (7560, 7559) AND id = 0;
UPDATE gossip_menu_option SET condition_id = 730 WHERE menu_id IN (7560, 7559) AND id = 1;
UPDATE gossip_menu_option SET condition_id = 731 WHERE menu_id IN (7560, 7559) AND id = 2;
UPDATE gossip_menu_option SET condition_id = 732 WHERE menu_id IN (7560, 7559) AND id = 3;

UPDATE dbscripts_on_gossip SET datalong = 67871 WHERE id = 194502 AND command = 9;

DELETE FROM gossip_menu WHERE entry = 20025;
INSERT INTO gossip_menu (entry, text_id) VALUES
(20025, 2606);
UPDATE gossip_menu_option SET action_menu_id = 20025 WHERE menu_id = 1945 AND id = 1;

UPDATE gossip_menu_option SET option_text = 'How can I help?' WHERE menu_id = 21 AND id = 0;
UPDATE gossip_menu_option SET option_text = 'I wish to face the Defiler.' WHERE menu_id = 1541 AND id = 0;
UPDATE gossip_menu_option SET option_text = 'Hrm, I\'m listening. What is this offer?' WHERE menu_id = 4781 AND id = 1;
UPDATE gossip_menu_option SET option_text = 'I\'m ready to fly! Take me up, dragon!' WHERE menu_id = 8229 AND id = 0;

UPDATE gossip_menu_option SET option_text = 'What\'s needed for the cauldron at Felstone Field?' WHERE menu_id = 3223 AND id = 2;
UPDATE gossip_menu_option SET option_text = 'What\'s needed for the cauldron at Dalson\'s Tears?' WHERE menu_id = 3223 AND id = 3;
UPDATE gossip_menu_option SET option_text = 'What\'s needed for the cauldron at the Writhing Haunt?' WHERE menu_id = 3223 AND id = 4;
UPDATE gossip_menu_option SET option_text = 'What\'s needed for the cauldron at Gahrron\'s Withering?' WHERE menu_id = 3223 AND id = 5;
UPDATE gossip_menu_option SET option_text = 'What\'s needed for the cauldron at Felstone Field?' WHERE menu_id = 3228 AND id = 2;
UPDATE gossip_menu_option SET option_text = 'What\'s needed for the cauldron at Dalson\'s Tears?' WHERE menu_id = 3228 AND id = 3;
UPDATE gossip_menu_option SET option_text = 'What\'s needed for the cauldron at the Writhing Haunt?' WHERE menu_id = 3228 AND id = 4;
UPDATE gossip_menu_option SET option_text = 'What\'s needed for the cauldron at Gahrron\'s Withering?' WHERE menu_id = 3228 AND id = 5;
-- misc corrections
UPDATE creature_template SET minlevelhealth = maxlevelhealth WHERE entry IN (24646, 39166, 39167, 39168);
UPDATE creature_template SET minlevelhealth = 55, maxlevelhealth = 64 WHERE entry = 6486;
UPDATE creature_template SET minlevelhealth = 2964, maxlevelhealth = 3100 WHERE entry = 9436;
UPDATE creature_template SET minlevelhealth = 92910, maxlevelhealth = 96100 WHERE entry = 24646;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 85236;

-- ## -- Startup errors -- ## --
UPDATE creature_template_addon SET auras = '' WHERE entry IN (24751, 27661, 27662, 28093, 28614, 28616, 29836, 29838, 29982, 30268, 31884, 32222, 34244, 36477, 36658, 38248, 38308, 38309);
UPDATE creature_addon SET auras = '' WHERE guid IN (85150, 85151, 85152, 85153, 85154, 85155, 85156, 85157, 85158, 88541, 88542, 88543, 88546, 88548, 88550, 88553, 88554, 88555, 88558, 88559, 88606, 88609, 125946, 128590, 128591, 128592, 128593, 128595, 128596, 128597, 128598, 128599, 128600, 128616, 128617, 128618, 128619, 128620, 128621, 128622, 128623, 128624, 128625, 128626, 131177, 131178, 131186, 131187, 131748, 132167, 132168, 132169, 132170, 132171, 132172, 132173, 132174, 132175, 132176, 132177, 132178, 132179, 132180, 132181, 133306, 133307, 133326, 133327, 133328, 133329, 133330, 133331, 133416, 133417, 133418, 133419, 133430, 133432, 133433, 133436, 133437);
-- False positives
UPDATE creature_template_addon SET auras='63500 64718' WHERE entry=34244; -- WAS 43671 63500 64718
UPDATE creature_addon SET auras='64718 64723' WHERE guid IN (85151,85156,85157,85158); -- WERE 43671 64718 64723
-- small text update in Okla's Event
UPDATE db_script_string SET content_default ='Yes you may, Okla. But do not stray too far from home.' WHERE entry = 2000005321;