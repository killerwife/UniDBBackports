-- pit commander
DELETE FROM creature_movement WHERE id = 68001;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
('68001','1','-199.941','1665.24','45.2592','10000','0','0','0','0','0','0','0','0','4.66678','0','0'),
('68001','2','-207.147','1603.48','33.2814','0','0','0','0','0','0','0','0','0','4.42645','0','0'),
('68001','3','-221.905','1533.7','24.4023','0','0','0','0','0','0','0','0','0','4.50656','0','0'),
('68001','4','-241.069','1459.17','15.1874','0','0','0','0','0','0','0','0','0','4.43588','0','0'),
('68001','5','-248.595','1427.75','13.6812','0','0','0','0','0','0','0','0','0','4.36519','0','0'),
('68001','6','-250.559','1369.9','10.8069','0','0','0','0','0','0','0','0','0','4.72176','0','0'),
('68001','7','-245.765','1306.02','18.5531','0','0','0','0','0','0','0','0','0','4.7736','0','0'),
('68001','8','-242.749','1246.21','28.8983','0','0','0','0','0','0','0','0','0','4.76417','0','0'),
('68001','9','-244.691','1212.71','36.3483','0','0','0','0','0','0','0','0','0','4.69113','0','0'),
('68001','10','-246.422','1188.35','42.7283','0','0','0','0','0','0','0','0','0','4.6228','0','0');
('68001','11','-246.692','1175.22','41.75','5000','6800111','0','0','0','0','0','0','0','4.71011','0','0');
DELETE FROM creature_movement WHERE id = 68001;
UPDATE creature_template SET MovementType = 2 WHERE entry = 18945; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 18945;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(18945,1,-246.692,1175.22,41.75,10000,0,0,0,0,0,0,0,0,4.71011,0,0), 
(18945,2,-246.692,1175.22,41.75,5000,0,0,0,0,0,0,0,33393,4.71011,0,0),
(18945,3,-246.692,1175.22,41.75,35000,0,0,0,0,0,0,0,0,4.71011,0,0);

-- cant find movement data
-- Curator Thorius c.8256

