-- Morgroron
DELETE FROM creature_movement_template WHERE entry = 21500;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(21500,1,-3342.87,2941.55,169.88,5000,0,0,0,0,0,0,0,0,0,2.50724,0,0),
(21500,2,-3348.61,2968.61,170.043,0,0,0,0,0,0,0,0,0,0,2.37111,0,0),
(21500,3,-3371.9,2990.27,169.947,10000,0,0,0,0,0,0,0,0,0,2.59685,0,0),
(21500,4,-3380.8,2998.32,170.333,0,0,0,0,0,0,0,0,0,0,3.14427,0,0),
(21500,5,-3421.18,2996.89,170.164,0,0,0,0,0,0,0,0,0,0,3.95166,0,0),
(21500,6,-3431.01,2985.65,170.578,0,0,0,0,0,0,0,0,0,0,4.80067,0,0),
(21500,7,-3431.16,2976.08,170.543,10000,0,0,0,0,0,0,0,0,0,4.69778,0,0),
(21500,8,-3431.63,2961.85,170.481,0,0,0,0,0,0,0,0,0,0,6.00388,0,0),
(21500,9,-3401.55,2956.34,169.881,0,0,0,0,0,0,0,0,0,0,5.62817,0,0),
(21500,10,-3391.49,2941.6,169.879,10000,0,0,0,0,0,0,0,0,0,5.30381,0,0),
(21500,11,-3342.87,2941.55,169.88,9000,2150001,0,0,0,0,0,0,0,0,2.50724,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2150001; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2150001,6,1,15,0,0,0,0,0,0,0,0,0,0,0,0,'');