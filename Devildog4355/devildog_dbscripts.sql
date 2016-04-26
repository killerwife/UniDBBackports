-- Eclipsion Cavalier should talk to 22016 on his wps
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2131401, 2131402); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2131401,0,31,22016,10,0,0,0,-5000,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(2131401,2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2131401,4,1,66,0,22016,10,0x04,0,0,0,0,0,0,0,0,'force 22016 to: emote'),
(2131402,0,31,22016,10,0,0,0,-5000,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(2131402,2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2131402,4,0,0,0,22016,10,0x04,2000005465,0,0,0,0,0,0,0,'force 22016 to: say');
DELETE FROM db_script_string WHERE entry = 2000005465;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(2000005465,'As you command, Sir!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
-- Ashtongue Shaman <Servant of Illidan>
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2145301, 2145302); -- Scripts for Ashtongue Shaman
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2145301,0,31,21455,20,0,0,0,0,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(2145301,2,15,37067,0,21455,20,0x01,0,0,0,0,0,0,0,0,'cast 37067 on buddy'),
(2145302,0,31,21455,20,0,0,0,0,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(2145302,2,15,37067,0,21455,20,0x01,0,0,0,0,0,0,0,0,'cast 37067 on buddy'),
(2145302,4,0,0,0,0,0,0,2000005470,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry = 2000005470;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(2000005470,'Keep up the good work. Do well and you will be rewarded by the master.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
-- Elekk Demolisher
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2180801, 2180802); -- Script for Elekk Demolisher
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2180801,0,31,21417,20,0,0,0,0,0,0,0,0,0,0,0,''), -- let him check if creature #1 is alive
(2180801,0,31,21803,20,0,0,0,0,0,0,0,0,0,0,0,''), -- let him check if creature #2 is alive
(2180801,2,1,36,0,21803,20,0x04,0,0,0,0,0,0,0,0,'force 21803 to: emote'),
(2180801,4,15,37645,0,21417,20,0x01,0,0,0,0,0,0,0,0,'cast 21417 on buddy'),
(2180802,0,31,21417,20,0,0,0,0,0,0,0,0,0,0,0,''), -- let him check if creature #1 is alive
(2180802,0,31,21803,20,0,0,0,0,0,0,0,0,0,0,0,''), -- let him check if creature #2 is alive
(2180802,2,1,36,0,21803,20,0x04,0,0,0,0,0,0,0,0,'force 21803 to: emote'),
(2180802,4,15,37645,0,21417,20,0x01,0,0,0,0,0,0,0,0,'cast 21417 on buddy'),
(2180802,8,1,36,0,21803,20,0x04,0,0,0,0,0,0,0,0,'force 21803 to: emote'),
(2180802,10,15,37645,0,21417,20,0x01,0,0,0,0,0,0,0,0,'cast 21417 on buddy'),
(2180802,14,1,36,0,21803,20,0x04,0,0,0,0,0,0,0,0,'force 21803 to: emote'),
(2180802,16,15,37645,0,21417,20,0x01,0,0,0,0,0,0,0,0,'cast 21417 on buddy'),
(2180802,20,1,36,0,21803,20,0x04,0,0,0,0,0,0,0,0,'force 21803 to: emote'),
(2180802,22,15,37645,0,21417,20,0x01,0,0,0,0,0,0,0,0,'cast 21417 on buddy'),
(2180802,26,1,36,0,21803,20,0x04,0,0,0,0,0,0,0,0,'force 21803 to: emote'),
(2180802,28,15,37645,0,21417,20,0x01,0,0,0,0,0,0,0,0,'cast 21417 on buddy');