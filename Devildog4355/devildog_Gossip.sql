-- NeatElves, slightly adapted for UDB, text corrected
UPDATE creature_template SET gossipmenuid = 10638 WHERE entry = 35364;
DELETE FROM conditions WHERE condition_entry IN (743, 744);
INSERT INTO conditions (condition_entry, TYPE, value1, value2) VALUES
(743, 34, 1, 0),
(744, 34, 0, 0);
DELETE FROM dbscripts_on_gossip WHERE id IN (1063801, 1063802);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES
(1063801, 0, 33, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'stop XP USER'),
(1063802, 0, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'start XP USER');
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 1063801, condition_id = 743 WHERE menu_id = 10638 AND id = 0;
DELETE FROM gossip_menu_option WHERE menu_id = 10638 AND id = 1;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(10638, 1, 16, 'I wish to start gaining experience again.', 1, 1, -1, 0, 1063802, 0, 100000, 'Are you certain you wish to start gaining experience again?', 744);
DELETE FROM gossip_menu_option WHERE menu_id IN (7571, 8542) OR (menu_id = 8540 AND id IN (1,2));
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(7571, 0, 0, 'Please teach me how to become a Master of Potions, Lauranna.', 1, 1, -1, 0, 757101, 0, 0, NULL, 761),
(7571, 1, 0, 'I wish to unlearn Potion Mastery.', 1, 1, -1, 0, 757102, 0, 1500000, 'Do you really want to unlearn your alchemy specialty and lose all associated recipes?', 747),
(8540, 1, 0, 'Please teach me how to become a Master of Elixirs, Lorokeem.', 1, 1, -1, 0, 854001, 0, 0, NULL, 761),
(8540, 2, 0, 'I wish to unlearn Elixir Mastery.', 1, 1, -1, 0,854002, 0, 1500000, 'Do you really want to unlearn your alchemy specialty and lose all associated recipes?', 748),
(8542, 0, 0, 'Please teach me how to become a Master of Transmutations, Zarevhi.', 1, 1, -1, 0, 854201, 0, 0, NULL, 761),
(8542, 1, 0, 'I wish to unlearn Transmutation Mastery.', 1, 1, -1, 0, 854202, 0, 1500000, 'Do you really want to unlearn your alchemy specialty and lose all associated recipes?', 746);

DELETE FROM dbscripts_on_gossip WHERE id IN (757101, 854001, 854201, 757102, 854002, 854202);
INSERT INTO dbscripts_on_gossip (id, command, datalong, comments) VALUES
(757101, 15, 28676, 'cast Potion Master'),
(854001, 15, 28678, 'cast Elixir Master'),
(854201, 15, 28674, 'cast Transmutation Master'),
(757102, 15, 41563, 'cast Unlearn Potion Mastery'),
(854002, 15, 41564, 'cast Unlearn Elixir Mastery'),
(854202, 15, 41565, 'cast Unlearn Transmutation Mastery');
DELETE FROM gossip_menu_option WHERE menu_id = 9832 AND id != 0;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(9832, 1, 0, 'I\'ve lost my Tabard of Blood Knight.', 1, 1, -1, 0, 983201, 0, 0, NULL, 781),
(9832, 2, 0, 'I\'ve lost my Tabard of the Hand.', 1, 1, -1, 0, 983202, 0, 0, NULL, 782),
(9832, 3, 0, 'I\'ve lost my Tabard of the Protector.', 1, 1, -1, 0, 983203, 0, 0, NULL, 783),
(9832, 4, 0, 'I\'ve lost my Green Trophy Tabard of the Illidari.', 1, 1, -1, 0, 983204, 0, 0, NULL, 795),
(9832, 5, 0, 'I\'ve lost my Purple Trophy Tabard of the Illidari.', 1, 1, -1, 0, 983205, 0, 0, NULL, 795),
(9832, 6, 0, 'I\'ve lost my Tabard of Summer Skies.', 1, 1, -1, 0, 983206, 0, 0, NULL, 796),
(9832, 7, 0, 'I\'ve lost my Tabard of Summer Flames.', 1, 1, -1, 0, 983207, 0, 0, NULL, 797),
(9832, 8, 0, 'I\'ve lost my Loremaster\'s Colors.', 1, 1, -1, 0, 983208, 0, 0, NULL, 792),
(9832, 9, 0, 'I\'ve lost my Tabard of the Explorer.', 1, 1, -1, 0, 983209, 0, 0, NULL, 786),
(9832, 10, 0, 'I\'ve lost my Tabard of the Achiever.', 1, 1, -1, 0, 983210, 0, 0, NULL, 787),
(9832, 11, 0, 'I\'ve lost my Tabard of Brute Force.', 1, 1, -1, 0, 983211, 0, 0, NULL, 799),
(9832, 12, 0, 'I\'ve lost my Arathor Battle Tabard.', 1, 1, -1, 0, 983212, 0, 0, NULL, 802),
(9832, 13, 0, 'I\'ve lost my Battle Tabard of the Defilers.', 1, 1, -1, 0, 983213, 0, 0, NULL, 805);

