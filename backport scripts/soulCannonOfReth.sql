-- The Soul Cannon of Reth'hedron (q.11089) (Terrokar forest) -- all creatures req. for q.
-- Terokkar Trigger
DELETE FROM creature WHERE guid IN(140757,140758,140759,140760,140761,140762,140763,140764,140765,140766,140767);
DELETE FROM creature_movement WHERE id IN(140757,140758,140759,140760,140761,140762,140763,140764,140765,140766,140767);
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140757,23102,530,1,0,0,-2466.61,4699.98,155.643,3.141593,25,0,0,4120,0,0,0), -- main one
(140758,23102,530,1,0,0,-2414.98,4458.58,165.725,4.31056,25,0,0,4120,0,0,2);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(140758,1,-2416.247,4457.345,166.4947,0,0,0,0,0,0,0,0,0,0,0,0),
(140758,2,-2416.747,4455.095,166.4947,0,0,0,0,0,0,0,0,0,0,0,0),
(140758,3,-2420.247,4453.845,166.9947,0,0,0,0,0,0,0,0,0,0,0,0),
(140758,4,-2420.497,4451.845,166.7447,0,0,0,0,0,0,0,0,0,0,0,0),
(140758,5,-2421.997,4450.345,166.4947,0,0,0,0,0,0,0,0,0,0,0,0),
(140758,6,-2424.997,4447.095,166.2447,0,0,0,0,0,0,0,0,0,0,0,0),
(140758,7,-2426.015,4444.604,167.1808,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140759,23102,530,1,0,0,-2432.75,4458.1,166.076,4.31056,25,0,0,4120,0,0,2);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(140759,1,-2428.951,4454.364,164.9629,0,0,0,0,0,0,0,0,0,0,0,0),
(140759,2,-2428.701,4452.114,165.7129,0,0,0,0,0,0,0,0,0,0,0,0),
(140759,3,-2430.451,4449.864,166.9629,0,0,0,0,0,0,0,0,0,0,0,0),
(140759,4,-2430.701,4448.114,166.9629,0,0,0,0,0,0,0,0,0,0,0,0),
(140759,5,-2429.951,4445.614,166.9629,0,0,0,0,0,0,0,0,0,0,0,0),
(140759,6,-2428.701,4445.864,166.9629,0,0,0,0,0,0,0,0,0,0,0,0),
(140759,7,-2426.156,4444.631,167.2664,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140760,23102,530,1,0,0,-2418.7,4446.77,165.623,4.31056,25,0,0,4120,0,0,2);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell,  orientation, model1, model2) VALUES
(140760,1,-2422.572,4447.155,167.424,0,0,0,0,0,0,0,0,0,0,0,0),
(140760,2,-2422.572,4447.155,167.424,0,0,0,0,0,0,0,0,0,0,0,0),
(140760,3,-2425.322,4444.655,166.924,0,0,0,0,0,0,0,0,0,0,0,0),
(140760,4,-2425.947,4444.539,167.1426,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140761,23102,530,1,0,0,-2432.38,4444.57,170.177,4.31056,25,0,0,4120,0,0,2);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(140761,1,-2431.452,4444.515,169.4779,0,0,0,0,0,0,0,0,0,0,0,0),
(140761,2,-2429.202,4448.015,167.9779,0,0,0,0,0,0,0,0,0,0,0,0),
(140761,3,-2427.452,4446.765,167.4779,0,0,0,0,0,0,0,0,0,0,0,0),
(140761,4,-2426.026,4444.463,167.1956,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140762,23102,530,1,0,0,-2423.71,4453.52,165.612,5.42973,25,0,0,4120,0,0,2);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(140762,1,-2420.854,4450.29,164.6829,0,0,0,0,0,0,0,0,0,0,0,0),
(140762,2,-2421.854,4448.04,165.9329,0,0,0,0,0,0,0,0,0,0,0,0),
(140762,3,-2425.104,4446.79,166.6829,0,0,0,0,0,0,0,0,0,0,0,0),
(140762,4,-2425.995,4444.565,167.1709,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140763,23102,530,1,0,0,-2428.66,4460.05,166.238,5.42973,25,0,0,4120,0,0,2);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(140763,1,-2426.097,4457.325,165.2578,0,0,0,0,0,0,0,0,0,0,0,0),
(140763,2,-2424.347,4454.325,165.5078,0,0,0,0,0,0,0,0,0,0,0,0),
(140763,3,-2427.097,4450.825,167.2578,0,0,0,0,0,0,0,0,0,0,0,0),
(140763,4,-2425.847,4447.825,167.0078,0,0,0,0,0,0,0,0,0,0,0,0),
(140763,5,-2426.037,4444.601,167.1947,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140764,23102,530,1,0,0,-2432.45,4434.58,170.862,5.42973,25,0,0,4120,0,0,2);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(140764,1,-2430.905,4434.821,169.7653,0,0,0,0,0,0,0,0,0,0,0,0),
(140764,2,-2429.155,4438.321,168.5153,0,0,0,0,0,0,0,0,0,0,0,0),
(140764,3,-2427.155,4437.571,168.0153,0,0,0,0,0,0,0,0,0,0,0,0),
(140764,4,-2427.655,4441.321,167.7653,0,0,0,0,0,0,0,0,0,0,0,0),
(140764,5,-2425.905,4442.821,167.0153,0,0,0,0,0,0,0,0,0,0,0,0),
(140764,6,-2425.855,4444.558,167.0851,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140765,23102,530,1,0,0,-2426.57,4437.26,167.977,5.42973,25,0,0,4120,0,0,2);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(140765,1,-2428.278,4439.114,168.6164,0,0,0,0,0,0,0,0,0,0,0,0),
(140765,2,-2428.278,4440.864,168.3664,0,0,0,0,0,0,0,0,0,0,0,0),
(140765,3,-2426.028,4443.114,167.1164,0,0,0,0,0,0,0,0,0,0,0,0),
(140765,4,-2425.99,4444.47,167.1725,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140766,23102,530,1,0,0,-2414.89,4436.77,163.105,5.42973,25,0,0,4120,0,0,2);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(140766,1,-2416.425,4437.882,163.6704,0,0,0,0,0,0,0,0,0,0,0,0),
(140766,2,-2417.925,4442.132,164.1704,0,0,0,0,0,0,0,0,0,0,0,0),
(140766,3,-2420.425,4441.882,165.4204,0,0,0,0,0,0,0,0,0,0,0,0),
(140766,4,-2422.425,4441.882,166.4204,0,0,0,0,0,0,0,0,0,0,0,0),
(140766,5,-2423.675,4444.382,165.9204,0,0,0,0,0,0,0,0,0,0,0,0),
(140766,6,-2425.959,4444.494,167.1525,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140767,23102,530,1,0,0,-2435.68,4440.87,171.618,2.64157,25,0,0,4120,0,0,2);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(140767,1,-2433.751,4441.496,170.1298,0,0,0,0,0,0,0,0,0,0,0,0),
(140767,2,-2432.251,4443.746,169.3798,0,0,0,0,0,0,0,0,0,0,0,0),
(140767,3,-2430.001,4443.496,168.3798,0,0,0,0,0,0,0,0,0,0,0,0),
(140767,4,-2429.001,4445.246,168.1298,0,0,0,0,0,0,0,0,0,0,0,0),
(140767,5,-2427.251,4445.496,167.6298,0,0,0,0,0,0,0,0,0,0,0,0),
(140767,6,-2426.751,4444.246,167.3798,0,0,0,0,0,0,0,0,0,0,0,0),
(140767,7,-2425.819,4444.625,167.0592,0,0,0,0,0,0,0,0,0,0,0,0);

