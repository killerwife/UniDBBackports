-- cant find movement data
-- Curator Thorius c.8256
UPDATE creature_movement SET script_id = 825601, emote = 0 WHERE id = 1887 AND point = 15;
UPDATE creature_movement SET script_id = 825602, textid1 = 0 WHERE id = 1887 AND point = 16;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (825601,825602); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(825601,3,1,11,0,0,0,0,0,0,0,0,0,0,0,0,''),
(825602,1,0,0,0,0,0,0,2000005000,0,0,0,0,0,0,0,'');
INSERT INTO `DB_Script_string` (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
('2000005000','Poor Dorius. If I ever get my hands on those Dark Irons, so help me...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),



-- Escalate to XS
-- Sayge c.14822
DELETE FROM creature_movement WHERE id = 142315;
UPDATE creature SET MovementType = 2 WHERE guid = 142315;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`,  `orientation`, `model1`, `model2`) VALUES
('142315','1','-2259.21','5197.81','-9.90456','10000','0','0','0','0','0','0','0','0','1.20428','0','0'),
('142315','2','-2259.21','5197.81','-9.90456','10000','0','0','0','0','0','0','0','0','1.20428','0','0'),
('142315','3','-2259.21','5197.81','-9.90456','15000','0','0','0','0','0','0','0','0','1.20428','0','0'),
('142315','4','-2259.21','5197.81','-9.90456','10000','0','0','0','0','0','0','0','0','1.20428','0','0'),
('142315','5','-2259.21','5197.81','-9.90456','10000','1482201','0','0','0','0','0','0','0','1.20428','0','0'),
('142315','6','-2259.21','5197.81','-9.90456','15000','0','0','0','0','0','0','0','0','1.20428','0','0'),
('142315','7','-2259.21','5197.81','-9.90456','10000','0','0','0','0','0','0','0','0','1.20428','0','0'),
('142315','8','-2259.21','5197.81','-9.90456','10000','0','0','0','0','0','0','0','0','1.20428','0','0'),
('142315','9','-2259.21','5197.81','-9.90456','15000','0','0','0','0','0','0','0','0','1.20428','0','0'),
('142315','10','-2259.21','5197.81','-9.90456','10000','0','0','0','0','0','0','0','0','1.20428','0','0');
DELETE FROM dbscripts_on_creature_movement WHERE id = 1482201; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1482201,1,0,0,0,0,0,0,2000005026,2000005213,2000005227,2000005232,0,0,0,0,'');
-- Professor Thaddeus Paleo <Darkmoon Cards> c.14847
DELETE FROM creature_movement WHERE id = 49446;
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('49446','1','-2238.64','5232.86','-9.89205','5000','0','0','0','0','0','0','0','0','3.66519','0','0'),
('49446','2','-2238.64','5232.86','-9.89205','10000','0','0','0','0','0','0','0','0','3.66519','0','0'),
('49446','3','-2238.64','5232.86','-9.89205','15000','1484701','0','0','0','0','0','0','0','3.66519','0','0'),
('49446','4','-2238.64','5232.86','-9.89205','10000','0','0','0','0','0','0','0','0','3.66519','0','0'),
('49446','5','-2238.64','5232.86','-9.89205','30000','0','0','0','0','0','0','0','0','3.66519','0','0'),
('49446','6','-2238.64','5232.86','-9.89205','10000','0','0','0','0','0','0','0','0','3.66519','0','0'),
('49446','7','-2238.64','5232.86','-9.89205','5000','0','0','0','0','0','0','0','0','3.66519','0','0'),
('49446','8','-2238.64','5232.86','-9.89205','25000','0','0','0','0','0','0','0','0','3.66519','0','0');
DELETE FROM dbscripts_on_creature_movement WHERE id = 1484701; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1484701,1,0,0,0,0,0,0,2000005030,0,0,0,0,0,0,0,'');
-- Silas Darkmoon c.14823
DELETE FROM creature_movement WHERE id = 56348;
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('56348','1','-2287.88','5221.7','-9.98743','45000','0','0','0','0','0','0','0','0','2.89417','0','0'),
('56348','2','-2287.88','5221.7','-9.98743','45000','1482301','0','0','0','0','0','0','0','2.89417','0','0'),
('56348','3','-2271.06','5218.77','-9.98373','0','0','0','0','0','0','0','0','0','2.89417','0','0'),
('56348','4','-2257.39','5205.93','-9.98758','0','0','0','0','0','0','0','0','0','5.54097','0','0'),
('56348','5','-2240','5194.25','-10.4829','45000','0','0','0','0','0','0','0','0','5.38389','0','0'),
('56348','6','-2240','5194.25','-10.4829','45000','1482302','0','0','0','0','0','0','0','5.38389','0','0'),
('56348','7','-2260.97','5210.73','-9.98946','0','0','0','0','0','0','0','0','0','2.5486','0','0'),
('56348','8','-2275.19','5220.14','-9.98464','0','0','0','0','0','0','0','0','0','2.92952','0','0');
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1482301,1482302); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1482301,1,0,0,0,0,0,0,2000005033,2000005216,0,0,0,0,0,0,''),
(1482302,1,0,0,0,0,0,0,2000005034,2000005217,0,0,0,0,0,0,'');
-- Darkmoon Carnie#1 c.14849
UPDATE creature_movement SET script_id = 1484901, textid1 = 0, textid2 = 0 WHERE id = 70025 AND point = 12;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1484901; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1484901,1,0,0,0,0,0,0,2000005048,2000005221,0,0,0,0,0,0,'');
-- Darkmoon Carnie#2 c.14849
UPDATE creature_movement SET script_id = 1484902, textid1 = 0, textid2 = 0 WHERE id = 83350 AND point = 13;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1484902; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1484902,1,0,0,0,0,0,0,2000005133,2000005223,0,0,0,0,0,0,''); 
-- Vectus c.10432
DELETE FROM creature_movement WHERE id = 48805;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(48805,1,143.481,99.0964,104.659,300000,0,0,0,0,0,0,0,0,3.26377,0,0),
(48805,2,143.481,99.0964,104.659,21000,1043201,0,0,0,0,0,0,0,3.26377,0,0),
(48805,3,143.481,99.0964,104.659,30000,0,0,0,0,0,0,0,0,3.26377,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1043201; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1043201,1,0,0,0,0,0,0,2000005027,0,0,0,0,0,0,0,''),
(1043201,10,0,0,0,0,0,0,2000005028,0,0,0,0,0,0,0,''),
(1043201,20,0,0,0,0,0,0,2000005029,0,0,0,0,0,0,0,'');
-- Flik c.14860
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('43673','1','-2270.55','5233.29','-9.97568','0','0','0','0','0','0','0','0','0','2.38874','0','0'),
('43673','2','-2276.9','5241.73','-9.97568','0','0','0','0','0','0','0','0','0','2.24344','0','0'),
('43673','3','-2255.29','5208.17','-9.98774','0','0','0','0','0','0','0','0','0','5.43215','0','0'),
('43673','4','-2232.91','5185.47','-11.3905','0','0','0','0','0','0','0','0','0','5.30257','0','0'),
('43673','5','-2223.88','5170.43','-14.4374','0','0','0','0','0','0','0','0','0','5.09051','0','0'),
('43673','6','-2216.91','5152.45','-19.46','0','0','0','0','0','0','0','0','0','5.04731','0','0'),
('43673','7','-2226.27','5175.24','-13.2331','0','1486001','0','0','0','0','0','0','0','2.12563','0','0'),
('43673','8','-2234.35','5188.92','-11.015','0','0','0','0','0','0','0','0','0','1.98033','0','0'),
('43673','9','-2247.94','5224.83','-9.9771','0','0','0','0','0','0','0','0','0','2.88354','0','0'),
('43673','10','-2267.9','5229.48','-9.97566','0','0','0','0','0','0','0','0','0','2.89925','0','0');
DELETE FROM creature_movement WHERE id IN (56625,43673)
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('56625','1','-9514.32','85.2523','59.6394','0','0','0','0','0','0','0','0','0','5.9906','0','0'),
('56625','2','-9500.13','75.988','56.9262','0','0','0','0','0','0','0','0','0','5.64031','0','0'),
('56625','3','-9468.6','58.2751','56.3321','0','0','0','0','0','0','0','0','0','5.55077','0','0'),
('56625','4','-9457.12','64.6164','55.9461','0','0','0','0','0','0','0','0','0','0.543857','0','0'),
('56625','5','-9456.38','70.3721','56.4487','0','0','0','0','0','0','0','0','0','1.45885','0','0'),
('56625','6','-9497.12','75.3846','56.5196','0','1486001','0','0','0','0','0','0','0','2.96681','0','0'),
('56625','7','-9536.15','78.6537','58.8815','0','1486001','0','0','0','0','0','0','0','3.28097','0','0'),
('56625','8','-9553.78','79.3701','58.8835','0','0','0','0','0','0','0','0','0','2.73904','0','0'),
('56625','9','-9558.93','91.4667','58.8817','0','0','0','0','0','0','0','0','0','0.775549','0','0'),
('56625','10','-9546.51','100.68','59.1198','0','0','0','0','0','0','0','0','0','0.630251','0','0'),
('56625','11','-9528.08','87.3365','58.8825','0','0','0','0','0','0','0','0','0','5.91991','0','0');
DELETE FROM dbscripts_on_creature_movement WHERE id = 1486001; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1486001,1,0,0,0,0,0,0,2000005035,2000005218,0,0,0,0,0,0,'');