DELETE FROM dbscripts_on_gossip WHERE id IN (983201,983202,983203,983204,983205,983206,983207,983208,983209,983210,983211,983212,983213);
INSERT INTO dbscripts_on_gossip (id, command, datalong, comments) VALUES
(983208, 15, 58194, 'Create Loremaster''s Colors'),
(983206, 15, 62768, 'Create Tabard of Summer Skies'),
(983207, 15, 62769, 'Create Tabard of Summer Flames'),
(983209, 15, 58224, 'Create Tabard of the Explorer'),
(983204, 15, 54977, 'Create Green Trophy Tabard of the Illidari'),
(983205, 15, 54982, 'Create Purple Trophy Tabard of the Illidari'),
(983201, 15, 54974, 'Create Blood Knight Tabard'),
(983202, 15, 54976, 'Create Tabard of the Hand'),
(983203, 15, 55008, 'Create Tabard of the Protector'),
(983210, 15, 55006, 'Create Tabard of the Achiever'),
(983211, 15, 58230, 'Create Tabard of Brute Force'),
(983212, 15, 54971, 'Create Arathor Battle Tabard'),
(983213, 15, 54973, 'Create Battle Tabard of the Defilers');
-- UPDATE creature_template SET ScriptName='' WHERE entry IN (384,1261,1460,2357,3362,3685,4730,4731,4885,7952,7955,16264,17584);
UPDATE creature_template SET gossipmenuid = 4004 WHERE entry IN (1460, 2357, 4885);
UPDATE creature_template SET gossipmenuid = 8098 WHERE entry = 16264;
UPDATE gossip_menu SET condition_id = 845 WHERE entry = 3161 AND text_id = 3893;
UPDATE gossip_menu SET condition_id = 849 WHERE entry = 3162 AND text_id = 3896;
UPDATE gossip_menu SET condition_id = 852 WHERE entry = 3185 AND text_id = 3942;
UPDATE gossip_menu SET condition_id = 853 WHERE entry = 3186 AND text_id = 3945;
UPDATE gossip_menu SET condition_id = 854 WHERE entry = 4001 AND text_id = 4855;
UPDATE gossip_menu SET condition_id = 846 WHERE entry = 4004 AND text_id = 4859;
UPDATE gossip_menu SET condition_id = 847 WHERE entry = 4006 AND text_id = 4862;
UPDATE gossip_menu SET condition_id = 848 WHERE entry = 8213 AND text_id = 10208;
DELETE FROM gossip_menu WHERE (entry = 3161 AND text_id = 5841) OR (entry = 3162 AND text_id = 5842)
OR (entry = 4001 AND text_id = 5856) OR (entry = 4004 AND text_id = 5855)
OR (entry = 4005 AND text_id = 4869) OR (entry = 4006 AND text_id = 5843)
OR (entry = 8098 AND text_id = 10011) OR (entry = 8098 AND text_id = 10305)
OR (entry = 8213 AND text_id = 10239);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(3161, 5841, 0, 0),
(3162, 5842, 0, 0),
(4001, 5856, 0, 0),
(4004, 5855, 0, 0),
(4005, 4869, 0, 851),
(4006, 5843, 0, 0),
(8098, 10011, 0, 850),
(8098, 10305, 0, 0),
(8213, 10239, 0, 0);
UPDATE gossip_menu_option SET condition_id = 846 WHERE menu_id = 4004 AND id = 0;
UPDATE gossip_menu_option SET condition_id = 847 WHERE menu_id = 4006 AND id = 0;
UPDATE gossip_menu_option SET condition_id = 848 WHERE menu_id = 8213 AND id = 0;
UPDATE gossip_menu_option SET condition_id = 849 WHERE menu_id = 3162 AND id = 0;
UPDATE gossip_menu_option SET condition_id = 852 WHERE menu_id = 3185 AND id = 0;
UPDATE gossip_menu_option SET condition_id = 854 WHERE menu_id = 4001 AND id = 0;
DELETE FROM gossip_menu_option WHERE menu_id = 3185 AND id = 1;
DELETE FROM gossip_menu_option WHERE menu_id IN (3161, 8098, 4005, 3186) AND id = 0;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(3161, 0, 1, 'I would like to buy from you.', 3, 128, 0, 0, 0, 0, 0, NULL, 845),
(8098, 0, 1, 'I wish to purchase one of these creatures.', 3, 128, 0, 0, 0, 0, 0, NULL, 850),
(4005, 0, 1, 'I would like to buy from you.', 3, 128, 0, 0, 0, 0, 0, NULL, 851),
(3186, 0, 1, 'I would like to buy from you.', 3, 128, 0, 0, 0, 0, 0, NULL, 853);
-- npc_sayge
UPDATE gossip_menu SET condition_id = 870 WHERE entry = 6186 AND text_id = 7339;
DELETE FROM gossip_menu WHERE entry = 6189 AND text_id = 7393;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES 
(6189, 7393, 0, 869);
UPDATE gossip_menu_option SET condition_id = 870 WHERE menu_id = 6186 AND id = 0;
DELETE FROM dbscripts_on_gossip WHERE id IN (618701, 618702, 618703, 620801, 620802, 620901, 620902, 620903, 6211);
INSERT INTO dbscripts_on_gossip (id, command, datalong, comments) VALUES
(618701, 15, 23768, 'cast Sayge\'s Dark Fortune of Damage'),
(618702, 15, 23769, 'cast Sayge\'s Dark Fortune of Resistance'),
(618703, 15, 23767, 'cast Sayge\'s Dark Fortune of Armor'),
(620801, 15, 23738, 'cast Sayge\'s Dark Fortune of Spirit'),
(620802, 15, 23766, 'cast Sayge\'s Dark Fortune of Intelligence'),
(620901, 15, 23737, 'cast Sayge\'s Dark Fortune of Stamina'),
(620902, 15, 23735, 'cast Sayge\'s Dark Fortune of Strength'),
(620903, 15, 23736, 'cast Sayge\'s Dark Fortune of Agility'),
(6211,   15, 23765, 'cast Sayge\'s Darkmoon Faire Fortune');
UPDATE gossip_menu_option SET action_script_id = 618701 WHERE menu_id = 6187 AND id = 0;
UPDATE gossip_menu_option SET action_menu_id = 6211, action_script_id = 618702 WHERE menu_id = 6187 AND id = 1;
UPDATE gossip_menu_option SET action_menu_id = 6211, action_script_id = 618703 WHERE menu_id = 6187 AND id = 2;
UPDATE gossip_menu_option SET action_menu_id = 6211, action_script_id = 620801 WHERE menu_id = 6208 AND id = 0;
UPDATE gossip_menu_option SET action_menu_id = 6211, action_script_id = 620802 WHERE menu_id = 6208 AND id = 1;
UPDATE gossip_menu_option SET action_menu_id = 6211, action_script_id = 618702 WHERE menu_id = 6208 AND id = 2;
UPDATE gossip_menu_option SET action_menu_id = 6211, action_script_id = 620901 WHERE menu_id = 6209 AND id = 0;
UPDATE gossip_menu_option SET action_menu_id = 6211, action_script_id = 620902 WHERE menu_id = 6209 AND id = 1;
UPDATE gossip_menu_option SET action_menu_id = 6211, action_script_id = 620903 WHERE menu_id = 6209 AND id = 2;
UPDATE gossip_menu_option SET action_menu_id = 6211, action_script_id = 620802 WHERE menu_id = 6210 AND id = 0;
UPDATE gossip_menu_option SET action_menu_id = 6211, action_script_id = 620801 WHERE menu_id = 6210 AND id = 1;
UPDATE gossip_menu_option SET action_menu_id = 6211, action_script_id = 618703 WHERE menu_id = 6210 AND id = 2;
UPDATE gossip_menu_option SET action_script_id = 6211 WHERE menu_id = 6211 AND id = 0;