select * from udbmangos.creature where id=8256;
select * from creature where id=8256;
select * from udbmangos.creature_movement where id=1887;
select * from creature_movement_template where entry=8256;
select * from dbscripts_on_creature_movement where id in(188701,188702,188703);
select * from db_script_string where entry in(2000005348,2000005347,2000005349);

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
DELETE FROM creature_movement WHERE id = 70025;
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('70025','1','-2264.34','5221.03','-9.97827','0','0','0','0','0','0','0','0','0','5.23992','0','0'),
('70025','2','-2255.95','5203.96','-9.98725','0','0','0','0','0','0','0','0','0','5.91929','0','0'),
('70025','3','-2244.87','5202.49','-9.98725','0','0','0','0','0','0','0','0','0','1.11658','0','0'),
('70025','4','-2242.85','5214.99','-9.98725','0','0','0','0','0','0','0','0','0','2.07084','0','0'),
('70025','5','-2255.2','5233.18','-9.97606','0','0','0','0','0','0','0','0','0','2.8955','0','0'),
('70025','6','-2273.89','5238.33','-9.97606','0','0','0','0','0','0','0','0','0','2.21221','0','0'),
('70025','7','-2277.01','5243.06','-9.97606','0','0','0','0','0','0','0','0','0','2.1533','0','0'),
('70025','8','-2268.95','5248.49','-9.97606','0','0','0','0','0','0','0','0','0','0.582506','0','0'),
('70025','9','-2273.6','5254.28','-9.97606','0','0','0','0','0','0','0','0','0','3.46492','0','0'),
('70025','10','-2284.76','5249.97','-9.97606','0','0','0','0','0','0','0','0','0','5.23992','0','0'),
('70025','11','-2263.07','5223.15','-9.97599','0','0','0','0','0','0','0','0','0','3.24893','0','0'),
('70025','12','-2278.15','5220.64','-9.98549','0','1484901','0','0','0','0','0','0','0','2.97797','0','0'),
('70025','13','-2290.21','5227.06','-9.98703','0','0','0','0','0','0','0','0','0','2.38107','0','0'),
('70025','14','-2301.18','5240.72','-9.97684','0','0','0','0','0','0','0','0','0','3.93223','0','0'),
('70025','15','-2310.97','5227.54','-9.97835','0','0','0','0','0','0','0','0','0','4.13643','0','0'),
('70025','16','-2305.7','5216.23','-9.98707','0','0','0','0','0','0','0','0','0','5.89179','0','0'),
('70025','17','-2294.76','5211.97','-9.98567','0','0','0','0','0','0','0','0','0','0.437199','0','0'),
('70025','18','-2265.27','5223.52','-9.97672','0','0','0','0','0','0','0','0','0','0.323317','0','0');
UPDATE creature_movement SET script_id = 1484901, textid1 = 0, textid2 = 0 WHERE id = 70025 AND point = 12;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1484901; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1484901,1,0,0,0,0,0,0,2000005048,2000005221,0,0,0,0,0,0,'');
-- Darkmoon Carnie#2 c.14849
DELETE FROM creature_movement WHERE id = 83350;
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('83350','1','-2241.85','5209.55','-9.98725','0','0','0','0','0','0','0','0','0','2.09753','0','0'),
('83350','2','-2257.44','5235.88','-9.9754','0','0','0','0','0','0','0','0','0','2.12502','0','0'),
('83350','3','-2273.26','5237.53','-9.9754','0','0','0','0','0','0','0','0','0','2.28603','0','0'),
('83350','4','-2277.04','5243.18','-9.9754','0','0','0','0','0','0','0','0','0','0.562078','0','0'),
('83350','5','-2267.71','5249.37','-9.9754','0','0','0','0','0','0','0','0','0','2.10539','0','0'),
('83350','6','-2273.62','5253.88','-9.9754','0','0','0','0','0','0','0','0','0','3.80185','0','0'),
('83350','7','-2278.62','5242.79','-9.9754','0','0','0','0','0','0','0','0','0','5.26268','0','0'),
('83350','8','-2267.92','5223.12','-9.9754','0','0','0','0','0','0','0','0','0','3.31097','0','0'),
('83350','9','-2280.51','5221.73','-9.98592','0','0','0','0','0','0','0','0','0','2.72584','0','0'),
('83350','10','-2294.18','5230.82','-9.98797','0','0','0','0','0','0','0','0','0','3.36594','0','0'),
('83350','11','-2299.29','5225.58','-9.98797','0','0','0','0','0','0','0','0','0','5.58862','0','0'),
('83350','12','-2284.58','5216.38','-9.98733','0','0','0','0','0','0','0','0','0','0.145805','0','0'),
('83350','13','-2272','5218.06','-9.98694','0','1484902','0','0','0','0','0','0','0','5.73784','0','0'),
('83350','14','-2253.75','5203.13','-9.98694','0','0','0','0','0','0','0','0','0','5.54935','0','0');
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
DELETE FROM creature_movements WHERE id = 43673;
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
DELETE FROM creature_movement WHERE id IN (56625,43673);
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

-- path of destiny