-- Event - (q.11081) #1
DELETE FROM dbscripts_on_event WHERE id = 14856;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(14856,1,15,40136,0,23102,30,7,0,0,0,0,0,0,0,0,''),
(14856,4,10,23096,120000,0,0,0,0,0,0,0,-2482.269,4661.722,161.5004,0.9424778,'spawn Acolyte of Air'),
(14856,118,31,23096,100,0,0,0,0,0,0,0,0,0,0,0,''), -- let check if creature is alive
(14856,119,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'despawn'); 
-- Event - (q.11081) #2
DELETE FROM dbscripts_on_event WHERE id = 14857;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(14857,1,15,40141,0,23102,30,7,0,0,0,0,0,0,0,0,''),
(14857,4,10,23097,120000,0,0,0,0,0,0,0,-2443.984,4634.114,158.2763,2.36124,'spawn Acolyte of Water'),
(14857,118,31,23097,100,0,0,0,0,0,0,0,0,0,0,0,''), -- let check if creature is alive
(14857,119,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'despawn');
-- Event - (q.11081) #3
DELETE FROM dbscripts_on_event WHERE id = 14858;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(14858,3,15,40147,0,23102,30,7,0,0,0,0,0,0,0,0,''),
(14858,4,10,23098,120000,0,0,0,0,0,0,0,-2385.025,4552.593,165.7631,2.36124,'spawn Acolyte of Earth'),
(14858,118,31,23098,100,0,0,0,0,0,0,0,0,0,0,0,''), -- let check if creature is alive
(14858,119,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'despawn');
-- Event - (q.11081) #4
DELETE FROM dbscripts_on_event WHERE id = 14859;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(14859,1,15,40148,0,23102,140758,7 | 0x10,0,0,0,0,0,0,0,0,''),
(14859,1,15,40148,0,23102,140759,7 | 0x10,0,0,0,0,0,0,0,0,''),
(14859,1,15,40148,0,23102,140760,7 | 0x10,0,0,0,0,0,0,0,0,''),
(14859,1,15,40148,0,23102,140761,7 | 0x10,0,0,0,0,0,0,0,0,''),
(14859,1,15,40148,0,23102,140762,7 | 0x10,0,0,0,0,0,0,0,0,''),
(14859,1,15,40148,0,23102,140763,7 | 0x10,0,0,0,0,0,0,0,0,''),
(14859,1,15,40148,0,23102,140764,7 | 0x10,0,0,0,0,0,0,0,0,''),
(14859,1,15,40148,0,23102,140765,7 | 0x10,0,0,0,0,0,0,0,0,''),
(14859,1,15,40148,0,23102,140766,7 | 0x10,0,0,0,0,0,0,0,0,''),
(14859,1,15,40148,0,23102,140767,7 | 0x10,0,0,0,0,0,0,0,0,''),
(14859,4,10,23099,120000,0,0,0,0,0,0,0,-2425.974,4444.52,167.2437,1.884956,'spawn Acolyte of Fire'),
(14859,118,31,23099,100,0,0,0,0,0,0,0,0,0,0,0,''), -- let check if creature is alive
(14859,119,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'despawn');
-- Event - (q.11081) #final
DELETE FROM dbscripts_on_event WHERE id = 14860;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(14860,0,20,2,0,23102,140757,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint');

-- The Soul Cannon of Reth'hedron (q.11089) -H -A
DELETE FROM dbscripts_on_gossip WHERE id = 8725;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8725,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'23093 - npc_flag removed'),
(8725,1,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint');
DELETE FROM creature_movement_template WHERE entry = 23093;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(23093,1,-2528.145,4661.219,170.5803,3000,2309301,0,0,0,0,0,0,0,5.550147,0,0),
(23093,2,-2520.11,4665.68,170.382,0,0,0,0,0,0,0,0,0,0.510926,0,0),
(23093,3,-2501.86,4675.29,161.372,0,0,0,0,0,0,0,0,0,0.474462,0,0),
(23093,4,-2487.58,4686.76,155.028,0,0,0,0,0,0,0,0,0,0.860878,0,0),
(23093,5,-2474.83,4698.74,155.344,0,0,0,0,0,0,0,0,0,0.5,0,0),
(23093,6,-2474.83,4698.74,155.344,7000,2309302,0,0,0,0,0,0,0,0.523156,0,0),
(23093,7,-2480.65,4685.96,155.49,0,0,0,0,0,0,0,0,0,4.98332,0,0),
(23093,8,-2481.49,4672.65,158.966,0,0,0,0,0,0,0,0,0,5.0972,0,0),
(23093,9,-2480.16,4665.24,160.284,7000,2309303,0,0,0,0,0,0,0,4.21441,0,0),
(23093,10,-2455.65,4662.22,159.951,0,0,0,0,0,0,0,0,0,5.74709,0,0),
(23093,11,-2436.2,4646.31,160.228,0,0,0,0,0,0,0,0,0,4.22263,0,0),
(23093,12,-2439.97,4639.62,158.027,7000,2309304,0,0,0,0,0,0,0,4.22263,0,0), 
(23093,13,-2436.58,4646.84,160.297,0,0,0,0,0,0,0,0,0,0.364134,0,0),
(23093,14,-2425.2,4648.12,160.448,0,0,0,0,0,0,0,0,0,5.66298,0,0),
(23093,15,-2411.43,4634.77,160.39,0,0,0,0,0,0,0,0,0,5.14384,0,0),
(23093,16,-2407.81,4627.84,160.568,0,0,0,0,0,0,0,0,0,4.7906,0,0),
(23093,17,-2415.99,4589.04,160.548,0,0,0,0,0,0,0,0,0,5.91249,0,0),
(23093,18,-2399.42,4581.89,164.871,0,0,0,0,0,0,0,0,0,5.81645,0,0),
(23093,19,-2391.28,4576.64,166.057,0,0,0,0,0,0,0,0,0,5.25412,0,0),
(23093,20,-2388.56,4568.29,164.933,0,0,0,0,0,0,0,0,0,4.9219,0,0),
(23093,21,-2388.364,4560.494,165.4174,7000,2309305,0,0,0,0,0,0,0,5.40246,0,0),
(23093,22,-2393.32,4546.13,165.565,0,0,0,0,0,0,0,0,0,3.85805,0,0),
(23093,23,-2409.52,4532.03,166.061,0,0,0,0,0,0,0,0,0,4.28217,0,0),
(23093,24,-2422.16,4505.4,166.642,0,0,0,0,0,0,0,0,0,4.60261,0,0),
(23093,25,-2424.31,4496.46,165.468,0,0,0,0,0,0,0,0,0,4.48009,0,0),
(23093,26,-2428.53,4482.27,167.103,0,0,0,0,0,0,0,0,0,4.76524,0,0),
(23093,27,-2429.68,4462.26,166.145,7000,2309306,0,0,0,0,0,0,0,5.10998,0,0),
(23093,28,-2429.66,4482.22,167.088,0,0,0,0,0,0,0,0,0,1.30757,0,0),
(23093,29,-2424.99,4494.94,165.455,0,0,0,0,0,0,0,0,0,1.26751,0,0),
(23093,30,-2416.78,4520.28,166.428,0,0,0,0,0,0,0,0,0,1.03346,0,0),
(23093,31,-2408.74,4532.46,166.077,0,0,0,0,0,0,0,0,0,0.715377,0,0),
(23093,32,-2391.15,4550.27,165.63,0,0,0,0,0,0,0,0,0,1.39475,0,0),
(23093,33,-2390.8,4573.16,165.876,0,0,0,0,0,0,0,0,0,1.92882,0,0),
(23093,34,-2397.56,4580.46,165.298,0,0,0,0,0,0,0,0,0,2.52572,0,0),
(23093,35,-2403.85,4584.2,163.669,0,0,0,0,0,0,0,0,0,2.89407,0,0),
(23093,36,-2410.81,4584.86,160.288,0,0,0,0,0,0,0,0,0,2.34743,0,0),
(23093,37,-2415.9,4591.78,160.632,0,0,0,0,0,0,0,0,0,1.53769,0,0),
(23093,38,-2408.04,4624.59,160.607,0,0,0,0,0,0,0,0,0,1.7631,0,0),
(23093,39,-2410.98,4634.52,160.351,0,0,0,0,0,0,0,0,0,2.16639,0,0),
(23093,40,-2428.67,4652.83,160.572,0,0,0,0,0,0,0,0,0,2.58972,0,0),
(23093,41,-2441.28,4659.46,160.626,0,2309307,0,0,0,0,0,0,0,2.97614,0,0),
(23093,42,-2463.44,4662.78,159.543,0,0,0,0,0,0,0,0,0,2.64077,0,0),
(23093,43,-2472.09,4667.23,159.414,0,0,0,0,0,0,0,0,0,2.46249,0,0),
(23093,44,-2479.66,4675.25,158.05,0,0,0,0,0,0,0,0,0,1.83888,0,0),
(23093,45,-2479.86,4694.21,154.879,0,0,0,0,0,0,0,0,0,1.28596,0,0),
(23093,46,-2478.81,4698.33,154.796,0,0,0,0,0,0,0,0,0,0.593238,0,0),
(23093,47,-2475.14,4700.05,155.206,17000,2309308,0,0,0,0,0,0,0,6.24303,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2309301 AND 2309308; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2309301,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Sar\'this active'),
(2309301,2,0,0,0,0,0,0,2000005713,0,0,0,0,0,0,0,''),
(2309302,3,0,0,0,0,0,0,2000005714,0,0,0,0,0,0,0,''),
(2309302,4,9,121775,300,0,0,0,0,0,0,0,0,0,0,0,'respawn Fetish of Sar\'this '),
(2309303,1,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'wp pause'),
(2309303,3,0,0,0,0,0,0,2000005715,0,0,0,0,0,0,0,''),
(2309303,4,15,40129,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2309304,1,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'wp pause'),
(2309304,3,0,0,0,0,0,0,2000005717,0,0,0,0,0,0,0,''),
(2309304,4,15,40130,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2309305,1,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'wp pause'),
(2309305,3,0,0,0,0,0,0,2000005718,0,0,0,0,0,0,0,''),
(2309305,4,15,40132,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2309306,1,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'wp pause'),
(2309306,3,0,0,0,0,0,0,2000005719,0,0,0,0,0,0,0,''),
(2309306,4,15,40133,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2309307,0,3,0,0,23094,96675,7 | 0x10,0,0,0,0,-2473.62,4706.47,155.316,5.96323,''),
(2309307,0,3,0,0,23094,96676,7 | 0x10,0,0,0,0,-2476.07,4702.61,155.047,6.21425,''),
(2309307,0,3,0,0,23094,96677,7 | 0x10,0,0,0,0,-2477.52,4696.75,155.0983,1.454149,''),
(2309307,0,3,0,0,23094,96678,7 | 0x10,0,0,0,0,-2472.25,4694.06,155.881,1.00466,''),
(2309308,1,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'wp pause'),
(2309308,3,0,0,0,0,0,0,2000005720,0,0,0,0,0,0,0,''),
(2309308,4,15,40134,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2309308,7,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Angus - unactive');
DELETE FROM db_script_string WHERE entry BETWEEN 2000005713 AND 2000005721;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005713,'So my blood was not a sufficient payment, eh? Fine, let us recover your arcane essence. After this, I owe Balthas nothing.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005714,'%s places a fetish at the ritual pile.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,16,NULL),
(2000005715,'The process is arduous. We must first summon forth acolytes of the elements. You must then destroy these acolytes so that my minions can make preparations.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005716,'Well done!  Let\'s continue.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005717,'Prepare yourself! The acolyte of water is soon to come...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005718,'Come forth, acolyte of earth!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005719,'Fire, show yourself!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005720,'Now we call forth the the arcane acolyte.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005721,'It is yours my Lord!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);
-- Terokkar Trigger -- update 
DELETE FROM creature_movement_template WHERE entry = 23102 ;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(23102,1,-2466.61,4699.98,155.643,16000,2310201,0,0,0,0,0,0,0,3.141593,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2310201; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2310201,0,15,40193,0,23094,96675,3 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(2310201,0,15,40225,0,23094,96676,3 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(2310201,0,15,40227,0,23094,96677,3 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(2310201,0,15,40228,0,23094,96678,3 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(2310201,8,10,23100,120000,0,0,0,0,0,0,0,-2470.6,4700.02,155.902,1.19221,'spawn Flawless Arcane Elemental'),
(2310201,10,0,0,0,23093,100,4,2000005721,0,0,0,0,0,0,0,'force 23093 to: say text'),
(2310201,13,20,0,0,23093,100,7,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2310201,14,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2310201,14,15,5,0,23093,100,7,0,0,0,0,0,0,0,0,''),
(2310201,15,15,5,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2310201,16,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Acolyte of Air - update
DELETE FROM dbscripts_on_creature_death WHERE id = 23096;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(23096,0,15,40156,0,23094,96675,7 | 0x10,0,0,0,0,0,0,0,0,''),
(23096,3,0,0,0,23093,100,4,2000005716,0,0,0,0,0,0,0,'force 23093 to: say text'),
(23096,3,15,6273,0,23093,100,7,0,0,0,0,0,0,0,0,''),
(23096,4,32,0,0,23093,100,7,0,0,0,0,0,0,0,0,'wp unpause'),
(23096,5,32,1,0,23094,96675,7 | 0x10,0,0,0,0,0,0,0,0,'wp pause'),
(23096,7,3,0,0,23094,96675,7 | 0x10,0,0,0,0,-2487.01,4723.86,153.009,4.90897,''),
(23096,22,3,0,0,23094,96675,7 | 0x10,0,0,0,0,-2473.62,4706.47,155.316,5.96323,''),
(23096,196,31,23100,100,0,0,0,0,0,0,0,0,0,0,0,''), -- let check if creature is alive
(23096,198,15,6273,0,23094,96675,7 | 0x10,0,0,0,0,0,0,0,0,''),
(23096,198,14,40156,0,23094,96675,7 | 0x10,0,0,0,0,0,0,0,0,''),
(23096,200,32,0,0,23094,96675,7 | 0x10,0,0,0,0,0,0,0,0,'wp unpause');
-- Acolyte of Water - update
DELETE FROM dbscripts_on_creature_death WHERE id = 23097;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(23097,0,15,40187,0,23094,96676,7 | 0x10,0,0,0,0,0,0,0,0,''),
(23097,3,0,0,0,23093,100,4,2000005716,0,0,0,0,0,0,0,'force 23093 to: say text'),
(23097,4,32,0,0,23093,100,7,0,0,0,0,0,0,0,0,'wp unpause'),
(23097,5,32,1,0,23094,96676,7 | 0x10,0,0,0,0,0,0,0,0,'wp pause'),
(23097,7,3,0,0,23094,96676,7 | 0x10,0,0,0,0,-2473.57,4671.96,159.079,2.99726,''),
(23097,22,3,0,0,23094,96676,7 | 0x10,0,0,0,0,-2484.73,4691.69,154.773,1.17985,''),
(23097,28,3,0,0,23094,96676,7 | 0x10,0,0,0,0,-2476.07,4702.61,155.047,6,''),
(23097,36,3,0,0,23094,96676,7 | 0x10,0,0,0,0,0,0,0,6.21425,''),
(23097,196,31,23100,100,0,0,0,0,0,0,0,0,0,0,0,''), -- let check if creature is alive
(23097,198,15,6273,0,23094,96676,7 | 0x10,0,0,0,0,0,0,0,0,''),
(23097,198,14,40187,0,23094,96676,7 | 0x10,0,0,0,0,0,0,0,0,''),
(23097,200,32,0,0,23094,96676,7 | 0x10,0,0,0,0,0,0,0,0,'wp unpause');
-- Acolyte of Earth - update
DELETE FROM dbscripts_on_creature_death WHERE id = 23098;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(23098,0,15,40189,0,23094,96677,7 | 0x10,0,0,0,0,0,0,0,0,''),
(23098,3,0,0,0,23093,100,4,2000005716,0,0,0,0,0,0,0,'force 23093 to: say text'),
(23098,4,32,0,0,23093,100,7,0,0,0,0,0,0,0,0,'wp unpause'),
(23098,5,32,1,0,23094,96677,7 | 0x10,0,0,0,0,0,0,0,0,'wp pause'),
(23098,7,3,0,0,23094,96677,7 | 0x10,0,0,0,0,-2463.08,4659.54,159.652,2.50195,''),
(23098,22,3,0,0,23094,96677,7 | 0x10,0,0,0,0,-2482.7,4673.34,158.833,1.68474,''),
(23098,29,3,0,0,23094,96677,7 | 0x10,0,0,0,0,-2477.52,4696.75,155.0983,1,''),
(23098,36,3,0,0,23094,96677,7 | 0x10,0,0,0,0,0,0,0,1.454149,''),
(23098,196,31,23100,100,0,0,0,0,0,0,0,0,0,0,0,''), -- let check if creature is alive
(23098,198,15,6273,0,23094,96677,7 | 0x10,0,0,0,0,0,0,0,0,''),
(23098,198,14,40189,0,23094,96677,7 | 0x10,0,0,0,0,0,0,0,0,''),
(23098,200,32,0,0,23094,96677,7 | 0x10,0,0,0,0,0,0,0,0,'wp unpause');
-- Acolyte of Fire - update
DELETE FROM dbscripts_on_creature_death WHERE id = 23099;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(23099,0,15,40190,0,23094,96678,7 | 0x10,0,0,0,0,0,0,0,0,''),
(23099,3,0,0,0,23093,100,4,2000005716,0,0,0,0,0,0,0,'force 23093 to: say text'),
(23099,4,32,0,0,23093,100,7,0,0,0,0,0,0,0,0,'wp unpause'),
(23099,5,32,1,0,23094,96678,7 | 0x10,0,0,0,0,0,0,0,0,'wp pause'),
(23099,7,3,0,0,23094,96678,7 | 0x10,0,0,0,0,-2415.88,4588.63,160.551,1.35255,''),
(23099,12,3,0,0,23094,96678,7 | 0x10,0,0,0,0,-2407.72,4628.97,160.484,2.39556,''),
(23099,30,3,0,0,23094,96678,7 | 0x10,0,0,0,0,-2432.06,4655.25,160.581,2.71757,''),
(23099,42,3,0,0,23094,96678,7 | 0x10,0,0,0,0,-2475.86,4667.53,159.443,2.30052,''),
(23099,55,3,0,0,23094,96678,7 | 0x10,0,0,0,0,-2480.81,4682.19,156.044,1.40438,''),
(23099,65,3,0,0,23094,96678,7 | 0x10,0,0,0,0,-2472.25,4694.06,155.881,1.4,''),
(23099,70,3,0,0,23094,96678,7 | 0x10,0,0,0,0,0,0,0,1.00466,''),
(23099,196,31,23100,100,0,0,0,0,0,0,0,0,0,0,0,''), -- let check if creature is alive
(23099,198,15,6273,0,23094,96678,7 | 0x10,0,0,0,0,0,0,0,0,''),
(23099,198,14,40190,0,23094,96678,7 | 0x10,0,0,0,0,0,0,0,0,''),
(23099,200,32,0,0,23094,96678,7 | 0x10,0,0,0,0,0,0,0,0,'wp unpause');
-- Flawless Arcane Elemental - update
DELETE FROM dbscripts_on_creature_death WHERE id = 23100;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(23100,1,15,5,0,23094,96675,7 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(23100,1,15,5,0,23094,96676,7 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(23100,1,15,5,0,23094,96677,7 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(23100,1,15,5,0,23094,96678,7 | 0x08 | 0x10,0,0,0,0,0,0,0,0,'');