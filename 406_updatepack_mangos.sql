select * from creature where id IN (10264);
-- Hydross
DELETE FROM creature WHERE guid IN (82967, 81027, 93788);
DELETE FROM creature_movement WHERE id IN (82967, 81027, 93788);

DELETE FROM creature WHERE id = 10264;

-- Varos
DELETE FROM creature WHERE guid IN (100236, 100237, 100238);
-- Grz3s
 DELETE FROM creature WHERE guid IN (57505, 64226, 64227, 64228, 64229, 64230, 64231, 64232, 64236, 64240,
 64248, 67037, 67038, 67039, 67892, 67901, 69664, 70625, 70659, 70665, 70684, 71923);
 
-- Shadow Council Zealot- missing spawns + wps
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (52324,21754,530,1,1,0,0,-2677.91,2604.97,74.9245,1.59403,120,0,0,6326,0,0,2);
DELETE FROM creature_movement WHERE id = 52324;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(52324,1,-2678.325684,2652.902344,74.924843,0,0,0,0,0,0,0,0,0,0,4.678900,0,0),
(52324,2,-2676.548096,2540.522461,74.924828,0,0,0,0,0,0,0,0,0,0,1.582253,0,0),
(52324,3,-2677.909912,2604.969971,74.924500,0,0,0,0,0,0,0,0,0,0,1.472298,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (52326,21754,530,1,1,0,0,-2663.37,2549.13,74.9243,4.57697,120,0,0,6326,0,0,2);
DELETE FROM creature_movement WHERE id = 52326;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(52326,1,-2663.570068,2529.327637,74.646019,0,0,0,0,0,0,0,0,0,0,1.583757,0,0),
(52326,2,-2663.742676,2654.023926,74.924805,0,0,0,0,0,0,0,0,0,0,4.717499,0,0),
(52326,3,-2663.370117,2549.129883,74.924301,0,0,0,0,0,0,0,0,0,0,4.615398,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (52327,21754,530,1,1,0,0,-2645,2590.59,74.9251,1.45658,120,0,0,6326,0,0,2);
DELETE FROM creature_movement WHERE id = 52327;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(52327,1,-2646.468506,2654.039063,74.924507,0,0,0,0,0,0,0,0,0,0,4.697862,0,0),
(52327,2,-2644.309570,2586.749512,74.925903,0,0,0,0,0,0,0,0,0,0,4.760692,0,0),
(52327,3,-2643.917480,2515.218750,74.214821,0,0,0,0,0,0,0,0,0,0,1.595539,0,0),
(52327,4,-2644.495117,2585.188721,74.925888,0,0,0,0,0,0,0,0,0,0,1.607322,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (52328,21754,530,1,1,0,0,-2631.19,2653.51,74.1862,1.48405,120,0,0,6326,0,0,2);
DELETE FROM creature_movement WHERE id = 52328;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(52328,1,-2629.376709,2583.553711,74.198387,0,0,0,0,0,0,0,0,0,0,4.709631,0,0),
(52328,2,-2628.939941,2518.081787,74.202423,0,0,0,0,0,0,0,0,0,0,1.469866,0,0),
(52328,3,-2630.052490,2583.500000,74.197365,0,0,0,0,0,0,0,0,0,0,1.571973,0,0),
(52328,4,-2631.485596,2651.505859,74.191307,0,0,0,0,0,0,0,0,0,0,4.690005,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (52329,21754,530,1,1,0,0,-2736.29,2488.78,93.2806,1.52038,120,0,0,6326,0,0,2);
DELETE FROM creature_movement WHERE id = 52329;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(52329,1,-2736.120361,2505.816406,93.460983,0,0,0,0,0,0,0,0,0,0,4.741055,0,0),
(52329,2,-2736.896484,2429.869629,92.257599,0,0,0,0,0,0,0,0,0,0,1.524847,0,0),
(52329,3,-2736.437256,2490.431641,93.280800,0,0,0,0,0,0,0,0,0,0,1.552336,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (52332,21754,530,1,1,0,0,-2720.64,2449.53,92.162,1.56763,120,0,0,6326,0,0,2);
DELETE FROM creature_movement WHERE id = 52332;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(52332,1,-2719.494385,2505.611816,93.280861,0,0,0,0,0,0,0,0,0,0,4.741053,0,0),
(52332,2,-2719.745605,2446.810791,92.161270,0,0,0,0,0,0,0,0,0,0,1.587676,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (52333,21754,530,1,1,0,0,-2755.07,2382.19,92.4042,1.51657,120,0,0,6326,0,0,2);
DELETE FROM creature_movement WHERE id = 52333;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(52333,1,-2753.125000,2480.805664,92.162201,0,0,0,0,0,0,0,0,0,0,4.721427,0,0),
(52333,2,-2755.167969,2394.444824,93.210419,0,0,0,0,0,0,0,0,0,0,1.544489,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (52334,21754,530,1,1,0,0,-2769.76,2426.95,92.4207,4.73277,120,0,0,6326,0,0,2);
DELETE FROM creature_movement WHERE id = 52334;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(52334,1,-2770.375000,2388.059814,93.280861,0,0,0,0,0,0,0,0,0,0,1.528769,0,0),
(52334,2,-2769.787598,2481.347168,93.279793,0,0,0,0,0,0,0,0,0,0,4.721417,0,0),
(52334,3,-2770.096436,2422.925049,92.408501,0,0,0,0,0,0,0,0,0,0,4.658583,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (52335,21754,530,1,1,0,0,-2756.64,2339.46,92.1703,4.74453,120,0,0,6326,0,0,2);
DELETE FROM creature_movement WHERE id = 52335;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(52335,1,-2756.407227,2294.054199,92.543571,0,0,0,0,0,0,0,0,0,0,1.556270,0,0),
(52335,2,-2755.023682,2380.409912,92.854248,0,0,0,0,0,0,0,0,0,0,4.646814,0,0),
(52335,3,-2757.791260,2338.131348,92.148415,0,0,0,0,0,0,0,0,0,0,4.686081,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (52336,21754,530,1,1,0,0,-2769.54,2320.77,93.2806,4.64635,120,0,0,6326,0,0,2);
DELETE FROM creature_movement WHERE id = 52336;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(52336,1,-2770.310791,2300.139648,93.280739,0,0,0,0,0,0,0,0,0,0,1.513076,0,0),
(52336,2,-2770.259277,2384.548584,93.279747,0,0,0,0,0,0,0,0,0,0,4.744989,0,0),
(52336,3,-2769.983887,2315.232422,93.280769,0,0,0,0,0,0,0,0,0,0,4.741062,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (52337,21754,530,1,1,0,0,-2755.03,2225.6,92.1626,1.52046,120,0,0,6326,0,0,2);
DELETE FROM creature_movement WHERE id = 52337;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(52337,1,-2757.571533,2295.147461,92.995193,0,0,0,0,0,0,0,0,0,0,1.518486,0,0),
(52337,2,-2755.666748,2249.974121,93.280624,0,0,0,0,0,0,0,0,0,0,4.730762,0,0),
(52337,3,-2755.509277,2213.357178,93.280624,0,0,0,0,0,0,0,0,0,0,1.545973,0,0),
(52337,4,-2756.066895,2235.852295,93.281265,0,0,0,0,0,0,0,0,0,0,1.573459,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (52338,21754,530,1,1,0,0,-2770.36,2283.05,93.2808,4.72489,120,0,0,6326,0,0,2);
DELETE FROM creature_movement WHERE id = 52338;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(52338,1,-2770.278809,2215.411377,93.281021,0,0,0,0,0,0,0,0,0,0,1.573457,0,0),
(52338,2,-2770.342529,2295.676270,93.280746,0,0,0,0,0,0,0,0,0,0,4.699348,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (52339,21754,530,1,1,0,0,-2785.46,2226.31,92.4747,4.64085,120,0,0,6326,0,0,2);
DELETE FROM creature_movement WHERE id = 52339;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(52339,1,-2786.389648,2214.951904,93.280746,0,0,0,0,0,0,0,0,0,0,1.485590,0,0),
(52339,2,-2785.451904,2295.565674,92.145096,0,0,0,0,0,0,0,0,0,0,4.768560,0,0),
(52339,3,-2785.800537,2226.149414,92.395447,0,0,0,0,0,0,0,0,0,0,4.792122,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (52341,21754,530,1,1,0,0,-2753.17,2129.18,117.225,4.68956,120,0,0,6326,0,0,2);
DELETE FROM creature_movement WHERE id = 52341;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(52341,1,-2753.484619,2084.385498,116.691711,0,0,0,0,0,0,0,0,0,0,4.704056,0,0),
(52341,2,-2753.230469,2039.012939,117.226364,0,0,0,0,0,0,0,0,0,0,1.522410,0,0),
(52341,3,-2753.542725,2076.203369,117.024773,0,0,0,0,0,0,0,0,0,0,1.574242,0,0),
(52341,4,-2753.503662,2140.282471,116.233116,0,0,0,0,0,0,0,0,0,0,4.731537,0,0),
(52341,5,-2753.588379,2128.951416,117.225220,0,0,0,0,0,0,0,0,0,0,4.739391,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (52344,21754,530,1,1,0,0,-2736.79,2038.79,117.226,1.54404,120,0,0,6326,0,0,2);
DELETE FROM creature_movement WHERE id = 52344;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(52344,1,-2736.809326,2083.445313,116.135193,0,0,0,0,0,0,0,0,0,0,1.570310,0,0),
(52344,2,-2736.477051,2138.879395,117.221542,0,0,0,0,0,0,0,0,0,0,4.715835,0,0),
(52344,3,-2737.201416,2084.139404,116.153732,0,0,0,0,0,0,0,0,0,0,4.735470,0,0),
(52344,4,-2737.272705,2038.640625,117.225914,0,0,0,0,0,0,0,0,0,0,1.574242,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (52346,21754,530,1,1,0,0,-2721.05,2095,117.225,1.45294,120,0,0,6326,0,0,2);
DELETE FROM creature_movement WHERE id = 52346;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(52346,1,-2720.251221,2139.843506,117.167641,0,0,0,0,0,0,0,0,0,0,4.688347,0,0),
(52346,2,-2721.503418,2089.026367,117.225388,0,0,0,0,0,0,0,0,0,0,4.656936,0,0),
(52346,3,-2721.338867,2039.541016,117.225044,0,0,0,0,0,0,0,0,0,0,1.554608,0,0),
(52346,4,-2721.850586,2072.629883,117.225334,0,0,0,0,0,0,0,0,0,0,1.546754,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (52347,21754,530,1,1,0,0,-2703.57,2072.28,117.225,4.69074,120,0,0,6326,0,0,2);
DELETE FROM creature_movement WHERE id = 52347;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(52347,1,-2703.576904,2038.855469,117.225395,0,0,0,0,0,0,0,0,0,0,1.676350,0,0),
(52347,2,-2703.498047,2071.436768,117.225189,0,0,0,0,0,0,0,0,0,0,1.562467,0,0),
(52347,3,-2703.385254,2131.246094,117.225235,0,0,0,0,0,0,0,0,0,0,4.700133,0,0),
(52347,4,-2703.205811,2071.445557,117.226418,0,0,0,0,0,0,0,0,0,0,4.759037,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (54812,21754,530,1,1,0,0,-2687.71,2119.2,116.425,4.68681,120,0,0,6326,0,0,2);
DELETE FROM creature_movement WHERE id = 54812;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(54812,1,-2688.129639,2040.343262,117.285820,0,0,0,0,0,0,0,0,0,0,1.557126,0,0),
(54812,2,-2687.308838,2117.292969,116.949333,0,0,0,0,0,0,0,0,0,0,4.737992,0,0);
-- Cataclysm Overseer - missing spawns + wps
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (57505,21961,530,1,1,0,293,-2658.77,2596.16,74.9248,1.60186,120,0,0,69860,0,0,2);
DELETE FROM creature_movement WHERE id = 57505;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(57505,1,-2659.691895,2651.554199,74.924919,0,0,0,0,0,0,0,0,0,0,4.743383,0,0),
(57505,2,-2657.643311,2583.581055,74.924812,0,0,0,0,0,0,0,0,0,0,4.755164,0,0),
(57505,3,-2656.439941,2522.419678,74.924706,0,0,0,0,0,0,0,0,0,0,1.641059,0,0),
(57505,4,-2657.940430,2595.534668,74.924866,0,0,0,0,0,0,0,0,0,0,1.625351,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (64226,21961,530,1,1,0,293,-2625.86,2635.63,74.9245,4.6924,120,0,0,69860,0,0,2);
DELETE FROM creature_movement WHERE id = 64226;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(64226,1,-2625.381348,2579.043701,74.925316,0,0,0,0,0,0,0,0,0,0,4.696265,0,0),
(64226,2,-2626.042969,2510.666992,74.372765,0,0,0,0,0,0,0,0,0,0,1.582160,0,0),
(64226,3,-2625.813477,2583.719482,74.314331,0,0,0,0,0,0,0,0,0,0,1.578233,0,0),
(64226,4,-2625.902832,2656.292969,74.102448,0,0,0,0,0,0,0,0,0,0,4.680553,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (64227,21961,530,1,1,0,293,-2772.78,2453.67,93.2794,4.68452,120,0,0,69860,0,0,2);
DELETE FROM creature_movement WHERE id = 64227;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(64227,1,-2773.824951,2358.288574,93.280632,0,0,0,0,0,0,0,0,0,0,1.532672,0,0),
(64227,2,-2772.538574,2422.185059,93.189110,0,0,0,0,0,0,0,0,0,0,1.601787,0,0),
(64227,3,-2772.764160,2475.486816,93.281075,0,0,0,0,0,0,0,0,0,0,4.590234,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (64228,21961,530,1,1,0,293,-2760.04,2350.47,93.2792,1.51701,120,0,0,69860,0,0,2);
DELETE FROM creature_movement WHERE id = 64228;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(64228,1,-2758.801514,2427.523193,93.280579,0,0,0,0,0,0,0,0,0,0,1.593936,0,0),
(64228,2,-2758.140625,2481.771240,92.162209,0,0,0,0,0,0,0,0,0,0,1.535031,0,0),
(64228,3,-2758.877930,2415.946045,93.280228,0,0,0,0,0,0,0,0,0,0,4.755166,0,0),
(64228,4,-2760.518311,2350.331299,93.280655,0,0,0,0,0,0,0,0,0,0,1.597853,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (64229,21961,530,1,1,0,293,-2773.28,2300.33,93.2811,1.59004,120,0,0,69860,0,0,2);
DELETE FROM creature_movement WHERE id = 64229;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(64229,1,-2773.847656,2347.280762,93.280708,0,0,0,0,0,0,0,0,0,0,4.696235,0,0),
(64229,2,-2773.642090,2275.396240,93.280815,0,0,0,0,0,0,0,0,0,0,4.711943,0,0),
(64229,3,-2773.478271,2210.351318,93.280701,0,0,0,0,0,0,0,0,0,0,1.752562,0,0),
(64229,4,-2773.338379,2297.050537,93.281807,0,0,0,0,0,0,0,0,0,0,1.583701,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (64230,21961,530,1,1,0,293,-2759.17,2207.39,93.2797,1.55469,120,0,0,69860,0,0,2);
DELETE FROM creature_movement WHERE id = 64230;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(64230,1,-2759.654053,2255.739014,93.279335,0,0,0,0,0,0,0,0,0,0,1.417198,0,0),
(64230,2,-2760.073975,2296.392334,93.279877,0,0,0,0,0,0,0,0,0,0,4.723721,0,0),
(64230,3,-2758.844971,2210.066162,93.280518,0,0,0,0,0,0,0,0,0,0,1.589985,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (64231,21961,530,1,1,0,293,-2708.3,2129.17,117.225,4.66172,120,0,0,69860,0,0,2);
DELETE FROM creature_movement WHERE id = 64231;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(64231,1,-2708.383789,2038.328613,117.216866,0,0,0,0,0,0,0,0,0,0,1.611182,0,0),
(64231,2,-2707.458008,2141.525146,117.224556,0,0,0,0,0,0,0,0,0,0,4.686022,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (64232,21961,530,1,1,0,293,-2741.95,2067.71,117.225,1.58216,120,0,0,69860,0,0,2);
DELETE FROM creature_movement WHERE id = 64232;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(64232,1,-2741.151367,2136.827637,116.914581,0,0,0,0,0,0,0,0,0,0,4.764569,0,0),
(64232,2,-2743.129150,2030.678833,116.605324,0,0,0,0,0,0,0,0,0,0,1.585276,0,0),
(64232,3,-2740.384766,2064.328857,117.225288,0,0,0,0,0,0,0,0,0,0,1.518517,0,0);
-- Wildhammer Guard - one with wp
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (64236,19353,530,1,1,0,256,-2711.52,1951.89,144.347,3.02624,300,0,0,34930,0,0,2);
DELETE FROM creature_movement WHERE id = 64236;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(64236,1,-2719.785889,1955.259644,145.524384,0,0,0,0,0,0,0,0,0,0,3.065578,0,0),
(64236,2,-2727.628662,1952.952393,148.327011,0,0,0,0,0,0,0,0,0,0,3.285489,0,0),
(64236,3,-2743.070801,1952.622437,155.439240,0,0,0,0,0,0,0,0,0,0,3.144116,0,0),
(64236,4,-2765.708008,1949.153442,167.560837,0,0,0,0,0,0,0,0,0,0,3.557235,0,0),
(64236,5,-2786.944824,1937.139526,183.517853,0,0,0,0,0,0,0,0,0,0,4.033187,0,0),
(64236,6,-2791.421875,1930.427612,187.588806,5000,0,0,0,0,0,0,0,0,0,4.047323,0,0),
(64236,7,-2787.303711,1939.426270,183.025879,0,0,0,0,0,0,0,0,0,0,0.537377,0,0),
(64236,8,-2779.194824,1943.818481,176.963562,0,0,0,0,0,0,0,0,0,0,0.273484,0,0),
(64236,9,-2764.031250,1951.010864,166.397430,0,0,0,0,0,0,0,0,0,0,0.141537,0,0),
(64236,10,-2746.778809,1953.871704,157.252838,0,0,0,0,0,0,0,0,0,0,0.116404,0,0),
(64236,11,-2739.548096,1954.503906,153.539703,0,0,0,0,0,0,0,0,0,0,6.273926,0,0),
(64236,12,-2728.077393,1955.589478,148.532196,0,0,0,0,0,0,0,0,0,0,6.191462,0,0),
(64236,13,-2720.492920,1953.494629,145.820526,0,0,0,0,0,0,0,0,0,0,5.810546,0,0),
(64236,14,-2709.330566,1952.441406,144.022812,0,0,0,0,0,0,0,0,0,0,0.073210,0,0),
(64236,15,-2696.230713,1953.808105,143.374084,0,0,0,0,0,0,0,0,0,0,0.419569,0,0),
(64236,16,-2688.266602,1958.376709,142.400284,5000,0,0,0,0,0,0,0,0,0,0.815412,0,0),
(64236,17,-2700.422852,1953.164185,143.829758,0,0,0,0,0,0,0,0,0,0,3.388376,0,0);

-- The Path of Conquest -- SHADOWMOON VALLEY - 100% complited
-- Son of Coroc 
-- #1 
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (64240,19824,530,1,1,0,0,-4273.55,1319.67,55.8555,5.38548,300,0,0,26168,0,0,2);
DELETE FROM creature_movement WHERE id = 64240;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(64240,1,-4291.579102,1321.886475,62.877987,0,0,0,0,0,0,0,0,0,0,3.261762,0,0),
(64240,2,-4330.684082,1321.013428,77.004379,0,0,0,0,0,0,0,0,0,0,3.188002,0,0),
(64240,3,-4338.389160,1318.702026,77.673195,0,0,0,0,0,0,0,0,0,0,3.450282,0,0),
(64240,4,-4362.762207,1316.882202,84.121857,0,0,0,0,0,0,0,0,0,0,3.215448,0,0),
(64240,5,-4339.900391,1320.421143,77.799423,0,0,0,0,0,0,0,0,0,0,0.120978,0,0),
(64240,6,-4328.303223,1320.339722,76.576897,0,0,0,0,0,0,0,0,0,0,6.247086,0,0),
(64240,7,-4309.855957,1322.065063,70.033821,0,0,0,0,0,0,0,0,0,0,0.085636,0,0),
(64240,8,-4299.592285,1324.980591,64.742287,0,0,0,0,0,0,0,0,0,0,6.156764,0,0),
(64240,9,-4291.502930,1323.707153,63.024647,0,0,0,0,0,0,0,0,0,0,6.117482,0,0),
(64240,10,-4275.433105,1321.727539,56.752659,0,0,0,0,0,0,0,0,0,0,5.516655,0,0);
-- #2
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (64248,19824,530,1,1,0,0,-4279.65,1299.84,47.9057,0.310198,300,0,0,26168,0,0,2);
DELETE FROM creature_movement WHERE id = 64248;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(64248,1,-4258.845703,1306.512695,51.897869,0,0,0,0,0,0,0,0,0,0,0.153119,0,0),
(64248,2,-4234.569336,1307.515381,55.638130,0,0,0,0,0,0,0,0,0,0,0.007844,0,0),
(64248,3,-4210.310059,1306.459717,56.275749,0,0,0,0,0,0,0,0,0,0,6.196784,0,0),
(64248,4,-4175.497559,1306.332520,56.028595,0,0,0,0,0,0,0,0,0,0,6.168508,0,0),
(64248,5,-4130.836426,1301.105713,54.074314,0,0,0,0,0,0,0,0,0,0,0.022766,0,0),
(64248,6,-4156.718262,1301.714478,55.806763,0,0,0,0,0,0,0,0,0,0,3.066184,0,0),
(64248,7,-4218.573730,1307.112183,56.220051,0,0,0,0,0,0,0,0,0,0,3.077964,0,0),
(64248,8,-4255.954590,1309.234497,52.038406,0,0,0,0,0,0,0,0,0,0,3.207779,0,0),
(64248,9,-4276.255371,1298.944824,48.529320,0,0,0,0,0,0,0,0,0,0,3.572990,0,0);
-- Eclipsion Cavalier
-- #1
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (67037,22018,530,1,1,0,2386,-4102.84,1353.31,72.3164,6.10637,180,0,0,6761,0,0,2);
DELETE FROM creature_movement WHERE id = 67037;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(67037,1,-4103.971191,1377.960083,79.685242,6000,2131401,0,0,0,0,0,0,0,0,6.009293,0,0),
(67037,2,-4102.046387,1394.597168,83.893349,0,0,0,0,0,0,0,0,0,0,1.054193,0,0),
(67037,3,-4094.722656,1403.567383,86.180771,6000,2131401,0,0,0,0,0,0,0,0,5.330686,0,0),
(67037,4,-4102.490234,1392.138794,83.495384,0,0,0,0,0,0,0,0,0,0,4.368432,0,0),
(67037,5,-4104.049805,1377.345459,79.517700,0,0,0,0,0,0,0,0,0,0,4.645672,0,0),
(67037,6,-4103.722656,1351.722900,71.512207,6000,2131401,0,0,0,0,0,0,0,0,5.996553,0,0),
(67037,7,-4099.052734,1319.777710,61.926575,6000,2131401,0,0,0,0,0,0,0,0,5.929792,0,0),
(67037,8,-4102.394531,1336.848633,66.750793,0,0,0,0,0,0,0,0,0,0,1.594399,0,0),
(67037,9,-4102.727539,1354.607300,72.944283,0,0,0,0,0,0,0,0,0,0,1.460873,0,0);
-- #2
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (67038,22018,530,1,1,0,2386,-4166.61,1308.71,56.1101,5.786358,180,0,0,6761,0,0,2);
DELETE FROM creature_movement WHERE id = 67038;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(67038,1,-4149.717773,1306.968872,55.667828,6000,2131401,0,0,0,0,0,0,0,0,1.507998,0,0),
(67038,2,-4140.446777,1306.138550,55.122066,0,0,0,0,0,0,0,0,0,0,0.280418,0,0),
(67038,3,-4124.307617,1313.405029,56.092731,0,0,0,0,0,0,0,0,0,0,0.893814,0,0),
(67038,4,-4117.140137,1325.097412,61.254425,0,0,0,0,0,0,0,0,0,0,1.260596,0,0),
(67038,5,-4116.557617,1336.507202,65.803864,6000,2131401,0,0,0,0,0,0,0,0,3.149479,0,0),
(67038,6,-4114.512207,1369.540283,77.156120,0,0,0,0,0,0,0,0,0,0,1.620308,0,0),
(67038,7,-4119.951660,1400.709595,84.820045,6000,2131401,0,0,0,0,0,0,0,0,3.140053,0,0),
(67038,8,-4122.000977,1387.390991,81.990898,6000,2131401,0,0,0,0,0,0,0,0,3.830418,0,0),
(67038,9,-4114.799805,1377.720093,79.414825,0,0,0,0,0,0,0,0,0,0,4.782318,0,0),
(67038,10,-4116.968750,1335.489746,65.560646,6000,2131401,0,0,0,0,0,0,0,0,3.597161,0,0),
(67038,11,-4119.376465,1322.741943,60.336918,0,0,0,0,0,0,0,0,0,0,4.198778,0,0),
(67038,12,-4124.025879,1314.930054,56.881123,0,0,0,0,0,0,0,0,0,0,3.738538,0,0),
(67038,13,-4133.018066,1308.657593,55.078472,0,0,0,0,0,0,0,0,0,0,3.431448,0,0),
(67038,14,-4144.190430,1305.480835,55.245853,0,0,0,0,0,0,0,0,0,0,2.943716,0,0),
(67038,15,-4162.311523,1308.176270,55.982552,0,0,0,0,0,0,0,0,0,0,2.833756,0,0),
(67038,16,-4178.270020,1313.508545,56.028622,6000,2131401,0,0,0,0,0,0,0,0,1.180493,0,0),
(67038,17,-4165.877930,1309.787842,56.131485,0,0,0,0,0,0,0,0,0,0,6.046034,0,0);
-- #3
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (67039,22018,530,1,1,0,2386,-4258.1,1299.36,52.9594,0.146762,180,0,0,6761,0,0,2);
DELETE FROM creature_movement WHERE id = 67039;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(67039,1,-4230.039551,1299.383057,57.734222,0,0,0,0,0,0,0,0,0,0,0.123562,0,0),
(67039,2,-4212.985840,1300.061279,56.618050,6000,2131401,0,0,0,0,0,0,0,0,4.773127,0,0),
(67039,3,-4189.777832,1298.659790,56.797100,0,0,0,0,0,0,0,0,0,0,5.877397,0,0),
(67039,4,-4172.935059,1291.231323,57.326065,6000,2131401,0,0,0,0,0,0,0,0,4.883092,0,0),
(67039,5,-4188.985840,1298.180176,56.977264,0,0,0,0,0,0,0,0,0,0,2.981645,0,0),
(67039,6,-4194.865234,1299.103149,56.464111,6000,2131402,0,0,0,0,0,0,0,0,4.614488,0,0),
(67039,7,-4215.393555,1300.037354,56.342075,0,0,0,0,0,0,0,0,0,0,3.143429,0,0),
(67039,8,-4237.444824,1299.077515,56.229706,6000,2131401,0,0,0,0,0,0,0,0,4.641969,0,0),
(67039,9,-4258.752441,1298.938354,52.977413,6000,2131401,0,0,0,0,0,0,0,0,4.628614,0,0);
-- #4
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (67892,22018,530,1,1,0,2386,-4258.5,1315.87,52.4526,0.146762,180,0,0,6761,0,0,2);
DELETE FROM creature_movement WHERE id = 67892;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(67892,1,-4249.421387,1314.141724,53.420525,6000,2131401,0,0,0,0,0,0,0,0,1.332926,0,0),
(67892,2,-4241.710449,1310.938110,55.105900,0,0,0,0,0,0,0,0,0,0,6.172549,0,0),
(67892,3,-4204.778320,1308.694946,56.263645,6000,2131401,0,0,0,0,0,0,0,0,1.568542,0,0),
(67892,4,-4193.451660,1312.268433,56.107620,0,0,0,0,0,0,0,0,0,0,0.272635,0,0),
(67892,5,-4208.331055,1310.006958,56.535122,0,0,0,0,0,0,0,0,0,0,3.308199,0,0),
(67892,6,-4219.932129,1308.875244,56.215294,0,0,0,0,0,0,0,0,0,0,2.907646,0,0),
(67892,7,-4228.837402,1311.454346,55.869354,6000,2131401,0,0,0,0,0,0,0,0,1.832287,0,0),
(67892,8,-4241.833496,1311.772461,55.133625,0,0,0,0,0,0,0,0,0,0,2.994677,0,0),
(67892,9,-4257.262695,1313.393311,51.838036,0,0,0,0,0,0,0,0,0,0,2.306452,0,0),
(67892,10,-4265.494141,1317.593994,53.912189,0,0,0,0,0,0,0,0,0,0,2.545213,0,0),
(67892,11,-4281.928711,1328.797485,60.012413,0,0,0,0,0,0,0,0,0,0,3.112048,0,0),
(67892,12,-4296.246582,1325.972900,64.101456,6000,2131401,0,0,0,0,0,0,0,0,2.031339,0,0),
(67892,13,-4303.610840,1325.507813,66.929008,0,0,0,0,0,0,0,0,0,0,2.738199,0,0),
(67892,14,-4323.066406,1328.537598,76.250832,0,0,0,0,0,0,0,0,0,0,2.885854,0,0),
(67892,15,-4312.891602,1329.222656,72.778610,6000,2131401,0,0,0,0,0,0,0,0,2.109097,0,0),
(67892,16,-4299.362305,1325.276001,64.722870,0,0,0,0,0,0,0,0,0,0,0.113404,0,0),
(67892,17,-4290.229004,1327.543213,63.226055,0,0,0,0,0,0,0,0,0,0,6.150759,0,0),
(67892,18,-4277.194336,1324.038696,57.671871,0,0,0,0,0,0,0,0,0,0,5.591559,0,0),
(67892,19,-4260.668457,1315.188354,52.431873,0,0,0,0,0,0,0,0,0,0,6.124844,0,0);
-- #5
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (67901,22018,530,1,1,0,2386,-4360.59,1306.49,87.3064,3.3381,180,0,0,6761,0,0,2);
DELETE FROM creature_movement WHERE id = 67901;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(67901,1,-4375.126465,1303.278320,85.577621,6000,2131401,0,0,0,0,0,0,0,0,4.856774,0,0),
(67901,2,-4361.780762,1312.637695,84.264503,0,0,0,0,0,0,0,0,0,0,0.295969,0,0),
(67901,3,-4341.683105,1311.547607,80.411469,6000,2131401,0,0,0,0,0,0,0,0,4.735051,0,0),
(67901,4,-4321.630859,1309.769775,77.060608,6000,2131401,0,0,0,0,0,0,0,0,5.055494,0,0),
(67901,5,-4343.967285,1311.530762,80.840149,0,0,0,0,0,0,0,0,0,0,3.331132,0,0),
(67901,6,-4363.502930,1304.341797,88.281136,0,0,0,0,0,0,0,0,0,0,3.512560,0,0);
-- #6
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (69664,22018,530,1,1,0,2386,-4436.05,1321.42,107.184,1.435196,180,0,0,6761,0,0,2);
DELETE FROM creature_movement WHERE id = 69664;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(69664,1,-4461.393066,1320.194214,116.670906,6000,2131401,0,0,0,0,0,0,0,0,2.070291,0,0),
(69664,2,-4437.868164,1320.727905,107.994194,0,0,0,0,0,0,0,0,0,0,0.026686,0,0),
(69664,3,-4429.750000,1320.014526,102.811249,0,0,0,0,0,0,0,0,0,0,0.199472,0,0),
(69664,4,-4391.800781,1322.443115,87.486069,6000,2131401,0,0,0,0,0,0,0,0,1.840955,0,0),
(69664,5,-4388.374512,1323.540527,86.079224,0,0,0,0,0,0,0,0,0,0,0.160202,0,0),
(69664,6,-4376.183594,1324.692383,86.267548,0,0,0,0,0,0,0,0,0,0,0.113078,0,0),
(69664,7,-4353.493164,1326.675903,83.797935,0,0,0,0,0,0,0,0,0,0,0.081662,0,0),
(69664,8,-4333.206055,1328.341064,79.459991,0,0,0,0,0,0,0,0,0,0,1.923422,0,0),
(69664,9,-4343.587891,1327.150024,79.880264,0,0,0,0,0,0,0,0,0,0,3.274307,0,0),
(69664,10,-4353.993652,1325.673584,83.529861,0,0,0,0,0,0,0,0,0,0,3.207548,0,0),
(69664,11,-4376.354980,1325.079712,86.400055,0,0,0,0,0,0,0,0,0,0,3.219330,0,0),
(69664,12,-4385.875000,1324.126099,85.678467,0,0,0,0,0,0,0,0,0,0,3.229663,0,0),
(69664,13,-4395.421387,1322.084351,88.969414,6000,2131401,0,0,0,0,0,0,0,0,1.364341,0,0),
(69664,14,-4420.516113,1322.588135,99.892944,0,0,0,0,0,0,0,0,0,0,3.119706,0,0),
(69664,15,-4438.766113,1321.666626,108.814476,0,0,0,0,0,0,0,0,0,0,3.033313,0,0);
-- Eclipsion Spellbinder
-- #1
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (70625,22017,530,1,1,0,974,-4157.98,1285.35,57.3851,0,180,0,0,5409,3080,0,2);
DELETE FROM creature_movement WHERE id = 70625;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(70625,1,-4157.98,1285.35,57.3851,22000,2201701,0,0,0,0,0,0,0,0,0,0,0),
(70625,2,-4157.98,1285.35,57.3851,1000,0,0,0,0,0,0,0,0,0,0,0,0);
-- #2
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (70659,22017,530,1,1,0,974,-4146.76,1283.89,59.3465,2.635447,180,0,0,5409,3080,0,2);
DELETE FROM creature_movement WHERE id = 70659;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(70659,1,-4146.76,1283.89,59.3465,22000,2201701,0,0,0,0,0,0,0,0,2.635447,0,0),
(70659,2,-4146.76,1283.89,59.3465,1000,0,0,0,0,0,0,0,0,0,2.635447,0,0);
-- #3
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (70665,22017,530,1,1,0,974,-4287.81,1313.23,62.7335,6.213372,180,0,0,5409,3080,0,2);
DELETE FROM creature_movement WHERE id = 70665;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(70665,1,-4287.81,1313.23,62.7335,22000,2201701,0,0,0,0,0,0,0,0,6.213372,0,0),
(70665,2,-4287.81,1313.23,62.7335,1000,0,0,0,0,0,0,0,0,0,6.213372,0,0);
-- #4
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (70684,22017,530,1,1,0,974,-4278.1,1312.28,56.5005,2.740167,180,0,0,5409,3080,0,2);
DELETE FROM creature_movement WHERE id = 70684;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(70684,1,-4278.1,1312.28,56.5005,22000,2201701,0,0,0,0,0,0,0,0,2.740167,0,0),
(70684,2,-4278.1,1312.28,56.5005,1000,0,0,0,0,0,0,0,0,0,2.740167,0,0);

-- Ruins of Ba'ri -- SHADOWMOON VALLEY
-- Illidari Overseer <Servant of Illidan> - missing spawn
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (71923,21808,530,1,1,0,2012,-3291.01,1048.43,55.8776,3.2104,180,0,0,6761,0,0,2);
DELETE FROM creature_movement WHERE id = 71923;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(71923,1,-3327.201904,1046.561523,48.834190,3000,0,0,0,0,0,0,0,0,0,3.027388,0,0),
(71923,2,-3307.730225,1023.861877,49.520447,0,0,0,0,0,0,0,0,0,0,6.120279,0,0),
(71923,3,-3293.912842,1023.933105,49.552010,0,0,0,0,0,0,0,0,0,0,0.350740,0,0),
(71923,4,-3269.413818,1029.548706,51.804050,0,0,0,0,0,0,0,0,0,0,6.243579,0,0),
(71923,5,-3297.201904,1021.906616,49.644005,0,0,0,0,0,0,0,0,0,0,3.176601,0,0),
(71923,6,-3308.805908,1024.537842,49.520615,0,0,0,0,0,0,0,0,0,0,2.619753,0,0),
(71923,7,-3328.971924,1049.078369,48.110744,3000,0,0,0,0,0,0,0,0,0,2.999886,0,0),
(71923,8,-3299.546143,1050.090942,52.830944,0,0,0,0,0,0,0,0,0,0,6.176813,0,0),
(71923,9,-3289.020264,1049.234497,55.865726,0,0,0,0,0,0,0,0,0,0,6.212149,0,0),
(71923,10,-3280.781982,1050.201904,54.551582,0,0,0,0,0,0,0,0,0,0,0.141020,0,0),
(71923,11,-3265.385010,1052.301025,55.665657,0,0,0,0,0,0,0,0,0,0,5.993019,0,0),
(71923,12,-3258.624756,1049.141602,57.405373,0,0,0,0,0,0,0,0,0,0,5.824162,0,0),
(71923,13,-3247.432129,1047.624756,55.541584,0,0,0,0,0,0,0,0,0,0,6.205075,0,0),
(71923,14,-3244.515381,1047.071533,56.190681,0,0,0,0,0,0,0,0,0,0,5.752687,0,0),
(71923,15,-3225.510498,1038.854736,62.526211,0,0,0,0,0,0,0,0,0,0,5.923119,0,0),
(71923,16,-3219.525879,1033.843140,64.957176,3000,0,0,0,0,0,0,0,0,0,5.502150,0,0),
(71923,17,-3227.573975,1040.044189,61.905518,0,0,0,0,0,0,0,0,0,0,2.951961,0,0),
(71923,18,-3238.367676,1042.438232,59.035088,0,0,0,0,0,0,0,0,0,0,2.965313,0,0),
(71923,19,-3247.675781,1044.646729,55.032238,0,0,0,0,0,0,0,0,0,0,2.749329,0,0),
(71923,20,-3260.325928,1048.957886,57.412331,0,0,0,0,0,0,0,0,0,0,3.094119,0,0),
(71923,21,-3270.426270,1050.267822,55.007122,0,0,0,0,0,0,0,0,0,0,2.960601,0,0),
(71923,22,-3291.377686,1048.114502,55.874512,0,0,0,0,0,0,0,0,0,0,3.015579,0,0);
-- Ashtongue Warrior <Servant of Illidan>
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (72473,21454,530,1,1,0,244,-3187.61,1246.24,38.4334,1.7135,180,0,0,6761,0,0,2);
DELETE FROM creature_movement WHERE id = 72473;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(72473,1,-3177.704834,1271.968872,33.663372,3000,0,0,0,0,0,0,0,0,0,1.446462,0,0),
(72473,2,-3185.027832,1246.007813,37.844566,0,0,0,0,0,0,0,0,0,0,4.713709,0,0),
(72473,3,-3181.247314,1234.450317,36.342545,0,0,0,0,0,0,0,0,0,0,5.424493,0,0),
(72473,4,-3174.482178,1225.072510,37.304325,0,0,0,0,0,0,0,0,0,0,5.247052,0,0),
(72473,5,-3146.382080,1184.551636,32.369904,0,0,0,0,0,0,0,0,0,0,5.594981,0,0),
(72473,6,-3138.320801,1170.026367,31.112291,0,0,0,0,0,0,0,0,0,0,4.885770,0,0),
(72473,7,-3137.818115,1160.484131,32.264473,0,0,0,0,0,0,0,0,0,0,4.505642,0,0),
(72473,8,-3141.106201,1151.936768,36.031048,0,0,0,0,0,0,0,0,0,0,4.304584,0,0),
(72473,9,-3136.412354,1167.664307,30.476662,0,0,0,0,0,0,0,0,0,0,1.616165,0,0),
(72473,10,-3139.331787,1179.911377,30.489946,0,0,0,0,0,0,0,0,0,0,2.312028,0,0),
(72473,11,-3154.004639,1196.746582,33.757008,0,0,0,0,0,0,0,0,0,0,2.180081,0,0),
(72473,12,-3177.854248,1227.889038,37.142941,0,0,0,0,0,0,0,0,0,0,1.978233,0,0),
(72473,13,-3181.580811,1231.209839,36.389221,0,0,0,0,0,0,0,0,0,0,1.668001,0,0),
(72473,14,-3185.832031,1244.936890,37.953850,0,0,0,0,0,0,0,0,0,0,1.844716,0,0);
-- Ashtongue Shaman <Servant of Illidan>
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (74051,21453,530,1,1,0,2098,-3401.23,1142.14,49.2734,4.50309,180,0,0,5589,3150,0,2);
DELETE FROM creature_movement WHERE id = 74051;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(74051,1,-3406.496094,1124.925293,47.539658,0,0,0,0,0,0,0,0,0,0,4.695511,0,0),
(74051,2,-3403.798096,1106.295166,46.681274,0,0,0,0,0,0,0,0,0,0,4.909924,0,0),
(74051,3,-3403.354980,1078.393066,44.293739,0,0,0,0,0,0,0,0,0,0,4.964903,0,0),
(74051,4,-3392.705811,1066.861328,44.976879,0,0,0,0,0,0,0,0,0,0,6.060528,0,0),
(74051,5,-3375.481689,1063.851685,48.548943,0,0,0,0,0,0,0,0,0,0,6.056602,0,0),
(74051,6,-3356.137451,1058.319702,47.394047,0,0,0,0,0,0,0,0,0,0,0.236800,0,0),
(74051,7,-3350.596924,1061.642578,45.577869,0,0,0,0,0,0,0,0,0,0,0.968005,0,0),
(74051,8,-3349.221924,1065.509277,46.215595,0,0,0,0,0,0,0,0,0,0,1.599465,0,0),
(74051,9,-3349.639893,1074.216553,49.127575,0,0,0,0,0,0,0,0,0,0,1.650516,0,0),
(74051,10,-3349.245361,1083.226074,50.025215,0,0,0,0,0,0,0,0,0,0,1.273525,0,0),
(74051,11,-3346.361572,1091.675903,51.034824,3000,2145301,0,0,0,0,0,0,0,0,0.140195,0,0),
(74051,12,-3349.167236,1106.882324,53.485989,0,0,0,0,0,0,0,0,0,0,1.518569,0,0),
(74051,13,-3344.680176,1136.480103,56.221024,0,0,0,0,0,0,0,0,0,0,1.168281,0,0),
(74051,14,-3343.715576,1149.306763,54.765125,0,0,0,0,0,0,0,0,0,0,1.505083,0,0),
(74051,15,-3344.919922,1160.055298,57.921150,0,0,0,0,0,0,0,0,0,0,1.693578,0,0),
(74051,16,-3350.272705,1181.701538,60.705688,3000,2145302,0,0,0,0,0,0,0,0,1.443822,0,0),
(74051,17,-3368.478760,1190.426025,60.603832,0,0,0,0,0,0,0,0,0,0,3.289508,0,0),
(74051,18,-3386.057617,1185.623291,57.632263,0,0,0,0,0,0,0,0,0,0,3.950813,0,0),
(74051,19,-3389.946777,1179.474609,54.834347,0,0,0,0,0,0,0,0,0,0,4.446397,0,0),
(74051,20,-3391.591309,1172.515137,51.848206,0,0,0,0,0,0,0,0,0,0,4.496906,0,0),
(74051,21,-3394.427979,1163.258057,50.401817,0,0,0,0,0,0,0,0,0,0,4.418365,0,0),
(74051,22,-3397.977051,1151.131958,51.423820,0,0,0,0,0,0,0,0,0,0,4.434073,0,0),
(74051,23,-3400.357910,1142.799438,49.491806,0,0,0,0,0,0,0,0,0,0,4.434073,0,0);
-- Elekk Demolisher
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (74167,21802,530,1,1,0,0,-3219.22,955.973,54.6927,0.243708,180,0,0,5409,0,0,2);
DELETE FROM creature_movement WHERE id = 74167;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(74167,1,-3219.22,955.973,54.6927,1000,0,0,0,0,0,0,0,0,0,0.243708,0,0),
(74167,2,-3219.22,955.973,54.6927,4000,2180801,0,0,0,0,0,0,0,0,0.243708,0,0);

-- Netherwing Lodge -- SHADOWMOON VALLEY
-- Dragonmaw Transporter
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (74623,23188,530,1,1,0,1797,-4231.41,322.153,166.022,3.72358,180,0,0,7266,3155,0,2);
DELETE FROM creature_movement WHERE id = 74623;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(74623,1,-4303.508301,276.404297,179.781311,0,0,0,0,0,0,0,0,0,0,3.578286,0,0),
(74623,2,-4410.792969,259.223785,186.587173,0,0,0,0,0,0,0,0,0,0,3.381937,0,0),
(74623,3,-4513.043457,214.825012,124.948677,0,0,0,0,0,0,0,0,0,0,3.554724,0,0),
(74623,4,-4635.972168,170.264755,121.274872,0,0,0,0,0,0,0,0,0,0,3.539017,0,0),
(74623,5,-4771.334961,111.272659,109.930992,0,0,0,0,0,0,0,0,0,0,3.597922,0,0),
(74623,6,-4882.295410,56.609192,78.510674,0,0,0,0,0,0,0,0,0,0,3.601845,0,0),
(74623,7,-4937.028809,30.778053,62.206383,0,0,0,0,0,0,0,0,0,0,3.641114,0,0); -- desp. self

-- Ruins of Karabor - SHADOWMOON VALLEY
-- Sunfury Blood Lord
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (74954,21743,530,1,1,0,2095,-3755.41,505.562,91.0246,0.108516,180,0,0,6542,0,0,2);
DELETE FROM creature_movement WHERE id = 74954;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(74954,1,-3701.163574,500.352417,91.014000,0,0,0,0,0,0,0,0,0,0,5.856841,0,0),
(74954,2,-3694.949463,495.480988,90.984200,0,0,0,0,0,0,0,0,0,0,4.688951,0,0),
(74954,3,-3690.999268,452.336456,90.973221,0,0,0,0,0,0,0,0,0,0,4.643399,0,0),
(74954,4,-3689.414551,410.632507,90.973221,3000,0,0,0,0,0,0,0,0,0,4.745499,0,0),
(74954,5,-3690.766113,450.234589,90.973221,0,0,0,0,0,0,0,0,0,0,1.691867,0,0),
(74954,6,-3692.835449,493.712158,90.976845,0,0,0,0,0,0,0,0,0,0,2.086139,0,0),
(74954,7,-3698.416748,499.175049,91.002495,0,0,0,0,0,0,0,0,0,0,2.907666,0,0),
(74954,8,-3755.936279,506.120544,91.026031,3000,0,0,0,0,0,0,0,0,0,2.978353,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (74958,21743,530,1,1,0,2095,-3689.41,253.591,90.9892,4.64832,180,0,0,6542,0,0,2);
DELETE FROM creature_movement WHERE id = 74958;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(74958,1,-3688.423584,304.568146,90.984894,0,0,0,0,0,0,0,0,0,0,1.561687,0,0),
(74958,2,-3687.416748,348.614166,90.980652,0,0,0,0,0,0,0,0,0,0,1.553836,0,0),
(74958,3,-3686.238037,379.738159,90.976433,6000,0,0,0,0,0,0,0,0,0,1.514566,0,0),
(74958,4,-3687.685547,328.310577,90.979210,0,0,0,0,0,0,0,0,0,0,4.691502,0,0),
(74958,5,-3688.424072,289.096588,90.983528,0,0,0,0,0,0,0,0,0,0,4.695429,0,0),
(74958,6,-3688.630371,252.832306,90.987610,6000,0,0,0,0,0,0,0,0,0,4.609037,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (75013,21743,530,1,1,0,2095,-3781.2,562.239,68.2286,6.25409,180,0,0,6542,0,0,2);
DELETE FROM creature_movement WHERE id = 75013;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(75013,1,-3746.028564,562.553406,56.264458,0,2174301,0,0,0,0,0,0,0,0,0.002311,0,0),
(75013,2,-3727.198730,563.095032,49.071171,0,2174301,0,0,0,0,0,0,0,0,6.277642,0,0),
(75013,3,-3725.336426,563.070068,48.335953,6000,0,0,0,0,0,0,0,0,0,6.269789,0,0),
(75013,4,-3768.528320,562.303284,64.053162,0,2174301,0,0,0,0,0,0,0,0,3.226382,0,0),
(75013,5,-3783.473145,562.369690,68.896927,6000,0,0,0,0,0,0,0,0,0,6.265868,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (75018,21743,530,1,1,0,2095,-3804.27,502.475,87.7726,1.5849,180,0,0,6542,0,0,2);
DELETE FROM creature_movement WHERE id = 75018;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(75018,1,-3804.341797,532.797485,77.963921,0,2174301,0,0,0,0,0,0,0,0,1.573115,0,0),
(75018,2,-3803.898438,549.057312,73.327835,0,2174301,0,0,0,0,0,0,0,0,1.549553,0,0),
(75018,3,-3803.377686,560.651428,71.569107,6000,0,0,0,0,0,0,0,0,0,0.017242,0,0),
(75018,4,-3803.315918,529.546814,79.003075,0,2174301,0,0,0,0,0,0,0,0,4.667595,0,0),
(75018,5,-3803.725830,516.212341,83.493172,0,2174301,0,0,0,0,0,0,0,0,4.679373,0,0),
(75018,6,-3804.105469,502.638458,87.726791,6000,0,0,0,0,0,0,0,0,0,1.508719,0,0);
-- Demon Hunter Initiate
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (75021,21180,530,1,1,0,2090,-3720.67,402.674,104.078,4.66169,180,0,0,5589,3155,0,2);
DELETE FROM creature_movement WHERE id = 75021;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(75021,1,-3721.125000,355.458099,104.189758,0,0,0,0,0,0,0,0,0,0,1.667754,0,0),
(75021,2,-3718.945313,416.847931,104.058846,0,0,0,0,0,0,0,0,0,0,4.519538,0,0),
(75021,3,-3720.310791,402.403137,104.076996,0,0,0,0,0,0,0,0,0,0,4.614566,0,0);
-- Spellbound Terrorguard
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (75023,21908,530,1,1,0,1536,-3743.14,388.859,103.993,3.14855,60,0,0,5233,2991,0,2);
DELETE FROM creature_movement WHERE id = 75023;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(75023,1,-3743.14,388.859,103.993,10000,0,0,0,0,0,0,0,0,0,3.14855,0,0),
(75023,2,-3743.14,388.859,103.993,10000,2190801,0,0,0,0,0,0,0,0,3.14855,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (75024,21908,530,1,1,0,1536,-3741.14,356.002,104.11,3.18389,60,0,0,5060,2933,0,2);
DELETE FROM creature_movement WHERE id = 75024;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(75024,1,-3741.14,356.002,104.11,45000,0,0,0,0,0,0,0,0,0,3.18389,0,0),
(75024,2,-3741.14,356.002,104.11,10000,2190801,0,0,0,0,0,0,0,0,3.18389,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (75025,21908,530,1,1,0,1536,-3743.54,416.255,104.111,3.08067,60,0,0,5060,2933,0,2);
DELETE FROM creature_movement WHERE id = 75025;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(75025,1,-3743.54,416.255,104.111,20000,0,0,0,0,0,0,0,0,0,3.08067,0,0),
(75025,2,-3743.54,416.255,104.111,10000,2190801,0,0,0,0,0,0,0,0,3.08067,0,0);

-- Entrance into Black Temple (area outside) -- SHADOWMOON VALLEY
-- Illidari Ravager <Servant of Illidan>
-- #1
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (75031,22857,530,1,1,0,20,-3618.52,400.563,32.6102,0.349821,25,0,0,20958,0,0,2);
DELETE FROM creature_movement WHERE id = 75031;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(75031,1,-3603.101807,405.869659,32.182827,0,0,0,0,0,0,0,0,0,0,0.762029,0,0),
(75031,2,-3587.572754,426.027161,29.938400,1000,2285701,0,0,0,0,0,0,0,0,1.029064,0,0);
-- #2
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (75032,22857,530,1,1,0,20,-3619.03,394.032,33.7729,0.153472,25,0,0,20958,0,0,2);
DELETE FROM creature_movement WHERE id = 75032;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(75032,1,-3598.191162,400.954620,32.504242,0,0,0,0,0,0,0,0,0,0,0.734535,0,0),
(75032,2,-3579.638428,420.870331,29.836908,1000,2285701,0,0,0,0,0,0,0,0,1.115473,0,0);
-- #3
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (75036,22857,530,1,1,0,20,-3499.19,398.61,32.1255,2.94776,25,0,0,20958,0,0,2);
DELETE FROM creature_movement WHERE id = 75036;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(75036,1,-3521.429688,398.615265,31.500566,0,0,0,0,0,0,0,0,0,0,2.048473,0,0),
(75036,2,-3521.429688,398.615265,31.500566,1000,2285701,0,0,0,0,0,0,0,0,2.048473,0,0);
-- #4
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (75037,22857,530,1,1,0,20,-3499.11,392.555,33.2845,2.97917,25,0,0,20958,0,0,2);
DELETE FROM creature_movement WHERE id = 75037;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(75037,1,-3528.044678,392.061646,33.122597,0,0,0,0,0,0,0,0,0,0,2.104283,0,0),
(75037,2,-3528.044678,392.061646,33.122597,1000,2285701,0,0,0,0,0,0,0,0,2.104283,0,0);
-- these 4 are part of event ..so resptime must be bigger ~60s
-- #5
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (75039,22857,530,1,1,0,20,-3555.98,372.556,33.0066,1.24308,120,0,0,20958,0,0,2);
DELETE FROM creature_movement WHERE id = 75039;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(75039,1,-3539.056885,410.479614,31.120348,20000,0,0,0,0,0,0,0,0,0,1.188098,0,0),
(75039,2,-3536.935059,436.584290,28.396151,0,0,0,0,0,0,0,0,0,0,1.724580,0,0),
(75039,3,-3557.258301,478.573120,23.074396,1000,2285701,0,0,0,0,0,0,0,0,1.516445,0,0);
-- #6
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (75040,22857,530,1,1,0,20,-3560.18,375.579,32.5697,1.1449,120,0,0,20958,0,0,2);
DELETE FROM creature_movement WHERE id = 75040;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(75040,1,-3544.417725,413.529572,30.139088,20000,0,0,0,0,0,0,0,0,0,1.156098,0,0),
(75040,2,-3544.841064,437.631042,27.636351,0,0,0,0,0,0,0,0,0,0,1.704580,0,0),
(75040,3,-3566.467529,478.430908,22.631899,1000,2285701,0,0,0,0,0,0,0,0,1.556445,0,0);
-- #7
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (75041,22857,530,1,1,0,20,-3566.28,373.577,32.7165,1.91306,120,0,0,20958,0,0,2);
DELETE FROM creature_movement WHERE id = 75041;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(75041,1,-3572.024414,409.806213,29.729950,20000,0,0,0,0,0,0,0,0,0,1.676930,0,0),
(75041,2,-3571.210449,472.279205,23.514156,1000,2285701,0,0,0,0,0,0,0,0,1.325847,0,0);
-- #8
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (75043,22857,530,1,1,0,20,-3561.52,373.531,32.7196,1.90313,120,0,0,20958,0,0,2);
DELETE FROM creature_movement WHERE id = 75043;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(75043,1,-3566.097412,409.175171,29.456755,20000,0,0,0,0,0,0,0,0,0,1.573258,0,0),
(75043,2,-3561.111572,470.597198,23.414927,1000,2285701,0,0,0,0,0,0,0,0,1.503352,0,0);
-- Shadowhoof Assassin <Servant of Illidan>
-- #1
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (75046,22858,530,1,1,0,558,-3497.72,392.406,33.3901,3.44716,25,0,0,6761,0,0,2);
DELETE FROM creature_movement WHERE id = 75046;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(75046,1,-3497.72,392.406,33.3901,15000,0,0,0,0,0,0,0,0,0,3.44716,0,0),
(75046,2,-3539.126221,404.159515,31.722940,0,0,0,0,0,0,0,0,0,0,1.764072,0,0),
(75046,3,-3539.932861,416.170685,30.654182,0,0,0,0,0,0,0,0,0,0,1.105012,0,0),
(75046,4,-3534.231689,429.032745,29.525265,1000,2285701,0,0,0,0,0,0,0,0,1.957538,0,0);
-- #2
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (75048,22858,530,1,1,0,558,-3498.71,399.058,32.0341,3.133,25,0,0,6761,0,0,2);
DELETE FROM creature_movement WHERE id = 75048;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(75048,1,-3498.71,399.058,32.0341,15000,0,0,0,0,0,0,0,0,0,3.133,0,0),
(75048,2,-3535.841797,404.825287,31.794277,0,0,0,0,0,0,0,0,0,0,2.041723,0,0),
(75048,3,-3538.666748,413.919342,30.906582,0,0,0,0,0,0,0,0,0,0,1.695747,0,0),
(75048,4,-3530.693115,431.653412,28.902966,1000,2285701,0,0,0,0,0,0,0,0,2.092373,0,0);
-- #3
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (75049,22858,530,1,1,0,558,-3561.08,372.938,32.7815,1.73494,25,0,0,6761,0,0,2);
DELETE FROM creature_movement WHERE id = 75049;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(75049,1,-3563.97,372.969,32.7509,15000,0,0,0,0,0,0,0,0,0,1.64462,0,0),
(75049,2,-3562.529785,398.247803,30.308769,1000,2285701,0,0,0,0,0,0,0,0,1.555077,0,0);
-- #4
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (75055,22858,530,1,1,0,558,-3556.42,373.266,32.9199,1.66033,25,0,0,6761,0,0,2);
DELETE FROM creature_movement WHERE id = 75055;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(75055,1,-3556.42,373.266,32.9199,15000,0,0,0,0,0,0,0,0,0,1.66033,0,0),
(75055,2,-3557.407471,398.044769,30.406649,1000,2285701,0,0,0,0,0,0,0,0,1.464397,0,0);
-- Illidari Succubus <Servant of Illidan>
-- #1
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (75056,22860,530,1,1,0,0,-3498.94,395.572,32.8215,3.09606,25,0,0,4890,7196,0,2);
DELETE FROM creature_movement WHERE id = 75056;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(75056,1,-3498.94,395.572,32.8215,15000,0,0,0,0,0,0,0,0,0,3.09606,0,0),
(75056,2,-3538.631592,406.667480,31.527609,0,0,0,0,0,0,0,0,0,0,1.715705,0,0),
(75056,3,-3537.178711,426.733551,29.620302,1000,2285701,0,0,0,0,0,0,0,0,2.106048,0,0);
-- #2
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (75067,22860,530,1,1,0,0,-3563.97,372.969,32.7509,1.64462,25,0,0,4890,7196,0,2);
DELETE FROM creature_movement WHERE id = 75067;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(75067,1,-3563.97,372.969,32.7509,15000,0,0,0,0,0,0,0,0,0,1.64462,0,0),
(75067,2,-3566.628418,398.212067,30.385164,1000,2285701,0,0,0,0,0,0,0,0,1.518951,0,0);

-- Grz3s
 DELETE FROM creature WHERE guid IN (
 12776, 39927, 40454, 41812, 41877, 45146, 45214, 45215, 75071, 75074,
 75078, 75084, 75085, 75087, 75091, 75092, 75094, 75098, 75100, 75101,
 75102, 75103, 77356, 77357, 78738, 78739, 78740, 78741, 79427, 79432,
 79434, 79444, 79445, 81027, 82865, 82967, 83241, 84007, 84008, 84009,
 84010, 84012, 84622, 84626, 84668, 84756, 85483, 85612, 85613, 85616,
 85620, 85621, 85622, 85623, 85625, 85632, 85633, 85634, 85637, 85640,
 85644, 85645, 85648, 85651, 85756, 85757, 85758, 85759, 85760, 85764,
 85766, 85767, 85768, 85772, 85773, 85775, 85776, 85777, 85778, 85779,
 85786, 85787, 85788, 85793, 85794, 85795, 85796, 85797, 85798, 85799,
 85800, 85801, 85802, 85804, 85805, 85806, 85808, 85813, 85821, 85822,
 85823, 85824, 85825, 85827, 85828, 85829, 85830, 85832, 85834, 85836,
 85837, 85838, 85839, 85840, 85841, 85843, 85844, 85845, 85847, 85848,
 85849, 85850, 85851, 85853, 85854, 85855, 85856, 85857, 85858, 85859,
 85861, 85862, 85863, 85864, 85865, 85875, 85884, 86083, 86084, 86090,
 86091, 86092, 86101, 86102, 86103, 86359, 86361, 86362, 86514, 86565,
 86566, 86567, 86568, 86569, 86570, 86571, 86572, 86573, 86574, 86575,
 86582, 86583, 86584, 86585, 86586, 86587, 86588, 86589, 86590, 86591,
 86592, 86651, 86652, 86653, 86654, 86831, 86868, 86881, 86900, 87908,
 87909, 87910, 89212, 93788, 96593, 96657, 96658, 96990, 97204, 100173,
 100174, 100175, 100176, 100177, 100178, 100179, 100180, 100181, 100182,
 100183, 100184, 100185, 100187, 100188, 100189, 100191, 100195, 100196,
 100198, 100199, 100200, 100201, 100202, 100203, 100205, 100217, 100218,
 100220, 100221, 100236, 100237, 100238, 100410, 102110, 102293, 102366,
 104815, 104817, 104819, 104820, 104824, 104827, 104829, 104830, 104832,
 104837, 104854, 104855, 104856, 104857, 104858, 104859, 104860, 104861,
 104865, 104866, 104880, 104882, 104884, 104924, 104926, 104930, 104931,
 104934, 104935, 104939, 104940, 104942, 104943, 104951, 104954, 104973,
 104974, 104975, 104976, 104978, 104979, 104980, 104981, 104982, 104983,
 104984, 104985, 104986, 104987, 104988, 104989, 106139, 106140, 106141,
 106142, 106168, 106169, 106170, 106171, 106172, 106173, 106174, 106175,
 106176, 106209, 106275, 106796, 107584, 107588, 107589, 107620, 107711,
 107712, 107713, 107714, 108872, 108874, 108877, 108878, 108879, 108880,
 108972, 108973, 108974, 108975, 108999, 109000, 109001, 109019, 109045,
 110323, 117310, 117371, 117372, 117421, 117422, 117423, 117614, 109145,
 117633, 117634, 117646, 117648, 117649, 127272, 127273, 127274, 127275,
 127276, 127277, 127278, 127279, 127280, 127281, 127282, 127283, 127284,
 127285, 127286, 127287, 127288, 127289, 127290, 127291, 127292, 127293,
 127294, 127295, 127296, 127297, 127298, 127299, 127300, 127301, 127302,
 127303, 127304, 127305, 127306, 127307, 127308, 127309, 127310, 127311,
 127312, 127313, 127314, 127315, 127316, 127317, 127318, 127319, 127320,
 127321, 127322, 127323, 127324, 127325, 127326, 127327, 127328, 127329,
 127330, 127331, 127332, 127333, 127334, 127335, 127336, 127337, 127340,
 127341, 127342, 127343, 127344, 127345, 127346, 127347, 127348, 127349,
 127350, 127351, 127352, 127353, 127354, 127355, 127356, 127357, 127358,
 127359, 127360, 127361, 127362, 127363, 127364, 127365, 127366, 127367,
 127368, 127369, 127370, 127371, 127372, 127373, 127374, 127375, 128590,
 128591, 128592, 128593, 128594, 128595, 128596, 128597, 128598, 128599,
 128600, 131748, 131751, 131752, 131778, 132115, 132116, 132117, 132118,
 132945, 132946, 132947, 132948, 132949, 132950, 132951, 132952, 132953,
 132954, 132955, 132956, 132957, 132958, 132959, 132960, 132961, 132962,
 132963, 132964, 132965, 132966, 132967, 132968, 132969, 132972, 133034,
 133818, 133860, 133863, 133867, 133868, 133902, 133915, 133916, 133934,
 133935, 133936, 133937, 133938, 133941, 133942, 133943, 133944, 134020,
 134021, 134023, 137582, 139973, 139974, 139975, 139976, 139977, 139978,
 139979, 139980, 139981, 139982, 139983, 139984, 139985, 139986, 139987,
 139988, 139989, 139990, 139991, 139992, 139993, 139994, 139995, 139996,
 139997, 139998, 139999, 140000, 140001, 140002, 140003, 140004, 140005,
 140006, 140007);
-- Bleeding Hollow Grunt #1 #2 #3 #4 #5 #6 -- missing on map  
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (12776,16871,530,1,1,0,246,-927.68,2035.95,60.16,0.62,300,0,0,5158,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (39927,16871,530,1,1,0,246,-821.49,2043.88,37.83,1.42,300,0,0,5158,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (40454,16871,530,1,1,0,246,-808.60,2028.13,38.84,6.15,300,0,0,4979,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (41812,16871,530,1,1,0,246,-865.36,1898.05,65.42,0.06,300,0,0,4979,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (41877,16871,530,1,1,0,246,-907.72,1916.98,67.13,4.03,300,0,0,5158,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (45146,16871,530,1,1,0,246,-886.86,1923.62,67.36,0.49,300,0,0,5158,0,0,0);
-- Warmaul Hill (Cave) - wasnt spawned at all -- all corect spawns
-- Warmaul Warlock #1 #2 #3 #4 #5 #6 #7 #8 #9 -- missing on map 
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (45214,18037,530,1,1,0,1503,-533.941,8870.37,208.906,3.42234,300,5,0,5060,2933,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (45215,18037,530,1,1,0,1503,-454.681,8803.77,198.269,2.41232,300,5,0,5060,2933,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (75071,18037,530,1,1,0,1503,-447.605,8763.69,185.048,1.68975,300,5,0,4892,2846,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (75074,18037,530,1,1,0,1503,-374.149,8771.58,210.73,5.07874,300,5,0,5060,2933,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (75078,18037,530,1,1,0,1503,-437.458,8821.92,221.269,0.511648,300,5,0,5060,2933,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (75084,18037,530,1,1,0,1503,-445.078,8864.54,224.601,4.72138,300,5,0,4892,2846,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (75085,18037,530,1,1,0,1503,-502.455,8893.33,227.559,6.17437,300,5,0,5060,2933,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (75087,18037,530,1,1,0,1503,-538.159,8885.65,230.808,0.664801,300,5,0,4892,2846,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (75091,18037,530,1,1,0,1503,-523.295,8844.17,234.505,1.51695,300,5,0,4892,2846,0,1);
-- Warmaul Brute #2 #3 #4 #5 #6 #7 -- missing on map
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (75092,18065,530,1,1,0,0,-478.179,8842.4,199.721,2.17277,300,5,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (75094,18065,530,1,1,0,0,-458.151,8732.37,182.157,4.32633,300,5,0,6116,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (75098,18065,530,1,1,0,0,-406.833,8714.88,193.001,5.81309,300,5,0,6116,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (75100,18065,530,1,1,0,0,-401.754,8807.28,218.135,5.49107,300,5,0,6116,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (75101,18065,530,1,1,0,0,-487.607,8852.84,228.021,2.50656,300,5,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (75102,18065,530,1,1,0,0,-473.313,8844.19,239.775,2.88355,300,0,0,6116,0,0,0);
-- Raven's Wood - part wasn't spawned -- all corect spawns
-- Dire Raven - Raven's Wood
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (75103,21042,530,1,1,0,0,3658.38,7026.98,149.063,6.11225,300,5,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (77356,21042,530,1,1,0,0,3696.72,6931.66,142.894,3.70501,300,5,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (77357,21042,530,1,1,0,0,3739.51,6904.67,143.852,0.0214868,300,5,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (78738,21042,530,1,1,0,0,3769.39,6918.96,143.149,4.4472,300,5,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (78739,21042,530,1,1,0,0,3718.82,6846.32,149.102,5.28757,300,5,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (78740,21042,530,1,1,0,0,3606.38,6881.07,144.005,1.87501,300,5,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (78741,21042,530,1,1,0,0,3566.33,6953.87,146.652,0.963947,300,5,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (79427,21042,530,1,1,0,0,3531.29,7002,151.708,6.26538,300,5,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (79432,21042,530,1,1,0,0,3620.97,6955.68,144.442,0.720471,300,5,0,6326,0,0,1);
-- Raven's Wood Leafbeard - Raven's Wood
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (79434,21326,530,1,1,0,0,3579.51,7013.7,148.632,0.0489557,300,5,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (79444,21326,530,1,1,0,0,3632.1,7027.39,145.833,4.28225,300,5,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (79445,21326,530,1,1,0,0,3769.65,6985.01,142.129,3.45368,300,5,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (81027,21326,530,1,1,0,0,3692.81,7016.41,149.799,1.2742,300,5,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (82865,21326,530,1,1,0,0,3772.62,6817.78,141.336,4.13304,300,5,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (82967,21326,530,1,1,0,0,3637.14,6939.39,143.092,1.88051,300,5,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (83241,21326,530,1,1,0,0,3567.35,6903.95,142.515,2.42872,300,5,0,6542,0,0,1);
-- Coilskar point - part wasn't spawned -- all corect spawns - SHADOWMOON VALLEY
-- Coilskar Defender 
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (84007,19762,530,1,1,0,1501,-3147.14,1601.01,53.64,3.85,300,0,0,6542,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (84008,19762,530,1,1,0,1501,-3158.17,1617.75,55.43,4.01,300,0,0,6542,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (84009,19762,530,1,1,0,1501,-3027.45,1579.61,64.27,1.65,300,0,0,6542,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (84010,19762,530,1,1,0,1501,-2966.84,1629.48,56.5661,5.37121,300,0,0,6542,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (84012,19762,530,1,1,0,1501,-2928.87,1576.1,36.1739,0.4886922,300,0,0,6542,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (84622,19762,530,1,1,0,1501,-2885.72,1589.38,19.9814,5.585053,300,0,0,6542,0,0,0);
-- Coilskar Siren #1
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (84626,19768,530,1,1,0,415,-3101.57,1612.96,55.94,0.95,300,5,0,5409,3080,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (84668,19768,530,1,1,0,415,-3052.83,1588.57,58.81,0.65,300,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (84756,19768,530,1,1,0,415,-2996.05,1587.6,61.1695,2.55,300,5,0,5233,2991,0,1);
-- Coilskar Cobra #1
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85483,19784,530,1,1,0,0,-3079.14,1609.92,55.97,4.15,300,5,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85612,19784,530,1,1,0,0,-3083.91,1598.23,55.68,2.86,300,5,0,6542,0,0,1);
-- Enraged Water Spirit #2 #3
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85613,21059,530,1,1,0,0,-2782.08,1661.1,10.7861,1.3385,300,20,0,5950,3080,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85616,21059,530,1,1,0,0,-2787.67,1636.83,11.101,1.60553,300,20,0,5950,3080,0,1);
-- Infernal attackers - Event - SHADOWMOON VALLEY
-- Shadowmoon Scout (missing spawns)
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85620,21749,530,1,1,0,500,-3178.89,2318.97,62.8584,3.51816,300,0,0,9489,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85621,21749,530,1,1,0,500,-3178.32,2314.69,62.8601,2.96289,300,0,0,9489,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85622,21749,530,1,1,0,500,-3211.55,2353.22,62.4676,3.50089,300,0,0,9489,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85623,21749,530,1,1,0,500,-3210.85,2349.49,62.4713,3.00216,300,0,0,9489,0,0,0);
-- Wildhammer Defender (missing spawns) - theres still part of that area not spawned (when ill get sniffs ..then will finish it)
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85625,21736,530,1,1,0,47,-3820.67,2048.15,94.5956,5.25239,300,0,0,9489,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85632,21736,530,1,1,0,47,-3814.08,2017.71,92.798,2.02048,300,0,0,9489,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85633,21736,530,1,1,0,47,-3821.78,2020.59,93.7031,0.398628,300,0,0,9489,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85634,21736,530,1,1,0,47,-3856.47,1982.79,95.6115,6.0849,300,0,0,9489,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85637,21736,530,1,1,0,47,-3852.33,1988.7,95.3579,5.05211,300,0,0,9489,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85640,21736,530,1,1,0,47,-3882.44,1951.4,98.6319,4.47484,300,0,0,9489,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85644,21736,530,1,1,0,47,-3922.99,1949.45,93.1716,0.0019,300,0,0,9489,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85645,21736,530,1,1,0,47,-3919.64,1943.73,93.0026,0.885561,300,0,0,9489,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85648,21736,530,1,1,0,47,-3923.06,1914.09,92.2666,0.524279,300,0,0,9489,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85651,21736,530,1,1,0,47,-3917.5,1910.61,91.6558,1.36073,300,0,0,9489,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85756,21736,530,1,1,0,47,-3946.43,1913.33,94.0522,2.38567,300,0,0,9489,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85757,21736,530,1,1,0,47,-3944.94,1920.79,94.2934,3.63446,300,0,0,9489,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85758,21736,530,1,1,0,47,-3988.49,1986.08,96.0565,5.19739,300,0,0,9489,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85759,21736,530,1,1,0,47,-3981.22,1987.07,96.0521,4.10176,300,0,0,9489,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85760,21736,530,1,1,0,47,-4014.39,1978.42,90.5917,1.29789,300,0,0,9489,0,0,0);
-- The Deathforge - SHADOWMOON VALLEY
-- Deathforge Summoner #1 #2 #3 -- missing on map
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85764,20872,530,1,1,0,572,-3341.02,2169.33,2.52806,4.13577,300,0,0,4868,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85766,20872,530,1,1,0,572,-3333.81,2152.78,-0.593187,3.3975,300,0,0,4868,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85767,20872,530,1,1,0,572,-3334.12,2133.59,-1.94133,2.76526,300,0,0,4868,3080,0,0);
-- missing imp added 
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85768,20887,530,1,1,0,0,-3415.74,2132.43,34.402,4.98488,25,5,0,1518,2933,0,1);
-- Deathforge Guardians - missing on map
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85772,20878,530,1,1,0,1565,-3649.61,2083.06,10.5284,4.11298,300,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85773,20878,530,1,1,0,1565,-3666.73,2065.66,10.4422,6.09926,300,0,0,6542,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85775,20878,530,1,1,0,1565,-3619.76,2045.99,10.5055,2.821,300,0,0,6542,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85776,20878,530,1,1,0,1565,-3638.73,2037.86,10.4021,1.49447,300,0,0,6542,0,0,0);
-- Rocknail Ripper in Shadowmoon Valley -- all missing on map
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85777,21478,530,1,1,0,0,-3982.49,763.197,1.65559,0.854701,120,5,0,6761,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85778,21478,530,1,1,0,0,-4002.94,770.715,1.7264,5.8027,120,5,0,6761,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85779,21478,530,1,1,0,0,-3963.01,841.717,6.06465,3.42137,120,5,0,6761,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85786,21478,530,1,1,0,0,-3964.58,861.366,6.46268,0.859368,120,5,0,6761,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85787,21478,530,1,1,0,0,-3947.79,858.206,9.69418,4.7039,120,5,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85788,21478,530,1,1,0,0,-4071.08,905.403,5.82404,1.8529,120,5,0,6761,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85793,21478,530,1,1,0,0,-3945.06,845.7120,9.81448,2.85124,120,5,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85794,21478,530,1,1,0,0,-3927.74,896.128,15.1756,0.428068,120,5,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85795,21478,530,1,1,0,0,-3931,885.347,13.1129,5.39964,120,5,0,6761,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85796,21478,530,1,1,0,0,-3939.91,893.517,14.7294,1.04461,120,5,0,6542,0,0,1);
-- Nakansi - missing on map
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85797,21789,530,1,1,0,0,-2725.79,2712.99,122.351,5.12899,300,0,0,12000,0,0,0);
-- Kor'kron Defender  - missing on map 
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85798,19362,530,1,1,0,2196,-2728.6,2713.86,122.349,5.07811,300,0,0,34930,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85799,19362,530,1,1,0,2196,-2723.38,2714.41,122.352,4.9603,300,0,0,34930,0,0,0);
-- Illidari Point - SHADOWMOON VALLEY
-- Illadari Point - Succubi Spell Orgin 001
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85800,20286,530,1,1,0,0,-3795.76,2595.89,91.2109,4.62994,25,0,0,42,0,0,0);
-- Illidari Satyr - missing on map
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85801,21656,530,1,1,0,558,-3831.66,2708.96,101.473,5.57343,300,5,0,6761,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85802,21656,530,1,1,0,558,-3771.53,2581.38,90.3219,6.09719,300,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85804,21656,530,1,1,0,558,-3820.77,2492.39,81.3946,1.38446,300,0,0,6761,0,0,0);
-- Illidari Shocktrooper
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85805,19802,530,1,1,0,20,-3797.63,2359.87,101.038,4.62501,300,5,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85806,19802,530,1,1,0,20,-3773.97,2463.87,80.0338,4.95835,300,0,0,6542,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85808,19802,530,1,1,0,20,-3804.85,2460.58,85.3201,5.08793,300,0,0,6542,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85813,19802,530,1,1,0,20,-3711.62,2485.1,82.338,5.39031,300,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85821,19802,530,1,1,0,20,-3739.52,2350.09,78.1292,4.89945,300,5,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85822,19802,530,1,1,0,20,-3706.16,2382.42,78.0713,4.98584,300,5,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85823,19802,530,1,1,0,20,-3780.58,2412.86,85.5047,3.37028,300,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85824,19802,530,1,1,0,20,-3660.12,2461.39,76.3714,1.48924,300,10,0,6761,0,0,1);
-- Invasion point: Cataclysm -- Shadowmoon Valley
-- Wildhammer Guards  
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85825,19353,530,1,1,0,256,-2762.69,1979.74,167.443,1.867502,300,0,0,34930,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85827,19353,530,1,1,0,256,-2765.28,1979.2,167.442,1.972222,300,0,0,34930,0,0,0);
-- Gan'arg Technician - 100% was missing 
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85828,21960,530,1,1,0,29,-2769.85,2385.74,93.281,1.26223,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85829,21960,530,1,1,0,29,-2783.76,2317.76,92.1618,4.84365,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85830,21960,530,1,1,0,29,-2763.76,2353.64,93.2809,4.84365,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85832,21960,530,1,1,0,29,-2780.82,2301.99,92.385,0.910377,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85834,21960,530,1,1,0,29,-2709.83,2648.45,76.9166,0.578931,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85836,21960,530,1,1,0,29,-2645.68,2648.08,74.925,2.21256,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85837,21960,530,1,1,0,29,-2630.7,2654.88,74.1812,4.03077,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85838,21960,530,1,1,0,29,-2630.64,2641.31,74.9249,4.22712,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85839,21960,530,1,1,0,29,-2614.14,2624.52,74.3684,2.27148,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85840,21960,530,1,1,0,29,-2679.07,2641.25,74.9259,4.33315,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85841,21960,530,1,1,0,29,-2654.3,2626.97,74.9234,0.610359,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85843,21960,530,1,1,0,29,-2645.29,2616.44,74.9236,2.40106,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85844,21960,530,1,1,0,29,-2623.76,2601.19,74.925,5.65261,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85845,21960,530,1,1,0,29,-2622.52,2585.63,74.6538,5.55207,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85847,21960,530,1,1,0,29,-2627.97,2575.94,74.9249,4.00092,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85848,21960,530,1,1,0,29,-2662.85,2595.69,74.9247,1.42481,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85849,21960,530,1,1,0,29,-2665.17,2601.66,74.9247,2.383,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85850,21960,530,1,1,0,29,-2685.55,2614.29,74.2256,1.01247,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85851,21960,530,1,1,0,29,-2648.68,2578.44,74.9247,3.01132,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85853,21960,530,1,1,0,29,-2685.76,2553.51,74.9245,0.918224,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85854,21960,530,1,1,0,29,-2685.41,2563.42,74.9245,1.00069,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85855,21960,530,1,1,0,29,-2668.65,2537.99,74.9236,0.215287,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85856,21960,530,1,1,0,29,-2639.6,2525.57,74.8003,0.761136,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85857,21960,530,1,1,0,29,-2639.33,2537.72,74.9248,1.86069,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85858,21960,530,1,1,0,29,-2639.57,2579.74,74.9256,4.95045,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85859,21960,530,1,1,0,29,-2662.91,2556.41,74.9249,3.81161,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85861,21960,530,1,1,0,29,-2704.49,2489.59,93.2794,0.493299,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85862,21960,530,1,1,0,29,-2700.82,2476.44,93.2794,5.41382,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85863,21960,530,1,1,0,29,-2720.04,2506.07,93.2815,5.22925,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85864,21960,530,1,1,0,29,-2728.88,2506.16,93.2815,3.68987,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85865,21960,530,1,1,0,29,-2747.03,2486.92,92.9716,3.99225,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85875,21960,530,1,1,0,29,-2738.98,2453.15,93.2805,5.12322,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (85884,21960,530,1,1,0,29,-2772.66,2472.53,93.2809,4.84048,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86083,21960,530,1,1,0,29,-2770.42,2462.32,93.2809,5.29993,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86084,21960,530,1,1,0,29,-2762.35,2467.72,93.2809,6.25419,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86090,21960,530,1,1,0,29,-2750.41,2435.97,93.2457,0.0652449,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86091,21960,530,1,1,0,29,-2745.76,2465.8,93.2807,4.22393,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86092,21960,530,1,1,0,29,-2727.37,2437.29,93.2577,4.29041,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86101,21960,530,1,1,0,29,-2761.14,2408.82,93.2806,3.65031,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86102,21960,530,1,1,0,29,-2762.22,2421.11,93.2806,3.78618,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86103,21960,530,1,1,0,29,-2785.24,2401.6,92.3221,5.94994,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86359,21960,530,1,1,0,29,-2774.67,2435.58,92.7685,3.30707,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86361,21960,530,1,1,0,29,-2744.93,2420.84,92.3968,3.75475,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86362,21960,530,1,1,0,29,-2751.24,2374.93,93.2803,4.46946,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86514,21960,530,1,1,0,29,-2766.57,2367.29,93.2803,4.20085,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86565,21960,530,1,1,0,29,-2787.73,2357.25,93.28,0.47021,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86566,21960,530,1,1,0,29,-2789.01,2351.89,93.2023,5.78814,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86567,21960,530,1,1,0,29,-2748.12,2338.67,92.4345,2.10462,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86568,21960,530,1,1,0,29,-2758.44,2295.85,93.2808,5.62791,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86569,21960,530,1,1,0,29,-2772.49,2283.24,93.2811,5.20679,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86570,21960,530,1,1,0,29,-2762.13,2320.37,93.2807,3.69882,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86571,21960,530,1,1,0,29,-2797.64,2257.09,93.2808,3.29334,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86572,21960,530,1,1,0,29,-2780.73,2233.34,92.3539,5.76361,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86573,21960,530,1,1,0,29,-2798.54,2212.54,93.2808,3.96898,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86574,21960,530,1,1,0,29,-2758.31,2220.11,93.2212,6.20736,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86575,21960,530,1,1,0,29,-2751.21,2229.99,92.1626,1.33868,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86582,21960,530,1,1,0,29,-2758.89,2257.26,93.2794,0.945974,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86583,21960,530,1,1,0,29,-2748.79,2306.88,92.5601,3.53779,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86584,21960,530,1,1,0,29,-2773.86,2254.7,93.2806,1.63162,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86585,21960,530,1,1,0,29,-2789.32,2275.13,92.1666,3.76004,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86586,21960,530,1,1,0,29,-2763.43,2134.81,117.226,3.98387,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86587,21960,530,1,1,0,29,-2734.24,2134.32,117.225,0.49277,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86588,21960,530,1,1,0,29,-2725.75,2133.29,117.225,5.90966,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86589,21960,530,1,1,0,29,-2688.11,2112.94,117.038,5.96464,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86590,21960,530,1,1,0,29,-2699.31,2102.61,117.225,3.73803,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86591,21960,530,1,1,0,29,-2726.14,2110.68,117.225,5.7408,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86592,21960,530,1,1,0,29,-2745.78,2096.23,117.225,4.30287,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86651,21960,530,1,1,0,29,-2765.55,2088.55,116.126,3.70597,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86652,21960,530,1,1,0,29,-2739.99,2067.33,117.225,0.902101,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86653,21960,530,1,1,0,29,-2705.6,2078.71,117.225,0.874612,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86654,21960,530,1,1,0,29,-2721.97,2082.51,117.225,2.0814,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86831,21960,530,1,1,0,29,-2681.83,2044.9,117.226,2.76783,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86868,21960,530,1,1,0,29,-2703.58,2040.16,117.225,5.49394,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86881,21960,530,1,1,0,29,-2722.36,2056.91,117.225,2.91234,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (86900,21960,530,1,1,0,29,-2753.16,2054.8,117.111,0.917425,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (87908,21960,530,1,1,0,29,-2688.29,2063.78,117.225,1.31562,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (87909,21960,530,1,1,0,29,-2681.16,2076.76,117.225,2.49765,120,10,0,6542,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (87910,21960,530,1,1,0,29,-2754.75,2103.46,117.225,5.94632,120,10,0,6326,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (89212,21960,530,1,1,0,29,-2700.2,2123.85,117.225,4.68575,120,10,0,6542,0,0,1);

-- The Path of Conquest -- SHADOWMOON VALLEY
-- Son of Coroc
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (93788,19824,530,1,1,0,0,-4153.19,1279.68,57.6734,1.27409,300,0,0,26168,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (96593,19824,530,1,1,0,0,-4279.53,1317.74,57.6672,4.485496,300,0,0,26168,0,0,0);
-- Eclipsion Spellbinder
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (96657,22017,530,1,1,0,974,-4100.07,1351.96,72.8829,2.9147,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (96658,22017,530,1,1,0,974,-4100.01,1375.74,79.7783,2.321288,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (96990,22017,530,1,1,0,974,-4123.97,1400.04,85.6092,0.6981317,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (97204,22017,530,1,1,0,974,-4123.58,1382.96,81.4806,0.6632251,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (100173,22017,530,1,1,0,974,-4151.66,1310.76,56.3273,4.904375,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (100174,22017,530,1,1,0,974,-4120.25,1335.39,67.2617,0,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (100175,22017,530,1,1,0,974,-4214.66,1297.19,57.2148,1.570796,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (100176,22017,530,1,1,0,974,-4227.29,1313.99,56.0313,4.660029,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (100177,22017,530,1,1,0,974,-4204.95,1314.8,57.7019,4.677482,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (100178,22017,530,1,1,0,974,-4236.12,1296.55,56.9548,1.658063,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (100179,22017,530,1,1,0,974,-4257.24,1296.91,53.6587,1.727876,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (100180,22017,530,1,1,0,974,-4323.75,1306.16,78.6509,1.605703,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (100181,22017,530,1,1,0,974,-4297.72,1328.61,65.5859,4.757293,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (100182,22017,530,1,1,0,974,-4372.3,1299.02,86.7443,1.710423,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (100183,22017,530,1,1,0,974,-4393.92,1293.49,85.1592,2.391101,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (100184,22017,530,1,1,0,974,-4392.06,1326.51,89.2531,4.956735,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (100185,22017,530,1,1,0,974,-4411.29,1278.53,79.0306,2.495821,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (100187,22017,530,1,1,0,974,-4403.89,1355.37,138.604,1.919862,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (100188,22017,530,1,1,0,974,-4436.86,1341.97,133.63,2.181662,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (100189,22017,530,1,1,0,974,-4459.64,1335.91,128.005,1.832596,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (100191,22017,530,1,1,0,974,-4495.86,1360.22,132.818,5.72468,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (100195,22017,530,1,1,0,974,-4422.06,1399.37,144.501,4.677482,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (100196,22017,530,1,1,0,974,-4306.21,1368.64,142.438,1.448623,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (100198,22017,530,1,1,0,974,-4316.88,1394.04,145.555,4.642576,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (100199,22017,530,1,1,0,974,-4284.6,1372.36,143.721,1.850049,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (100200,22017,530,1,1,0,974,-4227.07,1384.31,131.743,0.6632251,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (100201,22017,530,1,1,0,974,-4129.43,1285.63,55.3489,1.884956,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (100202,22017,530,1,1,0,974,-4286.69,1401.65,142.341,6.01647,180,0,0,5409,3080,0,0);
-- Eclipse Point - Bloodcrystal Spell Orgin
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (100203,20431,530,1,1,0,0,-4151.47,1285.95,66.784,5.899213,300,0,0,42,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (100205,20431,530,1,1,0,0,-4280.86,1311.67,66.6485,0.7330383,300,0,0,42,0,0,0);
-- Eclipsion Soldier
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (100217,22016,530,1,1,0,2432,-4100.11,1350.39,72.2288,3.054326,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (100218,22016,530,1,1,0,2432,-4099.99,1353.74,73.6377,3.293946,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (100220,22016,530,1,1,0,2432,-4100.06,1377.72,80.4588,2.111848,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (100221,22016,530,1,1,0,2432,-4100.05,1373.94,79.202,2.076942,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (100236,22016,530,1,1,0,2432,-4122,1381.51,81.1877,0.715585,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (100237,22016,530,1,1,0,2432,-4125.01,1385.03,81.9867,0.6806784,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (100238,22016,530,1,1,0,2432,-4173.19,1316.73,57.2053,4.625123,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (100410,22016,530,1,1,0,2432,-4149.73,1310.27,56.5718,4.729842,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (102110,22016,530,1,1,0,2432,-4153.59,1311.41,56.0868,4.625123,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (102293,22016,530,1,1,0,2432,-4127.5,1315.51,57.6382,5.707227,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (102366,22016,530,1,1,0,2432,-4124.98,1317.97,58.9083,5.51524,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104815,22016,530,1,1,0,2432,-4111.45,1286.98,54.3198,2.268928,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104817,22016,530,1,1,0,2432,-4108.46,1288.62,54.1314,1.942696,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104819,22016,530,1,1,0,2432,-4096.19,1317.84,63.5124,3.054326,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104820,22016,530,1,1,0,2432,-4096.36,1322.75,65.5639,2.932153,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104824,22016,530,1,1,0,2432,-4131.38,1285.95,55.4474,1.972222,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104827,22016,530,1,1,0,2432,-4127.14,1286,55.1857,1.815142,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104829,22016,530,1,1,0,2432,-4120.37,1333.76,66.4649,0.01745329,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104830,22016,530,1,1,0,2432,-4120.15,1336.9,68.0352,0,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104832,22016,530,1,1,0,2432,-4173.1,1288.45,57.5707,1.500983,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104837,22016,530,1,1,0,2432,-4177.25,1289.75,58.7245,1.466077,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104854,22016,530,1,1,0,2432,-4176.76,1317.9,56.0477,4.660029,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104855,22016,530,1,1,0,2432,-4246.7,1319.21,55.0447,4.729842,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104856,22016,530,1,1,0,2432,-4216.64,1297.06,56.1343,1.570796,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104857,22016,530,1,1,0,2432,-4212.83,1296.57,57.0505,1.570796,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104858,22016,530,1,1,0,2432,-4225.27,1314.48,56.684,4.642576,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104859,22016,530,1,1,0,2432,-4229.29,1314.14,56.1216,4.764535,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104860,22016,530,1,1,0,2432,-4191.07,1296.06,57.5883,1.605703,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104861,22016,530,1,1,0,2432,-4194.59,1296.48,57.1559,1.553343,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104865,22016,530,1,1,0,2432,-4206.37,1313.21,56.889,4.677482,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104866,22016,530,1,1,0,2432,-4203.81,1313.09,56.2993,4.729842,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104880,22016,530,1,1,0,2432,-4234.12,1296.49,57.1697,1.623156,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104882,22016,530,1,1,0,2432,-4237.95,1296.56,56.5906,1.518436,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104884,22016,530,1,1,0,2432,-4254.9,1297.11,54.0736,1.623156,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104924,22016,530,1,1,0,2432,-4259.22,1297.02,53.3783,1.570796,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104926,22016,530,1,1,0,2432,-4325.97,1306.92,79.2283,1.553343,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104930,22016,530,1,1,0,2432,-4321.85,1306.32,77.7874,1.43117,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104931,22016,530,1,1,0,2432,-4316.29,1330.93,75.3594,4.799655,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104934,22016,530,1,1,0,2432,-4313.26,1332.71,75.1013,4.869469,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104935,22016,530,1,1,0,2432,-4337.56,1331.47,82.1979,4.747295,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104939,22016,530,1,1,0,2432,-4333.6,1331.26,81.4146,4.747295,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104940,22016,530,1,1,0,2432,-4299.64,1328.81,66.1432,4.747295,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104942,22016,530,1,1,0,2432,-4296.03,1328.68,65.3377,4.904375,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104943,22016,530,1,1,0,2432,-4341.43,1307.24,81.4455,1.605703,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104951,22016,530,1,1,0,2432,-4345.6,1307.46,81.6897,1.466077,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104954,22016,530,1,1,0,2432,-4250.58,1318.97,54.2587,4.694936,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104973,22016,530,1,1,0,2432,-4370.16,1299.02,87.1071,1.553343,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104974,22016,530,1,1,0,2432,-4374.5,1298.99,86.2582,1.570796,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104975,22016,530,1,1,0,2432,-4392.29,1294.81,85.677,1.919862,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104976,22016,530,1,1,0,2432,-4390.21,1325.9,87.8148,4.729842,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104978,22016,530,1,1,0,2432,-4394.57,1325.53,89.9618,4.677482,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104979,22016,530,1,1,0,2432,-4438.94,1341.44,133.101,1.58825,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104980,22016,530,1,1,0,2432,-4457.66,1336.21,128.384,2.094395,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104981,22016,530,1,1,0,2432,-4461.85,1335.4,127.445,2.164208,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104982,22016,530,1,1,0,2432,-4478.78,1380.63,140.871,5.585053,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104983,22016,530,1,1,0,2432,-4472.86,1384.76,142.812,5.532694,180,0,0,5409,3080,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104984,22016,530,1,1,0,2432,-4493.48,1361.58,132.76,5.218534,180,0,0,5233,2991,0,0);
-- Eclipsion Cavalier
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104985,22018,530,1,1,0,2386,-4444.8,1342.72,132.049,1.81818,180,0,0,6761,0,0,0);
-- Crazed Colossus
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104986,19823,530,1,1,0,0,-4486.58,1998.88,112.765,0.113942,300,20,0,54088,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104987,19823,530,1,1,0,0,-4527.13,2106.33,38.1019,0.221064,300,20,0,55888,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104988,19823,530,1,1,0,0,-4561.13,2024.76,92.2968,5.31829,300,20,0,54088,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (104989,19823,530,1,1,0,0,-4399.99,2334.17,28.1067,0.071826,300,20,0,54088,0,0,1);

-- Ruins of Ba'ri -- SHADOWMOON VALLEY
-- Ashtongue Handler
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (106139,21803,530,1,1,0,38,-3224.17,954.594,53.2922,0.282183,180,0,0,4057,0,0,0);
-- Ashtongue Shaman <Servant of Illidan>
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (106140,21453,530,1,1,0,2098,-3211.19,1069.99,65.4826,2.9824,180,0,0,5409,3150,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (106141,21453,530,1,1,0,2098,-3212.87,935.073,53.7186,3.74718,180,0,0,5409,3150,0,0);
-- Ashtongue Warrior <Servant of Illidan>
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (106142,21454,530,1,1,0,244,-3355.57,836.093,-22.4942,4.625123,180,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (106168,21454,530,1,1,0,244,-3330.01,838.522,-19.4002,4.677482,180,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (106169,21454,530,1,1,0,244,-3411.82,1065.97,43.5778,3.001966,0,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (106170,21454,530,1,1,0,244,-3412.32,1085.12,44.0007,3.403392,180,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (106171,21454,530,1,1,0,244,-3274.38,987.516,43.8539,4.363323,180,0,0,6761,0,0,0);
-- Ashtongue Worker <Servant of Illidan>
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (106172,21455,530,1,1,0,53,-3194.41,889.876,51.7198,5.5676,180,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (106173,21455,530,1,1,0,53,-3202.95,902.151,49.9862,0.8377581,180,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (106174,21455,530,1,1,0,53,-3329.55,1187.46,65.5767,2.164208,180,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (106175,21455,530,1,1,0,53,-3251.08,976.31,48.1459,6.230825,180,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (106176,21455,530,1,1,0,53,-3231.52,997.717,59.2313,1.45149,180,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (106209,21455,530,1,1,0,53,-3231.95,1018.78,62.6671,5.88176,180,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (106275,21455,530,1,1,0,53,-3254.02,992.717,51.3794,1.44353,180,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (106796,21455,530,1,1,0,53,-3245.43,1009.24,59.9086,0.6632251,180,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (107584,21455,530,1,1,0,53,-3240.76,1027.02,61.4212,0.1570796,180,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (107588,21455,530,1,1,0,53,-3250.08,1020.43,58.8627,0.418879,180,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (107589,21455,530,1,1,0,53,-3394.58,1127.67,51.0358,5.864306,180,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (107620,21455,530,1,1,0,53,-3383.46,1127.75,52.9988,3.874631,180,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (107711,21455,530,1,1,0,53,-3264.48,1002.89,56.8814,3.979351,180,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (107712,21455,530,1,1,0,53,-3380.83,1113.42,48.791,2.548181,180,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (107713,21455,530,1,1,0,53,-3394.78,1111.06,50.7728,1.27409,180,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (107714,21455,530,1,1,0,53,-3289.59,1032.92,51.8233,2.96706,180,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (108872,21455,530,1,1,0,53,-3337.02,1092.48,52.5119,0.1919862,180,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (108874,21455,530,1,1,0,53,-3297.32,1038.93,53.6622,5.288348,180,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (108878,21455,530,1,1,0,53,-3295.74,1026.52,49.9782,1.937315,180,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (108879,21455,530,1,1,0,53,-3303.5,1031.59,50.6656,0.01745329,180,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (108880,21455,530,1,1,0,53,-3320.54,1058.17,51.5506,1.919862,180,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (108972,21455,530,1,1,0,53,-3406.06,1042.06,43.6969,3.804818,180,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (108973,21455,530,1,1,0,53,-3230.248,969.699,56.468,1.94,180,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (108974,21455,530,1,1,0,53,-3202.2,924.88,54.5841,5.24821,180,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (108975,21455,530,1,1,0,53,-3194.94,912.901,53.9515,3.68136,180,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (108999,21455,530,1,1,0,53,-3422.27,1122.06,46.7247,0.86922,180,0,0,6761,0,0,0);

-- Netherwing Lodge -- SHADOWMOON VALLEY 
-- Forgus <Pit Fight Organizer> (added in 2.2.0)
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (109000,23148,530,1,1,0,0,-5137.817,561.52,84.36,4.747,180,0,0,7181,0,0,0);
-- Gug <Armorsmith> (added in 2.2.0)
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (109001,23144,530,1,1,0,0,-5119.803,624.7665,86.82748,1.256637,180,0,0,6542,0,0,0);
DELETE FROM creature_addon WHERE guid = 109001;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(109001,0,0,1,0,133,0,'');
-- Wing Commander Ichman (added in 2.2.0)
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (109019,23345,530,1,1,0,0,-5066.307,640.2136,86.49668,1.553343,180,0,0,6986,0,0,0);
DELETE FROM creature_template_addon WHERE entry = 23345;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(23345,17718,0,0,0,0,0,'');
-- Wing Commander Mulverick (added in 2.2.0)
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (109045,23346,530,1,1,0,0,-5060.33,640.436,86.5787,1.78265,25,0,0,6986,0,0,0);
DELETE FROM creature_template_addon WHERE entry = 23346;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(23346,17719,0,0,0,0,0,'');
-- Captain Skyshatter (added in 2.2.0)
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (109145,23348,530,1,1,0,0,-5074.88,625.448,85.8285,2.03791,25,0,0,6986,0,0,0);
DELETE FROM creature_template_addon WHERE entry = 23348;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(23348,21425,0,0,0,0,0,'');
-- Horus <Innkeeper> (added in 2.2.0)
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (110323,23143,530,1,1,0,0,-5142.569,581.3281,84.13567,0.5061455,25,0,0,6542,0,0,0);
-- Goblin Merc (added in 2.2.0)
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (117310,23142,530,1,1,0,0,-5116.791,602.1363,85.08778,4.869469,180,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (117371,23142,530,1,1,0,0,-5113.694,599.2055,85.202,3.525565,180,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (117372,23142,530,1,1,0,0,-5120.312,601.4315,84.81312,5.480334,180,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (117421,23142,530,1,1,0,0,-5121.043,598.1973,84.88036,0.3665192,180,0,0,6761,0,0,0);
-- Dragonmaw Enforcer
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (117422,23146,530,1,1,0,2509,-5166.38,563.994,80.506,3.211406,180,0,0,143620,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (117423,23146,530,1,1,0,2510,-5143.491,515.507,84.5,4.834562,180,0,0,147600,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (117614,23146,530,1,1,0,2509,-5162.25,534.28,82.7053,5.183628,180,0,0,147600,0,0,0);
-- Dragonmaw Peon
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (117633,22252,530,1,1,0,2334,-5121.29,524.294,85.979,5.02271,180,0,0,3271,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (117634,22252,530,1,1,0,2334,-5116,526.488,86.1381,5.08868,180,0,0,3271,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (117646,22252,530,1,1,0,2334,-5119.86,518.446,85.544,2.56205,180,0,0,3271,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (117648,22252,530,1,1,0,2334,-5124.664,631.3945,86.79402,0.3316126,180,0,0,3271,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (117649,22252,530,1,1,0,2334,-5121.202,632.5522,86.88631,3.298672,180,0,0,3380,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127272,22252,530,1,1,0,2334,-5116.154,634.5474,86.88316,4.921828,180,0,0,3271,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127273,22252,530,1,1,0,2334,-5129.72,907.115,32.2765,3.15806,180,0,0,3380,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127274,22252,530,1,1,0,2334,-5134.47,914.477,33.995,4.71708,180,0,0,3271,0,0,0);
-- Nethermine Flayer
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127275,23169,530,1,1,0,0,-4965.2,654.754,19.8983,3.25419,180,5,0,6986,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127276,23169,530,1,1,0,0,-4958.08,598.221,13.2424,3.68537,180,5,0,6986,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127277,23169,530,1,1,0,0,-4944.27,565.486,7.91337,3.68537,180,5,0,6986,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127278,23169,530,1,1,0,0,-4913.53,590.013,5.45709,0.579112,180,5,0,7181,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127279,23169,530,1,1,0,0,-4920.76,534.23,6.5867,4.71424,180,5,0,7181,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127280,23169,530,1,1,0,0,-4877.08,529.025,-1.4862,2.97458,180,5,0,7181,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127281,23169,530,1,1,0,0,-4884,472.533,-2.74094,2.9196,180,5,0,6986,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127282,23169,530,1,1,0,0,-4920.7,491.69,0.75739,3.74032,180,5,0,6986,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127283,23169,530,1,1,0,0,-4905.12,422.929,-4.76311,5.55064,180,5,0,6986,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127284,23169,530,1,1,0,0,-5118.94,97.7861,-12.4182,4.2076,180,5,0,7181,0,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127285,23169,530,1,1,0,0,-5070.46,183.286,-8.79853,2.11843,180,5,0,7181,0,0,1);
-- Overmine Flayer
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127286,23264,530,1,1,0,0,-5048.03,199.958,113.572,5.80298,180,0,0,7181,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127287,23264,530,1,1,0,0,-5114.06,232.723,143.029,2.27106,180,0,0,7181,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127288,23264,530,1,1,0,0,-5108.3,267.119,152.325,2.23964,180,0,0,6986,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127289,23264,530,1,1,0,0,-5096.48,326.104,170.369,5.69104,180,0,0,6986,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127290,23264,530,1,1,0,0,-5084.92,279.693,158.211,1.95961,180,0,0,7181,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127291,23264,530,1,1,0,0,-5111.53,300.298,160.92,1.1587,180,0,0,6986,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127292,23264,530,1,1,0,0,-5074.32,305.428,165.574,5.82554,180,0,0,7181,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127293,23264,530,1,1,0,0,-5088.8,179.864,131.708,5.11475,180,0,0,7181,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127294,23264,530,1,1,0,0,-5032.97,231.245,101.577,5.27516,180,0,0,6986,0,0,0);
-- Netherwing Ray -- all missing 
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127295,23501,530,1,1,0,0,-4827.49,414.771,47.3922,3.16906,180,10,0,5589,1578,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127296,23501,530,1,1,0,0,-4843.97,498.238,51.7803,3.07874,180,10,0,5589,1578,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127297,23501,530,1,1,0,0,-4812.46,473.837,44.6002,4.25291,180,10,0,5409,1540,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127298,23501,530,1,1,0,0,-4844.75,323.996,55.9539,4.10997,180,10,0,5409,1540,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127299,23501,530,1,1,0,0,-4874.29,238.101,50.087,5.07758,180,10,0,5589,1578,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127300,23501,530,1,1,0,0,-4873.55,133.787,36.4991,3.79739,180,10,0,5589,1578,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127301,23501,530,1,1,0,0,-4859.36,614.36,67.2186,3.51717,180,10,0,5409,1540,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127302,23501,530,1,1,0,0,-4856.61,673.425,57.6788,3.51717,180,10,0,5589,1578,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127303,23501,530,1,1,0,0,-4922.75,778.553,56.5002,4.24698,180,10,0,5589,1578,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127304,23501,530,1,1,0,0,-5259.8,556.541,46.7084,5.73217,180,10,0,5409,1540,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127305,23501,530,1,1,0,0,-5271.19,738.246,36.4805,5.73217,180,10,0,5409,1540,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127306,23501,530,1,1,0,0,-4923.05,86.6896,49.9752,5.87825,180,10,0,5589,1578,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127307,23501,530,1,1,0,0,-4894.09,39.4801,44.6907,4.0679,180,10,0,5589,1578,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127308,23501,530,1,1,0,0,-5133.79,-161.02,47.5341,1.32293,180,10,0,5409,1540,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127309,23501,530,1,1,0,0,-5206.6,-127.65,65.117,2.47475,180,10,0,5589,1578,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127310,23501,530,1,1,0,0,-5234.86,-61.5226,55.3853,0.126405,180,10,0,5589,1578,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127311,23501,530,1,1,0,0,-5248.36,-24.4979,49.3864,1.67364,180,10,0,5589,1578,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127312,23501,530,1,1,0,0,-5164.44,-125.322,64.6157,0.409143,180,10,0,5409,1540,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127313,23501,530,1,1,0,0,-5272.26,103.414,37.0954,1.63436,180,10,0,5589,1578,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127314,23501,530,1,1,0,0,-5303.71,125.254,34.5261,1.29665,180,10,0,5409,1540,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127315,23501,530,1,1,0,0,-5359.14,223.231,51.1004,5.94071,180,10,0,5589,1578,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127316,23501,530,1,1,0,0,-5318.07,257.106,58.1337,0.728789,180,10,0,5409,1540,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127317,23501,530,1,1,0,0,-5324.01,305.984,57.2987,0.738214,180,10,0,5409,1540,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127318,23501,530,1,1,0,0,-5243.76,425.19,63.9083,5.35244,180,10,0,5589,1578,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127319,23501,530,1,1,0,0,-5291.45,457.516,46.3174,5.2739,180,10,0,5589,1578,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127320,23501,530,1,1,0,0,-5241.74,598.91,54.4103,0.33374,180,10,0,5589,1578,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127321,23501,530,1,1,0,0,-5116.07,782.035,56.6409,5.75563,180,10,0,5409,1540,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127322,23501,530,1,1,0,0,-5028.97,817.793,50.8939,5.15716,180,10,0,5589,1578,0,1);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127323,23501,530,1,1,0,0,-4991.6,808.653,60.592,4.74484,180,10,0,5589,1578,0,1);
-- Murkblood Miner -- not all should have aura =31261 
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127324,23287,530,1,1,0,0,-5068.56,141.5665,-13.4759,1.082104,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127324;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127324,0,0,1,0,0,0,'31261');
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127325,23287,530,1,1,0,0,-5109.351,129.4899,-13.61424,0.6283185,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127325;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127325,0,0,1,0,0,0,'31261');
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127326,23287,530,1,1,0,0,-5118.663,105.1847,-12.59805,1.256637,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127326;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127326,0,0,1,0,0,0,'31261');
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127327,23287,530,1,1,0,0,-4973.297,220.8183,-10.63328,2.216568,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127327;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127327,0,0,1,0,0,0,'31261');
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127328,23287,530,1,1,0,0,-4882.042,472.4888,-3.117535,3.228859,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127328;
 INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127328,0,0,1,0,0,0,'31261');
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127329,23287,530,1,1,0,0,-4918.072,502.0591,2.48006,1.570796,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127329;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127329,0,0,1,0,0,0,'31261');
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127330,23287,530,1,1,0,0,-4940.023,535.2883,7.127902,1.675516,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127330;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127330,0,0,1,0,0,0,'31261');
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127331,23287,530,1,1,0,0,-4887.938,531.7214,0.6247723,3.054326,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127331;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127331,0,0,1,0,0,0,'31261');
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127332,23287,530,1,1,0,0,-4921.915,547.6068,6.501626,2.042035,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127332;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127332,0,0,1,0,0,0,'31261');
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127333,23287,530,1,1,0,0,-4968.715,620.0629,16.17488,2.670354,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127333;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127333,0,0,1,0,0,0,'31261');
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127334,23287,530,1,1,0,0,-4969.858,654.9359,20.92751,3.420845,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127334;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127334,0,0,1,0,0,0,'31261');
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127335,23287,530,1,1,0,0,-5018.824,584.2097,22.70727,2.059489,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127335;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127335,0,0,1,0,0,0,'31261');
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127336,23287,530,1,1,0,0,-5043.952,595.3922,18.24016,2.094395,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127336;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127336,0,0,1,0,0,0,'31261');
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127337,23287,530,1,1,0,0,-5019.396,638.6277,23.41907,3.281219,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127337;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127337,0,0,1,0,0,0,'31261');
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127340,23287,530,1,1,0,0,-5040.079,627.7264,19.75634,2.373648,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127340;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127340,0,0,1,0,0,0,'31261');
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127341,23287,530,1,1,0,0,-5058.01,647.281,28.7401,1.83175,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127341;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127341,0,0,1,0,0,0,'31261');
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127342,23287,530,1,1,0,0,-5063.48,624.726,27.4795,3.04989,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127342;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127342,0,0,1,0,0,0,'31261');
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127343,23287,530,1,1,0,0,-5080.878,644.967,32.68097,2.426008,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127343;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127343,0,0,1,0,0,0,'31261');
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127344,23287,530,1,1,0,0,-5079.597,669.6569,33.3003,3.124139,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127344;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127344,0,0,1,0,0,0,'31261');
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127345,23287,530,1,1,0,0,-5100.418,654.4422,33.49445,2.303835,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127345;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127345,0,0,1,0,0,0,'31261');
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127346,23287,530,1,1,0,0,-5097.448,680.2379,32.88943,3.001966,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127346;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127346,0,0,1,0,0,0,'31261');
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127347,23287,530,1,1,0,53,-5229.827,626.3266,48.95264,4.223697,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127347;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127347,0,0,1,0,233,0,''); -- this one does emote
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127348,23287,530,1,1,0,53,-5160.78,616.745,36.1586,5.40295,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127348;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127348,0,0,1,0,233,0,''); -- this one does emote
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127349,23287,530,1,1,0,53,-5152.85,621.4561,35.87352,5.166174,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127349;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127349,0,0,1,0,233,0,''); -- this one does emote
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127350,23287,530,1,1,0,53,-5121.366,693.678,38.92881,1.361357,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127350;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127350,0,0,1,0,233,0,''); -- this one does emote
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127351,23287,530,1,1,0,53,-5144.963,630.1486,35.9286,5.61996,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127351;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127351,0,0,1,0,233,0,''); -- this one does emote
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127352,23287,530,1,1,0,53,-5170.539,614.4111,37.59125,4.921828,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127352;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127352,0,0,1,0,233,0,''); -- this one does emote
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127353,23287,530,1,1,0,53,-5139.44,637.2499,36.16368,5.689773,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127353;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127353,0,0,1,0,233,0,''); -- this one does emote
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127354,23287,530,1,1,0,53,-5140.923,729.5199,45.31025,0.8726646,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127354;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127354,0,0,1,0,233,0,''); -- this one does emote
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127355,23287,530,1,1,0,53,-5138.036,646.6555,36.65028,0.2443461,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127355;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127355,0,0,1,0,233,0,''); -- this one does emote
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127356,23287,530,1,1,0,53,-5135.893,721.6864,44.35764,0.08726646,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127356;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127356,0,0,1,0,233,0,''); -- this one does emote
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127357,23287,530,1,1,0,53,-5133.994,712.6088,42.61035,0.2268928,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127357;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127357,0,0,1,0,233,0,''); -- this one does emote
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127358,23287,530,1,1,0,53,-5131.758,701.3122,41.26741,0.5235988,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127358;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127358,0,0,1,0,233,0,''); -- this one does emote
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127359,23287,530,1,1,0,53,-5186.184,617.5848,42.23409,4.34587,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127359;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127359,0,0,1,0,233,0,''); -- this one does emote
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127360,23287,530,1,1,0,53,-5195.912,618.5502,44.35371,4.555309,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127360;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127360,0,0,1,0,233,0,''); -- this one does emote
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127361,23287,530,1,1,0,53,-5219.054,621.868,47.97065,4.310963,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127361;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127361,0,0,1,0,233,0,''); -- this one does emote
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127362,23287,530,1,1,0,53,-5209.135,619.5105,46.42957,4.502949,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127362;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127362,0,0,1,0,233,0,''); -- this one does emote
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127363,23287,530,1,1,0,53,-5164.475,734.2371,47.03968,3.438299,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127363;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127363,0,0,1,0,233,0,''); -- this one does emote
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127364,23287,530,1,1,0,53,-5159.912,725.4135,45.55035,3.333579,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127364;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127364,0,0,1,0,233,0,''); -- this one does emote
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127365,23287,530,1,1,0,53,-5156.701,715.8916,43.45729,3.106686,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127365;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127365,0,0,1,0,233,0,''); -- this one does emote
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127366,23287,530,1,1,0,53,-5163.108,651.5301,37.39709,2.460914,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127366;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127366,0,0,1,0,233,0,''); -- this one does emote
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127367,23287,530,1,1,0,53,-5209.468,636.0561,45.94989,1.780236,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127367;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127367,0,0,1,0,233,0,''); -- this one does emote
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127368,23287,530,1,1,0,53,-5157.459,707.9813,42.97822,2.75762,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127368;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127368,0,0,1,0,233,0,''); -- this one does emote
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127369,23287,530,1,1,0,53,-5178.181,642.9128,39.79438,1.919862,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127369;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127369,0,0,1,0,233,0,''); -- this one does emote
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127370,23287,530,1,1,0,53,-5160.416,658.8326,38.73607,3.106686,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127370;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127370,0,0,1,0,233,0,''); -- this one does emote
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127371,23287,530,1,1,0,53,-5197.959,636.2016,44.08671,1.64061,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127371;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127371,0,0,1,0,233,0,''); -- this one does emote
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127372,23287,530,1,1,0,53,-5187.549,638.7712,41.74369,1.954769,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127372;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127372,0,0,1,0,233,0,''); -- this one does emote
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127373,23287,530,1,1,0,53,-5158.104,699.1263,42.52824,3.473205,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127373;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127373,0,0,1,0,233,0,''); -- this one does emote
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127374,23287,530,1,1,0,53,-5156.376,687.0754,41.27747,2.80998,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127374;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127374,0,0,1,0,233,0,''); -- this one does emote
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (127375,23287,530,1,1,0,53,-5161.212,668.8508,40.50122,3.281219,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 127375;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(127375,0,0,1,0,233,0,''); -- this one does emote
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (128590,23287,530,1,1,0,53,-5160.553,678.9923,41.02322,2.792527,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 128590;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(128590,0,0,1,0,233,0,''); -- this one does emote
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (128591,23287,530,1,1,0,53,-5219.594,636.9407,48.11805,1.605703,180,0,0,6986,0,0,0);
DELETE FROM creature_addon WHERE guid = 128591;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(128591,0,0,1,0,233,0,''); -- this one does emote
-- Disobedient Dragonmaw Peon - any has diff aura (ones with 40714 - have random movement)
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (128592,23311,530,1,1,0,2334,-4971.56,620.654,79.2093,0.462051,180,0,0,6542,0,0,0);
DELETE FROM creature_addon WHERE guid = 128592;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(128592,0,0,1,0,0,0,'40732');
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (128593,23311,530,1,1,0,04,-4993.75,810.583,58.8287,4.87498,180,5,0,6542,0,0,1);
DELETE FROM creature_addon WHERE guid = 128593;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(128593,0,0,1,0,0,0,'40714');
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (128594,23311,530,1,1,0,04,-5174.24,590.686,77.5167,5.46481,180,0,0,6761,0,0,0);
DELETE FROM creature_addon WHERE guid = 128594;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(128594,0,0,1,0,15,0,'40735');
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (128595,23311,530,1,1,0,04,-5211.27,610.191,64.442,6.10334,180,0,0,6761,0,0,0);
DELETE FROM creature_addon WHERE guid = 128595;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(128595,0,0,1,0,0,0,'40732');
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (128596,23311,530,1,1,0,04,-5239.74,712.173,52.4285,6.10334,180,5,0,6542,0,0,1);
DELETE FROM creature_addon WHERE guid = 128596;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(128596,0,0,1,0,0,0,'40714');
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (128597,23311,530,1,1,0,04,-5063.71,578.831,87.0778,4.03146,180,0,0,6761,0,0,0);
DELETE FROM creature_addon WHERE guid = 128597;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(128597,0,0,1,0,0,0,'40732');
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (128598,23311,530,1,1,0,04,-4830.68,454.307,55.3361,3.18244,180,0,0,6761,0,0,0);
DELETE FROM creature_addon WHERE guid = 128598;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(128598,0,0,1,0,15,0,'40735');
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (128599,23311,530,1,1,0,04,-4942,129.533,59.3296,4.8789,180,5,0,6542,0,0,1);
DELETE FROM creature_addon WHERE guid = 128599;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(128599,0,0,1,0,0,0,'40714');
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (128600,23311,530,1,1,0,04,-5080.98,30.7558,80.5373,3.41021,180,0,0,6542,0,0,0);
DELETE FROM creature_addon WHERE guid = 128600;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(128600,0,0,1,0,0,0,'40732');
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (131748,23311,530,1,1,0,04,-5147.53,34.5626,78.2859,5.09096,180,0,0,6761,0,0,0);
DELETE FROM creature_addon WHERE guid = 131748;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(131748,0,0,1,0,15,0,'40735');
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (131751,23311,530,1,1,0,04,-5197.39,-111.186,66.8739,2.32243,180,0,0,6761,0,0,0);
DELETE FROM creature_addon WHERE guid = 131751;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(131751,0,0,1,0,0,0,'40732');
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (131752,23311,530,1,1,0,04,-4891.63,708.756,68.2959,2.61224,180,0,0,6761,0,0,0);
DELETE FROM creature_addon WHERE guid = 131752;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(131752,0,0,1,0,0,0,'40732');
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (131778,23311,530,1,1,0,04,-4864.73,457.578,65.1092,3.75893,180,5,0,6542,0,0,1);
DELETE FROM creature_addon WHERE guid = 131778;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(131778,0,0,1,0,0,0,'40714');
-- Warden's Cage - SHADOWMOON VALLEY
-- Ashtongue Deathsworn - missing
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (132115,21701,530,1,1,0,237,-3694.19,1073.53,56.7576,3.263766,180,0,0,22680,3155,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (132116,21701,530,1,1,0,237,-3694.14,1069.22,56.7586,3.141593,180,0,0,22680,3155,0,0);

-- Ruins of Karabor - SHADOWMOON VALLEY
-- Sunfury Eradicator
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (132117,21742,530,1,1,0,2094,-3766.44,551.222,64.6248,1.623156,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (132118,21742,530,1,1,0,2094,-3782.88,516.191,84.4329,3.159046,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (132945,21742,530,1,1,0,2094,-3681.99,574.679,33.1101,4.660029,180,0,0,5060,2933,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (132946,21742,530,1,1,0,2094,-3660.3,550.399,25.6722,1.53589,180,0,0,5060,2933,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (132947,21742,530,1,1,0,2094,-3726.59,575.823,48.611,4.834562,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (132948,21742,530,1,1,0,2094,-3702,550.118,40.0748,1.658063,180,0,0,5060,2933,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (132949,21742,530,1,1,0,2094,-3702.24,575.461,39.9766,4.764749,180,0,0,5233,2991,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (132950,21742,530,1,1,0,2094,-3681.77,550.108,33.43,1.64061,180,0,0,5060,2933,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (132951,21742,530,1,1,0,2094,-3694.42,349.589,90.9803,0.5061455,180,0,0,5060,2933,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (132952,21742,530,1,1,0,2094,-3695.26,362.017,90.979,4.45059,180,0,0,5060,2933,0,0);
DELETE FROM creature_addon WHERE guid = 132952;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(132952,0,8,1,16,0,0,''); -- he should kneel
-- Demon Hunter Initiate
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (132953,21180,530,1,1,0,2090,-3754.97,317.263,104.117,6.19871,180,0,0,5589,3155,0,0);

-- Ata'mal Terrace
-- Shadowmoon Chosen <Servant of Illidan>
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (132954,22084,530,1,1,0,1330,-3271.11,354.358,119.73,3.193953,180,0,0,6986,0,0,0);

-- Shadowmoon Village -- SHADOWMOON VALLEY
-- Kor'kron Rider - missing on map
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (132955,19364,530,1,1,0,646,-3067.95,2527.76,61.7542,4.94326,300,0,0,17742,0,0,0);
DELETE FROM creature_addon WHERE guid = 132955;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(132955,14334,0,1,16,0,0,'');
DELETE FROM creature_linking WHERE guid = 132955;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(132955,69096,518); -- Kor'kron Rider linked to his master
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (132956,19364,530,1,1,0,646,-3072.14,2528.19,61.8032,4.98645,300,0,0,17742,0,0,0);
DELETE FROM creature_addon WHERE guid = 132956;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(132956,14336,0,1,16,0,0,'');
DELETE FROM creature_linking WHERE guid = 132956;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(132956,69096,518); -- Kor'kron Rider linked to his master

-- Entrance into Black Temple (area outside) -- SHADOWMOON VALLEY
-- Boss Portal: Purple (3.00) -- all missing on map
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (132957,24925,530,1,1,0,0,-3560.61,372.614,32.7836,1.570796,25,0,0,42,0,0,0);
DELETE FROM creature_addon WHERE guid = 132957;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(132957,0,0,1,16,422,0,'');
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (132958,24925,530,1,1,0,0,-3618.64,396.125,33.1356,0.03490658,25,0,0,42,0,0,0);
DELETE FROM creature_addon WHERE guid = 132958;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(132958,0,0,1,16,422,0,'');
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (132959,24925,530,1,1,0,0,-3500.62,395.197,32.8023,3.054326,25,0,0,42,0,0,0);
DELETE FROM creature_addon WHERE guid = 132959;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(132959,0,0,1,16,422,0,'');
-- Scryer Cavalier
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (132960,22967,530,1,1,0,259,-3609.14,739.651,-9.26425,0.196605,180,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (132961,22967,530,1,1,0,259,-3605.89,738.174,-9.79895,0.130639,180,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (132962,22967,530,1,1,0,259,-3608.7,730.693,-9.24896,0.130639,180,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (132963,22967,530,1,1,0,259,-3602.65,735.693,-10.0605,0.130639,180,0,0,6761,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (132964,22967,530,1,1,0,259,-3605.52,733.791,-9.77686,0.130639,180,0,0,6761,0,0,0);
-- Lightsworn Elekk Rider
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (132965,22966,530,1,1,0,2367,-3522.26,738.341,-25.4523,3.298672,180,0,0,1073,3155,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (132966,22966,530,1,1,0,2367,-3520.18,747.038,-25.5588,3.12458,180,0,0,1073,3155,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (132967,22966,530,1,1,0,2367,-3524.67,740.825,-24.8284,3.12458,180,0,0,1073,3155,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (132968,22966,530,1,1,0,2367,-3522.77,743.976,-25.1917,3.12458,180,0,0,1073,3155,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (132969,22966,530,1,1,0,2367,-3518.95,736.246,-26.1553,3.12458,180,0,0,1073,3155,0,0);
-- Formation Marker -- all missing
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (132972,19179,530,1,1,0,0,-3541.39,503.698,21.9048,4.62194,25,0,0,42,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (133034,19179,530,1,1,0,0,-3553.53,504.232,20.174,4.80481,25,0,0,42,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (133818,19179,530,1,1,0,0,-3593.3,512.656,20.8712,4.80481,25,0,0,42,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (133860,19179,530,1,1,0,0,-3551.28,509.524,19.8449,4.80481,25,0,0,42,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (133863,19179,530,1,1,0,0,-3533.95,511.558,21.5344,4.80481,25,0,0,42,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (133867,19179,530,1,1,0,0,-3547.08,512.385,19.7709,4.70035,25,0,0,42,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (133868,19179,530,1,1,0,0,-3582.73,512.045,20.5484,4.71215,25,0,0,42,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (133902,19179,530,1,1,0,0,-3571.86,509.352,20.5433,4.71215,25,0,0,42,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (133915,19179,530,1,1,0,0,-3576.7,505.453,21.5,4.71215,25,0,0,42,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (133916,19179,530,1,1,0,0,-3587.03,505.701,22.3002,4.71215,25,0,0,42,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (133934,19179,530,1,1,0,0,-3571.7,512.577,19.5381,4.79701,25,0,0,42,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (133935,19179,530,1,1,0,0,-3565.1,504.98,20.0117,4.81141,25,0,0,42,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (133936,19179,530,1,1,0,0,-3559.11,512.291,19.1972,4.81141,25,0,0,42,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (133937,19179,530,1,1,0,0,-3523.41,578.399,13.8605,4.55906,25,0,0,42,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (133938,19179,530,1,1,0,0,-3575.75,586.576,10.8351,4.66902,25,0,0,42,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (133941,19179,530,1,1,0,0,-3593.9,579.43,13.8169,4.66902,25,0,0,42,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (133942,19179,530,1,1,0,0,-3533.38,575.546,14.7792,4.66902,25,0,0,42,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (133943,19179,530,1,1,0,0,-3524.12,571.051,14.6026,4.66902,25,0,0,42,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (133944,19179,530,1,1,0,0,-3543.75,573.521,13.8127,4.79433,25,0,0,42,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (134020,19179,530,1,1,0,0,-3594.85,571.985,14.1431,4.79433,25,0,0,42,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (134021,19179,530,1,1,0,0,-3574.83,573.973,11.6697,4.7904,25,0,0,42,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (134023,19179,530,1,1,0,0,-3552.53,573.27,12.6881,4.78255,25,0,0,42,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (137582,19179,530,1,1,0,0,-3533.57,567.885,14.8681,4.41026,25,0,0,42,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (139973,19179,530,1,1,0,0,-3566.01,573.712,11.3107,4.80401,25,0,0,42,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (139974,19179,530,1,1,0,0,-3584.34,567.399,13.4401,4.80815,25,0,0,42,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (139975,19179,530,1,1,0,0,-3543.12,565.057,14.6089,4.76573,25,0,0,42,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (139976,19179,530,1,1,0,0,-3552.36,565.366,13.5795,3.20672,25,0,0,42,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (139977,19179,530,1,1,0,0,-3565.7,564.905,12.7033,4.82071,25,0,0,42,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (139978,19179,530,1,1,0,0,-3574.95,564.225,13.0331,4.33377,25,0,0,42,0,0,0);
-- Black Temple Battle Sensor -- event controler
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (139979,22934,530,1,1,0,0,-3565.66,499.164,20.2467,2.548181,25,0,0,42,0,0,0);

-- Shattered Plains -- SHADOWMOON VALLEY
-- Shadowmoon Valley Tuber Node
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (139980,21347,530,1,1,0,0,-2697.64,1334.04,91.3392,3.3872,25,0,0,9250,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (139981,21347,530,1,1,0,0,-2633.26,1366.75,85.7008,0.139571,25,0,0,9250,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (139982,21347,530,1,1,0,0,-2614.25,1382.97,80.4097,0.139571,25,0,0,9250,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (139983,21347,530,1,1,0,0,-2548.38,1382.88,83.8288,0.61081,25,0,0,9250,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (139984,21347,530,1,1,0,0,-2517.07,1381.81,70.2143,3.8655,25,0,0,9250,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (139985,21347,530,1,1,0,0,-2533.31,1433.58,46.7008,3.8655,25,0,0,9250,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (139986,21347,530,1,1,0,0,-2599.63,1266.48,80.4769,3.8655,25,0,0,9250,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (139987,21347,530,1,1,0,0,-2582.83,1252.49,78.4565,3.24503,25,0,0,9250,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (139988,21347,530,1,1,0,0,-2548.85,1246.83,74.9428,5.35618,25,0,0,9250,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (139989,21347,530,1,1,0,0,-2500.13,1332.44,70.0163,5.35618,25,0,0,9250,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (139990,21347,530,1,1,0,0,-2465.7,1299.19,43.4429,5.35618,25,0,0,9250,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (139991,21347,530,1,1,0,0,-2598.86,1234.89,79.1238,2.94031,25,0,0,9250,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (139992,21347,530,1,1,0,0,-2532.65,1299.56,68.7003,4.8948,25,0,0,9250,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (139993,21347,530,1,1,0,0,-2515.64,1150.27,65.4093,3.39077,25,0,0,9250,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (139994,21347,530,1,1,0,0,-2581.6,1448.16,54.8429,3.39077,25,0,0,9250,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (139995,21347,530,1,1,0,0,-2645.58,1348.26,95.2305,3.39077,25,0,0,9250,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (139996,21347,530,1,1,0,0,-2547.91,1348.76,82.7689,5.01654,25,0,0,9250,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (139997,21347,530,1,1,0,0,-2533.43,1199.5,70.4887,4.21544,25,0,0,9250,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (139998,21347,530,1,1,0,0,-2632.01,1333.63,90.4338,4.59243,25,0,0,9250,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (139999,21347,530,1,1,0,0,-2483.82,1182.09,37.672,3.10174,25,0,0,9250,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (140000,21347,530,1,1,0,0,-2467.18,1199.15,20.7894,3.4536,25,0,0,9250,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (140001,21347,530,1,1,0,0,-2518.09,1180.25,65.1497,3.39077,25,0,0,9250,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (140002,21347,530,1,1,0,0,-2500.14,1165.85,53.6676,4.87127,25,0,0,9250,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (140003,21347,530,1,1,0,0,-2566.39,1200.25,77.7982,6.12882,25,0,0,9250,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (140004,21347,530,1,1,0,0,-2566.65,1165.72,76.1817,4.56588,25,0,0,9250,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (140005,21347,530,1,1,0,0,-2550.49,1149.13,77.7456,5.42208,25,0,0,9250,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (140006,21347,530,1,1,0,0,-2484.61,1315.87,58.3943,0.049953,25,0,0,9250,0,0,0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (140007,21347,530,1,1,0,0,-2466.51,1332.21,49.4113,2.21373,25,0,0,9250,0,0,0);

-- Coilfang: Serpentshrine Cavern - beam
DELETE FROM creature WHERE guid = 140008;
INSERT INTO creature (guid, id,map,spawnMask,phaseMask,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,MovementType) VALUES
(140008, 21933, 548, 1, 1, -215.7533, -375.3428, 38.40299, 5.009095, 7200, 0, 0);
-- Lady Vashj
DELETE FROM creature WHERE guid  IN (140009, 140010, 140011, 140012);
INSERT INTO creature (guid, id,map,spawnMask,phaseMask,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,MovementType) VALUES
(140009, 19870, 548, 1, 1, 49.626, -902.181, 41.54, 3.956, 7200, 0, 0),
(140010, 19870, 548, 1, 1, 10.988, -901.616, 41.54, 5.437, 7200, 0, 0),
(140011, 19870, 548, 1, 1, 10.385, -944.036, 41.54, 0.779, 7200, 0, 0),
(140012, 19870, 548, 1, 1, 49.312, -943.398, 41.54, 2.401, 7200, 0, 0);


DELETE FROM creature WHERE guid IN (140013, 140014, 140015, 140016, 140017, 140018, 140019);
INSERT INTO creature (guid, id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140013, 17474, 544, 1, 1, 0, 0, 13.1331, 2.75793, -0.312492, 0.264242, 300, 0, 0, 1, 0, 0, 0),
(140014, 17474, 544, 1, 1, 0, 0, -12.1116, 1.01105, -0.303638, 6.08346, 300, 0, 0, 1, 0, 0, 0),
(140015, 17474, 544, 1, 1, 0, 0, -11.3749, -29.1214, -0.312463, 4.99445, 300, 0, 0, 1, 0, 0, 0),
(140016, 17474, 544, 1, 1, 0, 0, -7.10759, 25.524, -0.312497, 5.1917, 300, 0, 0, 1, 0, 0, 0),
(140017, 17474, 544, 1, 1, 0, 0, -3.11093, 29.1424, -0.31249, 5.67216, 300, 0, 0, 1, 0, 0, 0),
(140018, 17474, 544, 1, 1, 0, 0, -37.1834, -19.4914, -0.312451, 5.05616, 300, 0, 0, 1, 0, 0, 0),
(140019, 17474, 544, 1, 1, 0, 0, -29.691, 29.643, -0.034676, 0.478655, 300, 0, 0, 1, 0, 0, 0);

-- Orb targets spawns
DELETE FROM creature WHERE guid IN (140020, 140021, 140022, 140023);
INSERT INTO creature (guid, id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140020, 25640, 580, 1, 1, 0, 0, 1703.91, 581.981, 28.132, 1.761, 300, 0, 0, 1, 0, 0, 0),
(140021, 25640, 580, 1, 1, 0, 0, 1747.59, 621.556, 28.05, 3.111, 300, 0, 0, 1, 0, 0, 0),
(140022, 25640, 580, 1, 1, 0, 0, 1694.32, 676.565, 28.05, 4.808, 300, 0, 0, 1, 0, 0, 0),
(140023, 25640, 580, 1, 1, 0, 0, 1651.39, 635.547, 28.142, 6.163, 300, 0, 0, 1, 0, 0, 0);

-- Anveena (ytdb) (not sure if this ir right or guesswork - needs to be confirmed)
DELETE FROM creature WHERE id = 26046;
INSERT INTO creature (guid, id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140024, 26046, 580, 1, 1, 0, 0, 1698.45, 628.03, 50.3889, 0.331613, 604800, 0, 0, 1000, 10000, 0, 0);
-- Zarithrian Spawn Stalker
DELETE FROM creature WHERE guid IN (140025, 140026);
INSERT INTO creature (guid, id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140025, 39794, 724, 15, 1, 0, 0, 3043.97, 419.88, 87.0399, 0, 604800, 0, 0, 1, 0, 0, 0),
(140026, 39794, 724, 15, 1, 0, 0, 3062.6, 636.998, 82.7377, 0, 604800, 0, 0, 1, 0, 0, 0);
-- Halion controller
DELETE FROM creature WHERE guid = 140027;
INSERT INTO creature (guid, id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140027, 40146, 724, 15, 1, 0, 0, 3156.037, 533.2656, 72.97205, 0.72, 604800, 0, 0, 1, 0, 0, 0);
-- Halion twilight
DELETE FROM creature WHERE guid = 140028;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(140028, 40142, 724, 15, 32, 0, 0, 3156.625, 533.2674, 72.97205, 0, 604800, 0, 0, 11156000, 0, 0, 0);

-- Pit of Saron - Missing stalkers
DELETE FROM creature WHERE guid IN (
 140029, 140030, 140031, 140032, 140033, 140034, 140035, 140036, 140037,
 140038, 140039, 140040, 140041, 140042, 140043, 140044, 140045, 140046,
 140047, 140048, 140049, 140050, 140051, 140052, 140053, 140054, 140055,
 140056, 140057, 140058, 140059, 140060, 140061, 140062, 140063, 140064,
 140065, 140066, 140067, 140068, 140069, 140070, 140071, 140072, 140073,
 140074, 140075, 140076, 140077, 140078, 140079, 140080, 140081, 140082,
 140083, 140084, 140085, 140086, 140087, 140088, 140089, 140090, 140091,
 140092, 140093, 140094, 140095, 140096, 140097, 140098, 140099, 140100,
 140101, 140102, 140103, 140104, 140105, 140106, 140107, 140108, 140109,
 140110, 140111, 140112, 140113, 140114, 140115, 140116, 140117, 140118,
 140119, 140120, 140121, 140122, 140123, 140124, 140125, 140126, 140127,
 140128, 140129, 140130, 140131, 140132, 140133, 140134, 140135, 140136,
 140137, 140138, 140139, 140140, 140141, 140142, 140143, 140144, 140145,
 140146, 140147, 140148, 140149, 140150, 140151, 140152, 140153, 140154,
 140155, 140156, 140157, 140158, 140159, 140160, 140161, 140162, 140163,
 140164, 140165);
INSERT INTO creature (guid, id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140029, 32780, 658, 3, 1, 0, 0, 1074.55, 19.4549, 633.102, 0.890118, 86400, 0, 0, 1, 0, 0, 0),
(140030, 32780, 658, 3, 1, 0, 0, 1083.67, 6.56424, 633.7, 0.628319, 86400, 0, 0, 1, 0, 0, 0),
(140031, 32780, 658, 3, 1, 0, 0, 1010.18, -141.198, 621.042, 2.49582, 86400, 0, 0, 1, 0, 0, 0),
(140032, 32780, 658, 3, 1, 0, 0, 1074.55, 19.4549, 633.102, 0.890118, 86400, 0, 0, 1, 0, 0, 0),
(140033, 32780, 658, 3, 1, 0, 0, 1069.24, -10.6545, 633.781, 0.628319, 86400, 0, 0, 1, 0, 0, 0),
(140034, 32780, 658, 3, 1, 0, 0, 1021.05, -122.354, 624.375, 2.84489, 86400, 0, 0, 1, 0, 0, 0),
(140035, 32780, 658, 3, 1, 0, 0, 1058.88, -51.0677, 633.797, 4.60767, 86400, 0, 0, 1, 0, 0, 0),
(140036, 32780, 658, 3, 1, 0, 0, 1048.24, -75.2014, 633.003, 0.10472, 86400, 0, 0, 1, 0, 0, 0),
(140037, 32780, 658, 3, 1, 0, 0, 1021.05, -122.354, 624.375, 2.84489, 86400, 0, 0, 1, 0, 0, 0),
(140038, 32780, 658, 3, 1, 0, 0, 1038.08, -106.852, 628.901, 0.10472, 86400, 0, 0, 1, 0, 0, 0),
(140039, 32780, 658, 3, 1, 0, 0, 1056.59, -109.167, 630.891, 0.10472, 86400, 0, 0, 1, 0, 0, 0),
(140040, 32780, 658, 3, 1, 0, 0, 1059.43, -39.0729, 633.943, 0.628319, 86400, 0, 0, 1, 0, 0, 0),
(140041, 32780, 658, 3, 1, 0, 0, 981.66, -134.417, 607.866, 1.64061, 86400, 0, 0, 1, 0, 0, 0),
(140042, 32780, 658, 3, 1, 0, 0, 951.469, -96.0486, 595.238, 1.64061, 86400, 0, 0, 1, 0, 0, 0),
(140043, 32780, 658, 3, 1, 0, 0, 1072.91, -40.8993, 633.59, 0.628319, 86400, 0, 0, 1, 0, 0, 0),
(140044, 32780, 658, 3, 1, 0, 0, 985.663, -128.326, 608.254, 0.15708, 86400, 0, 0, 1, 0, 0, 0),
(140045, 32780, 658, 3, 1, 0, 0, 1000.3, -126.005, 615.862, 2.07694, 86400, 0, 0, 1, 0, 0, 0),
(140046, 32780, 658, 3, 1, 0, 0, 1058.25, -53.5122, 633.705, 3.75246, 86400, 0, 0, 1, 0, 0, 0),
(140047, 32780, 658, 3, 1, 0, 0, 948.851, -111.17, 595.13, 1.64061, 86400, 0, 0, 1, 0, 0, 0),
(140048, 32780, 658, 3, 1, 0, 0, 1074.6, 71.1458, 631.068, 0.628319, 86400, 0, 0, 1, 0, 0, 0),
(140049, 32780, 658, 3, 1, 0, 0, 1068.62, 52.066, 631.293, 0.890118, 86400, 0, 0, 1, 0, 0, 0),
(140050, 32780, 658, 3, 1, 0, 0, 1080.09, 43.467, 630, 0.506145, 86400, 0, 0, 1, 0, 0, 0),
(140051, 32780, 658, 3, 1, 0, 0, 1008.45, -127.712, 620.498, 2.49582, 86400, 0, 0, 1, 0, 0, 0),
(140052, 32780, 658, 3, 1, 0, 0, 1072.91, -40.8993, 633.59, 0.628319, 86400, 0, 0, 1, 0, 0, 0),
(140053, 32780, 658, 3, 1, 0, 0, 1049.65, -74.033, 633.078, 4.36332, 86400, 0, 0, 1, 0, 0, 0),
(140054, 32780, 658, 3, 1, 0, 0, 1069.24, -10.6545, 633.781, 0.628319, 86400, 0, 0, 1, 0, 0, 0),
(140055, 32780, 658, 3, 1, 0, 0, 1056.59, -109.167, 630.891, 0.10472, 86400, 0, 0, 1, 0, 0, 0),
(140056, 32780, 658, 3, 1, 0, 0, 1068.64, 27.0972, 631.282, 4.08407, 86400, 0, 0, 1, 0, 0, 0),
(140057, 32780, 658, 3, 1, 0, 0, 1018.17, -130.429, 623.537, 0.15708, 86400, 0, 0, 1, 0, 0, 0),
(140058, 32780, 658, 3, 1, 0, 0, 948.851, -111.17, 595.13, 1.64061, 86400, 0, 0, 1, 0, 0, 0),
(140059, 32780, 658, 3, 1, 0, 0, 1058.25, -53.5122, 633.705, 3.75246, 86400, 0, 0, 1, 0, 0, 0),
(140060, 32780, 658, 3, 1, 0, 0, 957.536, -110.778, 595.604, 1.64061, 86400, 0, 0, 1, 0, 0, 0),
(140061, 32780, 658, 3, 1, 0, 0, 948.851, -111.17, 595.13, 1.64061, 86400, 0, 0, 1, 0, 0, 0),
(140062, 32780, 658, 3, 1, 0, 0, 1083.67, 6.56424, 633.7, 0.628319, 86400, 0, 0, 1, 0, 0, 0),
(140063, 32780, 658, 3, 1, 0, 0, 1074.55, 19.4549, 633.102, 0.890118, 86400, 0, 0, 1, 0, 0, 0),
(140064, 32780, 658, 3, 1, 0, 0, 1018.17, -130.429, 623.537, 0.15708, 86400, 0, 0, 1, 0, 0, 0),
(140065, 32780, 658, 3, 1, 0, 0, 946.724, -105.462, 594.994, 1.64061, 86400, 0, 0, 1, 0, 0, 0),
(140066, 32780, 658, 3, 1, 0, 0, 1060.56, -77.3542, 633.758, 0.890118, 86400, 0, 0, 1, 0, 0, 0),
(140067, 32780, 658, 3, 1, 0, 0, 951.465, -102.632, 594.968, 1.64061, 86400, 0, 0, 1, 0, 0, 0),
(140068, 32780, 658, 3, 1, 0, 0, 1071.78, -19.1458, 633.174, 0.890118, 86400, 0, 0, 1, 0, 0, 0),
(140069, 32780, 658, 3, 1, 0, 0, 1048.24, -75.2014, 633.003, 0.10472, 86400, 0, 0, 1, 0, 0, 0),
(140070, 32780, 658, 3, 1, 0, 0, 1062.55, -23.7222, 634.076, 0.628319, 86400, 0, 0, 1, 0, 0, 0),
(140071, 32780, 658, 3, 1, 0, 0, 980.286, -118.993, 601.536, 1.64061, 86400, 0, 0, 1, 0, 0, 0),
(140072, 32780, 658, 3, 1, 0, 0, 1068.78, -70.4063, 633.396, 3.66519, 86400, 0, 0, 1, 0, 0, 0),
(140073, 32780, 658, 3, 1, 0, 0, 1071.78, -19.1458, 633.174, 0.890118, 86400, 0, 0, 1, 0, 0, 0),
(140074, 32780, 658, 3, 1, 0, 0, 1029.76, -114.705, 626.664, 2.94961, 86400, 0, 0, 1, 0, 0, 0),
(140075, 32780, 658, 3, 1, 0, 0, 1068.78, -70.4063, 633.396, 3.66519, 86400, 0, 0, 1, 0, 0, 0),
(140076, 32780, 658, 3, 1, 0, 0, 1048.78, -115.236, 629.419, 0.10472, 86400, 0, 0, 1, 0, 0, 0),
(140077, 32780, 658, 3, 1, 0, 0, 1065.23, 116.997, 628.366, 4.93928, 86400, 0, 0, 1, 0, 0, 0),
(140078, 32780, 658, 3, 1, 0, 0, 1071.78, -19.1458, 633.174, 0.890118, 86400, 0, 0, 1, 0, 0, 0),
(140079, 32780, 658, 3, 1, 0, 0, 1059.43, -39.0729, 633.943, 0.628319, 86400, 0, 0, 1, 0, 0, 0),
(140080, 32780, 658, 3, 1, 0, 0, 990.997, -124.531, 609.625, 1.64061, 86400, 0, 0, 1, 0, 0, 0),
(140081, 32780, 658, 3, 1, 0, 0, 1058.25, -53.5122, 633.705, 3.75246, 86400, 0, 0, 1, 0, 0, 0),
(140082, 32780, 658, 3, 1, 0, 0, 1048.24, -75.2014, 633.003, 0.10472, 86400, 0, 0, 1, 0, 0, 0),
(140083, 32780, 658, 3, 1, 0, 0, 1082.01, 29.5747, 630.368, 4.08407, 86400, 0, 0, 1, 0, 0, 0),
(140084, 32780, 658, 3, 1, 0, 0, 1067.68, -13.2049, 633.712, 4.53786, 86400, 0, 0, 1, 0, 0, 0),
(140085, 32780, 658, 3, 1, 0, 0, 1079.75, 38.0608, 629.712, 4.60767, 86400, 0, 0, 1, 0, 0, 0),
(140086, 32780, 658, 3, 1, 0, 0, 1074.6, 71.1458, 631.068, 0.628319, 86400, 0, 0, 1, 0, 0, 0),
(140087, 32780, 658, 3, 1, 0, 0, 946.724, -105.462, 594.994, 1.64061, 86400, 0, 0, 1, 0, 0, 0),
(140088, 32780, 658, 3, 1, 0, 0, 1073.01, 58.1354, 631.722, 0.628319, 86400, 0, 0, 1, 0, 0, 0),
(140089, 32780, 658, 3, 1, 0, 0, 980.286, -118.993, 601.536, 1.64061, 86400, 0, 0, 1, 0, 0, 0),
(140090, 32780, 658, 3, 1, 0, 0, 951.465, -102.632, 594.968, 1.64061, 86400, 0, 0, 1, 0, 0, 0),
(140091, 32780, 658, 3, 1, 0, 0, 1021.05, -122.354, 624.375, 2.84489, 86400, 0, 0, 1, 0, 0, 0),
(140092, 32780, 658, 3, 1, 0, 0, 1071.71, -55.4722, 633.578, 3.75246, 86400, 0, 0, 1, 0, 0, 0),
(140093, 32780, 658, 3, 1, 0, 0, 1039.86, -115.92, 628.833, 0.890118, 86400, 0, 0, 1, 0, 0, 0),
(140094, 32780, 658, 3, 1, 0, 0, 1029.76, -114.705, 626.664, 2.94961, 86400, 0, 0, 1, 0, 0, 0),
(140095, 32780, 658, 3, 1, 0, 0, 1068.64, 27.0972, 631.282, 4.08407, 86400, 0, 0, 1, 0, 0, 0),
(140096, 32780, 658, 3, 1, 0, 0, 947.764, -97.849, 595.385, 5.74213, 86400, 0, 0, 1, 0, 0, 0),
(140097, 32780, 658, 3, 1, 0, 0, 958.288, -120.444, 596.854, 1.64061, 86400, 0, 0, 1, 0, 0, 0),
(140098, 32780, 658, 3, 1, 0, 0, 1038.08, -106.852, 628.901, 0.10472, 86400, 0, 0, 1, 0, 0, 0),
(140099, 32780, 658, 3, 1, 0, 0, 1071.71, -55.4722, 633.578, 3.75246, 86400, 0, 0, 1, 0, 0, 0),
(140100, 32780, 658, 3, 1, 0, 0, 1048.78, -115.236, 629.419, 0.10472, 86400, 0, 0, 1, 0, 0, 0),
(140101, 32780, 658, 3, 1, 0, 0, 1069.24, -10.6545, 633.781, 0.628319, 86400, 0, 0, 1, 0, 0, 0),
(140102, 32780, 658, 3, 1, 0, 0, 1076.03, -25.5486, 633.157, 0.628319, 86400, 0, 0, 1, 0, 0, 0),
(140103, 32780, 658, 3, 1, 0, 0, 1041.26, -98.5243, 630.805, 0.10472, 86400, 0, 0, 1, 0, 0, 0),
(140104, 32780, 658, 3, 1, 0, 0, 1076.67, -16.7396, 632.985, 4.45059, 86400, 0, 0, 1, 0, 0, 0),
(140105, 32780, 658, 3, 1, 0, 0, 1068.78, -70.4063, 633.396, 3.66519, 86400, 0, 0, 1, 0, 0, 0),
(140106, 32780, 658, 3, 1, 0, 0, 1076.03, -25.5486, 633.157, 0.628319, 86400, 0, 0, 1, 0, 0, 0),
(140107, 32780, 658, 3, 1, 0, 0, 1018.17, -130.429, 623.537, 0.15708, 86400, 0, 0, 1, 0, 0, 0),
(140108, 32780, 658, 3, 1, 0, 0, 970.95, -128.878, 601.532, 1.64061, 86400, 0, 0, 1, 0, 0, 0),
(140109, 32780, 658, 3, 1, 0, 0, 1048.78, -115.236, 629.419, 0.10472, 86400, 0, 0, 1, 0, 0, 0),
(140110, 32780, 658, 3, 1, 0, 0, 1071.78, -19.1458, 633.174, 0.890118, 86400, 0, 0, 1, 0, 0, 0),
(140111, 32780, 658, 3, 1, 0, 0, 1018.17, -130.429, 623.537, 0.15708, 86400, 0, 0, 1, 0, 0, 0),
(140112, 32780, 658, 3, 1, 0, 0, 1039.86, -115.92, 628.833, 0.890118, 86400, 0, 0, 1, 0, 0, 0),
(140113, 32780, 658, 3, 1, 0, 0, 1068.78, -70.4063, 633.396, 3.66519, 86400, 0, 0, 1, 0, 0, 0),
(140114, 32780, 658, 3, 1, 0, 0, 1082.01, 29.5747, 630.368, 4.08407, 86400, 0, 0, 1, 0, 0, 0),
(140115, 32780, 658, 3, 1, 0, 0, 1056.59, -109.167, 630.891, 0.10472, 86400, 0, 0, 1, 0, 0, 0),
(140116, 32780, 658, 3, 1, 0, 0, 1073.6, 89.8524, 631.606, 0.890118, 86400, 0, 0, 1, 0, 0, 0),
(140117, 32780, 658, 3, 1, 0, 0, 1048.78, -115.236, 629.419, 0.10472, 86400, 0, 0, 1, 0, 0, 0),
(140118, 32780, 658, 3, 1, 0, 0, 1068.78, -70.4063, 633.396, 3.66519, 86400, 0, 0, 1, 0, 0, 0),
(140119, 32780, 658, 3, 1, 0, 0, 1070.19, 8.39063, 635.596, 0.628319, 86400, 0, 0, 1, 0, 0, 0),
(140120, 32780, 658, 3, 1, 0, 0, 1070.62, -84.4514, 633.036, 0.10472, 86400, 0, 0, 1, 0, 0, 0),
(140121, 32780, 658, 3, 1, 0, 0, 948.851, -111.17, 595.13, 1.64061, 86400, 0, 0, 1, 0, 0, 0),
(140122, 32780, 658, 3, 1, 0, 0, 1070.62, -84.4514, 633.036, 0.10472, 86400, 0, 0, 1, 0, 0, 0),
(140123, 32780, 658, 3, 1, 0, 0, 981.66, -134.417, 607.866, 1.64061, 86400, 0, 0, 1, 0, 0, 0),
(140124, 32780, 658, 3, 1, 0, 0, 1050.19, 109.042, 628.479, 5.5676, 86400, 0, 0, 1, 0, 0, 0),
(140125, 32780, 658, 3, 1, 0, 0, 1074.6, 71.1458, 631.068, 0.628319, 86400, 0, 0, 1, 0, 0, 0),
(140126, 32780, 658, 3, 1, 0, 0, 1027.41, -134.373, 624.973, 2.84489, 86400, 0, 0, 1, 0, 0, 0),
(140127, 32780, 658, 3, 1, 0, 0, 1068.64, 27.0972, 631.282, 4.08407, 86400, 0, 0, 1, 0, 0, 0),
(140128, 32780, 658, 3, 1, 0, 0, 1059.43, -39.0729, 633.943, 0.628319, 86400, 0, 0, 1, 0, 0, 0),
(140129, 32780, 658, 3, 1, 0, 0, 1015.34, -122.51, 622.795, 3.7001, 86400, 0, 0, 1, 0, 0, 0),
(140130, 32780, 658, 3, 1, 0, 0, 1041.45, -125.929, 627.413, 3.59538, 86400, 0, 0, 1, 0, 0, 0),
(140131, 32780, 658, 3, 1, 0, 0, 990.997, -124.531, 609.625, 1.64061, 86400, 0, 0, 1, 0, 0, 0),
(140132, 32780, 658, 3, 1, 0, 0, 1059.53, 59.9618, 631.987, 0.628319, 86400, 0, 0, 1, 0, 0, 0),
(140133, 32780, 658, 3, 1, 0, 0, 1037.52, -125.868, 627.045, 2.94961, 86400, 0, 0, 1, 0, 0, 0),
(140134, 32780, 658, 3, 1, 0, 0, 951.469, -96.0486, 595.238, 1.64061, 86400, 0, 0, 1, 0, 0, 0),
(140135, 32780, 658, 3, 1, 0, 0, 1069.24, -10.6545, 633.781, 0.628319, 86400, 0, 0, 1, 0, 0, 0),
(140136, 32780, 658, 3, 1, 0, 0, 1048.78, -115.236, 629.419, 0.10472, 86400, 0, 0, 1, 0, 0, 0),
(140137, 32780, 658, 3, 1, 0, 0, 1066.98, 43.559, 630.154, 0.506145, 86400, 0, 0, 1, 0, 0, 0),
(140138, 32780, 658, 3, 1, 0, 0, 1069.6, 38.2292, 629.868, 4.95674, 86400, 0, 0, 1, 0, 0, 0),
(140139, 32780, 658, 3, 1, 0, 0, 996.191, -138.967, 615.289, 2.07694, 86400, 0, 0, 1, 0, 0, 0),
(140140, 32780, 658, 3, 1, 0, 0, 1069.48, -85.151, 633.061, 4.2237, 86400, 0, 0, 1, 0, 0, 0),
(140141, 32780, 658, 3, 1, 0, 0, 1056.59, -109.167, 630.891, 0.10472, 86400, 0, 0, 1, 0, 0, 0),
(140142, 32780, 658, 3, 1, 0, 0, 1010.18, -141.198, 621.042, 2.49582, 86400, 0, 0, 1, 0, 0, 0),
(140143, 32780, 658, 3, 1, 0, 0, 1000.3, -126.005, 615.862, 2.07694, 86400, 0, 0, 1, 0, 0, 0),
(140144, 32780, 658, 3, 1, 0, 0, 1029.76, -114.705, 626.664, 2.94961, 86400, 0, 0, 1, 0, 0, 0),
(140145, 32780, 658, 3, 1, 0, 0, 1010.18, -141.198, 621.042, 2.49582, 86400, 0, 0, 1, 0, 0, 0),
(140146, 32780, 658, 3, 1, 0, 0, 1008.45, -127.712, 620.498, 2.49582, 86400, 0, 0, 1, 0, 0, 0),
(140147, 32780, 658, 3, 1, 0, 0, 958.288, -120.444, 596.854, 1.64061, 86400, 0, 0, 1, 0, 0, 0),
(140148, 32780, 658, 3, 1, 0, 0, 1083.67, 6.56424, 633.7, 0.628319, 86400, 0, 0, 1, 0, 0, 0),
(140149, 32780, 658, 3, 1, 0, 0, 947.764, -97.849, 595.385, 5.74213, 86400, 0, 0, 1, 0, 0, 0),
(140150, 32780, 658, 3, 1, 0, 0, 958.288, -120.444, 596.854, 1.64061, 86400, 0, 0, 1, 0, 0, 0),
(140151, 32780, 658, 3, 1, 0, 0, 1068.78, -70.4063, 633.396, 3.66519, 86400, 0, 0, 1, 0, 0, 0),
(140152, 32780, 658, 3, 1, 0, 0, 1000.3, -126.005, 615.862, 2.07694, 86400, 0, 0, 1, 0, 0, 0),
(140153, 32780, 658, 3, 1, 0, 0, 1076.03, -25.5486, 633.157, 0.628319, 86400, 0, 0, 1, 0, 0, 0),
(140154, 32780, 658, 3, 1, 0, 0, 966.177, -115.295, 597.076, 5.74213, 86400, 0, 0, 1, 0, 0, 0),
(140155, 32780, 658, 3, 1, 0, 0, 1070.19, 8.39063, 635.596, 0.628319, 86400, 0, 0, 1, 0, 0, 0),
(140156, 32780, 658, 3, 1, 0, 0, 1027.41, -134.373, 624.973, 2.84489, 86400, 0, 0, 1, 0, 0, 0),
(140157, 32780, 658, 3, 1, 0, 0, 1069.37, -52.0087, 633.837, 4.5204, 86400, 0, 0, 1, 0, 0, 0),
(140158, 32780, 658, 3, 1, 0, 0, 1060.12, 88.0052, 630.991, 0.890118, 86400, 0, 0, 1, 0, 0, 0),
(140159, 32780, 658, 3, 1, 0, 0, 990.997, -124.531, 609.625, 1.64061, 86400, 0, 0, 1, 0, 0, 0),
(140160, 32780, 658, 3, 1, 0, 0, 1064.83, -44.6389, 634.187, 0.890118, 86400, 0, 0, 1, 0, 0, 0),
(140161, 32780, 658, 3, 1, 0, 0, 1039.86, -115.92, 628.833, 0.890118, 86400, 0, 0, 1, 0, 0, 0),
(140162, 32780, 658, 3, 1, 0, 0, 1060.12, 88.0052, 630.991, 0.890118, 86400, 0, 0, 1, 0, 0, 0),
(140163, 32780, 658, 3, 1, 0, 0, 980.286, -118.993, 601.536, 1.64061, 86400, 0, 0, 1, 0, 0, 0),
(140164, 32780, 658, 3, 1, 0, 0, 1037.52, -125.868, 627.045, 2.94961, 86400, 0, 0, 1, 0, 0, 0),
(140165, 32780, 658, 3, 1, 0, 0, 1062.55, -23.7222, 634.076, 0.628319, 86400, 0, 0, 1, 0, 0, 0);


-- ### Ruins of AQ ###
-- Rajaxx army
DELETE FROM creature WHERE guid IN (
 140166, 140167, 140168, 140169, 140170, 140171, 140172, 140173, 140174,
 140175, 140176, 140177, 140178, 140179, 140180, 140181, 140182, 140183,
 140184, 140185, 140186, 140187, 140188, 140189, 140190, 140191, 140192,
 140193, 140194, 140195, 140196, 140197, 140198, 140199, 140200, 140201,
 140202, 140203, 140204, 140205, 140206, 140207, 140208, 140209, 140210,
 140211, 140212, 140213, 140214, 140215, 140216, 90871);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(140166, 15344, 509, 1, 1, 0, 0, -8991.14551, 1553.998, 21.6539383, 2.77507353, 604800, 0, 0, 12576, 0, 0, 0),
(140167, 15344, 509, 1, 1, 0, 0, -9003.747, 1536.15833, 21.4696579, 2.63544726, 604800, 0, 0, 12576, 0, 0, 0),
(140168, 15344, 509, 1, 1, 0, 0, -9012.13, 1608.7738, 24.8693237, 3.14159274, 604800, 0, 0, 12576, 0, 0, 0),
(140169, 15344, 509, 1, 1, 0, 0, -9014.358, 1597.68347, 21.4696732, 3.03687286, 604800, 0, 0, 12576, 0, 0, 0),
(140170, 15344, 509, 1, 1, 0, 0, -9020.146, 1586.73157, 21.4696712, 2.94960642, 604800, 0, 0, 12576, 0, 0, 0),
(140171, 15344, 509, 1, 1, 0, 0, -9022.039, 1612.04553, 22.807291, 3.159046, 604800, 0, 0, 12576, 0, 0, 0),
(140172, 15344, 509, 1, 1, 0, 0, -9022.71, 1505.87793, 21.5596066, 2.40855432, 604800, 0, 0, 12576, 0, 0, 0),
(140173, 15344, 509, 1, 1, 0, 0, -9029.94, 1498.07739, 22.1401443, 2.338741, 604800, 0, 0, 12576, 0, 0, 0),
(140174, 15344, 509, 1, 1, 0, 0, -9031.986, 1592.26257, 21.469677, 2.984513, 604800, 0, 0, 12576, 0, 0, 0),
(140175, 15344, 509, 1, 1, 0, 0, -9038.44, 1491.03735, 23.2295685, 2.268928, 604800, 0, 0, 12576, 0, 0, 0),
(140176, 15344, 509, 1, 1, 0, 0, -9070.706, 1634.37122, 21.481163, 3.49065852, 604800, 0, 0, 12576, 0, 0, 0),
(140177, 15344, 509, 1, 1, 0, 0, -9071.044, 1622.144, 21.4696922, 3.33357882, 604800, 0, 0, 12576, 0, 0, 0),
(140178, 15344, 509, 1, 1, 0, 0, -9071.757, 1611.27734, 21.4721031, 3.17649913, 604800, 0, 0, 12576, 0, 0, 0),
(140179, 15344, 509, 1, 1, 0, 0, -9076.421, 1530.23022, 21.4696655, 2.23402143, 604800, 0, 0, 12576, 0, 0, 0),
(140180, 15344, 509, 1, 1, 0, 0, -9078.797, 1622.79907, 21.46967, 3.36848545, 604800, 0, 0, 12576, 0, 0, 0),
(140181, 15344, 509, 1, 1, 0, 0, -9083.137, 1524.75928, 21.4696636, 2.146755, 604800, 0, 0, 12576, 0, 0, 0),
(140182, 15344, 509, 1, 1, 0, 0, -9091.763, 1519.3667, 21.4696636, 2.05948853, 604800, 0, 0, 12576, 0, 0, 0),
(140183, 15344, 509, 1, 1, 0, 0, -9092.34, 1586.273, 21.4696388, 2.687807, 604800, 0, 0, 12576, 0, 0, 0),
(140184, 15344, 509, 1, 1, 0, 0, -9097.289, 1578.36, 21.4696426, 2.51327419, 604800, 0, 0, 12576, 0, 0, 0),
(140185, 15344, 509, 1, 1, 0, 0, -9102.547, 1569.41711, 21.4757042, 2.32128787, 604800, 0, 0, 12576, 0, 0, 0),
(140186, 15344, 509, 1, 1, 0, 0, -9113.942, 1546.056, 21.46964, 1.95476878, 604800, 0, 0, 12576, 0, 0, 0),
(140187, 15344, 509, 1, 1, 0, 0, -9132.825, 1539.0968, 21.46964, 1.65806282, 604800, 0, 0, 12576, 0, 0, 0),
(140188, 15341, 509, 1, 1, 0, 0, -9129.72949, 1602.50293, 26.5440731, 5.532694, 604800, 0, 0, 416375, 0, 0, 0),
(140189, 15385, 509, 1, 1, 0, 0, -9108.294, 1584.17126, 21.47101, 5.75958633, 604800, 0, 0, 56627, 0, 0, 0),
(140190, 15386, 509, 1, 1, 0, 0, -9085.032, 1622.4032, 21.4696522, 3.36848545, 604800, 0, 0, 56627, 0, 0, 0),
(140191, 15387, 509, 1, 1, 0, 0, -8994.835, 1542.26868, 21.648632, 2.70526028, 604800, 0, 0, 31440, 0, 0, 0),
(140192, 15387, 509, 1, 1, 0, 0, -8998.049, 1560.14709, 22.1308117, 2.80998015, 604800, 0, 0, 31440, 0, 0, 0),
(140193, 15387, 509, 1, 1, 0, 0, -9001.262, 1549.051, 22.0208645, 2.72271371, 604800, 0, 0, 31440, 0, 0, 0),
(140194, 15387, 509, 1, 1, 0, 0, -9010.698, 1542.4668, 21.4696655, 2.65290046, 604800, 0, 0, 31440, 0, 0, 0),
(140195, 15387, 509, 1, 1, 0, 0, -9023.852, 1601.583, 21.4696674, 3.07177949, 604800, 0, 0, 31440, 0, 0, 0),
(140196, 15387, 509, 1, 1, 0, 0, -9030.075, 1512.30933, 21.47057, 2.40855432, 604800, 0, 0, 31440, 0, 0, 0),
(140197, 15387, 509, 1, 1, 0, 0, -9038.825, 1505.31726, 21.5906277, 2.338741, 604800, 0, 0, 31440, 0, 0, 0),
(140198, 15387, 509, 1, 1, 0, 0, -9046.502, 1498.26416, 22.0108013, 2.268928, 604800, 0, 0, 31440, 0, 0, 0),
(140199, 15387, 509, 1, 1, 0, 0, -9066.888, 1521.481, 21.46966, 2.25147462, 604800, 0, 0, 31440, 0, 0, 0),
(140200, 15387, 509, 1, 1, 0, 0, -9074.003, 1515.23511, 21.469656, 2.16420817, 604800, 0, 0, 31440, 0, 0, 0),
(140201, 15387, 509, 1, 1, 0, 0, -9078.066, 1635.03418, 21.4696655, 3.54301834, 604800, 0, 0, 31440, 0, 0, 0),
(140202, 15387, 509, 1, 1, 0, 0, -9080.052, 1612.09338, 21.4696541, 3.19395256, 604800, 0, 0, 31440, 0, 0, 0),
(140203, 15387, 509, 1, 1, 0, 0, -9082.668, 1510.19409, 21.5131187, 2.07694173, 604800, 0, 0, 31440, 0, 0, 0),
(140204, 15387, 509, 1, 1, 0, 0, -9098.183, 1589.87793, 21.4699821, 2.70526028, 604800, 0, 0, 31440, 0, 0, 0),
(140205, 15387, 509, 1, 1, 0, 0, -9102.671, 1581.55652, 21.470974, 2.49582076, 604800, 0, 0, 31440, 0, 0, 0),
(140206, 15387, 509, 1, 1, 0, 0, -9107.887, 1574.311, 21.48627, 2.30383468, 604800, 0, 0, 31440, 0, 0, 0),
(140207, 15387, 509, 1, 1, 0, 0, -9117.37, 1553.28259, 21.469635, 1.93731546, 604800, 0, 0, 31440, 0, 0, 0),
(140208, 15387, 509, 1, 1, 0, 0, -9123.583, 1541.5531, 21.469635, 1.79768908, 604800, 0, 0, 31440, 0, 0, 0),
(140209, 15387, 509, 1, 1, 0, 0, -9125.76, 1549.29321, 21.4696388, 1.78023577, 604800, 0, 0, 31440, 0, 0, 0),
(140210, 15387, 509, 1, 1, 0, 0, -9134.138, 1546.722, 21.46964, 1.6406095, 604800, 0, 0, 31440, 0, 0, 0),
(140211, 15388, 509, 1, 1, 0, 0, -9127.978, 1558.54346, 21.6878548, 1.79768908, 604800, 0, 0, 56627, 0, 0, 0),
(140212, 15389, 509, 1, 1, 0, 0, -9033.166, 1604.65918, 21.4696712, 3.08923268, 604800, 0, 0, 56627, 0, 0, 0),
(140213, 15390, 509, 1, 1, 0, 0, -9087.008, 1530.26331, 21.4696674, 2.146755, 604800, 0, 0, 56627, 0, 0, 0),
(140214, 15391, 509, 1, 1, 0, 0, -9007.403, 1556.87366, 21.6038952, 5.51524, 604800, 0, 0, 56627, 0, 0, 0),
(140215, 15392, 509, 1, 1, 0, 0, -9041.356, 1512.57971, 21.4748135, 2.338741, 604800, 0, 0, 56627, 0, 0, 0),
(140216, 15426, 509, 1, 1, 0, 0, -8680.658, 1585.614, 33.19108, 2.54818058, 120, 0, 0, 4120, 0, 0, 0);
-- Other AQ entrance spawns
DELETE FROM creature WHERE guid IN (
 87512, 86996, 86999, 87000, 87001, 87002, 87004, 86995, 86997,
 86998, 87003, 87517, 87518, 87519, 87520, 87521, 87522, 87523,
 87524, 87525, 87526, 87516, 87513, 87514, 87515, 87006, 87007,
 87013, 87015, 140217, 140218, 140219, 140220, 140221, 140222,
 140223, 140224, 140225, 140226, 140227, 140228, 140229, 140230,
 140231, 140232, 140233, 140234, 140235, 140236, 140237, 140238,
 140239, 140240, 140241, 140242, 140243, 140244, 140245, 140246,
 140247, 140248, 140249, 140250, 140251, 140252, 140253, 140254,
 140255, 140256, 140257, 140258, 140259, 140260, 140261, 140262,
 140263, 140264, 140265, 140266, 140267, 140268, 140269, 140270,
 140271, 140272, 140273, 140274, 140275, 140276, 140277, 140278,
 140279, 140280, 140281, 140282, 140283, 140284, 140285);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(140217, 15168, 509, 1, 1, 0, 0, -8532.814, 1467.02734, 31.9923, 6.23082542, 687, 0, 0, 5228, 0, 0, 0),
(140218, 15168, 509, 1, 1, 0, 0, -8566.46, 1399.41907, 31.99033, 3.21140575, 687, 0, 0, 5228, 0, 0, 0),
(140219, 15168, 509, 1, 1, 0, 0, -8600.136, 1466.58667, 31.9903336, 2.18166161, 687, 0, 0, 5228, 0, 0, 0),
(140220, 15168, 509, 1, 1, 0, 0, -8600.325, 1600.61743, 31.99035, 2.024582, 687, 0, 0, 5228, 0, 0, 0),
(140221, 15168, 509, 1, 1, 0, 0, -8665.976, 1566.63147, 31.99035, 2.39110112, 687, 0, 0, 5228, 0, 0, 0),
(140222, 15168, 509, 1, 1, 0, 0, -8666.028, 1432.58862, 32.650856, 2.00712872, 687, 0, 0, 5228, 0, 0, 0),
(140223, 15168, 509, 1, 1, 0, 0, -8666.481, 1667.62451, 21.50361, 6.23082542, 687, 0, 0, 5228, 0, 0, 0),
(140224, 15168, 509, 1, 1, 0, 0, -8666.835, 1499.21179, 32.7247353, 5.253441, 687, 0, 0, 5228, 0, 0, 0),
(140225, 15168, 509, 1, 1, 0, 0, -8733.768, 1600.12366, 21.4697151, 3.24631238, 687, 0, 0, 5228, 0, 0, 0),
(140226, 15168, 509, 1, 1, 0, 0, -8848.906, 1845.95837, 21.4696789, 2.05948853, 687, 0, 0, 5228, 0, 0, 0),
(140227, 15168, 509, 1, 1, 0, 0, -8917.903, 1547.61389, 21.46967, 0.994837642, 687, 0, 0, 5228, 0, 0, 0),
(140228, 15168, 509, 1, 1, 0, 0, -9000.707, 1700.10071, 21.572155, 4.43313646, 687, 0, 0, 5228, 0, 0, 0),
(140229, 15168, 509, 1, 1, 0, 0, -9066.019, 1733.48792, 21.5308647, 3.24631238, 687, 0, 0, 5228, 0, 0, 0),
(140230, 15320, 509, 1, 1, 0, 0, -9193.527, 1459.77893, 21.5113316, 4.20948029, 3520, 0, 0, 31440, 0, 0, 0),
(140231, 15320, 509, 1, 1, 0, 0, -9224.242, 1384.02368, 21.4696732, 3.19395256, 3520, 0, 0, 31440, 0, 0, 0),
(140232, 15323, 509, 1, 1, 0, 0, -9187.016, 1463.76526, 21.46968, 1.18682384, 3520, 0, 0, 15720, 0, 0, 0),
(140233, 15323, 509, 1, 1, 0, 0, -9189.154, 1452.47681, 21.5291882, 2.05948853, 3520, 0, 0, 15720, 0, 0, 0),
(140234, 15323, 509, 1, 1, 0, 0, -9227.635, 1391.40747, 21.4067383, 4.16572, 3520, 0, 0, 15720, 0, 0, 0),
(140235, 15324, 509, 1, 1, 0, 0, -8517.444, 1505.66089, 33.3647461, 0.837758064, 450, 0, 0, 50304, 0, 0, 0),
(140236, 15324, 509, 1, 1, 0, 0, -8531.85449, 1515.68921, 33.2643661, 0.7679449, 450, 0, 0, 50304, 0, 0, 0),
(140237, 15324, 509, 1, 1, 0, 0, -8693.788, 1565.82275, 31.9903431, 5.358161, 450, 0, 0, 50304, 0, 0, 0),
(140238, 15324, 509, 1, 1, 0, 0, -8706.14551, 1552.28467, 31.9903431, 5.41052055, 450, 0, 0, 50304, 0, 0, 0),
(140239, 15324, 509, 1, 1, 0, 0, -9053.818, 1664.35608, 22.9385014, 3.996804, 450, 0, 0, 50304, 0, 0, 0),
(140240, 15324, 509, 1, 1, 0, 0, -9067.317, 1673.46362, 23.0714951, 4.310963, 450, 0, 0, 50304, 0, 0, 0),
(140241, 15324, 509, 1, 1, 0, 0, -9148.94, 1510.31958, 21.9923229, 0.942477763, 450, 0, 0, 50304, 0, 0, 0),
(140242, 15324, 509, 1, 1, 0, 0, -9162.49, 1518.79785, 22.7808952, 0.2268928, 450, 0, 0, 50304, 0, 0, 0),
(140243, 15325, 509, 1, 1, 0, 0, -8542.542, 1478.01135, 31.99035, 4.066617, 3520, 0, 0, 25152, 0, 0, 0),
(140244, 15325, 509, 1, 1, 0, 0, -8545.161, 1437.03333, 31.9903412, 4.485496, 3520, 0, 0, 25152, 0, 0, 0),
(140245, 15325, 509, 1, 1, 0, 0, -8547.503, 1476.40784, 31.99035, 1.76278257, 3520, 0, 0, 25152, 0, 0, 0),
(140246, 15325, 509, 1, 1, 0, 0, -8551.956, 1439.40491, 31.9903412, 0.436332315, 3520, 0, 0, 25152, 0, 0, 0),
(140247, 15325, 509, 1, 1, 0, 0, -8582.967, 1599.10559, 32.03201, 4.683506, 3520, 0, 0, 25152, 0, 0, 0),
(140248, 15325, 509, 1, 1, 0, 0, -8592.638, 1388.10535, 32.4094276, 1.5279367, 3520, 0, 0, 25152, 0, 0, 0),
(140249, 15325, 509, 1, 1, 0, 0, -8592.861, 1599.39282, 32.03201, 4.68348837, 3520, 0, 0, 25152, 0, 0, 0),
(140250, 15325, 509, 1, 1, 0, 0, -8602.438, 1388.502, 32.0320053, 1.54599476, 3520, 0, 0, 25152, 0, 0, 0),
(140251, 15325, 509, 1, 1, 0, 0, -8616.94, 1514.72449, 32.1833763, 0.5061455, 3520, 0, 0, 25152, 0, 0, 0),
(140252, 15325, 509, 1, 1, 0, 0, -8619.925, 1517.49768, 32.1942825, 4.276057, 3520, 0, 0, 25152, 0, 0, 0),
(140253, 15325, 509, 1, 1, 0, 0, -8652.172, 1472.902, 32.00608, 0.7066829, 3520, 0, 0, 25152, 0, 0, 0),
(140254, 15325, 509, 1, 1, 0, 0, -8665.912, 1446.73755, 32.0319366, 0.976359665, 3520, 0, 0, 25152, 0, 0, 0),
(140255, 15325, 509, 1, 1, 0, 0, -8686.131, 1631.23279, 21.4589176, 0.773305, 3520, 0, 0, 25152, 0, 0, 0),
(140256, 15325, 509, 1, 1, 0, 0, -8718.207, 1592.03784, 21.5113239, 1.21381986, 3520, 0, 0, 25152, 0, 0, 0),
(140257, 15325, 509, 1, 1, 0, 0, -8746.42, 1583.2489, 21.5113163, 1.26603, 3520, 0, 0, 25152, 0, 0, 0),
(140258, 15325, 509, 1, 1, 0, 0, -8764.292, 1584.62585, 21.93258, 5.240745, 3520, 0, 0, 25152, 0, 0, 0),
(140259, 15325, 509, 1, 1, 0, 0, -8767.65, 1610.10815, 21.6571617, 1.43209863, 3520, 0, 0, 25152, 0, 0, 0),
(140260, 15325, 509, 1, 1, 0, 0, -8773.97, 1616.39319, 21.4557762, 1.98607814, 3520, 0, 0, 25152, 0, 0, 0),
(140261, 15325, 509, 1, 1, 0, 0, -8803.79, 1659.90991, 21.43074, 5.53989029, 3520, 0, 0, 25152, 0, 0, 0),
(140262, 15325, 509, 1, 1, 0, 0, -8809.878, 1652.23083, 20.8364429, 5.54377127, 3520, 0, 0, 25152, 0, 0, 0),
(140263, 15327, 509, 1, 1, 0, 0, -8544.797, 1474.65723, 31.9903469, 1.51843643, 3520, 0, 0, 50304, 0, 0, 0),
(140264, 15327, 509, 1, 1, 0, 0, -8549.29, 1437.00586, 31.9903412, 3.33357882, 3520, 0, 0, 50304, 0, 0, 0),
(140265, 15327, 509, 1, 1, 0, 0, -8587.77051, 1604.1969, 31.9538364, 1.54177248, 3520, 0, 0, 50304, 0, 0, 0),
(140266, 15327, 509, 1, 1, 0, 0, -8597.936, 1369.12415, 32.0320053, 0.568619967, 3520, 0, 0, 50304, 0, 0, 0),
(140267, 15327, 509, 1, 1, 0, 0, -8619.192, 1514.308, 32.13796, 1.71042264, 3520, 0, 0, 50304, 0, 0, 0),
(140268, 15327, 509, 1, 1, 0, 0, -8667.241, 1453.61023, 32.0313339, 0.97637707, 3520, 0, 0, 50304, 0, 0, 0),
(140269, 15327, 509, 1, 1, 0, 0, -8704.984, 1614.31421, 21.52147, 0.449097872, 3520, 0, 0, 50304, 0, 0, 0),
(140270, 15327, 509, 1, 1, 0, 0, -8767.041, 1578.56738, 24.7868786, 5.62535858, 3520, 0, 0, 50304, 0, 0, 0),
(140271, 15327, 509, 1, 1, 0, 0, -8789.378, 1598.04419, 21.4997864, 0.05953437, 3520, 0, 0, 50304, 0, 0, 0),
(140272, 15327, 509, 1, 1, 0, 0, -8790.466, 1615.46118, 21.4557762, 4.862016, 3520, 0, 0, 50304, 0, 0, 0),
(140273, 15338, 509, 1, 1, 0, 0, -8790.353, 1982.14624, 21.50979, 1.51484191, 4224, 0, 0, 50300, 12430, 0, 0),
(140274, 15338, 509, 1, 1, 0, 0, -8857.879, 1833.7478, 21.5113354, 0.935567, 4224, 0, 0, 50300, 12430, 0, 0),
(140275, 15338, 509, 1, 1, 0, 0, -8861.802, 2021.67542, 21.7936668, 3.10613513, 4224, 0, 0, 50300, 12430, 0, 0),
(140276, 15338, 509, 1, 1, 0, 0, -8920.27, 1911.372, 21.7708836, 2.567447, 4224, 0, 0, 50300, 12430, 0, 0),
(140277, 15338, 509, 1, 1, 0, 0, -9003.377, 1700.74548, 21.7339611, 5.495585, 4224, 0, 0, 50300, 12430, 0, 0),
(140278, 15338, 509, 1, 1, 0, 0, -9040.843, 1707.05066, 21.5026283, 5.58163357, 4224, 0, 0, 50300, 12430, 0, 0),
(140279, 15338, 509, 1, 1, 0, 0, -9044.094, 1839.80176, 21.51129, 4.052498, 4224, 0, 0, 50300, 12430, 0, 0),
(140280, 15343, 509, 1, 1, 0, 0, -8600.617, 1483.54907, 32.8614044, 3.00196624, 3520, 0, 0, 25152, 0, 0, 0),
(140281, 15343, 509, 1, 1, 0, 0, -8612.686, 1446.0426, 31.9903412, 3.01941967, 3520, 0, 0, 25152, 0, 0, 0),
(140282, 15343, 509, 1, 1, 0, 0, -8620.62, 1484.90356, 31.9008865, 6.05629253, 3520, 0, 0, 25152, 0, 0, 0),
(140283, 15343, 509, 1, 1, 0, 0, -8622.461, 1385.46619, 32.0320053, 5.954897, 3520, 0, 0, 25152, 0, 0, 0),
(140284, 15343, 509, 1, 1, 0, 0, -8622.624, 1437.4552, 33.1570053, 0.041267205, 3520, 0, 0, 25152, 0, 0, 0),
(140285, 15343, 509, 1, 1, 0, 0, -8652.897, 1459.57263, 32.0319366, 5.51511765, 3520, 0, 0, 25152, 0, 0, 0);

-- misc changes (Thx @ evil@WoW for pointing & providing part of the dataz)
DELETE FROM conditions WHERE condition_entry = 724;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(724, -1, 229, 114);
UPDATE gossip_menu_option SET condition_id = 724 WHERE menu_id = 2703 AND id = 0;

DELETE FROM conditions WHERE condition_entry IN (725, 726, 727, 728, 729, 730, 731, 732);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
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
-- crackm
-- add vehicle_id to mount by Amaru
UPDATE creature_template SET vehicle_id = 774 WHERE entry = 40725;
-- misc corrections
UPDATE creature_template SET minlevel = maxlevel WHERE entry IN (24646, 39166, 39167, 39168);
UPDATE creature_template SET minhealth = 55, maxhealth = 64 WHERE entry = 6486;
UPDATE creature_template SET minhealth = 2964, maxhealth = 3100 WHERE entry = 9436;
UPDATE creature_template SET minhealth = 92910, maxhealth = 96100 WHERE entry = 24646;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 85236;
-- AQ40
UPDATE creature_template SET gossip_menu_id = 6644 WHERE entry = 15502;
DELETE FROM gossip_menu WHERE entry = 6644 AND text_id = 8702;
INSERT INTO gossip_menu (entry, text_id, condition_id) VALUES
(6644, 8702, 718);
DELETE FROM gossip_menu_option WHERE menu_id = 6644;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, box_coded, box_money, box_text, condition_id, action_script_id) VALUES
(6644, 0, 0, 'Teleport me to the lair of the Twin Emperors, please.', 1, 1, 0, 0, '', 717, 66441),
(6644, 1, 0, 'Please teleport me to the final chamber.', 1, 1, 0, 0, '', 718, 66442);
DELETE FROM dbscripts_on_gossip WHERE id IN (66441, 66442);
INSERT INTO dbscripts_on_gossip (id, command, datalong, comments) VALUES
(66441, 15, 29182, 'teleport - lair of the Twin Emperors'),
(66442, 15, 29188, 'teleport - final chamber');
DELETE FROM conditions WHERE condition_entry IN (717, 718);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(717, 31, 715, 0),
(718, 31, 716, 0);

-- Gr3zs
-- ## -- Startup errors -- ## --
UPDATE creature_template_addon SET auras = '' WHERE entry IN (24751, 27661, 27662, 28093, 28614, 28616, 29836, 29838, 29982, 30268, 31884, 32222, 34244, 36477, 36658, 38248, 38308, 38309);
UPDATE creature_addon SET auras = '' WHERE guid IN (85150, 85151, 85152, 85153, 85154, 85155, 85156, 85157, 85158, 88541, 88542, 88543, 88546, 88548, 88550, 88553, 88554, 88555, 88558, 88559, 88606, 88609, 125946, 128590, 128591, 128592, 128593, 128595, 128596, 128597, 128598, 128599, 128600, 128616, 128617, 128618, 128619, 128620, 128621, 128622, 128623, 128624, 128625, 128626, 131177, 131178, 131186, 131187, 131748, 132167, 132168, 132169, 132170, 132171, 132172, 132173, 132174, 132175, 132176, 132177, 132178, 132179, 132180, 132181, 133306, 133307, 133326, 133327, 133328, 133329, 133330, 133331, 133416, 133417, 133418, 133419, 133430, 133432, 133433, 133436, 133437);
-- False positives
UPDATE creature_template_addon SET auras='63500 64718' WHERE entry=34244; -- WAS 43671 63500 64718
UPDATE creature_addon SET auras='64718 64723' WHERE guid IN (85151,85156,85157,85158); -- WERE 43671 64718 64723
-- False false positives
-- entry 36477 WAS 46598 69012 69413, all wrong

-- ## -- Forum fixes-- ## --

-- kolkar packhound linked to Kolkar Pack Runner -- thx Axel
DELETE FROM creature_linking WHERE guid IN (20855, 20856, 20857, 20858, 20859, 20863, 20864, 20865, 20866, 20867, 20868, 20869);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(20858, 20566, 515),
(20859, 20567, 515),
(20855, 20563, 515),
(20856, 20564, 515),
(20857, 20565, 515),
(20863, 20568, 515),
(20864, 20569, 515),
(20865, 20570, 515),
(20867, 20571, 515),
(20868, 20572, 515),
(20866, 20573, 515),
(20869, 20574, 515);
-- Kolkar Pack Runner falling under the map -- thx Axel
UPDATE creature SET position_X = -916.169, position_y = -2215.29, position_z = 93.7780 WHERE guid = 20567; 
-- Kolkar Packhound moved for creature_linking -- thx Axel
UPDATE creature SET position_X = -914.714, position_y = -2213.8, position_z = 93.7742 WHERE guid = 20859;
-- Zevra Runner - falling under the map -- thx Axel
UPDATE creature SET position_x = -930.640, position_y = -2202.52, position_z = 91.9847, orientation = 1.314, spawndist = 10, MovementType = 1 WHERE guid = 17450;
UPDATE creature SET position_x = -996.647, position_y = -2236.51, position_z = 92.8457, orientation = 2.009, spawndist = 10, MovementType = 1 WHERE guid = 18552; 
-- Kolkar Bloodcharger linked to Hezrul Bloodmark -- thx Axel
DELETE FROM creature_linking WHERE guid IN (13991, 13992);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(13991, 13990, 515), -- guards
(13992, 13990, 515); -- guards

-- ## -- Quests -- ## --
-- Harlan Needs a Resupply (forum - thx Axel, that he found this bug)
UPDATE creature_movement_template SET orientation = 2.66 WHERE entry = 1433 AND point = 15;

-- The Summoning Chamber (q.10602) -H  (q.10585) -A
DELETE FROM dbscripts_on_event WHERE id = 13980;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13980,1,10,21735,300000,0,0,0,0,0,0,0,-3368.91,2145.37,-8.39026,4.4855,'summon - Infernal Oversoul'),
(13980,1,15,7,0,21207,100,7,0,0,0,0,0,0,0,0,'cast death - 1st target'),
(13980,2,15,7,0,21210,100,7,0,0,0,0,0,0,0,0,'cast death - 2nd target'),
(13980,3,15,7,0,21210,100,7,0,0,0,0,0,0,0,0,'cast death - 3rd target'),
(13980,4,15,7,0,21210,100,7,0,0,0,0,0,0,0,0,'cast death - 4th target'),
(13980,5,15,7,0,21210,100,7,0,0,0,0,0,0,0,0,'cast death - 5th target'),
(13980,6,15,7,0,21210,100,7,0,0,0,0,0,0,0,0,'cast death - 6th target');
-- Infernal Oversoul shouldnt be friendly - must be killed in q.
UPDATE creature_template SET faction_A = 90, faction_H = 90 WHERE entry = 21735;
-- spell should have target
DELETE FROM spell_script_target WHERE entry = 37285;
INSERT INTO spell_script_target (entry,type,targetEntry) VALUES
(37285, 1, 21211);
-- The Fel and the Furious (q.10612) -A (q.10613) -H
DELETE FROM dbscripts_on_quest_start WHERE id IN (10612, 10613);
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10612,1,0,0,0,0,0,0,2000005459,0,0,0,0,0,0,0,''),
(10612,3,1,25,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10613,1,0,0,0,0,0,0,2000005459,0,0,0,0,0,0,0,''),
(10613,3,1,25,0,0,0,0,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 10612 WHERE entry = 10612; -- Alliance
UPDATE quest_template SET StartScript = 10613 WHERE entry = 10613; -- Horde
DELETE FROM db_script_string WHERE entry = 2000005459;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES 
(2000005459,'I\'ve rigged a few control consoles down the slope. Get one quickly and take control of the fel reaver! You\'ll only have a limited amount of time.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
-- fix for fel reaver possession (fixed for both sides -A and -H)
-- spell must have target for possession -A -H 
DELETE FROM spell_script_target WHERE entry IN (38003, 38121, 38123, 38126, 38128,38130);
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES 
(38003, 1, 21949),(38121, 1, 21949),(38123, 1, 21949),(38126, 1, 21949),(38128, 1, 21949),(38130, 1, 21949);
-- link between console and Fel Reaver -A -H 
DELETE FROM dbscripts_on_spell WHERE id IN (38002, 38120, 38122, 38125, 38127, 38129);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(38002,0,15,38003,0,0,0,0,0,0,0,0,0,0,0,0,''),
(38120,0,15,38121,0,0,0,0,0,0,0,0,0,0,0,0,''),
(38122,0,15,38123,0,0,0,0,0,0,0,0,0,0,0,0,''),
(38125,0,15,38126,0,0,0,0,0,0,0,0,0,0,0,0,''),
(38127,0,15,38128,0,0,0,0,0,0,0,0,0,0,0,0,''),
(38129,0,15,38130,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- 38055 casted by us should trigger 38054(with target script 184979)
DELETE FROM dbscripts_on_spell WHERE id = 38055;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(38055,0,15,38054,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM spell_script_target WHERE entry = 38054;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES 
(38054, 0, 184979);
-- activated gobject should force our possessed npc to cast kill credit on himself
DELETE FROM dbscripts_on_go_template_use WHERE id = 184979;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(184979,0,31,21949,20,0,0,0,0,0,0,0,0,0,0,0,''), -- prevent from any error logs if player use object
(184979,1,15,38022,0,21949,20,15,0,0,0,0,0,0,0,0,'');
-- Fel Reaver Sentinel - updates
UPDATE creature_template SET faction_A = 14, faction_H = 14, unit_flags = 256, speed_walk = 2.1, speed_run = 1.7 WHERE entry = 21949;
-- Pusillin (Dire Maul) - scripted
UPDATE creature SET MovementType = 2,spawndist = 0 WHERE guid = 125700;
DELETE FROM creature_movement WHERE id = 125700;
UPDATE creature_template SET MovementType = 2, speed_run = 1.3, faction_A = 35, faction_H = 35 WHERE entry = 14354; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 14354;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
-- WPs
(14354,1,87.6813,-198.631,-4.13498,1000,1435401,0,0,0,0,0,0,0,0,5.82043,0,0), -- paused untill gossip will be activated
(14354,2,-161.902,-199.74,-4.15296,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,3,-150.171,-278.348,-4.14787,1000,1435402,0,0,0,0,0,0,0,0,0,0,0), -- 'Pusillin first stop'
(14354,4,-153.059,-302.431,-4.14555,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,5,-139.489,-315.995,-4.08367,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,6,-153.976,-350.542,-4.15124,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,7,-78.3584,-348.637,-4.06238,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,8,-22.424,-353.666,-4.10318,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,9,82.9147,-348.141,-4.0564,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,10,110.87,-358.995,-4.14949,1000,1435402,0,0,0,0,0,0,0,0,0,0,0), -- 'Pusillin second stop'
(14354,11,111.679,-468.421,-2.71884,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,12,111.693,-485.157,-6.84356,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,13,111.718,-515.394,-6.91479,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,14,111.73,-529.729,-10.8699,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,15,106.518,-539.857,-11.0802,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,16,92.8557,-545.29,-11.0808,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,17,79.3301,-544.812,-15.0739,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,18,67.4017,-548.451,-15.2879,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,19,55.4995,-557.068,-19.2782,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,20,50.3342,-566.387,-19.4475,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,21,50.0126,-585.944,-23.5729,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,22,51.0541,-633.703,-25.1224,1000,1435402,0,0,0,0,0,0,0,0,0,0,0), -- 'Pusillin third stop'
(14354,23,30.5916,-688.038,-25.1611,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,24,3.28358,-700.483,-25.1611,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,25,2.90135,-668.58,-12.6426,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,26,16.8739,-671.39,-12.6426,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,27,16.4463,-703.771,-12.6426,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,28,8.53742,-704.414,-12.6426,1000,1435402,0,0,0,0,0,0,0,0,0,0,0); -- 'Pusillin fourth stop'
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1435401, 1435402); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1435401,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'PAUSE ON'),
(1435401,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1435402,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'PAUSE ON'),
(1435402,0,29,3,0x01,0,0,0,0,0,0,0,0,0,0,0,'npc_flag added');
-- gossip
DELETE FROM gossip_menu WHERE entry = 5709; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(5709, 6877, 0, 719),
(5709, 6878, 0, 720),
(5709, 6879, 0, 721),
(5709, 6880, 0, 722),
(5709, 6881, 0, 723);
DELETE FROM gossip_menu_option WHERE menu_id = 5709; 
INSERT INTO gossip_menu_option (menu_id, id, option_text, option_id, npc_option_npcflag, action_menu_id, action_script_id, condition_id) VALUES
(5709, 0, 'Game? Are you crazy?', 1, 1, -1, 570901, 719),
(5709, 1, 'Why you little...', 1, 1, -1, 570902, 720),
(5709, 2, 'Mark my words, I will catch you, imp. And when I do!', 1, 1, -1, 570903, 721),
(5709, 3, 'DIE!', 1, 1, -1, 570904, 722),
(5709, 4, 'Prepare to meet your maker.', 1, 1, -1, 570905, 723);
DELETE FROM conditions WHERE condition_entry IN (719, 720, 721, 722, 723); 
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(719, 33, 1, 0), -- wp0 
(720, 33, 3, 0), -- on wp 3
(721, 33, 10, 0), -- on wp 12
(722, 33, 22, 0), -- on wp 22
(723, 33, 28, 0); -- on wp 28
DELETE FROM dbscripts_on_gossip WHERE id IN (570901, 570902, 570903, 570904, 570905); 
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(570901,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,'UNPAUSE'),
(570901,0,29,3,0x02,0,0,0,0,0,0,0,0,0,0,0,'npc_flag removed'),
(570901,1,0,0,0,0,0,0,2000005460,0,0,0,0,0,0,0,''),
(570902,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,'UNPAUSE'),
(570902,0,29,3,0x02,0,0,0,0,0,0,0,0,0,0,0,'npc_flag removed'),
(570902,1,0,0,0,0,0,0,2000005461,0,0,0,0,0,0,0,''),
(570903,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,'UNPAUSE'),
(570903,0,29,3,0x02,0,0,0,0,0,0,0,0,0,0,0,'npc_flag removed'),
(570903,1,0,0,0,0,0,0,2000005462,0,0,0,0,0,0,0,''),
(570904,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,'UNPAUSE'),
(570904,0,29,3,0x02,0,0,0,0,0,0,0,0,0,0,0,'npc_flag removed'),
(570904,1,0,0,0,0,0,0,2000005463,0,0,0,0,0,0,0,''),
(570905,0,29,3,0x02,0,0,0,0,0,0,0,0,0,0,0,'npc_flag removed'),
(570905,1,0,0,0,0,0,0,2000005464,0,0,0,0,0,0,0,''),
(570905,3,10,13276,120000,0,0,0,0,0,0,0,14.7965,-696.322,-12.6426,4.4823,'summon - Wildspawn Imp'),
(570905,3,10,13276,120000,0,0,0,0,0,0,0,18.8891,-697.389,-12.6426,4.35271,'summon - Wildspawn Imp'),
(570905,3,10,13276,120000,0,0,0,0,0,0,0,21.4274,-700.227,-12.6426,4.06997,'summon - Wildspawn Imp'),
(570905,3,10,13276,120000,0,0,0,0,0,0,0,22.2017,-705.459,-12.6426,3.48092,'summon - Wildspawn Imp'),
(570905,4,15,22735,0,0,0,0,0,0,0,0,0,0,0,0,'TRANSFORM'),
(570905,4,22,90,0x01,0,0,0,0,0,0,0,0,0,0,0,'set DemonFaction');
DELETE FROM db_script_string WHERE entry BETWEEN 2000005460 AND 2000005464;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(2000005460,'If you want the key, you\'ll have to catch me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005461,'Chase me if you dare! I run without a care!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005462,'Why would you ever want to harm me!? Come. Friends we can be!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005463,'DIE?! You make Pusillin cry!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005464,'Say hello to my little friends!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- Dissension Amongst the Ranks... (q.10769) -H  (q.10776) -A
DELETE FROM dbscripts_on_spell WHERE id = 38223; 
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(38223,0,8,22051,1,0,0,0,0,0,0,0,0,0,0,0,'Quest Credit: Crazed Colossus');

-- Teron Gorefiend, I am...(q.10639) -H  (q.10645) -A
DELETE FROM dbscripts_on_quest_start WHERE id = 10639;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10639,0,0,0,0,0,0,0,2000000031,0,0,0,0,0,0,0,''),
(10639,3,23,21867,0,21797,50,5,0,0,0,0,0,0,0,0,''),
(10639,5,10,21877,300000,0,0,0,0,0,0,0,-4536.58,1028.76,8.8266,3.72963,'summon - Karsius the Ancient Watcher'),
(10639,8,0,4,0,21872,40,0,2000005473,0,0,0,0,0,0,0,''),
(10639,9,22,90,0x01,21877,50,7,0,0,0,0,0,0,0,0,'temp faction');
UPDATE quest_template SET StartScript = 10639 WHERE entry = 10645; -- Alliance
UPDATE quest_template SET StartScript = 10639 WHERE entry = 10613; -- Horde
UPDATE dbscripts_on_event SET datalong2 = 300000 WHERE id = 14092; -- aura works 5min. so event should do the same
DELETE FROM db_script_string WHERE entry = 2000005473;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(2000005473,'Waste no time, fool! Use our power to kill those what stand in our way! Destroy Krasius before you are subdued!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
-- Ancient Shadowmoon Spirit - updates
UPDATE creature SET position_x = -4543.69, position_y = 1022.35, position_z = 9.979, orientation = 3.874631, spawntimesecs = 30 WHERE guid = 86139;
UPDATE creature_template_addon SET b2_0_sheath = 0, auras = '37497 37509 37728' WHERE entry = 21797;
UPDATE spell_script_target SET targetEntry = 21797 WHERE entry = 37748; -- wrong target was set
-- The Voice of Gorefiend
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid = 76573;
-- Karsius the Ancient Watcher
UPDATE creature_template SET MovementType = 0, equipment_id = 1833 WHERE entry = 21877;
UPDATE creature_template_addon SET emote = 333 WHERE entry = 21877;
-- Chain of Shadows - updates
UPDATE creature_template SET MovementType = 0, InhabitType = 4 WHERE entry = 21876;
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE id = 21876;
DELETE FROM creature_linking_template WHERE entry = 21876; -- link between Karsius the Ancient Watcher and Chain of Shadows 
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(21876, 530, 21877, 16, 100);
DELETE FROM spell_script_target WHERE entry = 37784; -- spell should have target
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(37784, 1, 21797);
-- Teron Gorefiend - update
UPDATE creature_template SET MovementType = 2, equipment_id = 321, speed_run = 1.5 WHERE entry = 21867;
UPDATE creature_template_addon SET mount = 10720 WHERE entry = 21867;  -- need his mount 
DELETE FROM creature_movement_template WHERE entry = 21867;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(21867,1,-4542.21,1023.72,9.66909,17000,2186701,0,0,0,0,0,0,0,0,0.864165,0,0),
(21867,2,-4527.459473,1015.657593,10.890298,0,0,0,0,0,0,0,0,0,0,5.282815,0,0),
(21867,3,-4520.572266,1000.627075,12.485450,0,0,0,0,0,0,0,0,0,0,4.782524,0,0),
(21867,4,-4521.288086,982.703003,11.543771,0,0,0,0,0,0,0,0,0,0,4.804492,0,0),
(21867,5,-4519.058594,964.810120,12.235850,0,0,0,0,0,0,0,0,0,0,4.878321,0,0),
(21867,6,-4512.545410,944.781250,4.226434,0,0,0,0,0,0,0,0,0,0,4.973356,0,0),
(21867,7,-4505.491211,931.839050,-0.856650,0,0,0,0,0,0,0,0,0,0,5.517634,0,0),
(21867,8,-4493.015625,922.165771,5.736859,0,0,0,0,0,0,0,0,0,0,5.511348,0,0),
(21867,9,-4463.642090,907.782104,7.652451,0,0,0,0,0,0,0,0,0,0,5.856919,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2186701; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2186701,0,23,21797,0,21797,100,7,0,0,0,0,0,0,0,0,''),
(2186701,1,18,0,0,21797,100,7,0,0,0,0,0,0,0,0,''),
(2186701,7,0,0,0,0,0,0,2000005471,0,0,0,0,0,0,0,''),
(2186701,8,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2186701,10,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2186701,12,0,6,0,0,0,0,2000005472,0,0,0,0,0,0,0,''),
(2186701,13,1,22,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry IN (2000005471, 2000005472);
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(2000005471,'We will meet again... Someday.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005472,'Death incarnate has been released upon the world once more! Teron Gorefiend has returned...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- ## -- Random updates -- ## --
-- Defias Messenger (Westfall) - update (rubish removed: after new script system was created)
UPDATE dbscripts_on_creature_movement SET datalong = 1, datalong2 = 0  WHERE id = 55001 AND delay = 5;
UPDATE dbscripts_on_creature_movement SET datalong = 0, datalong2 = 0  WHERE id = 55002;
-- new equipment in Netherwing Ledge
DELETE FROM creature_equip_template WHERE entry = 2509;
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES    
(2509, 31601, 0, 0);
DELETE FROM creature_equip_template WHERE entry = 2510;
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES    
(2510, 31603, 31466, 0);
-- new equipment in Ruins of Karabor
DELETE FROM creature_equip_template WHERE entry = 2511;
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES    
(2511, 5956, 24322, 0);

-- small text update in Okla's Event
UPDATE db_script_string SET content_default ='Yes you may, Okla. But do not stray too far from home.' WHERE entry = 2000005321;
-- Edrick Killian -- Undercity
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 38430;
DELETE FROM creature_movement WHERE id = 38430;
UPDATE creature_template SET MovementType = 2 WHERE entry = 5670; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 5670;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(5670,1,1596.405029,363.119293,-62.177650,0,0,0,0,0,0,0,0,0,0,1.277002,0,0),
(5670,2,1600.587769,371.134369,-62.177650,0,0,0,0,0,0,0,0,0,0,0.804196,0,0),
(5670,3,1604.573242,375.022400,-62.177650,0,0,0,0,0,0,0,0,0,0,0.384794,0,0),
(5670,4,1612.855103,375.448364,-62.177650,0,0,0,0,0,0,0,0,0,0,6.163754,0,0),
(5670,5,1629.419556,373.422943,-61.619919,0,0,0,0,0,0,0,0,0,0,6.103280,0,0),
(5670,6,1636.503540,371.630280,-62.031597,0,0,0,0,0,0,0,0,0,0,5.950131,0,0),
(5670,7,1648.593140,366.277405,-62.147816,0,0,0,0,0,0,0,0,0,0,5.690954,0,0),
(5670,8,1650.512939,364.817749,-60.762695,0,0,0,0,0,0,0,0,0,0,5.632050,0,0),
(5670,9,1658.693970,356.650909,-60.746399,0,0,0,0,0,0,0,0,0,0,5.163956,0,0),
(5670,10,1660.307495,351.520935,-60.725143,0,0,0,0,0,0,0,0,0,0,4.732781,0,0),
(5670,11,1659.802246,344.907684,-62.171364,0,0,0,0,0,0,0,0,0,0,4.813679,0,0),
(5670,12,1660.424805,337.392883,-62.172363,0,0,0,0,0,0,0,0,0,0,5.537809,0,0),
(5670,13,1686.193359,312.154358,-62.158852,0,0,0,0,0,0,0,0,0,0,5.632049,0,0),
(5670,14,1693.320801,305.167542,-62.161331,0,0,0,0,0,0,0,0,0,0,5.794629,0,0),
(5670,15,1700.086304,302.831299,-62.170135,0,0,0,0,0,0,0,0,0,0,0.157036,0,0),
(5670,16,1714.190552,304.062317,-61.487946,0,0,0,0,0,0,0,0,0,0,6.012219,0,0),
(5670,17,1720.737305,299.714569,-61.492283,0,0,0,0,0,0,0,0,0,0,5.507210,0,0),
(5670,18,1722.402466,297.283234,-62.177639,0,0,0,0,0,0,0,0,0,0,5.114514,0,0),
(5670,19,1728.375977,279.715546,-62.177864,0,0,0,0,0,0,0,0,0,0,5.010843,0,0),
(5670,20,1729.156250,274.653625,-61.619877,0,0,0,0,0,0,0,0,0,0,4.771299,0,0),
(5670,21,1729.829712,270.673431,-62.055553,0,0,0,0,0,0,0,0,0,0,4.896961,0,0),
(5670,22,1733.395386,254.987732,-62.177433,0,0,0,0,0,0,0,0,0,0,4.790934,0,0),
(5670,23,1731.589600,247.396042,-62.177433,0,0,0,0,0,0,0,0,0,0,4.102143,0,0),
(5670,24,1722.094116,241.103333,-62.177433,0,0,0,0,0,0,0,0,0,0,3.269622,0,0),
(5670,25,1708.783691,237.127625,-62.177433,0,0,0,0,0,0,0,0,0,0,3.199721,0,0),
(5670,26,1667.436035,238.903625,-62.177433,0,0,0,0,0,0,0,0,0,0,2.791315,0,0),
(5670,27,1661.928345,245.750763,-62.177433,0,0,0,0,0,0,0,0,0,0,1.745308,0,0),
(5670,28,1659.920166,263.653625,-62.177433,0,0,0,0,0,0,0,0,0,0,1.928306,0,0),
(5670,29,1652.952759,278.418701,-62.177433,0,0,0,0,0,0,0,0,0,0,2.262100,0,0),
(5670,30,1645.442017,287.234406,-62.181824,0,0,0,0,0,0,0,0,0,0,2.478869,0,0),
(5670,31,1632.756470,298.534302,-62.178776,0,0,0,0,0,0,0,0,0,0,2.689356,0,0),
(5670,32,1621.633545,304.092194,-62.178776,0,0,0,0,0,0,0,0,0,0,3.026292,0,0),
(5670,33,1602.038208,308.263031,-62.178776,0,0,0,0,0,0,0,0,0,0,2.555839,0,0),
(5670,34,1597.119507,314.250580,-62.178776,0,0,0,0,0,0,0,0,0,0,1.932232,0,0),
(5670,35,1595.592285,321.994965,-62.178776,0,0,0,0,0,0,0,0,0,0,1.713891,0,0),
(5670,36,1596.298096,340.950775,-62.178776,0,0,0,0,0,0,0,0,0,0,1.556811,0,0);
DELETE FROM creature_linking_template WHERE entry = 5668; -- Mattie Alred linked to Edrick Killian 
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(5668, 0, 5670, 518, 20);
-- Davitt Hickson -- Undercity
UPDATE creature SET MovementType = 2,spawndist = 0 WHERE guid = 41830;
DELETE FROM creature_movement WHERE id = 41830;
UPDATE creature_template SET MovementType = 2 WHERE entry = 5706; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry =5706;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(5706,1,1596.213379,161.705170,-62.177460,0,0,0,0,0,0,0,0,0,0,1.412201,0,0),
(5706,2,1599.041992,168.373367,-62.177460,0,0,0,0,0,0,0,0,0,0,0.969237,0,0),
(5706,3,1624.806885,177.136841,-62.177460,0,0,0,0,0,0,0,0,0,0,0.604677,0,0),
(5706,4,1635.193481,183.345413,-62.177460,0,0,0,0,0,0,0,0,0,0,0.753903,0,0),
(5706,5,1644.250000,190.512405,-62.181984,0,0,0,0,0,0,0,0,0,0,0.954179,0,0),
(5706,6,1653.079468,198.578018,-62.178810,0,0,0,0,0,0,0,0,0,0,1.236138,0,0),
(5706,7,1658.437866,208.939301,-62.178810,0,0,0,0,0,0,0,0,0,0,1.235352,0,0),
(5706,8,1664.887939,231.188461,-62.178810,0,0,0,0,0,0,0,0,0,0,1.006015,0,0),
(5706,9,1669.192627,236.103745,-62.178810,0,0,0,0,0,0,0,0,0,0,0.369843,0,0),
(5706,10,1683.702148,238.710999,-62.178810,0,0,0,0,0,0,0,0,0,0,6.264256,0,0),
(5706,11,1702.693726,239.171371,-62.178810,0,0,0,0,0,0,0,0,0,0,0.021911,0,0),
(5706,12,1721.727905,238.299728,-62.178810,0,0,0,0,0,0,0,0,0,0,6.009789,0,0),
(5706,13,1728.945801,232.596146,-62.178810,0,0,0,0,0,0,0,0,0,0,5.211829,0,0),
(5706,14,1729.274780,211.525177,-62.178810,0,0,0,0,0,0,0,0,0,0,4.450782,0,0),
(5706,15,1727.064209,203.416824,-61.619919,0,0,0,0,0,0,0,0,0,0,4.311769,0,0),
(5706,16,1720.510010,188.163895,-62.145714,0,0,0,0,0,0,0,0,0,0,4.150070,0,0),
(5706,17,1719.229736,185.943527,-60.760353,0,0,0,0,0,0,0,0,0,0,4.114728,0,0),
(5706,18,1701.347656,159.810822,-60.782578,0,0,0,0,0,0,0,0,0,0,3.857120,0,0),
(5706,19,1671.785645,130.367386,-60.390602,0,0,0,0,0,0,0,0,0,0,3.796644,0,0),
(5706,20,1669.355957,128.857864,-61.481884,0,0,0,0,0,0,0,0,0,0,3.701612,0,0),
(5706,21,1646.949951,113.663521,-62.183788,0,0,0,0,0,0,0,0,0,0,3.546888,0,0),
(5706,22,1630.369995,108.162102,-61.620037,0,0,0,0,0,0,0,0,0,0,3.205240,0,0),
(5706,23,1616.766479,106.218842,-62.177586,0,0,0,0,0,0,0,0,0,0,3.202884,0,0),
(5706,24,1605.792603,106.219116,-62.177586,0,0,0,0,0,0,0,0,0,0,2.770129,0,0),
(5706,25,1599.237915,109.457069,-62.177586,0,0,0,0,0,0,0,0,0,0,2.270616,0,0),
(5706,26,1595.918213,120.261322,-62.177586,0,0,0,0,0,0,0,0,0,0,1.636014,0,0),
(5706,27,1595.887329,130.826263,-62.177586,0,0,0,0,0,0,0,0,0,0,1.608525,0,0);
DELETE FROM creature_linking_template WHERE entry IN (5707, 5701); -- Reginald Grimsford and Selina Pickman linked to Davitt Hickson 
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(5707, 0, 5706, 518, 20),
(5701, 0, 5706, 518, 20);

-- ################################################################################
-- #                                 TBC UPDATES                                  #
-- ################################################################################
-- ## --  Blade's Edge Mountains -- ## --  

-- Treebole - correct spawn point
UPDATE creature SET position_x = 3605.68, position_y = 6836.18, position_z = 137.95, orientation = 4.6 WHERE guid = 77879;
-- Raven's Wood Leafbeard - correct spawn point
UPDATE creature SET position_x = 3479.97, position_y = 6883.62, position_z = 137.97, orientation = 5.86 WHERE guid = 74694;
-- Raven's Wood Stonebark #1 - Raven's Wood
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74684;
DELETE FROM creature_movement WHERE id = 74684;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(74684,1,3335.737305,6896.388672,164.625183,0,0,0,0,0,0,0,0,0,0,4.302203,0,0),
(74684,2,3309.555420,6872.659180,167.787308,0,0,0,0,0,0,0,0,0,0,4.347760,0,0),
(74684,3,3297.825439,6850.702148,169.448059,0,0,0,0,0,0,0,0,0,0,5.040515,0,0),
(74684,4,3299.141357,6824.546875,168.693314,0,0,0,0,0,0,0,0,0,0,5.644480,0,0),
(74684,5,3328.774170,6812.213379,167.769943,0,0,0,0,0,0,0,0,0,0,5.611484,0,0),
(74684,6,3344.035889,6790.651855,168.908035,0,0,0,0,0,0,0,0,0,0,6.045029,0,0),
(74684,7,3371.876953,6798.302734,167.628799,0,0,0,0,0,0,0,0,0,0,0.013177,0,0),
(74684,8,3385.930176,6786.741699,166.810776,0,0,0,0,0,0,0,0,0,0,4.711435,0,0),
(74684,9,3380.581055,6720.467285,168.415115,0,0,0,0,0,0,0,0,0,0,4.104832,0,0),
(74684,10,3361.237793,6697.047852,166.218842,0,0,0,0,0,0,0,0,0,0,4.408246,0,0),
(74684,11,3345.877197,6695.349121,165.911987,0,0,0,0,0,0,0,0,0,0,1.894974,0,0),
(74684,12,3338.582275,6729.638184,166.702728,0,0,0,0,0,0,0,0,0,0,1.565105,0,0),
(74684,13,3347.255615,6777.783203,169.521027,0,0,0,0,0,0,0,0,0,0,0.742217,0,0),
(74684,14,3381.237061,6799.541016,168.211700,0,0,0,0,0,0,0,0,0,0,0.828478,0,0),
(74684,15,3396.946289,6829.958984,170.324356,0,0,0,0,0,0,0,0,0,0,1.468577,0,0),
(74684,16,3389.834717,6898.867188,167.891190,0,0,0,0,0,0,0,0,0,0,2.302224,0,0),
(74684,17,3373.431396,6917.860352,163.549881,0,0,0,0,0,0,0,0,0,0,2.667433,0,0),
(74684,18,3346.964111,6929.285156,162.449631,0,0,0,0,0,0,0,0,0,0,2.404032,0,0),
(74684,19,3328.096436,6953.527344,164.047409,0,0,0,0,0,0,0,0,0,0,2.935746,0,0),
(74684,20,3312.547852,6953.742676,163.745956,0,0,0,0,0,0,0,0,0,0,4.076144,0,0),
(74684,21,3303.466797,6933.588867,164.247421,0,0,0,0,0,0,0,0,0,0,4.728872,0,0),
(74684,22,3302.131836,6919.916016,165.461578,0,0,0,0,0,0,0,0,0,0,5.312421,0,0),
(74684,23,3318.453613,6909.049316,164.112015,0,0,0,0,0,0,0,0,0,0,5.791206,0,0);
-- Raven's Wood Stonebark #2 - Raven's Wood
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74683;
DELETE FROM creature_movement WHERE id = 74683;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(74683,1,3613.701660,6869.672363,143.392929,0,0,0,0,0,0,0,0,0,0,1.891705,0,0),
(74683,2,3584.131592,6924.325195,142.605515,0,0,0,0,0,0,0,0,0,0,2.304033,0,0),
(74683,3,3551.186768,7005.665527,152.601822,0,0,0,0,0,0,0,0,0,0,1.420459,0,0),
(74683,4,3577.130615,7046.243164,147.840225,0,0,0,0,0,0,0,0,0,0,0.300479,0,0),
(74683,5,3606.182861,7043.406738,144.670212,0,0,0,0,0,0,0,0,0,0,5.914508,0,0),
(74683,6,3665.104248,7029.369629,150.335861,0,0,0,0,0,0,0,0,0,0,5.881522,0,0),
(74683,7,3716.450684,6985.810547,146.004593,0,0,0,0,0,0,0,0,0,0,5.055276,0,0),
(74683,8,3726.844238,6938.100586,143.874008,0,0,0,0,0,0,0,0,0,0,5.168210,0,0),
(74683,9,3726.000732,6886.956055,146.320145,0,0,0,0,0,0,0,0,0,0,4.060802,0,0),
(74683,10,3703.385742,6863.924805,149.436508,0,0,0,0,0,0,0,0,0,0,3.965770,0,0),
(74683,11,3677.379150,6836.406738,146.920990,0,0,0,0,0,0,0,0,0,0,2.756254,0,0),
(74683,12,3627.839355,6847.969238,141.859543,0,0,0,0,0,0,0,0,0,0,2.932969,0,0);
-- Wyrmcult Scout #1 - Blackwing Coven
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 75461;
DELETE FROM creature_movement WHERE id = 75461;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(75461,1,3265.246094,7042.908203,167.128906,0,0,0,0,0,0,0,0,0,0,0.341048,0,0),
(75461,2,3275.629150,7048.381348,166.984940,0,0,0,0,0,0,0,0,0,0,1.202630,0,0),
(75461,3,3279.498047,7068.834473,169.084900,0,0,0,0,0,0,0,0,0,0,1.641667,0,0),
(75461,4,3274.820313,7083.257324,170.751175,0,0,0,0,0,0,0,0,0,0,2.438061,0,0),
(75461,5,3265.760010,7089.631348,171.828339,0,0,0,0,0,0,0,0,0,0,2.882890,0,0),
(75461,6,3257.594971,7091.708496,172.627182,0,0,0,0,0,0,0,0,0,0,3.327425,0,0),
(75461,7,3235.323730,7080.799805,172.287186,0,0,0,0,0,0,0,0,0,0,3.940822,0,0),
(75461,8,3231.248779,7075.868652,171.987610,0,0,0,0,0,0,0,0,0,0,4.324880,0,0),
(75461,9,3230.588379,7068.987305,172.020874,0,0,0,0,0,0,0,0,0,0,4.928063,0,0),
(75461,10,3235.762695,7048.075195,169.078705,0,0,0,0,0,0,0,0,0,0,5.306622,0,0),
(75461,11,3239.418945,7044.324219,168.695465,0,0,0,0,0,0,0,0,0,0,5.958497,0,0),
(75461,12,3252.124268,7044.683594,166.902100,0,0,0,0,0,0,0,0,0,0,0.074293,0,0);
-- Wyrmcult Scout #2 - Blackwing Coven
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 75460;
DELETE FROM creature_movement WHERE id = 75460;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(75460,1,3267.794189,7043.311523,167.148895,0,0,0,0,0,0,0,0,0,0,0.323261,0,0),
(75460,2,3273.521484,7048.104004,167.147308,0,0,0,0,0,0,0,0,0,0,1.044257,0,0),
(75460,3,3278.574707,7060.771973,168.347900,0,0,0,0,0,0,0,0,0,0,1.409467,0,0),
(75460,4,3276.890625,7079.760742,170.274948,0,0,0,0,0,0,0,0,0,0,2.091979,0,0),
(75460,5,3267.274902,7090.395508,171.873535,0,0,0,0,0,0,0,0,0,0,2.627620,0,0),
(75460,6,3258.751465,7093.309570,172.477570,0,0,0,0,0,0,0,0,0,0,3.294424,0,0),
(75460,7,3234.737061,7080.653809,172.240601,0,0,0,0,0,0,0,0,0,0,3.843418,0,0),
(75460,8,3230.578857,7074.742188,171.986069,0,0,0,0,0,0,0,0,0,0,4.591901,0,0),
(75460,9,3233.044189,7047.865234,169.522827,0,0,0,0,0,0,0,0,0,0,5.247705,0,0),
(75460,10,3235.300049,7043.284668,169.270523,0,0,0,0,0,0,0,0,0,0,5.931784,0,0),
(75460,11,3244.371338,7041.061523,167.533707,0,0,0,0,0,0,0,0,0,0,6.194862,0,0);
-- Wyrmcult Scout #3 - Blackwing Coven
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 75462;
DELETE FROM creature_movement WHERE id = 75462;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(75462,1,3265.386963,7079.816406,171.094116,0,0,0,0,0,0,0,0,0,0,1.583004,0,0),
(75462,2,3264.458252,7116.043945,170.977402,0,0,0,0,0,0,0,0,0,0,1.646621,0,0),
(75462,3,3265.852783,7080.112793,171.077667,0,0,0,0,0,0,0,0,0,0,4.729304,0,0);
-- Wyrmcult Scout #4 - Blackwing Coven
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 75464;
DELETE FROM creature_movement WHERE id = 75464;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(75464,1,3264.327637,7167.532715,168.835541,0,0,0,0,0,0,0,0,0,0,1.263348,0,0),
(75464,2,3262.605225,7137.516602,170.871063,0,0,0,0,0,0,0,0,0,0,4.745015,0,0);
-- Wyrmcult Scout #5 - Blackwing Coven
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 75463;
DELETE FROM creature_movement WHERE id = 75463;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(75463,1,3265.896484,7115.500488,170.900772,2000,0,0,0,0,0,0,0,0,0,0.260392,0,0),
(75463,2,3229.743896,7106.632324,173.691895,0,0,0,0,0,0,0,0,0,0,0.357783,0,0);
-- Wyrmcult Scout #6 - Blackwing Coven
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 75465;
DELETE FROM creature_movement WHERE id = 75465;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(75465,1,3226.469971,7124.665039,173.353592,0,0,0,0,0,0,0,0,0,0,3.369786,0,0),
(75465,2,3257.745605,7133.408691,170.707642,2000,0,0,0,0,0,0,0,0,0,0.287097,0,0);
-- Wyrmcult Scout #7 - Blackwing Coven
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 75466;
DELETE FROM creature_movement WHERE id = 75466;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(75466,1,3265.432373,7171.586426,168.043198,0,0,0,0,0,0,0,0,0,0,5.407892,0,0),
(75466,2,3241.919922,7187.971680,167.312149,0,0,0,0,0,0,0,0,0,0,5.768391,0,0);
-- Wyrmcult Scout #8 - Blackwing Coven
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 75467;
DELETE FROM creature_movement WHERE id = 75467;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(75467,1,3186.849121,7163.799316,162.601913,0,0,0,0,0,0,0,0,0,0,1.260206,0,0),
(75467,2,3196.614014,7186.724609,164.747772,0,0,0,0,0,0,0,0,0,0,0.340504,0,0),
(75467,3,3220.127441,7196.033691,166.273682,0,0,0,0,0,0,0,0,0,0,0.349144,0,0),
(75467,4,3194.010254,7178.354980,165.175537,0,0,0,0,0,0,0,0,0,0,4.259643,0,0);
-- Wyrmcult Zealot #1 - Blackwing Coven
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74828;
DELETE FROM creature_movement WHERE id = 74828;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(74828,1,3214.145020,7114.848145,173.329193,2000,0,0,0,0,0,0,0,0,0,0.307520,0,0),
(74828,2,3205.847168,7097.213867,173.649246,0,0,0,0,0,0,0,0,0,0,4.203093,0,0);
-- Wyrmcult Zealot #2 - Blackwing Coven
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74831;
DELETE FROM creature_movement WHERE id = 74831;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(74831,1,3209.713623,7137.650391,173.187683,0,0,0,0,0,0,0,0,0,0,1.964708,0,0),
(74831,2,3213.964355,7115.430176,173.335190,0,0,0,0,0,0,0,0,0,0,4.933512,0,0);

-- ## --  Hellfire Peninsula -- ## --  

-- Zeth'Gor  
-- Bleeding Hollow Worg #1 #2 - correct spawn point
UPDATE creature SET position_x = -1100.47, position_y = 1954.13, position_z = 76.31, orientation = 1.80 WHERE guid = 69466;
UPDATE creature SET position_x = -1084.39, position_y = 1984.25, position_z = 69.71, orientation = 0.25 WHERE guid = 69467;
-- Bleeding Hollow Grunt #1 #2 #3 - Must be like others in battle stand + correct spawn point 
DELETE FROM creature_addon WHERE guid IN (58243, 58244, 58246);
UPDATE creature SET position_x = -966.78, position_y = 1880.16, position_z = 93.98, orientation = 0.13, spawndist = 0, MovementType = 0 WHERE guid = 58246;
UPDATE creature SET position_x = -881.82, position_y = 2038.28, position_z = 40.94, orientation = 0.64, spawndist = 0, MovementType = 0 WHERE guid = 58243;
UPDATE creature SET position_x = -905.50, position_y = 2012.74, position_z = 61.02, orientation = 1.05, spawndist = 0, MovementType = 0 WHERE guid = 58244;
-- Eye of the Citadel -- spawned only after 'Warlord Morkh' death + we shouldnt see him
UPDATE creature_template SET MovementType = 2, modelid_1 = 17612, unit_flags = unit_flags | 0x2008200 WHERE entry = 21134; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 21134;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(21134,1,-1168.39,1917.36,80.40,15000,2113401,0,0,0,0,0,0,0,0,5.75,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2113401 ; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2113401,3,0,2,0,0,0,0,2000005440,0,0,0,0,0,0,0,''),
(2113401,6,0,0,0,0,0,0x02,2000005441,0,0,0,0,0,0,0,''),
(2113401,10,0,0,0,0,0,0,2000005442,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000005440 AND 2000005442;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(2000005440,'A deep, bone chilling voice echoes from the %s...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005441,'How dare you trifle with my playthings!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005442,'The orcs in my citadel will drink your blood and dovour you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
-- Bonestripper Buzzard -- now moves correctly ..not with nose underground ;)
UPDATE creature_template SET InhabitType = 1 WHERE entry = 16972;
-- Hellfire Fire -- objects respawned only in q.10895
UPDATE gameobject SET spawntimesecs =-90 WHERE guid IN (24683, 24684, 24685, 24686, 32137, 32138, 32139, 32141, 32142, 32143);
-- Bleeding Hollow Tormentor #1
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 69481;
DELETE FROM creature_movement WHERE id = 69481;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(69481,1,-1085.730347,2268.461670,24.846298,0,0,0,0,0,0,0,0,0,0,3.000890,0,0),
(69481,2,-1118.016602,2267.340332,28.668350,0,0,0,0,0,0,0,0,0,0,3.267923,0,0),
(69481,3,-1165.465210,2260.730957,40.327095,0,0,0,0,0,0,0,0,0,0,3.771906,0,0),
(69481,4,-1174.304810,2250.315918,43.066456,0,0,0,0,0,0,0,0,0,0,4.402771,0,0),
(69481,5,-1181.825439,2211.353760,49.969406,0,0,0,0,0,0,0,0,0,0,4.886572,0,0),
(69481,6,-1174.306641,2158.303467,62.511532,0,0,0,0,0,0,0,0,0,0,5.114336,0,0),
(69481,7,-1177.182129,2220.931396,47.041889,0,0,0,0,0,0,0,0,0,0,1.247820,0,0),
(69481,8,-1169.440308,2257.333984,41.496624,0,0,0,0,0,0,0,0,0,0,0.786009,0,0),
(69481,9,-1127.515137,2271.718750,30.783106,0,0,0,0,0,0,0,0,0,0,0.083858,0,0),
(69481,10,-1091.150513,2274.087402,24.864824,0,0,0,0,0,0,0,0,0,0,5.722237,0,0),
(69481,11,-1081.078491,2266.177979,24.850050,0,0,0,0,0,0,0,0,0,0,5.206768,0,0),
(69481,12,-1072.319946,2252.039551,24.891975,0,0,0,0,0,0,0,0,0,0,5.795825,0,0),
(69481,13,-1057.030273,2245.796875,23.025778,0,0,0,0,0,0,0,0,0,0,2.775967,0,0);
-- Bleeding Hollow Tormentor #2 
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 69476;
DELETE FROM creature_movement WHERE id = 69476;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(69476,1,-1058.475952,2110.307373,56.275890,0,0,0,0,0,0,0,0,0,0,4.322702,0,0),
(69476,2,-1081.057373,2076.104736,65.404343,0,0,0,0,0,0,0,0,0,0,3.803552,0,0),
(69476,3,-1101.374146,2046.567627,67.061478,0,0,0,0,0,0,0,0,0,0,3.525521,0,0),
(69476,4,-1143.822021,2032.493408,66.993912,0,0,0,0,0,0,0,0,0,0,0.383930,0,0),
(69476,5,-1093.838623,2049.278564,66.940681,0,0,0,0,0,0,0,0,0,0,0.921928,0,0),
(69476,6,-1063.502441,2094.122070,61.053200,0,0,0,0,0,0,0,0,0,0,1.268289,0,0),
(69476,7,-1058.119751,2110.895996,56.056568,0,0,0,0,0,0,0,0,0,0,1.564384,0,0),
(69476,8,-1058.310181,2138.641602,44.471546,0,0,0,0,0,0,0,0,0,0,1.296563,0,0),
(69476,9,-1051.706299,2161.292969,31.184345,0,0,0,0,0,0,0,0,0,0,1.636641,0,0),
(69476,10,-1048.008911,2191.853760,20.094387,0,0,0,0,0,0,0,0,0,0,1.791364,0,0),
(69476,11,-1059.131714,2233.372559,21.419680,0,0,0,0,0,0,0,0,0,0,2.323864,0,0),
(69476,12,-1069.602905,2246.986816,24.822861,0,0,0,0,0,0,0,0,0,0,1.927238,0,0),
(69476,13,-1078.690430,2293.485596,23.902674,0,0,0,0,0,0,0,0,0,0,1.455998,0,0),
(69476,14,-1078.312622,2307.388184,20.248459,0,0,0,0,0,0,0,0,0,0,1.441863,0,0),
(69476,15,-1066.722900,2352.723633,17.589792,0,0,0,0,0,0,0,0,0,0,1.505480,0,0),
(69476,16,-1065.181396,2423.995117,20.967661,0,0,0,0,0,0,0,0,0,0,1.150989,0,0),
(69476,17,-1060.460327,2434.233154,17.258204,0,0,0,0,0,0,0,0,0,0,1.081089,0,0),
(69476,18,-1041.125244,2473.595703,14.542444,0,0,0,0,0,0,0,0,0,0,1.434518,0,0),
(69476,19,-1040.729126,2485.625977,14.335879,0,0,0,0,0,0,0,0,0,0,1.993722,0,0),
(69476,20,-1042.731445,2496.647705,14.389601,0,0,0,0,0,0,0,0,0,0,2.632250,0,0),
(69476,21,-1054.550415,2499.745605,15.785695,0,0,0,0,0,0,0,0,0,0,3.425502,0,0),
(69476,22,-1100.891357,2458.919189,26.190712,0,0,0,0,0,0,0,0,0,0,3.490691,0,0),
(69476,23,-1110.513428,2454.875977,32.061302,0,0,0,0,0,0,0,0,0,0,3.539385,0,0),
(69476,24,-1140.431885,2443.590576,34.614586,0,0,0,0,0,0,0,0,0,0,2.805037,0,0),
(69476,25,-1147.623291,2449.070801,36.420860,0,0,0,0,0,0,0,0,0,0,2.786562,0,0),
(69476,26,-1154.000244,2450.904053,37.517906,0,0,0,0,0,0,0,0,0,0,3.163553,0,0),
(69476,27,-1163.462036,2447.874023,38.270378,0,0,0,0,0,0,0,0,0,0,4.019637,0,0),
(69476,28,-1172.660522,2424.059570,36.774651,0,0,0,0,0,0,0,0,0,0,4.728848,0,0),
(69476,29,-1163.808350,2373.841553,34.838898,0,0,0,0,0,0,0,0,0,0,4.693501,0,0),
(69476,30,-1152.615234,2323.533691,34.078762,0,0,0,0,0,0,0,0,0,0,4.365201,0,0),
(69476,31,-1163.021240,2286.804443,38.275612,0,0,0,0,0,0,0,0,0,0,4.388761,0,0),
(69476,32,-1172.976318,2258.851563,42.295650,0,0,0,0,0,0,0,0,0,0,5.074411,0,0),
(69476,33,-1165.158447,2252.312744,40.751495,0,0,0,0,0,0,0,0,0,0,5.937496,0,0),
(69476,34,-1127.530151,2233.237305,33.938915,0,0,0,0,0,0,0,0,0,0,5.827541,0,0),
(69476,35,-1089.715942,2209.037109,27.929937,0,0,0,0,0,0,0,0,0,0,5.674391,0,0),
(69476,36,-1064.827026,2188.071045,24.829670,0,0,0,0,0,0,0,0,0,0,5.113621,0,0),
(69476,37,-1056.307617,2171.221924,28.590641,0,0,0,0,0,0,0,0,0,0,4.941622,0,0),
(69476,38,-1056.486572,2152.667725,36.809460,0,0,0,0,0,0,0,0,0,0,4.669093,0,0),
(69476,39,-1059.817139,2128.160889,49.912823,0,0,0,0,0,0,0,0,0,0,4.964390,0,0),
(69476,40,-1057.949829,2114.073486,54.956074,0,0,0,0,0,0,0,0,0,0,5.435627,0,0),
(69476,41,-1038.601563,2098.855225,61.700172,0,0,0,0,0,0,0,0,0,0,5.474108,0,0),
(69476,42,-1021.648315,2077.173096,67.663216,0,0,0,0,0,0,0,0,0,0,5.403420,0,0),
(69476,43,-1005.556519,2059.000000,67.623756,0,0,0,0,0,0,0,0,0,0,5.446617,0,0),
(69476,44,-993.817566,2049.765381,67.067886,0,0,0,0,0,0,0,0,0,0,6.105566,0,0),
(69476,45,-977.045959,2053.233887,67.128174,0,0,0,0,0,0,0,0,0,0,0.510387,0,0),
(69476,46,-990.862793,2051.377686,66.962723,0,0,0,0,0,0,0,0,0,0,3.021305,0,0),
(69476,47,-1001.215271,2054.028809,67.341782,0,0,0,0,0,0,0,0,0,0,2.450321,0,0),
(69476,48,-1027.760620,2084.813965,66.597237,0,0,0,0,0,0,0,0,0,0,2.383561,0,0),
(69476,49,-1048.651489,2100.710693,59.454109,0,0,0,0,0,0,0,0,0,0,2.059977,0,0),
(69476,50,-1058.033325,2118.406006,53.392273,0,0,0,0,0,0,0,0,0,0,1.528262,0,0),
(69476,51,-1057.630005,2134.943604,46.152061,0,0,0,0,0,0,0,0,0,0,1.535331,0,0),
(69476,52,-1052.229248,2157.421143,33.071705,0,0,0,0,0,0,0,0,0,0,2.070101,0,0),
(69476,53,-1058.290161,2187.536865,23.208622,0,0,0,0,0,0,0,0,0,0,2.181690,0,0),
(69476,54,-1089.962891,2215.208252,27.476307,0,0,0,0,0,0,0,0,0,0,2.874411,0,0),
(69476,55,-1131.333252,2239.021729,34.112709,0,0,0,0,0,0,0,0,0,0,2.644366,0,0),
(69476,56,-1167.888306,2255.420654,41.223240,0,0,0,0,0,0,0,0,0,0,2.066313,0,0),
(69476,57,-1170.771851,2261.926270,41.585327,0,0,0,0,0,0,0,0,0,0,1.389299,0,0),
(69476,58,-1159.758057,2298.092285,37.042061,0,0,0,0,0,0,0,0,0,0,1.254210,0,0),
(69476,59,-1152.918945,2322.891846,34.177132,0,0,0,0,0,0,0,0,0,0,1.855052,0,0),
(69476,60,-1160.122437,2362.328125,34.670837,0,0,0,0,0,0,0,0,0,0,1.784365,0,0),
(69476,61,-1169.183594,2403.968994,34.834908,0,0,0,0,0,0,0,0,0,0,1.792224,0,0),
(69476,62,-1172.055298,2421.570801,36.441708,0,0,0,0,0,0,0,0,0,0,1.194536,0,0),
(69476,63,-1164.664429,2445.323730,38.061295,0,0,0,0,0,0,0,0,0,0,0.932213,0,0),
(69476,64,-1156.839600,2450.752197,37.855053,0,0,0,0,0,0,0,0,0,0,6.268208,0,0),
(69476,65,-1148.684570,2449.541748,36.631584,0,0,0,0,0,0,0,0,0,0,0.040788,0,0),
(69476,66,-1109.316650,2453.862305,31.515718,0,0,0,0,0,0,0,0,0,0,0.418565,0,0),
(69476,67,-1100.806641,2458.217529,26.198090,0,0,0,0,0,0,0,0,0,0,0.481397,0,0),
(69476,68,-1065.008667,2480.489990,17.397568,0,0,0,0,0,0,0,0,0,0,1.086939,0,0),
(69476,69,-1060.017090,2495.675049,16.545135,0,0,0,0,0,0,0,0,0,0,0.918863,0,0),
(69476,70,-1055.148438,2500.549561,15.840707,0,0,0,0,0,0,0,0,0,0,0.273265,0,0),
(69476,71,-1043.529541,2500.470459,14.382005,0,0,0,0,0,0,0,0,0,0,5.686230,0,0),
(69476,72,-1036.972168,2489.736572,13.837662,0,0,0,0,0,0,0,0,0,0,4.822293,0,0),
(69476,73,-1044.335571,2467.024414,15.024881,0,0,0,0,0,0,0,0,0,0,4.125648,0,0),
(69476,74,-1069.489502,2424.921875,21.742687,0,0,0,0,0,0,0,0,0,0,4.567043,0,0),
(69476,75,-1077.855713,2391.888916,20.111912,0,0,0,0,0,0,0,0,0,0,4.459443,0,0),
(69476,76,-1088.581421,2355.919678,20.907547,0,0,0,0,0,0,0,0,0,0,4.722549,0,0),
(69476,77,-1082.215942,2304.550537,21.368330,0,0,0,0,0,0,0,0,0,0,4.848210,0,0),
(69476,78,-1073.807373,2255.950195,24.906696,0,0,0,0,0,0,0,0,0,0,5.428614,0,0),
(69476,79,-1058.614258,2241.983154,22.620577,0,0,0,0,0,0,0,0,0,0,5.665017,0,0),
(69476,80,-1047.777100,2218.083496,18.774460,0,0,0,0,0,0,0,0,0,0,4.843494,0,0),
(69476,81,-1047.100952,2193.009766,19.752184,0,0,0,0,0,0,0,0,0,0,4.650287,0,0),
(69476,82,-1054.406982,2155.183594,34.791752,0,0,0,0,0,0,0,0,0,0,4.426450,0,0);
-- Bleeding Hollow Tormentor #3 
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 69479;
DELETE FROM creature_movement WHERE id = 69479;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(69479,1,-904.800720,2140.010254,15.821722,2000,0,0,0,0,0,0,0,0,0,5.270751,0,0),
(69479,2,-929.749146,2171.638672,12.407661,0,0,0,0,0,0,0,0,0,0,2.478660,0,0),
(69479,3,-961.989075,2199.568604,11.032035,0,0,0,0,0,0,0,0,0,0,2.700929,0,0),
(69479,4,-1005.119324,2215.763916,11.956749,0,0,0,0,0,0,0,0,0,0,2.787293,0,0),
(69479,5,-1042.341797,2231.554199,18.358982,0,0,0,0,0,0,0,0,0,0,2.548532,0,0),
(69479,6,-1065.282471,2248.223145,24.474363,2000,0,0,0,0,0,0,0,0,0,2.485700,0,0),
(69479,7,-1027.780396,2232.727783,15.339687,0,0,0,0,0,0,0,0,0,0,5.910033,0,0),
(69479,8,-987.287598,2216.827393,10.240157,0,0,0,0,0,0,0,0,0,0,5.967369,0,0),
(69479,9,-961.168518,2204.212402,10.428080,0,0,0,0,0,0,0,0,0,0,5.473353,0,0),
(69479,10,-939.016479,2189.584473,11.046396,0,0,0,0,0,0,0,0,0,0,5.233809,0,0),
(69479,11,-929.090332,2172.021729,12.368859,0,0,0,0,0,0,0,0,0,0,5.199253,0,0);
-- Bleeding Hollow Tormentor #4 
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 69477;
DELETE FROM creature_movement WHERE id = 69477;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(69477,1,-904.344666,2037.704834,50.001060,0,0,0,0,0,0,0,0,0,0,3.994459,0,0),
(69477,2,-921.761719,2023.693115,60.662533,0,0,0,0,0,0,0,0,0,0,3.392059,0,0),
(69477,3,-942.931702,2017.415771,66.496887,0,0,0,0,0,0,0,0,0,0,3.277390,0,0),
(69477,4,-992.396851,2016.431396,66.939690,0,0,0,0,0,0,0,0,0,0,3.295455,0,0),
(69477,5,-1014.874084,2009.067383,68.024918,0,0,0,0,0,0,0,0,0,0,3.164292,0,0),
(69477,6,-1043.664917,2015.960083,66.940384,0,0,0,0,0,0,0,0,0,0,2.712690,0,0),
(69477,7,-1061.384766,2022.081177,67.538696,0,0,0,0,0,0,0,0,0,0,3.589195,0,0),
(69477,8,-1073.012329,2013.131348,67.740395,0,0,0,0,0,0,0,0,0,0,4.120910,0,0),
(69477,9,-1079.178833,1996.458130,67.650902,0,0,0,0,0,0,0,0,0,0,4.922793,0,0),
(69477,10,-1073.516113,1990.697998,68.194633,2000,0,0,0,0,0,0,0,0,0,5.547968,0,0),
(69477,11,-1077.552734,1998.841309,67.470245,0,0,0,0,0,0,0,0,0,0,1.312316,0,0),
(69477,12,-1065.622070,2020.731079,67.837715,0,0,0,0,0,0,0,0,0,0,6.055336,0,0),
(69477,13,-1022.292603,2008.998779,68.073395,0,0,0,0,0,0,0,0,0,0,0.099659,0,0),
(69477,14,-990.645996,2016.065308,66.939705,0,0,0,0,0,0,0,0,0,0,6.205344,0,0),
(69477,15,-961.459106,2015.479858,66.940269,0,0,0,0,0,0,0,0,0,0,6.249327,0,0),
(69477,16,-937.868835,2018.022583,65.683685,0,0,0,0,0,0,0,0,0,0,0.625875,0,0),
(69477,17,-919.763123,2025.501587,59.606327,0,0,0,0,0,0,0,0,0,0,0.684802,0,0),
(69477,18,-897.143433,2044.974487,44.405445,0,0,0,0,0,0,0,0,0,0,0.918851,0,0),
(69477,19,-891.365601,2083.894531,27.507591,0,0,0,0,0,0,0,0,0,0,2.041970,0,0),
(69477,20,-909.706177,2117.238037,19.987719,0,0,0,0,0,0,0,0,0,0,1.885664,0,0),
(69477,21,-918.437195,2153.867920,13.990370,0,0,0,0,0,0,0,0,0,0,2.395388,0,0),
(69477,22,-944.434204,2188.610596,11.553843,0,0,0,0,0,0,0,0,0,0,2.407247,0,0),
(69477,23,-964.757080,2221.719971,8.782063,0,0,0,0,0,0,0,0,0,0,1.928154,0,0),
(69477,24,-972.937195,2257.992920,7.310841,0,0,0,0,0,0,0,0,0,0,2.081307,0,0),
(69477,25,-984.265869,2278.314209,6.905689,0,0,0,0,0,0,0,0,0,0,2.273729,0,0),
(69477,26,-1008.067627,2299.093506,8.015253,0,0,0,0,0,0,0,0,0,0,2.631086,0,0),
(69477,27,-1039.368408,2313.254639,12.584133,0,0,0,0,0,0,0,0,0,0,2.880056,0,0),
(69477,28,-1059.264648,2313.980225,16.015442,0,0,0,0,0,0,0,0,0,0,3.434547,0,0),
(69477,29,-1082.558105,2305.669189,21.285490,0,0,0,0,0,0,0,0,0,0,4.611074,0,0),
(69477,30,-1084.335449,2288.420654,24.452042,0,0,0,0,0,0,0,0,0,0,4.966074,0,0),
(69477,31,-1072.928467,2254.036621,24.917498,0,0,0,0,0,0,0,0,0,0,5.095662,0,0),
(69477,32,-1060.324463,2226.274170,21.026867,0,0,0,0,0,0,0,0,0,0,5.146712,0,0),
(69477,33,-1047.180298,2193.447021,19.696850,0,0,0,0,0,0,0,0,0,0,5.119223,0,0),
(69477,34,-1047.110962,2171.280029,25.993654,0,0,0,0,0,0,0,0,0,0,4.706890,0,0),
(69477,35,-1050.914551,2152.057129,35.194706,0,0,0,0,0,0,0,0,0,0,4.514468,0,0),
(69477,36,-1057.243286,2126.902588,49.855488,0,0,0,0,0,0,0,0,0,0,4.475198,0,0),
(69477,37,-1057.661865,2102.663330,58.578568,0,0,0,0,0,0,0,0,0,0,5.058748,0,0),
(69477,38,-1048.123779,2084.573242,63.496311,0,0,0,0,0,0,0,0,0,0,5.151587,0,0),
(69477,39,-1031.332520,2063.440674,66.985794,0,0,0,0,0,0,0,0,0,0,4.990578,0,0),
(69477,40,-1031.044556,2054.955566,67.185883,0,0,0,0,0,0,0,0,0,0,4.568035,0,0),
(69477,41,-1041.198608,2037.503784,67.437210,0,0,0,0,0,0,0,0,0,0,3.752790,0,0),
(69477,42,-1060.498169,2025.251099,67.575523,0,0,0,0,0,0,0,0,0,0,3.635766,0,0),
(69477,43,-1069.047119,2018.630005,67.954239,0,0,0,0,0,0,0,0,0,0,4.170622,0,0),
(69477,44,-1078.180542,2003.771973,67.421112,0,0,0,0,0,0,0,0,0,0,4.703120,0,0),
(69477,45,-1077.924927,1995.617798,67.653473,0,0,0,0,0,0,0,0,0,0,5.092676,0,0),
(69477,46,-1073.191162,1988.718506,68.641678,2000,0,0,0,0,0,0,0,0,0,5.383271,0,0),
(69477,47,-1078.786011,2000.404785,67.452835,0,0,0,0,0,0,0,0,0,0,1.657342,0,0),
(69477,48,-1073.826904,2013.674805,67.782631,0,0,0,0,0,0,0,0,0,0,0.771413,0,0),
(69477,49,-1061.150879,2026.682251,67.390984,0,0,0,0,0,0,0,0,0,0,0.596269,0,0),
(69477,50,-1034.208862,2048.755859,67.688248,0,0,0,0,0,0,0,0,0,0,0.872730,0,0),
(69477,51,-1029.936035,2058.483643,67.083855,0,0,0,0,0,0,0,0,0,0,1.849765,0,0),
(69477,52,-1039.379883,2074.167969,65.850075,0,0,0,0,0,0,0,0,0,0,2.210551,0,0),
(69477,53,-1056.848145,2100.049805,59.321968,0,0,0,0,0,0,0,0,0,0,1.721247,0,0),
(69477,54,-1058.189331,2123.582764,51.411049,0,0,0,0,0,0,0,0,0,0,1.483271,0,0),
(69477,55,-1057.165405,2137.241699,44.863773,0,0,0,0,0,0,0,0,0,0,1.236657,0,0),
(69477,56,-1049.458374,2165.444336,28.796076,0,0,0,0,0,0,0,0,0,0,1.608935,0,0),
(69477,57,-1047.996460,2191.894287,20.085361,0,0,0,0,0,0,0,0,0,0,1.880683,0,0),
(69477,58,-1061.090942,2227.673096,21.203344,0,0,0,0,0,0,0,0,0,0,1.974146,0,0),
(69477,59,-1074.123047,2254.475098,24.951677,0,0,0,0,0,0,0,0,0,0,1.714964,0,0),
(69477,60,-1081.230591,2293.883301,23.731279,0,0,0,0,0,0,0,0,0,0,1.310484,0,0),
(69477,61,-1075.467896,2305.822021,19.961241,0,0,0,0,0,0,0,0,0,0,0.613835,0,0),
(69477,62,-1055.174316,2314.299072,15.261082,0,0,0,0,0,0,0,0,0,0,6.262419,0,0),
(69477,63,-1036.081543,2311.773438,11.996511,0,0,0,0,0,0,0,0,0,0,5.806104,0,0),
(69477,64,-996.499390,2288.923584,7.300016,0,0,0,0,0,0,0,0,0,0,5.751127,0,0),
(69477,65,-980.992493,2274.711426,6.871607,0,0,0,0,0,0,0,0,0,0,5.167578,0,0),
(69477,66,-972.791809,2243.945068,7.751119,0,0,0,0,0,0,0,0,0,0,4.953952,0,0),
(69477,67,-965.805603,2216.411133,9.459405,0,0,0,0,0,0,0,0,0,0,5.316020,0,0),
(69477,68,-942.965271,2183.293945,12.315009,0,0,0,0,0,0,0,0,0,0,5.311305,0,0),
(69477,69,-921.471191,2147.820557,14.779966,0,0,0,0,0,0,0,0,0,0,5.268108,0,0),
(69477,70,-915.584839,2129.166504,18.619259,0,0,0,0,0,0,0,0,0,0,5.008928,0,0),
(69477,71,-900.482849,2108.072021,21.701344,0,0,0,0,0,0,0,0,0,0,5.366282,0,0),
(69477,72,-887.398804,2085.980957,26.545578,0,0,0,0,0,0,0,0,0,0,4.851849,0,0),
(69477,73,-885.720947,2058.691650,35.388058,0,0,0,0,0,0,0,0,0,0,4.244740,0,0);
-- Bleeding Hollow Tormentor #5 --- need to be mounted
DELETE FROM creature_addon WHERE guid = 69478;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(69478,9562,0,1,16,0,0,NULL);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 69478;
DELETE FROM creature_movement WHERE id = 69478;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(69478,1,-891.300049,2047.003296,41.317982,0,0,0,0,0,0,0,0,0,0,3.846560,0,0),
(69478,2,-915.059509,2021.046753,59.572216,0,0,0,0,0,0,0,0,0,0,4.049195,0,0),
(69478,3,-923.794006,2000.874390,65.555481,0,0,0,0,0,0,0,0,0,0,4.009140,0,0),
(69478,4,-953.165100,1964.585327,67.123100,0,0,0,0,0,0,0,0,0,0,4.117525,0,0),
(69478,5,-968.616943,1944.969482,68.679550,0,0,0,0,0,0,0,0,0,0,4.336649,0,0),
(69478,6,-972.183105,1917.940063,75.887939,0,0,0,0,0,0,0,0,0,0,4.639809,0,0),
(69478,7,-973.518616,1898.598389,86.329666,0,0,0,0,0,0,0,0,0,0,4.420683,0,0),
(69478,8,-974.750732,1887.797363,93.568588,0,0,0,0,0,0,0,0,0,0,4.502364,0,0),
(69478,9,-976.054077,1881.634155,94.710373,4000,0,0,0,0,0,0,0,0,0,4.482729,0,0),
(69478,10,-973.889648,1887.116211,93.721550,0,0,0,0,0,0,0,0,0,0,1.199764,0,0),
(69478,11,-970.093567,1911.992310,77.601677,0,0,0,0,0,0,0,0,0,0,1.474654,0,0),
(69478,12,-966.989197,1930.910889,70.592041,0,0,0,0,0,0,0,0,0,0,1.403968,0,0),
(69478,13,-958.151245,1954.607178,67.786232,0,0,0,0,0,0,0,0,0,0,0.909168,0,0),
(69478,14,-930.347107,1988.286743,66.662033,0,0,0,0,0,0,0,0,0,0,1.042686,0,0),
(69478,15,-918.002686,2019.057983,60.923820,0,0,0,0,0,0,0,0,0,0,0.979854,0,0),
(69478,16,-905.889343,2036.405273,51.062759,0,0,0,0,0,0,0,0,0,0,0.617785,0,0),
(69478,17,-887.845886,2067.105469,32.972401,0,0,0,0,0,0,0,0,0,0,1.062321,0,0),
(69478,18,-873.888000,2089.002197,24.572937,0,0,0,0,0,0,0,0,0,0,1.122011,0,0),
(69478,19,-865.936707,2112.852783,18.489285,0,0,0,0,0,0,0,0,0,0,1.181703,0,0),
(69478,20,-858.243652,2123.799316,17.028839,0,0,0,0,0,0,0,0,0,0,0.867544,0,0),
(69478,21,-851.814331,2127.913330,16.406960,0,0,0,0,0,0,0,0,0,0,0.135553,0,0),
(69478,22,-824.980103,2121.336182,16.313349,0,0,0,0,0,0,0,0,0,0,5.929437,0,0),
(69478,23,-803.832825,2112.592773,18.139872,0,0,0,0,0,0,0,0,0,0,5.524173,0,0),
(69478,24,-786.096313,2076.206299,24.751093,0,0,0,0,0,0,0,0,0,0,5.144042,0,0),
(69478,25,-774.526062,2044.076782,30.609726,0,0,0,0,0,0,0,0,0,0,4.702652,0,0),
(69478,26,-784.345337,2023.143433,35.613087,0,0,0,0,0,0,0,0,0,0,4.160729,0,0),
(69478,27,-804.478699,1990.084351,39.137081,0,0,0,0,0,0,0,0,0,0,4.388494,0,0),
(69478,28,-816.850647,1953.700317,46.382805,0,0,0,0,0,0,0,0,0,0,4.384567,0,0),
(69478,29,-826.891541,1924.049438,53.598846,0,0,0,0,0,0,0,0,0,0,4.204710,0,0),
(69478,30,-855.075317,1897.474121,63.806549,0,0,0,0,0,0,0,0,0,0,3.528483,0,0),
(69478,31,-885.906982,1889.717896,70.843910,0,0,0,0,0,0,0,0,0,0,3.391824,0,0),
(69478,32,-910.180603,1889.448730,74.786362,0,0,0,0,0,0,0,0,0,0,3.144423,0,0),
(69478,33,-938.717896,1887.959351,80.420860,0,0,0,0,0,0,0,0,0,0,3.281868,0,0),
(69478,34,-958.809326,1884.414307,87.935410,0,0,0,0,0,0,0,0,0,0,3.852067,0,0),
(69478,35,-965.227295,1878.337646,93.864189,0,0,0,0,0,0,0,0,0,0,3.716193,0,0),
(69478,36,-970.385803,1875.873657,94.728752,0,0,0,0,0,0,0,0,0,0,3.061171,0,0),
(69478,37,-975.503845,1877.549438,94.795929,4000,0,0,0,0,0,0,0,0,0,3.925110,0,0),
(69478,38,-967.402466,1876.073242,94.576981,0,0,0,0,0,0,0,0,0,0,0.291070,0,0),
(69478,39,-949.630066,1882.818604,85.362770,0,0,0,0,0,0,0,0,0,0,5.879962,0,0),
(69478,40,-923.466919,1882.902466,80.700180,0,0,0,0,0,0,0,0,0,0,0.013036,0,0),
(69478,41,-895.808960,1883.223145,74.881363,0,0,0,0,0,0,0,0,0,0,0.020890,0,0),
(69478,42,-866.645508,1892.182617,67.099030,0,0,0,0,0,0,0,0,0,0,0.291852,0,0),
(69478,43,-843.825500,1904.528687,60.244347,0,0,0,0,0,0,0,0,0,0,0.660989,0,0),
(69478,44,-827.110413,1926.547363,53.079021,0,0,0,0,0,0,0,0,0,0,1.108666,0,0),
(69478,45,-817.485046,1952.698975,46.737255,0,0,0,0,0,0,0,0,0,0,1.198987,0,0),
(69478,46,-810.255798,1980.168457,39.726307,0,0,0,0,0,0,0,0,0,0,1.155005,0,0),
(69478,47,-790.293335,2008.969604,37.892632,0,0,0,0,0,0,0,0,0,0,0.950801,0,0),
(69478,48,-776.461426,2027.081909,33.730286,0,0,0,0,0,0,0,0,0,0,1.068611,0,0),
(69478,49,-771.933777,2044.344116,30.535988,0,0,0,0,0,0,0,0,0,0,1.731487,0,0),
(69478,50,-774.704224,2062.900879,27.398983,0,0,0,0,0,0,0,0,0,0,1.906631,0,0),
(69478,51,-787.147644,2079.023193,24.267998,0,0,0,0,0,0,0,0,0,0,2.132041,0,0),
(69478,52,-808.946777,2106.313477,18.538874,0,0,0,0,0,0,0,0,0,0,2.473689,0,0),
(69478,53,-829.713074,2121.040039,16.294077,0,0,0,0,0,0,0,0,0,0,2.709309,0,0),
(69478,54,-846.322754,2127.129395,16.356516,0,0,0,0,0,0,0,0,0,0,3.080009,0,0),
(69478,55,-858.307007,2124.516357,16.965628,0,0,0,0,0,0,0,0,0,0,3.857553,0,0),
(69478,56,-866.565491,2111.990723,18.637341,0,0,0,0,0,0,0,0,0,0,4.396336,0,0),
(69478,57,-871.745178,2091.869873,23.612295,0,0,0,0,0,0,0,0,0,0,4.481941,0,0),
(69478,58,-876.654175,2067.967529,30.637917,0,0,0,0,0,0,0,0,0,0,4.148149,0,0);
-- Bleeding Hollow Tormentor #6 
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 69480;
DELETE FROM creature_movement WHERE id = 69480;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(69480,1,-921.140930,2193.051025,10.922313,0,0,0,0,0,0,0,0,0,0,5.883876,0,0),
(69480,2,-888.224854,2173.709961,10.581021,0,0,0,0,0,0,0,0,0,0,6.028389,0,0),
(69480,3,-854.811707,2157.650391,12.752934,0,0,0,0,0,0,0,0,0,0,5.780992,0,0),
(69480,4,-844.064209,2150.661133,13.653356,0,0,0,0,0,0,0,0,0,0,5.403218,0,0),
(69480,5,-838.367310,2142.140869,14.638391,0,0,0,0,0,0,0,0,0,0,4.873079,0,0),
(69480,6,-840.752930,2133.033691,15.654090,0,0,0,0,0,0,0,0,0,0,4.196852,0,0),
(69480,7,-853.727661,2114.882568,17.780720,0,0,0,0,0,0,0,0,0,0,3.891336,0,0),
(69480,8,-872.799805,2099.863525,21.582912,0,0,0,0,0,0,0,0,0,0,3.361192,0,0),
(69480,9,-893.450256,2099.202148,23.411373,0,0,0,0,0,0,0,0,0,0,2.748581,0,0),
(69480,10,-909.541504,2111.942627,21.120012,0,0,0,0,0,0,0,0,0,0,2.213724,0,0),
(69480,11,-915.429138,2126.304688,19.112494,0,0,0,0,0,0,0,0,0,0,1.881501,0,0),
(69480,12,-919.826782,2156.632080,13.741777,0,0,0,0,0,0,0,0,0,0,1.736202,0,0),
(69480,13,-927.429199,2188.791504,11.020359,0,0,0,0,0,0,0,0,0,0,1.897209,0,0),
(69480,14,-937.974792,2218.421875,8.567327,0,0,0,0,0,0,0,0,0,0,2.227061,0,0),
(69480,15,-944.477783,2227.111816,7.827459,0,0,0,0,0,0,0,0,0,0,2.921354,0,0),
(69480,16,-952.326233,2227.370117,8.016093,0,0,0,0,0,0,0,0,0,0,3.670624,0,0),
(69480,17,-959.750305,2221.960693,8.690232,0,0,0,0,0,0,0,0,0,0,4.259672,0,0),
(69480,18,-959.718994,2209.894287,9.948567,0,0,0,0,0,0,0,0,0,0,5.451116,0,0); 
-- Bleeding Hollow Tormentor #7
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 69474;
DELETE FROM creature_movement WHERE id = 69474;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(69474,1,-1147.611938,2031.190063,67.076881,0,0,0,0,0,0,0,0,0,0,5.939407,0,0),
(69474,2,-1120.608154,2037.993774,67.256500,0,0,0,0,0,0,0,0,0,0,6.247278,0,0),
(69474,3,-1090.175415,2035.556396,66.939766,0,0,0,0,0,0,0,0,0,0,5.955112,0,0),
(69474,4,-1052.268188,2024.452393,67.464653,0,0,0,0,0,0,0,0,0,0,5.872646,0,0),
(69474,5,-1020.431580,2009.684937,68.173576,0,0,0,0,0,0,0,0,0,0,5.825526,0,0),
(69474,6,-992.912231,1992.142334,67.264847,0,0,0,0,0,0,0,0,0,0,5.581269,0,0),
(69474,7,-981.574890,1969.575562,69.271652,0,0,0,0,0,0,0,0,0,0,5.102181,0,0),
(69474,8,-977.500793,1944.567017,70.069252,0,0,0,0,0,0,0,0,0,0,5.107678,0,0),
(69474,9,-967.470276,1920.134033,73.456802,0,0,0,0,0,0,0,0,0,0,5.352722,0,0),
(69474,10,-954.652222,1905.339600,74.319687,0,0,0,0,0,0,0,0,0,0,5.818459,0,0),
(69474,11,-928.706970,1898.185059,73.670425,0,0,0,0,0,0,0,0,0,0,6.067425,0,0),
(69474,12,-906.438538,1891.936157,72.948631,5000,0,0,0,0,0,0,0,0,0,6.012448,0,0),
(69474,13,-930.511169,1893.973633,76.018501,0,0,0,0,0,0,0,0,0,0,3.000448,0,0),
(69474,14,-958.804993,1909.763672,73.887230,0,0,0,0,0,0,0,0,0,0,1.999058,0,0),
(69474,15,-971.234009,1930.203369,71.738182,0,0,0,0,0,0,0,0,0,0,1.845905,0,0),
(69474,16,-977.705505,1959.371460,69.270813,0,0,0,0,0,0,0,0,0,0,1.966856,0,0),
(69474,17,-984.425781,1976.965942,68.939224,0,0,0,0,0,0,0,0,0,0,2.198549,0,0),
(69474,18,-994.644409,1993.023193,67.126289,0,0,0,0,0,0,0,0,0,0,2.413749,0,0),
(69474,19,-1012.830078,2005.937500,67.551018,0,0,0,0,0,0,0,0,0,0,2.611669,0,0),
(69474,20,-1036.167114,2017.678833,67.784973,0,0,0,0,0,0,0,0,0,0,2.694136,0,0),
(69474,21,-1061.344727,2027.187256,67.378105,0,0,0,0,0,0,0,0,0,0,2.808018,0,0),
(69474,22,-1088.523193,2037.824097,66.995003,0,0,0,0,0,0,0,0,0,0,3.152023,0,0),
(69474,23,-1109.662109,2038.272949,67.085800,0,0,0,0,0,0,0,0,0,0,3.371933,0,0),
(69474,24,-1138.712158,2032.474976,66.953224,0,0,0,0,0,0,0,0,0,0,3.306745,0,0);
-- Bleeding Hollow Tormentor #8 
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 69471;
DELETE FROM creature_movement WHERE id = 69471;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(69471,1,-1136.550171,1911.096680,81.393265,0,0,0,0,0,0,0,0,0,0,1.731284,0,0),
(69471,2,-1138.600464,1919.574463,81.348328,0,0,0,0,0,0,0,0,0,0,1.883651,0,0),
(69471,3,-1142.189819,1929.685547,81.406830,0,0,0,0,0,0,0,0,0,0,2.174248,0,0),
(69471,4,-1146.759155,1936.748535,81.403702,0,0,0,0,0,0,0,0,0,0,2.589280,0,0),
(69471,5,-1152.559692,1940.860474,81.403702,0,0,0,0,0,0,0,0,0,0,2.834324,0,0),
(69471,6,-1159.556885,1944.302246,81.403801,0,0,0,0,0,0,0,0,0,0,2.731437,0,0),
(69471,7,-1152.952271,1941.376587,81.403801,0,0,0,0,0,0,0,0,0,0,5.697883,0,0),
(69471,8,-1145.444702,1936.002930,81.403801,0,0,0,0,0,0,0,0,0,0,5.392365,0,0),
(69471,9,-1140.774414,1926.637939,81.394020,0,0,0,0,0,0,0,0,0,0,5.042870,0,0),
(69471,10,-1136.005005,1914.571899,81.391922,0,0,0,0,0,0,0,0,0,0,4.793113,0,0),
(69471,11,-1136.208496,1907.561035,81.392731,0,0,0,0,0,0,0,0,0,0,4.369003,0,0),
(69471,12,-1139.472534,1900.198364,81.354660,0,0,0,0,0,0,0,0,0,0,4.017934,0,0),
(69471,13,-1145.081055,1892.433960,81.354660,0,0,0,0,0,0,0,0,0,0,4.023435,0,0),
(69471,14,-1138.811523,1901.579224,81.354500,0,0,0,0,0,0,0,0,0,0,1.109609,0,0);
-- Bleeding Hollow Peon #1 
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 58632;
DELETE FROM creature_movement WHERE id = 58632;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(58632,1,-967.837097,2049.468994,66.939590,0,0,0,0,0,0,0,0,0,0,1.041965,0,0),
(58632,2,-961.269714,2056.896240,66.939590,0,0,0,0,0,0,0,0,0,0,1.319211,0,0),
(58632,3,-959.368713,2062.513184,66.939590,45000,0,0,0,0,0,0,69,0,0,1.277585,0,0),
(58632,4,-963.171448,2062.435059,66.939590,0,0,0,0,0,0,0,0,0,0,2.698971,0,0),
(58632,5,-972.978149,2069.148682,67.210938,0,0,0,0,0,0,0,0,0,0,2.680907,0,0),
(58632,6,-980.363220,2071.689209,68.111107,0,0,0,0,0,0,0,0,0,0,3.500077,0,0),
(58632,7,-983.955811,2068.972900,67.409409,0,0,0,0,0,0,0,0,0,0,4.274479,0,0),
(58632,8,-985.507385,2063.743164,66.939644,0,0,0,0,0,0,0,0,0,0,4.730792,0,0),
(58632,9,-981.499390,2052.045166,67.383759,0,0,0,0,0,0,0,0,0,0,5.237366,0,0),
(58632,10,-969.215149,2033.986938,66.939873,0,0,0,0,0,0,0,0,0,0,5.018239,0,0),
(58632,11,-967.019653,2022.121826,66.939873,0,0,0,0,0,0,0,0,0,0,4.626330,0,0),
(58632,12,-967.238464,2012.217407,66.939873,45000,0,0,0,0,0,0,69,0,0,4.542297,0,0),
(58632,13,-966.300842,2034.513306,66.940483,0,0,0,0,0,0,0,0,0,0,1.557782,0,0);
-- Bleeding Hollow Peon #2
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 58636;
DELETE FROM creature_movement WHERE id = 58636;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(58636,1,-989.994873,1941.953735,71.459511,0,0,0,0,0,0,0,0,0,0,2.193923,0,0),
(58636,2,-1008.413635,1959.056030,68.923553,0,0,0,0,0,0,0,0,0,0,2.417762,0,0),
(58636,3,-1019.706848,1969.102783,68.601791,0,0,0,0,0,0,0,0,0,0,2.386346,0,0),
(58636,4,-1026.266357,1974.991211,70.054985,0,0,0,0,0,0,0,0,0,0,1.871910,0,0),
(58636,5,-1026.924194,1982.568115,69.328300,45000,0,0,0,0,0,0,69,0,0,1.706976,0,0),
(58636,6,-1025.509888,1975.341309,69.882309,0,0,0,0,0,0,0,0,0,0,5.220063,0,0),
(58636,7,-1020.078064,1966.497559,68.307961,0,0,0,0,0,0,0,0,0,0,6.115412,0,0),
(58636,8,-995.227722,1955.722900,69.966187,0,0,0,0,0,0,0,0,0,0,5.317444,0,0),
(58636,9,-978.143188,1924.367432,75.159401,0,0,0,0,0,0,0,0,0,0,5.155549,0,0),
(58636,10,-971.913086,1906.661987,81.009102,0,0,0,0,0,0,0,0,0,0,4.792695,0,0),
(58636,11,-969.988281,1896.654053,85.586975,0,0,0,0,0,0,0,0,0,0,4.447121,0,0),
(58636,12,-968.025757,1884.122437,93.571579,45000,0,0,0,0,0,0,69,0,0,4.806046,0,0),
(58636,13,-968.339233,1894.251587,86.274696,0,0,0,0,0,0,0,0,0,0,1.971544,0,0),
(58636,14,-971.346313,1907.804321,80.163971,0,0,0,0,0,0,0,0,0,0,2.209521,0,0),
(58636,15,-978.063049,1919.933960,76.912735,0,0,0,0,0,0,0,0,0,0,2.116058,0,0);
-- Bleeding Hollow Peon #3
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 58638;
DELETE FROM creature_movement WHERE id = 58638;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(58638,1,-969.117126,1895.510132,85.834244,0,0,0,0,0,0,0,0,0,0,3.447317,0,0),
(58638,2,-979.001770,1893.236572,92.738396,0,0,0,0,0,0,0,0,0,0,3.862792,0,0),
(58638,3,-980.752930,1889.950806,94.266716,45000,0,0,0,0,0,0,69,0,0,4.524092,0,0),
(58638,4,-969.103882,1893.873901,86.940453,0,0,0,0,0,0,0,0,0,0,0.295507,0,0),
(58638,5,-943.257935,1896.119141,76.528870,0,0,0,0,0,0,0,0,0,0,0.226394,0,0),
(58638,6,-927.465088,1904.292114,70.923218,0,0,0,0,0,0,0,0,0,0,0.853927,0,0),
(58638,7,-918.027649,1919.593384,67.282433,0,0,0,0,0,0,0,0,0,0,1.039281,0,0),
(58638,8,-912.198364,1930.650879,66.943939,0,0,0,0,0,0,0,0,0,0,0.900266,0,0),
(58638,9,-906.253296,1936.394775,66.940865,0,0,0,0,0,0,0,0,0,0,6.104314,0,0),
(58638,10,-902.916199,1935.384521,66.940865,0,0,0,0,0,0,0,0,0,0,5.578885,0,0),
(58638,11,-899.892578,1931.821899,66.940865,45000,0,0,0,0,0,0,69,0,0,5.331488,0,0),
(58638,12,-904.320313,1933.325195,66.940865,0,0,0,0,0,0,0,0,0,0,3.389197,0,0),
(58638,13,-909.278625,1931.342041,66.940865,0,0,0,0,0,0,0,0,0,0,3.933478,0,0),
(58638,14,-923.101868,1907.026367,69.679916,0,0,0,0,0,0,0,0,0,0,3.974313,0,0),
(58638,15,-935.694275,1898.914673,74.055901,0,0,0,0,0,0,0,0,0,0,3.265884,0,0),
(58638,16,-957.265015,1896.197876,79.849152,0,0,0,0,0,0,0,0,0,0,3.077389,0,0);
-- Bleeding Hollow Peon #4
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 58635;
DELETE FROM creature_movement WHERE id = 58635;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(58635,1,-930.127869,2000.575439,65.805489,0,0,0,0,0,0,0,0,0,0,3.100847,0,0),
(58635,2,-943.891235,2000.601440,66.866531,45000,0,0,0,0,0,0,69,0,0,3.157396,0,0),
(58635,3,-927.428589,1999.935913,65.753281,0,0,0,0,0,0,0,0,0,0,5.915708,0,0),
(58635,4,-916.523682,1997.898193,66.372726,0,0,0,0,0,0,0,0,0,0,5.442903,0,0),
(58635,5,-911.154785,1991.462402,67.374107,0,0,0,0,0,0,0,0,0,0,5.128751,0,0),
(58635,6,-906.294312,1982.158081,67.531693,45000,0,0,0,0,0,0,69,0,0,5.105193,0,0),
(58635,7,-912.459045,1992.950928,67.169350,0,0,0,0,0,0,0,0,0,0,2.591917,0,0),
(58635,8,-925.843994,1998.590698,65.841309,0,0,0,0,0,0,0,0,0,0,2.459970,0,0);
-- Bleeding Hollow Peon #5 - Update
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 58637;
-- Bleeding Hollow Peon #6 
UPDATE creature_addon SET emote = 0 WHERE guid = 58628; -- emote is part of his wps
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 58628;
DELETE FROM creature_movement WHERE id = 58628;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(58628,1,-1066.278564,2076.291748,65.258133,0,0,0,0,0,0,0,0,0,0,2.203428,0,0),
(58628,2,-1084.712036,2090.957031,64.069794,0,0,0,0,0,0,0,0,0,0,2.968404,0,0),
(58628,3,-1107.215454,2093.742676,67.026070,0,0,0,0,0,0,0,0,0,0,3.239367,0,0),
(58628,4,-1126.190063,2091.051270,67.664238,0,0,0,0,0,0,0,0,0,0,3.412154,0,0),
(58628,5,-1140.148438,2088.175293,67.045998,0,0,0,0,0,0,0,0,0,0,3.851978,0,0),
(58628,6,-1144.392090,2084.571289,66.940399,45000,0,0,0,0,0,0,69,0,0,3.935933,0,0),
(58628,7,-1132.805054,2089.311035,67.616081,0,0,0,0,0,0,0,0,0,0,0.167592,0,0),
(58628,8,-1115.337402,2093.108887,67.525368,0,0,0,0,0,0,0,0,0,0,0.005800,0,0),
(58628,9,-1091.943115,2092.040527,65.128181,0,0,0,0,0,0,0,0,0,0,5.935558,0,0),
(58628,10,-1073.855957,2086.685303,63.254597,0,0,0,0,0,0,0,0,0,0,5.725072,0,0),
(58628,11,-1064.040283,2075.594971,65.620255,0,0,0,0,0,0,0,0,0,0,5.002511,0,0),
(58628,12,-1064.260376,2062.375244,67.309395,45000,0,0,0,0,0,0,69,0,0,4.686000,0,0);
-- Bleeding Hollow Peon #7 - correct spawn point + let him work 
UPDATE creature SET position_x = -985.57, position_y = 1874.44, position_z = 95.82, orientation = 0.21, spawndist = 0, MovementType = 0 WHERE guid = 58639;
DELETE FROM creature_addon WHERE guid = 58639;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(58639,0,0,1,16,234,0,NULL);
-- Bleeding Hollow Peon #8 - let him work 
DELETE FROM creature_addon WHERE guid = 58640;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(58640,0,0,1,16,234,0,NULL);
-- Bleeding Hollow Dark Shaman #1 
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 58258;
DELETE FROM creature_movement WHERE id =58258;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(58258,1,-921.448975,1980.349487,66.877449,0,0,0,0,0,0,0,0,0,0,5.702196,0,0),
(58258,2,-913.764954,1975.236206,66.938622,0,0,0,0,0,0,0,0,0,0,5.684921,0,0),
(58258,3,-928.577271,1988.217651,66.636101,0,0,0,0,0,0,0,0,0,0,2.123923,0,0),
(58258,4,-938.014893,2005.055786,66.117706,0,0,0,0,0,0,0,0,0,0,1.885162,0,0),
(58258,5,-941.708069,2016.249023,66.374184,0,0,0,0,0,0,0,0,0,0,3.049908,0,0),
(58258,6,-957.924866,2015.490845,66.938255,0,0,0,0,0,0,0,0,0,0,2.857636,0,0),
(58258,7,-964.086121,2017.722900,66.938255,0,0,0,0,0,0,0,0,0,0,2.039251,0,0),
(58258,8,-966.337524,2023.661377,66.938255,0,0,0,0,0,0,0,0,0,0,1.563300,0,0),
(58258,9,-967.487915,2047.717651,66.939514,0,0,0,0,0,0,0,0,0,0,1.638698,0,0),
(58258,10,-967.083679,2025.857788,66.939514,0,0,0,0,0,0,0,0,0,0,5.055962,0,0),
(58258,11,-963.562683,2017.482056,66.939514,0,0,0,0,0,0,0,0,0,0,5.721190,0,0),
(58258,12,-959.347290,2015.480591,66.939514,0,0,0,0,0,0,0,0,0,0,6.267038,0,0),
(58258,13,-945.109985,2016.231323,66.636986,0,0,0,0,0,0,0,0,0,0,6.095034,0,0),
(58258,14,-941.892944,2014.638550,66.375290,0,0,0,0,0,0,0,0,0,0,5.110147,0,0),
(58258,15,-938.415833,2004.230957,66.179733,0,0,0,0,0,0,0,0,0,0,5.292364,0,0),
(58258,16,-931.909424,1992.215454,66.483078,0,0,0,0,0,0,0,0,0,0,5.487925,0,0),
(58258,17,-927.701294,1986.468994,66.710274,0,0,0,0,0,0,0,0,0,0,5.605732,0,0),
(58258,18,-914.462219,1975.920776,66.938301,0,0,0,0,0,0,0,0,0,0,5.636358,0,0),
(58258,19,-922.633667,1982.744629,66.826248,0,0,0,0,0,0,0,0,0,0,2.884323,0,0),
(58258,20,-929.578796,1983.857788,66.799690,0,0,0,0,0,0,0,0,0,0,3.548770,0,0),
(58258,21,-938.836060,1975.638428,66.937805,0,0,0,0,0,0,0,0,0,0,4.195153,0,0),
(58258,22,-947.479614,1963.747314,66.937805,0,0,0,0,0,0,0,0,0,0,4.598060,0,0),
(58258,23,-948.247375,1958.086182,66.937805,0,0,0,0,0,0,0,0,0,0,4.945202,0,0),
(58258,24,-946.036926,1948.458008,66.937805,0,0,0,0,0,0,0,0,0,0,5.023736,0,0),
(58258,25,-947.170410,1958.572388,66.937805,0,0,0,0,0,0,0,0,0,0,1.403049,0,0),
(58258,26,-946.699097,1963.575928,66.937805,0,0,0,0,0,0,0,0,0,0,0.982075,0,0),
(58258,27,-936.566406,1978.140137,66.927383,0,0,0,0,0,0,0,0,0,0,0.705615,0,0),
(58258,28,-927.684875,1982.052002,66.835876,0,0,0,0,0,0,0,0,0,0,6.219110,0,0);
-- Bleeding Hollow Dark Shaman #2 
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 58256;
DELETE FROM creature_movement WHERE id = 58256;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(58256,1,-1114.137207,2011.377808,67.160423,0,0,0,0,0,0,0,0,0,0,0.828908,0,0),
(58256,2,-1101.410767,2028.733765,66.939812,0,0,0,0,0,0,0,0,0,0,1.159561,0,0),
(58256,3,-1093.524170,2047.060669,66.939812,0,0,0,0,0,0,0,0,0,0,1.167415,0,0),
(58256,4,-1085.035889,2065.807861,66.626167,0,0,0,0,0,0,0,0,0,0,0.933367,0,0),
(58256,5,-1076.155884,2080.223145,64.470154,0,0,0,0,0,0,0,0,0,0,0.978920,0,0),
(58256,6,-1064.433350,2095.273682,60.848419,0,0,0,0,0,0,0,0,0,0,1.180767,0,0),
(58256,7,-1059.126221,2106.458496,57.534264,4000,0,0,0,0,0,0,0,0,0,1.373975,0,0),
(58256,8,-1061.435181,2097.328125,60.172970,0,0,0,0,0,0,0,0,0,0,4.157425,0,0),
(58256,9,-1072.130005,2086.706299,63.112404,0,0,0,0,0,0,0,0,0,0,3.611574,0,0),
(58256,10,-1082.487305,2083.974121,64.526230,0,0,0,0,0,0,0,0,0,0,3.137979,0,0),
(58256,11,-1104.779663,2083.747803,66.931480,0,0,0,0,0,0,0,0,0,0,3.262072,0,0),
(58256,12,-1118.399780,2083.031738,67.100792,0,0,0,0,0,0,0,0,0,0,3.458422,0,0),
(58256,13,-1127.969360,2079.651123,66.941566,0,0,0,0,0,0,0,0,0,0,3.552669,0,0),
(58256,14,-1114.920044,2083.489746,67.190331,0,0,0,0,0,0,0,0,0,0,0.067070,0,0),
(58256,15,-1100.282104,2084.036621,66.602280,0,0,0,0,0,0,0,0,0,0,6.270145,0,0),
(58256,16,-1087.113892,2083.690430,65.105392,0,0,0,0,0,0,0,0,0,0,0.116551,0,0),
(58256,17,-1075.007813,2085.765137,63.494282,0,0,0,0,0,0,0,0,0,0,0.559319,0,0),
(58256,18,-1064.912842,2094.614014,61.027885,0,0,0,0,0,0,0,0,0,0,0.948092,0,0),
(58256,19,-1059.403687,2103.586670,58.391666,0,0,0,0,0,0,0,0,0,0,1.187638,0,0),
(58256,20,-1067.457031,2090.515381,62.063904,0,0,0,0,0,0,0,0,0,0,3.981300,0,0),
(58256,21,-1084.703857,2067.087891,66.525970,0,0,0,0,0,0,0,0,0,0,4.140737,0,0),
(58256,22,-1095.021118,2044.956543,66.938263,0,0,0,0,0,0,0,0,0,0,4.289960,0,0),
(58256,23,-1103.497070,2026.858643,66.940720,0,0,0,0,0,0,0,0,0,0,4.059839,0,0),
(58256,24,-1124.076538,1994.267212,69.852798,0,0,0,0,0,0,0,0,0,0,4.172153,0,0),
(58256,25,-1135.958984,1970.909424,73.544449,0,0,0,0,0,0,0,0,0,0,4.270325,0,0),
(58256,26,-1141.877563,1958.744995,79.152245,4000,0,0,0,0,0,0,0,0,0,4.180000,0,0),
(58256,27,-1135.303467,1970.007080,73.721436,0,0,0,0,0,0,0,0,0,0,1.006989,0,0),
(58256,28,-1131.216675,1981.867310,72.988731,0,0,0,0,0,0,0,0,0,0,1.154644,0,0),
(58256,29,-1124.473145,1995.191284,69.731705,0,0,0,0,0,0,0,0,0,0,1.058040,0,0);
-- Bleeding Hollow Dark Shaman #3 
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 58257;
DELETE FROM creature_movement WHERE id = 58257;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(58257,1,-994.857910,2016.681030,66.940125,0,0,0,0,0,0,0,0,0,0,0.460341,0,0),
(58257,2,-987.057739,2016.844238,66.944038,0,0,0,0,0,0,0,0,0,0,6.012321,0,0),
(58257,3,-969.962524,2015.546143,66.940712,0,0,0,0,0,0,0,0,0,0,0.017378,0,0),
(58257,4,-992.626831,2016.881958,66.939621,0,0,0,0,0,0,0,0,0,0,2.776484,0,0),
(58257,5,-1008.494141,2035.804932,66.939621,0,0,0,0,0,0,0,0,0,0,3.004249,0,0),
(58257,6,-1019.053467,2035.347778,67.212395,0,0,0,0,0,0,0,0,0,0,2.995105,0,0),
(58257,7,-1026.293579,2037.923462,66.986382,0,0,0,0,0,0,0,0,0,0,2.511642,0,0),
(58257,8,-1031.452515,2045.002930,67.205719,0,0,0,0,0,0,0,0,0,0,1.843268,0,0),
(58257,9,-1031.799316,2050.980713,67.372971,0,0,0,0,0,0,0,0,0,0,1.295846,0,0),
(58257,10,-1029.178223,2060.436523,67.073296,0,0,0,0,0,0,0,0,0,0,1.801642,0,0),
(58257,11,-1035.137329,2070.828369,66.457756,0,0,0,0,0,0,0,0,0,0,2.345923,0,0),
(58257,12,-1046.053467,2081.998779,64.143639,0,0,0,0,0,0,0,0,0,0,2.298799,0,0),
(58257,13,-1057.359741,2102.013672,58.757362,0,0,0,0,0,0,0,0,0,0,1.721531,0,0),
(58257,14,-1058.044434,2129.592285,48.813656,5000,0,0,0,0,0,0,0,0,0,1.493766,0,0),
(58257,15,-1057.715576,2110.082764,56.303387,0,0,0,0,0,0,0,0,0,0,5.071252,0,0),
(58257,16,-1052.969604,2091.249268,61.721436,0,0,0,0,0,0,0,0,0,0,5.271216,0,0),
(58257,17,-1038.316528,2072.456787,66.096436,0,0,0,0,0,0,0,0,0,0,5.392948,0,0),
(58257,18,-1027.762573,2059.277832,67.110367,0,0,0,0,0,0,0,0,0,0,4.392350,0,0),
(58257,19,-1031.241089,2051.670166,67.273415,0,0,0,0,0,0,0,0,0,0,4.546763,0,0),
(58257,20,-1030.166992,2044.373901,67.058655,0,0,0,0,0,0,0,0,0,0,5.164866,0,0),
(58257,21,-1024.427368,2037.198730,67.017387,0,0,0,0,0,0,0,0,0,0,5.981672,0,0),
(58257,22,-1009.709167,2037.914063,66.942307,0,0,0,0,0,0,0,0,0,0,5.536349,0,0),
(58257,23,-1001.397766,2026.911743,66.940887,0,0,0,0,0,0,0,0,0,0,5.354928,0,0),
(58257,24,-997.202637,2019.573120,66.940887,0,0,0,0,0,0,0,0,0,0,4.738392,0,0),
(58257,25,-998.892090,2012.330078,66.940887,0,0,0,0,0,0,0,0,0,0,4.030749,0,0),
(58257,26,-1009.969238,1993.768311,66.943695,0,0,0,0,0,0,0,0,0,0,4.176834,0,0),
(58257,27,-1006.721375,1997.570435,66.940620,0,0,0,0,0,0,0,0,0,0,0.886014,0,0);
-- Worg Master Kruush 
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 69634;
DELETE FROM creature_movement WHERE id = 69634;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(69634,1,-1061.400635,1990.542725,67.737541,5000,0,0,0,0,0,0,0,0,0,4.237452,0,0),
(69634,2,-1050.054932,2010.758179,66.944176,5000,0,0,0,0,0,0,0,0,0,1.060518,0,0);
-- Eye of Grillok #1
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 69630;
DELETE FROM creature_movement WHERE id = 69630;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(69630,1,-1130.955200,1977.056763,73.517754,0,0,0,0,0,0,0,0,0,0,3.690380,0,0),
(69630,2,-1135.352295,1970.435425,73.571503,0,0,0,0,0,0,0,0,0,0,4.159264,0,0),
(69630,3,-1143.914917,1956.053223,80.157318,0,0,0,0,0,0,0,0,0,0,4.218168,0,0),
(69630,4,-1151.395874,1943.341919,81.419655,0,0,0,0,0,0,0,0,0,0,4.727108,0,0),
(69630,5,-1151.147217,1940.227661,81.404175,0,0,0,0,0,0,0,0,0,0,5.480297,0,0),
(69630,6,-1144.936646,1935.170288,81.403214,0,0,0,0,0,0,0,0,0,0,5.374263,0,0),
(69630,7,-1141.158447,1928.720337,81.403778,0,0,0,0,0,0,0,0,0,0,5.082097,0,0),
(69630,8,-1136.030151,1915.822632,81.373436,0,0,0,0,0,0,0,0,0,0,4.821351,0,0),
(69630,9,-1136.115234,1908.329224,81.391357,0,0,0,0,0,0,0,0,0,0,4.508764,0,0),
(69630,10,-1138.449707,1901.605225,81.354774,0,0,0,0,0,0,0,0,0,0,3.171234,0,0),
(69630,11,-1145.656372,1903.002686,81.380653,0,0,0,0,0,0,0,0,0,0,2.703137,0,0),
(69630,12,-1159.015259,1911.413086,81.547356,0,0,0,0,0,0,0,0,0,0,2.570404,0,0),
(69630,13,-1142.669312,1901.459106,81.368828,0,0,0,0,0,0,0,0,0,0,6.246849,0,0),
(69630,14,-1139.454590,1902.470459,81.361267,0,0,0,0,0,0,0,0,0,0,0.877864,0,0),
(69630,15,-1136.081665,1909.392822,81.392426,0,0,0,0,0,0,0,0,0,0,1.611426,0,0),
(69630,16,-1140.080444,1926.670776,81.388000,0,0,0,0,0,0,0,0,0,0,2.081095,0,0),
(69630,17,-1144.762695,1935.161621,81.402863,0,0,0,0,0,0,0,0,0,0,2.615166,0,0),
(69630,18,-1151.000610,1939.814819,81.404007,0,0,0,0,0,0,0,0,0,0,1.996273,0,0),
(69630,19,-1150.762939,1944.484619,81.414787,0,0,0,0,0,0,0,0,0,0,1.254071,0,0),
(69630,20,-1146.296509,1952.457886,81.334106,0,0,0,0,0,0,0,0,0,0,1.058507,0,0),
(69630,21,-1141.138794,1961.069458,78.446350,0,0,0,0,0,0,0,0,0,0,1.011383,0,0),
(69630,22,-1135.096069,1971.034424,73.544441,0,0,0,0,0,0,0,0,0,0,1.466129,0,0),
(69630,23,-1135.724365,1978.001953,73.544441,0,0,0,0,0,0,0,0,0,0,2.116386,0,0),
(69630,24,-1142.404663,1985.187500,73.365456,0,0,0,0,0,0,0,0,0,0,2.739139,0,0),
(69630,25,-1150.054443,1986.321655,73.725090,0,0,0,0,0,0,0,0,0,0,3.436574,0,0),
(69630,26,-1156.955566,1982.023071,73.811409,0,0,0,0,0,0,0,0,0,0,4.046043,0,0),
(69630,27,-1166.109863,1975.073730,74.142761,0,0,0,0,0,0,0,0,0,0,3.452281,0,0),
(69630,28,-1173.553345,1975.426636,73.859131,0,0,0,0,0,0,0,0,0,0,2.762297,0,0),
(69630,29,-1181.089111,1980.193237,73.808128,0,0,0,0,0,0,0,0,0,0,2.093923,0,0),
(69630,30,-1184.352173,1990.115601,74.563431,0,0,0,0,0,0,0,0,0,0,1.521367,0,0),
(69630,31,-1181.587280,1999.559814,74.045036,0,0,0,0,0,0,0,0,0,0,0.796445,0,0),
(69630,32,-1173.961792,2005.097656,73.550964,0,0,0,0,0,0,0,0,0,0,6.274597,0,0),
(69630,33,-1156.363770,2001.697144,71.325363,0,0,0,0,0,0,0,0,0,0,5.743670,0,0),
(69630,34,-1127.164551,1987.016602,71.558182,0,0,0,0,0,0,0,0,0,0,5.460930,0,0),
(69630,35,-1116.562256,1965.419434,73.638351,0,0,0,0,0,0,0,0,0,0,4.633123,0,0),
(69630,36,-1117.544922,1953.454956,74.279579,0,0,0,0,0,0,0,0,0,0,5.243375,0,0),
(69630,37,-1110.632813,1945.695923,74.082886,0,0,0,0,0,0,0,0,0,0,6.043692,0,0),
(69630,38,-1103.691895,1945.068726,75.230789,0,0,0,0,0,0,0,0,0,0,0.453449,0,0),
(69630,39,-1098.103394,1949.223877,75.905907,0,0,0,0,0,0,0,0,0,0,1.490175,0,0),
(69630,40,-1097.169312,1957.515137,74.734596,0,0,0,0,0,0,0,0,0,0,1.913504,0,0),
(69630,41,-1107.352051,1971.749756,73.424332,0,0,0,0,0,0,0,0,0,0,2.679268,0,0),
(69630,42,-1119.677490,1976.493286,72.843056,0,0,0,0,0,0,0,0,0,0,3.148141,0,0);
-- Eye of Grillok #2
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 69631;
DELETE FROM creature_movement WHERE id = 69631;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(69631,1,-975.790344,2044.955688,67.408485,0,0,0,0,0,0,0,0,0,0,5.783136,0,0),
(69631,2,-948.242004,2029.139404,67.676506,0,0,0,0,0,0,0,0,0,0,5.787061,0,0),
(69631,3,-936.145813,2022.558105,65.084648,0,0,0,0,0,0,0,0,0,0,0.070144,0,0),
(69631,4,-922.183533,2023.544556,60.818218,0,0,0,0,0,0,0,0,0,0,0.586146,0,0),
(69631,5,-910.117615,2034.757690,53.280693,0,0,0,0,0,0,0,0,0,0,0.807629,0,0),
(69631,6,-902.775452,2046.881958,45.763729,0,0,0,0,0,0,0,0,0,0,1.342485,0,0),
(69631,7,-897.786743,2064.385254,36.044083,0,0,0,0,0,0,0,0,0,0,1.595383,0,0),
(69631,8,-901.265686,2084.680176,27.632118,0,0,0,0,0,0,0,0,0,0,1.820792,0,0),
(69631,9,-923.188904,2118.999512,21.087282,0,0,0,0,0,0,0,0,0,0,2.178149,0,0),
(69631,10,-937.791992,2141.869629,17.333218,0,0,0,0,0,0,0,0,0,0,2.044631,0,0),
(69631,11,-948.638123,2161.392822,16.403925,0,0,0,0,0,0,0,0,0,0,2.314023,0,0),
(69631,12,-956.171143,2173.607178,15.541905,0,0,0,0,0,0,0,0,0,0,2.374499,0,0),
(69631,13,-974.084717,2186.668457,15.085345,0,0,0,0,0,0,0,0,0,0,2.962762,0,0),
(69631,14,-994.165588,2187.265625,14.155642,0,0,0,0,0,0,0,0,0,0,3.136334,0,0),
(69631,15,-1018.802124,2181.951660,17.933630,0,0,0,0,0,0,0,0,0,0,3.548669,0,0),
(69631,16,-1036.020752,2170.746338,23.935820,0,0,0,0,0,0,0,0,0,0,4.078813,0,0),
(69631,17,-1049.238159,2152.982422,34.348988,0,0,0,0,0,0,0,0,0,0,4.538269,0,0),
(69631,18,-1057.010376,2134.835449,46.034103,0,0,0,0,0,0,0,0,0,0,4.501112,0,0),
(69631,19,-1058.724365,2121.959717,52.155811,0,0,0,0,0,0,0,0,0,0,4.853753,0,0),
(69631,20,-1054.448975,2111.354248,55.722900,0,0,0,0,0,0,0,0,0,0,5.430232,0,0),
(69631,21,-1041.797241,2099.953369,60.681328,0,0,0,0,0,0,0,0,0,0,5.577099,0,0),
(69631,22,-1022.156433,2080.880859,67.726036,0,0,0,0,0,0,0,0,0,0,5.514267,0,0),
(69631,23,-1002.301636,2063.610352,67.627098,0,0,0,0,0,0,0,0,0,0,5.608513,0,0);
-- Eye of Grillok #3
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 69633;
DELETE FROM creature_movement WHERE id = 69633;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(69633,1,-930.894531,1990.702148,66.545105,0,0,0,0,0,0,0,0,0,0,3.747118,0,0),
(69633,2,-941.685364,1985.107178,67.674561,0,0,0,0,0,0,0,0,0,0,2.993133,0,0),
(69633,3,-950.815552,1988.375977,68.421768,0,0,0,0,0,0,0,0,0,0,2.434715,0,0),
(69633,4,-956.079712,1995.807251,68.643875,0,0,0,0,0,0,0,0,0,0,1.637535,0,0),
(69633,5,-959.472900,2021.279663,66.942970,0,0,0,0,0,0,0,0,0,0,2.135478,0,0),
(69633,6,-969.235168,2038.831177,66.939651,0,0,0,0,0,0,0,0,0,0,2.473985,0,0),
(69633,7,-990.895447,2056.723145,66.949562,0,0,0,0,0,0,0,0,0,0,2.486551,0,0),
(69633,8,-1016.763000,2074.811523,68.164108,0,0,0,0,0,0,0,0,0,0,2.506186,0,0),
(69633,9,-1040.611572,2089.956787,63.261433,0,0,0,0,0,0,0,0,0,0,2.639704,0,0),
(69633,10,-1065.191162,2099.835205,59.835762,0,0,0,0,0,0,0,0,0,0,2.808564,0,0),
(69633,11,-1089.065186,2107.406982,63.428860,0,0,0,0,0,0,0,0,0,0,2.824272,0,0),
(69633,12,-1108.930054,2118.346924,67.019585,0,0,0,0,0,0,0,0,0,0,2.557237,0,0),
(69633,13,-1122.924561,2127.223877,66.961624,0,0,0,0,0,0,0,0,0,0,2.769295,0,0),
(69633,14,-1132.251587,2128.703857,67.060234,0,0,0,0,0,0,0,0,0,0,2.957791,0,0),
(69633,15,-1116.964722,2124.831055,67.010315,0,0,0,0,0,0,0,0,0,0,6.083674,0,0),
(69633,16,-1097.335571,2117.052979,65.712105,0,0,0,0,0,0,0,0,0,0,5.840204,0,0),
(69633,17,-1073.994629,2105.888428,60.955971,0,0,0,0,0,0,0,0,0,0,5.863766,0,0),
(69633,18,-1039.381348,2091.450928,63.201607,0,0,0,0,0,0,0,0,0,0,5.891257,0,0),
(69633,19,-1024.459229,2081.606445,67.311432,0,0,0,0,0,0,0,0,0,0,5.532326,0,0),
(69633,20,-1003.197632,2062.401611,67.528282,0,0,0,0,0,0,0,0,0,0,5.742814,0,0),
(69633,21,-977.357239,2043.141724,67.555214,0,0,0,0,0,0,0,0,0,0,5.593591,0,0),
(69633,22,-960.437866,2027.433105,67.035728,0,0,0,0,0,0,0,0,0,0,4.961352,0,0),
(69633,23,-956.708801,2000.347656,68.564789,0,0,0,0,0,0,0,0,0,0,5.162415,0,0),
(69633,24,-953.478333,1991.683716,68.546791,0,0,0,0,0,0,0,0,0,0,5.401172,0,0),
(69633,25,-946.047791,1985.082764,68.179298,0,0,0,0,0,0,0,0,0,0,5.907743,0,0),
(69633,26,-941.726868,1985.069458,67.679527,0,0,0,0,0,0,0,0,0,0,0.501846,0,0),
(69633,27,-931.534302,1992.862793,66.433533,0,0,0,0,0,0,0,0,0,0,4.893792,0,0),
(69633,28,-920.878662,1953.941650,67.464890,0,0,0,0,0,0,0,0,0,0,5.035948,0,0),
(69633,29,-922.406921,1963.725830,67.945747,0,0,0,0,0,0,0,0,0,0,1.745129,0,0);
-- Eye of Grillok #4
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 69632;
DELETE FROM creature_movement WHERE id = 69632;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(69632,1,-1039.396362,2090.708008,63.336811,0,0,0,0,0,0,0,0,0,0,3.062276,0,0),
(69632,2,-1063.881104,2091.930176,61.581238,0,0,0,0,0,0,0,0,0,0,3.679600,0,0),
(69632,3,-1087.563354,2080.033203,65.558640,0,0,0,0,0,0,0,0,0,0,3.727509,0,0),
(69632,4,-1100.734741,2068.060303,67.683464,0,0,0,0,0,0,0,0,0,0,3.908936,0,0),
(69632,5,-1072.305298,2083.006592,63.772236,0,0,0,0,0,0,0,0,0,0,0.243483,0,0),
(69632,6,-1049.364624,2088.186279,62.637157,0,0,0,0,0,0,0,0,0,0,0.146879,0,0),
(69632,7,-1037.281250,2089.464844,63.944912,0,0,0,0,0,0,0,0,0,0,6.004379,0,0),
(69632,8,-1023.507629,2081.950195,67.500145,0,0,0,0,0,0,0,0,0,0,5.597548,0,0),
(69632,9,-998.714905,2055.166504,67.140160,0,0,0,0,0,0,0,0,0,0,4.772881,0,0),
(69632,10,-997.205078,2028.710327,67.157890,0,0,0,0,0,0,0,0,0,0,4.772882,0,0),
(69632,11,-998.396973,2005.806519,66.939583,0,0,0,0,0,0,0,0,0,0,4.920537,0,0),
(69632,12,-992.760620,1959.010742,69.775253,0,0,0,0,0,0,0,0,0,0,5.720856,0,0),
(69632,13,-958.248840,1940.995728,67.954483,0,0,0,0,0,0,0,0,0,0,5.805674,0,0),
(69632,14,-990.840576,1949.398682,70.632912,0,0,0,0,0,0,0,0,0,0,1.836274,0,0),
(69632,15,-993.278748,1968.019287,68.950356,0,0,0,0,0,0,0,0,0,0,1.684592,0,0),
(69632,16,-1000.527405,2008.502808,66.939819,0,0,0,0,0,0,0,0,0,0,1.415986,0,0),
(69632,17,-998.168091,2040.536621,67.626595,0,0,0,0,0,0,0,0,0,0,1.737214,0,0),
(69632,18,-1002.555969,2056.830566,67.420433,0,0,0,0,0,0,0,0,0,0,2.365533,0,0),
(69632,19,-1018.969116,2077.498779,68.046677,0,0,0,0,0,0,0,0,0,0,2.407159,0,0);
-- Bleeding Hollow Grunt #4
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 58254;
DELETE FROM creature_movement WHERE id = 58254;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(58254,1,-790.032471,1962.926514,45.344662,0,0,0,0,0,0,0,0,0,0,4.266652,0,0),
(58254,2,-809.197754,1923.560303,51.834373,0,0,0,0,0,0,0,0,0,0,4.119786,0,0),
(58254,3,-827.004089,1896.668823,59.706078,0,0,0,0,0,0,0,0,0,0,4.064810,0,0),
(58254,4,-849.343628,1879.823730,67.125351,0,0,0,0,0,0,0,0,0,0,3.460053,0,0),
(58254,5,-825.689209,1900.386475,58.711632,0,0,0,0,0,0,0,0,0,0,1.146270,0,0),
(58254,6,-808.321594,1925.146851,51.420067,0,0,0,0,0,0,0,0,0,0,0.970341,0,0),
(58254,7,-791.544250,1962.344238,45.315014,0,0,0,0,0,0,0,0,0,0,1.166690,0,0),
(58254,8,-781.956665,1990.765991,40.240845,0,0,0,0,0,0,0,0,0,0,1.284500,0,0),
(58254,9,-773.231079,2018.085938,35.439224,0,0,0,0,0,0,0,0,0,0,1.268792,0,0),
(58254,10,-768.838684,2042.852051,30.903221,0,0,0,0,0,0,0,0,0,0,1.645783,0,0),
(58254,11,-772.550781,2061.688965,27.775206,0,0,0,0,0,0,0,0,0,0,2.043980,0,0),
(58254,12,-787.499084,2083.497559,23.672663,0,0,0,0,0,0,0,0,0,0,2.709999,0,0),
(58254,13,-823.744934,2089.205566,20.918173,0,0,0,0,0,0,0,0,0,0,3.000596,0,0),
(58254,14,-856.988098,2093.570313,22.210340,0,0,0,0,0,0,0,0,0,0,3.012377,0,0),
(58254,15,-886.279663,2099.456543,22.935305,0,0,0,0,0,0,0,0,0,0,2.723350,0,0),
(58254,16,-904.994751,2111.077148,21.143303,0,0,0,0,0,0,0,0,0,0,2.398981,0,0),
(58254,17,-922.803467,2128.003906,19.321318,0,0,0,0,0,0,0,0,0,0,2.632244,0,0),
(58254,18,-942.019836,2150.803467,16.550884,0,0,0,0,0,0,0,0,0,0,2.188493,0,0),
(58254,19,-959.779968,2164.993164,15.898741,0,0,0,0,0,0,0,0,0,0,2.565484,0,0),
(58254,20,-940.572021,2143.932861,17.655590,0,0,0,0,0,0,0,0,0,0,5.451822,0,0),
(58254,21,-918.176575,2118.689209,20.540924,0,0,0,0,0,0,0,0,0,0,5.432188,0,0),
(58254,22,-899.605835,2102.689209,22.878145,0,0,0,0,0,0,0,0,0,0,5.758123,0,0),
(58254,23,-874.996887,2094.672852,23.113935,0,0,0,0,0,0,0,0,0,0,6.005520,0,0),
(58254,24,-850.268921,2093.940186,21.441620,0,0,0,0,0,0,0,0,0,0,0.012928,0,0),
(58254,25,-816.175781,2094.166992,20.135012,0,0,0,0,0,0,0,0,0,0,6.025153,0,0),
(58254,26,-793.212341,2087.497559,22.670568,0,0,0,0,0,0,0,0,0,0,5.798959,0,0),
(58254,27,-781.009766,2077.786621,24.917582,0,0,0,0,0,0,0,0,0,0,5.447103,0,0),
(58254,28,-769.776367,2061.455566,28.088127,0,0,0,0,0,0,0,0,0,0,5.020636,0,0),
(58254,29,-765.402771,2038.763916,31.870306,0,0,0,0,0,0,0,0,0,0,4.634221,0,0),
(58254,30,-769.031128,2017.480835,36.003529,0,0,0,0,0,0,0,0,0,0,4.345197,0,0),
(58254,31,-780.603394,1989.925903,40.515251,0,0,0,0,0,0,0,0,0,0,4.337343,0,0);
-- Bleeding Hollow Grunt #5
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 58236;
DELETE FROM creature_movement WHERE id = 58236;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(58236,1,-1024.859131,2199.926514,16.050743,0,0,0,0,0,0,0,0,0,0,2.861966,0,0),
(58236,2,-1043.709839,2205.847656,18.273947,0,0,0,0,0,0,0,0,0,0,2.814842,0,0),
(58236,3,-1068.301514,2213.877686,22.796705,0,0,0,0,0,0,0,0,0,0,2.861966,0,0),
(58236,4,-1092.911865,2219.375000,27.926315,0,0,0,0,0,0,0,0,0,0,3.015118,0,0),
(58236,5,-1117.160278,2221.180664,33.039249,0,0,0,0,0,0,0,0,0,0,3.168271,0,0),
(58236,6,-1134.753906,2216.388916,37.468540,0,0,0,0,0,0,0,0,0,0,3.665428,0,0),
(58236,7,-1149.060303,2203.347168,42.965729,0,0,0,0,0,0,0,0,0,0,4.243480,0,0),
(58236,8,-1155.481201,2189.720703,48.246181,0,0,0,0,0,0,0,0,0,0,4.472816,0,0),
(58236,9,-1158.350098,2175.262695,53.318989,0,0,0,0,0,0,0,0,0,0,4.718645,0,0),
(58236,10,-1152.853149,2194.926758,46.002682,0,0,0,0,0,0,0,0,0,0,1.142726,0,0),
(58236,11,-1145.526245,2212.204346,40.607738,0,0,0,0,0,0,0,0,0,0,0.858412,0,0),
(58236,12,-1128.846069,2223.858398,35.313477,0,0,0,0,0,0,0,0,0,0,0.477493,0,0),
(58236,13,-1109.886108,2228.368164,30.780582,0,0,0,0,0,0,0,0,0,0,6.213256,0,0),
(58236,14,-1083.278076,2225.963379,25.749516,0,0,0,0,0,0,0,0,0,0,6.167704,0,0),
(58236,15,-1061.527222,2221.215332,21.200569,0,0,0,0,0,0,0,0,0,0,5.994919,0,0),
(58236,16,-1035.280884,2215.967529,16.606760,0,0,0,0,0,0,0,0,0,0,5.768717,0,0),
(58236,17,-1000.940125,2193.198486,13.846385,0,0,0,0,0,0,0,0,0,0,5.665050,0,0),
(58236,18,-976.253113,2185.775879,15.273767,0,0,0,0,0,0,0,0,0,0,5.900667,0,0),
(58236,19,-955.032837,2175.497803,14.907238,0,0,0,0,0,0,0,0,0,0,5.818202,0,0),
(58236,20,-934.932190,2161.587402,15.037132,0,0,0,0,0,0,0,0,0,0,5.357962,0,0),
(58236,21,-910.531006,2137.361816,16.346848,0,0,0,0,0,0,0,0,0,0,5.648554,0,0),
(58236,22,-932.734802,2160.219971,14.882269,0,0,0,0,0,0,0,0,0,0,2.568222,0,0),
(58236,23,-955.264709,2176.375000,14.750407,0,0,0,0,0,0,0,0,0,0,2.775567,0,0),
(58236,24,-980.067322,2185.155273,15.183619,0,0,0,0,0,0,0,0,0,0,2.791275,0,0),
(58236,25,-1001.411621,2192.606201,13.952467,0,0,0,0,0,0,0,0,0,0,2.814837,0,0);
-- Bleeding Hollow Grunt #6
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 58237;
DELETE FROM creature_movement WHERE id = 58237;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(58237,1,-974.290955,2186.155029,15.125253,0,0,0,0,0,0,0,0,0,0,6.027122,0,0),
(58237,2,-951.808167,2177.397217,14.106166,0,0,0,0,0,0,0,0,0,0,5.656416,0,0),
(58237,3,-929.571289,2164.153076,13.464408,0,0,0,0,0,0,0,0,0,0,5.491485,0,0),
(58237,4,-902.517090,2138.786865,16.076986,0,0,0,0,0,0,0,0,0,0,5.548036,0,0),
(58237,5,-930.447998,2172.636475,12.309905,0,0,0,0,0,0,0,0,0,0,2.288632,0,0),
(58237,6,-944.377380,2186.651367,11.893930,0,0,0,0,0,0,0,0,0,0,3.231111,0,0),
(58237,7,-983.654602,2187.450439,14.849688,0,0,0,0,0,0,0,0,0,0,3.144717,0,0),
(58237,8,-1007.330139,2189.930420,14.975175,0,0,0,0,0,0,0,0,0,0,3.034760,0,0),
(58237,9,-1030.587646,2194.994629,17.467888,0,0,0,0,0,0,0,0,0,0,2.932658,0,0),
(58237,10,-1057.931152,2201.248779,21.019207,0,0,0,0,0,0,0,0,0,0,2.909096,0,0),
(58237,11,-1083.973389,2208.651123,26.614111,0,0,0,0,0,0,0,0,0,0,2.858046,0,0),
(58237,12,-1107.716797,2215.392822,31.335537,0,0,0,0,0,0,0,0,0,0,3.060678,0,0),
(58237,13,-1131.010742,2214.459229,36.860252,0,0,0,0,0,0,0,0,0,0,3.587681,0,0),
(58237,14,-1142.891235,2204.847412,41.072144,0,0,0,0,0,0,0,0,0,0,4.147670,0,0),
(58237,15,-1152.114380,2188.745361,47.563145,0,0,0,0,0,0,0,0,0,0,4.521519,0,0),
(58237,16,-1155.218994,2172.216553,53.615444,0,0,0,0,0,0,0,0,0,0,4.821541,0,0),
(58237,17,-1153.807739,2160.074219,58.667461,0,0,0,0,0,0,0,0,0,0,4.860810,0,0),
(58237,18,-1154.314331,2183.874756,49.637375,0,0,0,0,0,0,0,0,0,0,1.597480,0,0),
(58237,19,-1150.311523,2200.556396,43.869713,0,0,0,0,0,0,0,0,0,0,1.251905,0,0),
(58237,20,-1139.975464,2212.489990,39.175163,0,0,0,0,0,0,0,0,0,0,0.659715,0,0),
(58237,21,-1126.375854,2220.283936,35.157448,0,0,0,0,0,0,0,0,0,0,0.135854,0,0),
(58237,22,-1101.180542,2221.347168,29.591373,0,0,0,0,0,0,0,0,0,0,6.064825,0,0),
(58237,23,-1072.664917,2217.092529,23.598436,0,0,0,0,0,0,0,0,0,0,6.137083,0,0),
(58237,24,-1045.890747,2211.764648,18.525686,0,0,0,0,0,0,0,0,0,0,6.086033,0,0),
(58237,25,-1023.868958,2206.671631,15.176994,0,0,0,0,0,0,0,0,0,0,5.789939,0,0),
(58237,26,-1003.496948,2198.920410,13.501784,0,0,0,0,0,0,0,0,0,0,5.706690,0,0),
(58237,27,-983.176147,2187.154297,14.912819,0,0,0,0,0,0,0,0,0,0,5.730252,0,0);


-- ## --  Nagrand -- ## --  


-- Warmaul Hill (Cave)
-- Warmaul Warlock #1
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 63747;
DELETE FROM creature_movement WHERE id = 63747;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(63747,1,-615.581787,8802.628906,202.345459,0,0,0,0,0,0,0,0,0,0,0.509924,0,0),
(63747,2,-600.825256,8812.809570,202.414581,0,0,0,0,0,0,0,0,0,0,0.905765,0,0),
(63747,3,-585.726379,8836.047852,208.710876,0,0,0,0,0,0,0,0,0,0,1.109969,0,0),
(63747,4,-578.854065,8854.451172,210.429611,0,0,0,0,0,0,0,0,0,0,1.022790,0,0),
(63747,5,-571.065063,8864.916016,210.811462,0,0,0,0,0,0,0,0,0,0,0.315931,0,0),
(63747,6,-545.818298,8870.407227,209.292648,0,0,0,0,0,0,0,0,0,0,0.011982,0,0),
(63747,7,-527.514526,8870.347656,208.791000,0,0,0,0,0,0,0,0,0,0,0.325356,0,0),
(63747,8,-507.784210,8874.017578,206.673843,0,0,0,0,0,0,0,0,0,0,6.012471,0,0),
(63747,9,-493.743347,8870.433594,205.310776,0,0,0,0,0,0,0,0,0,0,5.717165,0,0),
(63747,10,-479.994354,8861.848633,202.677017,0,0,0,0,0,0,0,0,0,0,5.371591,0,0),
(63747,11,-476.972076,8848.212891,200.471268,0,0,0,0,0,0,0,0,0,0,5.329182,0,0),
(63747,12,-470.751923,8840.757813,200.245819,0,0,0,0,0,0,0,0,0,0,5.016592,0,0),
(63747,13,-467.603180,8829.301758,200.161453,0,0,0,0,0,0,0,0,0,0,4.806108,0,0),
(63747,14,-466.820801,8824.712891,199.484467,0,0,0,0,0,0,0,0,0,0,5.263996,0,0),
(63747,15,-460.125153,8811.440430,199.140945,0,0,0,0,0,0,0,0,0,0,5.124196,0,0),
(63747,16,-469.725891,8833.606445,199.836975,0,0,0,0,0,0,0,0,0,0,1.610325,0,0),
(63747,17,-469.839539,8839.959961,200.239273,0,0,0,0,0,0,0,0,0,0,2.115336,0,0),
(63747,18,-472.816406,8843.811523,200.321869,0,0,0,0,0,0,0,0,0,0,2.634485,0,0),
(63747,19,-476.791779,8847.058594,200.327393,0,0,0,0,0,0,0,0,0,0,1.848301,0,0),
(63747,20,-479.722015,8858.825195,202.150787,0,0,0,0,0,0,0,0,0,0,2.349385,0,0),
(63747,21,-488.953186,8868.023438,204.763580,0,0,0,0,0,0,0,0,0,0,2.804131,0,0),
(63747,22,-508.365204,8874.719727,206.781693,0,0,0,0,0,0,0,0,0,0,3.496853,0,0),
(63747,23,-531.308105,8871.211914,209.028320,0,0,0,0,0,0,0,0,0,0,3.298147,0,0),
(63747,24,-553.053650,8869.244141,210.236313,0,0,0,0,0,0,0,0,0,0,3.831431,0,0),
(63747,25,-578.369202,8856.199219,210.500824,0,0,0,0,0,0,0,0,0,0,4.204495,0,0),
(63747,26,-590.261658,8828.422852,206.820694,0,0,0,0,0,0,0,0,0,0,4.135377,0,0),
(63747,27,-600.373840,8811.606445,202.436203,0,0,0,0,0,0,0,0,0,0,3.869915,0,0),
(63747,28,-617.177124,8802.176758,202.332123,0,0,0,0,0,0,0,0,0,0,3.588743,0,0),
(63747,29,-645.398193,8792.637695,202.291031,0,0,0,0,0,0,0,0,0,0,3.435590,0,0),
(63747,30,-664.068787,8774.395508,199.322128,0,0,0,0,0,0,0,0,0,0,3.836146,0,0),
(63747,31,-670.379639,8770.128906,196.108063,0,0,0,0,0,0,0,0,0,0,5.111634,0,0),
(63747,32,-667.586426,8760.208008,190.788025,0,0,0,0,0,0,0,0,0,0,4.611331,0,0),
(63747,33,-674.619080,8749.049805,184.612534,0,0,0,0,0,0,0,0,0,0,5.002460,0,0),
(63747,34,-670.746399,8738.015625,183.901230,0,0,0,0,0,0,0,0,0,0,6.008555,0,0),
(63747,35,-657.281311,8735.559570,185.699326,0,0,0,0,0,0,0,0,0,0,5.505899,0,0),
(63747,36,-643.427734,8720.479492,187.312042,0,0,0,0,0,0,0,0,0,0,4.145598,0,0),
(63747,37,-643.590210,8710.242188,188.658005,0,0,0,0,0,0,0,0,0,0,3.495290,0,0),
(63747,38,-655.155945,8705.457031,183.061661,0,0,0,0,0,0,0,0,0,0,2.815135,0,0),
(63747,39,-671.749146,8707.959961,173.990662,0,0,0,0,0,0,0,0,0,0,3.243178,0,0),
(63747,40,-689.984619,8704.096680,166.154297,0,0,0,0,0,0,0,0,0,0,3.847149,0,0),
(63747,41,-709.475342,8690.007813,162.421310,0,0,0,0,0,0,0,0,0,0,3.808665,0,0),
(63747,42,-731.991882,8683.267578,157.838669,0,0,0,0,0,0,0,0,0,0,3.139505,0,0),
(63747,43,-744.754639,8680.236328,158.933228,0,0,0,0,0,0,0,0,0,0,2.758587,0,0),
(63747,44,-761.900940,8684.188477,160.215332,0,0,0,0,0,0,0,0,0,0,3.153642,0,0),
(63747,45,-781.680481,8684.991211,159.456161,0,0,0,0,0,0,0,0,0,0,3.745833,0,0),
(63747,46,-782.305481,8677.609375,160.877731,5000,0,0,0,0,0,0,0,0,0,4.621552,0,0),
(63747,47,-777.186646,8685.665039,159.737885,0,0,0,0,0,0,0,0,0,0,6.095746,0,0),
(63747,48,-746.014160,8684.477539,159.437180,0,0,0,0,0,0,0,0,0,0,6.188425,0,0),
(63747,49,-731.644897,8683.111328,157.818008,0,0,0,0,0,0,0,0,0,0,0.313646,0,0),
(63747,50,-710.329651,8689.276367,162.189987,0,0,0,0,0,0,0,0,0,0,0.656080,0,0),
(63747,51,-695.070618,8700.360352,164.616028,0,0,0,0,0,0,0,0,0,0,0.414962,0,0),
(63747,52,-679.380737,8709.688477,170.645782,0,0,0,0,0,0,0,0,0,0,0.261024,0,0),
(63747,53,-653.700012,8704.459961,184.212753,0,0,0,0,0,0,0,0,0,0,0.068602,0,0),
(63747,54,-644.857483,8714.860352,187.227386,0,0,0,0,0,0,0,0,0,0,1.415560,0,0),
(63747,55,-648.754333,8730.410156,187.513565,0,0,0,0,0,0,0,0,0,0,2.630938,0,0),
(63747,56,-656.725708,8737.370117,186.295700,0,0,0,0,0,0,0,0,0,0,2.945882,0,0),
(63747,57,-669.383301,8738.741211,184.064697,0,0,0,0,0,0,0,0,0,0,2.608160,0,0),
(63747,58,-673.708557,8749.237305,184.806671,0,0,0,0,0,0,0,0,0,0,1.065900,0,0),
(63747,59,-668.139221,8755.954102,189.217880,0,0,0,0,0,0,0,0,0,0,1.435822,0,0),
(63747,60,-669.375549,8768.341797,194.909058,0,0,0,0,0,0,0,0,0,0,0.985788,0,0),
(63747,61,-664.329895,8773.554688,199.050430,0,0,0,0,0,0,0,0,0,0,0.700688,0,0),
(63747,62,-653.615845,8791.429688,200.933167,0,0,0,0,0,0,0,0,0,0,0.282855,0,0),
(63747,63,-640.215942,8795.769531,202.348572,0,0,0,0,0,0,0,0,0,0,0.307452,0,0);
-- Greater Windroc -- now moves correctly ..not with nose underground ;)
UPDATE creature_template SET InhabitType = 1 WHERE entry = 17129;


-- ## --  Shadowmoon Valley -- ## --  


-- Legion Hold - Redone -- SHADOWMOON VALLEY
-- Wrathwalker  
UPDATE creature SET spawndist = 10 WHERE guid IN (70658, 70664, 70621);
-- Wrathwalker #1-11 - correct spawn point
UPDATE creature SET position_x = -3025.22, position_y = 2885.37, position_z = 88.51, orientation = 3.63 WHERE guid = 70664;
UPDATE creature SET position_x = -3322.27, position_y = 2883.35, position_z = 142.17, orientation = 5.74 WHERE guid = 70637;
UPDATE creature SET position_x = -3351.51, position_y = 2849.32, position_z = 149.12, orientation = 6.11 WHERE guid = 70663;
UPDATE creature SET position_x = -3381.65, position_y = 2862.08, position_z = 175.755, orientation = 0.49 WHERE guid = 70639;
UPDATE creature SET position_x = -3257.44, position_y = 2785.14, position_z = 119.95, orientation = 5.73 WHERE guid = 70660;
UPDATE creature SET position_x = -3289.61, position_y = 2855.22, position_z = 126.43, orientation = 6.07 WHERE guid = 70663;
UPDATE creature SET position_x = -3286.73, position_y = 2886.3, position_z = 130.53, orientation = 5.77 WHERE guid = 70627;
UPDATE creature SET position_x = -3408.41, position_y = 2860.61, position_z = 130.53, orientation = 6.13 WHERE guid = 70628;
UPDATE creature SET position_x = -3285.37, position_y = 2763.67, position_z = 133.82, orientation = 6.13 WHERE guid = 70629;
UPDATE creature SET position_x = -3289.79, position_y = 2976.1, position_z = 136.33, orientation = 6.21 WHERE guid = 70630;
UPDATE creature SET position_x = -3276.3, position_y = 3047, position_z = 139.83, orientation = 0.23 WHERE guid = 70631;
-- Overseer Ripsaw - wps
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 75406;
DELETE FROM creature_movement WHERE id = 75406;
UPDATE creature_template SET MovementType= 2 WHERE entry = 21499; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 21499;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(21499,1,-3272.843506,2971.382568,133.970261,0,0,0,0,0,0,0,0,0,0,2.221634,0,0),
(21499,2,-3278.496582,2984.289551,136.129166,0,0,0,0,0,0,0,0,0,0,1.621590,0,0),
(21499,3,-3276.449707,2992.783691,138.053421,0,0,0,0,0,0,0,0,0,0,0.813414,0,0),
(21499,4,-3262.683838,3003.519043,138.648178,3000,0,0,0,0,0,0,0,0,0,0.536169,0,0),
(21499,5,-3280.270020,2984.839600,136.464142,0,0,0,0,0,0,0,0,0,0,4.854287,0,0),
(21499,6,-3277.697266,2973.099365,134.571899,0,0,0,0,0,0,0,0,0,0,5.490453,0,0),
(21499,7,-3255.085449,2960.492432,131.976868,0,0,0,0,0,0,0,0,0,0,5.957759,0,0),
(21499,8,-3237.694580,2951.947754,127.202316,0,0,0,0,0,0,0,0,0,0,5.137015,0,0),
(21499,9,-3228.066162,2925.123535,127.099556,0,0,0,0,0,0,0,0,0,0,4.489064,0,0),
(21499,10,-3238.741943,2908.368652,126.218292,0,0,0,0,0,0,0,0,0,0,3.795768,0,0),
(21499,11,-3252.437500,2900.958740,125.350372,0,0,0,0,0,0,0,0,0,0,2.927117,0,0),
(21499,12,-3260.733154,2903.152832,126.775841,3000,0,0,0,0,0,0,0,0,0,2.660867,0,0),
(21499,13,-3251.934570,2902.005371,125.441032,0,0,0,0,0,0,0,0,0,0,0.267758,0,0),
(21499,14,-3238.650635,2908.147461,126.179871,0,0,0,0,0,0,0,0,0,0,0.774340,0,0),
(21499,15,-3229.861572,2917.152344,127.228485,0,0,0,0,0,0,0,0,0,0,1.216584,0,0),
(21499,16,-3229.093994,2929.261963,126.887856,0,0,0,0,0,0,0,0,0,0,2.020832,0,0),
(21499,17,-3236.670898,2950.031006,126.819160,0,0,0,0,0,0,0,0,0,0,2.389183,0,0);
-- Terrormaster #1
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74634;
DELETE FROM creature_movement WHERE id = 74634;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(74634,1,-3329.757813,3070.925781,154.743927,0,0,0,0,0,0,0,0,0,0,3.362849,0,0),
(74634,2,-3344.113037,3070.876709,164.211990,0,0,0,0,0,0,0,0,0,0,2.359111,0,0),
(74634,3,-3346.537842,3078.499756,163.818710,6000,2131401,0,0,0,0,0,0,0,0,1.676599,0,0),
(74634,4,-3344.984619,3073.876709,163.993866,0,0,0,0,0,0,0,0,0,0,5.655052,0,0),
(74634,5,-3327.645752,3068.910156,154.074799,0,0,0,0,0,0,0,0,0,0,5.992768,0,0),
(74634,6,-3318.893799,3064.214844,150.375198,0,0,0,0,0,0,0,0,0,0,5.105275,0,0),
(74634,7,-3315.575195,3057.529785,148.517715,6000,2131401,0,0,0,0,0,0,0,0,4.937851,0,0),
(74634,8,-3311.989258,3061.288086,147.020065,0,0,0,0,0,0,0,0,0,0,6.229822,0,0),
(74634,9,-3304.685547,3053.843262,145.344589,0,0,0,0,0,0,0,0,0,0,5.306202,0,0),
(74634,10,-3302.840332,3047.133545,146.032333,0,0,0,0,0,0,0,0,0,0,4.554580,0,0),
(74634,11,-3310.399658,3024.938232,158.551208,6000,2131401,0,0,0,0,0,0,0,0,4.238852,0,0),
(74634,12,-3305.737793,3022.960693,155.840332,0,0,0,0,0,0,0,0,0,0,5.680058,0,0),
(74634,13,-3290.165771,3009.220459,145.894882,0,0,0,0,0,0,0,0,0,0,5.393389,0,0),
(74634,14,-3282.511719,2996.426758,140.691452,0,0,0,0,0,0,0,0,0,0,4.725807,0,0),
(74634,15,-3283.229004,2985.925049,137.336945,0,0,0,0,0,0,0,0,0,0,4.124196,0,0),
(74634,16,-3285.952148,2980.388184,136.533859,6000,2131401,0,0,0,0,0,0,0,0,3.736001,0,0),
(74634,17,-3282.865967,2987.629883,137.825500,0,0,0,0,0,0,0,0,0,0,1.657890,0,0),
(74634,18,-3288.058105,3000.072510,144.134018,0,0,0,0,0,0,0,0,0,0,2.318410,0,0),
(74634,19,-3282.690186,3028.929199,142.702667,0,0,0,0,0,0,0,0,0,0,1.811830,0,0),
(74634,20,-3287.721680,3054.595947,141.166763,0,0,0,0,0,0,0,0,0,0,1.614081,0,0),
(74634,21,-3284.459717,3065.074463,140.890747,0,0,0,0,0,0,0,0,0,0,2.384883,0,0),
(74634,22,-3292.313721,3069.325928,142.174789,0,0,0,0,0,0,0,0,0,0,3.024712,0,0);
-- Terrormaster #2
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74622;
DELETE FROM creature_movement WHERE id = 74622;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(74622,1,-3062.203125,2938.720215,91.592888,0,0,0,0,0,0,0,0,0,0,0.978424,0,0),
(74622,2,-3050.474854,2951.362061,92.405670,0,0,0,0,0,0,0,0,0,0,0.990205,0,0),
(74622,3,-3045.588867,2963.722412,92.465736,0,0,0,0,0,0,0,0,0,0,1.795394,0,0),
(74622,4,-3052.378418,2984.158691,92.367073,6000,2131401,0,0,0,0,0,0,0,0,0.387960,0,0),
(74622,5,-3076.864990,2984.227783,95.086235,0,0,0,0,0,0,0,0,0,0,3.749465,0,0),
(74622,6,-3082.461670,2972.360596,92.091080,0,0,0,0,0,0,0,0,0,0,4.508943,0,0),
(74622,7,-3083.167236,2954.880859,90.967857,6000,2131401,0,0,0,0,0,0,0,0,4.618897,0,0),
(74622,8,-3093.774658,2954.795898,91.075104,0,0,0,0,0,0,0,0,0,0,3.886122,0,0),
(74622,9,-3102.001953,2943.352295,90.906097,0,0,0,0,0,0,0,0,0,0,3.665419,0,0),
(74622,10,-3135.847168,2936.670410,93.543846,0,0,0,0,0,0,0,0,0,0,2.949923,0,0),
(74622,11,-3143.173340,2938.824463,94.686859,0,0,0,0,0,0,0,0,0,0,2.199867,0,0),
(74622,12,-3144.868896,2945.833252,97.264206,0,0,0,0,0,0,0,0,0,0,1.245608,0,0),
(74622,13,-3142.847900,2951.322998,99.935265,6000,2131401,0,0,0,0,0,0,0,0,1.194557,0,0),
(74622,14,-3156.553955,2937.103271,97.069611,0,0,0,0,0,0,0,0,0,0,4.236068,0,0),
(74622,15,-3164.269531,2914.989746,97.231606,0,0,0,0,0,0,0,0,0,0,4.805474,0,0),
(74622,16,-3165.469971,2898.994141,94.661240,0,0,0,0,0,0,0,0,0,0,4.877803,0,0),
(74622,17,-3151.906494,2884.905029,90.298508,6000,2131401,0,0,0,0,0,0,0,0,4.975973,0,0),
(74622,18,-3129.689453,2891.026123,88.845779,0,0,0,0,0,0,0,0,0,0,0.165246,0,0),
(74622,19,-3114.145508,2894.488037,89.653664,6000,2131401,0,0,0,0,0,0,0,0,5.254235,0,0),
(74622,20,-3091.557617,2897.551270,87.620613,0,0,0,0,0,0,0,0,0,0,0.458591,0,0),
(74622,21,-3076.135742,2911.249023,89.856445,0,0,0,0,0,0,0,0,0,0,0.949465,0,0),
(74622,22,-3067.267578,2926.395020,90.501869,0,0,0,0,0,0,0,0,0,0,1.295041,0,0);
-- Terrormaster #3
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74636;
DELETE FROM creature_movement WHERE id = 74636;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(74636,1,-3144.013428,2826.223389,87.533920,0,0,0,0,0,0,0,0,0,0,0.809664,0,0),
(74636,2,-3131.590820,2834.472900,88.040001,0,0,0,0,0,0,0,0,0,0,0.862285,0,0),
(74636,3,-3118.202881,2854.458496,88.093536,6000,2131401,0,0,0,0,0,0,0,0,0.973368,0,0),
(74636,4,-3147.547607,2814.663086,88.066422,0,0,0,0,0,0,0,0,0,0,3.675138,0,0),
(74636,5,-3165.722168,2805.161865,85.995201,0,0,0,0,0,0,0,0,0,0,3.280822,0,0),
(74636,6,-3184.360596,2803.867432,90.714439,0,0,0,0,0,0,0,0,0,0,3.653100,0,0),
(74636,7,-3197.542236,2792.007813,97.730141,0,0,0,0,0,0,0,0,0,0,4.089782,0,0),
(74636,8,-3207.452148,2777.017334,101.634155,0,0,0,0,0,0,0,0,0,0,4.317546,0,0),
(74636,9,-3217.544434,2755.202637,103.727676,6000,2131401,0,0,0,0,0,0,0,0,4.331028,0,0),
(74636,10,-3230.493408,2765.470947,106.487785,0,0,0,0,0,0,0,0,0,0,2.219092,0,0),
(74636,11,-3239.161133,2778.305664,109.062874,0,0,0,0,0,0,0,0,0,0,2.293705,0,0),
(74636,12,-3244.885254,2784.778320,114.759155,0,0,0,0,0,0,0,0,0,0,2.320409,0,0),
(74636,13,-3254.557617,2789.591553,118.702293,6000,2131401,0,0,0,0,0,0,0,0,3.910841,0,0),
(74636,14,-3261.707275,2792.382080,120.581421,0,0,0,0,0,0,0,0,0,0,3.291946,0,0),
(74636,15,-3266.888184,2789.513184,122.247307,0,0,0,0,0,0,0,0,0,0,4.016870,0,0),
(74636,16,-3266.446289,2782.083008,125.511719,0,0,0,0,0,0,0,0,0,0,4.009803,0,0),
(74636,17,-3270.951904,2775.994141,130.832123,0,0,0,0,0,0,0,0,0,0,3.797747,0,0),
(74636,18,-3281.485596,2767.157471,133.131439,6000,2131401,0,0,0,0,0,0,0,0,3.657947,0,0),
(74636,19,-3269.691650,2779.241455,129.845367,0,0,0,0,0,0,0,0,0,0,1.113248,0,0),
(74636,20,-3264.957031,2788.327393,121.466026,0,0,0,0,0,0,0,0,0,0,1.203393,0,0),
(74636,21,-3253.327637,2804.870117,122.329269,0,0,0,0,0,0,0,0,0,0,0.571933,0,0),
(74636,22,-3238.121826,2814.250732,120.261360,0,0,0,0,0,0,0,0,0,0,0.524024,0,0),
(74636,23,-3227.785889,2818.469971,119.562149,6000,2131401,0,0,0,0,0,0,0,0,0.264842,0,0),
(74636,24,-3233.607666,2807.020020,117.168068,0,0,0,0,0,0,0,0,0,0,5.193204,0,0),
(74636,25,-3226.809082,2800.188232,110.400291,0,0,0,0,0,0,0,0,0,0,5.731197,0,0),
(74636,26,-3216.584961,2795.667969,101.421097,0,0,0,0,0,0,0,0,0,0,0.092819,0,0),
(74636,27,-3200.344727,2800.758301,95.689926,0,0,0,0,0,0,0,0,0,0,0.411275,0,0),
(74636,28,-3181.612549,2804.176758,89.712044,0,0,0,0,0,0,0,0,0,0,5.543069,0,0),
(74636,29,-3175.855469,2797.444336,85.114502,0,0,0,0,0,0,0,0,0,0,4.839379,0,0),
(74636,30,-3175.609131,2789.866699,82.983917,6000,2131401,0,0,0,0,0,0,0,0,4.470246,0,0),
(74636,31,-3160.937988,2804.302002,86.822121,0,0,0,0,0,0,0,0,0,0,0.601375,0,0),
(74636,32,-3144.978516,2816.179443,88.070740,0,0,0,0,0,0,0,0,0,0,0.874693,0,0);
-- Terrormaster #4 - correct spawn point + wps
UPDATE creature SET position_x = -3196, position_y = 2930.8, position_z = 123.67, orientation = 3.84 WHERE guid = 74637;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74637;
DELETE FROM creature_movement WHERE id = 74637;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(74637,1,-3222.600830,2915.962891,127.170555,0,0,0,0,0,0,0,0,0,0,4.035916,0,0),
(74637,2,-3250.622314,2892.012451,122.101128,6000,2131401,0,0,0,0,0,0,0,0,5.059285,0,0),
(74637,3,-3224.201416,2915.458740,127.285095,6000,2131401,0,0,0,0,0,0,0,0,5.733152,0,0),
(74637,4,-3193.362793,2949.597656,123.667694,0,0,0,0,0,0,0,0,0,0,1.009767,0,0),
(74637,5,-3170.701416,2968.863525,123.324928,6000,2131401,0,0,0,0,0,0,0,0,6.050455,0,0),
(74637,6,-3161.214844,2983.006836,123.131256,0,0,0,0,0,0,0,0,0,0,1.881566,0,0),
(74637,7,-3170.968018,3011.725830,117.823761,0,0,0,0,0,0,0,0,0,0,2.502031,0,0),
(74637,8,-3183.952148,3017.812988,121.006805,0,0,0,0,0,0,0,0,0,0,2.808335,0,0),
(74637,9,-3189.267578,3023.014404,122.621803,0,0,0,0,0,0,0,0,0,0,2.011942,0,0),
(74637,10,-3189.666992,3027.659912,123.354446,6000,2131401,0,0,0,0,0,0,0,0,1.115017,0,0),
(74637,11,-3189.753906,3014.007568,123.190926,0,0,0,0,0,0,0,0,0,0,4.308440,0,0),
(74637,12,-3199.495117,3000.338379,127.514755,0,0,0,0,0,0,0,0,0,0,3.122644,0,0),
(74637,13,-3213.557129,3002.005127,132.152618,0,0,0,0,0,0,0,0,0,0,2.210796,0,0),
(74637,14,-3219.909668,3010.632568,135.698639,0,0,0,0,0,0,0,0,0,0,1.343467,0,0),
(74637,15,-3218.474854,3020.875488,137.528564,6000,2131401,0,0,0,0,0,0,0,0,6.183452,0,0),
(74637,16,-3215.749023,3035.348145,137.178757,0,0,0,0,0,0,0,0,0,0,1.736527,0,0),
(74637,17,-3219.731689,3049.982178,137.486435,6000,2131401,0,0,0,0,0,0,0,0,0.633043,0,0),
(74637,18,-3234.814697,3067.511475,137.132431,0,0,0,0,0,0,0,0,0,0,1.804071,0,0),
(74637,19,-3234.655762,3077.497070,134.469025,0,0,0,0,0,0,0,0,0,0,0.911072,0,0),
(74637,20,-3228.106689,3083.994385,131.733597,0,0,0,0,0,0,0,0,0,0,0.307886,0,0),
(74637,21,-3213.157715,3087.223633,127.534134,0,0,0,0,0,0,0,0,0,0,0.220708,0,0),
(74637,22,-3197.184082,3094.327393,128.870483,0,0,0,0,0,0,0,0,0,0,0.121748,0,0),
(74637,23,-3187.356445,3094.932373,129.825272,0,0,0,0,0,0,0,0,0,0,5.768761,0,0),
(74637,24,-3183.062256,3087.640137,132.336929,6000,2131401,0,0,0,0,0,0,0,0,4.748534,0,0),
(74637,25,-3194.023926,3091.458008,128.925629,0,0,0,0,0,0,0,0,0,0,3.798204,0,0),
(74637,26,-3200.843262,3082.405273,125.588135,0,0,0,0,0,0,0,0,0,0,4.571815,0,0),
(74637,27,-3202.311279,3070.892090,122.495529,0,0,0,0,0,0,0,0,0,0,5.007706,0,0),
(74637,28,-3176.484375,3039.641357,115.087349,0,0,0,0,0,0,0,0,0,0,5.222115,0,0),
(74637,29,-3173.190430,3028.743652,115.706947,0,0,0,0,0,0,0,0,0,0,4.734383,0,0),
(74637,30,-3167.860107,3000.140869,119.181664,0,0,0,0,0,0,0,0,0,0,5.064918,0,0),
(74637,31,-3162.693848,2985.858398,123.025230,0,0,0,0,0,0,0,0,0,0,4.640798,0,0),
(74637,32,-3167.539307,2973.269775,123.581284,0,0,0,0,0,0,0,0,0,0,3.799498,0,0),
(74637,33,-3186.521484,2957.967529,123.546555,0,0,0,0,0,0,0,0,0,0,4.108949,0,0),
(74637,34,-3192.256836,2946.680664,123.619225,0,0,0,0,0,0,0,0,0,0,4.511072,0,0),
(74637,35,-3196.261719,2930.507568,123.674210,0,0,0,0,0,0,0,0,0,0,3.929878,0,0);
-- Terrormaster #5 - correct spawn point + wps
UPDATE creature SET position_x = -3366.27, position_y = 2878.73, position_z = 156.911, orientation = 3.28 WHERE guid = 74635;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74635;
DELETE FROM creature_movement WHERE id = 74635;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(74635,1,-3387.851807,2872.679932,167.923645,0,0,0,0,0,0,0,0,0,0,3.674093,0,0),
(74635,2,-3401.326660,2861.706055,173.817642,6000,2131401,0,0,0,0,0,0,0,0,3.218561,0,0),
(74635,3,-3383.880615,2870.013916,166.428833,6000,2131401,0,0,0,0,0,0,0,0,4.787007,0,0),
(74635,4,-3369.096191,2879.979004,158.486572,0,0,0,0,0,0,0,0,0,0,0.775977,0,0),
(74635,5,-3364.566650,2888.386475,161.382675,0,0,0,0,0,0,0,0,0,0,1.574728,0,0),
(74635,6,-3365.481934,2895.357422,165.872467,6000,2131401,0,0,0,0,0,0,0,0,1.840192,0,0),
(74635,7,-3350.011230,2854.959961,149.521545,6000,2131401,0,0,0,0,0,0,0,0,4.720248,0,0),
(74635,8,-3319.504883,2854.594482,135.158936,0,0,0,0,0,0,0,0,0,0,0.222267,0,0),
(74635,9,-3293.606445,2861.083740,128.770035,6000,2131401,0,0,0,0,0,0,0,0,5.444383,0,0),
(74635,10,-3291.865967,2883.758057,131.406723,6000,2131401,0,0,0,0,0,0,0,0,0.596908,0,0),
(74635,11,-3321.485596,2878.826904,140.475174,6000,2131401,0,0,0,0,0,0,0,0,1.737307,0,0),
(74635,12,-3342.939209,2880.083252,151.645950,0,0,0,0,0,0,0,0,0,0,2.729265,0,0),
(74635,13,-3367.237061,2879.806152,157.580261,0,0,0,0,0,0,0,0,0,0,3.294752,0,0);
-- Terrormaster should talk to 19740 on his wps
DELETE FROM dbscripts_on_creature_movement WHERE id = 2131401; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2131401,0,31,19740,10,0,0,0,-5000,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(2131401,2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2131401,4,1,66,0,19740,10,0x04,0,0,0,0,0,0,0,0,'force 19740 to: emote');
-- Makazradon -- wps -- correct wps added  
DELETE FROM creature_movement_template WHERE entry = 21501;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(21501,1,-3247.604004,2994.167480,135.993484,0,0,0,0,0,0,0,0,0,0,2.398583,0,0),
(21501,2,-3279.025879,3007.973389,141.888947,0,0,0,0,0,0,0,0,0,0,2.803064,0,0),
(21501,3,-3298.270020,3015.950439,150.866119,0,0,0,0,0,0,0,0,0,0,2.311651,0,0),
(21501,4,-3305.809326,3025.773926,154.973022,0,0,0,0,0,0,0,0,0,0,1.783863,0,0),
(21501,5,-3306.911865,3039.003906,150.530472,0,0,0,0,0,0,0,0,0,0,0.896363,0,0),
(21501,6,-3290.875244,3050.579590,142.305161,0,0,0,0,0,0,0,0,0,0,0.584560,0,0),
(21501,7,-3247.361572,3076.234375,135.867859,0,0,0,0,0,0,0,0,0,0,0.312027,0,0),
(21501,8,-3226.746826,3084.365967,131.209534,0,0,0,0,0,0,0,0,0,0,0.048247,0,0),
(21501,9,-3212.599121,3083.740723,127.017624,0,0,0,0,0,0,0,0,0,0,5.411735,0,0),
(21501,10,-3189.074463,3053.510010,116.723297,0,0,0,0,0,0,0,0,0,0,5.653965,0,0),
(21501,11,-3163.712402,3039.346680,109.256241,0,0,0,0,0,0,0,0,0,0,5.522796,0,0),
(21501,12,-3123.281250,2992.121826,97.344063,0,0,0,0,0,0,0,0,0,0,4.842641,0,0),
(21501,13,-3119.818848,2954.273438,93.262192,0,0,0,0,0,0,0,0,0,0,4.552833,0,0),
(21501,14,-3126.953613,2940.518555,93.391373,0,0,0,0,0,0,0,0,0,0,3.528627,0,0),
(21501,15,-3147.164551,2936.335938,94.750710,0,0,0,0,0,0,0,0,0,0,3.613429,0,0),
(21501,16,-3157.915039,2926.544922,96.005447,0,0,0,0,0,0,0,0,0,0,4.335994,0,0),
(21501,17,-3172.449219,2894.140869,96.478958,0,0,0,0,0,0,0,0,0,0,4.337167,0,0),
(21501,18,-3177.282959,2877.402832,96.641151,0,0,0,0,0,0,0,0,0,0,4.816255,0,0),
(21501,19,-3169.696777,2843.482910,89.179810,0,0,0,0,0,0,0,0,0,0,4.649749,0,0),
(21501,20,-3170.422363,2824.293213,87.797813,0,0,0,0,0,0,0,0,0,0,4.093695,0,0),
(21501,21,-3187.373047,2806.074463,91.511307,0,0,0,0,0,0,0,0,0,0,3.818810,0,0),
(21501,22,-3206.979248,2791.168213,99.263664,0,0,0,0,0,0,0,0,0,0,3.001210,0,0),
(21501,23,-3219.352295,2790.443848,102.431892,0,0,0,0,0,0,0,0,0,0,2.887837,0,0),
(21501,24,-3238.972168,2798.192871,116.781219,0,0,0,0,0,0,0,0,0,0,3.085757,0,0),
(21501,25,-3272.612061,2796.842285,122.802559,0,0,0,0,0,0,0,0,0,0,3.170580,0,0),
(21501,26,-3306.260010,2800.199951,123.103752,0,0,0,0,0,0,0,0,0,0,2.549330,0,0),
(21501,27,-3323.377441,2811.405762,123.410988,0,0,0,0,0,0,0,0,0,0,1.963236,0,0),
(21501,28,-3326.329834,2831.935791,130.764023,0,0,0,0,0,0,0,0,0,0,0.881953,0,0),
(21501,29,-3305.216797,2857.187744,130.839249,0,0,0,0,0,0,0,0,0,0,0.751577,0,0),
(21501,30,-3293.862061,2880.298340,131.406845,0,0,0,0,0,0,0,0,0,0,1.309995,0,0),
(21501,31,-3287.932373,2911.600342,132.587997,0,0,0,0,0,0,0,0,0,0,1.054418,0,0),
(21501,32,-3278.145508,2933.549805,131.801346,0,0,0,0,0,0,0,0,0,0,0.294013,0,0),
(21501,33,-3256.962891,2941.665771,128.587296,0,0,0,0,0,0,0,0,0,0,1.256753,0,0),
(21501,34,-3243.065186,2976.445313,132.121201,0,0,0,0,0,0,0,0,0,0,1.504154,0,0);

-- Coilskar point - Redone -- SHADOWMOON VALLEY
-- Enraged Water Spirit - correct spawn points, spawndist, movementype - updates
UPDATE creature SET spawndist=10, MovementType=1 WHERE guid IN (73967, 73975);
UPDATE creature SET spawndist=5, MovementType=1 WHERE guid IN (73968, 73969, 73977, 73978, 73979, 73980);
UPDATE creature_template SET inhabitType= 1 WHERE entry = 21059; -- we don't need '3' .. theres no deep ponds or lakes there, also with 3 he falls under the ground.
UPDATE creature SET position_x = -2750.37, position_y = 1477.62, position_z = 6.06, orientation = 2.86, spawndist = 10, MovementType = 1 WHERE guid = 73973;
UPDATE creature SET position_x = -2778.82, position_y = 1515.12, position_z = 6.46, orientation = 0.48, spawndist = 10, MovementType = 1 WHERE guid = 73972;
UPDATE creature SET position_x = -3213.69, position_y = 1757.05, position_z = 88.43, orientation = 3.01, spawndist = 10, MovementType = 1 WHERE guid = 73966;
UPDATE creature SET position_x = -2753.05, position_y = 1532.47, position_z = 6.38, orientation = 3.67, spawndist = 5, MovementType = 1 WHERE guid = 73974;
UPDATE creature SET position_x = -2822.20, position_y = 1451.23, position_z = 5.89, orientation = 3.50, spawndist = 10, MovementType = 1 WHERE guid = 73971;
-- Enraged Water Spirit #14 - wps
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 73970;
DELETE FROM creature_movement WHERE id = 73970;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(73970,1,-2968.68,1703.04,66.32,0,0,0,0,0,0,0,0,0,0,3.75,0,0),
(73970,2,-2950.61,1724.91,66.16,0,0,0,0,0,0,0,0,0,0,1.64,0,0),
(73970,3,-2946.80,1740.59,66.16,0,0,0,0,0,0,0,0,0,0,1.63,0,0),
(73970,4,-2948.52,1754.60,66.04,0,0,0,0,0,0,0,0,0,0,1.84,0,0),
(73970,5,-2945.53,1731.65,66.28,0,0,0,0,0,0,0,0,0,0,4.39,0,0);
-- Enraged Water Spirit #15 - wps
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 73976;
DELETE FROM creature_movement WHERE id = 73976;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(73976,1,-2861.152832,1430.137817,6.212326,0,0,0,0,0,0,0,0,0,0,1.373287,0,0),
(73976,2,-2860.966309,1439.020264,6.254366,0,0,0,0,0,0,0,0,0,0,1.935632,0,0),
(73976,3,-2866.094727,1446.807007,6.236337,0,0,0,0,0,0,0,0,0,0,2.284349,0,0),
(73976,4,-2869.699463,1452.445068,6.063048,0,0,0,0,0,0,0,0,0,0,1.597126,0,0),
(73976,5,-2861.872070,1466.385132,6.057288,0,0,0,0,0,0,0,0,0,0,0.587889,0,0),
(73976,6,-2854.626465,1469.490601,6.121273,0,0,0,0,0,0,0,0,0,0,6.264747,0,0),
(73976,7,-2833.738281,1470.152710,6.320684,0,0,0,0,0,0,0,0,0,0,0.330278,0,0),
(73976,8,-2810.742432,1481.113159,6.372933,0,0,0,0,0,0,0,0,0,0,0.980588,0,0),
(73976,9,-2799.000977,1496.064209,6.100363,0,0,0,0,0,0,0,0,0,0,0.838430,0,0),
(73976,10,-2790.837402,1505.846069,6.286506,0,0,0,0,0,0,0,0,0,0,0.890266,0,0),
(73976,11,-2783.837646,1516.140869,6.398393,0,0,0,0,0,0,0,0,0,0,1.188718,0,0),
(73976,12,-2782.583008,1521.707153,6.257148,0,0,0,0,0,0,0,0,0,0,0.914614,0,0),
(73976,13,-2774.634277,1524.698364,6.330190,0,0,0,0,0,0,0,0,0,0,6.054260,0,0),
(73976,14,-2768.782227,1521.139893,6.391075,0,0,0,0,0,0,0,0,0,0,5.131421,0,0),
(73976,15,-2754.831055,1487.750854,6.011575,0,0,0,0,0,0,0,0,0,0,4.660968,0,0),
(73976,16,-2754.208984,1477.664063,6.018538,0,0,0,0,0,0,0,0,0,0,4.016948,0,0),
(73976,17,-2759.584961,1473.342407,6.019732,0,0,0,0,0,0,0,0,0,0,3.411408,0,0),
(73976,18,-2776.859131,1468.137451,6.187690,0,0,0,0,0,0,0,0,0,0,3.681586,0,0),
(73976,19,-2799.311279,1457.955811,6.213720,0,0,0,0,0,0,0,0,0,0,3.576343,0,0),
(73976,20,-2827.651367,1441.630005,5.808296,0,0,0,0,0,0,0,0,0,0,3.682371,0,0),
(73976,21,-2861.356201,1420.465210,6.061584,0,0,0,0,0,0,0,0,0,0,3.705933,0,0),
(73976,22,-2878.200439,1410.968750,6.136442,0,0,0,0,0,0,0,0,0,0,3.611686,0,0),
(73976,23,-2888.198730,1405.956543,6.224855,0,0,0,0,0,0,0,0,0,0,3.717714,0,0),
(73976,24,-2898.496338,1397.407471,6.176886,0,0,0,0,0,0,0,0,0,0,4.157537,0,0),
(73976,25,-2891.018066,1407.442993,6.155785,0,0,0,0,0,0,0,0,0,0,0.660943,0,0),
(73976,26,-2874.207520,1417.343018,6.171679,0,0,0,0,0,0,0,0,0,0,0.513288,0,0);
-- Coilskar Myrmidon - correct spawn point
UPDATE creature SET position_x = -2984.79, position_y = 1302.27, position_z = 7.42, orientation = 1.87, spawndist = 10, MovementType = 1 WHERE guid = 70708;
-- Coilskar Defender - update
UPDATE creature_template SET unit_flags=unit_flags &~ 0x2000300, flags_extra = 2048 WHERE entry = 19762; 
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 70693;
DELETE FROM creature_movement WHERE id = 70693;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(70693,1,-3048.674316,1763.918335,76.291183,0,0,0,0,0,0,0,0,0,0,6.257137,0,0),
(70693,2,-3088.770020,1761.732300,75.197487,0,0,0,0,0,0,0,0,0,0,3.131252,0,0);
-- Coilskar Sorceress -- we don't need '3' .. theres no deep ponds or lakes there, also with 3 he falls under the ground.
UPDATE creature_template SET inhabitType = 1 WHERE entry = 19767;
-- Coilskar Siren #1
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 70714;
DELETE FROM creature_movement WHERE id = 70714;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(70714,1,-3041.476318,1656.305298,66.524933,2000,0,0,0,0,0,0,0,0,0,0.024692,0,0),
(70714,2,-3081.508789,1641.820679,62.313141,0,0,0,0,0,0,0,0,0,0,3.745911,0,0),
(70714,3,-3105.275391,1628.812378,57.298016,0,0,0,0,0,0,0,0,0,0,3.447733,0,0),
(70714,4,-3126.220215,1621.720337,55.605270,0,0,0,0,0,0,0,0,0,0,3.317357,0,0),
(70714,5,-3141.611084,1616.996948,53.291500,0,0,0,0,0,0,0,0,0,0,3.636229,0,0),
(70714,6,-3154.592041,1607.606812,54.247635,0,0,0,0,0,0,0,0,0,0,3.891483,0,0),
(70714,7,-3160.416992,1595.942261,55.537144,0,0,0,0,0,0,0,0,0,0,4.798617,0,0),
(70714,8,-3159.296875,1588.215698,55.548504,3000,0,0,0,0,0,0,0,0,0,5.185031,0,0),
(70714,9,-3159.716309,1597.822266,55.344860,0,0,0,0,0,0,0,0,0,0,1.251757,0,0),
(70714,10,-3155.706055,1605.746948,54.533394,0,0,0,0,0,0,0,0,0,0,0.733394,0,0),
(70714,11,-3148.737793,1612.342163,53.391853,0,0,0,0,0,0,0,0,0,0,0.465573,0,0),
(70714,12,-3115.529297,1628.920654,56.806492,0,0,0,0,0,0,0,0,0,0,0.465283,0,0),
(70714,13,-3084.626709,1645.998901,62.901539,0,0,0,0,0,0,0,0,0,0,0.488180,0,0),
(70714,14,-3066.649902,1655.899414,65.268730,0,0,0,0,0,0,0,0,0,0,0.226641,0,0);
-- Coilskar Siren #2
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 70713;
DELETE FROM creature_movement WHERE id = 70713;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(70713,1,-3168.846191,1761.929321,88.983124,0,0,0,0,0,0,0,0,0,0,5.982031,0,0),
(70713,2,-3152.446777,1756.864624,86.042015,0,0,0,0,0,0,0,0,0,0,6.088060,0,0),
(70713,3,-3131.216309,1752.949829,79.427544,0,0,0,0,0,0,0,0,0,0,6.072350,0,0),
(70713,4,-3117.546875,1746.603760,76.791733,0,0,0,0,0,0,0,0,0,0,5.648236,0,0),
(70713,5,-3111.517334,1740.766479,74.889114,0,0,0,0,0,0,0,0,0,0,5.510793,0,0),
(70713,6,-3104.240234,1728.828613,71.836258,0,0,0,0,0,0,0,0,0,0,5.224125,0,0),
(70713,7,-3102.125488,1725.200317,71.037941,0,0,0,0,0,0,0,0,0,0,5.832022,0,0),
(70713,8,-3096.254395,1721.875732,69.965622,0,0,0,0,0,0,0,0,0,0,5.589332,0,0),
(70713,9,-3093.924072,1722.618774,69.880249,0,0,0,0,0,0,0,0,0,0,1.945086,0,0),
(70713,10,-3101.587891,1725.315308,70.987259,0,0,0,0,0,0,0,0,0,0,2.903272,0,0),
(70713,11,-3110.143066,1740.758911,74.710915,0,0,0,0,0,0,0,0,0,0,2.322077,0,0),
(70713,12,-3115.241455,1746.463745,76.491493,0,0,0,0,0,0,0,0,0,0,2.769754,0,0),
(70713,13,-3139.832275,1755.221191,81.258255,0,0,0,0,0,0,0,0,0,0,2.850651,0,0),
(70713,14,-3156.402588,1758.339844,87.173431,0,0,0,0,0,0,0,0,0,0,2.992025,0,0),
(70713,15,-3169.149658,1761.903442,88.995117,0,0,0,0,0,0,0,0,0,0,2.787821,0,0),
(70713,16,-3184.804443,1766.693848,88.330719,3000,0,0,0,0,0,0,0,0,0,2.798031,0,0),
(70713,17,-3190.322998,1771.278442,88.296532,4000,0,0,0,0,0,0,0,0,0,2.560055,0,0);
-- Coilskar Siren #3
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 70715;
DELETE FROM creature_movement WHERE id = 70715;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(70715,1,-2990.202881,1741.093628,75.869385,0,0,0,0,0,0,0,0,0,0,4.781379,0,0),
(70715,2,-2990.906494,1736.774780,76.008713,0,0,0,0,0,0,0,0,0,0,4.415385,0,0),
(70715,3,-2996.212402,1726.545410,74.715889,0,0,0,0,0,0,0,0,0,0,4.369047,0,0),
(70715,4,-2999.187988,1718.014526,73.706184,0,0,0,0,0,0,0,0,0,0,4.847353,0,0),
(70715,5,-2996.248047,1704.241211,72.080551,0,0,0,0,0,0,0,0,0,0,5.063334,0,0),
(70715,6,-3007.091064,1714.338745,73.779472,0,0,0,0,0,0,0,0,0,0,2.428324,0,0),
(70715,7,-3026.657227,1735.814331,75.439522,0,0,0,0,0,0,0,0,0,0,2.548490,0,0),
(70715,8,-3056.120117,1745.226440,75.173630,0,0,0,0,0,0,0,0,0,0,3.095912,0,0),
(70715,9,-3047.972412,1749.997559,75.296692,0,0,0,0,0,0,0,0,0,0,0.146742,0,0),
(70715,10,-3042.118652,1749.057983,75.198174,0,0,0,0,0,0,0,0,0,0,5.495306,0,0),
(70715,11,-3030.037842,1739.280518,75.436424,0,0,0,0,0,0,0,0,0,0,5.728569,0,0),
(70715,12,-3023.644531,1736.560425,75.412933,0,0,0,0,0,0,0,0,0,0,0.088624,0,0),
(70715,13,-3018.395020,1736.784546,75.361969,0,0,0,0,0,0,0,0,0,0,0.374507,0,0),
(70715,14,-3015.353027,1740.301392,75.292984,0,0,0,0,0,0,0,0,0,0,1.332693,0,0),
(70715,15,-3016.528076,1748.510254,75.218391,0,0,0,0,0,0,0,0,0,0,1.906034,0,0),
(70715,16,-3020.714111,1758.131104,75.207108,0,0,0,0,0,0,0,0,0,0,2.015989,0,0),
(70715,17,-3013.582520,1744.752319,75.429413,0,0,0,0,0,0,0,0,0,0,5.487451,0,0),
(70715,18,-3004.684082,1739.765137,75.553413,0,0,0,0,0,0,0,0,0,0,6.151897,0,0),
(70715,19,-2993.285645,1742.313843,75.795509,0,0,0,0,0,0,0,0,0,0,0.339164,0,0);
-- Coilskar Siren #4 - correct spawn point + wps
UPDATE creature SET position_x = -3011.76, position_y = 1667.38, position_z = 69.01, orientation = 1.361 WHERE guid = 70719;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 70719;
DELETE FROM creature_movement WHERE id = 70719;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(70719,1,-3013.80,1657.69,68.37,30000,0,0,0,0,0,0,0,0,0,1.53,0,0),
(70719,2,-3012.06,1666.31,69.01,60000,0,0,0,0,0,0,0,0,0,1.25,0,0);
-- Coilskar Waterseeker #1
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 70810;
DELETE FROM creature_movement WHERE id = 70810;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(70810,1,-3043.166504,1733.805298,75.262810,0,0,0,0,0,0,0,0,0,0,3.407362,0,0),
(70810,2,-3048.647705,1732.653198,75.362801,0,0,0,0,0,0,0,0,0,0,3.706599,0,0),
(70810,3,-3053.416504,1728.551392,75.681870,0,0,0,0,0,0,0,0,0,0,4.268945,0,0),
(70810,4,-3055.100342,1723.946167,76.244965,0,0,0,0,0,0,0,0,0,0,3.913943,0,0),
(70810,5,-3057.536377,1723.780273,76.474754,0,0,0,0,0,0,0,0,0,0,2.632959,0,0),
(70810,6,-3061.556396,1731.949829,76.060608,3000,0,0,0,0,0,0,0,0,0,1.988147,0,0),
(70810,7,-3057.806885,1724.499390,76.408554,0,0,0,0,0,0,0,0,0,0,5.815393,0,0),
(70810,8,-3056.292480,1723.154541,76.448769,0,0,0,0,0,0,0,0,0,0,0.273622,0,0),
(70810,9,-3055.195801,1723.883301,76.262001,0,0,0,0,0,0,0,0,0,0,1.159900,0,0),
(70810,10,-3051.715088,1729.036255,75.526314,0,0,0,0,0,0,0,0,0,0,0.907788,0,0),
(70810,11,-3048.094482,1731.749756,75.279770,0,0,0,0,0,0,0,0,0,0,0.354867,0,0),
(70810,12,-3042.574219,1733.865601,75.237495,0,0,0,0,0,0,0,0,0,0,0.764845,0,0),
(70810,13,-3041.526855,1735.636353,75.291962,0,0,0,0,0,0,0,0,0,0,1.762301,0,0),
(70810,14,-3046.220703,1742.361572,75.808640,3000,0,0,0,0,0,0,0,0,0,2.220188,0,0),
(70810,15,-3042.772949,1736.435059,75.368332,0,0,0,0,0,0,0,0,0,0,5.243969,0,0);
-- Coilskar Waterseeker #2
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 70811;
DELETE FROM creature_movement WHERE id = 70811;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(70811,1,-2945.295410,1712.679321,66.84,0,0,0,0,0,0,0,0,0,0,1.18,0,0),
(70811,2,-2939.748779,1733.896973,66.52,0,0,0,0,0,0,0,0,0,0,1.38,0,0),
(70811,3,-2941.600342,1749.171143,66.63,0,0,0,0,0,0,0,0,0,0,2.10,0,0),
(70811,4,-2953.705566,1766.616333,67.18,0,0,0,0,0,0,0,0,0,0,1.94,0,0),
(70811,5,-2954.503906,1773.408081,66.75,0,0,0,0,0,0,0,0,0,0,1.19,0,0),
(70811,6,-2952.216797,1765.413574,66.97,0,0,0,0,0,0,0,0,0,0,5.58,0,0),
(70811,7,-2940.699219,1752.269287,66.76,0,0,0,0,0,0,0,0,0,0,4.97,0,0),
(70811,8,-2938.949707,1741.960449,66.69,0,0,0,0,0,0,0,0,0,0,4.24,0,0),
(70811,9,-2943.192383,1719.959229,66.81,0,0,0,0,0,0,0,0,0,0,4.42,0,0),
(70811,10,-2946.121338,1707.858398,66.20,0,0,0,0,0,0,0,0,0,0,4.97,0,0),
(70811,11,-2942.795898,1693.982056,66.74,0,0,0,0,0,0,0,0,0,0,5.23,0,0);
-- few creatures that must be death 
UPDATE creature SET DeathState = 1 WHERE guid IN (70697, 70698, 70724, 70725, 70799, 70800);
-- Grom'tor, Son of Oronok - event
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74574;
DELETE FROM creature_movement WHERE id = 74574;
UPDATE creature_template SET MovementType = 2 WHERE entry = 21291; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 21291;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(21291,1,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,2,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,3,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,4,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,5,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,6,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,7,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,8,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,9,-2814.745,1774.943,59.50566,15000,2129101,0,0,0,0,0,0,0,0,6.24801,0,0), -- event starts
(21291,10,-2815.424,1771.031,59.10168,1000,2129102,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,11,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,12,-2815.424,1771.031,59.10168,9000,2129103,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,13,-2814.4,1773.86,59.2722,20000,2129104,0,0,0,0,0,0,0,0,0.496542,0,0),
(21291,14,-2815.424,1771.031,59.10168,15000,2129105,0,0,0,0,0,0,0,0,0.831902,0,0), -- event ends
(21291,15,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,16,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,17,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,18,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,19,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,20,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,21,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,22,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,23,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,24,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,25,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,26,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,27,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,28,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,29,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,30,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,31,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,32,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,33,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,34,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,35,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,36,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,37,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,38,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,39,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,40,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,41,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,42,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,43,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,44,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,45,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,46,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,47,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,48,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,49,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,50,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,51,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,52,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,53,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,54,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,55,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,56,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,57,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,58,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,59,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,60,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,61,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,62,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,63,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,64,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,65,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,66,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,67,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,68,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,69,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,70,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,71,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,72,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,73,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,74,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,75,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,76,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,77,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,78,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,79,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,80,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,81,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,82,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,83,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,84,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,85,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,86,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,87,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,0,1.64479,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2129101 AND 2129105; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2129101,2,1,25,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2129101,2,0,0,0,0,0,0,2000005426,0,0,0,0,0,0,0,''),
(2129101,7,1,6,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2129101,7,0,0,0,0,0,0,2000005427,0,0,0,0,0,0,0,''),
(2129101,10,1,5,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2129101,14,1,1,0,21295,10,0x04,0,0,0,0,0,0,0,0,'force 21295 to: emote'),
(2129101,14,0,0,0,21295,10,0x04,2000005428,0,0,0,0,0,0,0,'force 21295 to: say text'),
(2129102,2,1,1,0,21295,10,0x04,0,0,0,0,0,0,0,0,'force 21295 to: emote'),
(2129102,2,0,0,0,21295,10,0x04,2000005429,0,0,0,0,0,0,0,'force 21295 to: say text'),
(2129102,5,1,274,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2129102,5,0,0,0,0,0,0,2000005430,0,0,0,0,0,0,0,''),
(2129103,3,1,11,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2129103,6,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2129103,6,0,0,0,0,0,0,2000005431,0,0,0,0,0,0,0,''),
(2129103,8,0,0,0,21295,10,0x04,2000005432,0,0,0,0,0,0,0,'force 21295 to: say text'),
(2129104,1,1,5,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2129104,1,0,0,0,0,0,0,2000005433,0,0,0,0,0,0,0,''),
(2129104,3,1,25,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2129104,4,15,36538,0,21295,10,0x01,0,0,0,0,0,0,0,0,'cast 36538 on buddy'),
(2129104,5,15,36540,0,21295,10,0x01,0,0,0,0,0,0,0,0,'cast 36540 on buddy'),
(2129104,6,15,36538,0,21295,10,0x01,0,0,0,0,0,0,0,0,'cast 36538 on buddy'),
(2129104,7,15,36538,0,21295,10,0x01,0,0,0,0,0,0,0,0,'cast 36538 on buddy'),
(2129104,8,15,36540,0,21295,10,0x01,0,0,0,0,0,0,0,0,'cast 36540 on buddy'),
(2129104,9,15,36539,0,21295,10,0x01,0,0,0,0,0,0,0,0,'cast 36540 on buddy'),
(2129104,9,15,36542,0,21295,40,0x04,0,0,0,0,0,0,0,0,'cast 36542 b->b'),
(2129104,9,28,7,0,21295,10,0x04,0,0,0,0,0,0,0,0,'force 21295 to:STATE_DEATH'),
(2129104,13,0,2,0,0,0,0,2000005434,0,0,0,0,0,0,0,''),
(2129104,15,1,5,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2129104,15,0,0,0,0,0,0,2000005435,0,0,0,0,0,0,0,''),
(2129104,17,28,0,0,21295,10,0x04,0,0,0,0,0,0,0,0,'force 21295 to:STATE_STAND'),
(2129104,17,0,2,0,21295,10,0x04,2000005436,0,0,0,0,0,0,0,'force 21295 to: text_emote'),
(2129105,2,1,273,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2129105,2,0,0,0,0,0,0,2000005437,0,0,0,0,0,0,0,''),
(2129105,4,1,1,0,21295,10,0x04,0,0,0,0,0,0,0,0,'force 21295 to: emote'),
(2129105,4,0,0,0,21295,10,0x04,2000005438,0,0,0,0,0,0,0,'force 21295 to: say text'),
(2129105,15,1,15,0,21295,10,0x04,0,0,0,0,0,0,0,0,'force 21295 to: emote'),
(2129105,15,0,0,0,21295,10,0x04,2000005439,0,0,0,0,0,0,0,'force 21295 to: say text');
DELETE FROM db_script_string WHERE entry BETWEEN 2000005426 AND 2000005439;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(2000005426,'I\'m through asking nicely, fish-man.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005427,'Where is the Cipher of Damnation? I know a third of it is in this village.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005428,'Whhaaat... are you sssspeaking of, ssssoft-sskin?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005429,'The naga do nottt... have thissss... cipherrr...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005430,'No... Of course not. What was I thinking? Why would you have a third of the Cipher of Damnation?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005431,'I feel so stupid. Maybe I should unchain you and set you free?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005432,'Yesss... Yesss... Ssset me freee...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005433,'DO I HONESTLY LOOK THAT STUPID TO YOU, NAGA? NOW YOU FEEL PAIN!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005434,'%s spits on the Coilskar naga.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005435,'GET UP YOU ROTTEN PIECE OF TRASH! GET UP BEFORE I END YOU!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005436,'%s regains consciousness.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005437,'I\'m listening..',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005438,'Do not beat the Coilsssskaarrr commander anymore, orc! I will tell you! The cipherrr... It is hidden in one of the chests at Coilssskarrr Point... The naga there hold the keysss...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005439,'COILSSSKARRR!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

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
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(75029,1,-3281.24,2416.61,61.0348,4000,2141901,0,0,0,0,0,0,0,0,1.92474,0,0),
(75029,2,-3281.24,2416.61,61.0348,150000,0,0,0,0,0,0,0,0,0,1.92474,0,0),
(75030,1,-3284.71,2448.13,64.5764,4000,2141902,0,0,0,0,0,0,0,0,2.57989,0,0),
(75030,2,-3284.71,2448.13,64.5764,150000,0,0,0,0,0,0,0,0,0,2.57989,0,0),
(75033,1,-3249.14,2559.47,64.3195,4000,2141901,0,0,0,0,0,0,0,0,4.85854,0,0),
(75033,2,-3249.14,2559.47,64.3195,150000,0,0,0,0,0,0,0,0,0,4.85854,0,0),
(75034,1,-3146.26,2350.15,59.31,4000,2141902,0,0,0,0,0,0,0,0,0.82,0,0),
(75034,2,-3146.26,2350.15,59.31,150000,0,0,0,0,0,0,0,0,0,0.82,0,0),
(75035,1,-3211.75,2553.34,61.7269,4000,2141901,0,0,0,0,0,0,0,0,5.99206,0,0),
(75035,2,-3211.75,2553.34,61.7269,150000,0,0,0,0,0,0,0,0,0,5.99206,0,0),
(75038,1,-3215.52,2582.65,63.6521,4000,2141902,0,0,0,0,0,0,0,0,3.36233,0,0),
(75038,2,-3215.52,2582.65,63.6521,150000,0,0,0,0,0,0,0,0,0,3.36233,0,0),
(75042,1,-3149.07,2652.16,62.3524,4000,2141901,0,0,0,0,0,0,0,0,1.09791,0,0),
(75042,2,-3149.07,2652.16,62.3524,150000,0,0,0,0,0,0,0,0,0,1.09791,0,0),
(75044,1,-3118.96,2685.17,60.0948,4000,2141902,0,0,0,0,0,0,0,0,5.7209,0,0),
(75044,2,-3118.96,2685.17,60.0948,150000,0,0,0,0,0,0,0,0,0,5.7209,0,0),
(75045,1,-3149.35,2685.7,61.4335,4000,2141901,0,0,0,0,0,0,0,0,1.70149,0,0),
(75045,2,-3149.35,2685.7,61.4335,150000,0,0,0,0,0,0,0,0,0,1.70149,0,0),
(75047,1,-3016.61,2750.28,70.4933,4000,2141902,0,0,0,0,0,0,0,0,1.62316,0,0),
(75047,2,-3016.61,2750.28,70.4933,150000,0,0,0,0,0,0,0,0,0,1.62316,0,0),
(75050,1,-3056.41,2687.51,63.1477,4000,2141901,0,0,0,0,0,0,0,0,5.80999,0,0),
(75050,2,-3056.41,2687.51,63.1477,150000,0,0,0,0,0,0,0,0,0,5.80999,0,0),
(75051,1,-3042.09,2749.99,69.3486,4000,2141902,0,0,0,0,0,0,0,0,3.10776,0,0),
(75051,2,-3042.09,2749.99,69.3486,150000,0,0,0,0,0,0,0,0,0,3.10776,0,0),
(75052,1,-3022.26,2712.04,66.4497,4000,2141901,0,0,0,0,0,0,0,0,3.49487,0,0),
(75052,2,-3022.26,2712.04,66.4497,150000,0,0,0,0,0,0,0,0,0,3.49487,0,0),
(75053,1,-2987.05,2714.73,69.3391,4000,2141902,0,0,0,0,0,0,0,0,3.61302,0,0),
(75053,2,-2987.05,2714.73,69.3391,150000,0,0,0,0,0,0,0,0,0,3.61302,0,0),
(75054,1,-3019.95,2692.35,64.9556,4000,2141901,0,0,0,0,0,0,0,0,4.77987,0,0),
(75054,2,-3019.95,2692.35,64.9556,150000,0,0,0,0,0,0,0,0,0,4.77987,0,0),
(75075,1,-3249.06,2651.38,60.8545,4000,2141902,0,0,0,0,0,0,0,0,5.34022,0,0),
(75075,2,-3249.06,2651.38,60.8545,150000,0,0,0,0,0,0,0,0,0,5.34022,0,0),
(75076,1,-3218.49,2649.44,63.2653,4000,2141901,0,0,0,0,0,0,0,0,3.9241,0,0),
(75076,2,-3218.49,2649.44,63.2653,150000,0,0,0,0,0,0,0,0,0,3.9241,0,0),
(75077,1,-3117.82,2716.87,63.0454,4000,2141902,0,0,0,0,0,0,0,0,0.050962,0,0),
(75077,2,-3117.82,2716.87,63.0454,150000,0,0,0,0,0,0,0,0,0,0.050962,0,0),
(75079,1,-3216.96,2616.12,62.8288,4000,2141901,0,0,0,0,0,0,0,0,5.3974,0,0),
(75079,2,-3216.96,2616.12,62.8288,150000,0,0,0,0,0,0,0,0,0,5.3974,0,0),
(75080,1,-3253.62,2323.84,62.2317,4000,2141902,0,0,0,0,0,0,0,0,5.70665,0,0),
(75080,2,-3253.62,2323.84,62.2317,150000,0,0,0,0,0,0,0,0,0,5.70665,0,0),
(75081,1,-3181.8,2316.44,63.31,4000,2141901,0,0,0,0,0,0,0,0,6.13,0,0),
(75081,2,-3181.8,2316.44,63.31,150000,0,0,0,0,0,0,0,0,0,6.13,0,0),
(75082,1,-3215.87,2350.4,62.34,4000,2141902,0,0,0,0,0,0,0,0,6.02,0,0),
(75082,2,-3215.87,2350.4,62.34,150000,0,0,0,0,0,0,0,0,0,6.02,0,0),
(75083,1,-3253.86,2381.16,62.47,4000,2141901,0,0,0,0,0,0,0,0,0.51,0,0),
(75083,2,-3253.86,2381.16,62.47,150000,0,0,0,0,0,0,0,0,0,0.51,0,0),
(75086,1,-3212.24,2416.83,62.4066,4000,2141902,0,0,0,0,0,0,0,0,3.0449,0,0),
(75086,2,-3212.24,2416.83,62.4066,150000,0,0,0,0,0,0,0,0,0,3.0449,0,0),
(75088,1,-3216.87,2517.24,63.1658,4000,2141901,0,0,0,0,0,0,0,0,0.575763,0,0),
(75088,2,-3216.87,2517.24,63.1658,150000,0,0,0,0,0,0,0,0,0,0.575763,0,0),
(75089,1,-3247.42,2515.34,63.0471,4000,2141902,0,0,0,0,0,0,0,0,4.55048,0,0),
(75089,2,-3247.42,2515.34,63.0471,150000,0,0,0,0,0,0,0,0,0,4.55048,0,0),
(75090,1,-3186.6,2482.22,62.6348,4000,2141901,0,0,0,0,0,0,0,0,1.17725,0,0),
(75090,2,-3186.6,2482.22,62.6348,150000,0,0,0,0,0,0,0,0,0,1.17725,0,0),
(75093,1,-3149.82,2514.48,62.2887,4000,2141902,0,0,0,0,0,0,0,0,5.54055,0,0),
(75093,2,-3149.82,2514.48,62.2887,150000,0,0,0,0,0,0,0,0,0,5.54055,0,0),
(75095,1,-3250.2,2583.78,61.6328,4000,2141901,0,0,0,0,0,0,0,0,0.962609,0,0),
(75095,2,-3250.2,2583.78,61.6328,150000,0,0,0,0,0,0,0,0,0,0.962609,0,0),
(75096,1,-3186.76,2548.82,61.8554,4000,2141902,0,0,0,0,0,0,0,0,0.892435,0,0),
(75096,2,-3186.76,2548.82,61.8554,150000,0,0,0,0,0,0,0,0,0,0.892435,0,0),
(75097,1,-3217.28,2484.21,57.89,4000,2141901,0,0,0,0,0,0,0,0,0.47,0,0),
(75097,2,-3217.28,2484.21,57.89,150000,0,0,0,0,0,0,0,0,0,0.47,0,0),
(75099,1,-3254.84,2618.44,61.45,4000,2141902,0,0,0,0,0,0,0,0,0.2,0,0),
(75099,2,-3254.84,2618.44,61.45,150000,0,0,0,0,0,0,0,0,0,0.2,0,0);
-- creatures in this event - ALIANCE side
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (75057, 75058, 75059, 75060, 75061, 75062, 75063, 75064, 75065, 75066, 75068, 75069, 75070, 75072, 75073);
DELETE FROM creature_movement WHERE id IN (75057, 75058, 75059, 75060, 75061, 75062, 75063, 75064, 75065, 75066, 75068, 75069, 75070, 75072, 75073);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(75057,1,-4013.64,1983.89,91.9235,4000,2141903,0,0,0,0,0,0,0,0,3.00984,0,0),
(75057,2,-4013.64,1983.89,91.9235,150000,0,0,0,0,0,0,0,0,0,3.00984,0,0),
(75058,1,-3916.59,1916.38,92.2323,4000,2141904,0,0,0,0,0,0,0,0,3.97536,0,0),
(75058,2,-3916.59,1916.38,92.2323,150000,0,0,0,0,0,0,0,0,0,3.97536,0,0),
(75059,1,-3986.2,1949.37,94.6088,4000,2141903,0,0,0,0,0,0,0,0,3.05842,0,0),
(75059,2,-3986.2,1949.37,94.6088,150000,0,0,0,0,0,0,0,0,0,3.05842,0,0),
(75060,1,-3984.77,1981.59,96.7819,4000,2141904,0,0,0,0,0,0,0,0,1.10935,0,0),
(75060,2,-3984.77,1981.59,96.7819,150000,0,0,0,0,0,0,0,0,0,1.10935,0,0),
(75061,1,-3850.49,1982.88,95.2666,4000,2141903,0,0,0,0,0,0,0,0,2.32593,0,0),
(75061,2,-3850.49,1982.88,95.2666,150000,0,0,0,0,0,0,0,0,0,2.32593,0,0),
(75062,1,-3847.89,1952.49,94.1589,4000,2141904,0,0,0,0,0,0,0,0,2.72547,0,0),
(75062,2,-3847.89,1952.49,94.1589,150000,0,0,0,0,0,0,0,0,0,2.72547,0,0),
(75063,1,-3886.18,1984.3,98.3027,4000,2141903,0,0,0,0,0,0,0,0,3.0375,0,0),
(75063,2,-3886.18,1984.3,98.3027,150000,0,0,0,0,0,0,0,0,0,3.0375,0,0),
(75064,1,-3949.72,1916.78,95.3962,4000,2141904,0,0,0,0,0,0,0,0,6.12805,0,0),
(75064,2,-3949.72,1916.78,95.3962,150000,0,0,0,0,0,0,0,0,0,6.12805,0,0),
(75065,1,-3883.72,1946.14,98.4499,4000,2141903,0,0,0,0,0,0,0,0,4.17084,0,0),
(75065,2,-3883.72,1946.14,98.4499,150000,0,0,0,0,0,0,0,0,0,4.17084,0,0),
(75066,1,-3917.08,1947.75,93.5279,4000,2141904,0,0,0,0,0,0,0,0,0.367148,0,0),
(75066,2,-3917.08,1947.75,93.5279,150000,0,0,0,0,0,0,0,0,0,0.367148,0,0),
(75068,1,-3815.89,2023.09,93.7481,4000,2141903,0,0,0,0,0,0,0,0,4.78265,0,0),
(75068,2,-3815.89,2023.09,93.7481,150000,0,0,0,0,0,0,0,0,0,4.78265,0,0),
(75069,1,-3821.13,2120.74,92.0849,4000,2141904,0,0,0,0,0,0,0,0,3.8364,0,0),
(75069,2,-3821.13,2120.74,92.0849,150000,0,0,0,0,0,0,0,0,0,3.8364,0,0),
(75070,1,-3849,2115.38,95.1725,4000,2141903,0,0,0,0,0,0,0,0,2.39329,0,0),
(75070,2,-3849,2115.38,95.1725,150000,0,0,0,0,0,0,0,0,0,2.39329,0,0),
(75072,1,-3817.68,2044.13,94.6227,4000,2141904,0,0,0,0,0,0,0,0,1.56998,0,0),
(75072,2,-3817.68,2044.13,94.6227,150000,0,0,0,0,0,0,0,0,0,1.56998,0,0),
(75073,1,-3879.87,2012.63,95.3365,4000,2141903,0,0,0,0,0,0,0,0,5.49429,0,0),
(75073,2,-3879.87,2012.63,95.3365,150000,0,0,0,0,0,0,0,0,0,5.49429,0,0);

-- Gryphonrider Nordin - wps
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 75349;
DELETE FROM creature_movement WHERE id = 75349;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(75349,1,-3463.753418,2003.245728,96.814293,35000,0,0,0,0,0,0,0,0,0,1.670,0,0),
(75349,2,-3484.718506,2004.462891,96.858665,40000,0,0,0,0,0,0,0,0,0,3.079,0,0);

-- Scryer Guardian - wps
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 69889;
DELETE FROM creature_movement WHERE id = 69889;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(69889,1,-4104.319336,1140.283936,43.441528,0,0,0,0,0,0,0,0,0,0,1.965520,0,0),
(69889,2,-4114.023438,1164.061157,49.375038,0,0,0,0,0,0,0,0,0,0,2.304026,0,0),
(69889,3,-4117.360352,1166.746216,49.581749,0,0,0,0,0,0,0,0,0,0,2.781548,0,0),
(69889,4,-4123.027344,1168.895264,49.581749,0,0,0,0,0,0,0,0,0,0,2.496448,0,0),
(69889,5,-4125.118652,1170.899780,49.581749,0,0,0,0,0,0,0,0,0,0,2.057410,0,0),
(69889,6,-4126.618652,1173.509399,49.581749,3000,0,0,0,0,0,0,0,0,0,2.005574,0,0),
(69889,7,-4124.328125,1170.254272,49.581749,0,0,0,0,0,0,0,0,0,0,5.656101,0,0),
(69889,8,-4121.241211,1168.350830,49.581749,0,0,0,0,0,0,0,0,0,0,6.198808,0,0),
(69889,9,-4114.310547,1164.540771,49.480801,0,0,0,0,0,0,0,0,0,0,5.096164,0,0),
(69889,10,-4106.934570,1146.827271,44.482040,0,0,0,0,0,0,0,0,0,0,5.111871,0,0),
(69889,11,-4098.165039,1125.765747,42.616520,3000,0,0,0,0,0,0,0,0,0,5.084383,0,0);

-- Commander Hobb - correct spawn point
UPDATE creature SET position_x = -4098.35, position_y = 1118.62, position_z = 42.66, orientation = 5.58 WHERE guid = 1011;
UPDATE creature_model_info SET modelid_other_gender = 0 WHERE modelid = 21505;
DELETE FROM creature_template_addon WHERE entry = 23434;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(23434,0,0,2,16,0,0,NULL);

-- Legion Hold EVENT between Shadow Council Warlock and Deathforged Infernal -- SHADOWMOON VALLEY
-- Shadow Council Warlock #2 
-- WARLOCKs - part
UPDATE creature SET position_x = -3435.594, position_y = 2948.72, position_z = 171.0906, MovementType = 2, spawndist = 0 WHERE guid = 74601;
DELETE FROM creature_movement WHERE id = 74601;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(74601,1,-3434.833,2992.729,171.263,1000,2130201,0,0,0,0,0,0,0,0,4.82,0,0),
(74601,2,-3437.531,2977.076,171.3966,5000,2130202,0,0,0,0,0,0,0,0,3.46,0,0),
(74601,3,-3414.52,2975.05,170.004,3000,0,0,0,0,0,0,0,0,0,0,0,0),
(74601,4,-3414.52,2975.05,170.004,30000,2130203,0,0,0,0,0,0,0,0,1.047,0,0),
(74601,5,-3434.833,2992.729,171.263,0,0,0,0,0,0,0,0,0,0,0,0,0),
(74601,6,-3435.594,2948.72,171.0906,0,0,0,0,0,0,0,0,0,0,0,0,0),
(74601,7,-3434.833,2992.729,171.263,0,0,0,0,0,0,0,0,0,0,0,0,0),
(74601,8,-3435.594,2948.72,171.0906,0,0,0,0,0,0,0,0,0,0,0,0,0),
(74601,9,-3434.833,2992.729,171.263,0,0,0,0,0,0,0,0,0,0,0,0,0),
(74601,10,-3435.594,2948.72,171.0906,0,0,0,0,0,0,0,0,0,0,0,0,0),
(74601,11,-3434.833,2992.729,171.263,0,0,0,0,0,0,0,0,0,0,0,0,0),
(74601,12,-3435.594,2948.72,171.0906,0,0,0,0,0,0,0,0,0,0,0,0,0),
(74601,13,-3434.833,2992.729,171.263,0,0,0,0,0,0,0,0,0,0,0,0,0),
(74601,14,-3435.594,2948.72,171.0906,0,0,0,0,0,0,0,0,0,0,0,0,0),
(74601,15,-3434.833,2992.729,171.263,0,0,0,0,0,0,0,0,0,0,0,0,0),
(74601,16,-3435.594,2948.72,171.0906,0,0,0,0,0,0,0,0,0,0,0,0,0),
(74601,17,-3434.833,2992.729,171.263,0,0,0,0,0,0,0,0,0,0,0,0,0),
(74601,18,-3435.594,2948.72,171.0906,0,0,0,0,0,0,0,0,0,0,0,0,0);
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
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(21316,0,0,1,16,0,0,'16245');
DELETE FROM creature_movement_template WHERE entry = 21316;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(21316,1,-3417.519,2975.213,170.004,5000,0,0,0,0,0,0,0,0,0,0,0,0),
(21316,2,-3411.01,2979.66,170.004,20000,2131601,0,0,0,0,0,0,0,0,0,0,0),
(21316,3,-3329.58,2934.13,300,0,0,0,0,0,0,0,0,0,0,0,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2131601; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2131601,3,31,20683,20,0,0,0,0,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(2131601,8,15,33346,0,20683,10,3,0,0,0,0,0,0,0,0,'force buddy to cast 33346'),
(2131601,17,15,36656,0,20683,10,3,0,0,0,0,0,0,0,0,'force buddy to cast 36656'),
(2131601,18,15,36658,0,0,0,0,0,0,0,0,0,0,0,0,'cast 36658 target-self');
-- Greater Felfire Diemetradon -- we don't need '3' .. theres no deep ponds or lakes there, also with 3 he falls under the ground, anyway he shouldnt swim.
UPDATE creature_template SET inhabitType = 1 WHERE entry = 21462;

-- The Deathforge -- SHADOWMOON VALLEY
-- Summoner Skartax - EVENT
DELETE FROM creature_template_addon WHERE entry = 21207;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(21207,0,0,1,16,0,0,36382);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 84853;
DELETE FROM creature_movement WHERE id = 84853;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(84853,1,-3350.91,2151.45,-7.08715,4000,0,0,0,0,0,0,0,0,0,3.71755,0,0),
(84853,2,-3350.91,2151.45,-7.08715,15000,2120701,0,0,0,0,0,0,0,0,3.71755,0,0),
(84853,3,-3350.91,2151.45,-7.08715,120000,2120702,0,0,0,0,0,0,0,0,3.71755,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2120701, 2120702); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2120701,0,15,36431,0,0,0,8,0,0,0,0,0,0,0,0,'visual - channel'),
(2120701,9,10,19757,300000,0,0,0,0,0,0,0,-3368.91,2145.37,-8.39026,4.4855,'summon - Infernal Soul'),
(2120702,0,15,36431,0,0,0,8,0,0,0,0,0,0,0,0,'visual - channel');
-- spell should have target
DELETE FROM spell_script_target WHERE entry = 36431;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(36431,1,21211);
-- invis casting summon_channel spell
DELETE FROM creature_addon WHERE guid = 84857;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(84857,0,0,1,16,0,0,36393);
-- invis casting channel spell #1-4 
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 84854;
DELETE FROM creature_movement WHERE id = 84854;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(84854,1,-3369.89,2164.47,-7.06,1000,0,0,0,0,0,0,0,0,0,4.9,0,0),
(84854,2,-3369.89,2164.47,-7.06,180000,2121001,0,0,0,0,0,0,0,0,4.9,0,0);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 84855;
DELETE FROM creature_movement WHERE id =84855;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(84855,1,-3392.08,2153.75,-7.53,1000,0,0,0,0,0,0,0,0,0,6.16,0,0),
(84855,2,-3392.08,2153.75,-7.53,180000,2121001,0,0,0,0,0,0,0,0,6.16,0,0);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 84856;
DELETE FROM creature_movement WHERE id =84856;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(84856,1,-3349.41,2139.45,-7.73881,1000,0,0,0,0,0,0,0,0,0,3.16,0,0),
(84856,2,-3349.41,2139.45,-7.73881,180000,2121001,0,0,0,0,0,0,0,0,3.16,0,0);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 84858;
DELETE FROM creature_movement WHERE id = 84858;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(84858,1,-3366.91,2121.34,-7.63,1000,0,0,0,0,0,0,0,0,0,1.78,0,0),
(84858,2,-3366.91,2121.34,-7.63,180000,2121001,0,0,0,0,0,0,0,0,1.78,0,0);
-- script for them
DELETE FROM dbscripts_on_creature_movement WHERE id = 2121001; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2121001,0,15,36384,0,0,0,8,0,0,0,0,0,0,0,0,'visual - channel');
-- Infernal Soul - unique npc
UPDATE creature_template SET MovementType = 2 WHERE entry = 19757;
DELETE FROM creature_movement_template WHERE entry = 19757;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(19757,1,-3354.029053,2136.074951,-7.617691,0,0,0,0,0,0,0,0,0,0,5.459571,0,0),
(19757,2,-3334.709473,2123.353760,0.110530,0,0,0,0,0,0,0,0,0,0,4.477822,0,0),
(19757,3,-3336.440918,2118.739014,2.385972,0,0,0,0,0,0,0,0,0,0,3.864426,0,0),
(19757,4,-3350.577637,2102.399902,6.414635,0,0,0,0,0,0,0,0,0,0,4.022291,0,0),
(19757,5,-3361.743408,2090.762207,4.971794,0,0,0,0,0,0,0,0,0,0,3.947680,0,0),
(19757,6,-3372.547607,2080.442871,6.923079,0,0,0,0,0,0,0,0,0,0,3.540058,0,0),
(19757,7,-3390.733154,2071.638916,9.478933,0,0,0,0,0,0,0,0,0,0,4.084339,0,0),
(19757,8,-3397.304688,2062.291748,14.805972,0,0,0,0,0,0,0,0,0,0,3.880135,0,0),
(19757,9,-3403.150391,2057.081299,15.146488,0,0,0,0,0,0,0,0,0,0,4.444836,0,0),
(19757,10,-3403.513428,2050.048096,17.169069,0,0,0,0,0,0,0,0,0,0,4.823395,0,0),
(19757,11,-3401.415527,2042.168579,20.685322,0,0,0,0,0,0,0,0,0,0,4.819469,0,0),
(19757,12,-3398.083252,2022.913818,20.769167,0,0,0,0,0,0,0,0,0,0,4.890154,0,0),
(19757,13,-3394.884521,2001.233643,24.717464,0,0,0,0,0,0,0,0,0,0,4.832035,0,0),
(19757,14,-3395.340088,1996.945068,24.894569,0,0,0,0,0,0,0,0,0,0,5.294635,0,0),
(19757,15,-3391.309814,1990.309692,25.402233,0,0,0,0,0,0,0,0,0,0,5.880540,0,0),
(19757,16,-3374.793457,1986.204956,24.770254,0,0,0,0,0,0,0,0,0,0,0.189546,0,0),
(19757,17,-3361.020264,1986.218140,27.790358,0,0,0,0,0,0,0,0,0,0,0.771526,0,0),
(19757,18,-3352.330078,1994.869629,30.410479,0,0,0,0,0,0,0,0,0,0,1.037776,0,0),
(19757,19,-3347.756104,2002.661987,32.189018,0,0,0,0,0,0,0,0,0,0,1.132023,0,0),
(19757,20,-3345.875000,2009.087646,32.619484,0,0,0,0,0,0,0,0,0,0,1.754844,0,0),
(19757,21,-3347.413330,2015.157959,33.819714,0,0,0,0,0,0,0,0,0,0,2.117698,0,0),
(19757,22,-3355.960449,2028.379028,35.801514,0,0,0,0,0,0,0,0,0,0,2.184457,0,0),
(19757,23,-3366.470215,2041.372925,38.798149,0,0,0,0,0,0,0,0,0,0,2.333683,0,0),
(19757,24,-3375.805908,2054.354980,35.752903,0,0,0,0,0,0,0,0,0,0,1.947266,0,0),
(19757,25,-3386.452393,2085.322754,34.379436,0,0,0,0,0,0,0,0,0,0,2.259069,0,0),
(19757,26,-3408.116455,2107.904297,34.378651,0,0,0,0,0,0,0,0,0,0,2.516680,0,0),
(19757,27,-3432.918457,2130.658447,34.401749,0,0,0,0,0,0,0,0,0,0,2.416150,0,0),
(19757,28,-3447.556152,2143.636719,31.521667,0,0,0,0,0,0,0,0,0,0,2.396515,0,0),
(19757,29,-3468.232178,2160.356689,33.163986,0,0,0,0,0,0,0,0,0,0,2.455420,0,0),
(19757,30,-3477.012695,2171.717041,32.935181,8000,1975701,0,0,0,0,0,0,0,0,2.200165,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1975701; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1975701,0,15,11969,0,0,0,8,0,0,0,0,0,0,0,0,'cast nova'),
(1975701,3,15,7,0,0,0,8,0,0,0,0,0,0,0,0,'cast death'),
(1975701,5,10,19760,6000,0,0,0,0,0,0,0,-3477.012695,2171.717041,32.935181,4.83166,'summon - Infernal');
-- Cooling Infernal - update
UPDATE creature_template SET unit_flags=unit_flags&~0x2000100 WHERE entry = 19760;
UPDATE creature_template_addon SET auras =NULL WHERE entry =19760;
-- these 2 should be death (flag 0x2000100)
UPDATE creature SET DeathState = 1 WHERE guid IN (84621, 84620);
-- Warbringer Razuun - correct spawn point
UPDATE creature SET position_x = -3667.163, position_y = 2082.57, position_z = 10.45, orientation = 5.81 WHERE guid = 84861;
-- Deathforge Summoner #1
UPDATE creature SET MovementType = 2, spawndist = 0  WHERE guid = 73601;
DELETE FROM creature_movement WHERE id = 73601;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(73601,1,-3220.043701,1966.761963,108.964783,0,0,0,0,0,0,0,0,0,0,0.881438,0,0),
(73601,2,-3208.124268,1984.999756,106.479858,0,0,0,0,0,0,0,0,0,0,1.360532,0,0),
(73601,3,-3201.871582,2004.888184,101.001251,0,0,0,0,0,0,0,0,0,0,0.927452,0,0),
(73601,4,-3188.239990,2020.072510,94.212540,0,0,0,0,0,0,0,0,0,0,0.833204,0,0),
(73601,5,-3184.711182,2025.444702,93.527260,3000,0,0,0,0,0,0,0,0,0,1.068824,0,0),
(73601,6,-3186.666260,2020.416260,94.003876,0,0,0,0,0,0,0,0,0,0,4.032914,0,0),
(73601,7,-3199.945068,2005.807251,100.531464,0,0,0,0,0,0,0,0,0,0,4.340795,0,0),
(73601,8,-3207.854492,1986.168457,106.366829,0,0,0,0,0,0,0,0,0,0,4.012493,0,0),
(73601,9,-3220.182617,1967.358765,108.920403,0,0,0,0,0,0,0,0,0,0,4.578833,0,0),
(73601,10,-3227.614990,1952.055420,110.673180,0,0,0,0,0,0,0,0,0,0,3.962603,0,0),
(73601,11,-3240.332520,1940.244751,109.981293,0,0,0,0,0,0,0,0,0,0,3.848720,0,0),
(73601,12,-3251.046631,1932.889160,106.026604,3000,0,0,0,0,0,0,0,0,0,3.766253,0,0);
DELETE FROM creature_linking WHERE guid = 73646; 
INSERT INTO creature_linking (guid, master_guid, flag) VALUES    
(73646, 73601, 518); -- Deathforge imp linked to his master
-- Deathforge Summoner #2
UPDATE creature SET position_x = -3288.52, position_y = 1922.98, position_z = 143.28, orientation = 4.73, MovementType = 2, spawndist = 0 WHERE guid = 73602;
DELETE FROM creature_movement WHERE id =73602;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(73602,1,-3288.520752,1922.988647,143.280212,0,0,0,0,0,0,0,0,0,0,4.736549,0,0),
(73602,2,-3286.358154,1912.329102,142.914230,0,0,0,0,0,0,0,0,0,0,5.148875,0,0),
(73602,3,-3285.400635,1904.550781,141.234100,0,0,0,0,0,0,0,0,0,0,4.178911,0,0),
(73602,4,-3288.802246,1902.376343,141.670227,3000,0,0,0,0,0,0,0,0,0,3.711600,0,0),
(73602,5,-3286.029785,1905.134644,141.417114,0,0,0,0,0,0,0,0,0,0,1.405671,0,0),
(73602,6,-3288.403809,1920.882935,143.046188,0,0,0,0,0,0,0,0,0,0,1.343625,0,0),
(73602,7,-3285.739258,1927.430664,144.004654,0,0,0,0,0,0,0,0,0,0,0.657187,0,0),
(73602,8,-3271.433838,1937.653076,144.451279,0,0,0,0,0,0,0,0,0,0,0.321036,0,0),
(73602,9,-3252.090576,1946.800659,142.956390,0,0,0,0,0,0,0,0,0,0,0.416855,0,0),
(73602,10,-3247.576416,1949.014160,143.631699,0,0,0,0,0,0,0,0,0,0,0.467906,0,0),
(73602,11,-3232.925781,1955.284424,145.763870,0,0,0,0,0,0,0,0,0,0,0.622629,0,0),
(73602,12,-3218.852539,1966.316162,144.417007,0,0,0,0,0,0,0,0,0,0,1.100151,0,0),
(73602,13,-3213.384277,1978.922974,140.940384,0,0,0,0,0,0,0,0,0,0,1.237596,0,0),
(73602,14,-3210.237793,1987.784180,140.936523,3000,0,0,0,0,0,0,0,0,0,1.178691,0,0),
(73602,15,-3212.281006,1979.845825,141.103760,0,0,0,0,0,0,0,0,0,0,4.251166,0,0),
(73602,16,-3218.346436,1966.754150,144.389252,0,0,0,0,0,0,0,0,0,0,3.896952,0,0),
(73602,17,-3233.263672,1956.498779,145.752380,0,0,0,0,0,0,0,0,0,0,3.705317,0,0),
(73602,18,-3247.104980,1948.600098,143.608749,0,0,0,0,0,0,0,0,0,0,3.350317,0,0),
(73602,19,-3270.611816,1939.169189,144.649933,0,0,0,0,0,0,0,0,0,0,3.755582,0,0),
(73602,20,-3286.303711,1930.364258,144.240997,0,0,0,0,0,0,0,0,0,0,3.981776,0,0),
(73602,21,-3288.903076,1922.341797,143.160172,0,0,0,0,0,0,0,0,0,0,4.545688,0,0);
-- for his imp
UPDATE creature SET position_x = -3291.69, position_y = 1922.06, position_z = 142.82, orientation = 4.81 WHERE guid = 73645;
DELETE FROM creature_linking WHERE guid = 73645; 
INSERT INTO creature_linking (guid, master_guid, flag) VALUES    
(73645, 73602, 518); -- Deathforge imp linked to his master
-- Deathforge Summoner #3
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 73595;
DELETE FROM creature_movement WHERE id = 73595;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(73595,1,-3217.513184,2095.651855,76.157066,0,0,0,0,0,0,0,0,0,0,0.745932,0,0),
(73595,2,-3202.336914,2105.711670,74.812988,0,0,0,0,0,0,0,0,0,0,0.275478,0,0),
(73595,3,-3191.884277,2109.214844,74.270287,3000,0,0,0,0,0,0,0,0,0,0.233851,0,0),
(73595,4,-3201.714600,2106.261963,74.770218,0,0,0,0,0,0,0,0,0,0,3.790135,0,0),
(73595,5,-3219.170654,2094.856934,76.355347,0,0,0,0,0,0,0,0,0,0,3.627556,0,0),
(73595,6,-3241.610596,2084.343994,77.215012,0,0,0,0,0,0,0,0,0,0,3.583574,0,0),
(73595,7,-3259.911865,2071.086182,74.783455,0,0,0,0,0,0,0,0,0,0,3.986484,0,0),
(73595,8,-3274.342285,2055.943604,71.597359,0,0,0,0,0,0,0,0,0,0,4.476570,0,0),
(73595,9,-3277.190674,2046.317749,69.095802,0,0,0,0,0,0,0,0,0,0,4.800936,0,0),
(73595,10,-3275.593994,2030.349731,64.825882,0,0,0,0,0,0,0,0,0,0,4.832346,0,0),
(73595,11,-3275.646484,2013.541870,60.990456,3000,0,0,0,0,0,0,0,0,0,4.679196,0,0),
(73595,12,-3275.301270,2032.639526,65.466797,0,0,0,0,0,0,0,0,0,0,1.671121,0,0),
(73595,13,-3276.838867,2046.530640,69.125473,0,0,0,0,0,0,0,0,0,0,1.541530,0,0),
(73595,14,-3274.560547,2054.611572,71.190384,0,0,0,0,0,0,0,0,0,0,0.987824,0,0),
(73595,15,-3262.887695,2069.314697,74.374779,0,0,0,0,0,0,0,0,0,0,0.673665,0,0),
(73595,16,-3241.012939,2084.315186,77.144798,0,0,0,0,0,0,0,0,0,0,0.599052,0,0);
DELETE FROM creature_linking WHERE guid = 73640; 
INSERT INTO creature_linking (guid, master_guid, flag) VALUES    
(73640, 73595, 518); -- Deathforge imp linked to his master
-- Deathforge Summoner #4
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 73596;
DELETE FROM creature_movement WHERE id = 73596;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(73596,1,-3300.468994,1996.882935,48.219864,0,0,0,0,0,0,0,0,0,0,4.811934,0,0),
(73596,2,-3297.505859,1986.143311,50.716724,0,0,0,0,0,0,0,0,0,0,5.261967,0,0),
(73596,3,-3294.159912,1980.301392,52.532162,3000,0,0,0,0,0,0,0,0,0,0.482025,0,0),
(73596,4,-3301.056885,1995.909912,48.485577,0,0,0,0,0,0,0,0,0,0,2.033186,0,0),
(73596,5,-3307.829102,2011.288818,42.160316,0,0,0,0,0,0,0,0,0,0,2.304149,0,0),
(73596,6,-3313.020752,2015.625977,39.902199,0,0,0,0,0,0,0,0,0,0,2.936395,0,0),
(73596,7,-3326.751221,2016.115112,35.525684,0,0,0,0,0,0,0,0,0,0,3.274116,0,0),
(73596,8,-3335.206299,2013.579712,31.656546,0,0,0,0,0,0,0,0,0,0,3.442977,0,0),
(73596,9,-3344.307129,2008.830322,32.386829,0,0,0,0,0,0,0,0,0,0,4.382313,0,0),
(73596,10,-3347.675049,2000.909790,31.995934,0,0,0,0,0,0,0,0,0,0,3.992757,0,0),
(73596,11,-3359.358154,1988.816528,28.508093,0,0,0,0,0,0,0,0,0,0,3.816042,0,0),
(73596,12,-3370.669189,1985.192993,26.284994,0,0,0,0,0,0,0,0,0,0,3.281971,0,0),
(73596,13,-3374.542725,1985.746216,24.733402,0,0,0,0,0,0,0,0,0,0,2.971740,0,0),
(73596,14,-3393.687744,1992.225830,25.835398,3000,0,0,0,0,0,0,0,0,0,1.756728,0,0),
(73596,15,-3374.922852,1985.819580,24.733747,0,0,0,0,0,0,0,0,0,0,0.122308,0,0),
(73596,16,-3363.200684,1988.307251,28.041607,0,0,0,0,0,0,0,0,0,0,0.479662,0,0),
(73596,17,-3352.612305,1994.927734,30.386007,0,0,0,0,0,0,0,0,0,0,0.997240,0,0),
(73596,18,-3348.241211,2001.576538,32.164364,0,0,0,0,0,0,0,0,0,0,0.899065,0,0),
(73596,19,-3337.238770,2015.260620,32.389744,0,0,0,0,0,0,0,0,0,0,0.823667,0,0),
(73596,20,-3327.681641,2019.128662,35.658611,0,0,0,0,0,0,0,0,0,0,0.021775,0,0),
(73596,21,-3311.569092,2015.839966,40.450832,0,0,0,0,0,0,0,0,0,0,5.598891,0,0);
DELETE FROM creature_linking WHERE guid = 73641; 
INSERT INTO creature_linking (guid, master_guid, flag) VALUES    
(73641, 73596, 518); -- Deathforge imp linked to his master
-- Deathforge Summoner #5
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 73599;
DELETE FROM creature_movement WHERE id = 73599;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(73599,1,-3395.601563,2085.393066,34.141243,0,0,0,0,0,0,0,0,0,0,5.171791,0,0),
(73599,2,-3391.843262,2071.675049,34.049999,0,0,0,0,0,0,0,0,0,0,5.372856,0,0),
(73599,3,-3388.835693,2069.100586,34.218472,0,0,0,0,0,0,0,0,0,0,6.118195,0,0),
(73599,4,-3377.178955,2076.978760,34.297272,0,0,0,0,0,0,0,0,0,0,0.845815,0,0),
(73599,5,-3376.033691,2081.414063,34.225540,0,0,0,0,0,0,0,0,0,0,1.646136,0,0),
(73599,6,-3377.727539,2092.481201,34.043617,0,0,0,0,0,0,0,0,0,0,1.849554,0,0),
(73599,7,-3379.932861,2096.497070,34.057068,0,0,0,0,0,0,0,0,0,0,2.369488,0,0),
(73599,8,-3389.255615,2106.105469,33.947643,0,0,0,0,0,0,0,0,0,0,2.430749,0,0),
(73599,9,-3415.030762,2127.361572,34.401295,0,0,0,0,0,0,0,0,0,0,2.446457,0,0),
(73599,10,-3425.839600,2137.862793,34.401295,0,0,0,0,0,0,0,0,0,0,2.379698,0,0),
(73599,11,-3436.399170,2147.192627,32.068035,0,0,0,0,0,0,0,0,0,0,2.711136,0,0),
(73599,12,-3441.088135,2148.067383,31.521196,0,0,0,0,0,0,0,0,0,0,3.455695,0,0),
(73599,13,-3451.584717,2137.100830,31.521196,0,0,0,0,0,0,0,0,0,0,4.340054,0,0),
(73599,14,-3451.888916,2133.227783,31.845333,0,0,0,0,0,0,0,0,0,0,5.225979,0,0),
(73599,15,-3440.833008,2123.487305,34.663040,0,0,0,0,0,0,0,0,0,0,5.591971,0,0),
(73599,16,-3422.092529,2110.144287,34.475407,0,0,0,0,0,0,0,0,0,0,5.487513,0,0);
DELETE FROM creature_linking WHERE guid = 73644; 
INSERT INTO creature_linking (guid, master_guid, flag) VALUES    
(73644, 73599, 518); -- Deathforge imp linked to his master
-- Deathforge Summoner #5
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 73597;
DELETE FROM creature_movement WHERE id = 73597;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(73597,1,-3408.135986,2055.210693,15.301399,0,0,0,0,0,0,0,0,0,0,0.547428,0,0),
(73597,2,-3395.810303,2063.343018,14.616655,0,0,0,0,0,0,0,0,0,0,0.904785,0,0),
(73597,3,-3390.614502,2071.184082,9.590954,0,0,0,0,0,0,0,0,0,0,0.552141,0,0),
(73597,4,-3381.719482,2076.284180,8.021390,0,0,0,0,0,0,0,0,0,0,0.278037,0,0),
(73597,5,-3371.132080,2079.978271,6.499158,0,0,0,0,0,0,0,0,0,0,0.738280,0,0),
(73597,6,-3349.192871,2102.747559,6.219915,0,0,0,0,0,0,0,0,0,0,0.673092,0,0),
(73597,7,-3341.361328,2109.226074,4.161588,0,0,0,0,0,0,0,0,0,0,0.953479,0,0),
(73597,8,-3336.420166,2118.330566,2.391350,0,0,0,0,0,0,0,0,0,0,1.592794,0,0),
(73597,9,-3342.314941,2108.677490,4.505372,0,0,0,0,0,0,0,0,0,0,3.860239,0,0),
(73597,10,-3349.162598,2101.341553,6.088561,0,0,0,0,0,0,0,0,0,0,3.920717,0,0),
(73597,11,-3371.663818,2079.906250,6.628232,0,0,0,0,0,0,0,0,0,0,3.525661,0,0),
(73597,12,-3391.101563,2072.341797,9.409741,0,0,0,0,0,0,0,0,0,0,4.200319,0,0),
(73597,13,-3396.205811,2062.770996,14.761282,0,0,0,0,0,0,0,0,0,0,3.856312,0,0),
(73597,14,-3408.234375,2055.523438,15.303344,0,0,0,0,0,0,0,0,0,0,3.311247,0,0),
(73597,15,-3425.192871,2058.611572,15.287258,0,0,0,0,0,0,0,0,0,0,3.283758,0,0),
(73597,16,-3447.362793,2058.731201,15.730772,0,0,0,0,0,0,0,0,0,0,3.151026,0,0),
(73597,17,-3422.599121,2058.438721,15.299659,0,0,0,0,0,0,0,0,0,0,6.123755,0,0),
(73597,18,-3401.948242,2054.009033,15.362193,0,0,0,0,0,0,0,0,0,0,5.015556,0,0),
(73597,19,-3404.593018,2042.034058,20.896397,0,0,0,0,0,0,0,0,0,0,4.869473,0,0),
(73597,20,-3396.651367,2017.688599,21.837374,0,0,0,0,0,0,0,0,0,0,4.917377,0,0),
(73597,21,-3393.900391,2002.055420,24.786732,3000,0,0,0,0,0,0,0,0,0,4.862399,0,0),
(73597,22,-3395.625000,2022.849365,20.612501,0,0,0,0,0,0,0,0,0,0,1.918726,0,0),
(73597,23,-3402.773926,2042.241211,20.793344,0,0,0,0,0,0,0,0,0,0,1.952498,0,0);
DELETE FROM creature_linking WHERE guid = 73642; 
INSERT INTO creature_linking (guid, master_guid, flag) VALUES    
(73642, 73597, 518); -- Deathforge imp linked to his master
-- Deathforge Guardians #1 #2 #3 #4 #5 - correct spawnpoint and movement
UPDATE creature SET position_x = -3257.48, position_y = 2049.87, position_z = 74.52, orientation = 1.31, spawndist = 0, MovementType = 0 WHERE guid = 73639;
UPDATE creature SET position_x = -3385.90, position_y = 2105.63, position_z = 78.86, orientation = 0.97, spawndist = 0, MovementType = 0 WHERE guid = 73634;
UPDATE creature SET position_x = -3361.27, position_y = 1980.23, position_z = 26.28, orientation = 1.89, spawndist = 0, MovementType = 0 WHERE guid = 73623;
UPDATE creature SET position_x = -3375.14, position_y = 2098.52, position_z = 33.92, orientation = 4.87, spawndist = 0, MovementType = 0  WHERE guid = 73625;
UPDATE creature SET position_x = -3359.73, position_y = 2105.12, position_z = 11.52, orientation = 4.48, spawndist = 0, MovementType = 0 WHERE guid = 73626;

-- Overlord Or'barokh - event -- SHADOWMOON VALLEY
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 76072;
DELETE FROM creature_movement WHERE id = 76072;
UPDATE creature_template SET MovementType = 2, speed_walk = 1.125 WHERE entry = 21769; -- now move him to template (unique npc) + correct speed 
DELETE FROM creature_movement_template WHERE entry = 21769;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(21769,1,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,2,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,3,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,4,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,5,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,6,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,7,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,8,-2917,2660.08,94.3668,19000,2176901,0,0,0,0,0,0,0,0,3.56041,0,0), -- event 
(21769,9,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,10,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,11,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,12,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,13,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,14,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,15,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,16,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,17,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,18,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,19,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,20,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,21,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,22,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,23,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,24,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,25,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,26,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,27,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,28,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,29,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,30,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,31,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,32,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,33,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,34,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,35,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,36,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,37,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,38,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,39,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,40,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,41,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,42,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,43,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,44,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,45,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,46,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,47,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,48,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,49,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,50,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,51,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,52,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,53,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,54,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,55,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,56,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,57,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,58,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,59,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,60,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,61,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,62,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,63,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,64,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,65,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,66,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,67,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,68,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,69,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,70,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,71,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,72,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,73,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,74,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,75,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,76,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,77,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,78,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,79,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,80,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,81,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,82,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,83,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,0,2.25349,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2176901;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2176901,2,1,6,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2176901,2,0,0,0,0,0,0,2000005443,0,0,0,0,0,0,0,''),
(2176901,7,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2176901,7,0,0,0,0,0,0,2000005444,0,0,0,0,0,0,0,''),
(2176901,10,1,5,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2176901,12,1,25,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2176901,12,0,0,0,0,0,0,2000005445,0,0,0,0,0,0,0,''),
(2176901,16,1,274,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000005443 AND 2000005445;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(2000005443,'What is it that you want from me, shaman?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005444,'Do you not have eyes? Did you not see the demons on our very doorstep? I do not have the soldiers to spare!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005445,'Pray to your gods, shaman. Perhaps they will come to your aid. The Horde, however, cannot...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- Gul'dan scripted -- SHADOWMOON VALLEY
UPDATE creature SET MovementType = 2, spawndist = 0, position_x = -3593.2185, position_y = 1858.1776, position_z = 47.24, orientation = 4.84 WHERE guid = 84600;
DELETE FROM creature_movement WHERE id = 84600;
UPDATE creature_template SET MovementType = 2 WHERE entry = 17008; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 17008;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(17008,1,-3593.4,1858.13,48.4441,20000,1700801,0,0,0,0,0,0,0,0,4.9567,0,0),
(17008,2,-3593.4,1858.13,48.4441,8000,1700802,0,0,0,0,0,0,0,0,1.745329,0,0),
(17008,3,-3593.4,1858.13,48.4441,35000,1700803,0,0,0,0,0,0,0,0,4.9567,0,0),
(17008,4,-3593.4,1858.13,48.4441,120000,0,0,0,0,0,0,0,0,0,4.9567,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1700801, 1700802, 1700803); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1700801,0,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1700802,1,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1700802,3,1,15,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1700802,4,0,0,0,0,0,0,2000005446,0,0,0,0,0,0,0,''),
(1700803,2,0,0,0,0,0,0,2000005447,0,0,0,0,0,0,0,''),
(1700803,3,15,35996,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast 35996'),
(1700803,8,0,0,0,0,0,0,2000005448,0,0,0,0,0,0,0,''),
(1700803,15,0,0,0,0,0,0,2000005449,0,0,0,0,0,0,0,''),
(1700803,22,0,0,0,0,0,0,2000005450,0,0,0,0,0,0,0,''),
(1700803,27,14,35996,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- must stop prev. spell
(1700803,28,15,35757,0,21052,30,7,0,0,0,0,0,0,0,0,'cast 35757 b->b'),
(1700803,29,0,0,0,0,0,0,2000005451,0,0,0,0,0,0,0,''),
(1700803,29,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL');
DELETE FROM db_script_string WHERE entry BETWEEN 2000005446 AND 2000005451;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(2000005446,'Be silent! The shattering is soon to come!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005447,'Bear witness to the undeniable power of our dark master!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005448,'With his gift, I shall raze this land and reform it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005449,'Watch! See the ground shatter before us! Watch as the energy flows! It will feed our armies...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005450,'We will never be without power! I have secured our future! Bask in my glory!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005451,'It... is... done...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
-- spirit of the past - texts 'must be' for only 2 of them (cannot be in ACID) 
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 73908;
DELETE FROM creature_movement WHERE id = 73908;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(73908,1,-3593,1874.94,47.324,24000,0,2000005453,2000005454,2000005457,2000005458,0,20,0,0,4.90438,0,0),
(73908,2,-3593,1874.94,47.324,36000,0,2000005457,2000005453,2000005454,2000005458,0,20,0,0,4.90438,0,0),
(73908,3,-3593,1874.94,47.324,27000,0,2000005458,2000005457,2000005454,2000005453,0,20,0,0,4.90438,0,0);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 73921;
DELETE FROM creature_movement WHERE id = 73921;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES 
(73921,1,-3600.1,1873.26,47.3238,16000,0,2000005452,2000005455,2000005456,0,0,15,0,0,4.81711,0,0),
(73921,2,-3600.1,1873.26,47.3238,55000,0,2000005455,2000005456,2000005452,0,0,15,0,0,4.81711,0,0),
(73921,3,-3600.1,1873.26,47.3238,34000,0,2000005456,2000005455,2000005452,0,0,15,0,0,4.81711,0,0);
DELETE FROM db_script_string WHERE entry BETWEEN 2000005452 AND 2000005458;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(2000005452,'Tear the land asunder, Gul\'dan! Sever the tie!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005453,'Do not do this, Gul\'dan! The elements will never forgive us!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005454,'Think of your younglings, Gul\'dan! You will destroy us all!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005455,'They have abandoned us! Do not forget!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005456,'We will take from the land if it refuses to give!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005457,'Stop! You must stop!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005458,'You have damned us all... We are lost.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);




-- Devildog4355
-- END OF BACKPORT