-- 1st wave
UPDATE creature SET spawndist = 0, MovementType = 2, position_x = -237.226822, position_y = 1136.661133, position_z = 41.666767, orientation = 4.391514955 WHERE guid = 67981;
DELETE FROM creature_movement WHERE id = 67981;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(67981,1,-237.227,1136.66,41.6668,20000,1894401,0,0,0,0,0,0,0,4.39946,0,0),
(67981,2,-250.716,1093.1,41.9,0,0,0,0,0,0,0,0,0,4.78095,0,0),
(67981,3,-252.174,1074.34,54.3073,0,0,0,0,0,0,0,0,0,4.70084,0,0),
(67981,4,-249.985,1046.8,54.3168,1000,1894401,0,0,0,0,0,0,0,4.57914,0,0),
(67981,5,-248.905,1014.4,54.3266,0,0,0,0,0,0,0,0,0,4.64917,0,0),
(67981,6,-248.336,993.958,68.2144,0,0,0,0,0,0,0,0,0,4.73163,0,0),
(67981,7,-247.975,969.204,84.3296,0,0,0,0,0,0,0,0,0,4.74341,0,0),
(67981,8,-248.319,920.639,84.379,0,0,0,0,0,0,0,0,0,4.72601,0,0),
(67981,9,-248.109,895.636,84.379,1000,1894402,0,0,0,0,0,0,0,4.72601,0,0);
UPDATE creature SET spawndist = 0, MovementType = 2, position_x = -215.774307, position_y = 1135.690796, position_z = 41.604073, orientation = 4.084515 WHERE guid = 67985;
DELETE FROM creature_movement WHERE id = 67985;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(67985,1,-215.774,1135.69,41.6041,20000,1894401,0,0,0,0,0,0,0,4.08452,0,0),
(67985,2,-248.279,1093.57,41.6667,0,0,0,0,0,0,0,0,0,4.41342,0,0),
(67985,3,-250.127,1071.97,54.3075,0,0,0,0,0,0,0,0,0,4.7024,0,0),
(67985,4,-249.985,1046.8,54.3168,1000,1894401,0,0,0,0,0,0,0,4.57914,0,0),
(67985,5,-248.905,1014.4,54.3266,0,0,0,0,0,0,0,0,0,4.64917,0,0),
(67985,6,-248.336,993.958,68.2144,0,0,0,0,0,0,0,0,0,4.73163,0,0),
(67985,7,-247.975,969.204,84.3296,0,0,0,0,0,0,0,0,0,4.74341,0,0),
(67985,8,-248.319,920.639,84.379,0,0,0,0,0,0,0,0,0,4.72601,0,0),
(67985,9,-248.109,895.636,84.379,1000,1894402,0,0,0,0,0,0,0,4.72601,0,0);
UPDATE creature SET spawndist = 0, MovementType = 2, position_x = -260.605164, position_y = 1137.083008, position_z = 41.670635, orientation = 4.621477 WHERE guid = 67984;
DELETE FROM creature_movement WHERE id = 67984;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(67984,1,-260.605,1137.08,41.6706,20000,1894401,0,0,0,0,0,0,0,4.62148,0,0),
(67984,2,-253.949,1093.1,41.866,0,0,0,0,0,0,0,0,0,4.66707,0,0),
(67984,3,-253.155,1074.04,54.3067,0,0,0,0,0,0,0,0,0,4.76916,0,0),
(67984,4,-249.985,1046.8,54.3168,1000,1894401,0,0,0,0,0,0,0,4.57914,0,0),
(67984,5,-248.905,1014.4,54.3266,0,0,0,0,0,0,0,0,0,4.64917,0,0),
(67984,6,-248.336,993.958,68.2144,0,0,0,0,0,0,0,0,0,4.73163,0,0),
(67984,7,-247.975,969.204,84.3296,0,0,0,0,0,0,0,0,0,4.74341,0,0),
(67984,8,-248.319,920.639,84.379,0,0,0,0,0,0,0,0,0,4.72601,0,0),
(67984,9,-248.109,895.636,84.379,1000,1894402,0,0,0,0,0,0,0,4.72601,0,0);
UPDATE creature SET spawndist = 0, MovementType = 2, position_x = -204.430954, position_y = 1128.684326, position_z = 41.589573, orientation = 3.842693 WHERE guid = 67986;
DELETE FROM creature_movement WHERE id = 67986;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(67986,1,-204.431,1128.68,41.5896,20000,1894401,0,0,0,0,0,0,0,3.84269,0,0),
(67986,2,-242.527,1094.53,41.6649,0,0,0,0,0,0,0,0,0,4.19364,0,0),
(67986,3,-245.397,1074.1,54.3068,0,0,0,0,0,0,0,0,0,4.60597,0,0),
(67986,4,-249.985,1046.8,54.3168,1000,1894401,0,0,0,0,0,0,0,4.57914,0,0),
(67986,5,-248.905,1014.4,54.3266,0,0,0,0,0,0,0,0,0,4.64917,0,0),
(67986,6,-248.336,993.958,68.2144,0,0,0,0,0,0,0,0,0,4.73163,0,0),
(67986,7,-247.975,969.204,84.3296,0,0,0,0,0,0,0,0,0,4.74341,0,0),
(67986,8,-248.319,920.639,84.379,0,0,0,0,0,0,0,0,0,4.72601,0,0),
(67986,9,-248.109,895.636,84.379,1000,1894402,0,0,0,0,0,0,0,4.72601,0,0);
DELETE FROM creature_linking WHERE guid IN (67986,67984,67985); -- make sure they will spawn together .. so we can synhronize attack
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(67986, 67981, 128),
(67984, 67981, 128),
(67985, 67981, 128);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1894401,1894402); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1894401,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1894402,0,15,5,0,0,0,0,0,0,0,0,0,0,0,0,''); 
-- 2nd wave
UPDATE creature SET spawndist = 0, MovementType = 2, position_x = -260.877899, position_y = 1167.174805, position_z = 41.605026, orientation = 4.368320 WHERE guid = 67982; -- master
DELETE FROM creature_movement WHERE id = 67982;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(67982,1,-260.877899,1167.174805,41.605026,50000,0,0,0,0,0,0,0,0,4.368320,0,0),
(67982,2,-261.333,1146.7,41.6652,20000,1894401,0,0,0,0,0,0,0,4.47017,0,0),
(67982,3,-250.667,1093.94,41.6678,0,0,0,0,0,0,0,0,0,4.935,0,0),
(67982,4,-248.356,1073.42,54.3071,0,0,0,0,0,0,0,0,0,4.86432,0,0),
(67982,5,-249.985,1046.8,54.3168,1000,1894401,0,0,0,0,0,0,0,4.57914,0,0),
(67982,6,-248.905,1014.4,54.3266,0,0,0,0,0,0,0,0,0,4.64917,0,0),
(67982,7,-248.336,993.958,68.2144,0,0,0,0,0,0,0,0,0,4.73163,0,0),
(67982,8,-247.975,969.204,84.3296,0,0,0,0,0,0,0,0,0,4.74341,0,0),
(67982,9,-248.319,920.639,84.379,0,0,0,0,0,0,0,0,0,4.72601,0,0),
(67982,10,-248.109,895.636,84.379,1000,1894402,0,0,0,0,0,0,0,4.72601,0,0);
UPDATE creature SET spawndist = 0, MovementType = 2, position_x = -279.496429, position_y = 1154.829712, position_z = 41.594738, orientation = 4.702899 WHERE guid = 67988;
DELETE FROM creature_movement WHERE id = 67988;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(67988,1,-279.496429,1154.829712,41.594738,50000,0,0,0,0,0,0,0,0,4.702899,0,0),
(67988,2,-274.189,1141.21,42.09,20000,1894401,0,0,0,0,0,0,0,4.59021,0,0),
(67988,3,-258.111,1093.64,41.6667,0,0,0,0,0,0,0,0,0,5.02533,0,0),
(67988,4,-254.94,1073.8,54.3068,0,0,0,0,0,0,0,0,0,4.85254,0,0),
(67988,5,-249.985,1046.8,54.3168,1000,1894401,0,0,0,0,0,0,0,4.57914,0,0),
(67988,6,-248.905,1014.4,54.3266,0,0,0,0,0,0,0,0,0,4.64917,0,0),
(67988,7,-248.336,993.958,68.2144,0,0,0,0,0,0,0,0,0,4.73163,0,0),
(67988,8,-247.975,969.204,84.3296,0,0,0,0,0,0,0,0,0,4.74341,0,0),
(67988,9,-248.319,920.639,84.379,0,0,0,0,0,0,0,0,0,4.72601,0,0),
(67988,10,-248.109,895.636,84.379,1000,1894402,0,0,0,0,0,0,0,4.72601,0,0);
UPDATE creature SET spawndist = 0, MovementType = 2, position_x = -231.076, position_y = 1168.27, position_z = 41.6, orientation = 4.22019 WHERE guid = 67983;
DELETE FROM creature_movement WHERE id = 67983;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(67983,1,-231.076,1168.27,41.6,50000,0,0,0,0,0,0,0,0,4.22019,0,0),
(67983,2,-232.82,1146.14,41.6493,20000,1894401,0,0,0,0,0,0,0,4.57451,0,0),
(67983,3,-242.018,1094.68,41.6667,0,0,0,0,0,0,0,0,0,4.55095,0,0),
(67983,4,-243.06,1074.05,54.3068,0,0,0,0,0,0,0,0,0,4.67661,0,0),
(67983,5,-249.985,1046.8,54.3168,1000,1894401,0,0,0,0,0,0,0,4.57914,0,0),
(67983,6,-248.905,1014.4,54.3266,0,0,0,0,0,0,0,0,0,4.64917,0,0),
(67983,7,-248.336,993.958,68.2144,0,0,0,0,0,0,0,0,0,4.73163,0,0),
(67983,8,-247.975,969.204,84.3296,0,0,0,0,0,0,0,0,0,4.74341,0,0),
(67983,9,-248.319,920.639,84.379,0,0,0,0,0,0,0,0,0,4.72601,0,0),
(67983,10,-248.109,895.636,84.379,1000,1894402,0,0,0,0,0,0,0,4.72601,0,0);
UPDATE creature SET spawndist = 0, MovementType = 2, position_x = -206.522, position_y = 1159.26, position_z = 42.4914, orientation = 4.77705 WHERE guid = 67980;
DELETE FROM creature_movement WHERE id = 67980;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(67980,1,-206.522,1159.26,42.4914,50000,0,0,0,0,0,0,0,0,4.77705,0,0),
(67980,2,-218.043,1141.49,41.6022,20000,1894401,0,0,0,0,0,0,0,3.87865,0,0),
(67980,3,-238.381,1095.06,41.6667,0,0,0,0,0,0,0,0,0,4.41351,0,0),
(67980,4,-241.495,1073.91,54.307,0,0,0,0,0,0,0,0,0,4.55488,0,0),
(67980,5,-249.985,1046.8,54.3168,1000,1894401,0,0,0,0,0,0,0,4.57914,0,0),
(67980,6,-248.905,1014.4,54.3266,0,0,0,0,0,0,0,0,0,4.64917,0,0),
(67980,7,-248.336,993.958,68.2144,0,0,0,0,0,0,0,0,0,4.73163,0,0),
(67980,8,-247.975,969.204,84.3296,0,0,0,0,0,0,0,0,0,4.74341,0,0),
(67980,9,-248.319,920.639,84.379,0,0,0,0,0,0,0,0,0,4.72601,0,0),
(67980,10,-248.109,895.636,84.379,1000,1894402,0,0,0,0,0,0,0,4.72601,0,0);
DELETE FROM creature_linking WHERE guid IN (67980,67983,67988); -- make sure they will spawn together .. so we can synhronize attack
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(67980, 67982, 128),
(67983, 67982, 128),
(67988, 67982, 128);
-- wave 3
UPDATE creature SET position_x = -239.507065, position_y = 1228.832764, position_z = 31.986649, orientation = 4.258552, spawndist = 0, MovementType = 2 WHERE guid = 68311;
DELETE FROM creature_movement WHERE id = 68311;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(68311,1,-242.901,1192.48,42.691,30000,0,0,0,0,0,0,0,0,4.55578,0,0),
(68311,2,-246.947,1159.32,41.6052,30000,0,0,0,0,0,0,0,0,4.52515,0,0),
(68311,3,-247.378,1148.42,41.6191,30000,1894401,0,0,0,0,0,0,0,4.62175,0,0),
(68311,4,-247.742,1093.66,41.6669,0,0,0,0,0,0,0,0,0,4.75527,0,0),
(68311,5,-246.89,1073.81,54.3068,0,0,0,0,0,0,0,0,0,4.75527,0,0),
(68311,6,-249.985,1046.8,54.3168,1000,1894401,0,0,0,0,0,0,0,4.57914,0,0),
(68311,7,-248.905,1014.4,54.3266,0,0,0,0,0,0,0,0,0,4.64917,0,0),
(68311,8,-248.336,993.958,68.2144,0,0,0,0,0,0,0,0,0,4.73163,0,0),
(68311,9,-247.975,969.204,84.3296,0,0,0,0,0,0,0,0,0,4.74341,0,0),
(68311,10,-248.319,920.639,84.379,0,0,0,0,0,0,0,0,0,4.72601,0,0),
(68311,11,-248.109,895.636,84.379,1000,1894402,0,0,0,0,0,0,0,4.72601,0,0);
UPDATE creature SET position_x = -244.683823, position_y = 1231.813232, position_z = 31.481995, orientation = 4.503588 WHERE guid = 67973;
UPDATE creature SET position_x = -252.279816, position_y = 1233.656616, position_z = 31.444748, orientation = 4.725847 WHERE guid = 67987;
DELETE FROM creature_linking WHERE guid IN (67978,67979,67973,67987); -- make sure they will spawn & walk together .. so we can synhronize attack
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(67978, 68311, 640),
(67979, 68311, 640),
(67973, 68311, 640),
(67987, 68311, 640);
-- wave 4
UPDATE creature SET position_x = -248.047028, position_y = 1381.634888, position_z = 10.987271, orientation = 4.641428, spawndist = 0, MovementType = 2 WHERE guid = 68313;
DELETE FROM creature_movement WHERE id = 68313;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(68313,1,-246.997,1324.84,15.4259,0,0,0,0,0,0,0,0,0,4.63094,0,0),
(68313,2,-238.72,1271.37,24.6796,0,0,0,0,0,0,0,0,0,4.72832,0,0),
(68313,3,-240.235,1220.46,33.8146,0,0,0,0,0,0,0,0,0,4.649,0,0),
(68313,4,-241.634,1194.53,42.3178,30000,0,0,0,0,0,0,0,0,4.66863,0,0),
(68313,5,-243.332,1155.89,41.626,30000,1894401,0,0,0,0,0,0,0,4.65685,0,0),
(68313,6,-251.312,1094.19,41.6676,0,0,0,0,0,0,0,0,0,4.55082,0,0),
(68313,7,-251.859,1073.77,54.3068,0,0,0,0,0,0,0,0,0,4.70397,0,0),
(68313,8,-249.985,1046.8,54.3168,1000,1894401,0,0,0,0,0,0,0,4.57914,0,0),
(68313,9,-248.905,1014.4,54.3266,0,0,0,0,0,0,0,0,0,4.64917,0,0),
(68313,10,-248.336,993.958,68.2144,0,0,0,0,0,0,0,0,0,4.73163,0,0),
(68313,11,-247.975,969.204,84.3296,0,0,0,0,0,0,0,0,0,4.74341,0,0),
(68313,12,-248.319,920.639,84.379,0,0,0,0,0,0,0,0,0,4.72601,0,0),
(68313,13,-248.109,895.636,84.379,1000,1894402,0,0,0,0,0,0,0,4.72601,0,0);
UPDATE creature SET position_x = -238.174774, position_y = 1385.511841, position_z = 11.133602, orientation = 4.637506 WHERE guid = 67976;
UPDATE creature SET position_x = -242.903671, position_y = 1383.753174, position_z = 11.040374, orientation = 4.606873 WHERE guid = 67974;
UPDATE creature SET position_x = -253.775238, position_y = 1382.668823, position_z = 10.934957, orientation = 4.513405 WHERE guid = 67989;
UPDATE creature SET position_x = -260.425690, position_y = 1384.189209, position_z = 10.743897, orientation = 4.606080 WHERE guid = 67990;
-- make sure they will spawn & walk together .. so we can synhronize attack
DELETE FROM creature_linking WHERE guid IN (67976,67974,67989,67990);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(67976, 68313, 640),
(67974, 68313, 640),
(67989, 68313, 640),
(67990, 68313, 640);
-- wave 5 (temp) -- req. more scripting
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 67992;
UPDATE creature SET position_x = -231.491989, position_y = 1273.215698, position_z = 24.683395, orientation = 4.544492, spawndist = 0, MovementType = 0 WHERE guid = 67975;
UPDATE creature SET position_x = -236.811157, position_y = 1269.786987, position_z = 25.028357, orientation = 4.723560, spawndist = 0, MovementType = 0 WHERE guid = 68312;
UPDATE creature SET position_x = -242.411209, position_y = 1273.053833, position_z = 24.268648, orientation = 4.672508, spawndist = 0, MovementType = 0 WHERE guid = 67991;
UPDATE creature SET position_x = -248.130219, position_y = 1276.795654, position_z = 23.578890, orientation = 4.802102, spawndist = 0, MovementType = 0 WHERE guid = 67977;
-- wave 6 (temp) -- req. more scripting
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 67998;
UPDATE creature SET position_x = -223.170578, position_y = 1517.588989, position_z = 22.488991, orientation = 4.400681, spawndist = 0, MovementType = 0 WHERE guid = 68000;
UPDATE creature SET position_x = -214.878464, position_y = 1514.611084, position_z = 22.022751, orientation = 4.118724, spawndist = 0, MovementType = 0 WHERE guid = 67997;
UPDATE creature SET position_x = -237.631012, position_y = 1521.642944, position_z = 23.232979, orientation = 4.742323, spawndist = 0, MovementType = 0 WHERE guid = 67999;
-- last wave (temp) -- req. more scripting
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 67996;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 67995;
UPDATE creature SET position_x = -200.986694, position_y = 1623.556152, position_z = 37.109047, orientation = 4.560667, spawndist = 0, MovementType = 0 WHERE guid = 68314;
UPDATE creature SET position_x = -206.727142, position_y = 1633.104736, position_z = 38.807365, orientation = 4.451498, spawndist = 0, MovementType = 0 WHERE guid = 67994;
UPDATE creature SET position_x = -211.360229, position_y = 1640.620850, position_z = 40.365330, orientation = 4.516684, spawndist = 0, MovementType = 0 WHERE guid = 67993;
