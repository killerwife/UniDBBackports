-- Infernals Attack - EVENT -- SHADOWMOON VALLEY
-- Invis Infernal Caster 
UPDATE creature_template SET MovementType = 0 WHERE entry = 21417;
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE id = 21417; -- for all of them
-- Shadowmoon Scout
UPDATE creature_template_addon SET emote = 333 WHERE entry = 21749;
UPDATE creature_template SET MovementType = 0 WHERE entry = 21749;
UPDATE creature_model_info SET modelid_other_gender = 20450 WHERE modelid = 20449;
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE id = 21749; -- for all of them
DELETE FROM creature_addon WHERE guid IN (76033, 76034, 76048, 76061); -- addon should be taken from template - for all the same
-- correct spawn point for some of 'Shadowmoon Scout'
UPDATE creature SET position_x =-3254.84, position_y =2618.44, position_z =61.45, orientation =0.20 WHERE guid =75099;
UPDATE creature SET position_x =-3248.93, position_y =2647.47, position_z =60.37, orientation =1.87 WHERE guid =76003;
UPDATE creature SET position_x =-3017.05, position_y =2711.19, position_z =67.18, orientation =3.18 WHERE guid =76015;
UPDATE creature SET position_x =-3019.99, position_y =2754.51, position_z =71.98, orientation =5.22 WHERE guid =76016;
UPDATE creature SET position_x =-3212.98, position_y =2615.22, position_z =63.24, orientation =2.71 WHERE guid =76012;
UPDATE creature SET position_x =-3214.74, position_y =2612.52, position_z =63.09, orientation =2.28 WHERE guid =76056;
UPDATE creature SET position_x =-3245.72, position_y =2650.52, position_z =60.82, orientation =2.69 WHERE guid =76055;
UPDATE creature SET position_x =-3114.67, position_y =2686.69, position_z =60.47, orientation =3.32 WHERE guid =76011;
UPDATE creature SET position_x =-3115.78, position_y =2682.54, position_z =60.89, orientation =2.41 WHERE guid =76027;
UPDATE creature SET position_x =-3016.28, position_y =2755.65, position_z =72.30, orientation =4.73 WHERE guid =76060;
UPDATE creature SET position_x =-3213.56, position_y =2485.40, position_z =58.05, orientation =3.49 WHERE guid =76001;
UPDATE creature SET position_x =-3188.44, position_y =2486.29, position_z =63.05, orientation =5.07 WHERE guid =76043;
UPDATE creature SET position_x =-3146.14, position_y =2354.61, position_z =58.60, orientation =4.49 WHERE guid =76042;
UPDATE creature SET position_x =-3248.59, position_y =2324.39, position_z =62.23, orientation =2.99 WHERE guid =76031;
UPDATE creature SET position_x =-3285.92, position_y =2418.17, position_z =61.27, orientation =5.75 WHERE guid =76032;
UPDATE creature SET position_x =-3215.58, position_y =2414.04, position_z =62.52, orientation =0.52 WHERE guid =76036;
UPDATE creature SET position_x =-3281.23, position_y =2421.36, position_z =61.75, orientation =4.69 WHERE guid =76039;
UPDATE creature SET position_x =-3142.14, position_y =2351.56, position_z =59.62, orientation =3.53 WHERE guid =76044;
UPDATE creature SET position_x =-3289.42, position_y =2447.12, position_z =63.61, orientation =0.15 WHERE guid =76052;
UPDATE creature SET position_x =-3287.61, position_y =2451.77, position_z =64.32, orientation =5.43 WHERE guid =76051;
-- Wildhammer Defender
UPDATE creature_template SET MovementType = 0 WHERE entry = 21736;
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE id = 21736; -- for all of them
-- correct spawn point for some of 'Wildhammer Defender'
UPDATE creature SET position_x = -3884.48, position_y = 2010.46, position_z = 95.12, orientation = 0.22 WHERE guid = 75968;
UPDATE creature SET position_x = -3844.54, position_y = 2116.73, position_z = 94.96, orientation = 3.33 WHERE guid = 75967;
-- Infernal Attacker
UPDATE creature_template SET faction_A = 31, faction_H = 31, MovementType = 0, unit_flags = 0x80800 WHERE entry = 21419;
UPDATE creature SET modelid = 20577, MovementType = 0, spawndist = 0, spawntimesecs = 40 WHERE id = 21419; -- for all of them: model (from his template) spawntime (needed for event)
-- correct spawn point for some of 'Infernal Attackers'
UPDATE creature SET position_x = -3146.26, position_y = 2350.15, position_z = 59.31, orientation = 0.82 WHERE guid = 75034;
UPDATE creature SET position_x = -3181.80, position_y = 2316.44, position_z = 63.31, orientation = 6.13 WHERE guid = 75081;
UPDATE creature SET position_x = -3253.86, position_y = 2381.16, position_z = 62.47, orientation = 0.51 WHERE guid = 75083;
UPDATE creature SET position_x = -3217.28, position_y = 2484.21, position_z = 57.89, orientation = 0.47 WHERE guid = 75097;
UPDATE creature SET position_x = -3254.84, position_y = 2618.44, position_z = 61.45, orientation = 0.20 WHERE guid = 75099;
UPDATE creature SET position_x = -3215.87, position_y = 2350.40, position_z = 62.34, orientation = 6.02 WHERE guid = 75082;
UPDATE creature SET position_x = -3815.88, position_y = 2023.09, position_z = 93.75, orientation = 4.78 WHERE guid = 75068;
UPDATE creature SET position_x = -3850.49, position_y = 1982.87, position_z = 95.26, orientation = 2.33 WHERE guid = 75061;
UPDATE creature SET position_x = -3917.07, position_y = 1947.74, position_z = 93.53, orientation = 0.36 WHERE guid = 75066;
UPDATE creature SET position_x = -3886.18, position_y = 1984.30, position_z = 98.30, orientation = 3.04 WHERE guid = 75063;
UPDATE creature SET position_x = -3949.72, position_y = 1916.77, position_z = 95.39, orientation = 6.13 WHERE guid = 75064;
UPDATE creature SET position_x = -3984.77, position_y = 1981.59, position_z = 96.78, orientation = 1.11 WHERE guid = 75060;
-- event Horde ver. 
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2141901 AND 2141904; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2141901,0,31,21417,30,0,0,0,-4000,0,0,0,0,0,0,0,''), -- check if creature is alive
(2141901,3,15,37277,0,21417,30,3,0,0,0,0,0,0,0,0,'cast 37277 b->s'),
(2141901,7,26,0,0,21749,50,1,0,0,0,0,0,0,0,0,'attack start'),
-- event area is large - we dont want to see all do same thing in same time;)
(2141902,0,31,21417,30,0,0,0,-4000,0,0,0,0,0,0,0,''), -- check if creature is alive
(2141902,5,15,37277,0,21417,30,3,0,0,0,0,0,0,0,0,'cast 37277 b->s'),
(2141902,9,26,0,0,21749,50,1,0,0,0,0,0,0,0,0,'attack start'),
-- event Aliance ver.
(2141903,0,31,21417,30,0,0,0,-4000,0,0,0,0,0,0,0,''), -- check if creature is alive
(2141903,3,15,37277,0,21417,30,3,0,0,0,0,0,0,0,0,'cast 37277 b->s'),
(2141903,7,26,0,0,21736,50,1,0,0,0,0,0,0,0,0,'attack start'),
-- event area is large - we dont want to see all do same thing in same time;)
(2141904,1,31,21417,30,0,0,0,-4000,0,0,0,0,0,0,0,''), -- check if creature is alive
(2141904,5,15,37277,0,21417,30,3,0,0,0,0,0,0,0,0,'cast 37277 b->s'),
(2141904,9,26,0,0,21736,50,1,0,0,0,0,0,0,0,0,'attack start');
DELETE FROM dbscripts_on_creature_death WHERE id = 21419; -- creature must come back to his default model before spawn.
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21419,10,23,20577,0,0,0,0x08,0,0,0,0,0,0,0,0,'temp model');
DELETE FROM dbscripts_on_spell WHERE id = 37277; 
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(37277,0,31,21419,30,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(37277,1,22,90,0x01,21419,30,0,0,0,0,0,0,0,0,0,'temp faction'),
(37277,1,23,17312,0,21419,30,0x08,0,0,0,0,0,0,0,0,'temp model');
-- creatures in this event - HORDE side
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (75029, 75030, 75033, 75034, 75035, 75038, 75042, 75044, 75045, 75047, 75050, 75051, 75052, 75053, 75054, 75075, 75076, 75077, 75079, 75080, 75081, 75082, 75083, 75086, 75088, 75089, 75090, 75093, 75095, 75096, 75097, 75099);
DELETE FROM creature_movement WHERE id IN (75029, 75030, 75033, 75034, 75035, 75038, 75042, 75044, 75045, 75047, 75050, 75051, 75052, 75053, 75054, 75075, 75076, 75077, 75079, 75080, 75081, 75082, 75083, 75086, 75088, 75089, 75090, 75093, 75095, 75096, 75098, 75097, 75099);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(75029,1,-3281.24,2416.61,61.0348,4000,2141901,0,0,0,0,0,0,0,1.92474,0,0),
(75029,2,-3281.24,2416.61,61.0348,150000,0,0,0,0,0,0,0,0,1.92474,0,0),
(75030,1,-3284.71,2448.13,64.5764,4000,2141902,0,0,0,0,0,0,0,2.57989,0,0),
(75030,2,-3284.71,2448.13,64.5764,150000,0,0,0,0,0,0,0,0,2.57989,0,0),
(75033,1,-3249.14,2559.47,64.3195,4000,2141901,0,0,0,0,0,0,0,4.85854,0,0),
(75033,2,-3249.14,2559.47,64.3195,150000,0,0,0,0,0,0,0,0,4.85854,0,0),
(75034,1,-3146.26,2350.15,59.31,4000,2141902,0,0,0,0,0,0,0,0.82,0,0),
(75034,2,-3146.26,2350.15,59.31,150000,0,0,0,0,0,0,0,0,0.82,0,0),
(75035,1,-3211.75,2553.34,61.7269,4000,2141901,0,0,0,0,0,0,0,5.99206,0,0),
(75035,2,-3211.75,2553.34,61.7269,150000,0,0,0,0,0,0,0,0,5.99206,0,0),
(75038,1,-3215.52,2582.65,63.6521,4000,2141902,0,0,0,0,0,0,0,3.36233,0,0),
(75038,2,-3215.52,2582.65,63.6521,150000,0,0,0,0,0,0,0,0,3.36233,0,0),
(75042,1,-3149.07,2652.16,62.3524,4000,2141901,0,0,0,0,0,0,0,1.09791,0,0),
(75042,2,-3149.07,2652.16,62.3524,150000,0,0,0,0,0,0,0,0,1.09791,0,0),
(75044,1,-3118.96,2685.17,60.0948,4000,2141902,0,0,0,0,0,0,0,5.7209,0,0),
(75044,2,-3118.96,2685.17,60.0948,150000,0,0,0,0,0,0,0,0,5.7209,0,0),
(75045,1,-3149.35,2685.7,61.4335,4000,2141901,0,0,0,0,0,0,0,1.70149,0,0),
(75045,2,-3149.35,2685.7,61.4335,150000,0,0,0,0,0,0,0,0,1.70149,0,0),
(75047,1,-3016.61,2750.28,70.4933,4000,2141902,0,0,0,0,0,0,0,1.62316,0,0),
(75047,2,-3016.61,2750.28,70.4933,150000,0,0,0,0,0,0,0,0,1.62316,0,0),
(75050,1,-3056.41,2687.51,63.1477,4000,2141901,0,0,0,0,0,0,0,5.80999,0,0),
(75050,2,-3056.41,2687.51,63.1477,150000,0,0,0,0,0,0,0,0,5.80999,0,0),
(75051,1,-3042.09,2749.99,69.3486,4000,2141902,0,0,0,0,0,0,0,3.10776,0,0),
(75051,2,-3042.09,2749.99,69.3486,150000,0,0,0,0,0,0,0,0,3.10776,0,0),
(75052,1,-3022.26,2712.04,66.4497,4000,2141901,0,0,0,0,0,0,0,3.49487,0,0),
(75052,2,-3022.26,2712.04,66.4497,150000,0,0,0,0,0,0,0,0,3.49487,0,0),
(75053,1,-2987.05,2714.73,69.3391,4000,2141902,0,0,0,0,0,0,0,3.61302,0,0),
(75053,2,-2987.05,2714.73,69.3391,150000,0,0,0,0,0,0,0,0,3.61302,0,0),
(75054,1,-3019.95,2692.35,64.9556,4000,2141901,0,0,0,0,0,0,0,4.77987,0,0),
(75054,2,-3019.95,2692.35,64.9556,150000,0,0,0,0,0,0,0,0,4.77987,0,0),
(75075,1,-3249.06,2651.38,60.8545,4000,2141902,0,0,0,0,0,0,0,5.34022,0,0),
(75075,2,-3249.06,2651.38,60.8545,150000,0,0,0,0,0,0,0,0,5.34022,0,0),
(75076,1,-3218.49,2649.44,63.2653,4000,2141901,0,0,0,0,0,0,0,3.9241,0,0),
(75076,2,-3218.49,2649.44,63.2653,150000,0,0,0,0,0,0,0,0,3.9241,0,0),
(75077,1,-3117.82,2716.87,63.0454,4000,2141902,0,0,0,0,0,0,0,0.050962,0,0),
(75077,2,-3117.82,2716.87,63.0454,150000,0,0,0,0,0,0,0,0,0.050962,0,0),
(75079,1,-3216.96,2616.12,62.8288,4000,2141901,0,0,0,0,0,0,0,5.3974,0,0),
(75079,2,-3216.96,2616.12,62.8288,150000,0,0,0,0,0,0,0,0,5.3974,0,0),
(75080,1,-3253.62,2323.84,62.2317,4000,2141902,0,0,0,0,0,0,0,5.70665,0,0),
(75080,2,-3253.62,2323.84,62.2317,150000,0,0,0,0,0,0,0,0,5.70665,0,0),
(75081,1,-3181.8,2316.44,63.31,4000,2141901,0,0,0,0,0,0,0,6.13,0,0),
(75081,2,-3181.8,2316.44,63.31,150000,0,0,0,0,0,0,0,0,6.13,0,0),
(75082,1,-3215.87,2350.4,62.34,4000,2141902,0,0,0,0,0,0,0,6.02,0,0),
(75082,2,-3215.87,2350.4,62.34,150000,0,0,0,0,0,0,0,0,6.02,0,0),
(75083,1,-3253.86,2381.16,62.47,4000,2141901,0,0,0,0,0,0,0,0.51,0,0),
(75083,2,-3253.86,2381.16,62.47,150000,0,0,0,0,0,0,0,0,0.51,0,0),
(75086,1,-3212.24,2416.83,62.4066,4000,2141902,0,0,0,0,0,0,0,3.0449,0,0),
(75086,2,-3212.24,2416.83,62.4066,150000,0,0,0,0,0,0,0,0,3.0449,0,0),
(75088,1,-3216.87,2517.24,63.1658,4000,2141901,0,0,0,0,0,0,0,0.575763,0,0),
(75088,2,-3216.87,2517.24,63.1658,150000,0,0,0,0,0,0,0,0,0.575763,0,0),
(75089,1,-3247.42,2515.34,63.0471,4000,2141902,0,0,0,0,0,0,0,4.55048,0,0),
(75089,2,-3247.42,2515.34,63.0471,150000,0,0,0,0,0,0,0,0,4.55048,0,0),
(75090,1,-3186.6,2482.22,62.6348,4000,2141901,0,0,0,0,0,0,0,1.17725,0,0),
(75090,2,-3186.6,2482.22,62.6348,150000,0,0,0,0,0,0,0,0,1.17725,0,0),
(75093,1,-3149.82,2514.48,62.2887,4000,2141902,0,0,0,0,0,0,0,5.54055,0,0),
(75093,2,-3149.82,2514.48,62.2887,150000,0,0,0,0,0,0,0,0,5.54055,0,0),
(75095,1,-3250.2,2583.78,61.6328,4000,2141901,0,0,0,0,0,0,0,0.962609,0,0),
(75095,2,-3250.2,2583.78,61.6328,150000,0,0,0,0,0,0,0,0,0.962609,0,0),
(75096,1,-3186.76,2548.82,61.8554,4000,2141902,0,0,0,0,0,0,0,0.892435,0,0),
(75096,2,-3186.76,2548.82,61.8554,150000,0,0,0,0,0,0,0,0,0.892435,0,0),
(75097,1,-3217.28,2484.21,57.89,4000,2141901,0,0,0,0,0,0,0,0.47,0,0),
(75097,2,-3217.28,2484.21,57.89,150000,0,0,0,0,0,0,0,0,0.47,0,0),
(75099,1,-3254.84,2618.44,61.45,4000,2141902,0,0,0,0,0,0,0,0.2,0,0),
(75099,2,-3254.84,2618.44,61.45,150000,0,0,0,0,0,0,0,0,0.2,0,0);
-- creatures in this event - ALIANCE side
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (75057, 75058, 75059, 75060, 75061, 75062, 75063, 75064, 75065, 75066, 75068, 75069, 75070, 75072, 75073);
DELETE FROM creature_movement WHERE id IN (75057, 75058, 75059, 75060, 75061, 75062, 75063, 75064, 75065, 75066, 75068, 75069, 75070, 75072, 75073);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(75057,1,-4013.64,1983.89,91.9235,4000,2141903,0,0,0,0,0,0,0,3.00984,0,0),
(75057,2,-4013.64,1983.89,91.9235,150000,0,0,0,0,0,0,0,0,3.00984,0,0),
(75058,1,-3916.59,1916.38,92.2323,4000,2141904,0,0,0,0,0,0,0,3.97536,0,0),
(75058,2,-3916.59,1916.38,92.2323,150000,0,0,0,0,0,0,0,0,3.97536,0,0),
(75059,1,-3986.2,1949.37,94.6088,4000,2141903,0,0,0,0,0,0,0,3.05842,0,0),
(75059,2,-3986.2,1949.37,94.6088,150000,0,0,0,0,0,0,0,0,3.05842,0,0),
(75060,1,-3984.77,1981.59,96.7819,4000,2141904,0,0,0,0,0,0,0,1.10935,0,0),
(75060,2,-3984.77,1981.59,96.7819,150000,0,0,0,0,0,0,0,0,1.10935,0,0),
(75061,1,-3850.49,1982.88,95.2666,4000,2141903,0,0,0,0,0,0,0,2.32593,0,0),
(75061,2,-3850.49,1982.88,95.2666,150000,0,0,0,0,0,0,0,0,2.32593,0,0),
(75062,1,-3847.89,1952.49,94.1589,4000,2141904,0,0,0,0,0,0,0,2.72547,0,0),
(75062,2,-3847.89,1952.49,94.1589,150000,0,0,0,0,0,0,0,0,2.72547,0,0),
(75063,1,-3886.18,1984.3,98.3027,4000,2141903,0,0,0,0,0,0,0,3.0375,0,0),
(75063,2,-3886.18,1984.3,98.3027,150000,0,0,0,0,0,0,0,0,3.0375,0,0),
(75064,1,-3949.72,1916.78,95.3962,4000,2141904,0,0,0,0,0,0,0,6.12805,0,0),
(75064,2,-3949.72,1916.78,95.3962,150000,0,0,0,0,0,0,0,0,6.12805,0,0),
(75065,1,-3883.72,1946.14,98.4499,4000,2141903,0,0,0,0,0,0,0,4.17084,0,0),
(75065,2,-3883.72,1946.14,98.4499,150000,0,0,0,0,0,0,0,0,4.17084,0,0),
(75066,1,-3917.08,1947.75,93.5279,4000,2141904,0,0,0,0,0,0,0,0.367148,0,0),
(75066,2,-3917.08,1947.75,93.5279,150000,0,0,0,0,0,0,0,0,0.367148,0,0),
(75068,1,-3815.89,2023.09,93.7481,4000,2141903,0,0,0,0,0,0,0,4.78265,0,0),
(75068,2,-3815.89,2023.09,93.7481,150000,0,0,0,0,0,0,0,0,4.78265,0,0),
(75069,1,-3821.13,2120.74,92.0849,4000,2141904,0,0,0,0,0,0,0,3.8364,0,0),
(75069,2,-3821.13,2120.74,92.0849,150000,0,0,0,0,0,0,0,0,3.8364,0,0),
(75070,1,-3849,2115.38,95.1725,4000,2141903,0,0,0,0,0,0,0,2.39329,0,0),
(75070,2,-3849,2115.38,95.1725,150000,0,0,0,0,0,0,0,0,2.39329,0,0),
(75072,1,-3817.68,2044.13,94.6227,4000,2141904,0,0,0,0,0,0,0,1.56998,0,0),
(75072,2,-3817.68,2044.13,94.6227,150000,0,0,0,0,0,0,0,0,1.56998,0,0),
(75073,1,-3879.87,2012.63,95.3365,4000,2141903,0,0,0,0,0,0,0,5.49429,0,0),
(75073,2,-3879.87,2012.63,95.3365,150000,0,0,0,0,0,0,0,0,5.49429,0,0);

-- Gryphonrider Nordin - wps
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 75349;
DELETE FROM creature_movement WHERE id = 75349;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(75349,1,-3463.753418,2003.245728,96.814293,35000,0,0,0,0,0,0,0,0,1.670,0,0),
(75349,2,-3484.718506,2004.462891,96.858665,40000,0,0,0,0,0,0,0,0,3.079,0,0);

-- Scryer Guardian - wps
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 69889;
DELETE FROM creature_movement WHERE id = 69889;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(69889,1,-4104.319336,1140.283936,43.441528,0,0,0,0,0,0,0,0,0,1.965520,0,0),
(69889,2,-4114.023438,1164.061157,49.375038,0,0,0,0,0,0,0,0,0,2.304026,0,0),
(69889,3,-4117.360352,1166.746216,49.581749,0,0,0,0,0,0,0,0,0,2.781548,0,0),
(69889,4,-4123.027344,1168.895264,49.581749,0,0,0,0,0,0,0,0,0,2.496448,0,0),
(69889,5,-4125.118652,1170.899780,49.581749,0,0,0,0,0,0,0,0,0,2.057410,0,0),
(69889,6,-4126.618652,1173.509399,49.581749,3000,0,0,0,0,0,0,0,0,2.005574,0,0),
(69889,7,-4124.328125,1170.254272,49.581749,0,0,0,0,0,0,0,0,0,5.656101,0,0),
(69889,8,-4121.241211,1168.350830,49.581749,0,0,0,0,0,0,0,0,0,6.198808,0,0),
(69889,9,-4114.310547,1164.540771,49.480801,0,0,0,0,0,0,0,0,0,5.096164,0,0),
(69889,10,-4106.934570,1146.827271,44.482040,0,0,0,0,0,0,0,0,0,5.111871,0,0),
(69889,11,-4098.165039,1125.765747,42.616520,3000,0,0,0,0,0,0,0,0,5.084383,0,0);

-- Commander Hobb - correct spawn point
UPDATE creature SET position_x = -4098.35, position_y = 1118.62, position_z = 42.66, orientation = 5.58 WHERE guid = 1011;
UPDATE creature_model_info SET modelid_other_gender = 0 WHERE modelid = 21505;
DELETE FROM creature_template_addon WHERE entry = 23434;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(23434,0,0,2,16,0,0,NULL);

-- Legion Hold EVENT between Shadow Council Warlock and Deathforged Infernal -- SHADOWMOON VALLEY
-- Shadow Council Warlock #2 
-- WARLOCKs - part
UPDATE creature SET position_x = -3435.594, position_y = 2948.72, position_z = 171.0906, MovementType = 2, spawndist = 0 WHERE guid = 74601;
DELETE FROM creature_movement WHERE id = 74601;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(74601,1,-3434.833,2992.729,171.263,1000,2130201,0,0,0,0,0,0,0,4.82,0,0),
(74601,2,-3437.531,2977.076,171.3966,5000,2130202,0,0,0,0,0,0,0,3.46,0,0),
(74601,3,-3414.52,2975.05,170.004,3000,0,0,0,0,0,0,0,0,0,0,0),
(74601,4,-3414.52,2975.05,170.004,30000,2130203,0,0,0,0,0,0,0,1.047,0,0),
(74601,5,-3434.833,2992.729,171.263,0,0,0,0,0,0,0,0,0,0,0,0),
(74601,6,-3435.594,2948.72,171.0906,0,0,0,0,0,0,0,0,0,0,0,0),
(74601,7,-3434.833,2992.729,171.263,0,0,0,0,0,0,0,0,0,0,0,0),
(74601,8,-3435.594,2948.72,171.0906,0,0,0,0,0,0,0,0,0,0,0,0),
(74601,9,-3434.833,2992.729,171.263,0,0,0,0,0,0,0,0,0,0,0,0),
(74601,10,-3435.594,2948.72,171.0906,0,0,0,0,0,0,0,0,0,0,0,0),
(74601,11,-3434.833,2992.729,171.263,0,0,0,0,0,0,0,0,0,0,0,0),
(74601,12,-3435.594,2948.72,171.0906,0,0,0,0,0,0,0,0,0,0,0,0),
(74601,13,-3434.833,2992.729,171.263,0,0,0,0,0,0,0,0,0,0,0,0),
(74601,14,-3435.594,2948.72,171.0906,0,0,0,0,0,0,0,0,0,0,0,0),
(74601,15,-3434.833,2992.729,171.263,0,0,0,0,0,0,0,0,0,0,0,0),
(74601,16,-3435.594,2948.72,171.0906,0,0,0,0,0,0,0,0,0,0,0,0),
(74601,17,-3434.833,2992.729,171.263,0,0,0,0,0,0,0,0,0,0,0,0),
(74601,18,-3435.594,2948.72,171.0906,0,0,0,0,0,0,0,0,0,0,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2130201, 2130202, 2130203); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2130201,0,10,21316,53000,0,0,0,0,0,0,0,-3441.13,2974.6,171.87,6.24828,'summon infernal'),
(2130202,0,15,36632,0,21316,5,1,0,0,0,0,0,0,0,0,''),
(2130202,5,14,16245,0,21316,5,0,0,0,0,0,0,0,0,0,''),
(2130202,6,20,2,0,21316,5,7,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(2130203,6,15,33346,0,21316,10,1,0,0,0,0,0,0,0,0,''),
(2130203,20,15,36656,0,21316,10,1,0,0,0,0,0,0,0,0,'');
-- Deathforged Infernal - part
UPDATE creature SET position_x = -3441.141, position_y = 2991.273, position_z = 171.9963, orientation = 6.24828 WHERE guid = 74641;
UPDATE creature_template SET MovementType = 0, InhabitType = 3 WHERE entry = 21316; 
DELETE FROM creature_template_addon WHERE entry = 21316;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(21316,0,0,1,16,0,0,'16245');
DELETE FROM creature_movement_template WHERE entry = 21316;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(21316,1,-3417.519,2975.213,170.004,5000,0,0,0,0,0,0,0,0,0,0,0),
(21316,2,-3411.01,2979.66,170.004,20000,2131601,0,0,0,0,0,0,0,0,0,0),
(21316,3,-3329.58,2934.13,300,0,0,0,0,0,0,0,0,0,0,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2131601; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2131601,3,31,20683,20,0,0,0,0,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(2131601,8,15,33346,0,20683,10,3,0,0,0,0,0,0,0,0,'force buddy to cast 33346'),
(2131601,17,15,36656,0,20683,10,3,0,0,0,0,0,0,0,0,'force buddy to cast 36656'),
(2131601,18,15,36658,0,0,0,0,0,0,0,0,0,0,0,0,'cast 36658 target-self');
-- Greater Felfire Diemetradon -- we don't need '3' .. theres no deep ponds or lakes there, also with 3 he falls under the ground, anyway he shouldnt swim.
UPDATE creature_template SET inhabitType = 1 WHERE entry = 21462;
