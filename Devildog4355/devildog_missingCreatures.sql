-- Ar'tor, Son of Oronok
UPDATE creature_template SET inhabitType=5, RegenerateStats=0 WHERE entry = 21292;
UPDATE creature SET curhealth = 1 WHERE guid = 84607; -- he must have 1HP
DELETE FROM creature_addon WHERE guid = 84607;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(84607,0,0,0,0,383,0,NULL);
UPDATE creature SET DeathState = 1 WHERE guid = 84608; -- his pet must be also death

-- Shadowmoon Valley Invisible Trigger (Tiny) casts chaneled spell on Ar'tor. (must be 4 of them - 3 added in NPC_guid_406)
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74618;
DELETE FROM creature_movement WHERE id = 74618;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(74618,1,-3797.37,2603.23,92.709,1000,0,0,0,0,0,0,0,0,0.75,0,0),
(74618,2,-3797.37,2603.23,92.709,300000,2131001,0,0,0,0,0,0,0,0.75,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2131001; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES
(2131001,1,15,36558,0,21292,10,0x01,0,0,0,0,0,0,0,0,'cast 36558 on buddy');

-- Illidari Shocktrooper #1-5 correct spawn point
UPDATE creature SET position_x = -3805.589, position_y = 2627.78, position_z = 92.21, orientation = 4.85, spawndist = 0, MovementType = 0 WHERE guid = 70916;
UPDATE creature SET position_x = -3785.7888, position_y = 2628.279, position_z = 92.178, orientation = 4.699, spawndist = 0, MovementType = 0 WHERE guid = 70918;
UPDATE creature SET position_x = -3851.01, position_y = 2476.37, position_z = 88.505, orientation = 4.17, spawndist = 0, MovementType = 0 WHERE guid = 70899;
UPDATE creature SET position_x = -3698.07, position_y = 2511.32, position_z = 80.798, orientation = 5.92, spawndist = 0, MovementType = 0 WHERE guid = 70917;
UPDATE creature SET position_x = -4002.975, position_y = 2643.11, position_z = 116.49, orientation = 2.96, spawndist = 10, MovementType = 1 WHERE guid = 70897;
-- Illidari Satyr #1 correct spawn point
UPDATE creature SET position_x = -3719.36, position_y = 2521.90, position_z = 82.856, orientation = 4.349 WHERE guid = 75649;
-- Eclipse Point - Bloodcrystal Spell Orgin - updates
UPDATE creature SET position_x = -4381.685, position_y = 1361.485, position_z = 154.8493, orientation = 4.817109 WHERE guid = 72391;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE id = 20431;
UPDATE creature_template SET MovementType = 0, InhabitType = 5 WHERE entry = 20431;
-- Marcus Auralion <High General of the Sha'tar> - updates
UPDATE creature SET position_x = -4616.837, position_y = 1399.111, position_z = 144.4221, orientation = 4.45059 WHERE id = 22073;
UPDATE creature_template SET InhabitType =5  WHERE entry= 22073;
-- Crazed Colossus - updates
UPDATE creature SET MovementType =  1, spawndist = 20, spawntimesecs =  300 WHERE id = 19823;
UPDATE creature SET position_x = -4482.533203, position_y = 2271.935059, position_z = 34.071556, orientation = 0.738341 WHERE guid = 70932;
UPDATE creature SET position_x = -4461.595703, position_y = 2185.151367, position_z = 49.529705, orientation = 2.065666 WHERE guid = 70933;
UPDATE creature SET position_x = -4567.196289, position_y = 1957.249756, position_z = 127.545021, orientation = 4.504324 WHERE guid = 70929;
UPDATE creature SET position_x = -4523.734375, position_y = 2197.330811, position_z = 27.104156, orientation = 4.362957 WHERE guid = 70931;
UPDATE creature SET position_x = -4560.373047, position_y = 1886.189941, position_z = 153.409409, orientation = 4.708526 WHERE guid = 70930;

-- Uvuros - updates
UPDATE creature SET position_x = -3758.969238, position_y = 1208.590454, position_z = 84.406281, orientation = 3.105973, spawndist = 20, MovementType = 1 WHERE guid = 74137;
-- Ruins of Ba'ri -- SHADOWMOON VALLEY
-- Ashtongue Warrior
UPDATE creature SET position_x = -3166.938, position_y = 815.67, position_z = -18.976, orientation = 4.105 WHERE guid = 75231;
UPDATE creature SET position_x = -3146.69, position_y = 883.086, position_z = -16.35, orientation = 1.7999 WHERE guid = 75230;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (75224, 75221);
-- Illidari Overseer <Servant of Illidan>
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (76167, 76168, 76169, 76170, 76171, 76172);
-- Ashtongue Worker <Servant of Illidan> - updates
UPDATE creature SET position_x = -3191.57, position_y = 1047.34, position_z = 68.328, orientation = 4.73 WHERE guid = 75259;
UPDATE creature SET position_x = -3349.476, position_y = 890.1468, position_z = -13.04151, orientation = 5.121874 WHERE guid = 75294;
UPDATE creature SET position_x = -3366.702, position_y = 890.7372, position_z = -16.62874, orientation = 1.58825 WHERE guid = 75296;
UPDATE creature SET position_x = -3333.378, position_y = 886.389, position_z = -8.727637, orientation = 1.500983 WHERE guid = 75295;
UPDATE creature SET orientation = 0.5934119 WHERE guid = 75294;
UPDATE creature SET orientation = 2.426008 WHERE guid = 75289;
UPDATE creature SET orientation = 4.78318 WHERE guid = 75275;
UPDATE creature SET position_x = -3313.476, position_y = 1227.468, position_z = 75.26, orientation = 4.171337 WHERE guid = 75245;
UPDATE creature SET position_x = -3355.28, position_y = 997.707, position_z = 29.334616, orientation = 5.77704 WHERE guid = 75270;
UPDATE creature SET position_x = -3266.4187, position_y = 894.744, position_z = 24.164999, orientation = 1.815 WHERE guid = 75264;
UPDATE creature SET position_x = -3270.785, position_y = 939.565, position_z = 43.93, orientation = 3.484432 WHERE guid = 75267;
UPDATE creature SET position_x = -3417.87, position_y = 1139.28, position_z = 49.31, orientation = 4.37 WHERE guid = 75243;
UPDATE creature SET position_x = -3393.88, position_y = 1214.27, position_z = 65.71, orientation = 4.79 WHERE guid = 75240;
UPDATE creature SET position_x = -3366.56, position_y = 1230, position_z = 69.316, orientation = 1.42 WHERE guid = 75241;
UPDATE creature SET position_x = -3329.028, position_y = 1231.72, position_z = 73.322, orientation = 5 WHERE guid = 75234;
-- Ashtongue Shaman <Servant of Illidan>
UPDATE creature SET position_x = -3229.08, position_y = 876.878784, position_z = 38.75, orientation = 3.074 WHERE guid = 75203;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (75201, 75203, 75209, 75213);
-- Elekk Demolisher
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 76116;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 76117;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 76122;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 76121;
UPDATE creature SET position_x = -3228.41, position_y = 1052.62, position_z = 64.849, orientation = 2.475, MovementType = 2, spawndist = 0 WHERE guid = 76119;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 76115;
UPDATE creature SET position_x = -3286.627, position_y = 964.17, position_z = 41.43, orientation = 6.035, MovementType = 2, spawndist = 0 WHERE guid = 76120;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 76118;
-- Ghostrider of Karabor - updates
UPDATE creature SET position_x = -3118.324, position_y = 817.183, position_z = -22.04, orientation = 1.19 WHERE guid = 76085;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 76084;

-- Netherwing Lodge  -- SHADOWMOON VALLEY
-- Yarzill the Merc - spawn point update
UPDATE creature SET position_x = -5118.329, position_y = 595.0888, position_z = 85.13205, orientation = 1.815142 WHERE guid = 68939;
-- Taskmaster Varkule Dragonbreath - update
UPDATE creature SET position_x = -5114.4389, position_y = 588.484, position_z = 85.872, orientation = 3.04 WHERE guid = 51876;
-- Ja'y Nosliw <Skybreaker General>
UPDATE creature SET position_x = -5144.4, position_y = 600.91, position_z = 82.75, orientation = 6.02 WHERE guid = 78787;
-- Corlok the Vet - correct spawn point
UPDATE creature SET position_x = -5072.987793, position_y = 640.033508, position_z = 86.453300, orientation = 2.037906 WHERE guid = 40725;
-- Trope the Filth-Belcher
UPDATE creature SET position_x = -5081.618, position_y = 640.9318, position_z = 86.58853, orientation = 1.570796 WHERE guid = 40716;
-- Murg "Oldie" Muckjaw
UPDATE creature SET position_x = -5088.555, position_y = 640.8356, position_z = 86.57706, orientation = 1.48353 WHERE guid = 40703;
-- Arvoar the Rapacious - correct spawn point
UPDATE creature SET position_x = -5113.87, position_y = 124.579, position_z = 129.767, orientation = 1.132, spawndist = 0, MovementType = 0 WHERE guid = 40619;

-- Dragonmaw Enforcer - some of them should use diff equipment + spawn updates
DELETE FROM creature_equip_template WHERE entry=2509;
INSERT INTO creature_equip_template VALUES
(2396, 31600, 31466, 0),
(2394, 31603, 0, 0);
UPDATE creature SET equipment_id = 2509 WHERE guid IN (52108, 52110); -- axe
DELETE FROM creature_addon WHERE guid IN (52108, 52110); 
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(52108,0,0,1,0,333,0,NULL), -- these 2 must have battle stance
(52110,0,0,1,0,333,0,NULL);
UPDATE creature SET equipment_id = 2396 WHERE guid IN (52113, 52230); -- axe and shield
UPDATE creature SET equipment_id = 2510 WHERE guid IN (52114, 52115, 52121, 52231); -- sword and shield
UPDATE creature SET equipment_id = 2509, position_x = -5146.481, position_y = 517.6528, position_z = 85.16, orientation = 3.351 WHERE guid = 52109;
UPDATE creature SET position_x = -5128.689, position_y = 579.84, position_z = 85.25567, orientation = 0.26 WHERE guid = 52112;
UPDATE creature SET equipment_id = 2509, position_x = -5160.024, position_y = 561.3785, position_z = 82.47646, orientation = 0.052 WHERE guid = 52107;
UPDATE creature SET position_x = -5089.073, position_y = 616.179, position_z = 85.793, orientation = 1.08 WHERE guid = 52230;
UPDATE creature SET equipment_id = 2510, position_x = -5165.002, position_y = 534.0313, position_z = 82.925, orientation = 3.857178 WHERE guid = 52106;
-- Barash the Den Mother - correct spawn point + wp
UPDATE creature SET position_x = -5040.834961, position_y = 347.113, position_z = 170.64679, orientation = 0.533696, MovementType = 2, spawndist = 0 WHERE guid = 40645;
-- Nethermine Flayer - correct spawn points
UPDATE creature SET position_x = -5011.88, position_y = 641.114, position_z = 23.198, orientation = 1.47377 WHERE guid = 48239;
UPDATE creature SET position_x = -5009.257, position_y = 686.4136, position_z = 18.91918, orientation = 5.247804 WHERE guid = 48240;
UPDATE creature SET position_x = -4978.305, position_y = 634.9852, position_z = 20.23735, orientation = 1.320743 WHERE guid = 48241;
-- Dragonmaw Peon - updates
UPDATE creature SET position_x = -5152.204102, position_y = 593.007263, position_z = 81.319328, orientation = 4.614835 WHERE guid = 78137;
UPDATE creature SET position_x = -5157.849609, position_y = 587.679749, position_z = 80.780914, orientation = 6.056108 WHERE guid = 78135;
UPDATE creature SET position_x = -5096.400879, position_y = 569.657837, position_z = 85.428169, orientation = 0.706939 WHERE guid = 78160;
UPDATE creature SET position_x = -5101.500977, position_y = 577.110840, position_z = 85.382805, orientation = 0.386491 WHERE guid = 78159;
UPDATE creature SET position_x = -5101.968750, position_y = 570.191284, position_z = 85.247452, orientation = 2.764681 WHERE guid = 78136;
UPDATE creature SET position_x = -5138.146973, position_y = 773.259583, position_z = 44.237858, orientation = 1.560362 WHERE guid = 78149;
UPDATE creature SET position_x = -5297.867676, position_y = 646.099487, position_z = 19.022951, orientation = 1.251940 WHERE guid = 78139;
UPDATE creature SET position_x = -5292.089844, position_y = 659.599426, position_z = 27.496593, orientation = 2.354636 WHERE guid = 78141;
UPDATE creature SET position_x = -5201.265137, position_y = 603.950378, position_z = 63.840275, orientation = 0.237202 WHERE guid = 78142;
UPDATE creature SET position_x = -5290.726563, position_y = 668.203613, position_z = 26.046347, orientation = 3.421195 WHERE guid = 78143;
UPDATE creature SET position_x = -5134.734, position_y = 460.634, position_z = 77.233, orientation = 0.001 WHERE guid = 78123;
UPDATE creature SET position_x = -5195.275, position_y = 610.93, position_z = 63.89, orientation = 4.595568 WHERE guid = 78144;

-- Murkblood Miner - not all should have deathstate aura + correct spawn points
DELETE FROM creature_template_addon WHERE entry = 23287; 
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(23287,0,0,1,0,0,0,NULL);
UPDATE creature SET position_x = -5051.51, position_y = 155.655, position_z = -12.63313, orientation = 1.396263 WHERE guid = 52026;
DELETE FROM creature_addon WHERE guid =52026; 
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(52026,0,0,1,0,0,0,'31261');
UPDATE creature SET position_x = -5085.621, position_y = 154.5083, position_z = -10.88531, orientation = 0.9075712 WHERE guid = 52028;
DELETE FROM creature_addon WHERE guid = 52028; 
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(52028,0,0,1,0,0,0,'31261');
UPDATE creature SET position_x = -5115.295, position_y = 147.5993, position_z = -11.40529, orientation = 0.6457718 WHERE guid = 52029;
DELETE FROM creature_addon WHERE guid = 52029; 
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(52029,0,0,1,0,0,0,'31261');
UPDATE creature SET position_x = -5176.57, position_y = 367.101, position_z = -20.1258, orientation = 1.82037 WHERE guid = 52025;
DELETE FROM creature_addon WHERE guid = 52025; 
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(52025,0,0,1,0,0,0,'31261');
UPDATE creature SET position_x = -4973.14, position_y = 453.266, position_z = 2.71957, orientation = 4.00739 WHERE guid = 52027;
DELETE FROM creature_addon WHERE guid = 52027; 
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(52027,0,0,1,0,0,0,'31261');
-- Dragonmaw Ascendant - updates
UPDATE creature SET position_x = -4941.29, position_y = 35.202, position_z = 62.653, orientation = 3.27, spawndist =0 , MovementType = 0 WHERE guid = 52331;
UPDATE creature SET position_x = -4932.889, position_y = 22.40, position_z = 62.16, orientation = 3.616, spawndist = 0, MovementType = 0 WHERE guid = 52330;

-- wrong equip
UPDATE creature SET equipment_id = 2394 WHERE guid IN (52330, 52331); -- correct equip for only 2 of them
UPDATE creature_template SET EquipmentTemplateId = 2422 WHERE entry = 22253;
DELETE FROM creature where guid IN (132814, 132815, 132816, 132817, 132818);
INSERT INTO creature(guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(132814, 23188, 530, 1, 0, 0, -4710.47, 267.792, 106.433, 4.62644, 25, 0, 0, 7266, 3155, 0, 2),
(132815, 23188, 530, 1, 0, 0, -4624.19, 11.9728, 221.022, 3.08234, 25, 0, 0, 7266, 3155, 0, 2),
(132816, 23188, 530, 1, 0, 0, -4660.51, 198.747, 120.697, 3.38848, 25, 0, 0, 7266, 3155, 0, 2),
(132817, 23188, 530, 1, 0, 0, -4931.25, 32.0997, 61.9082, 0.564719, 25, 0, 0, 7266, 3155, 0, 2),
(132818, 23188, 530, 1, 0, 0, -4699.26, 84.1677, 93.9215, 3.01908, 25, 0, 0, 7266, 3155, 0, 2);
-- Dragonmaw Transporter - wps
UPDATE creature SET MovementType = 2, spawndist = 0, spawntimesecs = 25 WHERE guid IN (132814, 132815, 132816, 132817, 132818);
UPDATE creature_template SET speedwalk = 2.3 WHERE entry = 23188;

-- Overmine Flayer -- correct spawn points for them
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE id = 23264;
UPDATE creature SET position_x = -5110.430176, position_y = 110.530701, position_z = 129.766251, orientation = 1.326207 WHERE guid = 52088;
UPDATE creature SET position_x = -5102.036133, position_y = 140.297623, position_z = 129.766296, orientation = 3.042557 WHERE guid = 52087;
UPDATE creature SET position_x = -5132.237305, position_y = 133.248795, position_z = 129.766006, orientation = 5.968952 WHERE guid = 52100;
UPDATE creature SET position_x = -5087.301758, position_y = 151.392944, position_z = 129.749390, orientation = 5.419170 WHERE guid = 52097;
UPDATE creature SET position_x = -5032.5864, position_y = 260.2366, position_z = 94.053, orientation = 0.78 WHERE guid = 52096;
UPDATE creature SET position_x = -5113.418457, position_y = 156.904755, position_z = 129.767181, orientation = 2.833842 WHERE guid = 52091;
UPDATE creature SET position_x = -5064.485840, position_y = 185.581696, position_z = 124.550743, orientation = 0.048166 WHERE guid = 52094;
UPDATE creature SET position_x = -5056.435547, position_y = 171.984802, position_z = 125.620918, orientation = 5.349731 WHERE guid = 52092;
UPDATE creature SET position_x = -5122.264160, position_y = 206.877014, position_z = 135.864517, orientation = 0.688392 WHERE guid = 52089;
UPDATE creature SET position_x = -5095.819824, position_y = 217.754578, position_z = 141.737030, orientation = 5.958406 WHERE guid = 52090;
UPDATE creature SET position_x = -5086.411621, position_y = 240.672516, position_z = 148.095825, orientation = 6.256847 WHERE guid = 52093;
UPDATE creature SET position_x = -5065.454102, position_y = 360.774658, position_z = 170.762634, orientation = 5.638737 WHERE guid = 52103;
UPDATE creature SET position_x = -5025.245117, position_y = 350.746124, position_z = 170.646530, orientation = 2.289009 WHERE guid = 52101;
UPDATE creature SET position_x = -5042.181152, position_y = 389.447937, position_z = 170.659821, orientation = 5.489504 WHERE guid = 52102;
UPDATE creature SET position_x = -5024.062500, position_y = 397.963715, position_z = 170.646103, orientation = 4.103456 WHERE guid = 52095;

-- Disobedient Dragonmaw Peon
UPDATE creature SET position_x = -5096.1147, position_y = 483.314, position_z = 82.86, orientation = 4.5475, spawndist = 5, MovementType = 1 WHERE guid = 52265; -- 40714
DELETE FROM creature_addon WHERE guid = 52265; 
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(52265,0,0,1,0,0,0,'40714');
UPDATE creature SET position_x = -5183.9067, position_y = 392.276, position_z = 72.201469, orientation = 5.414 WHERE guid = 52268; -- 40735
DELETE FROM creature_addon WHERE guid = 52268;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(52268,0,0,1,0,15,0,'40735');
UPDATE creature SET position_x = -5238.797852, position_y = 275.804413, position_z = 69.431686, orientation = 4.582273 WHERE guid = 52267; -- 40735
DELETE FROM creature_addon WHERE guid = 52267;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(52267,0,0,1,0,15,0,'40735');
UPDATE creature SET position_x = -5291.341309, position_y = 382.097992, position_z = 53.547478, orientation = 5.962993 WHERE guid = 52270; -- 40732
DELETE FROM creature_addon WHERE guid = 52270; 
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(52270,0,0,1,0,0,0,'40732');
UPDATE creature SET position_x = -5345.392578, position_y = 164.435852, position_z = 41.236126, orientation = 3.795270, spawndist = 5, MovementType = 1 WHERE guid = 52271; -- 40714
DELETE FROM creature_addon WHERE guid = 52271; 
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(52271,0,0,1,0,0,0,'40714');
UPDATE creature SET position_x = -5178.445313, position_y = 137.140045, position_z = 73.169189, orientation = 0.603397 WHERE guid = 52272; -- 40732
DELETE FROM creature_addon WHERE guid = 52272; 
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(52272,0,0,1,0,0,0,'40732');
UPDATE creature SET position_x = -5248.107422, position_y = 24.594639, position_z = 53.959251, orientation = 1.144406, spawndist = 5, MovementType = 1 WHERE guid = 52273; -- 40714
DELETE FROM creature_addon WHERE guid = 52273; 
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(52273,0,0,1,0,0,0,'40714');
UPDATE creature SET position_x = -5182.115234, position_y = -10.521124, position_z = 76.323410, orientation = 0.669229 WHERE guid = 52274; -- 40735
DELETE FROM creature_addon WHERE guid = 52274; 
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(52274,0,0,1,0,15,0,'40735');
UPDATE creature SET spawndist = 5, MovementType = 1  WHERE guid = 52268; -- 40714
DELETE FROM creature_addon WHERE guid = 52268; 
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(52268,0,0,1,0,0,0,'40714');
-- 52266 -- 40732
DELETE FROM creature_addon WHERE guid = 52266; 
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(52266,0,0,1,0,0,0,'40732');
-- 52269 -- 40735
DELETE FROM creature_addon WHERE guid = 52269; 
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(52269,0,0,1,0,15,0,'40735');
-- Ashtongue Deathsworn
UPDATE creature_model_info SET modelid_other_gender = 0 WHERE modelid = 20422;
-- gossip for Akama -- Warden's Cage
UPDATE creature_template SET gossipmenuid = 8372 WHERE entry = 21700;
DELETE FROM gossip_menu WHERE entry = 8372;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES 
(8372,10447,0,0);

-- Ruins of Karabor - SHADOWMOON VALLEY
-- Sunfury Eradicator - updates 
UPDATE creature SET equipment_id = 2511 WHERE guid IN (32338, 32685, 32686, 32687, 32688, 75988, 75989); -- some of them using diff equip.
UPDATE creature SET position_x = -3679.856, position_y = 465.32373, position_z = 90.755714, orientation = 2.635447 WHERE guid = 32688;
UPDATE creature SET position_x = -3784.303955, position_y = 532.671875, position_z = 75.059875, orientation = 3.124139 WHERE guid = 32689;
UPDATE creature SET position_x = -3753.312, position_y = 517.034119, position_z = 90.41709, orientation = 5.969026 WHERE guid = 32338;
UPDATE creature SET position_x = -3825.46704, position_y = 533.5733, position_z = 77.87347, orientation = 0.10067 WHERE guid = 32339;
UPDATE creature SET position_x = -3826.645996, position_y = 548.731384, position_z = 72.209023, orientation = 0.1745329 WHERE guid = 32336;
UPDATE creature SET position_x = -3825.9121, position_y = 569.2147, position_z = 72.06449, orientation = 0.01745329 WHERE guid = 32337;
DELETE FROM creature_addon WHERE guid IN (32338, 32685, 32686, 32687, 32688); -- they should work
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(32338,0,0,1,16,173,0,NULL),
(32685,0,0,1,16,173,0,NULL),
(32686,0,0,1,16,173,0,NULL),
(32687,0,0,1,16,173,0,NULL),
(32688,0,0,1,16,173,0,NULL);

-- Sunfury Blood Lord
UPDATE creature SET position_x = -3861.197998, position_y = 509.723206, position_z = 91.152908, orientation = 0.0296 WHERE guid = 75996;
-- Demon Hunter Supplicant
UPDATE creature_template SET factionAlliance = 1813, factionHorde = 1813 WHERE entry = 21179; -- real faction on spawn (diff is set only for event when they fight between themselfs)
UPDATE creature SET position_x = -3917.171387, position_y = 465.100372, position_z = 104.599174, orientation = 4.754642 WHERE guid = 74246;
UPDATE creature SET position_x = -3916.967773, position_y = 461.777313, position_z = 104.680939, orientation = 1.664098 WHERE guid = 74247;
-- Shadowmoon Darkweaver <Servant of Illidan>
DELETE FROM creature_addon WHERE guid IN (77394, 77374, 77381, 77382, 77393, 77392, 77391, 77384, 77383, 77387, 77389, 77390, 77380, 77379, 77375); -- they all got same stateemote and aura so we can use _template_addon
UPDATE creature_template_addon SET emote = 468, auras = '38442' WHERE entry = 22081;
-- Shadowsworn Drakonid <Servant of Illidan>
UPDATE creature SET position_x = -3294.920410, position_y = 347.642090, position_z = 120.513504, orientation = 1.089651, MovementType = 2, spawndist = 0 WHERE guid = 77358;
-- Heart of Fury Visual Trigger 
UPDATE creature_template SET MovementType = 0, InhabitType = 4 WHERE entry = 22058;
-- Shadowmoon Chosen <Servant of Illidan>
UPDATE creature SET position_x = -3270.835938, position_y = 338.949188, position_z = 119.751984, orientation =3.089233 WHERE guid = 77484; -- correct poss for 1st one
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (77483, 77487, 77492, 77495, 77497, 77498);
UPDATE creature_addon SET auras =NULL WHERE guid IN (77495, 77497, 77498); -- spell is casted on aggro (req. ACID not UDB)

-- Shadowlord Deathwail
UPDATE creature_template SET inhabitType = 5 WHERE entry = 22006;
UPDATE creature SET position_x = -3225.12, position_y = 246.8172, position_z = 195.6793, MovementType = 2, spawndist = 0 WHERE guid = 77084;
-- Shadowmoon Slayer <Servant of Illidan>
UPDATE creature_template_addon SET emote = 438 WHERE entry = 22082;
-- Eclipse point -- SHADOWMOON VALLEY
-- Illidari Slayer 
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (75468, 75469);
-- Eclipsion Archmage
DELETE FROM creature_addon WHERE guid IN (70850, 70851, 70852, 70853, 70854, 70855, 70856, 70858, 70861, 70862); -- they all got same so we can use _template_addon
UPDATE creature_template_addon SET b2_1_flags = 16 WHERE entry = 19796;
UPDATE creature SET spawndist = 0, MovementType = 0, orientation = 6.045 WHERE guid = 70866;
UPDATE creature SET position_x = -4424.159668, position_y = 1570.85266, position_z = 164.735, orientation = 4.603 WHERE guid = 72585;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (70867, 70869);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (70850, 70851, 70852, 70853, 70854, 70855, 70856, 70858, 70861, 70862); -- they all must 'do' movement script

-- Shadowmoon Village -- SHADOWMOON VALLEY
-- Warcaller Sardon Truslice
UPDATE creature SET position_x = -3079.75, position_y = 2555.731, position_z = 62.854, orientation = 4.732, MovementType = 2, spawndist = 0 WHERE guid = 31751;
-- Grutah
DELETE FROM creature_template_addon WHERE entry = 19341;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(19341, 0, 0, 1, 16, 69, 0, NULL);
-- Shadowmoon Peon
UPDATE creature_template_addon SET emote = 0 WHERE entry = 19355;
DELETE FROM creature_addon WHERE guid = 69071;
UPDATE creature SET position_x = -3173.563477, position_y = 2491.294678, position_z = 62.632, orientation = 2.219 WHERE guid = 69066;
UPDATE creature SET position_x = -3127.639648, position_y = 2479.661377, position_z = 61.9797, orientation = 1.017547 WHERE guid = 69070;
UPDATE creature SET position_x = -3128.244873, position_y = 2493.162354, position_z = 61.884327, orientation = 0.476898 WHERE guid = 69055;
UPDATE creature SET position_x = -2964.790527, position_y = 2663.017, position_z = 98.645836, orientation = 0.333633 WHERE guid = 69056;
UPDATE creature SET position_x = -2960.153, position_y = 2578.2964, position_z = 76.601, orientation = 4.548, spawndist = 0, MovementType = 0 WHERE guid = 69058;
DELETE FROM creature_addon WHERE guid = 69068;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(69068,0,0,1,16,173,0,NULL);
UPDATE creature SET position_x = -3123.919678, position_y = 2444.355225, position_z = 64.202316, orientation = 5.707159 WHERE guid = 69054;
DELETE FROM creature_addon WHERE guid = 69054;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(69054,0,0,1,16,69,0,NULL);
DELETE FROM creature_addon WHERE guid = 69053;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(69053,0,0,1,16,173,0,NULL);
DELETE FROM creature_addon WHERE guid = 69067;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(69067,0,0,1,16,173,0,NULL);
UPDATE creature SET position_x = -3123.56738, position_y = 2480.264648, position_z = 62.442, orientation = 1.25 WHERE guid = 69052;
DELETE FROM creature_addon WHERE guid = 69052;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(69052,0,0,1,16,173,0,NULL);
DELETE FROM creature_addon WHERE guid = 69064;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(69064,0,0,1,16,173,0,NULL);
DELETE FROM creature_addon WHERE guid = 69055;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(69055,0,0,1,16,173,0,NULL);
DELETE FROM creature_addon WHERE guid = 69058;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(69058,0,0,1,16,69,0,NULL);
-- Kor'kron Defender
UPDATE creature SET position_x = -3104.119, position_y = 2563.8, position_z = 62.03776, orientation =2.949606 WHERE guid =69090;
UPDATE creature SET position_x =-2933.189941, position_y =2648.259033, position_z =93.679657, orientation = 3.954962 WHERE guid = 69081;

UPDATE creature SET position_x = -3068.23, position_y = 2522.297363, position_z = 61.924, orientation = 5.037, MovementType = 2, spawndist = 0 WHERE guid = 69096;
UPDATE creature SET position_x = -3071.64, position_y = 2523.181641, position_z = 61.885, orientation = 4.959 WHERE guid = 69097;
UPDATE creature SET position_x = -3180.173096, position_y = 2623.666992, position_z = 141.622498, orientation = 3.438781, MovementType = 2, spawndist = 0 WHERE guid = 74220;
DELETE FROM creature_addon WHERE guid IN (69096, 69097);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(69096,14336,0,1,16,0,0,NULL),
(69097,14334,0,1,16,0,0,NULL);
-- Sunfury Warlock
UPDATE creature SET position_x = -3821.185059, position_y = 388.192596, position_z = 120.564316, orientation = 3.542035, MovementType = 2, spawndist = 0 WHERE guid = 75409;
UPDATE creature SET position_x =- 3844.86499, position_y = 388.54379, position_z = 120.416885, orientation = 5.969026, MovementType = 2, spawndist = 0 WHERE guid = 75410;
UPDATE creature SET position_x = -3824.62988, position_y = 374.3699, position_z = 120.57457, orientation = 2.234, MovementType = 2, spawndist = 0 WHERE guid = 75412;
UPDATE creature SET position_x = -3841.58496, position_y = 376.102, position_z = 120.403328, orientation = 0.9948376, MovementType = 2, spawndist = 0 WHERE guid = 75411;

-- Enslaved Netherwing Drake
DELETE FROM creature_addon WHERE guid IN (75818, 75820, 75824); 
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(75818,0,3,1,16,0,0,NULL),
(75820,0,3,1,16,0,0,NULL),
(75824,0,3,1,16,0,0,NULL);
UPDATE creature_addon SET auras = '' WHERE guid IN (75816, 75817, 75825);
UPDATE creature SET orientation = 3.50373 WHERE guid = 75818;
-- Dragonmaw Drake Rider
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (75785, 75787, 75788, 75789, 75790, 75791, 75792, 75793);
UPDATE creature SET position_x = -4155.348633, position_y = 385.599915, position_z = 141.476776, orientation = 1.390226, spawndist= 0, MovementType= 0 WHERE guid = 75786;
-- Entrance into Black Temple (area outside) - SHADOWMOON VALLEY
-- Shadowhoof Summoner <Servant of Illidan> -- correct spawn points
UPDATE creature SET position_x = -3500.331055, position_y = 404.142700, position_z = 30.958199, orientation = 4.697011 WHERE guid = 29053;
UPDATE creature SET position_x = -3618.229004, position_y = 405.728485, position_z = 32.089481, orientation = 4.782202 WHERE guid = 29058;
UPDATE creature SET position_x = -3617.355957, position_y = 389.151886, position_z = 34.402809, orientation = 1.58825 WHERE guid = 29057;
UPDATE creature SET position_x = -3500.304932, position_y = 386.973999, position_z = 33.702042, orientation = 1.553343 WHERE guid = 29054;
UPDATE creature SET position_x = -3549.875977, position_y = 374.401703, position_z = 33.230572, orientation = 3.176499 WHERE guid = 29055;
UPDATE creature SET position_x = -3570.402100, position_y = 373.559998, position_z = 32.888485, orientation = 6.213372 WHERE guid = 29056;
UPDATE creature_template SET UnitFlags = unitflags&~0x300 WHERE entry = 22859; -- 0x8000 is the correct flag.

-- Lightsworn Vindicator
UPDATE creature SET position_x = -3524.23, position_y = 578.947, position_z = 13.7938, orientation = 4.67391 WHERE guid = 17577;
UPDATE creature SET position_x = -3552.085938, position_y = 573.708618, position_z = 12.673436, orientation = 4.684122 WHERE guid = 18051;
UPDATE creature SET position_x = -3533.843018, position_y = 568.843384, position_z = 14.821877, orientation = 4.684122 WHERE guid = 17566;
UPDATE creature SET position_x = -3543.006104, position_y = 566.101929, position_z = 14.503198, orientation = 4.753238 WHERE guid = 18044;
UPDATE creature SET position_x = -3524.770996, position_y = 571.806885, position_z = 14.555212, orientation = 4.765799 WHERE guid = 18054;
UPDATE creature SET position_x = -3533.820068, position_y = 576.426025, position_z = 14.843843, orientation = 4.640910 WHERE guid = 17336;
UPDATE creature SET position_x = -3543.095947, position_y = 575.441650, position_z = 13.908803, orientation = 4.781152 WHERE guid = 18053;
-- Seasoned Magister
UPDATE creature SET position_x = -3592.949951, position_y = 579.104675, position_z = 13.829624, orientation = 4.834562 WHERE guid = 22307;
UPDATE creature SET position_x = -3575.698975, position_y = 574.099915, position_z = 12.140335, orientation = 4.834562 WHERE guid = 29050;
UPDATE creature SET position_x = -3582.562012, position_y = 575.345520, position_z = 13.494620, orientation = 4.834562 WHERE guid = 23710;
UPDATE creature SET position_x = -3566.906006, position_y = 573.777771, position_z = 11.688795, orientation = 4.834562 WHERE guid = 29051;
UPDATE creature SET position_x = -3566.230957, position_y = 565.218323, position_z = 12.658995, orientation = 4.834562 WHERE guid = 29052;
UPDATE creature SET position_x = -3575.227051, position_y = 564.363220, position_z = 13.038273, orientation = 4.834562 WHERE guid = 29049;
UPDATE creature SET position_x = -3583.866943, position_y = 568.276001, position_z = 13.424305, orientation = 4.834562 WHERE guid = 18490;
UPDATE creature SET position_x = -3593.875000, position_y = 572.174988, position_z = 14.035522, orientation = 4.834562 WHERE guid = 18492;

-- Illidari Ravager <Servant of Illidan>
UPDATE creature_template SET unitflags = unitflags&~0x300 WHERE entry = 22857;

DELETE FROM creature_template_addon WHERE entry = 22967;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(22967,20359,0,1,16,0,0,NULL);
-- Lightsworn Elekk Rider
DELETE FROM creature_template_addon WHERE entry = 22966;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(22966,19872,0,1,16,0,0,NULL);
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
-- Ancient Shadowmoon Spirit - updates
UPDATE creature SET position_x = -4543.69, position_y = 1022.35, position_z = 9.979, orientation = 3.874631, spawntimesecs = 30 WHERE guid = 86139;
UPDATE creature_template_addon SET b2_0_sheath = 0, auras = '37497 37509 37728' WHERE entry = 21797;
UPDATE spell_script_target SET targetEntry = 21797 WHERE entry = 37748; -- wrong target was set
-- The Voice of Gorefiend
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid = 76573;
-- Karsius the Ancient Watcher
UPDATE creature_template SET MovementType = 0 WHERE entry = 21877;
UPDATE creature_template_addon SET emote = 333 WHERE entry = 21877;
-- Chain of Shadows - updates
UPDATE creature_template SET MovementType = 0, InhabitType = 4 WHERE entry = 21876;
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
-- Treebole - correct spawn point
UPDATE creature SET position_x = 3605.68, position_y = 6836.18, position_z = 137.95, orientation = 4.6 WHERE guid = 77879;
-- Raven's Wood Leafbeard - correct spawn point
UPDATE creature SET position_x = 3479.97, position_y = 6883.62, position_z = 137.97, orientation = 5.86 WHERE guid = 74694;
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
UPDATE creature_template SET MovementType = 2, modelid1 = 17612, unitflags = unitflags | 0x2008200 WHERE entry = 21134; -- now move him to template (unique npc)
-- Greater Windroc -- now moves correctly ..not with nose underground ;)
UPDATE creature_template SET InhabitType = 1 WHERE entry = 17129;
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
-- Enraged Water Spirit - correct spawn points, spawndist, movementype - updates
UPDATE creature SET spawndist=10, MovementType=1 WHERE guid IN (73967, 73975);
UPDATE creature_template SET inhabitType= 1 WHERE entry = 21059; -- we don't need '3' .. theres no deep ponds or lakes there, also with 3 he falls under the ground.
UPDATE creature SET position_x = -2750.37, position_y = 1477.62, position_z = 6.06, orientation = 2.86, spawndist = 10, MovementType = 1 WHERE guid = 73973;
UPDATE creature SET position_x = -2778.82, position_y = 1515.12, position_z = 6.46, orientation = 0.48, spawndist = 10, MovementType = 1 WHERE guid = 73972;
UPDATE creature SET position_x = -3213.69, position_y = 1757.05, position_z = 88.43, orientation = 3.01, spawndist = 10, MovementType = 1 WHERE guid = 73966;
UPDATE creature SET position_x = -2753.05, position_y = 1532.47, position_z = 6.38, orientation = 3.67, spawndist = 5, MovementType = 1 WHERE guid = 73974;
UPDATE creature SET position_x = -2822.20, position_y = 1451.23, position_z = 5.89, orientation = 3.50, spawndist = 10, MovementType = 1 WHERE guid = 73971;
-- Coilskar Myrmidon - correct spawn point
UPDATE creature SET position_x = -2984.79, position_y = 1302.27, position_z = 7.42, orientation = 1.87, spawndist = 10, MovementType = 1 WHERE guid = 70708;
-- Coilskar Sorceress -- we don't need '3' .. theres no deep ponds or lakes there, also with 3 he falls under the ground.
UPDATE creature_template SET inhabitType = 1 WHERE entry = 19767;
-- Deathforge Guardians #1 #2 #3 #4 #5 - correct spawnpoint and movement
UPDATE creature SET position_x = -3257.48, position_y = 2049.87, position_z = 74.52, orientation = 1.31, spawndist = 0, MovementType = 0 WHERE guid = 73639;
UPDATE creature SET position_x = -3385.90, position_y = 2105.63, position_z = 78.86, orientation = 0.97, spawndist = 0, MovementType = 0 WHERE guid = 73634;
UPDATE creature SET position_x = -3361.27, position_y = 1980.23, position_z = 26.28, orientation = 1.89, spawndist = 0, MovementType = 0 WHERE guid = 73623;
UPDATE creature SET position_x = -3375.14, position_y = 2098.52, position_z = 33.92, orientation = 4.87, spawndist = 0, MovementType = 0  WHERE guid = 73625;
UPDATE creature SET position_x = -3359.73, position_y = 2105.12, position_z = 11.52, orientation = 4.48, spawndist = 0, MovementType = 0 WHERE guid = 73626;
-- Cooling Infernal - update
UPDATE creature_template SET unitflags=unitflags&~0x2000100 WHERE entry = 19760;
UPDATE creature_template_addon SET auras =NULL WHERE entry =19760;
-- these 2 should be death (flag 0x2000100)
UPDATE creature SET DeathState = 1 WHERE guid IN (84621, 84620);
-- Warbringer Razuun - correct spawn point
UPDATE creature SET position_x = -3667.163, position_y = 2082.57, position_z = 10.45, orientation = 5.81 WHERE guid = 84861;



-- Netherwing Fields -- SHADOWMOON VALLEY FLIGHT TWITCHES @ START OF PATH
-- Ruul the Darkener - correct spawnpoint + wps
UPDATE creature SET MovementType = 2, spawndist = 0, spawntimesecs = 120, position_x = -3807.048, position_y = 1074.558, position_z = 125.2456, orientation = 3.60 WHERE guid = 74638;
UPDATE creature_template SET MovementType = 2 WHERE entry = 21315; -- now move his wps to template (unique npc)
-- Mordenai - req. acid part as well
UPDATE creature SET MovementType = 2, spawndist = 0, position_x = -4135.18, position_y = 811.51, position_z = 9.24, orientation = 4.47569 WHERE guid = 77645; 
DELETE FROM creature_movement WHERE id = 77645;
UPDATE creature_template SET MovementType = 2 WHERE entry = 22113; -- now move him to template (unique npc)
UPDATE creature_template_addon SET b2_0_sheath = 0 WHERE entry = 22113;
DELETE FROM creature_movement_template WHERE entry = 22113;
INSERT INTO creature_movement_template (entry, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(22113,1,-4150.962891,769.769226,6.319075,0,0,0,0,0,0,0,0,0,4.444280,0,0),
(22113,2,-4153.100586,760.191467,3.477472,0,0,0,0,0,0,0,0,0,4.495329,0,0),
(22113,3,-4155.082031,747.368347,1.898499,4000,0,0,0,0,0,0,0,0,4.589575,0,0),
(22113,4,-4151.371094,769.929321,6.424526,0,0,0,0,0,0,0,0,0,1.114189,0,0),
(22113,5,-4132.841797,797.354797,8.166068,1000,2211301,0,0,0,0,0,0,0,1.076857,0,0),
(22113,6,-4137.319336,823.672241,9.682964,0,0,0,0,0,0,0,0,0,0.975591,0,0),
(22113,7,-4119.156738,842.163940,9.895238,0,0,0,0,0,0,0,0,0,1.089474,0,0),
(22113,8,-4115.261719,851.276062,7.685325,0,0,0,0,0,0,0,0,0,1.461753,0,0),
(22113,9,-4109.656738,883.087646,13.887617,0,0,0,0,0,0,0,0,0,1.339231,0,0),
(22113,10,-4110.741699,914.769043,17.723040,0,0,0,0,0,0,0,0,0,1.213564,0,0),
(22113,11,-4106.893555,948.026123,23.007792,0,0,0,0,0,0,0,0,0,1.366716,0,0),
(22113,12,-4099.933105,978.899902,25.340807,4000,0,0,0,0,0,0,0,0,1.453110,0,0),
(22113,13,-4104.064941,931.186646,18.846851,1000,2211301,0,0,0,0,0,0,0,4.630041,0,0),
(22113,14,-4105.653809,911.223633,16.135292,0,0,0,0,0,0,0,0,0,4.677164,0,0),
(22113,15,-4106.054199,889.833313,14.464891,0,0,0,0,0,0,0,0,0,4.211424,0,0),
(22113,16,-4118.467285,857.927917,8.294857,0,0,0,0,0,0,0,0,0,4.359079,0,0),
(22113,17,-4122.400391,839.517822,10.415120,0,0,0,0,0,0,0,0,0,4.559355,0,0),
(22113,18,-4143.452148,803.200073,9.220427,0,0,0,0,0,0,0,0,0,4.531870,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2211301; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES
(2211301,5,26,0,0,21478,80,1,0,0,0,0,0,0,0,0,'Attack on Rocknail Ripper');
-- Rocknail Ripper - should spawn more often ..needed for event with Mordenai
UPDATE creature SET spawntimesecs = 120 WHERE id = 21478;


UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (75352, 75353, 75354, 75355, 75356, 75357, 75358);
DELETE FROM creature_movement WHERE id IN (75352, 75353, 75354, 75355, 75356, 75357, 75358);
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
-- 1st
(75352,1,-3904.860107,763.720276,9.428672,0,0,0,0,0,0,0,0,0,2.261154,0,0),
(75352,2,-3913.167480,775.460449,9.538976,0,0,0,0,0,0,0,0,0,2.479283,0,0),
(75352,3,-3923.565186,781.957336,8.581320,0,0,0,0,0,0,0,0,0,3.021208,0,0),
(75352,4,-3931.910889,780.852417,7.817398,0,0,0,0,0,0,0,0,0,3.575700,0,0),
(75352,5,-3940.605957,775.054993,5.660636,0,0,0,0,0,0,0,0,0,4.107415,0,0),
(75352,6,-3946.361328,765.252258,4.755091,0,0,0,0,0,0,0,0,0,4.485973,0,0),
(75352,7,-3947.103760,752.585754,4.527285,0,0,0,0,0,0,0,0,0,5.209317,0,0),
(75352,8,-3938.492188,741.541992,4.923335,0,0,0,0,0,0,0,0,0,5.867471,0,0),
(75352,9,-3923.521973,738.477783,6.662686,0,0,0,0,0,0,0,0,0,0.005260,0,0),
(75352,10,-3906.497559,742.439392,7.166963,0,0,0,0,0,0,0,0,0,0.665780,0,0),
(75352,11,-3901.226074,748.821777,8.328042,0,0,0,0,0,0,0,0,0,1.404054,0,0),
-- 2nd
(75353,1,-3994.236328,691.535278,9.376336,0,0,0,0,0,0,0,0,0,5.358952,0,0),
(75353,2,-3984.864746,685.254211,9.503683,0,0,0,0,0,0,0,0,0,5.743454,0,0),
(75353,3,-3971.007568,679.168579,9.913228,0,0,0,0,0,0,0,0,0,5.616220,0,0),
(75353,4,-3963.145020,672.598938,11.477011,0,0,0,0,0,0,0,0,0,6.236685,0,0),
(75353,5,-3943.494385,683.614929,5.577957,0,0,0,0,0,0,0,0,0,0.554327,0,0),
(75353,6,-3939.326172,697.092712,5.217186,0,0,0,0,0,0,0,0,0,1.641318,0,0),
(75353,7,-3944.537354,713.231201,4.663273,0,0,0,0,0,0,0,0,0,2.169891,0,0),
(75353,8,-3952.505615,723.149597,3.833241,0,0,0,0,0,0,0,0,0,2.750301,0,0),
(75353,9,-3967.076904,723.138855,2.991571,0,0,0,0,0,0,0,0,0,3.169703,0,0),
(75353,10,-3985.600586,716.236511,3.709020,0,0,0,0,0,0,0,0,0,3.629162,0,0),
(75353,11,-3996.525635,707.413147,6.215409,0,0,0,0,0,0,0,0,0,4.166374,0,0),
(75353,12,-4001.249268,701.494812,8.430305,0,0,0,0,0,0,0,0,0,4.819243,0,0),
-- 3rd
(75354,1,-4004.961426,1007.176270,18.269880,0,0,0,0,0,0,0,0,0,5.189478,0,0),
(75354,2,-4004.137939,995.783020,16.177511,0,0,0,0,0,0,0,0,0,4.160637,0,0),
(75354,3,-4014.943359,984.694946,16.255013,0,0,0,0,0,0,0,0,0,3.530751,0,0),
(75354,4,-4026.220947,983.226074,15.566891,0,0,0,0,0,0,0,0,0,2.840386,0,0),
(75354,5,-4035.646484,989.044495,17.611452,0,0,0,0,0,0,0,0,0,2.033782,0,0),
(75354,6,-4038.516602,999.763184,19.333509,0,0,0,0,0,0,0,0,0,1.415673,0,0),
(75354,7,-4034.070068,1011.852234,21.446337,0,0,0,0,0,0,0,0,0,0.598858,0,0),
(75354,8,-4026.858154,1016.735352,21.278816,0,0,0,0,0,0,0,0,0,6.183887,0,0),
(75354,9,-4015.604492,1015.202393,20.622528,0,0,0,0,0,0,0,0,0,5.743286,0,0),
-- 4th
(75355,1,-4145.916992,949.874146,27.115282,0,0,0,0,0,0,0,0,0,5.982826,0,0),
(75355,2,-4134.008789,945.022522,25.318916,0,0,0,0,0,0,0,0,0,5.183882,0,0),
(75355,3,-4129.109863,935.330017,24.315149,0,0,0,0,0,0,0,0,0,4.904283,0,0),
(75355,4,-4129.107422,926.534607,23.992701,0,0,0,0,0,0,0,0,0,4.351364,0,0),
(75355,5,-4134.445313,921.895081,27.265911,0,0,0,0,0,0,0,0,0,3.763103,0,0),
(75355,6,-4126.487793,929.581970,23.012066,0,0,0,0,0,0,0,0,0,1.260824,0,0),
(75355,7,-4133.128418,942.766479,25.324959,0,0,0,0,0,0,0,0,0,2.074497,0,0),
(75355,8,-4142.978516,951.705261,26.571375,0,0,0,0,0,0,0,0,0,2.514316,0,0),
(75355,9,-4158.036621,956.633606,27.684547,0,0,0,0,0,0,0,0,0,2.844184,0,0),
-- 5th
(75356,1,-4077.659668,911.248047,8.745347,0,0,0,0,0,0,0,0,0,1.313731,0,0),
(75356,2,-4072.423096,921.078552,7.396504,0,0,0,0,0,0,0,0,0,0.533836,0,0),
(75356,3,-4063.715820,925.343750,7.550871,0,0,0,0,0,0,0,0,0,6.154930,0,0),
(75356,4,-4053.741699,925.621338,7.512374,0,0,0,0,0,0,0,0,0,5.239161,0,0),
(75356,5,-4048.327881,914.282837,7.411765,0,0,0,0,0,0,0,0,0,4.643835,0,0),
(75356,6,-4050.913574,902.690369,5.564070,0,0,0,0,0,0,0,0,0,4.072068,0,0),
(75356,7,-4062.273193,896.366394,3.967313,0,0,0,0,0,0,0,0,0,3.157031,0,0),
(75356,8,-4070.573730,896.452026,4.996881,0,0,0,0,0,0,0,0,0,2.615106,0,0),
-- 6th
(75357,1,-4116.666992,750.176025,0.634613,0,0,0,0,0,0,0,0,0,5.390223,0,0),
(75357,2,-4108.635254,742.589294,0.250232,0,0,0,0,0,0,0,0,0,5.890517,0,0),
(75357,3,-4100.495117,741.494080,0.136818,0,0,0,0,0,0,0,0,0,0.142183,0,0),
(75357,4,-4088.615723,745.391479,0.468336,0,0,0,0,0,0,0,0,0,0.778356,0,0),
(75357,5,-4083.189453,753.265442,0.617459,0,0,0,0,0,0,0,0,0,1.264518,0,0),
(75357,6,-4086.691650,766.458191,0.596820,0,0,0,0,0,0,0,0,0,2.115104,0,0),
(75357,7,-4093.978516,773.557312,0.678104,0,0,0,0,0,0,0,0,0,2.758345,0,0),
(75357,8,-4104.764648,776.935852,0.962789,0,0,0,0,0,0,0,0,0,3.443213,0,0),
(75357,9,-4114.896973,771.186890,1.641620,0,0,0,0,0,0,0,0,0,4.033833,0,0),
(75357,10,-4120.672852,762.441284,1.511600,0,0,0,0,0,0,0,0,0,4.684140,0,0),
-- 7th
(75358,1,-4193.712402,720.791687,18.337461,0,0,0,0,0,0,0,0,0,5.538062,0,0),
(75358,2,-4184.313965,709.819763,17.485857,0,0,0,0,0,0,0,0,0,5.021275,0,0),
(75358,3,-4182.120605,697.921326,16.060492,0,0,0,0,0,0,0,0,0,4.596380,0,0),
(75358,4,-4186.657227,686.981567,17.081997,0,0,0,0,0,0,0,0,0,3.887174,0,0),
(75358,5,-4196.630859,680.744446,20.626146,0,0,0,0,0,0,0,0,0,3.368029,0,0),
(75358,6,-4206.182129,685.685608,24.661261,0,0,0,0,0,0,0,0,0,2.437332,0,0),
(75358,7,-4198.161621,683.576172,21.321445,0,0,0,0,0,0,0,0,0,6.265364,0,0),
(75358,8,-4188.718262,687.417236,17.924179,0,0,0,0,0,0,0,0,0,0.819412,0,0),
(75358,9,-4183.374023,695.413757,16.617136,0,0,0,0,0,0,0,0,0,1.369976,0,0),
(75358,10,-4183.404785,706.373779,17.120741,0,0,0,0,0,0,0,0,0,1.883627,0,0),
(75358,11,-4190.062988,717.482178,18.076244,0,0,0,0,0,0,0,0,0,2.331304,0,0),
(75358,12,-4200.055664,723.693237,21.098564,0,0,0,0,0,0,0,0,0,3.079003,0,0),
(75358,13,-4205.029297,722.858582,25.918339,0,0,0,0,0,0,0,0,0,3.757010,0,0);

-- Shadow serpent (these snakes should have randomovement)
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE guid IN (81698, 81697, 81694, 81693, 81695, 81669, 81692, 81684, 81691, 81685, 81686, 81690, 81689, 81688, 81687, 81686, 81683, 81670, 81671, 81673, 81672, 81682, 81681, 81680, 81674, 81679, 81678, 81675, 81676, 81677, 81688);
-- Enraged Air Spirit -- we must force this model
UPDATE creature SET modelid = 14515 WHERE id = 21060;
-- Enraged Air Spirit #1-4 correct spawn point + movement
UPDATE creature SET position_x = -4789.080, position_y = 1083.95, position_z = -9.39, orientation = 3.78, spawndist = 10, MovementType = 1 WHERE guid = 74007;
UPDATE creature SET position_x = -4613.552, position_y = 1016.60, position_z = -4.01, orientation = 0.116, spawndist = 10, MovementType = 1 WHERE guid = 74006;
UPDATE creature SET position_x = -4687.0498, position_y = 1046.799, position_z = -8.40, orientation = 2.35, spawndist = 10, MovementType = 1 WHERE guid = 74004;
UPDATE creature SET position_x = -3937.575, position_y = 812.379, position_z = 8.235, orientation = 2.29, spawndist = 10, MovementType = 1 WHERE guid = 73993;
UPDATE creature SET position_x = -3956.441, position_y = 983.369, position_z = 17.09689, orientation = 5.25, spawndist = 10, MovementType = 1 WHERE guid = 73995;
-- Enraged Air Spirit #5-9 movement
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE guid IN (73994, 73998, 73999, 74000, 74002, 74003, 74005, 74008);

-- Lothros - wps
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 76716;
DELETE FROM creature_movement WHERE id = 76716;
UPDATE creature_template SET MovementType= 2 WHERE entry = 21928; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 21928;
INSERT INTO creature_movement_template (entry, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(21928,1,-3786.700439,2670.047852,101.233650,0,0,0,0,0,0,0,0,0,1.514116,0,0),
(21928,2,-3780.578613,2686.936523,101.001801,0,0,0,0,0,0,0,0,0,1.048375,0,0),
(21928,3,-3787.510498,2672.691162,101.088631,0,0,0,0,0,0,0,0,0,3.508246,0,0),
(21928,4,-3798.998779,2670.994873,101.330261,0,0,0,0,0,0,0,0,0,2.740913,0,0),
(21928,5,-3805.087402,2675.995850,100.936653,0,0,0,0,0,0,0,0,0,2.075680,0,0),
(21928,6,-3821.128418,2697.374756,101.103279,0,0,0,0,0,0,0,0,0,2.210769,0,0),
(21928,7,-3802.293701,2672.349365,101.076706,0,0,0,0,0,0,0,0,0,5.718354,0,0),
(21928,8,-3793.764404,2669.047119,101.633789,0,0,0,0,0,0,0,0,0,0.296747,0,0),
(21928,9,-3788.448975,2672.201660,101.092300,0,0,0,0,0,0,0,0,0,0.985541,0,0),
(21928,10,-3778.921143,2687.798340,101.164192,0,0,0,0,0,0,0,0,0,1.060155,0,0),
(21928,11,-3785.835693,2674.815430,100.917160,0,0,0,0,0,0,0,0,0,4.751529,0,0),
(21928,12,-3783.462646,2669.849121,101.156105,0,0,0,0,0,0,0,0,0,6.024656,0,0),
(21928,13,-3770.293457,2669.094971,100.839966,0,0,0,0,0,0,0,0,0,0.260617,0,0),
(21928,14,-3718.104248,2675.628906,105.860931,0,0,0,0,0,0,0,0,0,0.105894,0,0),
(21928,15,-3779.266113,2669.858887,101.104897,0,0,0,0,0,0,0,0,0,3.200363,0,0);

-- Painmistress Gabrissa - wp + script
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74614;
DELETE FROM creature_movement WHERE id = 74614;
UPDATE creature_template SET MovementType = 2 WHERE entry = 21309; -- now move her to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 21309;
INSERT INTO creature_movement_template (entry, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(21309,1,-3697.104736,2669.765625,107.185753,0,0,0,0,0,0,0,0,0,2.153767,0,0),
(21309,2,-3697.675781,2673.336670,108.568832,0,0,0,0,0,0,0,0,0,0.980382,0,0),
(21309,3,-3692.218994,2678.736816,108.660309,0,0,0,0,0,0,0,0,0,1.023062,0,0),
(21309,4,-3690.037354,2682.786621,108.752022,0,0,0,0,0,0,0,0,0,1.554778,0,0),
(21309,5,-3692.893311,2684.178711,108.485092,6000,2130901,0,0,0,0,0,0,0,3.607024,0,0),
(21309,6,-3690.915039,2682.034424,108.743759,0,0,0,0,0,0,0,0,0,4.618616,0,0),
(21309,7,-3694.069092,2677.514160,108.536835,0,0,0,0,0,0,0,0,0,3.921187,0,0),
(21309,8,-3697.527344,2673.769775,108.581001,0,0,0,0,0,0,0,0,0,4.702657,0,0),
(21309,9,-3693.464844,2668.439697,107.173592,20000,0,0,0,0,0,0,0,0,3.375326,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2130901; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES
(2130901,1,15,36578,0,21310,10,0x01,0,0,0,0,0,0,0,0,'cast 36578 on buddy'),
(2130901,5,15,6273,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Illidari Shocktrooper #6-9 wps
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (70903, 70909, 70920, 70921);
DELETE FROM creature_movement WHERE id IN (70903, 70909, 70920, 70921);
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
-- #6
(70920,1,-3653.214600,2547.382324,77.425644,0,0,0,0,0,0,0,0,0,4.072011,0,0),
(70920,2,-3689.224854,2480.104736,78.394440,0,0,0,0,0,0,0,0,0,3.881945,0,0),
(70920,3,-3710.703857,2461.874756,78.845146,0,0,0,0,0,0,0,0,0,3.515165,0,0),
(70920,4,-3759.808350,2438.646729,79.755295,0,0,0,0,0,0,0,0,0,3.667533,0,0),
(70920,5,-3711.352295,2460.171387,79.157326,0,0,0,0,0,0,0,0,0,0.749779,0,0),
(70920,6,-3682.794678,2495.413086,77.633537,0,0,0,0,0,0,0,0,0,1.090642,0,0),
(70920,7,-3640.421143,2577.901123,74.399986,0,0,0,0,0,0,0,0,0,1.291702,0,0),
-- #7 
(70909,1,-3940.025391,2597.021729,101.133514,0,0,0,0,0,0,0,0,0,4.544119,0,0),
(70909,2,-3934.519043,2573.899170,108.655052,0,0,0,0,0,0,0,0,0,5.056976,0,0),
(70909,3,-3930.360596,2559.306641,113.246208,0,0,0,0,0,0,0,0,0,4.597525,0,0),
(70909,4,-3934.197021,2550.195068,118.959198,0,0,0,0,0,0,0,0,0,3.842760,0,0),
(70909,5,-3945.462158,2540.710938,131.237228,0,0,0,0,0,0,0,0,0,3.533314,0,0),
(70909,6,-3952.071289,2539.829346,137.458939,0,0,0,0,0,0,0,0,0,0.014728,0,0),
(70909,7,-3936.225098,2545.680664,122.041672,0,0,0,0,0,0,0,0,0,0.685458,0,0),
(70909,8,-3930.905273,2552.027100,116.352509,0,0,0,0,0,0,0,0,0,1.261941,0,0),
(70909,9,-3930.279785,2563.027344,112.200058,0,0,0,0,0,0,0,0,0,1.652284,0,0),
(70909,10,-3935.109375,2582.167969,105.921532,0,0,0,0,0,0,0,0,0,1.828999,0,0),
(70909,11,-3935.765625,2594.389648,100.969940,0,0,0,0,0,0,0,0,0,1.605160,0,0),
(70909,12,-3917.198486,2646.066650,106.075356,0,0,0,0,0,0,0,0,0,1.255658,0,0),
-- #8
(70903,1,-3914.556152,2523.775879,95.302994,0,0,0,0,0,0,0,0,0,5.272181,0,0),
(70903,2,-3880.654785,2474.940186,96.118935,0,0,0,0,0,0,0,0,0,5.653098,0,0),
(70903,3,-3846.984863,2452.687256,93.763901,0,0,0,0,0,0,0,0,0,5.865151,0,0),
(70903,4,-3810.426025,2442.331787,87.714188,0,0,0,0,0,0,0,0,0,6.088985,0,0),
(70903,5,-3783.034668,2433.889404,82.224831,0,0,0,0,0,0,0,0,0,0.037488,0,0),
(70903,6,-3780.927734,2426.298096,83.175140,0,0,0,0,0,0,0,0,0,3.775983,0,0),
(70903,7,-3792.464355,2427.673584,86.160896,0,0,0,0,0,0,0,0,0,2.441102,0,0),
(70903,8,-3845.470215,2456.936768,92.821693,0,0,0,0,0,0,0,0,0,2.680648,0,0),
(70903,9,-3883.390137,2490.403076,93.199661,0,0,0,0,0,0,0,0,0,2.327301,0,0),
-- #9
(70921,1,-4051.079590,2606.826660,128.525238,0,0,0,0,0,0,0,0,0,1.245089,0,0),
(70921,2,-4037.981445,2666.407471,129.186340,0,0,0,0,0,0,0,0,0,1.688836,0,0),
(70921,3,-4050.585693,2604.226807,128.349167,0,0,0,0,0,0,0,0,0,4.469147,0,0),
(70921,4,-4040.678467,2535.126709,132.812012,0,0,0,0,0,0,0,0,0,4.810795,0,0),
(70921,5,-4046.106934,2483.007324,137.362762,0,0,0,0,0,0,0,0,0,3.903666,0,0),
(70921,6,-4076.370361,2460.694824,151.729767,0,0,0,0,0,0,0,0,0,4.080380,0,0),
(70921,7,-4053.843018,2480.416260,139.002365,0,0,0,0,0,0,0,0,0,1.119428,0,0),
(70921,8,-4042.954834,2534.376465,132.939468,0,0,0,0,0,0,0,0,0,1.771314,0,0),
(70921,9,-4059.827148,2577.583252,130.672440,0,0,0,0,0,0,0,0,0,1.635440,0,0);

-- Illidari Painlasher - wp + script
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 70876;
DELETE FROM creature_movement WHERE id = 70876;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(70876,1,-3737.529297,2595.209229,90.104446,0,0,0,0,0,0,0,0,0,5.117114,0,0),
(70876,2,-3728.916992,2585.297852,90.156754,0,0,0,0,0,0,0,0,0,5.037790,0,0),
(70876,3,-3729.559082,2574.273193,90.632072,0,0,0,0,0,0,0,0,0,3.979106,0,0),
(70876,4,-3737.598389,2568.931396,90.377518,10000,0,0,0,0,0,0,0,0,2.500987,0,0),
(70876,5,-3730.151367,2573.409912,90.651024,0,0,0,0,0,0,0,0,0,0.871281,0,0),
(70876,6,-3727.395996,2584.303467,90.100456,0,0,0,0,0,0,0,0,0,1.966911,0,0),
(70876,7,-3746.671143,2603.795654,90.515602,0,0,0,0,0,0,0,0,0,2.541037,0,0),
(70876,8,-3759.844482,2611.470459,92.793205,0,0,0,0,0,0,0,0,0,3.689015,0,0),
(70876,9,-3788.957275,2591.316162,90.114799,15000,1980001,0,0,0,0,0,0,0,2.560852,0,0),
(70876,10,-3778.006348,2596.096191,90.100937,0,0,0,0,0,0,0,0,0,0.076637,0,0),
(70876,11,-3760.853760,2612.292725,93.088280,0,0,0,0,0,0,0,0,0,0.283982,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1980001; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES
(1980001,1,15,34765,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1980001,7,15,34892,0,20286,20,7,0,0,0,0,0,0,0,0,'cast 34892 on b->b'),
(1980001,12,15,6273,0,20286,20,7,0,0,0,0,0,0,0,0,''); -- force to stop chanelling

-- Illidari Dreadbringer #1-3 wp + link
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (70870, 70871, 70872);
DELETE FROM creature_movement WHERE id IN (70870, 70871, 70872);
-- #1
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(70871,1,-3732.593994,2599.500000,90.068466,3000,0,0,0,0,0,0,0,0,0.446971,0,0),
(70871,2,-3782.446289,2596.903320,90.119186,0,0,0,0,0,0,0,0,0,2.459161,0,0),
(70871,3,-3790.672119,2605.613525,90.125465,0,0,0,0,0,0,0,0,0,1.697889,0,0),
(70871,4,-3787.228760,2624.135986,91.589645,0,0,0,0,0,0,0,0,0,1.920223,0,0),
(70871,5,-3790.944824,2628.130859,91.978279,0,0,0,0,0,0,0,0,0,3.146230,0,0),
(70871,6,-3801.020996,2627.020996,91.760017,0,0,0,0,0,0,0,0,0,4.200234,0,0),
(70871,7,-3803.374268,2621.689941,91.472015,0,0,0,0,0,0,0,0,0,4.713098,0,0),
(70871,8,-3802.696777,2607.408447,90.634605,0,0,0,0,0,0,0,0,0,4.083991,0,0),
(70871,9,-3813.331543,2595.124512,90.194763,0,0,0,0,0,0,0,0,0,3.232624,0,0),
(70871,10,-3853.654297,2582.852539,92.503708,3000,0,0,0,0,0,0,0,0,3.564062,0,0),
(70871,11,-3810.405273,2594.670654,90.178856,0,0,0,0,0,0,0,0,0,0.891353,0,0),
(70871,12,-3800.036621,2608.321777,90.527672,0,0,0,0,0,0,0,0,0,1.493753,0,0),
(70871,13,-3802.140869,2621.734375,91.362854,0,0,0,0,0,0,0,0,0,1.295048,0,0),
(70871,14,-3799.168945,2627.830078,91.831963,0,0,0,0,0,0,0,0,0,0.125589,0,0),
(70871,15,-3790.679443,2627.204834,91.869064,0,0,0,0,0,0,0,0,0,5.459229,0,0),
(70871,16,-3788.525146,2621.920898,91.261169,0,0,0,0,0,0,0,0,0,4.717032,0,0),
(70871,17,-3790.757324,2606.927979,90.146004,0,0,0,0,0,0,0,0,0,5.070465,0,0),
(70871,18,-3781.631104,2596.166504,90.118759,0,0,0,0,0,0,0,0,0,6.246196,0,0);
DELETE FROM creature_linking WHERE guid = 70875; 
INSERT INTO creature_linking (guid, master_guid, flag) VALUES    
(70875, 70871, 518); -- Illidari Painlasher linked to his master
-- #2
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(70872,1,-4044.479736,2561.127930,130.039322,0,0,0,0,0,0,0,0,0,4.438528,0,0),
(70872,2,-4056.465332,2545.776611,133.279190,0,0,0,0,0,0,0,0,0,3.405499,0,0),
(70872,3,-4087.288818,2535.060791,138.064438,0,0,0,0,0,0,0,0,0,3.267190,0,0),
(70872,4,-4058.656250,2542.461670,133.479340,0,0,0,0,0,0,0,0,0,0.549712,0,0),
(70872,5,-4043.886230,2565.814453,129.139160,0,0,0,0,0,0,0,0,0,1.454491,0,0),
(70872,6,-4040.179443,2621.361816,122.021683,0,0,0,0,0,0,0,0,0,1.126980,0,0),
(70872,7,-4025.577148,2654.607666,124.423172,0,0,0,0,0,0,0,0,0,0.035278,0,0),
(70872,8,-3997.359619,2654.761475,117.894440,0,0,0,0,0,0,0,0,0,5.866865,0,0),
(70872,9,-3950.676025,2630.687744,106.634521,0,0,0,0,0,0,0,0,0,5.936928,0,0),
(70872,10,-3993.978027,2665.684082,120.619942,0,0,0,0,0,0,0,0,0,3.375743,0,0),
(70872,11,-4027.731689,2655.131104,124.641533,0,0,0,0,0,0,0,0,0,4.130569,0,0),
(70872,12,-4036.945313,2608.362793,122.373222,0,0,0,0,0,0,0,0,0,4.676416,0,0);
DELETE FROM creature_linking WHERE guid = 70873; 
INSERT INTO creature_linking (guid, master_guid, flag) VALUES    
(70873, 70872, 518); -- Illidari Painlasher linked to his master
-- #3
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(70870,1,-3952.244385,2485.818359,114.180908,0,0,0,0,0,0,0,0,0,0.140745,0,0),
(70870,2,-3924.897461,2500.703613,101.543083,0,0,0,0,0,0,0,0,0,0.792625,0,0),
(70870,3,-3916.159180,2504.248291,98.367897,0,0,0,0,0,0,0,0,0,0.060634,0,0),
(70870,4,-3906.906494,2500.291260,96.970192,0,0,0,0,0,0,0,0,0,5.386422,0,0),
(70870,5,-3901.453613,2487.274414,98.430161,0,0,0,0,0,0,0,0,0,4.567256,0,0),
(70870,6,-3905.099365,2482.252197,100.842461,0,0,0,0,0,0,0,0,0,3.577658,0,0),
(70870,7,-3943.683838,2483.373047,110.862122,0,0,0,0,0,0,0,0,0,2.979970,0,0),
(70870,8,-4004.552979,2497.108887,126.598358,0,0,0,0,0,0,0,0,0,2.885722,0,0),
(70870,9,-4030.410156,2515.167236,131.612167,0,0,0,0,0,0,0,0,0,2.375213,0,0),
(70870,10,-4055.894287,2538.346680,133.322693,0,0,0,0,0,0,0,0,0,3.169374,0,0),
(70870,11,-4086.540039,2536.134277,137.951935,0,0,0,0,0,0,0,0,0,3.292371,0,0),
(70870,12,-4061.048096,2538.101807,134.193420,0,0,0,0,0,0,0,0,0,5.660350,0,0),
(70870,13,-4016.499756,2508.470459,129.046890,0,0,0,0,0,0,0,0,0,5.585739,0,0),
(70870,14,-3998.193359,2496.474365,126.278267,0,0,0,0,0,0,0,0,0,6.045189,0,0),
(70870,15,-3975.233154,2491.187744,120.310799,0,0,0,0,0,0,0,0,0,6.123727,0,0);
DELETE FROM creature_linking WHERE guid = 70874; 
INSERT INTO creature_linking (guid, master_guid, flag) VALUES    
(70874, 70870, 518); -- Illidari Painlasher linked to his master

-- Eclipsion Spellbinder - UPDATES
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (77144, 77145, 77150, 77151, 77152, 77153); -- they all must 'do' movement script
DELETE FROM creature_movement WHERE id IN (77144, 77145, 77150, 77151, 77152, 77153);
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(77144,1,-4424.6,1307.1,101.486,22000,2201701,0,0,0,0,0,0,0,0.366519,0,0), -- TO DO: Spell stucks on npc - should be removed on aggro
(77144,2,-4424.6,1307.1,101.486,1000,0,0,0,0,0,0,0,0,0.366519,0,0),
(77145,1,-4415.51,1310.73,97.1105,22000,2201701,0,0,0,0,0,0,0,3.35103,0,0), -- TO DO: Spell stucks on npc - should be removed on aggro
(77145,2,-4415.51,1310.73,97.1105,1000,0,0,0,0,0,0,0,0,3.35103,0,0),
(77150,1,-4378.14,1362.2,142.54,22000,2201701,0,0,0,0,0,0,0,3.35103,0,0), -- TO DO: Spell stucks on npc - should be removed on aggro
(77150,2,-4378.14,1362.2,142.54,1000,0,0,0,0,0,0,0,0,3.35103,0,0),
(77151,1,-4385.41,1361.22,141.637,22000,2201701,0,0,0,0,0,0,0,0.191986,0,0), -- TO DO: Spell stucks on npc - should be removed on aggro
(77151,2,-4385.41,1361.22,141.637,1000,0,0,0,0,0,0,0,0,0.191986,0,0),
(77152,1,-4244.6,1375.73,140.602,22000,2201701,0,0,0,0,0,0,0,2.84489,0,0), -- TO DO: Spell stucks on npc - should be removed on aggro
(77152,2,-4244.6,1375.73,140.602,1000,0,0,0,0,0,0,0,0,2.84489,0,0),
(77153,1,-4255.23,1377.49,142.328,22000,2201701,0,0,0,0,0,0,0,0.034907,0,0), -- TO DO: Spell stucks on npc - should be removed on aggro
(77153,2,-4255.23,1377.49,142.328,1000,0,0,0,0,0,0,0,0,0.034907,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2201701; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES
(2201701,1,15,35190,0,20431,20,0x01,0,0,0,0,0,0,0,0,'cast 35190 on buddy'),
(2201701,20,15,6273,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Eclipsion Cavalier should talk to 22016 on his wps
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2131401, 2131402); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES
(2131401,0,31,22016,10,0,0,0,-5000,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(2131401,2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2131401,4,1,66,0,22016,10,0x04,0,0,0,0,0,0,0,0,'force 22016 to: emote'),
(2131402,0,31,22016,10,0,0,0,-5000,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(2131402,2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2131402,4,0,0,0,22016,10,0x04,2000005465,0,0,0,0,0,0,0,'force 22016 to: say');
DELETE FROM db_script_string WHERE entry = 2000005465;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(2000005465,'As you command, Sir!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
-- Eclipsion SpellBinder Movements
-- #1
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (77155, 77156, 77163, 77166, 77168, 77169);
DELETE FROM creature_movement WHERE id IN (77155, 77156, 77163, 77166, 77168, 77169);
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(77168,1,-4319.623047,1365.248169,145.386246,0,0,0,0,0,0,0,0,0,3.616654,0,0),
(77168,2,-4325.746094,1360.552002,149.297302,0,0,0,0,0,0,0,0,0,1.368058,0,0),
(77168,3,-4319.428711,1365.959351,145.404114,0,0,0,0,0,0,0,0,0,0.309341,0,0),
(77168,4,-4292.825195,1378.563477,143.864914,0,0,0,0,0,0,0,0,0,6.059241,0,0),
(77168,5,-4287.133789,1375.838745,144.390427,6000,2131401,0,0,0,0,0,0,0,4.794758,0,0),
(77168,6,-4269.625488,1387.946045,139.177643,0,0,0,0,0,0,0,0,0,0.217457,0,0),
(77168,7,-4224.543457,1391.082520,130.292709,0,0,0,0,0,0,0,0,0,6.110296,0,0),
(77168,8,-4224.317383,1384.656860,131.449753,6000,2131402,0,0,0,0,0,0,0,4.244979,0,0),
(77168,9,-4230.463379,1390.208984,131.438187,0,0,0,0,0,0,0,0,0,3.053531,0,0),
(77168,10,-4272.533203,1386.154053,140.085815,0,0,0,0,0,0,0,0,0,3.536551,0,0),
(77168,11,-4303.329102,1372.011963,143.262070,6000,2131401,0,0,0,0,0,0,0,4.627473,0,0),
-- #2
(77169,1,-4293.108398,1390.854980,142.392517,0,0,0,0,0,0,0,0,0,0.331473,0,0),
(77169,2,-4284.386719,1398.060425,140.787720,6000,2131402,0,0,0,0,0,0,0,2.690025,0,0),
(77169,3,-4291.496094,1391.974976,142.119171,0,0,0,0,0,0,0,0,0,3.529627,0,0),
(77169,4,-4310.055664,1389.182007,144.302048,0,0,0,0,0,0,0,0,0,2.953145,0,0),
(77169,5,-4336.779785,1397.294556,143.542603,0,0,0,0,0,0,0,0,0,2.902092,0,0),
(77169,6,-4354.770508,1401.207520,143.639862,0,0,0,0,0,0,0,0,0,3.183274,0,0),
(77169,7,-4370.950684,1400.317627,142.418869,6000,2131401,0,0,0,0,0,0,0,1.688660,0,0),
(77169,8,-4405.215332,1392.640259,139.522064,0,0,0,0,0,0,0,0,0,0.538052,0,0),
(77169,9,-4394.709961,1393.023071,140.782089,6000,2131401,0,0,0,0,0,0,0,1.645463,0,0),
(77169,10,-4379.005371,1398.652710,143.094757,0,0,0,0,0,0,0,0,0,0.178339,0,0),
(77169,11,-4355.493164,1402.966919,144.138718,0,0,0,0,0,0,0,0,0,6.104169,0,0),
(77169,12,-4318.830566,1390.830566,144.149673,0,0,0,0,0,0,0,0,0,6.210196,0,0),
(77169,13,-4315.453125,1390.271973,144.152298,6000,2131401,0,0,0,0,0,0,0,1.438899,0,0),
-- #3
(77163,1,-4479.719238,1369.122070,134.299149,0,0,0,0,0,0,0,0,0,0.961476,0,0),
(77163,2,-4444.381348,1400.766602,151.247910,6000,2131401,0,0,0,0,0,0,0,1.389519,0,0),
(77163,3,-4420.499023,1396.927612,142.389084,6000,2131402,0,0,0,0,0,0,0,1.237153,0,0),
(77163,4,-4448.609375,1399.910156,150.859436,0,0,0,0,0,0,0,0,0,3.514021,0,0),
(77163,5,-4456.171387,1395.574707,148.787292,0,0,0,0,0,0,0,0,0,3.885606,0,0),
(77163,6,-4476.394043,1380.213989,140.013184,6000,2131401,0,0,0,0,0,0,0,3.146546,0,0),
(77163,7,-4482.766113,1365.518921,132.793427,0,0,0,0,0,0,0,0,0,3.933514,0,0),
(77163,8,-4504.515137,1354.352051,130.699829,0,0,0,0,0,0,0,0,0,0.454201,0,0),
(77163,9,-4492.530762,1359.598877,131.178696,6000,2131401,0,0,0,0,0,0,0,1.981016,0,0),
-- #4
(77166,1,-4366.302246,1363.912231,144.343979,0,0,0,0,0,0,0,0,0,6.255156,0,0),
(77166,2,-4353.749512,1363.001831,147.709824,6000,2131401,0,0,0,0,0,0,0,5.402997,0,0),
(77166,3,-4368.063477,1364.860596,143.700882,0,0,0,0,0,0,0,0,0,2.595201,0,0),
(77166,4,-4379.969727,1371.727783,140.601105,0,0,0,0,0,0,0,0,0,3.035024,0,0),
(77166,5,-4399.112305,1363.553101,139.758347,0,0,0,0,0,0,0,0,0,3.610721,0,0),
(77166,6,-4422.336914,1350.777832,136.664581,6000,2131401,0,0,0,0,0,0,0,5.189367,0,0),
(77166,7,-4463.488281,1337.214966,127.433380,6000,2131401,0,0,0,0,0,0,0,5.441482,0,0),
(77166,8,-4452.857910,1342.135864,130.199112,0,0,0,0,0,0,0,0,0,0.119620,0,0),
(77166,9,-4435.492188,1345.282471,134.098724,6000,2131401,0,0,0,0,0,0,0,4.886989,0,0),
(77166,10,-4403.063965,1359.997803,139.416397,6000,2131402,0,0,0,0,0,0,0,4.952181,0,0),
(77166,11,-4386.365723,1370.661011,140.452271,0,0,0,0,0,0,0,0,0,0.173020,0,0),
(77166,12,-4378.253418,1370.986572,140.834152,0,0,0,0,0,0,0,0,0,5.823177,0,0),
(77166,13,-4371.203613,1366.056396,142.913300,0,0,0,0,0,0,0,0,0,5.914286,0,0),
-- #5
(77155,1,-4435.782227,1277.305908,71.918396,0,0,0,0,0,0,0,0,0,0.643684,0,0),
(77155,2,-4425.734375,1287.158813,75.624634,0,0,0,0,0,0,0,0,0,1.246085,0,0),
(77155,3,-4426.023926,1291.033081,77.052834,6000,2131401,0,0,0,0,0,0,0,1.879902,0,0), 
(77155,4,-4433.763184,1280.071411,72.847511,0,0,0,0,0,0,0,0,0,3.682392,0,0),
(77155,5,-4444.877441,1263.175293,65.987534,0,0,0,0,0,0,0,0,0,3.687106,0,0),
(77155,6,-4453.534668,1258.360840,62.005119,6000,2131401,0,0,0,0,0,0,0,3.589717,0,0),
(77155,7,-4460.311523,1255.597534,60.596027,0,0,0,0,0,0,0,0,0,3.866177,0,0),
(77155,8,-4476.571777,1244.532471,54.049351,6000,2131401,0,0,0,0,0,0,0,2.481520,0,0),
(77155,9,-4454.830078,1251.420898,61.333946,0,0,0,0,0,0,0,0,0,0.953135,0,0),
(77155,10,-4453.600098,1257.671509,61.858692,0,0,0,0,0,0,0,0,0,0.942479,0,0),
(77155,11,-4451.542969,1266.110352,65.678833,0,0,0,0,0,0,0,0,0,1.138043,0,0),
(77155,12,-4449.164063,1272.202515,68.135231,6000,2131401,0,0,0,0,0,0,0,2.389183,0,0),
-- #6
(77156,1,-4435.541504,1257.879028,70.273209,6000,2131401,0,0,0,0,0,0,0,5.664526,0,0),
(77156,2,-4427.878418,1268.915649,72.921700,0,0,0,0,0,0,0,0,0,0.810760,0,0),
(77156,3,-4421.123047,1275.421387,77.958801,0,0,0,0,0,0,0,0,0,0.692950,0,0),
(77156,4,-4407.676758,1286.834595,82.638428,0,0,0,0,0,0,0,0,0,0.645826,0,0),
(77156,5,-4394.122559,1298.676880,85.746841,6000,2131402,0,0,0,0,0,0,0,5.146162,0,0),
(77156,6,-4415.770996,1280.492798,79.039574,6000,2131401,0,0,0,0,0,0,0,5.355859,0,0),
(77156,7,-4429.200195,1269.880127,72.557671,0,0,0,0,0,0,0,0,0,3.854176,0,0),
(77156,8,-4444.662598,1248.836060,64.078476,0,0,0,0,0,0,0,0,0,4.215459,0,0),
(77156,9,-4458.437012,1227.237427,54.253117,6000,2131401,0,0,0,0,0,0,0,5.523142,0,0),
(77156,10,-4447.882813,1241.618652,62.533665,0,0,0,0,0,0,0,0,0,0.648961,0,0);

-- Val'zareq the Conqueror <The Crimson Sigil>
UPDATE creature SET MovementType = 2,spawndist = 0 WHERE guid = 76770;
DELETE FROM creature_movement WHERE id = 76770;
UPDATE creature_template SET MovementType = 2 WHERE entry = 21979; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 21979;
INSERT INTO creature_movement_template (entry, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(21979,1,-4387.393066,1382.484497,140.300797,0,0,0,0,0,0,0,0,0,3.315254,0,0),
(21979,2,-4424.220703,1374.875610,132.780365,0,0,0,0,0,0,0,0,0,3.655425,0,0),
(21979,3,-4457.293945,1361.273193,130.176910,0,0,0,0,0,0,0,0,0,3.653068,0,0),
(21979,4,-4484.632813,1338.248291,124.961533,0,0,0,0,0,0,0,0,0,4.514651,0,0),
(21979,5,-4486.732910,1324.910645,123.205009,0,0,0,0,0,0,0,0,0,5.219636,0,0),
(21979,6,-4477.313477,1313.962158,120.265892,0,0,0,0,0,0,0,0,0,6.228082,0,0),
(21979,7,-4456.764160,1313.195190,114.987152,0,0,0,0,0,0,0,0,0,0.030501,0,0),
(21979,8,-4436.853027,1315.446167,106.596130,0,0,0,0,0,0,0,0,0,0.136530,0,0),
(21979,9,-4427.973145,1319.583008,102.088577,0,0,0,0,0,0,0,0,0,6.266563,0,0),
(21979,10,-4406.525391,1320.116089,93.383690,0,0,0,0,0,0,0,0,0,0.003012,0,0),
(21979,11,-4387.398438,1317.013428,85.442673,0,0,0,0,0,0,0,0,0,6.109486,0,0),
(21979,12,-4359.791016,1317.964355,83.702690,0,0,0,0,0,0,0,0,0,6.188025,0,0),
(21979,13,-4339.053711,1319.314697,77.653412,0,0,0,0,0,0,0,0,0,0.052495,0,0),
(21979,14,-4324.662109,1320.651123,75.590691,0,0,0,0,0,0,0,0,0,6.211587,0,0),
(21979,15,-4307.171387,1321.148682,68.593620,0,0,0,0,0,0,0,0,0,6.262637,0,0),
(21979,16,-4298.418457,1321.788818,64.250755,0,0,0,0,0,0,0,0,0,0.077626,0,0),
(21979,17,-4290.350098,1321.938110,62.538906,0,0,0,0,0,0,0,0,0,6.188026,0,0),
(21979,18,-4278.431152,1320.302124,57.414116,0,0,0,0,0,0,0,0,0,5.719150,0,0),
(21979,19,-4260.462402,1310.635620,51.625374,0,0,0,0,0,0,0,0,0,6.091430,0,0),
(21979,20,-4243.237793,1306.611694,54.756874,0,0,0,0,0,0,0,0,0,0.006165,0,0),
(21979,21,-4187.325684,1306.521118,56.053814,0,0,0,0,0,0,0,0,0,6.243011,0,0),
(21979,22,-4135.713867,1300.373291,54.488197,0,0,0,0,0,0,0,0,0,0.428702,0,0),
(21979,23,-4119.525879,1307.076294,53.659386,0,0,0,0,0,0,0,0,0,0.830825,0,0),
(21979,24,-4109.430664,1325.925903,61.535080,0,0,0,0,0,0,0,0,0,1.251014,0,0),
(21979,25,-4108.306152,1359.097656,73.488869,0,0,0,0,0,0,0,0,0,1.569100,0,0),
(21979,26,-4107.861328,1376.815186,79.323654,0,0,0,0,0,0,0,0,0,1.565176,0,0),
(21979,27,-4107.080566,1403.359009,84.922188,0,0,0,0,0,0,0,0,0,1.027178,0,0),
(21979,28,-4110.398438,1373.923462,78.553223,0,0,0,0,0,0,0,0,0,4.585033,0,0),
(21979,29,-4111.955078,1331.684814,63.506439,0,0,0,0,0,0,0,0,0,4.706768,0,0),
(21979,30,-4119.106934,1307.812500,53.823456,0,0,0,0,0,0,0,0,0,3.875037,0,0),
(21979,31,-4132.599121,1299.590698,54.273518,0,0,0,0,0,0,0,0,0,3.086497,0,0),
(21979,32,-4168.784180,1301.772827,56.026657,0,0,0,0,0,0,0,0,0,3.010314,0,0),
(21979,33,-4225.972168,1307.732666,55.991215,0,0,0,0,0,0,0,0,0,3.037802,0,0),
(21979,34,-4258.214355,1311.510742,51.783424,0,0,0,0,0,0,0,0,0,2.484096,0,0),
(21979,35,-4277.712402,1322.233521,57.493004,0,0,0,0,0,0,0,0,0,3.012669,0,0),
(21979,36,-4290.458984,1322.636841,62.657551,0,0,0,0,0,0,0,0,0,3.132050,0,0),
(21979,37,-4297.902344,1321.209961,64.154091,0,0,0,0,0,0,0,0,0,3.202736,0,0),
(21979,38,-4315.401367,1321.012817,72.473862,0,0,0,0,0,0,0,0,0,3.069218,0,0),
(21979,39,-4331.964844,1320.645752,77.184143,0,0,0,0,0,0,0,0,0,2.984396,0,0),
(21979,40,-4338.370117,1321.431763,77.672981,0,0,0,0,0,0,0,0,0,3.027593,0,0),
(21979,41,-4352.849121,1320.638306,82.231056,0,0,0,0,0,0,0,0,0,3.200381,0,0),
(21979,42,-4378.921875,1317.217651,84.234474,0,0,0,0,0,0,0,0,0,3.090425,0,0),
(21979,43,-4388.286621,1316.859009,85.735977,0,0,0,0,0,0,0,0,0,2.788047,0,0),
(21979,44,-4421.439453,1319.994019,99.996323,0,0,0,0,0,0,0,0,0,3.352238,0,0),
(21979,45,-4432.356934,1316.898560,103.917908,0,0,0,0,0,0,0,0,0,3.433134,0,0),
(21979,46,-4467.873535,1311.430298,118.284340,0,0,0,0,0,0,0,0,0,3.110336,0,0),
(21979,47,-4486.417969,1314.214111,122.084755,0,0,0,0,0,0,0,0,0,2.646165,0,0),
(21979,48,-4492.048340,1322.375122,123.065338,0,0,0,0,0,0,0,0,0,1.787724,0,0),
(21979,49,-4485.000488,1341.391846,125.813942,0,0,0,0,0,0,0,0,0,0.661463,0,0),
(21979,50,-4462.873535,1356.409912,129.721146,0,0,0,0,0,0,0,0,0,0.605700,0,0),
(21979,51,-4425.841797,1375.737915,132.791489,0,0,0,0,0,0,0,0,0,0.515379,0,0),
(21979,52,-4412.958008,1381.562012,135.480347,0,0,0,0,0,0,0,0,0,6.229936,0,0),
(21979,53,-4385.364258,1383.483154,140.473145,0,0,0,0,0,0,0,0,0,0.369295,0,0),
(21979,54,-4335.632813,1389.498413,143.632721,0,0,0,0,0,0,0,0,0,6.108199,0,0),
(21979,55,-4302.240723,1383.446045,143.615005,0,0,0,0,0,0,0,0,0,0.367725,0,0),
(21979,56,-4260.074219,1398.597656,135.822357,0,0,0,0,0,0,0,0,0,0.319030,0,0),
(21979,57,-4239.742676,1402.322510,131.856354,0,0,0,0,0,0,0,0,0,0.118753,0,0),
(21979,58,-4279.837891,1392.186523,139.671173,0,0,0,0,0,0,0,0,0,3.437060,0,0),
(21979,59,-4309.072266,1382.610352,144.039398,0,0,0,0,0,0,0,0,0,3.052214,0,0),
(21979,60,-4327.906250,1386.532715,143.697693,0,0,0,0,0,0,0,0,0,2.859793,0,0);
-- link all his adds to him
DELETE FROM creature_linking WHERE guid IN (70846, 70847, 70848, 70849);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES    
(70846, 76770, 518),(70847, 76770, 518),(70848, 76770, 518),(70849, 76770, 518); -- Eclipsion Blood Knight
-- Chancellor Bloodleaf
UPDATE creature SET MovementType = 2,spawndist = 0 WHERE guid = 77087;
DELETE FROM creature_movement WHERE id = 77087;
UPDATE creature_template SET MovementType = 2 WHERE entry = 22012;  -- now move her to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 22012;
INSERT INTO creature_movement_template (entry, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(22012,1,-4496.98,1307.31,124.579,15000,0,0,0,0,0,0,0,0,2.28638,0,0),
(22012,2,-4496.98,1307.31,124.579,25000,2201201,0,0,0,0,0,0,0,2.28638,0,0),
(22012,3,-4496.98,1307.31,124.579,90000,0,0,0,0,0,0,0,0,2.28638,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2201201; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES
(2201201,0,31,22011,15,0,0,0,0,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(2201201,1,0,0,0,0,0,0,2000005466,0,0,0,0,0,0,0,''),
(2201201,2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2201201,10,0,0,0,22011,15,0,2000005467,0,0,0,0,0,0,0,'force 22011 to: say text'),
(2201201,16,0,0,0,0,0,0,2000005468,0,0,0,0,0,0,0,''),
(2201201,17,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2201201,23,0,0,0,0,0,0,2000005469,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000005466 AND 2000005469;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(2000005466,'Lend us the strength of the giants of Shadowmoon, Corok. The master is a just ruler. He will be sure to take care of those that assisted in subduing the dissidents of this world.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005467,'And... I we do not?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005468,'Then you become enemies of my lord, Illidan. Enemies of Illidan are destroyed. Are your giants able to withstand an attack from the forces of Eclipse Point?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005469,'No... I did not think so...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- Kraator - wp for one of his spawn points
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 78222;
DELETE FROM creature_movement WHERE id = 78222;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(78222,1,-4394.720215,1864.705688,157.072311,10000,0,0,0,0,0,0,0,0,5.402752,0,0),
(78222,2,-4461.790527,1886.594238,160.185471,0,0,0,0,0,0,0,0,0,1.860608,0,0),
(78222,3,-4483.135742,1923.241455,147.075180,0,0,0,0,0,0,0,0,0,1.528383,0,0),
(78222,4,-4482.072754,1945.443604,137.236710,0,0,0,0,0,0,0,0,0,1.159246,0,0),
(78222,5,-4466.528809,1966.463501,122.570808,0,0,0,0,0,0,0,0,0,0.882786,0,0),
(78222,6,-4450.532227,1991.659790,104.083229,0,0,0,0,0,0,0,0,0,2.698596,0,0),
(78222,7,-4469.151855,1990.330811,111.188759,0,0,0,0,0,0,0,0,0,4.176716,0,0),
(78222,8,-4468.896973,1970.658203,121.295296,0,0,0,0,0,0,0,0,0,4.841754,0,0),
(78222,9,-4486.356445,1927.616455,146.363510,0,0,0,0,0,0,0,0,0,5.210888,0,0),
(78222,10,-4450.832520,1884.109131,160.942627,0,0,0,0,0,0,0,0,0,5.848642,0,0);

-- Ruins of Ba'ri -- SHADOWMOON VALLEY
-- Ashtongue Warrior
DELETE FROM creature_movement WHERE id IN (75224, 75221);
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
-- #1
(75224,1,-3172.460449,1091.696533,72.969498,0,0,0,0,0,0,0,0,0,4.453544,0,0),
(75224,2,-3176.790527,1075.279663,71.709892,0,0,0,0,0,0,0,0,0,1.335508,0,0),
-- #2
(75221,1,-3212.291260,1158.634766,55.686581,0,0,0,0,0,0,0,0,0,5.211734,0,0),
(75221,2,-3226.076172,1171.640137,51.348660,0,0,0,0,0,0,0,0,0,2.380375,0,0),
(75221,3,-3234.271973,1177.224365,53.572346,0,0,0,0,0,0,0,0,0,2.168317,0,0),
(75221,4,-3249.399902,1203.694580,63.871864,0,0,0,0,0,0,0,0,0,2.034799,0,0),
(75221,5,-3251.459473,1212.201538,67.225143,0,0,0,0,0,0,0,0,0,1.825097,0,0),
(75221,6,-3259.797119,1226.378052,70.750412,0,0,0,0,0,0,0,0,0,2.268844,0,0),
(75221,7,-3274.618896,1240.540894,73.017372,0,0,0,0,0,0,0,0,0,2.965492,0,0),
(75221,8,-3282.655273,1239.075806,74.646370,5000,0,0,0,0,0,0,0,0,3.384110,0,0),
(75221,9,-3271.921143,1239.299194,72.480698,0,0,0,0,0,0,0,0,0,5.717527,0,0),
(75221,10,-3257.448486,1226.533447,70.698273,0,0,0,0,0,0,0,0,0,5.168538,0,0),
(75221,11,-3250.764160,1211.671997,67.028328,0,0,0,0,0,0,0,0,0,5.064871,0,0),
(75221,12,-3247.539795,1201.199951,63.113720,0,0,0,0,0,0,0,0,0,5.123775,0,0),
(75221,13,-3238.094971,1184.521118,56.184174,0,0,0,0,0,0,0,0,0,5.249437,0,0),
(75221,14,-3231.859863,1172.321777,52.754879,0,0,0,0,0,0,0,0,0,5.410439,0,0);
-- Illidari Overseer <Servant of Illidan>
DELETE FROM creature_movement WHERE id IN (76167, 76168, 76169, 76170, 76171, 76172);
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
-- #1
(76168,1,-3178.417725,1131.573120,77.765457,0,0,0,0,0,0,0,0,0,5.242127,0,0),
(76168,2,-3174.169434,1119.935669,73.645943,0,0,0,0,0,0,0,0,0,4.998659,0,0),
(76168,3,-3179.244873,1131.889282,78.100471,0,0,0,0,0,0,0,0,0,2.338516,0,0),
(76168,4,-3184.183350,1133.169678,78.494743,0,0,0,0,0,0,0,0,0,3.238583,0,0),
(76168,5,-3193.660156,1128.776611,73.256149,0,0,0,0,0,0,0,0,0,3.306912,0,0),
(76168,6,-3211.838379,1124.357910,70.997551,0,0,0,0,0,0,0,0,0,3.420010,0,0),
(76168,7,-3229.743896,1122.729126,65.645355,0,0,0,0,0,0,0,0,0,2.832530,0,0),
(76168,8,-3245.699463,1135.284668,61.813255,0,0,0,0,0,0,0,0,0,2.004720,0,0),
(76168,9,-3248.130127,1150.430420,57.891178,0,0,0,0,0,0,0,0,0,1.511490,0,0),
(76168,10,-3246.325195,1171.269287,58.012768,0,0,0,0,0,0,0,0,0,1.519347,0,0),
(76168,11,-3245.703857,1183.065918,58.228916,0,0,0,0,0,0,0,0,0,1.511493,0,0),
(76168,12,-3240.135498,1211.393311,66.051529,5000,0,0,0,0,0,0,0,0,0.586483,0,0),
(76168,13,-3245.380371,1206.683350,64.606354,0,0,0,0,0,0,0,0,0,4.513472,0,0),
(76168,14,-3243.137939,1181.667969,57.229507,0,0,0,0,0,0,0,0,0,4.804064,0,0),
(76168,15,-3243.313721,1149.562622,57.369778,0,0,0,0,0,0,0,0,0,4.478127,0,0),
(76168,16,-3243.017334,1138.712646,61.402313,0,0,0,0,0,0,0,0,0,5.071884,0,0),
(76168,17,-3227.354736,1117.955444,66.411575,0,0,0,0,0,0,0,0,0,0.212379,0,0),
(76168,18,-3203.323486,1126.088623,72.575089,0,0,0,0,0,0,0,0,0,0.302700,0,0),
(76168,19,-3194.194336,1127.548950,72.506744,0,0,0,0,0,0,0,0,0,0.369459,0,0),
(76168,20,-3182.700439,1132.931641,78.673073,0,0,0,0,0,0,0,0,0,6.087157,0,0),
(76168,21,-3179.755371,1131.429443,78.128487,0,0,0,0,0,0,0,0,0,5.257291,0,0),
-- #2 
(76167,1,-3308.395264,1178.665894,60.972027,0,0,0,0,0,0,0,0,0,6.012737,0,0),
(76167,2,-3302.081543,1176.903931,58.469902,0,0,0,0,0,0,0,0,0,5.726068,0,0),
(76167,3,-3277.921875,1163.183228,60.720741,0,0,0,0,0,0,0,0,0,5.551710,0,0),
(76167,4,-3269.264893,1154.595703,58.943130,0,0,0,0,0,0,0,0,0,5.590195,0,0),
(76167,5,-3250.659668,1142.599731,60.051620,0,0,0,0,0,0,0,0,0,5.645168,0,0),
(76167,6,-3239.263916,1131.204224,63.256382,0,0,0,0,0,0,0,0,0,5.362426,0,0),
(76167,7,-3231.821777,1121.324951,64.887375,0,0,0,0,0,0,0,0,0,5.638886,0,0),
(76167,8,-3214.565430,1117.073730,69.065178,0,0,0,0,0,0,0,0,0,5.947544,0,0),
(76167,9,-3207.662598,1114.730957,71.719948,3000,0,0,0,0,0,0,0,0,6.045717,0,0),
(76167,10,-3234.791504,1124.659790,63.903469,0,0,0,0,0,0,0,0,0,2.240464,0,0),
(76167,11,-3255.863037,1155.719238,58.625713,0,0,0,0,0,0,0,0,0,2.455663,0,0),
(76167,12,-3276.195313,1175.075317,61.242504,0,0,0,0,0,0,0,0,0,2.709347,0,0),
(76167,13,-3299.032959,1180.247192,59.428017,0,0,0,0,0,0,0,0,0,3.304680,0,0),
(76167,14,-3334.879150,1175.262085,61.275055,0,0,0,0,0,0,0,0,0,3.285046,0,0),
(76167,15,-3359.923340,1173.904785,60.182457,0,0,0,0,0,0,0,0,0,3.186871,0,0),
(76167,16,-3391.859619,1171.351318,51.414761,3000,0,0,0,0,0,0,0,0,3.139747,0,0),
(76167,17,-3358.929443,1173.399292,60.142799,0,0,0,0,0,0,0,0,0,6.261701,0,0),
-- #3
(76169,1,-3277.610596,1105.501221,55.173294,0,0,0,0,0,0,0,0,0,2.632377,0,0),
(76169,2,-3285.274658,1111.126953,56.240513,0,0,0,0,0,0,0,0,0,2.476869,0,0),
(76169,3,-3305.334961,1125.333984,59.439613,0,0,0,0,0,0,0,0,0,2.736836,0,0),
(76169,4,-3318.326416,1127.533203,60.146633,0,0,0,0,0,0,0,0,0,3.157024,0,0),
(76169,5,-3339.865723,1125.462891,57.063965,0,0,0,0,0,0,0,0,0,3.515951,0,0),
(76169,6,-3354.294434,1114.767700,53.210167,0,0,0,0,0,0,0,0,0,4.310775,0,0),
(76169,7,-3370.594482,1083.401001,45.958763,0,0,0,0,0,0,0,0,0,3.757857,0,0),
(76169,8,-3378.093018,1077.257690,47.313671,0,0,0,0,0,0,0,0,0,3.533234,0,0),
(76169,9,-3386.033936,1076.455322,46.536911,3000,0,0,0,0,0,0,0,0,3.215148,0,0),
(76169,10,-3370.586670,1081.586426,45.952797,0,0,0,0,0,0,0,0,0,0.763135,0,0),
(76169,11,-3353.404785,1117.636108,53.621189,0,0,0,0,0,0,0,0,0,0.646110,0,0),
(76169,12,-3334.572510,1129.469482,57.686775,0,0,0,0,0,0,0,0,0,0.170944,0,0),
(76169,13,-3311.614258,1129.568481,59.479336,0,0,0,0,0,0,0,0,0,6.092846,0,0),
(76169,14,-3305.193604,1126.803467,59.111469,0,0,0,0,0,0,0,0,0,5.483377,0,0),
(76169,15,-3291.055176,1116.423828,58.558220,0,0,0,0,0,0,0,0,0,5.614542,0,0),
(76169,16,-3283.327637,1109.844971,55.591434,0,0,0,0,0,0,0,0,0,5.555638,0,0),
(76169,17,-3276.347656,1102.984375,55.046421,0,0,0,0,0,0,0,0,0,6.150183,0,0),
(76169,18,-3242.697510,1105.893555,61.562294,0,0,0,0,0,0,0,0,0,6.132378,0,0),
(76169,19,-3229.654541,1101.252441,66.396080,3000,0,0,0,0,0,0,0,0,5.924244,0,0),
(76169,20,-3246.552979,1103.618774,60.897301,0,0,0,0,0,0,0,0,0,2.998637,0,0),
-- #4
(76170,1,-3280.600586,947.888306,42.627167,0,0,0,0,0,0,0,0,0,3.487921,0,0),
(76170,2,-3288.207520,944.545410,38.954048,0,0,0,0,0,0,0,0,0,3.558607,0,0),
(76170,3,-3302.843750,939.509949,36.424034,0,0,0,0,0,0,0,0,0,3.542898,0,0),
(76170,4,-3309.406494,934.471924,36.044342,0,0,0,0,0,0,0,0,0,3.864912,0,0),
(76170,5,-3318.150391,928.216675,32.391838,0,0,0,0,0,0,0,0,0,3.766737,0,0),
(76170,6,-3331.985840,922.585876,31.736460,3000,0,0,0,0,0,0,0,0,3.190254,0,0),
(76170,7,-3322.158691,925.743896,31.295994,0,0,0,0,0,0,0,0,0,0.702897,0,0),
(76170,8,-3310.373535,936.740112,35.342541,0,0,0,0,0,0,0,0,0,0.512831,0,0),
(76170,9,-3302.372314,940.932556,36.179607,0,0,0,0,0,0,0,0,0,0.167256,0,0),
(76170,10,-3287.177490,946.728088,39.570614,0,0,0,0,0,0,0,0,0,0.362820,0,0),
(76170,11,-3283.277832,952.705566,41.142956,0,0,0,0,0,0,0,0,0,0.495552,0,0),
(76170,12,-3276.209473,953.964355,42.110130,0,0,0,0,0,0,0,0,0,6.009047,0,0),
(76170,13,-3261.058105,948.930115,42.913597,0,0,0,0,0,0,0,0,0,6.157491,0,0),
(76170,14,-3246.797119,947.154785,44.765095,0,0,0,0,0,0,0,0,0,6.159331,0,0),
(76170,15,-3234.856689,942.678589,48.209072,3000,0,0,0,0,0,0,0,0,5.604057,0,0),
(76170,16,-3247.763916,948.390930,44.798805,0,0,0,0,0,0,0,0,0,3.017740,0,0),
(76170,17,-3260.349365,948.762695,43.004120,0,0,0,0,0,0,0,0,0,3.139477,0,0),
(76170,18,-3269.561279,949.603699,42.736866,0,0,0,0,0,0,0,0,0,3.115915,0,0),
-- #5
(76171,1,-3280.303467,957.402893,41.469620,0,0,0,0,0,0,0,0,0,6.039939,0,0),
(76171,2,-3257.593994,951.953918,43.498306,0,0,0,0,0,0,0,0,0,6.008568,0,0),
(76171,3,-3247.135742,945.763977,44.796455,0,0,0,0,0,0,0,0,0,5.438371,0,0),
(76171,4,-3238.192383,935.525818,46.330242,0,0,0,0,0,0,0,0,0,5.187828,0,0),
(76171,5,-3226.818848,916.186035,46.399780,0,0,0,0,0,0,0,0,0,5.012683,0,0),
(76171,6,-3225.397217,907.093994,44.918282,0,0,0,0,0,0,0,0,0,4.506106,0,0),
(76171,7,-3229.747070,895.431458,39.889236,0,0,0,0,0,0,0,0,0,3.828314,0,0),
(76171,8,-3245.403076,884.837830,32.106041,0,0,0,0,0,0,0,0,0,3.321733,0,0),
(76171,9,-3281.528320,879.127319,13.899011,0,0,0,0,0,0,0,0,0,3.291103,0,0),
(76171,10,-3321.820557,874.553467,-7.360868,3000,0,0,0,0,0,0,0,0,3.149731,0,0),
(76171,11,-3299.960449,876.675354,4.014878,0,0,0,0,0,0,0,0,0,0.176999,0,0),
(76171,12,-3262.058594,881.241577,22.869043,0,0,0,0,0,0,0,0,0,0.224907,0,0),
(76171,13,-3246.283203,881.161255,31.509611,0,0,0,0,0,0,0,0,0,0.307374,0,0),
(76171,14,-3222.633545,896.761841,43.389187,0,0,0,0,0,0,0,0,0,0.916057,0,0),
(76171,15,-3219.841309,906.699646,46.661037,0,0,0,0,0,0,0,0,0,1.527882,0,0),
(76171,16,-3220.259766,912.806519,46.510593,0,0,0,0,0,0,0,0,0,1.867960,0,0),
(76171,17,-3228.990234,931.709839,48.030491,0,0,0,0,0,0,0,0,0,2.423237,0,0),
(76171,18,-3244.927002,946.162537,45.105564,0,0,0,0,0,0,0,0,0,2.658071,0,0),
(76171,19,-3255.754150,953.239624,43.781475,0,0,0,0,0,0,0,0,0,2.804155,0,0),
(76171,20,-3278.815674,955.947876,41.772186,0,0,0,0,0,0,0,0,0,3.540074,0,0),
(76171,21,-3303.775146,945.418762,35.688679,0,0,0,0,0,0,0,0,0,3.398038,0,0),
(76171,22,-3325.154541,941.580505,32.770695,3000,0,0,0,0,0,0,0,0,3.264521,0,0),
(76171,23,-3290.048828,946.580811,38.647724,0,0,0,0,0,0,0,0,0,0.370325,0,0),
-- #6
(76172,1,-3363.985352,863.053650,-17.928015,0,0,0,0,0,0,0,0,0,0.091511,0,0),
(76172,2,-3336.717285,868.281250,-14.497184,0,0,0,0,0,0,0,0,0,0.001191,0,0),
(76172,3,-3325.306396,867.908752,-10.546885,0,0,0,0,0,0,0,0,0,0.044386,0,0),
(76172,4,-3305.190430,869.396606,2.164376,0,0,0,0,0,0,0,0,0,0.103291,0,0),
(76172,5,-3291.586670,870.046997,7.808783,0,0,0,0,0,0,0,0,0,0.048314,0,0),
(76172,6,-3273.017578,872.993225,17.767723,0,0,0,0,0,0,0,0,0,0.138635,0,0),
(76172,7,-3288.994141,868.781006,9.039687,0,0,0,0,0,0,0,0,0,3.303792,0,0),
(76172,8,-3308.333496,865.931152,0.661755,0,0,0,0,0,0,0,0,0,3.174201,0,0),
(76172,9,-3323.902344,866.266846,-10.108768,0,0,0,0,0,0,0,0,0,3.178128,0,0),
(76172,10,-3336.142334,865.320984,-15.153563,0,0,0,0,0,0,0,0,0,3.240960,0,0),
(76172,11,-3354.415283,863.810852,-16.799530,0,0,0,0,0,0,0,0,0,3.268449,0,0),
(76172,12,-3363.889404,861.460449,-18.164988,0,0,0,0,0,0,0,0,0,3.755396,0,0),
(76172,13,-3375.571045,858.850037,-18.004910,0,0,0,0,0,0,0,0,0,3.028117,0,0),
(76172,14,-3399.783447,862.752991,-21.370783,0,0,0,0,0,0,0,0,0,2.918944,0,0),
(76172,15,-3418.184082,871.939819,-26.340899,3000,0,0,0,0,0,0,0,0,2.632274,0,0);


-- Ashtongue Shaman <Servant of Illidan>
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2145301, 2145302); -- Scripts for Ashtongue Shaman
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES
(2145301,0,31,21455,20,0,0,0,0,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(2145301,2,15,37067,0,21455,20,0x01,0,0,0,0,0,0,0,0,'cast 37067 on buddy'),
(2145302,0,31,21455,20,0,0,0,0,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(2145302,2,15,37067,0,21455,20,0x01,0,0,0,0,0,0,0,0,'cast 37067 on buddy'),
(2145302,4,0,0,0,0,0,0,2000005470,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry = 2000005470;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(2000005470,'Keep up the good work. Do well and you will be rewarded by the master.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
-- Ashtongue Shaman <Servant of Illidan>
DELETE FROM creature_movement WHERE id IN (75201, 75203, 75209, 75213);
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
-- #1
(75209,1,-3221.468750,1016.448975,64.961197,0,0,0,0,0,0,0,0,0,3.808603,0,0),
(75209,2,-3236.191406,1006.445313,61.490978,0,0,0,0,0,0,0,0,0,3.425330,0,0),
(75209,3,-3247.579590,1006.265320,59.373692,0,0,0,0,0,0,0,0,0,2.869268,0,0),
(75209,4,-3249.895264,1008.636169,58.848114,3000,2145301,0,0,0,0,0,0,0,0.186347,0,0),
(75209,5,-3250.097412,1018.578979,58.727402,0,0,0,0,0,0,0,0,0,1.820760,0,0),
(75209,6,-3254.305664,1025.447388,57.306602,0,0,0,0,0,0,0,0,0,2.478924,0,0),
(75209,7,-3258.533203,1027.678589,54.562023,0,0,0,0,0,0,0,0,0,3.078184,0,0),
(75209,8,-3268.898193,1023.328552,50.665070,0,0,0,0,0,0,0,0,0,3.291812,0,0),
(75209,9,-3258.945068,1028.524292,53.983521,0,0,0,0,0,0,0,0,0,6.282607,0,0),
(75209,10,-3252.554199,1024.679688,57.864960,0,0,0,0,0,0,0,0,0,5.110106,0,0),
(75209,11,-3250.110107,1015.981140,58.581032,0,0,0,0,0,0,0,0,0,4.332563,0,0),
(75209,12,-3251.567627,1011.429810,58.405739,0,0,0,0,0,0,0,0,0,4.736259,0,0),
(75209,13,-3246.933838,1005.331726,59.449554,0,0,0,0,0,0,0,0,0,5.940269,0,0),
(75209,14,-3236.454590,1005.351746,61.379131,0,0,0,0,0,0,0,0,0,0.362367,0,0),
(75209,15,-3222.722168,1016.494202,64.735222,3000,2145301,0,0,0,0,0,0,0,2.077677,0,0),
(75209,16,-3203.921387,1039.848999,68.756271,0,0,0,0,0,0,0,0,0,0.696947,0,0),
(75209,17,-3190.853516,1051.270386,68.451584,0,0,0,0,0,0,0,0,0,6.122477,0,0),
(75209,18,-3194.799072,1049.223145,67.908142,3000,2145301,0,0,0,0,0,0,0,5.504722,0,0),
(75209,19,-3207.935791,1031.723877,68.660851,0,0,0,0,0,0,0,0,0,3.967689,0,0),
-- #2
(75201,1,-3299.852051,1237.444214,70.035851,0,0,0,0,0,0,0,0,0,0.133475,0,0),
(75201,2,-3313.553955,1232.837402,73.567886,3000,2145301,0,0,0,0,0,0,0,4.709989,0,0),
(75201,3,-3331.013916,1234.281372,72.559753,0,0,0,0,0,0,0,0,0,3.381881,0,0),
(75201,4,-3377.175781,1223.782349,66.740471,0,0,0,0,0,0,0,0,0,3.355177,0,0),
(75201,5,-3378.578369,1222.723022,66.455215,3000,2145301,0,0,0,0,0,0,0,2.078905,0,0),
(75201,6,-3396.246094,1219.992920,67.368553,0,0,0,0,0,0,0,0,0,3.284491,0,0),
(75201,7,-3422.463623,1212.943604,63.124111,0,0,0,0,0,0,0,0,0,3.498925,0,0),
(75201,8,-3395.863281,1218.661499,67.038719,3000,2145301,0,0,0,0,0,0,0,5.240155,0,0),
(75201,9,-3379.626953,1223.143188,66.509300,0,0,0,0,0,0,0,0,0,0.268583,0,0),
(75201,10,-3365.497803,1226.406494,68.912842,0,0,0,0,0,0,0,0,0,0.217532,0,0),
(75201,11,-3319.849854,1234.532471,73.524368,0,0,0,0,0,0,0,0,0,0.013328,0,0),
-- #3
(75203,1,-3249.972168,875.302612,29.499495,0,0,0,0,0,0,0,0,0,3.223110,0,0),
(75203,2,-3268.092285,875.712524,19.918898,0,0,0,0,0,0,0,0,0,3.445377,0,0),
(75203,3,-3290.132813,872.275024,8.706876,0,0,0,0,0,0,0,0,0,3.230963,0,0),
(75203,4,-3308.984131,870.694336,0.170585,0,0,0,0,0,0,0,0,0,3.195620,0,0),
(75203,5,-3322.789307,869.020996,-8.991667,0,0,0,0,0,0,0,0,0,3.262380,0,0),
(75203,6,-3327.845215,866.737427,-11.956699,3000,0,0,0,0,0,0,0,0,3.478364,0,0),
(75203,7,-3307.502930,871.984131,0.771342,0,0,0,0,0,0,0,0,0,0.024180,0,0),
(75203,8,-3268.639404,877.300476,19.679729,0,0,0,0,0,0,0,0,0,0.177332,0,0),
(75203,9,-3257.888916,877.667664,25.418787,0,0,0,0,0,0,0,0,0,6.272022,0,0),
(75203,10,-3233.642090,878.913086,37.326107,0,0,0,0,0,0,0,0,0,0.008472,0,0),
(75203,11,-3214.500732,880.580566,45.635853,0,0,0,0,0,0,0,0,0,0.047741,0,0),
(75203,12,-3202.543945,881.866577,48.962994,0,0,0,0,0,0,0,0,0,0.582598,0,0),
(75203,13,-3197.874268,891.120972,51.560291,3000,2145301,0,0,0,0,0,0,0,5.689256,0,0),
(75203,14,-3192.797363,902.747925,53.181259,0,0,0,0,0,0,0,0,0,1.364069,0,0),
(75203,15,-3191.170654,914.681213,55.299911,0,0,0,0,0,0,0,0,0,1.790541,0,0),
(75203,16,-3193.385498,925.461426,56.580425,0,0,0,0,0,0,0,0,0,2.160464,0,0),
(75203,17,-3206.278320,939.316345,55.694366,0,0,0,0,0,0,0,0,0,2.314401,0,0),
(75203,18,-3199.564697,930.371765,56.089642,3000,2145301,0,0,0,0,0,0,0,4.119246,0,0),
(75203,19,-3192.800293,921.603821,56.100826,0,0,0,0,0,0,0,0,0,4.970620,0,0),
(75203,20,-3191.182861,910.275574,54.563549,0,0,0,0,0,0,0,0,0,4.459331,0,0),
(75203,21,-3196.837158,892.959839,52.068302,0,0,0,0,0,0,0,0,0,3.912028,0,0),
(75203,22,-3213.668213,876.488770,45.644352,0,0,0,0,0,0,0,0,0,3.164330,0,0),
(75203,23,-3229.435547,876.971680,38.649120,0,0,0,0,0,0,0,0,0,3.171074,0,0),
-- #4
(75213,1,-3297.696045,885.357544,6.511506,0,0,0,0,0,0,0,0,0,0.221903,0,0),
(75213,2,-3285.282227,888.029907,13.534496,0,0,0,0,0,0,0,0,0,0.217976,0,0),
(75213,3,-3280.782715,889.265259,15.470063,3000,2145301,0,0,0,0,0,0,0,1.810764,0,0),
(75213,4,-3263.697266,891.032898,23.358362,0,0,0,0,0,0,0,0,0,0.108020,0,0),
(75213,5,-3246.648438,894.489929,32.200119,3000,2145302,0,0,0,0,0,0,0,1.760499,0,0),
(75213,6,-3266.777832,890.087585,21.871933,0,0,0,0,0,0,0,0,0,3.121593,0,0),
(75213,7,-3284.543701,887.370056,13.838665,0,0,0,0,0,0,0,0,0,3.412977,0,0),
(75213,8,-3308.374512,885.057983,1.233343,0,0,0,0,0,0,0,0,0,3.212700,0,0),
(75213,9,-3333.033203,882.743164,-9.312898,3000,2145301,0,0,0,0,0,0,0,1.945067,0,0),
(75213,10,-3365.249023,886.590393,-16.122059,0,0,0,0,0,0,0,0,0,3.050452,0,0),
(75213,11,-3383.210693,887.219971,-20.119076,0,0,0,0,0,0,0,0,0,3.104309,0,0),
(75213,12,-3415.803467,889.128174,-26.934351,0,0,0,0,0,0,0,0,0,3.242539,0,0),
(75213,13,-3401.100586,887.635315,-23.055996,3000,2145301,0,0,0,0,0,0,0,1.466747,0,0),
(75213,14,-3380.656738,887.647949,-19.666466,0,0,0,0,0,0,0,0,0,0.002762,0,0),
(75213,15,-3347.764648,885.287903,-13.103563,0,0,0,0,0,0,0,0,0,6.183848,0,0),
(75213,16,-3340.835938,882.838257,-11.906100,0,0,0,0,0,0,0,0,0,5.920741,0,0),
(75213,17,-3333.095459,881.256226,-9.573621,0,0,0,0,0,0,0,0,0,6.148502,0,0),
(75213,18,-3327.040283,881.204102,-8.087005,0,0,0,0,0,0,0,0,0,0.018468,0,0),
(75213,19,-3307.709717,878.544678,0.876791,0,0,0,0,0,0,0,0,0,0.149631,0,0);


-- Elekk Demolisher
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2180801, 2180802); -- Script for Elekk Demolisher
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES
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
-- Elekk Demolisher
-- #1
DELETE FROM creature_movement WHERE id = 76116;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(76116,1,-3199.7,1133.91,73.2579,1000,0,0,0,0,0,0,0,0,2.60054,0,0),
(76116,2,-3199.7,1133.91,73.2579,4000,2180801,0,0,0,0,0,0,0,2.60054,0,0);
-- #2
DELETE FROM creature_movement WHERE id = 76117;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(76117,1,-3306.93,1147.22,61.2519,1000,0,0,0,0,0,0,0,0,2.37365,0,0),
(76117,2,-3306.93,1147.22,61.2519,4000,2180801,0,0,0,0,0,0,0,2.37365,0,0);
-- #3
DELETE FROM creature_movement WHERE id = 76122;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(76122,1,-3322.53,911.932,29.6168,1000,0,0,0,0,0,0,0,0,2.56563,0,0),
(76122,2,-3322.53,911.932,29.6168,4000,2180801,0,0,0,0,0,0,0,2.56563,0,0);
-- #4
DELETE FROM creature_movement WHERE id = 76121;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(76121,1,-3373.17,1007.41,30.5873,1000,0,0,0,0,0,0,0,0,3.83972,0,0),
(76121,2,-3373.17,1007.41,30.5873,4000,2180801,0,0,0,0,0,0,0,3.83972,0,0);
-- #5
DELETE FROM creature_movement WHERE id = 76119;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(76119,1,-3259.258057,1072.834961,54.883942,0,0,0,0,0,0,0,0,0,2.248544,0,0),
(76119,2,-3272.782227,1094.405151,54.871628,0,0,0,0,0,0,0,0,0,1.712904,0,0),
(76119,3,-3280.439209,1109.067627,55.271194,0,0,0,0,0,0,0,0,0,1.572316,0,0),
(76119,4,-3282.245850,1143.333374,54.926170,0,0,0,0,0,0,0,0,0,1.815790,0,0),
(76119,5,-3292.356445,1166.635010,58.459785,0,0,0,0,0,0,0,0,0,1.972870,0,0),
(76119,6,-3293.467773,1185.877075,61.121235,0,0,0,0,0,0,0,0,0,1.395602,0,0),
(76119,7,-3290.611572,1204.299316,64.527306,0,0,0,0,0,0,0,0,0,2.245403,0,0),
(76119,8,-3302.440674,1214.854980,69.622108,0,0,0,0,0,0,0,0,0,2.729209,0,0),
(76119,9,-3308.491943,1216.168579,72.111816,30000,2180802,0,0,0,0,0,0,0,3.402295,0,0),
(76119,10,-3292.320801,1205.352539,64.864182,0,0,0,0,0,0,0,0,0,4.803470,0,0),
(76119,11,-3286.249268,1165.400879,59.940842,0,0,0,0,0,0,0,0,0,4.855304,0,0),
(76119,12,-3283.863770,1150.459351,55.401463,0,0,0,0,0,0,0,0,0,4.823889,0,0),
(76119,13,-3281.506104,1111.112671,55.333141,0,0,0,0,0,0,0,0,0,5.217373,0,0),
(76119,14,-3257.254395,1072.289917,55.522011,0,0,0,0,0,0,0,0,0,5.711382,0,0),
(76119,15,-3247.235352,1065.605957,59.008179,0,0,0,0,0,0,0,0,0,5.664256,0,0),
(76119,16,-3229.398193,1049.961304,64.038620,0,0,0,0,0,0,0,0,0,5.179667,0,0),
(76119,17,-3223.602051,1041.755493,62.892914,0,0,0,0,0,0,0,0,0,5.266621,0,0),
(76119,18,-3210.426025,1024.604248,68.363304,30000,2180802,0,0,0,0,0,0,0,5.431551,0,0),
(76119,19,-3222.487061,1042.598145,63.302876,0,0,0,0,0,0,0,0,0,1.988364,0,0),
(76119,20,-3227.911377,1053.825317,65.124222,0,0,0,0,0,0,0,0,0,2.253043,0,0);
DELETE FROM creature_linking WHERE guid = 76127; 
INSERT INTO creature_linking (guid, master_guid, flag) VALUES    
(76127, 76119, 518); -- Ashtongue Handler linked to his master
-- #6
DELETE FROM creature_movement WHERE id = 76115;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(76115,1,-3379.108398,1178.513672,58.717804,0,0,0,0,0,0,0,0,0,5.199580,0,0),
(76115,2,-3376.345215,1169.229004,55.207394,0,0,0,0,0,0,0,0,0,4.967104,0,0),
(76115,3,-3359.678711,1145.922119,53.261944,0,0,0,0,0,0,0,0,0,5.061353,0,0),
(76115,4,-3359.333008,1140.345093,52.339096,0,0,0,0,0,0,0,0,0,4.696677,0,0),
(76115,5,-3361.870117,1110.312134,51.105259,0,0,0,0,0,0,0,0,0,4.135904,0,0),
(76115,6,-3372.908203,1095.989990,46.647064,0,0,0,0,0,0,0,0,0,3.954481,0,0),
(76115,7,-3380.510742,1086.666748,47.809792,0,0,0,0,0,0,0,0,0,4.347180,0,0),
(76115,8,-3385.609375,1063.783691,45.367901,0,0,0,0,0,0,0,0,0,4.653481,0,0),
(76115,9,-3385.872559,1045.289429,44.068321,30000,2180802,0,0,0,0,0,0,0,4.673115,0,0),
(76115,10,-3383.702881,1078.223511,47.048641,0,0,0,0,0,0,0,0,0,0.854905,0,0),
(76115,11,-3372.795898,1092.305420,46.251743,0,0,0,0,0,0,0,0,0,0.855690,0,0),
(76115,12,-3365.843506,1103.946289,49.486156,0,0,0,0,0,0,0,0,0,1.236608,0,0),
(76115,13,-3362.096924,1136.983032,51.719257,0,0,0,0,0,0,0,0,0,2.267353,0,0),
(76115,14,-3367.614258,1148.270630,54.292240,0,0,0,0,0,0,0,0,0,1.702651,0,0),
(76115,15,-3370.158203,1160.223999,54.002285,0,0,0,0,0,0,0,0,0,1.483525,0,0),
(76115,16,-3374.535156,1179.332397,60.481911,0,0,0,0,0,0,0,0,0,2.296413,0,0),
(76115,17,-3381.818604,1185.489990,58.632721,0,0,0,0,0,0,0,0,0,2.119081,0,0),
(76115,18,-3388.157227,1193.091797,59.723129,30000,2180802,0,0,0,0,0,0,0,2.323285,0,0);
DELETE FROM creature_linking WHERE guid = 76123; 
INSERT INTO creature_linking (guid, master_guid, flag) VALUES    
(76123, 76115, 518); -- Ashtongue Handler linked to his master
-- #7
DELETE FROM creature_movement WHERE id = 76120;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(76120,1,-3264.559326,956.406860,44.083412,0,0,0,0,0,0,0,0,0,6.065875,0,0),
(76120,2,-3254.369873,955.420593,44.446972,0,0,0,0,0,0,0,0,0,0.032443,0,0),
(76120,3,-3248.995605,956.924072,46.215565,0,0,0,0,0,0,0,0,0,0.619134,0,0),
(76120,4,-3243.160400,966.087097,49.847031,30000,2180802,0,0,0,0,0,0,0,1.193261,0,0),
(76120,5,-3253.679932,955.537170,44.580261,0,0,0,0,0,0,0,0,0,3.383737,0,0),
(76120,6,-3266.877686,956.353821,43.791153,0,0,0,0,0,0,0,0,0,2.702796,0,0),
(76120,7,-3294.132080,963.640442,39.923531,0,0,0,0,0,0,0,0,0,3.019307,0,0),
(76120,8,-3302.226563,965.645020,35.436562,0,0,0,0,0,0,0,0,0,2.980036,0,0),
(76120,9,-3322.043457,975.570679,33.131927,0,0,0,0,0,0,0,0,0,2.614825,0,0),
(76120,10,-3338.729492,983.639282,31.113022,30000,2180802,0,0,0,0,0,0,0,2.804106,0,0),
(76120,11,-3310.663086,973.819519,36.262043,0,0,0,0,0,0,0,0,0,5.937061,0,0),
(76120,12,-3301.893555,970.677795,35.864723,0,0,0,0,0,0,0,0,0,5.866377,0,0),
(76120,13,-3296.160645,968.425842,37.249058,0,0,0,0,0,0,0,0,0,5.799616,0,0),
(76120,14,-3287.625732,963.147034,41.230312,0,0,0,0,0,0,0,0,0,5.705370,0,0);
DELETE FROM creature_linking WHERE guid = 76128; 
INSERT INTO creature_linking (guid, master_guid, flag) VALUES    
(76128, 76120, 518); -- Ashtongue Handler linked to his master
-- #8
DELETE FROM creature_movement WHERE id = 76118;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(76118,1,-3301.43,1072.42,54.5428,1000,0,0,0,0,0,0,0,0,2.07694,0,0),
(76118,2,-3301.43,1072.42,54.5428,4000,2180801,0,0,0,0,0,0,0,2.07694,0,0);
-- Ghostrider of Karabor - updates
DELETE FROM creature_linking WHERE guid IN (76085, 76082, 76083);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES    
(76082, 76083, 518),(76083, 76084, 518),(76085, 76082, 518); -- Ghostrider of Karabor

DELETE FROM creature_movement WHERE id = 76084;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(76084,1,-3095.899170,854.939697,-20.774427,0,0,0,0,0,0,0,0,0,1.356792,0,0),
(76084,2,-3089.441406,881.748779,-19.480181,0,0,0,0,0,0,0,0,0,1.592411,0,0),
(76084,3,-3091.678711,933.456482,-17.097630,0,0,0,0,0,0,0,0,0,2.123156,0,0),
(76084,4,-3109.357422,960.794739,-12.477170,0,0,0,0,0,0,0,0,0,1.807425,0,0),
(76084,5,-3117.194092,988.180176,-6.816048,0,0,0,0,0,0,0,0,0,1.604006,0,0),
(76084,6,-3117.084473,1005.483398,-2.834794,0,0,0,0,0,0,0,0,0,1.356606,0,0),
(76084,7,-3113.961426,1024.274414,1.699737,0,0,0,0,0,0,0,0,0,1.551384,0,0),
(76084,8,-3114.230469,1063.341675,11.715515,0,0,0,0,0,0,0,0,0,1.952723,0,0),
(76084,9,-3122.598633,1094.957886,19.000082,0,0,0,0,0,0,0,0,0,1.339327,0,0),
(76084,10,-3114.694092,1120.938599,23.571705,0,0,0,0,0,0,0,0,0,1.601650,0,0),
(76084,11,-3113.945557,1154.935303,25.830418,0,0,0,0,0,0,0,0,0,1.529394,0,0),
(76084,12,-3114.246826,1176.856567,25.619122,0,0,0,0,0,0,0,0,0,0.783863,0,0),
(76084,13,-3102.583496,1188.515625,22.951208,0,0,0,0,0,0,0,0,0,0.783863,0,0),
(76084,14,-3081.153564,1215.171997,15.602343,0,0,0,0,0,0,0,0,0,1.409040,0,0),
(76084,15,-3080.457764,1242.267578,12.195294,0,0,0,0,0,0,0,0,0,1.097992,0,0),
(76084,16,-3068.810059,1263.571045,8.645606,0,0,0,0,0,0,0,0,0,0.856875,0,0),
(76084,17,-3064.657471,1267.152588,9.214016,0,0,0,0,0,0,0,0,0,0.878081,0,0),
(76084,18,-3056.541016,1277.545410,13.275957,0,0,0,0,0,0,0,0,0,0.862373,0,0),
(76084,19,-3043.922363,1291.562744,13.655346,0,0,0,0,0,0,0,0,0,0.811322,0,0),
(76084,20,-3041.719238,1293.893677,13.176950,0,0,0,0,0,0,0,0,0,0.807395,0,0),
(76084,21,-3032.616699,1302.957642,9.189383,0,0,0,0,0,0,0,0,0,0.866304,0,0),
(76084,22,-3022.520508,1314.306274,8.666840,0,0,0,0,0,0,0,0,0,0.636182,0,0),
(76084,23,-3001.008301,1330.593262,8.475923,0,0,0,0,0,0,0,0,0,0.868660,0,0),
(76084,24,-2993.316406,1341.482300,9.130633,0,0,0,0,0,0,0,0,0,1.233870,0,0),
(76084,25,-2990.302979,1351.713257,9.543844,0,0,0,0,0,0,0,0,0,1.382310,0,0),
(76084,26,-2987.448730,1422.260498,12.047052,0,0,0,0,0,0,0,0,0,1.062654,0,0),
(76084,27,-2981.574951,1432.892944,11.838659,0,0,0,0,0,0,0,0,0,0.722577,0,0),
(76084,28,-2971.702148,1441.486572,11.534978,0,0,0,0,0,0,0,0,0,0.352654,0,0),
(76084,29,-2949.277832,1453.562622,11.806919,0,0,0,0,0,0,0,0,0,0.749280,0,0),
(76084,30,-2934.930664,1467.801147,12.331722,0,0,0,0,0,0,0,0,0,0.481459,0,0),
(76084,31,-2926.532959,1472.162598,12.724796,0,0,0,0,0,0,0,0,0,0.274900,0,0),
(76084,32,-2902.223145,1480.616333,13.862073,0,0,0,0,0,0,0,0,0,1.046161,0,0),
(76084,33,-2892.812256,1499.553955,15.390404,0,0,0,0,0,0,0,0,0,1.423938,0,0),
(76084,34,-2892.529785,1500.968994,16.340796,0,0,0,0,0,0,0,0,0,1.292171,0,0),
(76084,35,-2890.249023,1507.970581,17.176558,0,0,0,0,0,0,0,0,0,1.252901,0,0),
(76084,36,-2886.438965,1520.119019,21.051565,0,0,0,0,0,0,0,0,0,1.280390,0,0),
(76084,37,-2880.495850,1540.170654,21.237770,0,0,0,0,0,0,0,0,0,1.280390,0,0),
(76084,38,-2877.011963,1552.734131,17.390804,0,0,0,0,0,0,0,0,0,1.237193,0,0),
(76084,39,-2863.755859,1586.380859,15.145890,0,0,0,0,0,0,0,0,0,0.901043,0,0),
(76084,40,-2822.060303,1631.824707,12.916830,0,0,0,0,0,0,0,0,0,1.397107,0,0),
(76084,41,-2819.937256,1640.572510,13.330371,0,0,0,0,0,0,0,0,0,1.673567,0,0),
(76084,42,-2821.984375,1686.587402,23.115307,0,0,0,0,0,0,0,0,0,2.298744,0,0),
(76084,43,-2846.999512,1706.453491,31.756144,0,0,0,0,0,0,0,0,0,2.820250,0,0),
(76084,44,-2866.298828,1709.993286,36.406540,0,0,0,0,0,0,0,0,0,2.544574,0,0),
(76084,45,-2875.452148,1717.248535,38.289642,0,0,0,0,0,0,0,0,0,2.056842,0,0),
(76084,46,-2880.597412,1728.255249,40.663963,0,0,0,0,0,0,0,0,0,1.839287,0,0),
(76084,47,-2888.551270,1760.156738,47.722324,0,0,0,0,0,0,0,0,0,2.058414,0,0),
(76084,48,-2909.220703,1794.979370,57.875767,0,0,0,0,0,0,0,0,0,1.972805,0,0),
(76084,49,-2923.574951,1827.165527,72.015465,0,0,0,0,0,0,0,0,0,2.242197,0,0),
(76084,50,-2932.270752,1838.570801,78.267105,0,0,0,0,0,0,0,0,0,2.396134,0,0),
(76084,51,-2949.924561,1858.795288,88.600479,0,0,0,0,0,0,0,0,0,1.885625,0,0),
(76084,52,-2953.840088,1887.027100,97.337883,0,0,0,0,0,0,0,0,0,1.852638,0,0),
(76084,53,-2960.729492,1902.346191,101.610611,0,0,0,0,0,0,0,0,0,2.465550,0,0),
(76084,54,-2970.425781,1909.275757,103.920990,0,0,0,0,0,0,0,0,0,2.783636,0,0),
(76084,55,-2985.202637,1913.277832,106.156136,0,0,0,0,0,0,0,0,0,3.087585,0,0),
(76084,56,-3003.551025,1915.309692,108.624138,0,0,0,0,0,0,0,0,0,3.191259,0,0),
(76084,57,-3033.509766,1917.365723,111.824448,0,0,0,0,0,0,0,0,0,2.858119,0,0),
(76084,58,-3054.828369,1929.867188,112.103287,0,0,0,0,0,0,0,0,0,2.415940,0,0),
(76084,59,-3085.229248,1959.617554,108.022530,0,0,0,0,0,0,0,0,0,2.016957,0,0),
(76084,60,-3101.650391,1989.133179,100.564987,0,0,0,0,0,0,0,0,0,2.338909,0,0),
(76084,61,-3144.776123,2033.067017,91.314468,0,0,0,0,0,0,0,0,0,1.886355,0,0),
(76084,62,-3151.115479,2050.614502,88.484581,0,0,0,0,0,0,0,0,0,1.862008,0,0),
(76084,63,-3155.753418,2070.416260,83.735596,0,0,0,0,0,0,0,0,0,2.191875,0,0),
(76084,64,-3180.727539,2112.933350,73.559250,0,0,0,0,0,0,0,0,0,1.626389,0,0),
(76084,65,-3185.923096,2169.785645,68.743240,0,0,0,0,0,0,0,0,0,1.720635,0,0),
(76084,66,-3188.427246,2196.152344,65.021507,0,0,0,0,0,0,0,0,0,1.929947,0,0),
(76084,67,-3195.513916,2208.612061,63.771191,0,0,0,0,0,0,0,0,0,2.262956,0,0),
(76084,68,-3212.505371,2231.068359,61.510490,0,0,0,0,0,0,0,0,0,1.860831,0,0),
(76084,69,-3229.375732,2285.373535,59.616703,0,0,0,0,0,0,0,0,0,2.750043,0,0),
(76084,70,-3242.027588,2289.105225,59.724247,0,0,0,0,0,0,0,0,0,3.204796,0,0),
(76084,71,-3291.436523,2279.734863,60.611088,0,0,0,0,0,0,0,0,0,3.308468,0,0),
(76084,72,-3367.614502,2280.669922,62.157948,0,0,0,0,0,0,0,0,0,2.658157,0,0),
(76084,73,-3398.764893,2290.685547,62.803944,0,0,0,0,0,0,0,0,0,3.185946,0,0),
(76084,74,-3459.129150,2289.287354,63.432331,0,0,0,0,0,0,0,0,0,3.454551,0,0),
(76084,75,-3479.675537,2279.075684,64.354027,0,0,0,0,0,0,0,0,0,3.107425,0,0),
(76084,76,-3516.097900,2278.303955,67.163841,0,0,0,0,0,0,0,0,0,2.663675,0,0),
(76084,77,-3533.955078,2287.337402,68.224167,0,0,0,0,0,0,0,0,0,2.434019,0,0),
(76084,78,-3566.846436,2313.282959,70.821243,0,0,0,0,0,0,0,0,0,2.782736,0,0),
(76084,79,-3590.962158,2321.738281,72.962135,0,0,0,0,0,0,0,0,0,3.197426,0,0),
(76084,80,-3603.403076,2320.540039,73.991745,0,0,0,0,0,0,0,0,0,3.579129,0,0),
(76084,81,-3620.517822,2313.374023,74.697250,0,0,0,0,0,0,0,0,0,3.264184,0,0),
(76084,82,-3639.664795,2312.841309,75.353539,0,0,0,0,0,0,0,0,0,2.999622,0,0),
(76084,83,-3668.636719,2315.625732,75.730888,0,0,0,0,0,0,0,0,0,2.434135,0,0),
(76084,84,-3679.654785,2326.078613,76.126625,0,0,0,0,0,0,0,0,0,2.079135,0,0),
(76084,85,-3684.506348,2341.012451,76.515213,0,0,0,0,0,0,0,0,0,2.236995,0,0),
(76084,86,-3690.381104,2345.245850,76.337402,0,0,0,0,0,0,0,0,0,3.245447,0,0),
(76084,87,-3698.549561,2342.879150,76.427139,0,0,0,0,0,0,0,0,0,3.722970,0,0),
(76084,88,-3717.409180,2326.141357,76.245811,0,0,0,0,0,0,0,0,0,4.297956,0,0),
(76084,89,-3737.420410,2281.340332,76.548561,0,0,0,0,0,0,0,0,0,4.372634,0,0),
(76084,90,-3743.979736,2263.430664,76.788445,0,0,0,0,0,0,0,0,0,4.737056,0,0),
(76084,91,-3744.542480,2194.969727,75.759399,0,0,0,0,0,0,0,0,0,4.380478,0,0),
(76084,92,-3755.151367,2153.906738,75.879784,0,0,0,0,0,0,0,0,0,4.694641,0,0),
(76084,93,-3753.528809,2094.350098,78.186714,0,0,0,0,0,0,0,0,0,4.808832,0,0),
(76084,94,-3755.883545,2028.964844,84.589508,0,0,0,0,0,0,0,0,0,4.014794,0,0),
(76084,95,-3804.674316,1974.152100,85.766312,0,0,0,0,0,0,0,0,0,4.050085,0,0),
(76084,96,-3823.373291,1940.873291,85.793571,0,0,0,0,0,0,0,0,0,4.403508,0,0),
(76084,97,-3847.459229,1880.316650,86.671196,0,0,0,0,0,0,0,0,0,4.482045,0,0),
(76084,98,-3851.693359,1821.534180,90.711243,0,0,0,0,0,0,0,0,0,4.340673,0,0),
(76084,99,-3872.131592,1777.679199,95.302551,0,0,0,0,0,0,0,0,0,3.698221,0,0),
(76084,100,-3916.179688,1750.051025,98.817688,0,0,0,0,0,0,0,0,0,3.431185,0,0),
(76084,101,-3939.592773,1738.188721,98.840706,0,0,0,0,0,0,0,0,0,3.803211,0,0),
(76084,102,-3984.234619,1703.850220,97.653854,0,0,0,0,0,0,0,0,0,3.826773,0,0),
(76084,103,-4041.481445,1649.827393,94.430420,0,0,0,0,0,0,0,0,0,4.051397,0,0),
(76084,104,-4048.679443,1638.184448,94.230179,0,0,0,0,0,0,0,0,0,4.426031,0,0),
(76084,105,-4056.266357,1595.706909,95.221962,0,0,0,0,0,0,0,0,0,4.683635,0,0),
(76084,106,-4056.201660,1578.689453,99.722389,0,0,0,0,0,0,0,0,0,4.691489,0,0),
(76084,107,-4056.086182,1556.297974,99.601143,0,0,0,0,0,0,0,0,0,4.718977,0,0),
(76084,108,-4056.071289,1543.217407,95.549934,0,0,0,0,0,0,0,0,0,4.687562,0,0),
(76084,109,-4054.846436,1459.967285,86.260193,0,0,0,0,0,0,0,0,0,4.675782,0,0),
(76084,110,-4053.438965,1368.475098,84.998650,0,0,0,0,0,0,0,0,0,4.825004,0,0),
(76084,111,-4051.615967,1361.541748,86.305069,0,0,0,0,0,0,0,0,0,4.934962,0,0),
(76084,112,-4048.400635,1346.885864,90.650352,0,0,0,0,0,0,0,0,0,4.946743,0,0),
(76084,113,-4043.343750,1324.812134,90.462303,0,0,0,0,0,0,0,0,0,4.919254,0,0),
(76084,114,-4040.820313,1312.942261,86.656082,0,0,0,0,0,0,0,0,0,4.907474,0,0),
(76084,115,-4038.891602,1302.464600,85.018539,0,0,0,0,0,0,0,0,0,4.649864,0,0),
(76084,116,-4036.098145,1254.133057,76.924774,0,0,0,0,0,0,0,0,0,4.464514,0,0),
(76084,117,-4053.959717,1199.874390,62.299900,0,0,0,0,0,0,0,0,0,4.757571,0,0),
(76084,118,-4053.067627,1188.691650,58.984219,0,0,0,0,0,0,0,0,0,5.102362,0,0),
(76084,119,-4047.493164,1175.083008,54.979618,0,0,0,0,0,0,0,0,0,5.323054,0,0),
(76084,120,-4036.473145,1161.763794,50.858177,0,0,0,0,0,0,0,0,0,5.744080,0,0),
(76084,121,-4000.978271,1145.883423,41.543709,0,0,0,0,0,0,0,0,0,5.353954,0,0),
(76084,122,-3978.849365,1102.873535,31.045662,0,0,0,0,0,0,0,0,0,5.698748,0,0),
(76084,123,-3927.700684,1049.635376,25.697083,0,0,0,0,0,0,0,0,0,5.518888,0,0),
(76084,124,-3887.415283,1013.245178,23.771809,0,0,0,0,0,0,0,0,0,5.111267,0,0),
(76084,125,-3881.969727,1000.324890,23.333149,0,0,0,0,0,0,0,0,0,4.850514,0,0),
(76084,126,-3881.183594,971.483704,23.276503,0,0,0,0,0,0,0,0,0,4.676205,0,0),
(76084,127,-3886.400391,939.192993,21.441265,0,0,0,0,0,0,0,0,0,4.799515,0,0),
(76084,128,-3879.817871,896.107971,19.043097,0,0,0,0,0,0,0,0,0,4.364676,0,0),
(76084,129,-3888.946777,861.561401,16.429934,0,0,0,0,0,0,0,0,0,4.853976,0,0),
(76084,130,-3881.868652,806.171021,10.910946,0,0,0,0,0,0,0,0,0,4.655444,0,0),
(76084,131,-3880.361572,771.639709,9.518208,0,0,0,0,0,0,0,0,0,5.189549,0,0),
(76084,132,-3868.477295,757.249634,10.103510,0,0,0,0,0,0,0,0,0,5.893259,0,0),
(76084,133,-3844.791016,748.522827,10.550736,0,0,0,0,0,0,0,0,0,6.271817,0,0),
(76084,134,-3787.839355,747.328796,10.273446,0,0,0,0,0,0,0,0,0,0.225598,0,0),
(76084,135,-3734.136963,751.557007,7.276266,0,0,0,0,0,0,0,0,0,5.896403,0,0),
(76084,136,-3678.227539,738.307983,-0.153522,0,0,0,0,0,0,0,0,0,5.982798,0,0),
(76084,137,-3635.228027,726.306213,-5.133257,0,0,0,0,0,0,0,0,0,0.340491,0,0),
(76084,138,-3605.905273,735.287659,-9.797880,0,0,0,0,0,0,0,0,0,6.281208,0,0),
(76084,139,-3560.827637,732.204224,-13.708776,0,0,0,0,0,0,0,0,0,0.100912,0,0),
(76084,140,-3545.442139,734.291199,-17.787193,0,0,0,0,0,0,0,0,0,0.174739,0,0),
(76084,141,-3490.134521,743.578369,-33.571198,0,0,0,0,0,0,0,0,0,0.121653,0,0),
(76084,142,-3479.154053,745.004211,-34.879116,0,0,0,0,0,0,0,0,0,0.043116,0,0),
(76084,143,-3474.592041,745.134338,-34.772308,0,0,0,0,0,0,0,0,0,0.027410,0,0),
(76084,144,-3460.270508,746.147461,-31.282043,0,0,0,0,0,0,0,0,0,0.098095,0,0),
(76084,145,-3436.920898,747.958801,-32.651428,0,0,0,0,0,0,0,0,0,0.078460,0,0),
(76084,146,-3422.456787,748.798767,-37.605892,0,0,0,0,0,0,0,0,0,0.047045,0,0),
(76084,147,-3417.210205,749.005432,-38.213043,0,0,0,0,0,0,0,0,0,0.078460,0,0),
(76084,148,-3366.029541,754.998230,-30.076418,0,0,0,0,0,0,0,0,0,0.187631,0,0),
(76084,149,-3317.798096,763.204773,-23.454956,0,0,0,0,0,0,0,0,0,0.125583,0,0),
(76084,150,-3294.330078,766.641785,-21.097980,0,0,0,0,0,0,0,0,0,0.543415,0,0),
(76084,151,-3261.093506,780.744873,-19.297541,0,0,0,0,0,0,0,0,0,6.217131,0,0),
(76084,152,-3226.335693,782.849731,-19.919352,0,0,0,0,0,0,0,0,0,6.135449,0,0),
(76084,153,-3210.412598,780.317627,-20.023499,0,0,0,0,0,0,0,0,0,0.074289,0,0),
(76084,154,-3150.495361,781.181641,-21.713331,0,0,0,0,0,0,0,0,0,0.287220,0,0),
(76084,155,-3127.875977,794.105896,-22.398132,0,0,0,0,0,0,0,0,0,1.174694,0,0),
(76084,156,-3111.857910,833.129700,-21.634108,0,0,0,0,0,0,0,0,0,1.186475,0,0);

-- Netherwing Lodge  -- SHADOWMOON VALLEY
-- Yarzill the Merc - spawn point update
DELETE FROM creature_movement WHERE id = 40645;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(40645,1,-5025.940918,358.213989,170.646057,0,0,0,0,0,0,0,0,0,0.836856,0,0),
(40645,2,-5021.085938,370.144348,170.646057,0,0,0,0,0,0,0,0,0,1.675115,0,0),
(40645,3,-5022.536621,381.942108,170.646057,0,0,0,0,0,0,0,0,0,2.494576,0,0),
(40645,4,-5036.140137,385.352142,170.646057,0,0,0,0,0,0,0,0,0,3.384755,0,0),
(40645,5,-5041.895020,383.848480,170.650589,0,0,0,0,0,0,0,0,0,3.774313,0,0),
(40645,6,-5055.123535,369.245819,170.647552,0,0,0,0,0,0,0,0,0,3.992654,0,0),
(40645,7,-5063.980469,353.769531,170.676941,0,0,0,0,0,0,0,0,0,4.271467,0,0),
(40645,8,-5066.051758,346.792389,170.738739,0,0,0,0,0,0,0,0,0,4.951617,0,0),
(40645,9,-5060.086914,338.502167,170.646652,0,0,0,0,0,0,0,0,0,6.011898,0,0),
(40645,10,-5051.203613,339.110443,170.646652,0,0,0,0,0,0,0,0,0,0.272208,0,0),
(40645,11,-5040.624512,346.902283,170.647400,0,0,0,0,0,0,0,0,0,0.502459,0,0);

-- Dragonmaw Ascendant
DELETE FROM creature_movement WHERE id IN (52277, 52290, 52300, 52325, 52340, 52342, 52343, 52345, 52287);
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
-- #1
(52325,1,-5070.502930,-116.067932,60.327610,0,0,0,0,0,0,0,0,0,0.180839,0,0),
(52325,2,-5064.632813,-114.009186,61.508083,0,0,0,0,0,0,0,0,0,0.548405,0,0),
(52325,3,-5049.096680,-96.577965,62.361713,0,0,0,0,0,0,0,0,0,0.734544,0,0),
(52325,4,-5036.623047,-83.579803,65.431732,0,0,0,0,0,0,0,0,0,0.610451,0,0),
(52325,5,-5031.111816,-80.939606,62.905331,0,0,0,0,0,0,0,0,0,0.447874,0,0),
(52325,6,-5024.426270,-77.716461,65.854385,0,0,0,0,0,0,0,0,0,0.447874,0,0),
(52325,7,-5015.438965,-67.765358,67.691086,0,0,0,0,0,0,0,0,0,0.886127,0,0),
(52325,8,-5011.906250,-61.611794,64.461357,0,0,0,0,0,0,0,0,0,1.013361,0,0),
(52325,9,-5004.551270,-51.344929,69.341469,0,0,0,0,0,0,0,0,0,0.840574,0,0),
(52325,10,-4987.710938,-16.940493,72.533661,0,0,0,0,0,0,0,0,0,0.627731,0,0),
(52325,11,-4941.303223,26.979427,63.398106,0,0,0,0,0,0,0,0,0,0.628516,0,0),
(52325,12,-4968.149414,2.933745,69.995888,0,0,0,0,0,0,0,0,0,4.396853,0,0),
(52325,13,-4989.914551,-35.486301,70.622482,0,0,0,0,0,0,0,0,0,4.414920,0,0),
(52325,14,-4993.026855,-60.345798,64.453781,0,0,0,0,0,0,0,0,0,4.677238,0,0),
(52325,15,-5000.134766,-34.251274,72.946953,0,0,0,0,0,0,0,0,0,1.943266,0,0),
(52325,16,-5020.783691,4.053463,77.883904,0,0,0,0,0,0,0,0,0,2.105058,0,0),
(52325,17,-5041.414063,22.714422,78.704544,0,0,0,0,0,0,0,0,0,2.707458,0,0),
(52325,18,-5051.394043,27.889433,80.905998,0,0,0,0,0,0,0,0,0,2.624992,0,0),
(52325,19,-5087.246582,43.270084,80.860039,5000,0,0,0,0,0,0,0,0,2.813488,0,0),
(52325,20,-5130.956543,45.776180,78.492172,0,0,0,0,0,0,0,0,0,3.484391,0,0),
(52325,21,-5183.177246,13.403874,75.393982,0,0,0,0,0,0,0,0,0,4.550960,0,0),
(52325,22,-5184.929199,-31.529835,75.396851,0,0,0,0,0,0,0,0,0,5.027694,0,0),
(52325,23,-5162.590820,-81.334167,72.446838,0,0,0,0,0,0,0,0,0,5.332422,0,0),
(52325,24,-5139.111816,-103.654861,70.203743,0,0,0,0,0,0,0,0,0,5.450230,0,0),
(52325,25,-5131.106934,-112.459946,65.184784,0,0,0,0,0,0,0,0,0,5.450230,0,0),
(52325,26,-5128.835938,-119.185997,63.467590,0,0,0,0,0,0,0,0,0,5.860202,0,0),
(52325,27,-5112.839355,-123.524178,56.825024,0,0,0,0,0,0,0,0,0,0.246171,0,0),
(52325,28,-5101.716797,-121.958244,61.761196,0,0,0,0,0,0,0,0,0,0.191976,0,0),
(52325,29,-5083.126953,-126.789055,58.024788,0,0,0,0,0,0,0,0,0,0.490422,0,0),
-- #2
(52277,1,-5290.907715,363.052216,56.589378,0,0,0,0,0,0,0,0,0,4.216686,0,0),
(52277,2,-5295.512207,357.191833,52.411690,0,0,0,0,0,0,0,0,0,4.116158,0,0),
(52277,3,-5300.855957,347.925751,59.089565,0,0,0,0,0,0,0,0,0,4.169566,0,0),
(52277,4,-5303.571289,287.627502,63.324966,0,0,0,0,0,0,0,0,0,4.856772,0,0),
(52277,5,-5303.063965,279.360291,57.898800,0,0,0,0,0,0,0,0,0,4.683985,0,0),
(52277,6,-5303.721191,273.477203,59.469929,0,0,0,0,0,0,0,0,0,4.507271,0,0),
(52277,7,-5308.200195,231.415283,61.018559,0,0,0,0,0,0,0,0,0,4.644717,0,0),
(52277,8,-5307.916992,224.306122,58.381252,0,0,0,0,0,0,0,0,0,4.668277,0,0),
(52277,9,-5307.728027,217.907440,62.802059,0,0,0,0,0,0,0,0,0,4.758596,0,0),
(52277,10,-5308.517090,208.716629,65.289337,0,0,0,0,0,0,0,0,0,4.507275,0,0),
(52277,11,-5305.308594,187.234314,62.258282,0,0,0,0,0,0,0,0,0,4.621582,0,0),
(52277,12,-5305.401367,179.770935,57.106289,0,0,0,0,0,0,0,0,0,4.558284,0,0),
(52277,13,-5311.874512,151.326584,46.450638,5000,0,0,0,0,0,0,0,0,4.668467,0,0),
(52277,14,-5312.122070,140.946533,41.488174,0,0,0,0,0,0,0,0,0,5.168739,0,0),
(52277,15,-5307.339844,132.278366,35.433846,0,0,0,0,0,0,0,0,0,5.210368,0,0),
(52277,16,-5299.787109,117.375458,33.806450,0,0,0,0,0,0,0,0,0,5.214295,0,0),
(52277,17,-5292.297363,103.793884,31.877171,0,0,0,0,0,0,0,0,0,4.990453,0,0),
(52277,18,-5289.161621,95.319992,36.671707,0,0,0,0,0,0,0,0,0,5.002237,0,0),
(52277,19,-5285.411133,83.016708,36.229607,0,0,0,0,0,0,0,0,0,5.017945,0,0),
(52277,20,-5281.412109,76.228661,32.085876,0,0,0,0,0,0,0,0,0,5.241781,0,0),
(52277,21,-5277.860352,66.678436,38.988674,0,0,0,0,0,0,0,0,0,5.010093,0,0),
(52277,22,-5273.012695,50.932442,41.787563,0,0,0,0,0,0,0,0,0,5.080778,0,0),
(52277,23,-5268.845703,43.865265,39.514637,0,0,0,0,0,0,0,0,0,5.261418,0,0),
(52277,24,-5266.167969,33.453190,46.147083,0,0,0,0,0,0,0,0,0,4.884424,0,0),
(52277,25,-5257.895020,-2.851559,48.485210,0,0,0,0,0,0,0,0,0,5.017941,0,0),
(52277,26,-5257.724609,-12.373156,42.222034,0,0,0,0,0,0,0,0,0,5.139679,0,0),
(52277,27,-5256.320313,-17.648735,46.187725,0,0,0,0,0,0,0,0,0,4.982599,0,0),
(52277,28,-5255.209961,-22.424278,47.321621,0,0,0,0,0,0,0,0,0,4.955109,0,0),
(52277,29,-5250.235840,-33.297203,43.582069,0,0,0,0,0,0,0,0,0,5.222141,0,0),
(52277,30,-5244.876953,-37.080185,39.189907,0,0,0,0,0,0,0,0,0,5.215858,0,0),
(52277,31,-5237.708008,-46.515030,51.707230,0,0,0,0,0,0,0,0,0,5.139676,0,0),
(52277,32,-5229.210449,-62.370167,58.693974,0,0,0,0,0,0,0,0,0,5.147531,0,0),
(52277,33,-5233.082520,-40.226986,53.400574,0,0,0,0,0,0,0,0,0,1.868493,0,0),
(52277,34,-5237.760742,-31.383520,44.659588,0,0,0,0,0,0,0,0,0,2.237630,0,0),
(52277,35,-5241.584473,-20.494122,49.157261,0,0,0,0,0,0,0,0,0,2.118248,0,0),
(52277,36,-5247.444824,-6.065393,45.867428,0,0,0,0,0,0,0,0,0,2.049132,0,0),
(52277,37,-5251.910645,1.693215,51.552994,0,0,0,0,0,0,0,0,0,1.808015,0,0),
(52277,38,-5264.335938,32.885872,47.495491,0,0,0,0,0,0,0,0,0,2.137104,0,0),
(52277,39,-5268.066895,43.773495,39.852619,0,0,0,0,0,0,0,0,0,1.845766,0,0),
(52277,40,-5272.213867,52.937599,42.334877,0,0,0,0,0,0,0,0,0,2.048399,0,0),
(52277,41,-5276.152344,69.207680,39.163967,0,0,0,0,0,0,0,0,0,1.767226,0,0),
(52277,42,-5277.662598,75.812805,34.087841,0,0,0,0,0,0,0,0,0,1.786861,0,0),
(52277,43,-5280.679199,82.468361,36.999390,0,0,0,0,0,0,0,0,0,1.920378,0,0),
(52277,44,-5293.492188,95.623009,34.534363,0,0,0,0,0,0,0,0,0,1.424007,0,0),
(52277,45,-5293.167480,103.405945,31.315495,0,0,0,0,0,0,0,0,0,2.163854,0,0),
(52277,46,-5300.581055,121.525940,34.191917,0,0,0,0,0,0,0,0,0,2.111229,0,0),
(52277,47,-5308.347168,133.577530,35.886951,0,0,0,0,0,0,0,0,0,1.797070,0,0),
(52277,48,-5312.659180,150.050034,45.817963,0,0,0,0,0,0,0,0,0,1.449139,0,0),
(52277,49,-5307.796875,180.839767,56.755650,0,0,0,0,0,0,0,0,0,1.979273,0,0),
(52277,50,-5311.044434,191.567841,62.319286,0,0,0,0,0,0,0,0,0,1.665116,0,0),
(52277,51,-5310.374512,216.690063,63.115067,0,0,0,0,0,0,0,0,0,1.669043,0,0),
(52277,52,-5311.461426,224.140442,58.032101,0,0,0,0,0,0,0,0,0,1.427925,0,0),
(52277,53,-5311.844238,230.134018,60.389263,0,0,0,0,0,0,0,0,0,1.637627,0,0),
(52277,54,-5293.218262,276.868134,60.556976,0,0,0,0,0,0,0,0,0,1.531597,0,0),
(52277,55,-5293.963379,287.289612,65.909325,0,0,0,0,0,0,0,0,0,1.535524,0,0),
(52277,56,-5299.176758,348.541992,59.105221,0,0,0,0,0,0,0,0,0,0.662161,0,0),
(52277,57,-5291.618652,354.488983,55.175137,0,0,0,0,0,0,0,0,0,1.134973,0,0),
(52277,58,-5289.816406,364.325287,57.256786,0,0,0,0,0,0,0,0,0,1.064287,0,0),
(52277,59,-5279.614258,403.196869,53.742599,0,0,0,0,0,0,0,0,0,1.433424,0,0),
(52277,60,-5276.423340,412.477753,50.205746,0,0,0,0,0,0,0,0,0,1.193877,0,0),
(52277,61,-5273.454102,422.415375,55.957722,0,0,0,0,0,0,0,0,0,1.264563,0,0),
(52277,62,-5265.551758,445.325012,55.190628,0,0,0,0,0,0,0,0,0,1.213512,0,0),
(52277,63,-5273.416016,421.214600,55.831219,0,0,0,0,0,0,0,0,0,4.586797,0,0),
(52277,64,-5273.334473,412.955902,51.595051,0,0,0,0,0,0,0,0,0,4.700679,0,0),
(52277,65,-5273.899414,405.262024,55.030918,0,0,0,0,0,0,0,0,0,4.352756,0,0),
(52277,66,-5285.717773,376.850555,56.314407,0,0,0,0,0,0,0,0,0,4.276573,0,0),
-- #3
(52340,1,-5172.240234,339.067474,72.759125,0,0,0,0,0,0,0,0,0,2.114083,0,0),
(52340,2,-5194.781250,377.631683,71.671379,0,0,0,0,0,0,0,0,0,2.030126,0,0),
(52340,3,-5174.905762,343.632996,72.520363,0,0,0,0,0,0,0,0,0,4.802580,0,0),
(52340,4,-5177.588379,310.121613,73.830910,0,0,0,0,0,0,0,0,0,4.150705,0,0),
(52340,5,-5204.928223,269.944733,71.047112,0,0,0,0,0,0,0,0,0,4.593675,0,0),
(52340,6,-5207.864746,241.570557,72.124985,0,0,0,0,0,0,0,0,0,4.871700,0,0),
(52340,7,-5207.646973,205.291229,72.931938,5000,0,0,0,0,0,0,0,0,4.665140,0,0),
(52340,8,-5209.452637,175.981567,70.811317,0,0,0,0,0,0,0,0,0,4.921964,0,0),
(52340,9,-5197.362305,143.342117,70.508858,0,0,0,0,0,0,0,0,0,5.183495,0,0),
(52340,10,-5190.050293,122.058273,72.723206,0,0,0,0,0,0,0,0,0,4.593664,0,0),
(52340,11,-5189.060547,105.794777,71.654549,0,0,0,0,0,0,0,0,0,4.425589,0,0),
(52340,12,-5187.432617,127.455391,73.066536,0,0,0,0,0,0,0,0,0,2.184847,0,0),
(52340,13,-5205.381348,157.694199,69.662918,0,0,0,0,0,0,0,0,0,1.602081,0,0),
(52340,14,-5210.468262,184.161636,71.919975,0,0,0,0,0,0,0,0,0,1.416727,0,0),
(52340,15,-5202.514648,269.612671,71.217438,0,0,0,0,0,0,0,0,0,0.783696,0,0),
(52340,16,-5177.233887,312.174500,73.839745,0,0,0,0,0,0,0,0,0,1.360178,0,0),
(52340,17,-5175.718262,318.395630,73.819077,0,0,0,0,0,0,0,0,0,1.306984,0,0),
-- #4
(52343,1,-5195.156250,565.076233,70.801422,0,0,0,0,0,0,0,0,0,1.986865,0,0),
(52343,2,-5199.070313,575.010681,53.778988,0,0,0,0,0,0,0,0,0,1.983727,0,0),
(52343,3,-5204.022949,580.803406,56.817524,0,0,0,0,0,0,0,0,0,1.926393,0,0),
(52343,4,-5212.537598,608.596802,64.880768,0,0,0,0,0,0,0,0,0,1.328704,0,0),
(52343,5,-5209.294434,616.226929,64.186356,0,0,0,0,0,0,0,0,0,0.905375,0,0),
(52343,6,-5204.227051,623.499023,67.875839,0,0,0,0,0,0,0,0,0,1.129999,0,0),
(52343,7,-5189.326660,634.352661,71.861053,0,0,0,0,0,0,0,0,0,0.581006,0,0),
(52343,8,-5204.627441,620.508362,67.162285,0,0,0,0,0,0,0,0,0,3.860044,0,0),
(52343,9,-5210.893066,615.116150,63.980988,0,0,0,0,0,0,0,0,0,3.852190,0,0),
(52343,10,-5216.261230,609.984924,64.481689,0,0,0,0,0,0,0,0,0,3.903241,0,0),
(52343,11,-5224.559570,566.855347,47.304302,0,0,0,0,0,0,0,0,0,4.172625,0,0),
(52343,12,-5227.379395,559.985229,53.087490,0,0,0,0,0,0,0,0,0,4.315570,0,0),
(52343,13,-5237.896973,537.340271,53.996040,0,0,0,0,0,0,0,0,0,4.170273,0,0),
(52343,14,-5242.056641,530.540100,49.474659,0,0,0,0,0,0,0,0,0,4.185981,0,0),
(52343,15,-5246.776367,521.549622,52.474415,0,0,0,0,0,0,0,0,0,4.240958,0,0),
(52343,16,-5254.154297,508.424011,50.465721,0,0,0,0,0,0,0,0,0,4.331276,0,0),
(52343,17,-5257.337402,494.119720,46.677887,0,0,0,0,0,0,0,0,0,4.387040,0,0),
(52343,18,-5261.916992,482.807343,51.428932,0,0,0,0,0,0,0,0,0,4.429452,0,0),
(52343,19,-5262.477539,441.758453,56.260872,0,0,0,0,0,0,0,0,0,4.425529,0,0),
(52343,20,-5266.505859,420.741089,58.781723,0,0,0,0,0,0,0,0,0,4.551190,0,0),
(52343,21,-5246.024902,409.897675,66.421135,0,0,0,0,0,0,0,0,0,4.381518,0,0),
(52343,22,-5245.267578,398.414734,58.818958,0,0,0,0,0,0,0,0,0,4.582582,0,0),
(52343,23,-5241.890137,387.254181,65.879433,0,0,0,0,0,0,0,0,0,5.488146,0,0),
(52343,24,-5230.672363,386.355530,75.437973,0,0,0,0,0,0,0,0,0,6.131382,0,0),
(52343,25,-5210.382324,392.610291,73.800262,0,0,0,0,0,0,0,0,0,5.560402,0,0),
(52343,26,-5176.199707,347.621429,72.452110,0,0,0,0,0,0,0,0,0,4.981198,0,0),
(52343,27,-5176.051270,321.149872,73.642220,0,0,0,0,0,0,0,0,0,4.296336,0,0),
(52343,28,-5193.800293,284.168671,72.259407,0,0,0,0,0,0,0,0,0,3.793683,0,0),
(52343,29,-5220.626465,265.000061,70.335510,0,0,0,0,0,0,0,0,0,2.976871,0,0),
(52343,30,-5254.170898,271.712280,68.370590,0,0,0,0,0,0,0,0,0,2.394310,0,0),
(52343,31,-5263.289551,278.413788,72.495644,0,0,0,0,0,0,0,0,0,2.414730,0,0),
(52343,32,-5276.281250,289.806061,69.973999,0,0,0,0,0,0,0,0,0,1.557072,0,0),
(52343,33,-5282.189453,312.423553,71.998207,0,0,0,0,0,0,0,0,0,1.491882,0,0),
(52343,34,-5281.322754,321.442444,66.051102,0,0,0,0,0,0,0,0,0,1.405488,0,0),
(52343,35,-5279.074219,335.619781,72.318130,0,0,0,0,0,0,0,0,0,1.340300,0,0),
(52343,36,-5264.794434,374.443726,61.703194,0,0,0,0,0,0,0,0,0,1.095257,0,0),
(52343,37,-5257.163574,400.631500,61.410007,0,0,0,0,0,0,0,0,0,1.244482,0,0),
(52343,38,-5255.252441,407.241058,58.365822,0,0,0,0,0,0,0,0,0,1.275898,0,0),
(52343,39,-5252.680664,417.787109,64.527412,0,0,0,0,0,0,0,0,0,1.378000,0,0),
(52343,40,-5229.133301,468.888519,64.478661,0,0,0,0,0,0,0,0,0,1.209139,0,0),
(52343,41,-5227.991699,474.365784,64.327026,5000,0,0,0,0,0,0,0,0,0.723764,0,0),
(52343,42,-5220.117188,480.275421,72.887589,0,0,0,0,0,0,0,0,0,0.845495,0,0),
(52343,43,-5189.267578,542.059204,75.094421,0,0,0,0,0,0,0,0,0,1.485589,0,0),
-- #5
(52342,1,-5158.186035,453.515717,77.053070,0,0,0,0,0,0,0,0,0,0.672683,0,0),
(52342,2,-5106.848633,489.977020,83.184807,0,0,0,0,0,0,0,0,0,6.238018,0,0),
(52342,3,-5063.629395,481.985748,84.045906,0,0,0,0,0,0,0,0,0,5.835112,0,0),
(52342,4,-5003.259277,448.784454,87.826363,5000,0,0,0,0,0,0,0,0,5.510742,0,0),
(52342,5,-4982.915527,423.205933,87.587448,0,0,0,0,0,0,0,0,0,0.054588,0,0),
(52342,6,-4970.524414,430.572845,86.125603,0,0,0,0,0,0,0,0,0,2.082483,0,0),
(52342,7,-5012.542480,477.171844,87.492493,0,0,0,0,0,0,0,0,0,2.302395,0,0),
(52342,8,-5049.715820,500.540833,86.367691,0,0,0,0,0,0,0,0,0,2.927849,0,0),
(52342,9,-5104.353516,501.469574,84.585197,0,0,0,0,0,0,0,0,0,3.424221,0,0),
(52342,10,-5178.831055,483.408112,77.085693,0,0,0,0,0,0,0,0,0,2.448755,0,0),
(52342,11,-5189.783203,493.596954,76.134567,0,0,0,0,0,0,0,0,0,1.564396,0,0),
(52342,12,-5208.622070,527.071106,70.951950,0,0,0,0,0,0,0,0,0,1.836144,0,0),
(52342,13,-5212.144043,540.171692,61.185783,0,0,0,0,0,0,0,0,0,1.839285,0,0),
(52342,14,-5215.442383,558.574463,57.189358,0,0,0,0,0,0,0,0,0,1.737969,0,0),
(52342,15,-5215.935059,567.496338,49.427425,0,0,0,0,0,0,0,0,0,1.565181,0,0),
(52342,16,-5215.135254,574.766418,52.485565,0,0,0,0,0,0,0,0,0,1.455225,0,0),
(52342,17,-5212.282715,608.906982,64.797676,0,0,0,0,0,0,0,0,0,1.145778,0,0),
(52342,18,-5209.834473,614.863525,63.913105,0,0,0,0,0,0,0,0,0,1.188190,0,0),
(52342,19,-5205.969238,622.809387,67.659607,0,0,0,0,0,0,0,0,0,1.078234,0,0),
(52342,20,-5210.546387,614.686340,63.891621,0,0,0,0,0,0,0,0,0,4.555191,0,0),
(52342,21,-5214.535156,574.944031,52.685890,0,0,0,0,0,0,0,0,0,4.586592,0,0),
(52342,22,-5214.759277,570.365051,49.631042,0,0,0,0,0,0,0,0,0,4.669058,0,0),
(52342,23,-5214.847168,565.998108,50.397671,0,0,0,0,0,0,0,0,0,4.696546,0,0),
(52342,24,-5216.831055,559.301941,56.296917,0,0,0,0,0,0,0,0,0,4.460927,0,0),
(52342,25,-5215.856934,535.618164,61.057156,0,0,0,0,0,0,0,0,0,4.833985,0,0),
(52342,26,-5209.746094,521.279724,72.817780,0,0,0,0,0,0,0,0,0,4.857552,0,0),
(52342,27,-5198.728027,453.445831,74.006615,0,0,0,0,0,0,0,0,0,4.625861,0,0),
(52342,28,-5202.410645,418.698792,74.182228,0,0,0,0,0,0,0,0,0,4.751519,0,0),
(52342,29,-5202.756836,402.492828,74.631287,0,0,0,0,0,0,0,0,0,5.289518,0,0),
(52342,30,-5197.430664,395.630676,72.999641,0,0,0,0,0,0,0,0,0,5.794523,0,0),
(52342,31,-5186.571777,396.301483,72.396294,0,0,0,0,0,0,0,0,0,0.728612,0,0),
(52342,32,-5180.186035,410.189270,73.956497,0,0,0,0,0,0,0,0,0,0.980726,0,0),
-- #6
(52300,1,-4968.907227,564.906860,75.985275,0,0,0,0,0,0,0,0,0,3.888235,0,0),
(52300,2,-5006.411621,538.123352,88.086937,0,0,0,0,0,0,0,0,0,3.621200,0,0),
(52300,3,-5003.730957,525.966553,85.027222,0,0,0,0,0,0,0,0,0,5.089888,0,0),
(52300,4,-4998.309570,520.347473,87.477058,0,0,0,0,0,0,0,0,0,0.145801,0,0),
(52300,5,-4974.663574,529.012756,80.401627,0,0,0,0,0,0,0,0,0,0.381415,0,0),
(52300,6,-4965.263184,535.709534,69.900093,0,0,0,0,0,0,0,0,0,0.059396,0,0),
(52300,7,-4953.235840,534.212097,66.991600,0,0,0,0,0,0,0,0,0,0.836148,0,0),
(52300,8,-4945.807617,540.508911,68.418495,0,0,0,0,0,0,0,0,0,0.236104,0,0),
(52300,9,-4916.483887,543.304443,62.958363,0,0,0,0,0,0,0,0,0,0.791377,0,0),
(52300,10,-4909.368652,562.154053,60.909168,0,0,0,0,0,0,0,0,0,0.859707,0,0),
(52300,11,-4904.076660,571.916077,53.414864,0,0,0,0,0,0,0,0,0,0.324065,0,0),
(52300,12,-4893.828613,573.609253,60.703503,0,0,0,0,0,0,0,0,0,0.291865,0,0),
(52300,13,-4857.485352,628.259705,67.924782,0,0,0,0,0,0,0,0,0,1.524158,0,0),
(52300,14,-4857.961914,637.210083,58.751568,0,0,0,0,0,0,0,0,0,1.707940,0,0),
(52300,15,-4858.250977,647.230530,63.745636,0,0,0,0,0,0,0,0,0,1.671811,0,0),
(52300,16,-4878.143066,692.735718,64.818855,0,0,0,0,0,0,0,0,0,2.782364,0,0),
(52300,17,-4896.209473,693.262390,70.191330,0,0,0,0,0,0,0,0,0,4.044499,0,0),
(52300,18,-4909.974121,677.685242,73.790382,0,0,0,0,0,0,0,0,0,2.945727,0,0),
(52300,19,-4922.159668,682.219421,67.008965,5000,0,0,0,0,0,0,0,0,2.765085,0,0),
(52300,20,-4931.154297,676.950745,76.655739,0,0,0,0,0,0,0,0,0,2.933160,0,0),
(52300,21,-4948.810547,680.285706,77.981636,0,0,0,0,0,0,0,0,0,2.897175,0,0),
(52300,22,-4950.705566,687.781494,73.110153,0,0,0,0,0,0,0,0,0,2.306556,0,0),
(52300,23,-4960.765625,692.590698,83.600182,0,0,0,0,0,0,0,0,0,2.176175,0,0),
(52300,24,-4978.561035,709.888306,82.863327,0,0,0,0,0,0,0,0,0,2.761297,0,0),
(52300,25,-4992.410156,708.658325,82.753471,0,0,0,0,0,0,0,0,0,3.604030,0,0),
(52300,26,-5007.201172,698.180725,81.634239,0,0,0,0,0,0,0,0,0,3.770534,0,0),
(52300,27,-4987.950684,706.960449,82.947151,0,0,0,0,0,0,0,0,0,6.251607,0,0),
(52300,28,-4975.798340,702.999695,83.180725,0,0,0,0,0,0,0,0,0,5.388459,0,0),
(52300,29,-4964.813965,686.714294,81.552696,0,0,0,0,0,0,0,0,0,5.325629,0,0),
(52300,30,-4960.592773,679.869202,73.932114,0,0,0,0,0,0,0,0,0,5.368825,0,0),
(52300,31,-4955.393066,671.400879,77.730667,0,0,0,0,0,0,0,0,0,4.970631,0,0),
(52300,32,-4948.793457,653.599365,76.198723,0,0,0,0,0,0,0,0,0,4.716954,0,0),
(52300,33,-4949.179688,646.003540,67.249069,0,0,0,0,0,0,0,0,0,4.709101,0,0),
(52300,34,-4951.352539,638.850525,74.476768,0,0,0,0,0,0,0,0,0,4.391016,0,0),
(52300,35,-4955.179199,608.845154,75.220680,0,0,0,0,0,0,0,0,0,4.545736,0,0),
-- #7
(52290,1,-4859.355469,427.320007,61.654858,0,0,0,0,0,0,0,0,0,1.586479,0,0),
(52290,2,-4853.115234,397.799072,57.423172,0,0,0,0,0,0,0,0,0,4.999028,0,0),
(52290,3,-4851.234863,392.442657,53.926666,0,0,0,0,0,0,0,0,0,5.046151,0,0),
(52290,4,-4848.261230,388.272186,53.663586,0,0,0,0,0,0,0,0,0,5.368163,0,0),
(52290,5,-4845.099609,380.154419,59.198357,0,0,0,0,0,0,0,0,0,5.018664,0,0),
(52290,6,-4842.223145,349.836945,58.120758,0,0,0,0,0,0,0,0,0,4.564707,0,0),
(52290,7,-4852.434082,307.037659,53.817745,0,0,0,0,0,0,0,0,0,4.188504,0,0),
(52290,8,-4855.626953,298.566223,48.057076,0,0,0,0,0,0,0,0,0,4.335375,0,0),
(52290,9,-4859.017090,288.522247,46.362022,0,0,0,0,0,0,0,0,0,4.409987,0,0),
(52290,10,-4862.751953,266.018616,48.423530,0,0,0,0,0,0,0,0,0,4.204993,0,0),
(52290,11,-4863.826172,258.824615,47.675808,0,0,0,0,0,0,0,0,0,4.605546,0,0),
(52290,12,-4865.286621,252.217361,44.938408,0,0,0,0,0,0,0,0,0,4.491664,0,0),
(52290,13,-4868.478027,246.530273,48.672142,0,0,0,0,0,0,0,0,0,4.157872,0,0),
(52290,14,-4896.425293,218.326782,53.770172,0,0,0,0,0,0,0,0,0,4.300817,0,0),
(52290,15,-4902.372070,212.515976,55.292305,0,0,0,0,0,0,0,0,0,3.011192,0,0),
(52290,16,-4908.109375,217.769852,57.575146,0,0,0,0,0,0,0,0,0,2.001955,0,0),
(52290,17,-4882.522949,247.057159,51.095474,0,0,0,0,0,0,0,0,0,0.843493,0,0),
(52290,18,-4877.260254,254.417084,45.522823,0,0,0,0,0,0,0,0,0,0.548183,0,0),
(52290,19,-4870.201660,259.174194,45.053471,0,0,0,0,0,0,0,0,0,0.596092,0,0),
(52290,20,-4865.645020,262.171906,48.202465,0,0,0,0,0,0,0,0,0,0.724898,0,0),
(52290,21,-4859.878418,271.297852,47.185291,0,0,0,0,0,0,0,0,0,0.968371,0,0),
(52290,22,-4856.106934,279.045502,43.235283,0,0,0,0,0,0,0,0,0,1.133305,0,0),
(52290,23,-4853.096680,287.128113,47.215561,0,0,0,0,0,0,0,0,0,1.160794,0,0),
(52290,24,-4854.151367,299.052063,48.473961,0,0,0,0,0,0,0,0,0,1.119953,0,0),
(52290,25,-4850.580078,307.614655,53.562973,0,0,0,0,0,0,0,0,0,1.135661,0,0),
(52290,26,-4842.869629,336.700653,56.768265,0,0,0,0,0,0,0,0,0,1.319444,0,0),
(52290,27,-4840.476563,356.910095,58.407158,0,0,0,0,0,0,0,0,0,1.590407,0,0),
(52290,28,-4849.076172,381.176025,59.498211,0,0,0,0,0,0,0,0,0,1.786756,0,0),
(52290,29,-4851.053711,388.443146,54.675251,0,0,0,0,0,0,0,0,0,1.841733,0,0),
(52290,30,-4852.994629,399.077179,57.698811,0,0,0,0,0,0,0,0,0,1.747486,0,0),
(52290,31,-4857.241699,408.145203,59.712208,0,0,0,0,0,0,0,0,0,1.786756,0,0),
-- #8
(52345,1,-5216.088867,677.992676,64.581711,0,0,0,0,0,0,0,0,0,2.977523,0,0),
(52345,2,-5251.654297,687.341003,50.760311,0,0,0,0,0,0,0,0,0,2.233648,0,0),
(52345,3,-5260.997070,709.617493,44.490032,0,0,0,0,0,0,0,0,0,1.039115,0,0),
(52345,4,-5258.849609,714.803162,39.575397,0,0,0,0,0,0,0,0,0,1.208761,0,0),
(52345,5,-5244.955566,730.484558,42.089546,0,0,0,0,0,0,0,0,0,0.316547,0,0),
(52345,6,-5233.936523,733.952759,43.854515,0,0,0,0,0,0,0,0,0,0.084854,0,0),
(52345,7,-5225.166992,734.488708,52.614071,0,0,0,0,0,0,0,0,0,5.994977,0,0),
(52345,8,-5212.524902,732.193542,52.060528,0,0,0,0,0,0,0,0,0,6.273794,0,0),
(52345,9,-5205.473145,733.646851,55.519600,0,0,0,0,0,0,0,0,0,0.214447,0,0),
(52345,10,-5183.411133,730.609436,62.559532,0,0,0,0,0,0,0,0,0,6.093570,0,0),
(52345,11,-5169.930176,732.124268,70.400597,0,0,0,0,0,0,0,0,0,0.429276,0,0),
(52345,12,-5150.320801,739.789734,72.547348,0,0,0,0,0,0,0,0,0,5.361585,0,0),
(52345,13,-5142.995605,730.137695,71.678581,0,0,0,0,0,0,0,0,0,5.361585,0,0),
(52345,14,-5136.031738,725.057190,77.383522,0,0,0,0,0,0,0,0,0,5.695374,0,0),
(52345,15,-5121.170898,713.446960,79.024590,0,0,0,0,0,0,0,0,0,5.640395,0,0),
(52345,16,-5098.094727,693.697937,85.098770,0,0,0,0,0,0,0,0,0,5.471538,0,0),
(52345,17,-5082.645508,679.746704,86.764961,0,0,0,0,0,0,0,0,0,6.194096,0,0),
(52345,18,-5056.451660,680.201843,86.814064,0,0,0,0,0,0,0,0,0,0.024792,0,0),
(52345,19,-5046.073242,681.090698,85.107903,0,0,0,0,0,0,0,0,0,0.056208,0,0),
(52345,20,-5017.478027,683.719910,82.120621,0,0,0,0,0,0,0,0,0,6.276561,0,0),
(52345,21,-5010.731445,689.031982,81.551132,0,0,0,0,0,0,0,0,0,1.289282,0,0),
(52345,22,-5015.490234,692.283142,81.387054,0,0,0,0,0,0,0,0,0,2.828663,0,0),
(52345,23,-5029.653809,685.604919,82.391136,0,0,0,0,0,0,0,0,0,3.248066,0,0),
(52345,24,-5060.279785,683.178040,86.156212,0,0,0,0,0,0,0,0,0,3.292048,0,0),
(52345,25,-5073.236328,678.661255,86.892059,0,0,0,0,0,0,0,0,0,2.961395,0,0),
(52345,26,-5094.851563,679.146790,85.369606,0,0,0,0,0,0,0,0,0,3.730300,0,0),
(52345,27,-5106.977051,672.888123,85.397537,0,0,0,0,0,0,0,0,0,3.280913,0,0),
(52345,28,-5142.348633,666.692810,81.258224,0,0,0,0,0,0,0,0,0,3.026446,0,0),
(52345,29,-5189.733398,683.031006,70.061989,0,0,0,0,0,0,0,0,0,3.093205,0,0),
-- #9
(52287,1,-5035.623535,238.973404,100.022247,0,0,0,0,0,0,0,0,0,4.435727,0,0),
(52287,2,-5056.447266,189.601929,119.037460,0,0,0,0,0,0,0,0,0,4.293076,0,0),
(52287,3,-5069.326660,170.666153,128.500488,0,0,0,0,0,0,0,0,0,3.629092,0,0),
(52287,4,-5090.681152,155.489594,129.719208,0,0,0,0,0,0,0,0,0,3.767102,0,0),
(52287,5,-5100.707520,153.752106,129.759750,0,0,0,0,0,0,0,0,0,2.644767,0,0),
(52287,6,-5105.751465,163.456146,129.760223,0,0,0,0,0,0,0,0,0,1.562488,0,0),
(52287,7,-5104.550781,176.361099,130.190125,0,0,0,0,0,0,0,0,0,1.547210,0,0),
(52287,8,-5107.651855,199.590271,136.026016,0,0,0,0,0,0,0,0,0,1.421546,0,0),
(52287,9,-5100.539551,235.210403,145.359070,0,0,0,0,0,0,0,0,0,1.527784,0,0),
(52287,10,-5095.825684,275.448059,155.658295,0,0,0,0,0,0,0,0,0,1.647950,0,0),
(52287,11,-5093.687012,305.897156,163.504333,0,0,0,0,0,0,0,0,0,1.372275,0,0),
(52287,12,-5088.877441,311.633392,165.473602,0,0,0,0,0,0,0,0,0,0.197319,0,0),
(52287,13,-5083.657227,307.726318,165.131058,0,0,0,0,0,0,0,0,0,5.091139,0,0),
(52287,14,-5092.817871,275.552063,156.111801,0,0,0,0,0,0,0,0,0,4.376434,0,0),
(52287,15,-5103.534668,236.390671,145.244873,0,0,0,0,0,0,0,0,0,4.719651,0,0),
(52287,16,-5108.447754,187.181915,132.882339,0,0,0,0,0,0,0,0,0,4.915212,0,0),
(52287,17,-5097.695313,171.262650,129.810410,0,0,0,0,0,0,0,0,0,5.614210,0,0),
(52287,18,-5084.600098,164.901596,129.265427,0,0,0,0,0,0,0,0,0,0.254648,0,0),
(52287,19,-5066.662598,171.763336,127.821930,0,0,0,0,0,0,0,0,0,0.687401,0,0),
(52287,20,-5056.019043,185.990753,119.917549,0,0,0,0,0,0,0,0,0,1.252103,0,0),
(52287,21,-5042.768555,221.463867,106.548401,0,0,0,0,0,0,0,0,0,1.164924,0,0),
(52287,22,-5022.037109,264.200470,90.158600,0,0,0,0,0,0,0,0,0,1.116576,0,0),
(52287,23,-5013.068848,279.828064,84.172272,0,0,0,0,0,0,0,0,0,0.757649,0,0),
(52287,24,-4985.208008,301.837433,81.361488,0,0,0,0,0,0,0,0,0,1.285440,0,0),
(52287,25,-4965.482422,363.071777,83.489449,0,0,0,0,0,0,0,0,0,1.082022,0,0),
(52287,26,-4934.094238,384.810242,83.271507,0,0,0,0,0,0,0,0,0,0.346329,0,0),
(52287,27,-4918.101563,389.839691,69.702660,0,0,0,0,0,0,0,0,0,0.253652,0,0),
(52287,28,-4909.631348,394.311920,68.194824,0,0,0,0,0,0,0,0,0,0.559958,0,0),
(52287,29,-4893.185547,406.208618,64.129158,0,0,0,0,0,0,0,0,0,0.630193,0,0),
(52287,30,-4886.881348,414.296906,66.191269,0,0,0,0,0,0,0,0,0,0.897229,0,0),
(52287,31,-4868.070313,437.712524,63.698547,0,0,0,0,0,0,0,0,0,1.142273,0,0),
(52287,32,-4866.394531,442.677795,60.698242,0,0,0,0,0,0,0,0,0,1.234950,0,0),
(52287,33,-4864.232422,451.362335,63.333035,0,0,0,0,0,0,0,0,0,1.392030,0,0),
(52287,34,-4868.041504,484.172852,64.982056,0,0,0,0,0,0,0,0,0,2.085537,0,0),
(52287,35,-4890.498047,513.275024,62.948318,0,0,0,0,0,0,0,0,0,2.676157,0,0),
(52287,36,-4907.866211,520.663635,62.363396,0,0,0,0,0,0,0,0,0,2.674584,0,0),
(52287,37,-4915.025879,526.035950,55.917591,0,0,0,0,0,0,0,0,0,2.525362,0,0),
(52287,38,-4922.980957,532.514832,58.779232,0,0,0,0,0,0,0,0,0,2.466457,0,0),
(52287,39,-4931.068848,533.198608,62.769844,0,0,0,0,0,0,0,0,0,3.181170,0,0),
(52287,40,-4946.566406,534.135437,66.236389,0,0,0,0,0,0,0,0,0,2.768836,0,0),
(52287,41,-4954.485352,537.256897,68.151184,0,0,0,0,0,0,0,0,0,2.760982,0,0),
(52287,42,-4963.461426,540.731018,68.080063,0,0,0,0,0,0,0,0,0,2.772763,0,0),
(52287,43,-4972.602539,537.989807,71.198639,0,0,0,0,0,0,0,0,0,3.483549,0,0),
(52287,44,-4988.835449,531.567932,79.975243,0,0,0,0,0,0,0,0,0,3.523135,0,0),
(52287,45,-5004.817383,522.700439,86.700554,0,0,0,0,0,0,0,0,0,4.265340,0,0),
(52287,46,-5016.979492,501.581665,87.574593,0,0,0,0,0,0,0,0,0,4.585781,0,0),
(52287,47,-5017.077148,486.985809,86.759949,0,0,0,0,0,0,0,0,0,5.196030,0,0),
(52287,48,-5015.115723,470.392181,87.796387,7000,0,0,0,0,0,0,0,0,5.537671,0,0), 
(52287,49,-4987.509766,441.990723,87.376831,0,0,0,0,0,0,0,0,0,5.470912,0,0),
(52287,50,-4966.164063,399.948517,85.714317,0,0,0,0,0,0,0,0,0,4.852030,0,0),
(52287,51,-4967.791016,373.053162,84.084099,0,0,0,0,0,0,0,0,0,4.599132,0,0),
(52287,52,-4976.341797,326.112061,83.258492,0,0,0,0,0,0,0,0,0,4.284974,0,0),
(52287,53,-4985.730957,297.475677,81.229820,0,0,0,0,0,0,0,0,0,4.000661,0,0),
(52287,54,-5008.942383,280.523010,83.839485,0,0,0,0,0,0,0,0,0,3.878028,0,0);
-- Dragonmaw Transporter - wps
DELETE FROM creature_movement WHERE id IN (132814, 132815, 132816, 132817, 132818);
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
-- #1
(132817,1,-4893.179688,40.324131,77.086365,0,0,0,0,0,0,0,0,0,0.396670,0,0),
(132817,2,-4834.999512,58.668839,78.464401,0,0,0,0,0,0,0,0,0,0.306348,0,0),
(132817,3,-4764.657227,83.193497,89.341812,0,0,0,0,0,0,0,0,0,0.333837,0,0),
(132817,4,-4678.085938,128.861664,114.115448,0,0,0,0,0,0,0,0,0,0.341691,0,0),
(132817,5,-4568.319336,144.278641,118.211838,0,0,0,0,0,0,0,0,0,0.527046,0,0),
(132817,6,-4493.858398,177.530350,119.159912,0,0,0,0,0,0,0,0,0,0.408450,0,0),
(132817,7,-4433.637207,210.768906,123.477577,0,0,0,0,0,0,0,0,0,0.502698,0,0),
(132817,8,-4379.307617,230.722824,133.888611,0,0,0,0,0,0,0,0,0,0.696691,0,0),
(132817,9,-4335.028320,257.565338,185.894943,0,0,0,0,0,0,0,0,0,0.548943,0,0),
(132817,10,-4263.415039,296.490997,209.076141,0,0,0,0,0,0,0,0,0,0.501818,0,0),
(132817,11,-4228.691406,318.560608,159.696030,1000,1,0,0,0,0,0,0,0,0.580358,0,0), -- desp. self
-- #2
(132818,1,-4774.639160,66.249664,104.572128,0,0,0,0,0,0,0,0,0,3.462770,0,0),
(132818,2,-4848.408691,51.285130,91.944138,0,0,0,0,0,0,0,0,0,3.360672,0,0),
(132818,3,-4927.936035,34.095524,64.699326,1000,1,0,0,0,0,0,0,0,3.447066,0,0), -- desp. self
-- #3
(132814,1,-4734.889160,190.451294,138.126328,0,0,0,0,0,0,0,0,0,3.847645,0,0),
(132814,2,-4835.980957,109.243599,97.152016,0,0,0,0,0,0,0,0,0,3.828010,0,0),
(132814,3,-4926.269043,35.874458,63.765427,1000,1,0,0,0,0,0,0,0,3.816229,0,0), -- desp. self
-- #4
(132816,1,-4565.646484,246.259430,133.121277,0,0,0,0,0,0,0,0,0,0.240497,0,0),
(132816,2,-4457.275879,272.921722,161.741287,0,0,0,0,0,0,0,0,0,0.238142,0,0),
(132816,3,-4350.460938,294.652924,213.488342,0,0,0,0,0,0,0,0,0,0.171383,0,0),
(132816,4,-4241.068848,314.328827,163.943542,1000,1,0,0,0,0,0,0,0,0.139967,0,0), -- desp. self
-- #5
(132815,1,-4749.372559,13.956022,168.090134,0,0,0,0,0,0,0,0,0,3.052055,0,0),
(132815,2,-4841.558105,24.583767,112.566872,0,0,0,0,0,0,0,0,0,3.004931,0,0),
(132815,3,-4921.840820,32.378395,67.128899,0,0,0,0,0,0,0,0,0,3.177719,0,0),
(132815,4,-4941.824219,29.043839,64.235939,1000,1,0,0,0,0,0,0,0,3.421193,0,0); -- desp. self

-- Dragonmaw Pitfighter 
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (52232, 52236, 52237, 52259, 52261, 52263, 52264);
DELETE FROM creature_movement WHERE id IN (52232, 52236, 52237, 52259, 52261, 52263, 52264);
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
-- 52232
(52232,1,-5155.46,545.921,82.4144,5000,0,0,0,0,0,53,0,0,5.95711,0,0),
(52232,2,-5155.46,545.921,82.4144,3000,0,0,0,0,0,54,0,0,5.95711,0,0),
(52232,3,-5155.46,545.921,82.4144,6000,0,0,0,0,0,275,0,0,5.95711,0,0),
(52232,4,-5155.46,545.921,82.4144,3000,0,0,0,0,0,71,0,0,5.95711,0,0),
-- 52236
(52236,1,-5153.63,533.852,83.8562,7000,0,0,0,0,0,275,0,0,0.379207,0,0),
(52236,2,-5153.63,533.852,83.8562,4000,0,0,0,0,0,53,0,0,0.379207,0,0),
(52236,3,-5153.63,533.852,83.8562,3000,0,0,0,0,0,54,0,0,0.379207,0,0),
(52236,4,-5153.63,533.852,83.8562,8000,0,0,0,0,0,71,0,0,0.379207,0,0),
-- 52237
(52237,1,-5152.51,553.331,83.562,4000,0,0,0,0,0,71,0,0,5.34214,0,0),
(52237,2,-5152.51,553.331,83.562,5000,0,0,0,0,0,275,0,0,5.34214,0,0),
(52237,3,-5152.51,553.331,83.562,3000,0,0,0,0,0,54,0,0,5.34214,0,0),
(52237,4,-5152.51,553.331,83.562,7000,0,0,0,0,0,53,0,0,5.34214,0,0),
-- 52259
(52259,1,-5145.34,560.053,83.7917,5000,0,0,0,0,0,54,0,0,4.86383,0,0),
(52259,2,-5145.34,560.053,83.7917,3000,0,0,0,0,0,71,0,0,4.86383,0,0),
(52259,3,-5145.34,560.053,83.7917,6000,0,0,0,0,0,53,0,0,4.86383,0,0),
(52259,4,-5145.34,560.053,83.7917,4000,0,0,0,0,0,275,0,0,4.86383,0,0),
-- 52261
(52261,1,-5143.59,525.125,83.6451,4000,0,0,0,0,0,275,0,0,1.25336,0,0),
(52261,2,-5143.59,525.125,83.6451,5000,0,0,0,0,0,54,0,0,1.25336,0,0),
(52261,3,-5143.59,525.125,83.6451,6000,0,0,0,0,0,53,0,0,1.25336,0,0),
(52261,4,-5143.59,525.125,83.6451,3000,0,0,0,0,0,71,0,0,1.25336,0,0),
-- 52263
(52263,1,-5130.06,525.152,85.6852,3000,0,0,0,0,0,53,0,0,2.06209,0,0),
(52263,2,-5130.06,525.152,85.6852,5000,0,0,0,0,0,275,0,0,2.06209,0,0),
(52263,3,-5130.06,525.152,85.6852,3000,0,0,0,0,0,71,0,0,2.06209,0,0),
(52263,4,-5130.06,525.152,85.6852,7000,0,0,0,0,0,54,0,0,2.06209,0,0),
-- 52264
(52264,1,-5121.2,532.319,85.3588,5000,0,0,0,0,0,71,0,0,2.64879,0,0),
(52264,2,-5121.2,532.319,85.3588,4000,0,0,0,0,0,53,0,0,2.64879,0,0),
(52264,3,-5121.2,532.319,85.3588,5000,0,0,0,0,0,71,0,0,2.64879,0,0),
(52264,4,-5121.2,532.319,85.3588,3000,0,0,0,0,0,275,0,0,2.64879,0,0);

-- Dragonmaw Skybreaker
DELETE FROM creature WHERE guid= 132538;
INSERT INTO creature(guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(132538, 22274, 530, 1, 0, 0, -4883.63, 274.067, 129.446, 0.885024, 180, 0, 0, 7266, 3155, 0, 2);
UPDATE creature_template SET speedwalk = 3.5 WHERE entry = 22274;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (78291, 78292, 78293, 78294, 78295, 78296, 78297, 78298, 78299, 78300, 132538);
DELETE FROM creature_movement WHERE id IN (78291, 78292, 78293, 78294, 78295, 78296, 78297, 78298, 78299, 78300, 132538);
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
-- #1
(78300,1,-5108.201172,702.830750,122.868347,0,0,0,0,0,0,0,0,0,5.908784,0,0),
(78300,2,-5045.788086,689.992615,136.980438,0,0,0,0,0,0,0,0,0,0.014363,0,0),
(78300,3,-4957.575195,712.129700,126.374092,0,0,0,0,0,0,0,0,0,0.615978,0,0),
(78300,4,-4915.511719,732.807373,123.743774,0,0,0,0,0,0,0,0,0,1.231731,0,0),
(78300,5,-4936.785156,796.180420,127.605804,0,0,0,0,0,0,0,0,0,2.438888,0,0),
(78300,6,-5018.257813,817.254944,117.713646,0,0,0,0,0,0,0,0,0,3.224286,0,0),
(78300,7,-5081.907715,819.454346,141.825241,0,0,0,0,0,0,0,0,0,3.518030,0,0),
(78300,8,-5111.817383,789.526611,146.216599,0,0,0,0,0,0,0,0,0,4.524903,0,0),
(78300,9,-5118.124512,733.878418,142.052658,0,0,0,0,0,0,0,0,0,4.632500,0,0),
-- #2
(78291,1,-4881.301758,427.912048,128.262329,0,0,0,0,0,0,0,0,0,1.283508,0,0),
(78291,2,-4871.166016,466.401154,131.433594,0,0,0,0,0,0,0,0,0,1.546617,0,0),
(78291,3,-4873.219238,548.351440,119.354607,0,0,0,0,0,0,0,0,0,1.762601,0,0),
(78291,4,-4871.982422,596.992004,108.096291,0,0,0,0,0,0,0,0,0,2.035927,0,0),
(78291,5,-4891.920898,622.833435,110.900482,0,0,0,0,0,0,0,0,0,2.476535,0,0),
(78291,6,-4918.258301,642.178284,113.206100,0,0,0,0,0,0,0,0,0,2.774986,0,0),
(78291,7,-4966.291016,659.392151,117.972542,0,0,0,0,0,0,0,0,0,3.097000,0,0),
(78291,8,-5008.114746,653.666565,123.262360,0,0,0,0,0,0,0,0,0,3.462996,0,0),
(78291,9,-5053.749512,635.554871,122.915176,0,0,0,0,0,0,0,0,0,3.811712,0,0),
(78291,10,-5074.283691,608.823364,126.231606,0,0,0,0,0,0,0,0,0,4.407830,0,0),
(78291,11,-5080.160156,581.402039,130.831116,0,0,0,0,0,0,0,0,0,4.808382,0,0),
(78291,12,-5079.393066,564.033875,132.080673,0,0,0,0,0,0,0,0,0,5.098980,0,0),
(78291,13,-5072.986816,533.086548,134.229553,0,0,0,0,0,0,0,0,0,5.229355,0,0),
(78291,14,-5030.726563,474.795807,138.025314,0,0,0,0,0,0,0,0,0,5.586708,0,0),
(78291,15,-4985.497559,438.712646,136.570145,0,0,0,0,0,0,0,0,0,5.762939,0,0),
(78291,16,-4952.925781,411.544098,133.089600,0,0,0,0,0,0,0,0,0,5.794354,0,0),
(78291,17,-4928.208984,400.139984,131.012161,0,0,0,0,0,0,0,0,0,6.243598,0,0),
-- #3
(78292,1,-4949.254395,409.333557,172.648117,0,0,0,0,0,0,0,0,0,2.590624,0,0),
(78292,2,-4986.282715,430.900024,164.211838,0,0,0,0,0,0,0,0,0,2.711574,0,0),
(78292,3,-5030.587891,451.135742,157.850204,0,0,0,0,0,0,0,0,0,2.988819,0,0),
(78292,4,-5092.630371,466.252869,150.296234,0,0,0,0,0,0,0,0,0,3.134903,0,0),
(78292,5,-5133.897949,465.085052,140.105499,0,0,0,0,0,0,0,0,0,3.505611,0,0),
(78292,6,-5165.664063,429.091461,139.143509,0,0,0,0,0,0,0,0,0,4.228179,0,0),
(78292,7,-5182.085449,387.045929,147.141983,0,0,0,0,0,0,0,0,0,4.530556,0,0),
(78292,8,-5191.972168,332.264862,149.229553,0,0,0,0,0,0,0,0,0,4.742613,0,0),
(78292,9,-5184.353027,296.292969,154.116882,0,0,0,0,0,0,0,0,0,5.190289,0,0),
(78292,10,-5168.042480,259.869537,174.530914,0,0,0,0,0,0,0,0,0,5.487956,0,0),
(78292,11,-5144.804199,225.734222,177.739319,0,0,0,0,0,0,0,0,0,5.637179,0,0),
(78292,12,-5098.468750,187.536819,166.378708,0,0,0,0,0,0,0,0,0,5.819389,0,0),
(78292,13,-5056.610352,165.008621,154.057144,0,0,0,0,0,0,0,0,0,6.025164,0,0),
(78292,14,-5007.170898,150.468826,133.294724,0,0,0,0,0,0,0,0,0,6.261566,0,0),
(78292,15,-4962.945313,150.815720,126.199745,0,0,0,0,0,0,0,0,0,0.353797,0,0),
(78292,16,-4914.332520,175.568924,138.165680,0,0,0,0,0,0,0,0,0,1.232982,0,0),
(78292,17,-4883.565918,253.392273,130.726425,0,0,0,0,0,0,0,0,0,1.459176,0,0),
(78292,18,-4840.897949,301.478149,161.358688,0,0,0,0,0,0,0,0,0,2.304266,0,0),
(78292,19,-4867.156250,343.912537,179.668137,0,0,0,0,0,0,0,0,0,2.557164,0,0),
(78292,20,-4903.815918,376.068939,182.822662,0,0,0,0,0,0,0,0,0,2.688325,0,0),
-- #4
(78299,1,-5069.708496,577.640015,147.790054,0,0,0,0,0,0,0,0,0,5.184323,0,0),
(78299,2,-5050.860840,550.855225,148.448746,0,0,0,0,0,0,0,0,0,5.740385,0,0),
(78299,3,-5013.494141,533.048218,147.951996,0,0,0,0,0,0,0,0,0,6.239111,0,0),
(78299,4,-4981.003906,545.555481,145.111649,0,0,0,0,0,0,0,0,0,0.709905,0,0),
(78299,5,-4953.007324,572.649475,139.986923,0,0,0,0,0,0,0,0,0,1.177217,0,0),
(78299,6,-4955.810059,608.175049,129.584000,0,0,0,0,0,0,0,0,0,1.958688,0,0),
(78299,7,-4969.998535,644.179688,124.600227,0,0,0,0,0,0,0,0,0,2.418932,0,0),
(78299,8,-5003.178223,662.806335,125.399796,0,0,0,0,0,0,0,0,0,3.109297,0,0),
(78299,9,-5043.461426,659.586487,123.543930,0,0,0,0,0,0,0,0,0,3.603313,0,0),
(78299,10,-5075.566406,644.291565,130.902039,0,0,0,0,0,0,0,0,0,4.214353,0,0),
-- #5
(78294,1,-4941.068848,-111.011574,114.027573,0,0,0,0,0,0,0,0,0,5.790339,0,0),
(78294,2,-4921.415527,-123.247421,111.997932,0,0,0,0,0,0,0,0,0,6.051878,0,0),
(78294,3,-4884.237305,-120.132034,112.710571,0,0,0,0,0,0,0,0,0,0.467693,0,0),
(78294,4,-4868.080078,-92.527573,107.210396,0,0,0,0,0,0,0,0,0,1.293146,0,0),
(78294,5,-4865.191406,-54.284279,104.094048,0,0,0,0,0,0,0,0,0,1.762029,0,0),
(78294,6,-4879.190918,-23.951218,100.150444,0,0,0,0,0,0,0,0,0,2.376055,0,0),
(78294,7,-4909.357910,-13.288461,106.698997,0,0,0,0,0,0,0,0,0,2.869405,0,0),
(78294,8,-4941.257813,-7.072399,133.329987,0,0,0,0,0,0,0,0,0,2.991142,0,0),
(78294,9,-5002.897949,5.941506,132.548874,0,0,0,0,0,0,0,0,0,2.936164,0,0),
(78294,10,-5074.548340,22.746578,134.073181,0,0,0,0,0,0,0,0,0,3.142724,0,0),
(78294,11,-5101.109863,26.096066,133.550217,0,0,0,0,0,0,0,0,0,3.237757,0,0),
(78294,12,-5127.231934,20.669342,131.995224,0,0,0,0,0,0,0,0,0,3.737271,0,0),
(78294,13,-5156.475098,0.475302,144.378128,0,0,0,0,0,0,0,0,0,4.635759,0,0),
(78294,14,-5154.249512,-29.361431,139.553604,0,0,0,0,0,0,0,0,0,5.309630,0,0),
(78294,15,-5132.140137,-63.023022,145.239532,0,0,0,0,0,0,0,0,0,5.619074,0,0),
(78294,16,-5097.031738,-87.888779,134.508179,0,0,0,0,0,0,0,0,0,5.976426,0,0),
(78294,17,-5032.704102,-78.939217,127.696808,0,0,0,0,0,0,0,0,0,0.155835,0,0),
(78294,18,-4975.403320,-69.182632,134.579025,0,0,0,0,0,0,0,0,0,5.641844,0,0),
-- #6
(78295,1,-5156.254395,-94.822975,171.464645,0,0,0,0,0,0,0,0,0,6.194138,0,0),
(78295,2,-5130.801270,-92.887741,169.278000,0,0,0,0,0,0,0,0,0,0.390045,0,0),
(78295,3,-5097.888672,-85.159019,167.083572,0,0,0,0,0,0,0,0,0,0.451306,0,0),
(78295,4,-5079.623047,-74.999481,165.999115,0,0,0,0,0,0,0,0,0,0.853430,0,0),
(78295,5,-5056.811035,-48.533550,164.501923,0,0,0,0,0,0,0,0,0,1.281473,0,0),
(78295,6,-5030.812500,95.109360,164.229996,0,0,0,0,0,0,0,0,0,1.574426,0,0),
(78295,7,-5032.429199,121.939926,164.434464,0,0,0,0,0,0,0,0,0,1.948276,0,0),
(78295,8,-5043.104004,153.612473,169.073059,0,0,0,0,0,0,0,0,0,2.175256,0,0),
(78295,9,-5069.204102,159.741470,169.297256,0,0,0,0,0,0,0,0,0,3.239470,0,0),
(78295,10,-5119.935059,159.722839,170.732162,0,0,0,0,0,0,0,0,0,3.968902,0,0),
(78295,11,-5139.406738,122.924522,165.495377,0,0,0,0,0,0,0,0,0,4.521824,0,0),
(78295,12,-5146.536133,82.747635,163.162460,0,0,0,0,0,0,0,0,0,4.660055,0,0),
(78295,13,-5151.167969,-26.942158,175.431610,0,0,0,0,0,0,0,0,0,5.293877,0,0),
-- #7
(78297,1,-5215.323242,277.893951,166.181198,0,0,0,0,0,0,0,0,0,1.289578,0,0),
(78297,2,-5172.042969,404.969055,165.059692,0,0,0,0,0,0,0,0,0,0.943218,0,0),
(78297,3,-5130.574707,454.686188,159.026199,0,0,0,0,0,0,0,0,0,0.524601,0,0),
(78297,4,-5089.468262,502.398773,170.614105,0,0,0,0,0,0,0,0,0,6.032598,0,0),
(78297,5,-5041.763184,475.945099,165.176712,0,0,0,0,0,0,0,0,0,5.511099,0,0),
(78297,6,-5006.871094,447.279175,171.481720,0,0,0,0,0,0,0,0,0,5.380726,0,0),
(78297,7,-4986.952148,415.732178,169.479309,0,0,0,0,0,0,0,0,0,4.940120,0,0),
(78297,8,-4975.851074,380.042206,181.743729,0,0,0,0,0,0,0,0,0,4.646377,0,0),
(78297,9,-4999.677246,166.051498,189.570389,0,0,0,0,0,0,0,0,0,4.480652,0,0),
(78297,10,-5015.454102,110.991905,189.148300,0,0,0,0,0,0,0,0,0,3.742371,0,0),
(78297,11,-5058.357422,88.613007,176.465286,0,0,0,0,0,0,0,0,0,3.280558,0,0),
(78297,12,-5120.993164,79.285751,160.208069,0,0,0,0,0,0,0,0,0,2.661664,0,0),
(78297,13,-5157.896973,84.563492,149.220810,0,0,0,0,0,0,0,0,0,2.189639,0,0),
(78297,14,-5175.501953,115.780037,143.718033,0,0,0,0,0,0,0,0,0,1.925045,0,0),
(78297,15,-5202.985840,172.801254,131.402084,0,0,0,0,0,0,0,0,0,1.799382,0,0),
(78297,16,-5229.639160,253.177490,150.282532,0,0,0,0,0,0,0,0,0,0.973928,0,0),
-- #8
(78296,1,-5302.937500,148.193359,127.077286,0,0,0,0,0,0,0,0,0,1.421734,0,0),
(78296,2,-5290.258789,249.662323,119.674286,0,0,0,0,0,0,0,0,0,1.341623,0,0),
(78296,3,-5267.987305,307.371521,119.553146,0,0,0,0,0,0,0,0,0,0.947353,0,0),
(78296,4,-5242.127930,346.618347,121.471268,0,0,0,0,0,0,0,0,0,0.727442,0,0),
(78296,5,-5224.218750,366.558533,129.072479,0,0,0,0,0,0,0,0,0,6.227584,0,0),
(78296,6,-5200.149414,357.228027,128.849533,0,0,0,0,0,0,0,0,0,5.444544,0,0),
(78296,7,-5194.467773,339.612213,126.384163,0,0,0,0,0,0,0,0,0,4.759678,0,0),
(78296,8,-5194.409180,306.297821,116.658852,0,0,0,0,0,0,0,0,0,4.479295,0,0),
(78296,9,-5209.574219,201.541367,109.823784,0,0,0,0,0,0,0,0,0,4.577471,0,0),
(78296,10,-5207.613770,165.877579,112.161583,0,0,0,0,0,0,0,0,0,4.447885,0,0),
(78296,11,-5212.247559,113.190575,134.218719,0,0,0,0,0,0,0,0,0,3.171614,0,0),
-- #9
(132538,1,-4893.139160,270.714661,146.138458,0,0,0,0,0,0,0,0,0,3.136250,0,0),
(132538,2,-5055.941895,251.250626,192.834747,0,0,0,0,0,0,0,0,0,2.564844,0,0),
(132538,3,-5118.196777,274.724152,191.177673,0,0,0,0,0,0,0,0,0,2.784757,0,0),
(132538,4,-5160.050781,302.514038,181.308594,0,0,0,0,0,0,0,0,0,3.646338,0,0),
(132538,5,-5209.024414,238.325058,206.448547,0,0,0,0,0,0,0,0,0,4.539567,0,0),
(132538,6,-5203.889648,168.078598,196.212982,0,0,0,0,0,0,0,0,0,5.135683,0,0),
(132538,7,-5183.906250,113.997826,181.048965,0,0,0,0,0,0,0,0,0,5.467906,0,0),
(132538,8,-5114.294922,80.478783,177.848251,0,0,0,0,0,0,0,0,0,6.176330,0,0),
(132538,9,-5063.333496,75.495277,173.110474,0,0,0,0,0,0,0,0,0,0.284274,0,0),
(132538,10,-5027.770996,105.501137,169.261734,0,0,0,0,0,0,0,0,0,0.919659,0,0),
(132538,11,-4971.774414,149.468140,171.209549,0,0,0,0,0,0,0,0,0,0.572514,0,0),
(132538,12,-4921.220703,171.100464,148.463074,0,0,0,0,0,0,0,0,0,0.761795,0,0),
(132538,13,-4835.927734,182.417892,165.669800,0,0,0,0,0,0,0,0,0,1.664217,0,0),
(132538,14,-4836.052734,214.495743,151.501373,0,0,0,0,0,0,0,0,0,1.949317,0,0),
(132538,15,-4868.713379,261.582428,169.641388,0,0,0,0,0,0,0,0,0,2.645965,0,0),
-- #10
(78293,1,-4997.596191,211.812378,133.552246,0,0,0,0,0,0,0,0,0,0.566208,0,0),
(78293,2,-4934.040527,221.550476,128.327515,0,0,0,0,0,0,0,0,0,0.700510,0,0),
(78293,3,-4879.488770,236.102646,122.107338,0,0,0,0,0,0,0,0,0,1.188243,0,0),
(78293,4,-4828.156250,305.232239,119.327942,0,0,0,0,0,0,0,0,0,2.098520,0,0),
(78293,5,-4828.822754,359.134552,124.352425,0,0,0,0,0,0,0,0,0,2.787314,0,0),
(78293,6,-4849.829590,387.363098,122.887070,0,0,0,0,0,0,0,0,0,3.152526,0,0),
(78293,7,-4884.642578,388.874878,126.775154,0,0,0,0,0,0,0,0,0,3.396786,0,0),
(78293,8,-4913.098633,382.400757,128.891556,0,0,0,0,0,0,0,0,0,3.740789,0,0),
(78293,9,-4937.484375,371.374817,130.364029,0,0,0,0,0,0,0,0,0,3.861742,0,0),
(78293,10,-4959.675293,347.328857,130.097427,0,0,0,0,0,0,0,0,0,4.228522,0,0),
(78293,11,-4978.181152,304.387939,114.958366,0,0,0,0,0,0,0,0,0,4.774373,0,0),
(78293,12,-4932.934570,209.678909,111.892082,0,0,0,0,0,0,0,0,0,5.003701,0,0),
(78293,13,-4926.146484,183.988342,115.454544,0,0,0,0,0,0,0,0,0,4.656554,0,0),
(78293,14,-4930.974609,159.153992,120.217918,0,0,0,0,0,0,0,0,0,3.937130,0,0),
(78293,15,-4946.758789,140.625610,122.312065,0,0,0,0,0,0,0,0,0,3.639237,0,0),
(78293,16,-4965.191406,141.616501,119.383774,0,0,0,0,0,0,0,0,0,2.877400,0,0),
(78293,17,-4984.445801,149.966003,118.799065,0,0,0,0,0,0,0,0,0,2.239657,0,0),
(78293,18,-5002.907227,172.813522,117.016289,0,0,0,0,0,0,0,0,0,1.540653,0,0),
(78293,19,-4998.338379,201.085144,113.023964,0,0,0,0,0,0,0,0,0,1.135387,0,0),
-- #11
(78298,1,-5075.696289,588.805420,171.098373,0,0,0,0,0,0,0,0,0,4.926919,0,0),
(78298,2,-5072.257813,564.667053,167.685715,0,0,0,0,0,0,0,0,0,4.538937,0,0),
(78298,3,-5084.799316,530.119202,160.541336,0,0,0,0,0,0,0,0,0,4.005656,0,0),
(78298,4,-5115.487793,507.567871,173.963882,0,0,0,0,0,0,0,0,0,3.254817,0,0),
(78298,5,-5154.444336,518.914795,169.609467,0,0,0,0,0,0,0,0,0,2.613146,0,0),
(78298,6,-5179.292969,544.519836,163.991470,0,0,0,0,0,0,0,0,0,2.079075,0,0),
(78298,7,-5191.589355,586.714050,155.673294,0,0,0,0,0,0,0,0,0,1.629042,0,0),
(78298,8,-5208.790527,630.414856,141.356613,0,0,0,0,0,0,0,0,0,1.471962,0,0),
(78298,9,-5201.156250,687.436035,133.720276,0,0,0,0,0,0,0,0,0,1.122460,0,0),
(78298,10,-5185.011719,716.462708,135.257584,0,0,0,0,0,0,0,0,0,0.812227,0,0),
(78298,11,-5153.447266,744.444397,135.341141,0,0,0,0,0,0,0,0,0,0.318997,0,0),
(78298,12,-5128.042480,743.877380,161.560699,0,0,0,0,0,0,0,0,0,5.193966,0,0),
(78298,13,-5110.022949,716.146606,155.565048,0,0,0,0,0,0,0,0,0,4.853887,0,0),
(78298,14,-5094.490723,634.261536,158.677505,0,0,0,0,0,0,0,0,0,4.679535,0,0);

-- Warden's Cage - SHADOWMOON VALLEY
-- Zandras
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 76415;
DELETE FROM creature_movement WHERE id = 76415;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(76415,1,-3757.530762,1029.766479,90.988747,0,0,0,0,0,0,0,0,0,3.246489,0,0),
(76415,2,-3775.931641,1032.314819,94.449219,0,0,0,0,0,0,0,0,0,2.624453,0,0),
(76415,3,-3799.307373,1053.311768,93.523903,0,0,0,0,0,0,0,0,0,2.362915,0,0),
(76415,4,-3773.250488,1031.117188,94.264793,0,0,0,0,0,0,0,0,0,0.114317,0,0),
(76415,5,-3755.856201,1031.773315,90.280235,0,0,0,0,0,0,0,0,0,0.330298,0,0),
(76415,6,-3740.908447,1039.705566,88.719009,0,0,0,0,0,0,0,0,0,0.902854,0,0),
(76415,7,-3733.531006,1049.675659,87.352478,0,0,0,0,0,0,0,0,0,1.403938,0,0),
(76415,8,-3733.335449,1054.397583,86.516243,0,0,0,0,0,0,0,0,0,1.526460,0,0),
(76415,9,-3733.612793,1069.993530,87.855896,0,0,0,0,0,0,0,0,0,1.616781,0,0),
(76415,10,-3733.914307,1091.715820,85.949455,0,0,0,0,0,0,0,0,0,2.036184,0,0),
(76415,11,-3741.856201,1107.724365,84.366043,0,0,0,0,0,0,0,0,0,2.056604,0,0),
(76415,12,-3744.401123,1111.013550,81.530273,0,0,0,0,0,0,0,0,0,2.201903,0,0),
(76415,13,-3752.359619,1119.980591,78.007301,0,0,0,0,0,0,0,0,0,2.587533,0,0),
(76415,14,-3759.702637,1124.510742,78.778214,0,0,0,0,0,0,0,0,0,2.882058,0,0),
(76415,15,-3770.400635,1127.236206,81.069031,0,0,0,0,0,0,0,0,0,3.270045,0,0),
(76415,16,-3779.038330,1124.861938,83.698357,0,0,0,0,0,0,0,0,0,3.710654,0,0),
(76415,17,-3784.028076,1121.513550,84.472130,0,0,0,0,0,0,0,0,0,3.892080,0,0),
(76415,18,-3802.328857,1102.431763,84.291054,0,0,0,0,0,0,0,0,0,3.957710,0,0),
(76415,19,-3778.693604,1126.156738,83.476517,0,0,0,0,0,0,0,0,0,0.091979,0,0),
(76415,20,-3761.355713,1125.695313,79.051140,0,0,0,0,0,0,0,0,0,5.963616,0,0),
(76415,21,-3751.511230,1120.883301,77.949562,0,0,0,0,0,0,0,0,0,5.501805,0,0),
(76415,22,-3744.697754,1112.575073,81.095230,0,0,0,0,0,0,0,0,0,5.406775,0,0),
(76415,23,-3741.905029,1107.707520,84.361671,0,0,0,0,0,0,0,0,0,5.159379,0,0),
(76415,24,-3738.710205,1101.871704,85.931503,0,0,0,0,0,0,0,0,0,5.061203,0,0),
(76415,25,-3733.653564,1083.044800,86.657211,0,0,0,0,0,0,0,0,0,4.739191,0,0),
(76415,26,-3733.297607,1069.770508,87.853752,0,0,0,0,0,0,0,0,0,4.739191,0,0),
(76415,27,-3733.149658,1054.189819,86.529945,0,0,0,0,0,0,0,0,0,4.379479,0,0),
(76415,28,-3737.150146,1042.460205,88.302094,0,0,0,0,0,0,0,0,0,3.812424,0,0),
(76415,29,-3748.857666,1033.817261,89.687263,0,0,0,0,0,0,0,0,0,3.769227,0,0);
-- Illidari Agonizer to Zandras 
DELETE FROM creature_linking WHERE guid IN (70887, 70888);
INSERT INTO creature_linking VALUES
(70888, 76415, 515), 
(70887, 76415, 515);
-- Ashtongue Deathsworn
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 75731;
DELETE FROM creature_movement WHERE id = 75731;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(75731,1,-3688.808350,1070.927856,56.757660,0,0,0,0,0,0,0,0,0,6.232943,0,0),
(75731,2,-3750.315674,1072.478882,56.772243,0,0,0,0,0,0,0,0,0,3.142402,0,0),
(75731,3,-3718.541992,1072.172241,56.895554,0,0,0,0,0,0,0,0,0,0.008660,0,0);
-- Maiev - Warden's Cage
UPDATE creature SET MovementType = 2,spawndist = 0 WHERE guid = 84636;
DELETE FROM creature_movement WHERE id = 84636;
UPDATE creature_template SET MovementType = 2 WHERE entry = 21699;  -- now move her to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 21699;
INSERT INTO creature_movement_template (entry, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(21699,1,-3697.565918,1035.303955,57.14,0,0,0,0,0,0,0,0,0,4.666078,0,0),
(21699,2,-3697.138672,1023.405151,57.14,0,0,0,0,0,0,0,0,0,1.633715,0,0),
(21699,3,-3697.565918,1035.303955,57.14,0,0,0,0,0,0,0,0,0,4.666078,0,0),
(21699,4,-3697.138672,1023.405151,57.14,0,0,0,0,0,0,0,0,0,1.633715,0,0),
(21699,5,-3697.565918,1035.303955,57.14,0,0,0,0,0,0,0,0,0,4.666078,0,0),
(21699,6,-3697.138672,1023.405151,57.14,0,0,0,0,0,0,0,0,0,1.633715,0,0),
(21699,7,-3697.565918,1035.303955,57.14,0,0,0,0,0,0,0,0,0,4.666078,0,0),
(21699,8,-3697.088135,1028.906128,57.14,0,0,0,0,0,0,0,0,0,3.246133,0,0),
(21699,9,-3708.714,1028.621,56.3771,15000,2169901,0,0,0,0,0,0,0,3.136178,0,0),
(21699,10,-3697.565918,1035.303955,57.14,0,0,0,0,0,0,0,0,0,4.666078,0,0),
(21699,11,-3697.138672,1023.405151,57.14,0,0,0,0,0,0,0,0,0,1.633715,0,0),
(21699,12,-3697.565918,1035.303955,57.14,0,0,0,0,0,0,0,0,0,4.666078,0,0),
(21699,13,-3697.138672,1023.405151,57.14,0,0,0,0,0,0,0,0,0,1.633715,0,0),
(21699,14,-3697.565918,1035.303955,57.14,0,0,0,0,0,0,0,0,0,4.666078,0,0),
(21699,15,-3697.138672,1023.405151,57.14,0,0,0,0,0,0,0,0,0,1.633715,0,0),
(21699,16,-3697.565918,1035.303955,57.14,0,0,0,0,0,0,0,0,0,4.666078,0,0),
(21699,17,-3697.088135,1028.906128,57.14,0,0,0,0,0,0,0,0,0,3.246133,0,0),
(21699,18,-3708.714,1028.621,56.3771,15000,2169902,0,0,0,0,0,0,0,3.136178,0,0),
(21699,19,-3697.565918,1035.303955,57.14,0,0,0,0,0,0,0,0,0,4.666078,0,0),
(21699,20,-3697.138672,1023.405151,57.14,0,0,0,0,0,0,0,0,0,1.633715,0,0),
(21699,21,-3697.565918,1035.303955,57.14,0,0,0,0,0,0,0,0,0,4.666078,0,0),
(21699,22,-3697.138672,1023.405151,57.14,0,0,0,0,0,0,0,0,0,1.633715,0,0),
(21699,23,-3697.565918,1035.303955,57.14,0,0,0,0,0,0,0,0,0,4.666078,0,0),
(21699,24,-3697.138672,1023.405151,57.14,0,0,0,0,0,0,0,0,0,1.633715,0,0),
(21699,25,-3697.565918,1035.303955,57.14,0,0,0,0,0,0,0,0,0,4.666078,0,0),
(21699,26,-3697.138672,1023.405151,57.14,0,0,0,0,0,0,0,0,0,1.633715,0,0),
(21699,27,-3697.565918,1035.303955,57.14,0,0,0,0,0,0,0,0,0,4.666078,0,0),
(21699,28,-3697.138672,1023.405151,57.14,0,0,0,0,0,0,0,0,0,1.633715,0,0),
(21699,29,-3697.565918,1035.303955,57.14,0,0,0,0,0,0,0,0,0,4.666078,0,0),
(21699,30,-3697.138672,1023.405151,57.14,0,0,0,0,0,0,0,0,0,1.633715,0,0),
(21699,31,-3697.565918,1035.303955,57.14,0,0,0,0,0,0,0,0,0,4.666078,0,0),
(21699,32,-3697.138672,1023.405151,57.14,0,0,0,0,0,0,0,0,0,1.633715,0,0),
(21699,33,-3697.565918,1035.303955,57.14,0,0,0,0,0,0,0,0,0,4.666078,0,0),
(21699,34,-3697.138672,1023.405151,57.14,0,0,0,0,0,0,0,0,0,1.633715,0,0),
(21699,35,-3697.565918,1035.303955,57.14,0,0,0,0,0,0,0,0,0,4.666078,0,0),
(21699,36,-3697.138672,1023.405151,57.14,0,0,0,0,0,0,0,0,0,1.633715,0,0),
(21699,37,-3697.565918,1035.303955,57.14,0,0,0,0,0,0,0,0,0,4.666078,0,0),
(21699,38,-3697.138672,1023.405151,57.14,0,0,0,0,0,0,0,0,0,1.633715,0,0),
(21699,39,-3697.565918,1035.303955,57.14,0,0,0,0,0,0,0,0,0,4.666078,0,0),
(21699,40,-3697.138672,1023.405151,57.14,0,0,0,0,0,0,0,0,0,1.633715,0,0),
(21699,41,-3697.565918,1035.303955,57.14,0,0,0,0,0,0,0,0,0,4.666078,0,0),
(21699,42,-3697.138672,1023.405151,57.14,0,0,0,0,0,0,0,0,0,1.633715,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2169901, 2169902); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES
(2169901,1,0,0,0,0,0,0,2000005474,0,0,0,0,0,0,0,''),
(2169901,2,1,15,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2169902,1,0,0,0,0,0,0,2000005475,0,0,0,0,0,0,0,''),
(2169902,2,1,60,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000005474 AND 2000005475;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(2000005474,'Release me immediatley or face my wrath!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005475,'This cell won\'t hold me for long. I will have Illidan\'s head one way or another.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- Sunfury Blood Lord
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 35869;
DELETE FROM creature_movement WHERE id = 35869;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(35869,1,-3681.703125,562.659119,32.992657,0,2174301,0,0,0,0,0,0,0,0.051393,0,0),
(35869,2,-3644.520508,562.962341,20.201656,0,2174301,0,0,0,0,0,0,0,0.000340,0,0),
(35869,3,-3634.107178,563.081360,16.845066,6000,0,0,0,0,0,0,0,0,6.275672,0,0),
(35869,4,-3660.467529,562.699402,25.735804,0,2174301,0,0,0,0,0,0,0,3.106591,0,0),
(35869,5,-3701.416748,562.505310,39.700752,0,2174301,0,0,0,0,0,0,0,3.161569,0,0),
(35869,6,-3715.816650,562.836548,44.734043,6000,0,0,0,0,0,0,0,0,6.163359,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2174301; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES
(2174301,0,31,21742,40,0,0,0,0,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(2174301,1,1,66,0,21742,40,0,0,0,0,0,0,0,0,0,'force 21742 to: emote');
-- Spellbound Terrorguard
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE entry = 21908;
DELETE FROM dbscripts_on_creature_movement WHERE id = 2190801; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES
(2190801,0,31,21505,35,0,0,0,0,0,0,0,0,0,0,0,''), -- let him check if creature A is alive
(2190801,1,15,38711,0,21505,40,3,0,0,0,0,0,0,0,0,'force b cast on s'), -- TO DO: Spell stucks on npc - should be removed on aggro
(2190801,5,31,21180,10,0,0,0,0,0,0,0,0,0,0,0,''), -- let him check if creature B is alive
(2190801,6,1,25,0,21180,10,0,0,0,0,0,0,0,0,0,'force b to: emote'),
(2190801,9,22,1847,0x02,21180,10,0,0,0,0,0,0,0,0,0,'temp faction'),
(2190801,10,26,0,0,21180,10,3,0,0,0,0,0,0,0,0,'attack start b on s');
-- Demon Hunter Supplicant
UPDATE creature SET spawntimesecs =180 WHERE id = 21179;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2117901, 2117902); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES
(2117901,2,1,2,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2117901,8,1,438,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2117901,50,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2117901,55,1,2,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2117901,59,1,438,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2117902,4,1,2,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2117902,8,1,438,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2117902,50,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2117902,55,1,2,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2117902,59,1,438,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- 74269 74256
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74269;
DELETE FROM creature_movement WHERE id = 74269;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74269,1,-3863.83,458.539,104.145,10000,0,0,0,0,0,0,0,0,3.08967,0,0),
(74269,2,-3863.83,458.539,104.145,300000,2117901,0,0,0,0,0,0,0,3.08967,0,0);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74253;
DELETE FROM creature_movement WHERE id = 74253;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74253,1,-3867.02,458.705,104.144,10000,0,0,0,0,0,0,0,0,0.296706,0,0),
(74253,2,-3867.02,458.705,104.144,300000,2117902,0,0,0,0,0,0,0,0.296706,0,0);
-- 74270 74271
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74270;
DELETE FROM creature_movement WHERE id = 74270;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74270,1,-3863.29,443.758,104.088,5000,0,0,0,0,0,0,0,0,3.0052,0,0),
(74270,2,-3863.29,443.758,104.088,300000,2117901,0,0,0,0,0,0,0,3.0052,0,0);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74271;
DELETE FROM creature_movement WHERE id = 74271;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74271,1,-3866.92,444.257,104.157,5000,0,0,0,0,0,0,0,0,0.226893,0,0),
(74271,2,-3866.92,444.257,104.157,300000,2117902,0,0,0,0,0,0,0,0.226893,0,0);
-- 74244 74245
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74244;
DELETE FROM creature_movement WHERE id = 74244;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74244,1,-3880.02,467.497,104.136,1000,0,0,0,0,0,0,0,0,1.55678,0,0),
(74244,2,-3880.02,467.497,104.136,300000,2117901,0,0,0,0,0,0,0,1.55678,0,0);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74245;
DELETE FROM creature_movement WHERE id = 74245;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74245,1,-3879.97,471.033,104.132,1000,0,0,0,0,0,0,0,0,4.69837,0,0),
(74245,2,-3879.97,471.033,104.132,300000,2117902,0,0,0,0,0,0,0,4.69837,0,0);
-- 74250 74251
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74251;
DELETE FROM creature_movement WHERE id = 74251;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74251,1,-3893.03,460.739,105.145,7000,0,0,0,0,0,0,0,0,1.54182,0,0),
(74251,2,-3893.03,460.739,105.145,300000,2117901,0,0,0,0,0,0,0,1.54182,0,0);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74250;
DELETE FROM creature_movement WHERE id = 74250;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74250,1,-3892.93,464.125,105.141,7000,0,0,0,0,0,0,0,0,4.69837,0,0),
(74250,2,-3892.93,464.125,105.141,300000,2117902,0,0,0,0,0,0,0,4.68341,0,0);
-- 74248 74249
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74248;
DELETE FROM creature_movement WHERE id = 74248;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74248,1,-3904.29,464.211,104.608,13000,0,0,0,0,0,0,0,0,4.59178,0,0),
(74248,2,-3904.29,464.211,104.608,300000,2117901,0,0,0,0,0,0,0,4.59178,0,0);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74249;
DELETE FROM creature_movement WHERE id = 74249;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74249,1,-3904.63,461.447,104.625,13000,0,0,0,0,0,0,0,0,1.45019,0,0),
(74249,2,-3904.63,461.447,104.625,300000,2117902,0,0,0,0,0,0,0,1.45019,0,0);
-- 74248 74249
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74248;
DELETE FROM creature_movement WHERE id = 74248;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74248,1,-3904.29,464.211,104.608,13000,0,0,0,0,0,0,0,0,4.59178,0,0),
(74248,2,-3904.29,464.211,104.608,300000,2117901,0,0,0,0,0,0,0,4.59178,0,0);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74249;
DELETE FROM creature_movement WHERE id = 74249;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74249,1,-3904.63,461.447,104.625,13000,0,0,0,0,0,0,0,0,1.45019,0,0),
(74249,2,-3904.63,461.447,104.625,300000,2117902,0,0,0,0,0,0,0,1.45019,0,0);
-- 74246 74247
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74246;
DELETE FROM creature_movement WHERE id = 74246;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74246,1,-3917.171387,465.100372,104.599174,3000,0,0,0,0,0,0,0,0,4.754642,0,0),
(74246,2,-3917.171387,465.100372,104.599174,300000,2117901,0,0,0,0,0,0,0,4.754642,0,0);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74247;
DELETE FROM creature_movement WHERE id = 74247;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74247,1,-3916.967773,461.777313,104.680939,3000,0,0,0,0,0,0,0,0,1.664098,0,0),
(74247,2,-3916.967773,461.777313,104.680939,300000,2117902,0,0,0,0,0,0,0,1.664098,0,0);
-- 74252 74254
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74252;
DELETE FROM creature_movement WHERE id = 74252;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74252,1,-3916.86,449.539,104.189,8000,0,0,0,0,0,0,0,0,4.62905,0,0),
(74252,2,-3916.86,449.539,104.189,300000,2117901,0,0,0,0,0,0,0,4.62905,0,0);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74254;
DELETE FROM creature_movement WHERE id = 74254;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74254,1,-3917.14,446.234,104.215,8000,0,0,0,0,0,0,0,0,1.48746,0,0),
(74254,2,-3917.14,446.234,104.215,300000,2117902,0,0,0,0,0,0,0,1.48746,0,0);
-- 74255 74256
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74255;
DELETE FROM creature_movement WHERE id = 74255;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74255,1,-3904.39,450.324,104.705,1000,0,0,0,0,0,0,0,0,4.76475,0,0),
(74255,2,-3904.39,450.324,104.705,300000,2117901,0,0,0,0,0,0,0,4.76475,0,0);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74256;
DELETE FROM creature_movement WHERE id = 74256;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74256,1,-3904.53,446.441,104.674,1000,0,0,0,0,0,0,0,0,1.53259,0,0),
(74256,2,-3904.53,446.441,104.674,300000,2117902,0,0,0,0,0,0,0,1.53259,0,0);
-- 74257 74258
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74257;
DELETE FROM creature_movement WHERE id = 74257;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74257,1,-3892.39,449.491,105.09,26000,0,0,0,0,0,0,0,0,4.62512,0,0),
(74257,2,-3892.39,449.491,105.09,300000,2117901,0,0,0,0,0,0,0,4.62512,0,0);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74258;
DELETE FROM creature_movement WHERE id = 74258;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74258,1,-3892.32,446.348,105.071,26000,0,0,0,0,0,0,0,0,1.59542,0,0),
(74258,2,-3892.32,446.348,105.071,300000,2117902,0,0,0,0,0,0,0,1.59542,0,0);
-- 74272 74273
UPDATE creature SET MovementType = 2, spawndist  =0 WHERE guid = 74272;
DELETE FROM creature_movement WHERE id = 74272;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74272,1,-3891.9,433.198,104.853,32000,0,0,0,0,0,0,0,0,4.81711,0,0),
(74272,2,-3891.9,433.198,104.853,300000,2117901,0,0,0,0,0,0,0,4.81711,0,0);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74273;
DELETE FROM creature_movement WHERE id = 74273;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74273,1,-3892.26,429.29,104.633,32000,0,0,0,0,0,0,0,0,1.47965,0,0),
(74273,2,-3892.26,429.29,104.633,300000,2117902,0,0,0,0,0,0,0,1.47965,0,0);
-- 74259 74260
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74259;
DELETE FROM creature_movement WHERE id = 74259;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74259,1,-3904.81,428.438,104.15,12000,0,0,0,0,0,0,0,0,1.90241,0,0),
(74259,2,-3904.81,428.438,104.15,300000,2117901,0,0,0,0,0,0,0,1.90241,0,0);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74260;
DELETE FROM creature_movement WHERE id = 74260;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74260,1,-3904.62,432.67,104.166,12000,0,0,0,0,0,0,0,0,4.85202,0,0),
(74260,2,-3904.62,432.67,104.166,300000,2117902,0,0,0,0,0,0,0,4.85202,0,0);
-- 74261 74262
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74261;
DELETE FROM creature_movement WHERE id = 74261;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74261,1,-3916.72,432.794,104.128,5000,0,0,0,0,0,0,0,0,4.85202,0,0),
(74261,2,-3916.72,432.794,104.128,300000,2117901,0,0,0,0,0,0,0,4.85202,0,0);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74262;
DELETE FROM creature_movement WHERE id = 74262;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74262,1,-3916.87,429.131,104.058,5000,0,0,0,0,0,0,0,0,1.5287,0,0),
(74262,2,-3916.87,429.131,104.058,300000,2117902,0,0,0,0,0,0,0,1.5287,0,0);
-- 74265 74266
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74265;
DELETE FROM creature_movement WHERE id = 74265;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74265,1,-3837.22,428.724,104.157,16000,0,0,0,0,0,0,0,0,1.56475,0,0),
(74265,2,-3837.22,428.724,104.157,300000,2117901,0,0,0,0,0,0,0,1.56475,0,0);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74266;
DELETE FROM creature_movement WHERE id = 74266;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74266,1,-3837.2,431.912,104.15,16000,0,0,0,0,0,0,0,0,4.70634,0,0),
(74266,2,-3837.2,431.912,104.15,300000,2117902,0,0,0,0,0,0,0,4.70634,0,0);
-- 74267 74268
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74267;
DELETE FROM creature_movement WHERE id = 74267;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74267,1,-3816.66,427.94,104.158,4000,0,0,0,0,0,0,0,0,1.6057,0,0),
(74267,2,-3816.66,427.94,104.158,300000,2117901,0,0,0,0,0,0,0,1.6057,0,0);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74268;
DELETE FROM creature_movement WHERE id = 74268;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74268,1,-3816.16,431.552,104.151,4000,0,0,0,0,0,0,0,0,4.88692,0,0),
(74268,2,-3816.16,431.552,104.151,300000,2117902,0,0,0,0,0,0,0,4.88692,0,0);
-- 32699 32700
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 32699;
DELETE FROM creature_movement WHERE id = 32699;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(32699,1,-3794.49,430.153,104.18,9000,0,0,0,0,0,0,0,0,4.66584,0,0),
(32699,2,-3794.49,430.153,104.18,300000,2117901,0,0,0,0,0,0,0,4.66584,0,0);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 32700;
DELETE FROM creature_movement WHERE id = 32700;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(32700,1,-3794.57,427.432,104.227,9000,0,0,0,0,0,0,0,0,1.68447,0,0),
(32700,2,-3794.57,427.432,104.227,300000,2117902,0,0,0,0,0,0,0,1.68447,0,0);
-- Demon Hunter Initiate
-- #1
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74278;
DELETE FROM creature_movement WHERE id = 74278;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74278,1,-3892.312988,439.977905,105.053497,0,0,0,0,0,0,0,0,0,0.065251,0,0),
(74278,2,-3919.160400,440.635620,104.462585,0,0,0,0,0,0,0,0,0,6.273578,0,0),
(74278,3,-3892.312988,439.977905,105.053497,0,0,0,0,0,0,0,0,0,0.065251,0,0),
(74278,4,-3919.160400,440.635620,104.462585,0,0,0,0,0,0,0,0,0,6.273578,0,0),
(74278,5,-3907.159424,441.084381,104.706879,0,0,0,0,0,0,0,0,0,1.051464,0,0),
(74278,6,-3905.808350,444.061981,104.804840,6000,2118001,0,0,0,0,0,0,0,1.033400,0,0),
(74278,7,-3903.340820,438.737915,104.719940,0,0,0,0,0,0,0,0,0,6.202091,0,0),
(74278,8,-3892.312988,439.977905,105.053497,0,0,0,0,0,0,0,0,0,0.065251,0,0),
(74278,9,-3919.160400,440.635620,104.462585,0,0,0,0,0,0,0,0,0,6.273578,0,0),
(74278,10,-3892.312988,439.977905,105.053497,0,0,0,0,0,0,0,0,0,0.065251,0,0),
(74278,11,-3919.160400,440.635620,104.462585,0,0,0,0,0,0,0,0,0,6.273578,0,0),
(74278,12,-3892.312988,439.977905,105.053497,0,0,0,0,0,0,0,0,0,0.065251,0,0),
(74278,13,-3893.022461,435.942200,104.917061,6000,2118001,0,0,0,0,0,0,0,5.126094,0,0),
(74278,14,-3897.193115,439.623322,104.954025,0,0,0,0,0,0,0,0,0,2.985100,0,0),
(74278,15,-3919.160400,440.635620,104.462585,0,0,0,0,0,0,0,0,0,6.273578,0,0);
-- #2-3
DELETE FROM creature_addon WHERE guid IN (32695, 32696);
INSERT INTO creature_addon VALUES
(32695,0,1,1,0,0,0,NULL),
(32696,0,1,1,0,0,0,NULL);
-- #4
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74284;
DELETE FROM creature_movement WHERE id = 74284;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74284,1,-3901.662598,312.777435,137.099365,0,0,0,0,0,0,0,0,0,1.576886,0,0),
(74284,2,-3901.416504,324.282471,132.388672,0,0,0,0,0,0,0,0,0,1.533689,0,0),
(74284,3,-3901.419678,325.920471,132.369690,0,0,0,0,0,0,0,0,0,1.578083,0,0),
(74284,4,-3901.581787,337.064331,127.657623,0,0,0,0,0,0,0,0,0,1.582010,0,0),
(74284,5,-3901.809814,344.636505,127.619843,0,0,0,0,0,0,0,0,0,0.890074,0,0),
(74284,6,-3897.452148,348.751160,127.619843,0,0,0,0,0,0,0,0,0,0.044200,0,0),
(74284,7,-3882.828369,349.246368,127.542168,0,0,0,0,0,0,0,0,0,6.259056,0,0),
(74284,8,-3871.350098,349.466614,122.844856,0,0,0,0,0,0,0,0,0,0.006499,0,0),
(74284,9,-3869.384033,349.397278,122.817390,0,0,0,0,0,0,0,0,0,0.019065,0,0),
(74284,10,-3862.618896,349.484039,119.895805,0,0,0,0,0,0,0,0,0,6.251199,0,0),
(74284,11,-3857.334961,349.566803,119.887543,15000,0,0,0,0,0,0,0,0,0.015136,0,0),
(74284,12,-3863.120605,349.733826,119.901604,0,0,0,0,0,0,0,0,0,3.129241,0,0),
(74284,13,-3869.447754,349.619537,122.820145,0,0,0,0,0,0,0,0,0,3.137094,0,0),
(74284,14,-3872.394043,349.557129,122.858566,0,0,0,0,0,0,0,0,0,3.172437,0,0),
(74284,15,-3882.753418,349.539398,127.540947,0,0,0,0,0,0,0,0,0,3.129241,0,0),
(74284,16,-3892.018799,349.114288,127.611565,0,0,0,0,0,0,0,0,0,3.690949,0,0),
(74284,17,-3900.016357,346.148132,127.617630,0,0,0,0,0,0,0,0,0,4.631851,0,0),
(74284,18,-3900.423584,336.668396,127.660194,0,0,0,0,0,0,0,0,0,4.693900,0,0),
(74284,19,-3900.307129,325.960999,132.366699,0,0,0,0,0,0,0,0,0,4.721388,0,0),
(74284,20,-3900.274902,323.817627,132.391403,0,0,0,0,0,0,0,0,0,4.725315,0,0),
(74284,21,-3899.961426,312.905609,137.095139,0,0,0,0,0,0,0,0,0,4.780293,0,0),
(74284,22,-3902.034668,305.944458,137.150757,30000,0,0,0,0,0,0,0,0,1.507538,0,0);
-- #5
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74292;
DELETE FROM creature_movement WHERE id = 74292;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74292,1,-3799.364746,273.361359,120.618736,0,0,0,0,0,0,0,0,0,1.607292,0,0),
(74292,2,-3799.520264,282.862518,116.526901,0,0,0,0,0,0,0,0,0,1.528753,0,0),
(74292,3,-3799.365723,287.556976,116.501297,0,0,0,0,0,0,0,0,0,0.898863,0,0),
(74292,4,-3796.717285,290.897461,116.496193,0,0,0,0,0,0,0,0,0,0.017646,0,0),
(74292,5,-3784.719238,291.446747,116.427589,0,0,0,0,0,0,0,0,0,0.036496,0,0),
(74292,6,-3773.766846,291.459106,111.726196,0,0,0,0,0,0,0,0,0,0.005080,0,0),
(74292,7,-3771.645020,291.469910,111.697884,0,0,0,0,0,0,0,0,0,0.005080,0,0),
(74292,8,-3753.586914,292.000702,104.064392,0,0,0,0,0,0,0,0,0,0.040422,0,0),
(74292,9,-3750.859131,292.111023,104.064392,15000,0,0,0,0,0,0,0,0,0.040422,0,0),
(74292,10,-3754.352051,292.126740,104.064392,0,0,0,0,0,0,0,0,0,3.154526,0,0),
(74292,11,-3771.266113,291.794800,111.668854,0,0,0,0,0,0,0,0,0,3.134892,0,0),
(74292,12,-3774.430176,291.784698,111.765999,0,0,0,0,0,0,0,0,0,3.146672,0,0),
(74292,13,-3785.014160,291.757050,116.430359,0,0,0,0,0,0,0,0,0,3.142745,0,0),
(74292,14,-3789.053223,291.752380,116.462143,0,0,0,0,0,0,0,0,0,3.434914,0,0),
(74292,15,-3798.640137,289.960297,116.500275,0,0,0,0,0,0,0,0,0,4.755161,0,0),
(74292,16,-3798.942383,282.859314,116.527832,0,0,0,0,0,0,0,0,0,4.686043,0,0),
(74292,17,-3798.961670,273.586334,120.616631,0,0,0,0,0,0,0,0,0,4.737093,0,0),
(74292,18,-3798.857666,269.599701,120.634140,45000,0,0,0,0,0,0,0,0,4.741020,0,0);
-- #6
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74297;
DELETE FROM creature_movement WHERE id = 74297;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74297,1,-3771.326660,306.373932,111.717102,0,0,0,0,0,0,0,0,0,3.119173,0,0),
(74297,2,-3773.837158,306.275482,111.738304,0,0,0,0,0,0,0,0,0,3.158443,0,0),
(74297,3,-3784.651123,306.383148,116.448570,0,0,0,0,0,0,0,0,0,3.150589,0,0),
(74297,4,-3791.964600,306.233704,116.498451,0,0,0,0,0,0,0,0,0,2.719405,0,0),
(74297,5,-3797.887451,309.031036,116.522087,0,0,0,0,0,0,0,0,0,1.635555,0,0),
(74297,6,-3798.387695,315.625061,116.557549,0,0,0,0,0,0,0,0,0,1.646551,0,0),
(74297,7,-3798.644287,324.787415,120.652382,0,0,0,0,0,0,0,0,0,1.615135,0,0),
(74297,8,-3799.497559,331.848053,120.689362,45000,0,0,0,0,0,0,0,0,1.615135,0,0),
(74297,9,-3799.405518,325.186279,120.656082,0,0,0,0,0,0,0,0,0,4.748870,0,0),
(74297,10,-3798.932373,315.543793,116.556198,0,0,0,0,0,0,0,0,0,4.693893,0,0),
(74297,11,-3798.871582,309.973938,116.527702,0,0,0,0,0,0,0,0,0,5.729048,0,0),
(74297,12,-3793.801758,306.879059,116.506454,0,0,0,0,0,0,0,0,0,0.128371,0,0),
(74297,13,-3784.636963,306.937012,116.451035,0,0,0,0,0,0,0,0,0,0.020769,0,0),
(74297,14,-3773.774658,307.016632,111.739876,0,0,0,0,0,0,0,0,0,6.272539,0,0),
(74297,15,-3771.328369,306.987488,111.716957,0,0,0,0,0,0,0,0,0,6.280392,0,0),
(74297,16,-3753.863525,306.938721,104.080925,0,0,0,0,0,0,0,0,0,6.280392,0,0),
(74297,17,-3751.136475,307.063538,104.080925,15000,0,0,0,0,0,0,0,0,0.048257,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2118001; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES
(2118001,0,31,21179,10,0,0,0,0,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(2118001,1,1,25,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2118001,4,1,22,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Netharel <Illidari Demon Hunter>
UPDATE creature SET MovementType = 2,spawndist = 0 WHERE guid = 74235;
DELETE FROM creature_movement WHERE id = 74235;
UPDATE creature_template SET MovementType= 2 WHERE entry = 21164; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 21164;
INSERT INTO creature_movement_template (entry,POINT,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,orientation,model1,model2) VALUES
(21164,1,-3873.329346,436.683167,104.080070,0,0,0,0,0,0,0,0,0,2.703184,0,0),
(21164,2,-3885.488770,439.337921,104.075531,0,0,0,0,0,0,0,0,0,2.927022,0,0),
(21164,3,-3888.636719,441.160675,105.119583,0,0,0,0,0,0,0,0,0,3.025198,0,0),
(21164,4,-3924.448242,441.733093,104.437134,30000,0,0,0,0,0,0,0,0,0.218183,0,0),
(21164,5,-3916.969971,443.638062,104.514481,0,0,0,0,0,0,0,0,0,0.573548,0,0),
(21164,6,-3900.201660,455.934814,104.946304,15000,0,0,0,0,0,0,0,0,3.139446,0,0),
(21164,7,-3893.642822,471.796753,104.645073,0,0,0,0,0,0,0,0,0,0.127442,0,0),
(21164,8,-3888.320801,473.555206,104.048012,10000,0,0,0,0,0,0,0,0,0.304943,0,0),
(21164,9,-3870.832275,451.102661,104.065208,10000,0,0,0,0,0,0,0,0,0.641092,0,0),
(21164,10,-3867.994873,438.240387,104.076706,0,0,0,0,0,0,0,0,0,6.103433,0,0),
(21164,11,-3835.539063,434.998413,104.060692,0,0,0,0,0,0,0,0,0,6.207890,0,0),
(21164,12,-3810.875977,432.826416,104.159683,10000,0,0,0,0,0,0,0,0,6.016255,0,0),
(21164,13,-3837.976563,434.648407,104.061928,0,0,0,0,0,0,0,0,0,3.303491,0,0),
(21164,14,-3853.695801,433.366791,104.091850,0,2116401,0,0,0,0,0,0,0,3.105572,0,0),
(21164,15,-3867.653320,430.068146,104.084290,90000,0,0,0,0,0,0,0,0,1.584255,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2116401; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES
(2116401,1,0,1,0,0,0,0,2000005476,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry = 2000005476;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(2000005476,'Consider this a warm up!  Your real training will be far harsher!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
-- Ata'mal Terrace  - SHADOWMOON VALLEY
-- Shadowsworn Drakonid <Servant of Illidan>
-- #1
UPDATE creature SET position_x = -3439.164795, position_y = 465.289612, position_z = 90.973953, orientation = 4.764201, MovementType = 2, spawndist = 0 WHERE guid = 77360;
DELETE FROM creature_movement WHERE id = 77360;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(77360,1,-3438.543945,417.858612,90.973953,0,0,0,0,0,0,0,0,0,4.678590,0,0),
(77360,2,-3438.752441,368.189117,90.976845,0,0,0,0,0,0,0,0,0,4.713932,0,0),
(77360,3,-3439.140625,308.323639,90.981674,0,0,0,0,0,0,0,0,0,4.717858,0,0),
(77360,4,-3438.239990,271.453735,90.985886,0,0,0,0,0,0,0,0,0,4.768906,0,0),
(77360,5,-3437.666504,247.717316,90.988998,0,0,0,0,0,0,0,0,0,1.572327,0,0),
(77360,6,-3438.721436,319.092712,90.983337,0,0,0,0,0,0,0,0,0,1.570051,0,0),
(77360,7,-3438.661621,377.292206,90.979004,0,0,0,0,0,0,0,0,0,1.589685,0,0),
(77360,8,-3438.397217,420.253540,90.975945,0,0,0,0,0,0,0,0,0,1.554342,0,0),
(77360,9,-3438.130615,464.013672,90.974548,0,0,0,0,0,0,0,0,0,1.542561,0,0),
(77360,10,-3437.651123,496.501984,90.989334,0,0,0,0,0,0,0,0,0,4.664519,0,0),
(77360,11,-3439.164795,465.289612,90.973953,0,0,0,0,0,0,0,0,0,4.764201,0,0);
-- #2
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 77361;
DELETE FROM creature_movement WHERE id = 77361;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(77361,1,-3394.869873,573.641541,54.155025,0,0,0,0,0,0,0,0,0,3.590470,0,0),
(77361,2,-3414.160156,561.399170,46.461819,0,0,0,0,0,0,0,0,0,3.195413,0,0),
(77361,3,-3436.150879,561.719849,38.557682,0,0,0,0,0,0,0,0,0,2.628180,0,0),
(77361,4,-3452.564209,572.661621,32.836685,0,0,0,0,0,0,0,0,0,3.031297,0,0),
(77361,5,-3463.958008,572.726196,29.253700,0,0,0,0,0,0,0,0,0,3.522956,0,0),
(77361,6,-3476.999756,562.141968,24.644787,6000,0,0,0,0,0,0,0,0,3.047789,0,0),
(77361,7,-3461.372314,574.790527,30.185898,0,0,0,0,0,0,0,0,0,6.277345,0,0),
(77361,8,-3450.023682,574.116577,33.606174,0,0,0,0,0,0,0,0,0,5.956240,0,0),
(77361,9,-3429.527832,561.173828,40.937550,0,0,0,0,0,0,0,0,0,6.194481,0,0),
(77361,10,-3410.758301,562.162048,47.954601,0,0,0,0,0,0,0,0,0,0.694333,0,0),
(77361,11,-3386.588135,578.308716,56.740936,0,0,0,0,0,0,0,0,0,6.228248,0,0),
(77361,12,-3361.045166,575.466858,64.693382,0,0,0,0,0,0,0,0,0,5.761323,0,0),
(77361,13,-3355.579834,568.543518,65.666519,0,0,0,0,0,0,0,0,0,5.502930,0,0),
(77361,14,-3343.833984,558.904846,70.365700,0,0,0,0,0,0,0,0,0,5.107870,0,0),
(77361,15,-3336.434326,528.124573,78.863609,0,0,0,0,0,0,0,0,0,4.639775,0,0),
(77361,16,-3342.429443,500.387146,88.586517,0,0,0,0,0,0,0,0,0,3.479746,0,0),
(77361,17,-3359.939453,500.207428,91.022232,0,0,0,0,0,0,0,0,0,3.017932,0,0),
(77361,18,-3403.422119,497.782318,91.041771,0,0,0,0,0,0,0,0,0,3.043851,0,0),
(77361,19,-3445.682373,497.032379,90.980949,0,0,0,0,0,0,0,0,0,3.150665,0,0),
(77361,20,-3458.765869,497.469757,93.435814,2000,0,0,0,0,0,0,0,0,3.103541,0,0),
(77361,21,-3454.700195,497.650146,93.391716,0,0,0,0,0,0,0,0,0,6.236820,0,0),
(77361,22,-3445.306641,498.185547,90.982765,0,0,0,0,0,0,0,0,0,6.198335,0,0),
(77361,23,-3392.520996,497.932220,91.038338,0,0,0,0,0,0,0,0,0,0.004684,0,0),
(77361,24,-3358.296631,500.185699,90.871918,0,0,0,0,0,0,0,0,0,0.075370,0,0),
(77361,25,-3348.831543,500.039093,89.085114,0,0,0,0,0,0,0,0,0,0.609441,0,0),
(77361,26,-3339.520752,513.784546,84.247292,0,0,0,0,0,0,0,0,0,1.434894,0,0),
(77361,27,-3339.171631,550.774780,72.262802,0,0,0,0,0,0,0,0,0,1.805602,0,0),
(77361,28,-3346.547852,565.376282,68.756714,0,0,0,0,0,0,0,0,0,2.382084,0,0),
(77361,29,-3352.710205,570.918457,65.837151,0,0,0,0,0,0,0,0,0,2.409573,0,0),
(77361,30,-3363.853027,574.800842,63.995598,0,0,0,0,0,0,0,0,0,3.188689,0,0);
-- #3
DELETE FROM creature_movement WHERE id = 77358;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(77358,1,-3279.710449,369.438873,120.114044,0,0,0,0,0,0,0,0,0,0.748003,0,0),
(77358,2,-3253.256348,383.181732,120.261131,0,0,0,0,0,0,0,0,0,0.217078,0,0),
(77358,3,-3228.763672,383.528015,120.168434,0,0,0,0,0,0,0,0,0,6.239511,0,0),
(77358,4,-3209.236084,381.782043,120.138840,0,0,0,0,0,0,0,0,0,0.139324,0,0),
(77358,5,-3204.143555,384.252777,120.132965,0,0,0,0,0,0,0,0,0,0.909799,0,0),
(77358,6,-3203.109863,389.023346,120.207619,0,0,0,0,0,0,0,0,0,1.957521,0,0),
(77358,7,-3205.107422,392.692810,120.280907,0,0,0,0,0,0,0,0,0,2.780619,0,0),
(77358,8,-3214.856689,394.348969,120.388100,0,0,0,0,0,0,0,0,0,3.185884,0,0),
(77358,9,-3287.473877,383.294403,120.291916,0,0,0,0,0,0,0,0,0,3.345519,0,0),
(77358,10,-3324.008301,376.084656,120.455193,0,0,0,0,0,0,0,0,0,4.130923,0,0),
(77358,11,-3329.355469,366.480499,120.460419,0,0,0,0,0,0,0,0,0,4.518909,0,0),
(77358,12,-3331.345459,321.557098,120.545670,0,0,0,0,0,0,0,0,0,4.719963,0,0),
(77358,13,-3331.716309,311.383667,116.442741,0,0,0,0,0,0,0,0,0,4.649278,0,0),
(77358,14,-3331.353760,279.238312,116.411324,0,0,0,0,0,0,0,0,0,4.727240,0,0),
(77358,15,-3331.080078,269.310028,120.507996,0,0,0,0,0,0,0,0,0,4.758656,0,0),
(77358,16,-3330.183105,261.775146,120.543610,0,0,0,0,0,0,0,0,0,5.297438,0,0),
(77358,17,-3327.048828,255.489029,120.530853,0,0,0,0,0,0,0,0,0,5.978374,0,0),
(77358,18,-3311.837891,254.394745,120.516014,0,0,0,0,0,0,0,0,0,0.458593,0,0),
(77358,19,-3304.795654,259.815308,120.512260,0,0,0,0,0,0,0,0,0,1.332790,0,0),
(77358,20,-3301.979004,315.345306,120.525681,0,0,0,0,0,0,0,0,0,1.346142,0,0),
(77358,21,-3294.920410,347.642090,120.513504,0,0,0,0,0,0,0,0,0,1.089651,0,0);
-- #4
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 77359;
DELETE FROM creature_movement WHERE id = 77359;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(77359,1,-3398.509033,396.846313,104.014038,0,0,0,0,0,0,0,0,0,4.750842,0,0),
(77359,2,-3399.312256,363.333221,103.949135,0,0,0,0,0,0,0,0,0,4.822799,0,0),
(77359,3,-3399.412842,316.715942,103.946167,0,0,0,0,0,0,0,0,0,4.711910,0,0),
(77359,4,-3404.175049,278.883698,103.940437,0,0,0,0,0,0,0,0,0,4.503783,0,0),
(77359,5,-3404.871582,269.486786,103.973083,0,0,0,0,0,0,0,0,0,4.729975,0,0),
(77359,6,-3402.584473,263.041534,103.989029,0,0,0,0,0,0,0,0,0,5.341012,0,0),
(77359,7,-3396.940186,259.626678,104.009888,0,0,0,0,0,0,0,0,0,0.380433,0,0),
(77359,8,-3392.721191,263.772858,104.025696,0,0,0,0,0,0,0,0,0,1.276571,0,0),
(77359,9,-3387.552490,280.759308,103.951721,0,0,0,0,0,0,0,0,0,1.547944,0,0),
(77359,10,-3387.984131,328.188965,104.075722,0,0,0,0,0,0,0,0,0,1.595068,0,0),
(77359,11,-3393.658203,363.636078,103.918549,0,0,0,0,0,0,0,0,0,1.724658,0,0),
(77359,12,-3391.494385,399.812408,104.054604,0,0,0,0,0,0,0,0,0,1.221218,0,0),
(77359,13,-3383.185547,414.823395,103.971420,0,0,0,0,0,0,0,0,0,0.626671,0,0),
(77359,14,-3360.953857,425.047699,104.081253,0,0,0,0,0,0,0,0,0,6.172923,0,0),
(77359,15,-3313.754639,428.552063,103.982681,0,0,0,0,0,0,0,0,0,6.158000,0,0),
(77359,16,-3282.372070,428.056549,103.981720,0,0,0,0,0,0,0,0,0,0.250233,0,0),
(77359,17,-3246.391846,435.056824,103.966843,0,0,0,0,0,0,0,0,0,0.226671,0,0),
(77359,18,-3243.369141,436.808990,105.009377,0,0,0,0,0,0,0,0,0,0.304425,0,0),
(77359,19,-3219.221436,438.777405,104.445007,0,0,0,0,0,0,0,0,0,0.366470,0,0),
(77359,20,-3210.825928,444.510437,104.420425,0,0,0,0,0,0,0,0,0,1.192709,0,0),
(77359,21,-3209.328613,453.243195,104.436829,0,0,0,0,0,0,0,0,0,1.914491,0,0),
(77359,22,-3215.187012,459.721313,104.570984,0,0,0,0,0,0,0,0,0,2.741232,0,0),
(77359,23,-3223.355957,463.245483,104.548317,0,0,0,0,0,0,0,0,0,3.284212,0,0),
(77359,24,-3240.232910,459.018890,104.995049,0,0,0,0,0,0,0,0,0,3.532534,0,0),
(77359,25,-3243.022217,457.869232,103.949600,0,0,0,0,0,0,0,0,0,3.083286,0,0),
(77359,26,-3291.028809,451.107697,103.954674,0,0,0,0,0,0,0,0,0,3.198739,0,0),
(77359,27,-3301.155762,451.090149,99.852119,0,0,0,0,0,0,0,0,0,3.139834,0,0),
(77359,28,-3358.054688,452.586090,99.849892,0,0,0,0,0,0,0,0,0,3.096638,0,0),
(77359,29,-3367.628906,453.000519,103.948082,0,0,0,0,0,0,0,0,0,3.096638,0,0),
(77359,30,-3384.376709,453.566376,103.982300,0,0,0,0,0,0,0,0,0,4.196194,0,0),
(77359,31,-3393.199707,439.711670,103.963280,0,0,0,0,0,0,0,0,0,4.617947,0,0);
-- Shadowmoon Soulstealer
-- 1st
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 77282;
DELETE FROM creature_movement WHERE id = 77282;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(77282,1,-3256.69,272.998,137.138,600000,0,0,0,0,0,0,0,38250,1.06465,0,0),
(77282,2,-3256.69,272.998,137.138,0,0,0,0,0,0,0,0,0,1.06465,0,0);
-- 2nd
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 77283;
DELETE FROM creature_movement WHERE id = 77283;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(77283,1,-3236.01,291.181,137.178,600000,0,0,0,0,0,0,0,38250,3.36848,0,0),
(77283,2,-3236.01,291.181,137.178,0,0,0,0,0,0,0,0,0,3.36848,0,0);
-- 3rd
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 77284;
DELETE FROM creature_movement WHERE id = 77284;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(77284,1,-3254.48,301.103,137.13,600000,0,0,0,0,0,0,0,38250,5.11381,0,0),
(77284,2,-3254.48,301.103,137.13,0,0,0,0,0,0,0,0,0,5.11381,0,0);
-- Shadowmoon Chosen <Servant of Illidan>
DELETE FROM creature_movement WHERE id IN (77483, 77487, 77492, 77495, 77497, 77498);
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
-- #1
(77498,1,-3273.430176,466.250305,103.947731,0,0,0,0,0,0,0,0,0,2.452927,0,0),
(77498,2,-3277.283691,468.817780,105.081825,3000,0,0,0,0,0,0,0,0,2.503979,0,0),
(77498,3,-3274.153809,466.214020,103.949318,0,0,0,0,0,0,0,0,0,5.614156,0,0),
(77498,4,-3269.092041,460.547180,103.946373,0,0,0,0,0,0,0,0,0,5.659713,0,0),
(77498,5,-3264.622803,458.287384,103.947365,0,0,0,0,0,0,0,0,0,6.207917,0,0),
(77498,6,-3253.521729,458.053375,103.947037,0,0,0,0,0,0,0,0,0,0.189409,0,0),
(77498,7,-3241.199463,462.775360,103.944969,0,0,0,0,0,0,0,0,0,0.161134,0,0),
(77498,8,-3239.406006,463.030426,104.835648,0,0,0,0,0,0,0,0,0,0.116367,0,0),
(77498,9,-3219.882080,467.260071,104.330605,0,0,0,0,0,0,0,0,0,0.209829,0,0),
(77498,10,-3212.728271,466.413605,104.330200,0,0,0,0,0,0,0,0,0,5.821502,0,0),
(77498,11,-3205.908447,460.538757,104.400391,0,0,0,0,0,0,0,0,0,5.241881,0,0),
(77498,12,-3197.353027,445.922546,104.260895,0,0,0,0,0,0,0,0,0,4.679538,0,0),
(77498,13,-3198.236328,439.746399,104.223038,3000,0,0,0,0,0,0,0,0,3.795968,0,0),
(77498,14,-3196.721191,443.402313,104.248337,0,0,0,0,0,0,0,0,0,1.475117,0,0),
(77498,15,-3199.450439,450.802704,104.290527,0,0,0,0,0,0,0,0,0,2.178049,0,0),
(77498,16,-3212.025146,465.280579,104.389053,0,0,0,0,0,0,0,0,0,2.621799,0,0),
(77498,17,-3216.812744,467.330811,104.329376,0,0,0,0,0,0,0,0,0,2.968946,0,0),
(77498,18,-3225.773926,468.258179,104.334778,0,0,0,0,0,0,0,0,0,3.481811,0,0),
(77498,19,-3237.885498,470.102356,104.449318,0,0,0,0,0,0,0,0,0,3.022353,0,0),
(77498,20,-3239.493896,470.268890,103.937302,0,0,0,0,0,0,0,0,0,3.053769,0,0),
(77498,21,-3245.347412,468.929108,103.937386,0,0,0,0,0,0,0,0,0,3.649101,0,0),
(77498,22,-3257.257324,457.550934,103.947227,0,0,0,0,0,0,0,0,0,3.435472,0,0),
(77498,23,-3265.825928,459.973083,103.947243,0,0,0,0,0,0,0,0,0,2.628806,0,0),
-- #2
(77495,1,-3256.181885,422.742004,103.978172,0,0,0,0,0,0,0,0,0,3.260232,0,0),
(77495,2,-3286.148438,419.750610,103.973724,0,0,0,0,0,0,0,0,0,3.056028,0,0),
(77495,3,-3306.044678,421.926056,104.003342,0,0,0,0,0,0,0,0,0,2.704170,0,0),
(77495,4,-3311.073975,424.382599,104.047546,0,0,0,0,0,0,0,0,0,2.872245,0,0),
(77495,5,-3315.657959,425.486786,104.055466,0,0,0,0,0,0,0,0,0,3.264158,0,0),
(77495,6,-3322.921875,423.941895,104.092133,0,0,0,0,0,0,0,0,0,3.532765,0,0),
(77495,7,-3332.616699,421.340576,104.095772,0,0,0,0,0,0,0,0,0,3.111791,0,0),
(77495,8,-3356.459473,420.663147,104.161461,0,0,0,0,0,0,0,0,0,3.392964,0,0),
(77495,9,-3370.291748,418.797546,103.982430,0,0,0,0,0,0,0,0,0,0.068375,0,0),
(77495,10,-3324.608643,422.058563,104.046478,0,0,0,0,0,0,0,0,0,0.332262,0,0),
(77495,11,-3318.732666,424.825378,104.116524,0,0,0,0,0,0,0,0,0,0.304773,0,0),
(77495,12,-3313.955811,425.627228,103.983833,0,0,0,0,0,0,0,0,0,6.163844,0,0),
(77495,13,-3305.731934,423.301239,103.985695,0,0,0,0,0,0,0,0,0,0.035489,0,0),
(77495,14,-3286.333740,419.790527,103.971901,0,0,0,0,0,0,0,0,0,0.234979,0,0),
(77495,15,-3256.298340,423.441132,103.977867,0,0,0,0,0,0,0,0,0,6.268405,0,0),
(77495,16,-3242.206299,422.383698,104.230759,0,0,0,0,0,0,0,0,0,6.200862,0,0),
(77495,17,-3214.768555,418.886932,104.062302,0,0,0,0,0,0,0,0,0,2.975231,0,0),
(77495,18,-3244.938965,422.605621,103.979568,0,0,0,0,0,0,0,0,0,3.040722,0,0),
-- #3
(77487,1,-3403.364990,328.728394,104.110565,0,0,0,0,0,0,0,0,0,1.291629,0,0),
(77487,2,-3403.340820,345.801331,103.946037,0,0,0,0,0,0,0,0,0,1.891668,0,0),
(77487,3,-3411.084717,359.649536,103.965881,3000,0,0,0,0,0,0,0,0,4.024030,0,0),
(77487,4,-3403.224365,348.166870,104.008774,0,0,0,0,0,0,0,0,0,5.013206,0,0),
(77487,5,-3403.197754,330.072540,104.046776,0,0,0,0,0,0,0,0,0,4.458718,0,0),
(77487,6,-3407.827148,315.040710,104.653900,0,0,0,0,0,0,0,0,0,4.578888,0,0),
(77487,7,-3406.247070,306.511719,103.942871,0,0,0,0,0,0,0,0,0,4.520768,0,0),
(77487,8,-3406.994629,302.544556,103.946007,0,0,0,0,0,0,0,0,0,4.309547,0,0),
(77487,9,-3407.981445,298.817596,105.111092,0,0,0,0,0,0,0,0,0,4.408510,0,0),
(77487,10,-3413.037109,282.767426,103.936279,0,0,0,0,0,0,0,0,0,4.777644,0,0),
(77487,11,-3411.763916,274.506897,103.941925,0,0,0,0,0,0,0,0,0,5.347055,0,0),
(77487,12,-3408.242188,267.965546,103.968071,0,0,0,0,0,0,0,0,0,4.845183,0,0),
(77487,13,-3408.091797,263.461090,103.969109,0,0,0,0,0,0,0,0,0,4.344104,0,0),
(77487,14,-3409.978516,260.113098,103.964195,0,0,0,0,0,0,0,0,0,4.472913,0,0),
(77487,15,-3408.909424,254.543640,103.965515,0,0,0,0,0,0,0,0,0,5.464863,0,0),
(77487,16,-3404.346680,252.275620,103.977959,0,0,0,0,0,0,0,0,0,6.173289,0,0),
(77487,17,-3376.865479,253.681305,104.061081,3000,0,0,0,0,0,0,0,0,4.326817,0,0),
(77487,18,-3381.121582,253.231445,104.047096,0,0,0,0,0,0,0,0,0,3.422823,0,0),
(77487,19,-3402.798828,247.365463,103.956177,0,0,0,0,0,0,0,0,0,3.250822,0,0),
(77487,20,-3406.418945,247.804306,103.946983,0,0,0,0,0,0,0,0,0,2.613862,0,0),
(77487,21,-3410.517578,254.466187,103.956314,0,0,0,0,0,0,0,0,0,1.722434,0,0),
(77487,22,-3410.923828,257.940186,103.961746,0,0,0,0,0,0,0,0,0,1.265332,0,0),
(77487,23,-3408.464111,262.607513,103.968185,0,0,0,0,0,0,0,0,0,1.319524,0,0),
(77487,24,-3407.481934,268.495880,103.971092,0,0,0,0,0,0,0,0,0,1.859879,0,0),
(77487,25,-3411.080566,275.701111,103.945038,0,0,0,0,0,0,0,0,0,1.667456,0,0),
(77487,26,-3410.743896,299.294983,105.127625,0,0,0,0,0,0,0,0,0,1.233916,0,0),
(77487,27,-3409.549561,302.645569,103.826645,0,0,0,0,0,0,0,0,0,1.223706,0,0),
(77487,28,-3408.058594,306.691498,104.119316,0,0,0,0,0,0,0,0,0,1.580277,0,0),
(77487,29,-3408.783447,314.251343,104.629204,0,0,0,0,0,0,0,0,0,1.647821,0,0),
-- #4
(77492,1,-3412.216797,417.966736,103.932938,0,0,0,0,0,0,0,0,0,1.400466,0,0),
(77492,2,-3410.948242,423.622589,103.934402,0,0,0,0,0,0,0,0,0,1.796306,0,0),
(77492,3,-3413.510498,442.226563,103.985161,0,0,0,0,0,0,0,0,0,1.490787,0,0),
(77492,4,-3416.250732,462.052368,103.933899,0,0,0,0,0,0,0,0,0,1.585034,0,0),
(77492,5,-3416.093750,464.669403,103.933899,0,0,0,0,0,0,0,0,0,0.908021,0,0),
(77492,6,-3413.450195,467.301849,103.932434,0,0,0,0,0,0,0,0,0,0.133618,0,0),
(77492,7,-3400.259521,464.811646,103.950127,0,0,0,0,0,0,0,0,0,0.001285,0,0),
(77492,8,-3387.505371,470.969147,103.939148,3000,0,0,0,0,0,0,0,0,5.604319,0,0),
(77492,9,-3391.147705,470.302032,103.939148,0,0,0,0,0,0,0,0,0,3.530082,0,0),
(77492,10,-3399.678223,465.832581,103.947098,0,0,0,0,0,0,0,0,0,3.436619,0,0),
(77492,11,-3403.207031,465.622711,103.945625,0,0,0,0,0,0,0,0,0,2.896265,0,0),
(77492,12,-3410.497803,468.867676,103.928574,0,0,0,0,0,0,0,0,0,3.061199,0,0),
(77492,13,-3415.667236,467.460663,103.928726,0,0,0,0,0,0,0,0,0,4.046088,0,0),
(77492,14,-3417.329834,461.137634,103.932350,0,0,0,0,0,0,0,0,0,4.713674,0,0),
(77492,15,-3413.475830,443.661377,103.945221,0,0,0,0,0,0,0,0,0,4.740375,0,0),
(77492,16,-3410.678223,424.075165,103.936577,0,0,0,0,0,0,0,0,0,4.473341,0,0),
(77492,17,-3414.935059,397.160828,103.950760,3000,0,0,0,0,0,0,0,0,4.544030,0,0),
-- #5
(77497,1,-3309.750977,383.580383,120.455360,0,0,0,0,0,0,0,0,0,2.936300,0,0),
(77497,2,-3324.139160,389.138763,120.448120,0,0,0,0,0,0,0,0,0,3.069031,0,0),
(77497,3,-3308.307861,384.654297,120.452744,0,0,0,0,0,0,0,0,0,0.056237,0,0),
(77497,4,-3296.787109,385.616119,120.455528,0,0,0,0,0,0,0,0,0,0.367254,0,0),
(77497,5,-3275.747559,390.621338,120.371681,0,0,0,0,0,0,0,0,0,6.281302,0,0),
(77497,6,-3243.441162,394.940308,120.362328,0,0,0,0,0,0,0,0,0,0.094721,0,0),
(77497,7,-3212.554932,394.678497,120.397362,0,0,0,0,0,0,0,0,0,0.157552,0,0),
(77497,8,-3205.384521,396.340698,120.346008,0,0,0,0,0,0,0,0,0,6.159565,0,0),
(77497,9,-3200.260498,394.407257,120.294853,0,0,0,0,0,0,0,0,0,5.567379,0,0),
(77497,10,-3198.011230,388.696198,120.182068,0,0,0,0,0,0,0,0,0,4.884083,0,0),
(77497,11,-3197.404297,380.314301,120.025276,0,0,0,0,0,0,0,0,0,4.316245,0,0),
(77497,12,-3203.671631,374.005981,119.961044,3000,0,0,0,0,0,0,0,0,2.578945,0,0),
(77497,13,-3200.187744,377.802490,119.994751,0,0,0,0,0,0,0,0,0,1.104753,0,0),
(77497,14,-3197.826660,389.537537,120.196892,0,0,0,0,0,0,0,0,0,1.844598,0,0),
(77497,15,-3199.444092,392.892487,120.263412,0,0,0,0,0,0,0,0,0,2.366103,0,0),
(77497,16,-3202.685059,395.881958,120.327713,0,0,0,0,0,0,0,0,0,2.982640,0,0),
(77497,17,-3212.956787,394.533081,120.396667,0,0,0,0,0,0,0,0,0,3.129510,0,0),
(77497,18,-3248.721436,394.193024,120.381020,0,0,0,0,0,0,0,0,0,3.267740,0,0),
(77497,19,-3274.547119,390.446442,120.378204,0,0,0,0,0,0,0,0,0,3.126367,0,0),
(77497,20,-3298.781006,384.521545,120.456078,0,0,0,0,0,0,0,0,0,3.303082,0,0),
-- #6
(77483,1,-3335.962891,252.970810,120.503349,0,0,0,0,0,0,0,0,0,6.108682,0,0),
(77483,2,-3328.074463,251.428177,120.523827,0,0,0,0,0,0,0,0,0,0.126303,0,0),
(77483,3,-3311.626465,255.484756,120.517921,0,0,0,0,0,0,0,0,0,0.824522,0,0),
(77483,4,-3303.802979,273.051697,120.588921,0,0,0,0,0,0,0,0,0,1.511090,0,0),
(77483,5,-3302.615234,298.239624,120.514359,0,0,0,0,0,0,0,0,0,1.564497,0,0),
(77483,6,-3304.244141,323.465393,120.535866,0,0,0,0,0,0,0,0,0,1.838602,0,0),
(77483,7,-3312.884766,339.076965,120.555367,0,0,0,0,0,0,0,0,0,2.367960,0,0),
(77483,8,-3316.726318,342.398315,120.550377,0,0,0,0,0,0,0,0,0,2.875327,0,0),
(77483,9,-3348.094727,331.383423,120.546364,0,0,0,0,0,0,0,0,0,3.377197,0,0),
(77483,10,-3351.527100,331.255249,120.531021,0,0,0,0,0,0,0,0,0,2.579232,0,0),
(77483,11,-3353.141602,333.799561,120.496994,0,0,0,0,0,0,0,0,0,1.586487,0,0),
(77483,12,-3350.192871,348.789642,120.449173,0,0,0,0,0,0,0,0,0,1.665812,0,0),
(77483,13,-3353.362793,354.282593,120.449173,0,0,0,0,0,0,0,0,0,1.865303,0,0),
(77483,14,-3352.930176,375.159149,120.447670,3000,0,0,0,0,0,0,0,0,2.008245,0,0),
(77483,15,-3353.279541,354.982544,120.447670,0,0,0,0,0,0,0,0,0,4.859238,0,0),
(77483,16,-3351.317383,343.409210,120.453850,0,0,0,0,0,0,0,0,0,4.746137,0,0),
(77483,17,-3354.260742,336.788361,120.472343,0,0,0,0,0,0,0,0,0,4.548219,0,0),
(77483,18,-3353.373291,334.145569,120.492149,0,0,0,0,0,0,0,0,0,5.473414,0,0),
(77483,19,-3350.732910,332.513733,120.526306,0,0,0,0,0,0,0,0,0,0.038455,0,0),
(77483,20,-3326.919922,339.233276,120.559914,0,0,0,0,0,0,0,0,0,0.181396,0,0),
(77483,21,-3318.338867,339.093170,120.561432,0,0,0,0,0,0,0,0,0,5.835479,0,0),
(77483,22,-3311.006104,327.967926,120.568108,0,0,0,0,0,0,0,0,0,5.165537,0,0),
(77483,23,-3302.743408,299.106628,120.516457,0,0,0,0,0,0,0,0,0,4.725714,0,0),
(77483,24,-3307.590820,261.589417,120.517166,0,0,0,0,0,0,0,0,0,3.932470,0,0),
(77483,25,-3318.056641,253.183487,120.517273,0,0,0,0,0,0,0,0,0,3.415679,0,0),
(77483,26,-3327.049316,251.433075,120.521393,0,0,0,0,0,0,0,0,0,3.036331,0,0),
(77483,27,-3340.245850,251.810928,120.495079,0,0,0,0,0,0,0,0,0,2.711176,0,0),
(77483,28,-3352.260498,260.265717,120.520065,3000,0,0,0,0,0,0,0,0,2.397017,0,0);
-- Shadowmoon Eye of Kilrogg
UPDATE creature SET MovementType =2, spawndist = 0 WHERE guid IN (77721, 77722, 77723, 77724, 77725, 77726, 77727, 77728, 77729);
DELETE FROM creature_movement WHERE id IN (77721, 77722, 77723, 77724, 77725, 77726, 77727, 77728, 77729);
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
-- #1
(77725,1,-3195.076904,393.161407,120.269440,3000,0,0,0,0,0,0,0,0,2.206451,0,0),
(77725,2,-3221.444824,387.712036,120.223526,0,0,0,0,0,0,0,0,0,3.119870,0,0),
(77725,3,-3251.591553,385.769257,120.291641,0,0,0,0,0,0,0,0,0,3.403399,0,0),
(77725,4,-3288.553955,367.885712,120.249062,0,0,0,0,0,0,0,0,0,4.037215,0,0),
(77725,5,-3305.647705,322.172058,120.531120,0,0,0,0,0,0,0,0,0,4.542215,0,0),
(77725,6,-3306.112305,274.522491,120.571419,0,0,0,0,0,0,0,0,0,4.597194,0,0),
(77725,7,-3308.043701,258.509094,120.517212,0,0,0,0,0,0,0,0,0,4.241408,0,0),
(77725,8,-3310.346680,254.846954,120.515564,0,0,0,0,0,0,0,0,0,3.346058,0,0),
(77725,9,-3328.718506,252.986435,120.524406,0,0,0,0,0,0,0,0,0,3.093160,0,0),
(77725,10,-3341.224365,254.529755,120.508614,0,0,0,0,0,0,0,0,0,2.683968,0,0),
(77725,11,-3353.902100,260.053772,120.510956,3000,0,0,0,0,0,0,0,0,2.204875,0,0),
(77725,12,-3343.725586,254.835373,120.511681,0,0,0,0,0,0,0,0,0,6.211038,0,0),
(77725,13,-3316.558838,252.091202,120.512527,0,0,0,0,0,0,0,0,0,0.300914,0,0),
(77725,14,-3310.552002,254.499390,120.514244,0,0,0,0,0,0,0,0,0,0.845195,0,0),
(77725,15,-3307.198242,259.409698,120.516830,0,0,0,0,0,0,0,0,0,1.407541,0,0),
(77725,16,-3306.909180,298.143982,120.515289,0,0,0,0,0,0,0,0,0,1.388691,0,0),
(77725,17,-3303.792725,323.015808,120.532944,0,0,0,0,0,0,0,0,0,1.268525,0,0),
(77725,18,-3291.817139,354.984955,120.488922,0,0,0,0,0,0,0,0,0,1.017983,0,0),
(77725,19,-3273.110840,380.011902,120.130959,0,0,0,0,0,0,0,0,0,0.622927,0,0),
(77725,20,-3258.571533,386.762360,120.302040,0,0,0,0,0,0,0,0,0,0.256898,0,0),
(77725,21,-3244.921631,388.682465,120.253334,0,0,0,0,0,0,0,0,0,6.225138,0,0),
(77725,22,-3217.619629,388.448761,120.253517,0,0,0,0,0,0,0,0,0,6.232993,0,0),
-- #2
(77724,1,-3268.314209,346.974182,119.788574,0,0,0,0,0,0,0,0,0,0.033832,0,0),
(77724,2,-3261.419189,347.114410,122.715813,0,0,0,0,0,0,0,0,0,0.067604,0,0),
(77724,3,-3259.321533,347.033600,122.742203,0,0,0,0,0,0,0,0,0,6.229053,0,0),
(77724,4,-3248.227051,347.231689,127.434837,0,0,0,0,0,0,0,0,0,6.268322,0,0),
(77724,5,-3233.746826,347.030457,127.509087,0,0,0,0,0,0,0,0,0,2.964936,0,0),
(77724,6,-3248.320557,346.119507,127.432564,0,0,0,0,0,0,0,0,0,3.168186,0,0),
(77724,7,-3260.423096,345.940216,122.727867,0,0,0,0,0,0,0,0,0,3.156405,0,0),
(77724,8,-3268.949707,345.845856,119.780853,0,0,0,0,0,0,0,0,0,3.152478,0,0),
(77724,9,-3303.517578,341.340637,120.536858,0,0,0,0,0,0,0,0,0,3.366106,0,0),
(77724,10,-3325.061035,333.977325,120.576653,0,0,0,0,0,0,0,0,0,3.829491,0,0),
(77724,11,-3329.682861,327.501221,120.579788,0,0,0,0,0,0,0,0,0,4.495508,0,0),
(77724,12,-3332.123047,321.219177,120.543236,0,0,0,0,0,0,0,0,0,4.660438,0,0),
(77724,13,-3332.357666,311.601379,116.445213,0,0,0,0,0,0,0,0,0,4.695780,0,0),
(77724,14,-3333.332031,303.404053,116.409622,0,0,0,0,0,0,0,0,0,3.850693,0,0),
(77724,15,-3346.009033,296.526550,116.332726,0,0,0,0,0,0,0,0,0,3.297774,0,0),
(77724,16,-3357.723633,295.746857,111.617332,0,0,0,0,0,0,0,0,0,3.059834,0,0),
(77724,17,-3376.594482,295.955872,103.962952,0,0,0,0,0,0,0,0,0,3.130518,0,0),
(77724,18,-3381.942139,296.015076,103.962952,0,0,0,0,0,0,0,0,0,3.130518,0,0),
(77724,19,-3376.814453,295.986969,103.962952,0,0,0,0,0,0,0,0,0,0.008556,0,0),
(77724,20,-3357.975342,296.611908,111.615829,0,0,0,0,0,0,0,0,0,0.046699,0,0),
(77724,21,-3345.719727,296.270905,116.333092,0,0,0,0,0,0,0,0,0,0.204565,0,0),
(77724,22,-3336.177246,299.514771,116.392525,0,0,0,0,0,0,0,0,0,1.123481,0,0),
(77724,23,-3333.326660,303.744110,116.408203,0,0,0,0,0,0,0,0,0,1.362242,0,0),
(77724,24,-3332.049561,311.913361,116.448509,0,0,0,0,0,0,0,0,0,1.511468,0,0),
(77724,25,-3331.795166,321.280548,120.543907,0,0,0,0,0,0,0,0,0,1.562519,0,0),
(77724,26,-3330.533691,328.912811,120.583870,0,0,0,0,0,0,0,0,0,0.945981,0,0),
(77724,27,-3323.495605,334.918365,120.577316,0,0,0,0,0,0,0,0,0,0.374211,0,0),
(77724,28,-3300.934814,343.312164,120.529343,0,0,0,0,0,0,0,0,0,0.115030,0,0),
-- #3
(77722,1,-3442.938965,270.199127,90.988869,0,0,0,0,0,0,0,0,0,4.068600,0,0),
(77722,2,-3439.312744,284.318329,90.987434,0,0,0,0,0,0,0,0,0,1.652714,0,0),
(77722,3,-3442.039063,298.866119,90.986046,0,0,0,0,0,0,0,0,0,1.604805,0,0),
(77722,4,-3442.111328,355.299316,90.980247,0,0,0,0,0,0,0,0,0,1.551398,0,0),
(77722,5,-3437.556396,356.027313,90.979752,0,0,0,0,0,0,0,0,0,5.427333,0,0),
(77722,6,-3438.804688,335.031952,90.979927,0,0,0,0,0,0,0,0,0,4.813945,0,0),
-- #4
(77721,1,-3396.062744,288.669495,103.953140,0,0,0,0,0,0,0,0,0,4.701827,0,0),
(77721,2,-3395.906494,374.809296,104.207062,0,0,0,0,0,0,0,0,0,1.816275,0,0),
(77721,3,-3400.151611,408.005768,104.008904,0,0,0,0,0,0,0,0,0,1.464416,0,0),
(77721,4,-3398.810791,429.451477,103.952408,0,0,0,0,0,0,0,0,0,1.646629,0,0),
(77721,5,-3402.261475,406.881439,103.999855,0,0,0,0,0,0,0,0,0,4.829844,0,0),
(77721,6,-3396.139160,376.283569,104.051567,0,0,0,0,0,0,0,0,0,4.646846,0,0),
-- #5
(77727,1,-3310.654541,426.984009,104.013382,0,0,0,0,0,0,0,0,0,0.075728,0,0),
(77727,2,-3267.005615,429.924072,103.973053,3000,0,0,0,0,0,0,0,0,0.254000,0,0),
(77727,3,-3298.026611,427.279327,103.958122,0,0,0,0,0,0,0,0,0,3.130913,0,0),
(77727,4,-3330.759033,424.244904,104.033699,0,0,0,0,0,0,0,0,0,3.268358,0,0),
(77727,5,-3374.444336,423.085815,103.977852,0,0,0,0,0,0,0,0,0,2.527727,0,0),
(77727,6,-3392.534424,434.208649,103.962112,0,0,0,0,0,0,0,0,0,2.074552,0,0),
(77727,7,-3395.879150,449.785004,104.007607,0,0,0,0,0,0,0,0,0,1.622163,0,0),
(77727,8,-3396.325439,463.023926,103.959656,0,0,0,0,0,0,0,0,0,1.567971,0,0),
(77727,9,-3396.527588,446.186737,103.994621,0,0,0,0,0,0,0,0,0,4.944395,0,0),
(77727,10,-3391.922607,433.994415,103.962830,0,0,0,0,0,0,0,0,0,5.543651,0,0),
(77727,11,-3374.751221,423.618744,103.976761,0,0,0,0,0,0,0,0,0,6.049445,0,0),
(77727,12,-3342.370605,423.622711,104.105621,0,0,0,0,0,0,0,0,0,0.059994,0,0),
-- #6
(77729,1,-3330.593506,478.389984,95.041908,0,0,0,0,0,0,0,0,0,1.674062,0,0),
(77729,2,-3331.554443,491.815155,90.321617,3000,0,0,0,0,0,0,0,0,1.615157,0,0),
(77729,3,-3329.534912,478.134003,95.044098,0,0,0,0,0,0,0,0,0,4.847069,0,0),
(77729,4,-3328.132813,466.341003,99.756401,0,0,0,0,0,0,0,0,0,5.134523,0,0),
(77729,5,-3320.517578,458.526855,99.802322,0,0,0,0,0,0,0,0,0,5.901065,0,0),
(77729,6,-3300.698975,454.023895,99.861107,0,0,0,0,0,0,0,0,0,6.095841,0,0),
(77729,7,-3291.399658,452.061279,103.951363,0,0,0,0,0,0,0,0,0,5.881428,0,0),
(77729,8,-3271.331299,443.724701,103.964394,0,0,0,0,0,0,0,0,0,6.194803,0,0),
(77729,9,-3249.833496,444.970551,103.956810,3000,0,0,0,0,0,0,0,0,0.095398,0,0),
(77729,10,-3271.287598,443.831116,103.964378,0,0,0,0,0,0,0,0,0,3.170232,0,0),
(77729,11,-3291.312012,450.389160,103.954506,0,0,0,0,0,0,0,0,0,2.785386,0,0),
(77729,12,-3301.099854,453.886871,99.853088,0,0,0,0,0,0,0,0,0,2.808948,0,0),
(77729,13,-3321.034668,460.149292,99.801468,0,0,0,0,0,0,0,0,0,2.604745,0,0),
(77729,14,-3328.130859,466.632263,99.754944,0,0,0,0,0,0,0,0,0,1.857831,0,0),
-- #7
(77723,1,-3371.517334,497.039825,91.020210,0,0,0,0,0,0,0,0,0,5.728266,0,0),
(77723,2,-3413.660889,502.275421,91.036865,0,0,0,0,0,0,0,0,0,3.113675,0,0),
(77723,3,-3436.075439,500.502075,91.031517,0,0,0,0,0,0,0,0,0,4.122912,0,0),
(77723,4,-3443.008545,475.566589,90.972687,0,0,0,0,0,0,0,0,0,4.858038,0,0),
(77723,5,-3437.254639,425.209900,90.974533,0,0,0,0,0,0,0,0,0,4.555660,0,0),
(77723,6,-3440.192627,415.822388,90.974533,0,0,0,0,0,0,0,0,0,3.936767,0,0),
(77723,7,-3443.720947,412.742859,90.974533,0,0,0,0,0,0,0,0,0,3.812675,0,0),
(77723,8,-3440.179932,417.296783,90.974533,0,0,0,0,0,0,0,0,0,1.375584,0,0),
(77723,9,-3437.247559,431.835602,90.974533,0,0,0,0,0,0,0,0,0,1.679533,0,0),
(77723,10,-3441.819824,475.996338,90.973000,0,0,0,0,0,0,0,0,0,1.641048,0,0),
(77723,11,-3441.258301,495.005798,90.978920,0,0,0,0,0,0,0,0,0,0.992308,0,0),
(77723,12,-3435.360107,500.616028,91.031174,0,0,0,0,0,0,0,0,0,0.284502,0,0),
(77723,13,-3423.857666,503.157928,91.034454,0,0,0,0,0,0,0,0,0,6.271593,0,0),
(77723,14,-3402.795898,501.709839,91.061058,0,0,0,0,0,0,0,0,0,6.175776,0,0),
-- #8
(77728,1,-3311.075684,515.189209,84.522995,0,0,0,0,0,0,0,0,0,2.174948,0,0),
(77728,2,-3315.285156,525.686157,80.613541,0,0,0,0,0,0,0,0,0,1.604749,0,0),
(77728,3,-3313.549805,539.895081,75.615364,0,0,0,0,0,0,0,0,0,1.164926,0,0),
(77728,4,-3310.075684,549.584290,72.594543,0,0,0,0,0,0,0,0,0,0.935590,0,0),
(77728,5,-3298.569824,560.565247,72.064949,0,0,0,0,0,0,0,0,0,0.415656,0,0),
(77728,6,-3281.249756,561.928406,72.071297,0,0,0,0,0,0,0,0,0,6.198543,0,0),
(77728,7,-3262.239990,560.571960,72.070145,3000,0,0,0,0,0,0,0,0,2.105050,0,0),
(77728,8,-3269.583984,559.511230,72.070145,0,0,0,0,0,0,0,0,0,3.172404,0,0),
(77728,9,-3292.369385,561.697021,72.066948,0,0,0,0,0,0,0,0,0,3.218743,0,0),
(77728,10,-3304.929199,556.867004,72.065529,0,0,0,0,0,0,0,0,0,3.885546,0,0),
(77728,11,-3313.125977,546.518677,73.588058,0,0,0,0,0,0,0,0,0,4.331655,0,0),
(77728,12,-3316.042725,532.431091,78.149330,0,0,0,0,0,0,0,0,0,4.630104,0,0),
(77728,13,-3312.628174,514.187012,84.614967,0,0,0,0,0,0,0,0,0,5.239569,0,0),
(77728,14,-3306.129150,508.807404,87.263046,0,0,0,0,0,0,0,0,0,5.955060,0,0),
(77728,15,-3298.943115,509.115875,90.618225,0,0,0,0,0,0,0,0,0,0.248356,0,0),
(77728,16,-3294.448486,510.980133,91.599983,0,0,0,0,0,0,0,0,0,0.448633,0,0),
(77728,17,-3283.439453,515.971130,91.152519,0,0,0,0,0,0,0,0,0,0.401509,0,0),
(77728,18,-3272.586914,519.537170,91.869331,0,0,0,0,0,0,0,0,0,6.266077,0,0),
(77728,19,-3259.105225,513.584778,91.153389,0,0,0,0,0,0,0,0,0,5.325959,0,0),
(77728,20,-3256.079590,509.153778,91.153389,0,0,0,0,0,0,0,0,0,5.261981,0,0),
(77728,21,-3261.249512,514.022156,91.166801,0,0,0,0,0,0,0,0,0,2.564139,0,0),
(77728,22,-3269.467773,518.116089,92.462273,0,0,0,0,0,0,0,0,0,2.623044,0,0),
(77728,23,-3274.192383,519.952271,91.346512,0,0,0,0,0,0,0,0,0,3.091141,0,0),
(77728,24,-3292.301758,510.336792,91.541595,0,0,0,0,0,0,0,0,0,3.340112,0,0),
(77728,25,-3299.943115,510.490509,90.380257,0,0,0,0,0,0,0,0,0,2.813110,0,0),
(77728,26,-3308.723145,513.193054,85.419296,0,0,0,0,0,0,0,0,0,2.348155,0,0),
-- #9
(77726,1,-3224.840820,443.411957,104.664536,0,0,0,0,0,0,0,0,0,0.666522,0,0),
(77726,2,-3219.583496,449.288330,104.598618,0,0,0,0,0,0,0,0,0,1.365527,0,0),
(77726,3,-3221.124023,455.662598,104.659065,0,0,0,0,0,0,0,0,0,2.329996,0,0),
(77726,4,-3226.753174,459.875763,104.767784,0,0,0,0,0,0,0,0,0,2.988161,0,0),
(77726,5,-3241.954590,456.619232,104.313774,0,0,0,0,0,0,0,0,0,3.515948,0,0),
(77726,6,-3266.895996,448.111542,103.955147,0,0,0,0,0,0,0,0,0,3.285826,0,0),
(77726,7,-3291.333252,449.484039,103.954376,0,0,0,0,0,0,0,0,0,3.060417,0,0),
(77726,8,-3300.852051,450.564209,99.857018,0,0,0,0,0,0,0,0,0,3.009366,0,0),
(77726,9,-3358.296875,452.367828,99.853577,0,0,0,0,0,0,0,0,0,3.115395,0,0),
(77726,10,-3367.739258,453.233765,103.948174,0,0,0,0,0,0,0,0,0,3.001512,0,0),
(77726,11,-3376.669678,454.367554,103.985970,0,0,0,0,0,0,0,0,0,3.334521,0,0),
(77726,12,-3386.113037,452.648224,103.984093,0,0,0,0,0,0,0,0,0,3.789267,0,0),
(77726,13,-3395.147461,443.415039,103.975922,0,0,0,0,0,0,0,0,0,3.936136,0,0),
(77726,14,-3401.673096,431.890839,103.950821,0,0,0,0,0,0,0,0,0,4.471776,0,0),
(77726,15,-3403.417725,412.995880,103.987572,0,0,0,0,0,0,0,0,0,4.842567,0,0),
(77726,16,-3400.506348,384.747406,103.653076,0,0,0,0,0,0,0,0,0,4.632866,0,0),
(77726,17,-3400.972656,372.213867,104.487686,0,0,0,0,0,0,0,0,0,4.691770,0,0),
(77726,18,-3401.037109,348.890747,104.021782,0,0,0,0,0,0,0,0,0,4.715331,0,0),
(77726,19,-3399.882813,323.694397,104.198708,0,0,0,0,0,0,0,0,0,4.877122,0,0),
(77726,20,-3393.624023,307.519897,103.954041,0,0,0,0,0,0,0,0,0,5.338147,0,0),
(77726,21,-3384.733887,297.954010,103.966103,0,0,0,0,0,0,0,0,0,5.697073,0,0),
(77726,22,-3376.396729,295.472321,103.963135,0,0,0,0,0,0,0,0,0,6.275122,0,0),
(77726,23,-3358.215576,295.655518,111.612457,0,0,0,0,0,0,0,0,0,6.236637,0,0),
(77726,24,-3345.835205,295.744049,116.331345,0,0,0,0,0,0,0,0,0,0.012356,0,0),
(77726,25,-3336.951416,295.428131,116.383430,0,0,0,0,0,0,0,0,0,6.205222,0,0),
(77726,26,-3345.875732,294.790588,116.331001,0,0,0,0,0,0,0,0,0,3.130388,0,0),
(77726,27,-3357.753418,295.081299,111.618729,0,0,0,0,0,0,0,0,0,3.091118,0,0),
(77726,28,-3377.186523,297.917725,103.965401,0,0,0,0,0,0,0,0,0,2.782456,0,0),
(77726,29,-3381.189697,301.480652,103.968880,0,0,0,0,0,0,0,0,0,2.020619,0,0),
(77726,30,-3383.480957,310.716187,103.967262,0,0,0,0,0,0,0,0,0,1.547809,0,0),
(77726,31,-3382.328613,335.083923,103.974091,0,0,0,0,0,0,0,0,0,1.687610,0,0),
(77726,32,-3386.589844,357.801636,103.968178,0,0,0,0,0,0,0,0,0,1.797566,0,0),
(77726,33,-3386.598389,363.658417,103.510071,0,0,0,0,0,0,0,0,0,1.506969,0,0),
(77726,34,-3386.106445,371.356689,103.995193,0,0,0,0,0,0,0,0,0,1.518750,0,0),
(77726,35,-3383.448486,376.118073,104.051445,0,0,0,0,0,0,0,0,0,1.399370,0,0),
(77726,36,-3387.782715,396.901855,104.036034,0,0,0,0,0,0,0,0,0,1.566659,0,0),
(77726,37,-3382.045654,410.000458,104.022858,0,0,0,0,0,0,0,0,0,0.884148,0,0),
(77726,38,-3370.479004,423.039429,103.975784,0,0,0,0,0,0,0,0,0,0.844878,0,0),
(77726,39,-3359.579834,430.505524,104.031906,0,0,0,0,0,0,0,0,0,0.196139,0,0),
(77726,40,-3325.689941,433.157440,103.981415,0,0,0,0,0,0,0,0,0,6.235066,0,0),
(77726,41,-3303.441650,432.086029,103.948616,0,0,0,0,0,0,0,0,0,6.235066,0,0),
(77726,42,-3269.373291,433.537323,103.969696,0,0,0,0,0,0,0,0,0,0.073616,0,0),
(77726,43,-3246.327881,432.019958,103.969200,0,0,0,0,0,0,0,0,0,6.219357,0,0),
(77726,44,-3243.495361,432.580902,104.910370,0,0,0,0,0,0,0,0,0,0.348505,0,0),
(77726,45,-3236.726074,435.682251,104.862770,0,0,0,0,0,0,0,0,0,0.470242,0,0);
-- Shadowlord Deathwail
DELETE FROM creature_movement WHERE id = 77084;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(77084,1,-3225.12,246.8172,195.6793,0,0,0,0,0,0,0,0,0,0,0,0),
(77084,2,-3240.03,255.8997,201.5792,0,0,0,0,0,0,0,0,0,0,0,0),
(77084,3,-3257.98,269.6777,201.5792,0,0,0,0,0,0,0,0,0,0,0,0),
(77084,4,-3274.718,279.5319,201.5792,0,0,0,0,0,0,0,0,0,0,0,0),
(77084,5,-3285.859,310.5157,201.5792,0,0,0,0,0,0,0,0,0,0,0,0),
(77084,6,-3275.103,325.2522,201.5792,0,0,0,0,0,0,0,0,0,0,0,0),
(77084,7,-3254.874,341.812,201.5792,0,0,0,0,0,0,0,0,0,0,0,0),
(77084,8,-3227.606,331.0758,201.5792,0,0,0,0,0,0,0,0,0,0,0,0),
(77084,9,-3218.132,316.963,201.5792,0,0,0,0,0,0,0,0,0,0,0,0),
(77084,10,-3217.586,298.9507,201.5792,0,0,0,0,0,0,0,0,0,0,0,0),
(77084,11,-3217.094,283.9956,201.5792,0,0,0,0,0,0,0,0,0,0,0,0),
(77084,12,-3207.641,260.9079,203.1903,0,0,0,0,0,0,0,0,0,0,0,0),
(77084,13,-3212.76,247.5418,203.1903,0,0,0,0,0,0,0,0,0,0,0,0),
(77084,14,-3220.402,239.538,203.1903,0,0,0,0,0,0,0,0,0,0,0,0),
(77084,15,-3252.732,239.4066,172.1625,0,0,0,0,0,0,0,0,0,0,0,0),
(77084,16,-3266.665,280.5293,161.9681,0,0,0,0,0,0,0,0,0,0,0,0),
(77084,17,-3237.02,300.2808,161.9681,0,0,0,0,0,0,0,0,0,0,0,0),
(77084,18,-3205.821,285.1444,183.4125,0,0,0,0,0,0,0,0,0,0,0,0),
(77084,19,-3205.758,262.6417,184.7071,0,0,0,0,0,0,0,0,0,0,0,0),
(77084,20,-3213.831,246.4442,194.4293,0,0,0,0,0,0,0,0,0,0,0,0),
(77084,21,-3225.12,246.8172,195.6793,0,0,0,0,0,0,0,0,0,0,0,0),
(77084,22,-3240.03,255.8997,201.5792,0,0,0,0,0,0,0,0,0,0,0,0),
(77084,23,-3257.98,269.6777,201.5792,0,0,0,0,0,0,0,0,0,0,0,0);
-- Eclipse point -- SHADOWMOON VALLEY
-- Illidari Slayer 
DELETE FROM creature_movement WHERE id IN (70850, 70851, 70852, 70853, 70854, 70855, 70856, 70858, 70861, 70862);
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(70850,1,-4092.91,1493.31,96.5598,22000,2201701,0,0,0,0,0,0,0,3.26377,0,0),
(70850,2,-4092.91,1493.31,96.5598,1000,0,0,0,0,0,0,0,0,3.26377,0,0),
(70851,1,-4234.69,1496.32,127.328,22000,2201701,0,0,0,0,0,0,0,2.14675,0,0),
(70851,2,-4234.69,1496.32,127.328,1000,0,0,0,0,0,0,0,0,2.14675,0,0),
(70852,1,-4162.61,1544.51,108.878,22000,2201701,0,0,0,0,0,0,0,4.01426,0,0),
(70852,2,-4162.61,1544.51,108.878,1000,0,0,0,0,0,0,0,0,4.01426,0,0),
(70853,1,-4288.84,1598.95,136.992,22000,2201701,0,0,0,0,0,0,0,3.90954,0,0),
(70853,2,-4288.84,1598.95,136.992,1000,0,0,0,0,0,0,0,0,3.90954,0,0),
(70854,1,-4394.37,1695.86,157.779,60000,0,0,0,0,0,0,0,0,0.523606,0,0),
(70854,2,-4385.7593,1701.124,156.656,22000,2201701,0,0,0,0,0,0,0,0.37,0,0),
(70855,1,-4375.270508,1652.959839,157.319931,0,0,0,0,0,0,0,0,0,1.609555,0,0),
(70855,2,-4380.656738,1663.271851,157.460938,0,0,0,0,0,0,0,0,0,2.446003,0,0),
(70855,3,-4389.261719,1670.818481,158.882553,30000,0,0,0,0,0,0,0,0,5.467429,0,0),
(70855,4,-4380.124512,1662.372192,157.487946,0,0,0,0,0,0,0,0,0,5.394392,0,0),
(70855,5,-4374.900879,1652.336060,157.290207,0,0,0,0,0,0,0,0,0,4.243005,0,0),
(70855,6,-4381.383301,1642.897949,159.117264,60000,0,0,0,0,0,0,0,0,5.752648,0,0),
(70862,1,-4473.327148,1681.587036,162.245956,22000,2201701,0,0,0,0,0,0,0,5.600965,0,0),
(70862,2,-4486.05,1693.03,164.847,60000,0,0,0,0,0,0,0,0,6.20663,0,0),
(70856,1,-4417.68,1580.701,163.461899,22000,2201701,0,0,0,0,0,0,0,1.017005,0,0),
(70856,2,-4418.79,1566.57,164.759613,60000,0,0,0,0,0,0,0,0,1.645,0,0),
(70858,1,-4486.561,1647.476,165.475,45000,0,0,0,0,0,0,0,0,0.237698,0,0),
(70858,2,-4471.611,1654.492,162.833298,22000,2201701,0,0,0,0,0,0,0,0.368861,0,0),
(70858,3,-4486.561,1647.476,165.475,45000,0,0,0,0,0,0,0,0,0.237698,0,0),
(70861,1,-4484.176270,1744.055298,158.656677,0,0,0,0,0,0,0,0,0,0.577659,0,0),
(70861,2,-4476.581543,1750.956543,158.347778,0,0,0,0,0,0,0,0,0,0.889462,0,0),
(70861,3,-4469.401367,1760.972656,158.251663,0,0,0,0,0,0,0,0,0,1.066177,0,0),
(70861,4,-4465.985840,1769.926514,158.856857,60000,0,0,0,0,0,0,0,0,4.381341,0,0),
(70861,5,-4471.044922,1758.556885,158.215958,0,0,0,0,0,0,0,0,0,4.058556,0,0),
(70861,6,-4481.977051,1745.796143,158.589767,0,0,0,0,0,0,0,0,0,3.550407,0,0),
(70861,7,-4487.374023,1743.443604,158.808777,0,0,0,0,0,0,0,0,0,3.319500,0,0),
(70861,8,-4498.174805,1742.175781,159.676117,20000,1979601,0,0,0,0,0,0,0,3.235463,0,0);
-- Eclipsion Archmage should talk to 19792 on his wps
DELETE FROM dbscripts_on_creature_movement WHERE id = 1979601; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES
(1979601,0,31,19792,10,0,0,0,-10000,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(1979601,2,1,66,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1979601,4,1,66,0,19792,10,0x04,0,0,0,0,0,0,0,0,'force 19792 to: emote'),
(1979601,7,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1979601,9,1,1,0,19792,10,0x04,0,0,0,0,0,0,0,0,'force 19792 to: emote'),
(1979601,11,1,5,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Eclipsion Bloodwarder
DELETE FROM dbscripts_on_creature_movement WHERE id = 2201801;  -- Eclipsion Bloodwarder should talk to 19792 on his wps
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES
(2201801,0,31,19792,30,0,0,0,-5000,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(2201801,2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2201801,4,1,66,0,19792,10,0x04,0,0,0,0,0,0,0,0,'force 19792 to: emote');
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (70923, 70924, 70925, 70926, 70927);
DELETE FROM creature_movement WHERE id IN (70923, 70924, 70925, 70926, 70927);
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
-- #1
(70923,1,-4144.031738,1516.009399,104.129929,0,0,0,0,0,0,0,0,0,2.871371,0,0),
(70923,2,-4168.750488,1522.806030,110.264572,0,0,0,0,0,0,0,0,0,3.264070,0,0),
(70923,3,-4174.441895,1522.279785,111.557091,0,0,0,0,0,0,0,0,0,3.969358,0,0),
(70923,4,-4181.337891,1517.793701,113.086220,0,0,0,0,0,0,0,0,0,3.363816,0,0),
(70923,5,-4195.611816,1516.235474,116.290009,0,0,0,0,0,0,0,0,0,2.942843,0,0),
(70923,6,-4207.417480,1518.594482,118.997154,0,0,0,0,0,0,0,0,0,2.865088,0,0),
(70923,7,-4224.708008,1524.647705,122.909515,0,0,0,0,0,0,0,0,0,3.014315,0,0),
(70923,8,-4234.862793,1526.132202,125.584846,0,0,0,0,0,0,0,0,0,3.264856,0,0),
(70923,9,-4253.017578,1522.338745,129.608963,0,0,0,0,0,0,0,0,0,3.144392,0,0),
(70923,10,-4261.560547,1521.918335,131.607971,0,0,0,0,0,0,0,0,0,2.849083,0,0),
(70923,11,-4265.566406,1523.969360,132.557556,0,0,0,0,0,0,0,0,0,2.446173,0,0),
(70923,12,-4254.048828,1521.912354,129.781372,0,0,0,0,0,0,0,0,0,6.270278,0,0),
(70923,13,-4237.437988,1524.608032,126.193588,0,0,0,0,0,0,0,0,0,0.086052,0,0),
(70923,14,-4229.779297,1525.154663,124.065010,0,0,0,0,0,0,0,0,0,6.055078,0,0),
(70923,15,-4219.362305,1522.894043,121.703033,0,0,0,0,0,0,0,0,0,5.992250,0,0),
(70923,16,-4204.410156,1517.542480,118.322113,0,0,0,0,0,0,0,0,0,6.121840,0,0),
(70923,17,-4190.442383,1515.253052,115.000053,0,0,0,0,0,0,0,0,0,0.106472,0,0),
(70923,18,-4183.744629,1516.312744,113.598778,0,0,0,0,0,0,0,0,0,0.408065,0,0),
(70923,19,-4172.735352,1521.458862,111.101952,0,0,0,0,0,0,0,0,0,0.170089,0,0),
(70923,20,-4165.766602,1522.228027,109.543739,0,0,0,0,0,0,0,0,0,5.985177,0,0),
(70923,21,-4139.205566,1514.176147,102.830582,0,0,0,0,0,0,0,0,0,6.146411,0,0),
(70923,22,-4133.801270,1513.590088,101.651886,0,0,0,0,0,0,0,0,0,0.112995,0,0),
(70923,23,-4113.548828,1517.624634,98.132072,3000,0,0,0,0,0,0,0,0,0.253581,0,0),
(70923,24,-4121.395020,1515.922363,99.340790,0,0,0,0,0,0,0,0,0,3.355904,0,0),
(70923,25,-4130.047852,1514.336182,100.942192,0,0,0,0,0,0,0,0,0,3.051170,0,0),
(70923,26,-4137.850098,1515.482666,102.650444,0,0,0,0,0,0,0,0,0,2.011302,0,0),
(70923,27,-4139.251953,1519.450562,103.506355,6000,2201801,0,0,0,0,0,0,0,1.901346,0,0),
-- #2
(70924,1,-4324.026367,1600.511963,146.297653,0,0,0,0,0,0,0,0,0,2.500607,0,0),
(70924,2,-4337.411621,1614.333862,150.213669,0,0,0,0,0,0,0,0,0,2.035652,0,0),
(70924,3,-4336.322754,1622.153564,151.530228,6000,2201801,0,0,0,0,0,0,0,1.354301,0,0),
(70924,4,-4340.983398,1615.996338,150.980316,0,0,0,0,0,0,0,0,0,5.861699,0,0),
(70924,5,-4325.627441,1601.337158,146.561127,0,0,0,0,0,0,0,0,0,5.361395,0,0),
(70924,6,-4309.379883,1581.740601,141.930450,0,0,0,0,0,0,0,0,0,5.420299,0,0),
(70924,7,-4300.532227,1570.153320,139.925964,0,0,0,0,0,0,0,0,0,5.353542,0,0),
(70924,8,-4291.347168,1556.552124,138.285187,0,0,0,0,0,0,0,0,0,5.329981,0,0),
(70924,9,-4286.253418,1550.182495,137.280579,0,0,0,0,0,0,0,0,0,4.519449,0,0),
(70924,10,-4287.757813,1541.505981,137.021606,6000,2201801,0,0,0,0,0,0,0,4.543010,0,0),
(70924,11,-4286.427734,1548.906250,137.169846,0,0,0,0,0,0,0,0,0,2.101207,0,0),
(70924,12,-4304.089355,1575.775513,140.759125,0,0,0,0,0,0,0,0,0,2.339181,0,0),
-- #3
(70925,1,-4372.547363,1683.085693,157.024826,0,0,0,0,0,0,0,0,0,5.309837,0,0),
(70925,2,-4366.690430,1671.291504,157.440308,0,0,0,0,0,0,0,0,0,4.787550,0,0),
(70925,3,-4367.004883,1649.914185,156.692444,0,0,0,0,0,0,0,0,0,4.607701,0,0),
(70925,4,-4367.203613,1639.650391,156.228226,3000,0,0,0,0,0,0,0,0,4.635189,0,0),
(70925,5,-4366.110352,1665.177734,157.379257,0,0,0,0,0,0,0,0,0,1.863515,0,0),
(70925,6,-4367.227051,1673.288574,157.385437,0,0,0,0,0,0,0,0,0,1.992651,0,0),
(70925,7,-4370.517090,1681.484619,157.083832,0,0,0,0,0,0,0,0,0,2.212563,0,0),
(70925,8,-4385.139160,1702.944458,156.565842,0,0,0,0,0,0,0,0,0,2.393204,0,0),
(70925,9,-4394.854004,1711.568970,156.650543,0,0,0,0,0,0,0,0,0,2.660048,0,0),
(70925,10,-4399.572266,1714.283936,156.729736,0,0,0,0,0,0,0,0,0,2.931011,0,0),
(70925,11,-4409.249023,1716.472046,156.880981,0,0,0,0,0,0,0,0,0,2.894098,0,0),
(70925,12,-4419.845703,1719.442261,156.646286,0,0,0,0,0,0,0,0,0,3.228677,0,0),
(70925,13,-4425.062988,1708.943115,158.197464,6000,2201801,0,0,0,0,0,0,0,4.217494,0,0),
(70925,14,-4432.002930,1717.948486,156.918945,0,0,0,0,0,0,0,0,0,2.829695,0,0),
(70925,15,-4440.073730,1717.753540,157.250351,0,0,0,0,0,0,0,0,0,3.410799,0,0),
(70925,16,-4464.767090,1713.899414,159.433884,3000,0,0,0,0,0,0,0,0,3.322834,0,0),
(70925,17,-4432.096191,1719.040894,156.906723,0,0,0,0,0,0,0,0,0,6.132987,0,0),
(70925,18,-4416.199707,1717.956299,156.672272,0,0,0,0,0,0,0,0,0,5.960200,0,0),
(70925,19,-4399.958496,1713.628052,156.768402,0,0,0,0,0,0,0,0,0,5.814117,0,0),
(70925,20,-4390.191895,1707.644653,156.447220,0,0,0,0,0,0,0,0,0,5.473256,0,0),
(70925,21,-4382.588867,1697.115845,156.800064,0,0,0,0,0,0,0,0,0,4.158501,0,0),
(70925,22,-4384.579590,1690.297363,157.509109,6000,2201801,0,0,0,0,0,0,0,4.402763,0,0),
-- #4
(70926,1,-4451.961426,1590.277466,163.602310,0,0,0,0,0,0,0,0,0,2.245641,0,0),
(70926,2,-4457.066406,1598.346313,163.219452,0,0,0,0,0,0,0,0,0,1.934624,0,0),
(70926,3,-4459.009766,1607.414429,163.099182,0,0,0,0,0,0,0,0,0,2.044579,0,0),
(70926,4,-4460.457031,1612.101929,163.134995,0,0,0,0,0,0,0,0,0,2.127831,0,0),
(70926,5,-4469.865234,1626.925781,163.220840,0,0,0,0,0,0,0,0,0,1.880431,0,0),
(70926,6,-4479.202148,1629.136353,164.972122,6000,2201801,0,0,0,0,0,0,0,2.899093,0,0),
(70926,7,-4471.792969,1632.215088,163.175552,0,0,0,0,0,0,0,0,0,1.485376,0,0),
(70926,8,-4473.605469,1657.560303,162.966843,3000,0,0,0,0,0,0,0,0,1.614967,0,0),
(70926,9,-4470.158203,1629.059692,163.218216,0,0,0,0,0,0,0,0,0,5.091920,0,0),
(70926,10,-4459.564941,1608.576660,163.112564,0,0,0,0,0,0,0,0,0,4.935622,0,0),
(70926,11,-4457.937012,1604.059448,163.153595,0,0,0,0,0,0,0,0,0,5.447702,0,0),
(70926,12,-4452.688965,1600.739868,163.690964,6000,2201801,0,0,0,0,0,0,0,0.037872,0,0),
(70926,13,-4455.441895,1594.198608,163.467850,0,0,0,0,0,0,0,0,0,5.370728,0,0),
(70926,14,-4449.523438,1586.770020,163.769318,0,0,0,0,0,0,0,0,0,5.847455,0,0),
(70926,15,-4436.750977,1580.400513,163.880020,0,0,0,0,0,0,0,0,0,6.182819,0,0),
(70926,16,-4411.859375,1580.594849,163.673752,0,0,0,0,0,0,0,0,0,0.191801,0,0),
(70926,17,-4403.581543,1582.913208,163.575607,0,0,0,0,0,0,0,0,0,0.525595,0,0),
(70926,18,-4396.305664,1587.704590,163.617325,0,0,0,0,0,0,0,0,0,0.916723,0,0),
(70926,19,-4391.020020,1593.503662,163.100815,0,0,0,0,0,0,0,0,0,1.063592,0,0),
(70926,20,-4392.306641,1600.973877,163.198151,6000,2201801,0,0,0,0,0,0,0,1.925174,0,0),
(70926,21,-4387.004883,1602.276489,162.184448,0,0,0,0,0,0,0,0,0,0.827187,0,0),
(70926,22,-4383.595703,1608.002319,161.378845,0,0,0,0,0,0,0,0,0,1.423305,0,0),
(70926,23,-4380.161133,1621.227295,159.306656,0,0,0,0,0,0,0,0,0,1.067519,0,0),
(70926,24,-4376.609375,1627.862305,157.965103,3000,0,0,0,0,0,0,0,0,0.800483,0,0),
(70926,25,-4380.520508,1616.597046,160.090469,0,0,0,0,0,0,0,0,0,4.773029,0,0),
(70926,26,-4377.641113,1612.636719,161.076248,6000,2201801,0,0,0,0,0,0,0,5.420195,0,0),
(70926,27,-4384.836426,1605.686523,161.714020,0,0,0,0,0,0,0,0,0,4.418813,0,0),
(70926,28,-4390.991211,1594.238647,163.043503,0,0,0,0,0,0,0,0,0,3.916548,0,0),
(70926,29,-4399.824219,1585.737183,163.665695,0,0,0,0,0,0,0,0,0,3.679358,0,0),
(70926,30,-4410.018555,1580.674438,163.731781,0,0,0,0,0,0,0,0,0,3.295299,0,0),
(70926,31,-4428.304199,1579.585938,163.658371,0,0,0,0,0,0,0,0,0,3.435885,0,0),
(70926,32,-4431.898438,1573.929688,164.780945,6000,2201801,0,0,0,0,0,0,0,3.896912,0,0),
(70926,33,-4443.133789,1584.026123,163.839233,0,0,0,0,0,0,0,0,0,2.392874,0,0),
-- #5
(70927,1,-4561.293945,1622.657593,174.520172,0,0,0,0,0,0,0,0,0,4.695715,0,0),
(70927,2,-4556.685059,1612.485840,175.330109,6000,2201801,0,0,0,0,0,0,0,5.104120,0,0),
(70927,3,-4561.476074,1622.280762,174.531937,0,0,0,0,0,0,0,0,0,1.422172,0,0),
(70927,4,-4552.429199,1641.260864,174.226852,0,0,0,0,0,0,0,0,0,1.491287,0,0),
(70927,5,-4547.805176,1671.856323,174.680695,0,0,0,0,0,0,0,0,0,1.743573,0,0),
(70927,6,-4549.135742,1679.337280,174.777878,0,0,0,0,0,0,0,0,0,2.057732,0,0),
(70927,7,-4559.938477,1696.433716,174.438324,0,0,0,0,0,0,0,0,0,1.427844,0,0),
(70927,8,-4550.011719,1706.512329,174.655319,0,0,0,0,0,0,0,0,0,0.666793,0,0),
(70927,9,-4543.463867,1710.852173,174.534286,0,0,0,0,0,0,0,0,0,0.758685,0,0),
(70927,10,-4538.140625,1716.927368,174.342407,3000,0,0,0,0,0,0,0,0,0.903983,0,0),
(70927,11,-4543.139648,1711.246338,174.520721,0,0,0,0,0,0,0,0,0,3.831162,0,0),
(70927,12,-4550.387207,1706.834229,174.628586,0,0,0,0,0,0,0,0,0,3.831948,0,0),
(70927,13,-4559.799316,1699.546753,174.512787,0,0,0,0,0,0,0,0,0,2.686837,0,0),
(70927,14,-4567.528809,1704.060791,174.242676,0,0,0,0,0,0,0,0,0,2.401737,0,0),
(70927,15,-4583.327637,1724.115967,174.347855,6000,2201801,0,0,0,0,0,0,0,2.364038,0,0),
(70927,16,-4550.859375,1682.132568,174.751724,0,0,0,0,0,0,0,0,0,5.096435,0,0),
(70927,17,-4548.211914,1673.593506,174.730759,0,0,0,0,0,0,0,0,0,4.769711,0,0),
(70927,18,-4551.931641,1658.563965,174.313614,0,0,0,0,0,0,0,0,0,4.655833,0,0),
(70927,19,-4554.309570,1637.393677,174.318634,0,0,0,0,0,0,0,0,0,4.182240,0,0);
-- Shadowmoon Village -- SHADOWMOON VALLEY
-- Warcaller Sardon Truslice
DELETE FROM creature_movement WHERE id = 31751;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(31751,1,-3079.737793,2547.037598,62.802395,0,0,0,0,0,0,0,0,0,1.514729,0,0),
(31751,2,-3079.75,2555.731,62.854,2000,0,0,0,0,0,0,0,0,1.47624,0,0),
(31751,3,-3079.737793,2547.037598,62.802395,0,0,0,0,0,0,0,0,0,1.514729,0,0),
(31751,4,-3079.75,2555.731,62.854,2000,0,0,0,0,0,0,0,0,1.47624,0,0),
(31751,5,-3079.737793,2547.037598,62.802395,0,0,0,0,0,0,0,0,0,1.514729,0,0),
(31751,6,-3079.75,2555.731,62.854,2000,0,0,0,0,0,0,0,0,1.47624,0,0),
(31751,7,-3079.737793,2547.037598,62.802395,0,0,0,0,0,0,0,0,0,1.514729,0,0),
(31751,8,-3080.135010,2550.914551,62.8903,25000,2177101,0,0,0,0,0,0,0,6.235757,0,0),
(31751,9,-3079.75,2555.731,62.854,2000,0,0,0,0,0,0,0,0,1.47624,0,0),
(31751,10,-3079.737793,2547.037598,62.802395,0,0,0,0,0,0,0,0,0,1.514729,0,0),
(31751,11,-3079.75,2555.731,62.854,2000,0,0,0,0,0,0,0,0,1.47624,0,0),
(31751,12,-3079.737793,2547.037598,62.802395,0,0,0,0,0,0,0,0,0,1.514729,0,0),
(31751,13,-3079.75,2555.731,62.854,2000,0,0,0,0,0,0,0,0,1.47624,0,0),
(31751,14,-3079.737793,2547.037598,62.802395,0,0,0,0,0,0,0,0,0,1.514729,0,0),
(31751,15,-3079.75,2555.731,62.854,2000,0,0,0,0,0,0,0,0,1.47624,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2177101;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES 
(2177101,3,1,173,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2177101,10,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2177101,13,0,0,0,0,0,0,2000005477,0,0,0,0,0,0,0,''),
(2177101,14,1,6,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2177101,18,1,4,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry = 2000005477;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(2000005477,'Wit a reward like dis, how could they refuse, mon?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
-- Shadowmoon Peon
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (69069, 69060, 69061, 69062, 69063);
DELETE FROM creature_movement WHERE id IN (69069, 69060, 69061, 69062, 69063);
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
-- #1
(69069,1,-2996.504639,2505.115234,60.842484,0,0,0,0,0,0,0,0,0,3.528721,0,0),
(69069,2,-3006.427979,2500.075928,62.209774,0,0,0,0,0,0,0,0,0,3.447825,0,0),
(69069,3,-3016.860596,2496.554443,62.735661,0,0,0,0,0,0,0,0,0,3.298599,0,0),
(69069,4,-3031.440186,2495.805664,63.377895,0,0,0,0,0,0,0,0,0,3.104606,0,0),
(69069,5,-3033.578857,2499.901123,63.043976,60000,0,0,0,0,0,69,0,0,1.989340,0,0),
(69069,6,-3032.032471,2496.004150,63.444061,0,0,0,0,0,0,0,0,0,5.727489,0,0),
(69069,7,-3022.128418,2494.629150,62.746014,0,0,0,0,0,0,0,0,0,0.272892,0,0),
(69069,8,-3004.159912,2499.541748,61.755871,0,0,0,0,0,0,0,0,0,0.552623,0,0),
(69069,9,-2997.322998,2505.290527,60.906097,0,0,0,0,0,0,0,0,0,1.225710,0,0),
(69069,10,-2996.371094,2508.717773,61.047165,60000,0,0,0,0,0,69,0,0,1.671816,0,0),
-- #2
(69062,1,-3056.670166,2514.829834,62.297123,0,0,0,0,0,0,0,0,0,4.317551,0,0),
(69062,2,-3058.293701,2510.663818,62.885876,0,0,0,0,0,0,0,0,0,4.659200,0,0),
(69062,3,-3057.789795,2504.411621,63.021702,0,0,0,0,0,0,0,0,0,5.174417,0,0),
(69062,4,-3054.613525,2498.848633,63.526897,0,0,0,0,0,0,0,0,0,5.738329,0,0),
(69062,5,-3049.983887,2496.513672,63.546322,0,0,0,0,0,0,0,0,0,0.274310,0,0),
(69062,6,-3040.850586,2502.475098,62.846375,60000,0,0,0,0,0,69,0,0,0.531134,0,0),
(69062,7,-3049.417480,2497.031494,63.437485,0,0,0,0,0,0,0,0,0,3.136300,0,0),
(69062,8,-3053.861816,2498.137695,63.569553,0,0,0,0,0,0,0,0,0,2.161419,0,0),
(69062,9,-3059.517822,2504.942871,62.977448,0,0,0,0,0,0,0,0,0,1.850583,0,0),
(69062,10,-3059.281738,2510.550537,62.904392,0,0,0,0,0,0,0,0,0,0.916821,0,0),
(69062,11,-3055.181152,2513.605957,62.395508,0,0,0,0,0,0,0,0,0,0.619940,0,0),
(69062,12,-3037.295410,2523.284424,62.792267,60000,0,0,0,0,0,69,0,0,0.425394,0,0),
-- #3
(69063,1,-3038.735107,2529.662109,63.694107,0,0,0,0,0,0,0,0,0,3.141301,0,0),
(69063,2,-3067.884033,2529.536377,61.737457,0,0,0,0,0,0,0,0,0,2.993646,0,0),
(69063,3,-3083.254883,2532.271240,62.210918,0,0,0,0,0,0,0,0,0,3.226909,0,0),
(69063,4,-3102.373535,2527.623779,62.554901,0,0,0,0,0,0,0,0,0,3.896854,0,0),
(69063,5,-3106.628906,2523.935059,62.592690,0,0,0,0,0,0,0,0,0,4.796135,0,0),
(69063,6,-3108.074463,2510.016846,62.383453,60000,0,0,0,0,0,69,0,0,4.674396,0,0),
(69063,7,-3107.327637,2521.023193,62.693256,0,0,0,0,0,0,0,0,0,1.158953,0,0),
(69063,8,-3104.383301,2526.085205,62.600769,0,0,0,0,0,0,0,0,0,0.613101,0,0),
(69063,9,-3089.145264,2532.621094,62.315018,0,0,0,0,0,0,0,0,0,0.168566,0,0),
(69063,10,-3058.594727,2531.742920,62.194984,0,0,0,0,0,0,0,0,0,6.268754,0,0),
(69063,11,-3038.452393,2530.364014,63.870411,0,0,0,0,0,0,0,0,0,5.590958,0,0),
(69063,12,-3036.478271,2528.653809,63.511143,60000,0,0,0,0,0,69,0,0,5.375763,0,0),
-- #4
(69060,1,-2957.58,2530.63,76.5432,6000,0,0,0,0,0,0,0,0,3.75986,0,0),
(69060,2,-2957.58,2530.63,76.5432,60000,0,0,0,0,0,173,0,0,3.75986,0,0),
(69060,3,-2957.58,2530.63,76.5432,6000,0,0,0,0,0,0,0,0,3.75986,0,0),
(69060,4,-2957.58,2530.63,76.5432,60000,0,0,0,0,0,69,0,0,3.75986,0,0),
-- #5
(69061,1,-2971.19,2527.98,76.4119,60000,0,0,0,0,0,69,0,0,0.434474,0,0),
(69061,2,-2971.19,2527.98,76.4119,6000,0,0,0,0,0,0,0,0,0.434474,0,0),
(69061,3,-2971.19,2527.98,76.4119,60000,0,0,0,0,0,173,0,0,0.434474,0,0),
(69061,4,-2971.19,2527.98,76.4119,6000,0,0,0,0,0,0,0,0,0.434474,0,0);
-- #6
UPDATE creature SET MovementType = 2, spawndist  = 0 WHERE guid = 69071;
DELETE FROM creature_movement WHERE id =69071;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(69071,1,-3163.270020,2504.620117,63.059875,1000,1935501,0,0,0,0,0,0,0,2.863249,0,0),
(69071,2,-3127.701172,2498.972900,62.680672,35000,0,0,0,0,0,173,0,0,6.114796,0,0),
(69071,3,-3127.701172,2498.972900,62.680672,3000,0,0,0,0,0,0,0,0,6.114796,0,0),
(69071,4,-3163.292969,2504.883789,63.067684,40000,0,0,0,0,0,173,0,0,2.984982,0,0),
(69071,5,-3163.292969,2504.883789,63.067684,3000,0,0,0,0,0,0,0,0,2.984982,0,0);
-- #7
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 69066;
DELETE FROM creature_movement WHERE id = 69066;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(69066,1,-3173.563477,2491.294678,62.632,1000,1935501,0,0,0,0,0,0,0,2.219,0,0),
(69066,2,-3173.563477,2491.294678,62.632,35000,0,0,0,0,0,173,0,0,2.219,0,0),
(69066,3,-3173.563477,2491.294678,62.632,3000,0,0,0,0,0,0,0,0,2.219,0,0),
(69066,4,-3173.563477,2491.294678,62.631668,0,0,0,0,0,0,0,0,0,2.219210,0,0),
(69066,5,-3152.435303,2480.445313,61.938442,0,0,0,0,0,0,0,0,0,5.436200,0,0),
(69066,6,-3144.516357,2469.613281,62.238804,0,0,0,0,0,0,0,0,0,4.800815,0,0),
(69066,7,-3144.043701,2453.067383,64.302696,45000,0,0,0,0,0,173,0,0,4.708928,0,0),
(69066,8,-3144.043701,2453.067383,64.302696,0,0,0,0,0,0,0,0,0,4.708928,0,0),
(69066,9,-3145.881104,2471.433350,62.223953,0,0,0,0,0,0,0,0,0,1.907411,0,0),
(69066,10,-3153.544678,2483.969971,61.949230,0,0,0,0,0,0,0,0,0,2.533373,0,0),
(69066,11,-3173.563477,2491.294678,62.632,0,0,0,0,0,0,0,0,0,2.219,0,0);
-- #8
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 69070;
DELETE FROM creature_movement WHERE id = 69070;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(69070,1,-3127.639648,2479.661377,61.9797,1000,1935501,0,0,0,0,0,0,0,1.017547,0,0),
(69070,2,-3133.467285,2455.159668,62.661518,40000,0,0,0,0,0,173,0,0,4.287157,0,0),
(69070,3,-3133.467285,2455.159668,62.661518,3000,0,0,0,0,0,0,0,0,4.287157,0,0),
(69070,4,-3127.639648,2479.661377,61.9797,25000,0,0,0,0,0,173,0,0,1.017547,0,0),
(69070,5,-3127.639648,2479.661377,61.9797,3000,0,0,0,0,0,0,0,0,1.017547,0,0);
-- #9
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 69056;
DELETE FROM creature_movement WHERE id = 69056;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(69056,1,-2964.790527,2663.017,98.645836,6000,0,0,0,0,0,0,0,0,0.333633,0,0),
(69056,2,-2964.790527,2663.017,98.645836,60000,0,0,0,0,0,173,0,0,0.333633,0,0),
(69056,3,-2964.790527,2663.017,98.645836,6000,0,0,0,0,0,0,0,0,0.333633,0,0),
(69056,4,-2964.790527,2663.017,98.645836,60000,0,0,0,0,0,69,0,0,0.333633,0,0);
-- 10
DELETE FROM dbscripts_on_creature_movement WHERE id = 1935501;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES 
(1935501,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON');
-- Kor'kron Defender
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 69087;
DELETE FROM creature_movement WHERE id =69087;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(69087,1,-3095.010498,2508.179932,83.774780,0,0,0,0,0,0,0,0,0,6.099862,0,0),
(69087,2,-3087.968994,2507.392090,83.820656,0,0,0,0,0,0,0,0,0,0.320113,0,0),
(69087,3,-3086.012207,2508.361328,83.850182,0,0,0,0,0,0,0,0,0,0.931152,0,0),
(69087,4,-3080.977783,2514.810059,83.850182,0,0,0,0,0,0,0,0,0,1.837502,0,0),
(69087,5,-3083.625244,2523.070068,83.848038,0,0,0,0,0,0,0,0,0,2.871872,0,0),
(69087,6,-3093.076660,2524.756348,83.847733,0,0,0,0,0,0,0,0,0,3.611717,0,0),
(69087,7,-3098.981445,2517.282471,83.849014,0,0,0,0,0,0,0,0,0,5.121250,0,0);
-- #1
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 69092;
DELETE FROM creature_movement WHERE id = 69092;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(69092,1,-3098.804199,2569.758545,61.922062,0,0,0,0,0,0,0,0,0,3.112849,0,0),
(69092,2,-3110.359863,2565.960449,61.751884,0,0,0,0,0,0,0,0,0,3.142694,0,0),
(69092,3,-3117.375000,2563.903076,61.729469,0,0,0,0,0,0,0,0,0,3.106565,0,0),
(69092,4,-3128.111572,2562.687012,61.467751,0,0,0,0,0,0,0,0,0,3.233014,0,0),
(69092,5,-3138.459473,2561.954834,61.565010,3000,0,0,0,0,0,0,0,0,3.209452,0,0),
(69092,6,-3127.19,2566.71,61.5345,0,0,0,0,0,0,0,0,0,6.22537,0,0),
(69092,7,-3113.744,2565.718,61.728,0,0,0,0,0,0,0,0,0,5.610450,0,0),
(69092,8,-3102.757080,2548.822021,61.765106,0,0,0,0,0,0,0,0,0,5.188655,0,0),
(69092,9,-3099.398682,2540.672852,61.747490,0,0,0,0,0,0,0,0,0,5.651255,0,0),
(69092,10,-3094.168213,2537.391357,61.767986,0,0,0,0,0,0,0,0,0,6.127204,0,0),
(69092,11,-3086.004639,2535.534180,61.925659,0,0,0,0,0,0,0,0,0,0.077279,0,0),
(69092,12,-3079.593018,2534.954346,61.970253,0,0,0,0,0,0,0,0,0,5.762775,0,0),
(69092,13,-3075.296387,2531.145020,61.973335,0,0,0,0,0,0,0,0,0,5.132888,0,0),
(69092,14,-3070.822021,2519.823242,61.955742,0,0,0,0,0,0,0,0,0,5.004087,0,0),
(69092,15,-3066.877441,2508.249023,62.850620,0,0,0,0,0,0,0,0,0,5.043356,0,0),
(69092,16,-3064.534424,2501.430420,63.728722,0,0,0,0,0,0,0,0,0,5.043356,0,0),
(69092,17,-3065.443115,2509.900146,62.716999,0,0,0,0,0,0,0,0,0,2.125602,0,0),
(69092,18,-3069.869629,2524.052490,61.852898,0,0,0,0,0,0,0,0,0,1.897837,0,0),
(69092,19,-3073.534668,2533.516846,61.776196,0,0,0,0,0,0,0,0,0,2.482173,0,0),
(69092,20,-3080.674561,2535.895264,61.831699,0,0,0,0,0,0,0,0,0,3.046874,0,0),
(69092,21,-3089.114990,2536.991211,61.795914,0,0,0,0,0,0,0,0,0,2.736641,0,0),
(69092,22,-3093.710449,2539.811768,61.736088,0,0,0,0,0,0,0,0,0,2.167227,0,0),
(69092,23,-3097.196045,2545.881592,61.804779,0,0,0,0,0,0,0,0,0,1.355910,0,0),
(69092,24,-3093.680664,2554.106934,61.742828,0,0,0,0,0,0,0,0,0,1.135999,0,0),
(69092,25,-3091.093994,2560.011963,61.888821,0,0,0,0,0,0,0,0,0,1.556187,0,0),
(69092,26,-3092.407959,2565.264404,62.079502,0,0,0,0,0,0,0,0,0,2.489241,0,0),
(69092,27,-3095.449463,2568.810059,61.975906,0,0,0,0,0,0,0,0,0,2.761774,0,0);
DELETE FROM creature_linking WHERE guid = 69091; 
INSERT INTO creature_linking (guid, master_guid, flag) VALUES    
(69091, 69092, 518); -- Kor'kron Defender linked to his master
-- #2
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 69075;
DELETE FROM creature_movement WHERE id = 69075;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(69075,1,-3116.083008,2456.059570,62.362778,5000,0,0,0,0,0,0,0,0,6.025220,0,0),
(69075,2,-3131.835693,2461.442627,62.428989,0,0,0,0,0,0,0,0,0,2.714767,0,0),
(69075,3,-3149.821777,2467.200439,62.904675,5000,0,0,0,0,0,0,0,0,2.867920,0,0),
(69075,4,-3113.335449,2455.631592,62.414768,0,0,0,0,0,0,0,0,0,5.993803,0,0);
-- #3
DELETE FROM creature_linking WHERE guid = 69081; 
INSERT INTO creature_linking (guid, master_guid, flag) VALUES    
(69081,69079,518); -- Kor'kron Defender linked to his master
-- Kor'kron Rider
-- #1
DELETE FROM creature_movement WHERE id = 69096;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(69096,1,-3062.449951,2490.905029,64.891670,0,0,0,0,0,0,0,0,0,4.486161,0,0),
(69096,2,-3067.674316,2456.215576,65.025810,0,0,0,0,0,0,0,0,0,3.711757,0,0),
(69096,3,-3083.866943,2453.767822,64.483192,0,0,0,0,0,0,0,0,0,2.598062,0,0),
(69096,4,-3136.375977,2472.468994,61.857384,3000,0,0,0,0,0,0,0,0,2.083626,0,0), 
(69096,5,-3175.647705,2562.079590,61.077995,0,0,0,0,0,0,0,0,0,1.507928,0,0),
(69096,6,-3190.719727,2669.305664,63.380905,0,0,0,0,0,0,0,0,0,1.184344,0,0),
(69096,7,-3158.036865,2743.132080,73.270813,0,0,0,0,0,0,0,0,0,1.152931,0,0),
(69096,8,-3104.822754,2833.494629,78.522392,3000,0,0,0,0,0,0,0,0,3.935591,0,0),
(69096,9,-3154.380859,2753.394043,73.993889,0,0,0,0,0,0,0,0,0,4.283523,0,0),
(69096,10,-3193.009766,2669.560059,63.287640,0,0,0,0,0,0,0,0,0,4.860789,0,0),
(69096,11,-3171.980713,2560.560059,61.109482,0,0,0,0,0,0,0,0,0,0.054147,0,0),
(69096,12,-3112.324951,2564.489258,61.730984,0,0,0,0,0,0,0,0,0,5.436481,0,0),
(69096,13,-3060.665283,2539.732178,62.267857,0,0,0,0,0,0,0,0,0,1.144780,0,0),
(69096,14,-3034.763428,2597.935791,76.420891,0,0,0,0,0,0,0,0,0,6.259402,0,0),
(69096,15,-2978.684082,2600.514404,79.201073,0,0,0,0,0,0,0,0,0,0.680719,0,0),
(69096,16,-2937.950439,2636.888428,93.284950,15000,0,0,0,0,0,0,0,0,3.962115,0,0),
(69096,17,-2981.567627,2599.491211,78.602867,0,0,0,0,0,0,0,0,0,3.181429,0,0),
(69096,18,-3043.213135,2590.185059,75.154823,0,0,0,0,0,0,0,0,0,4.264496,0,0),
(69096,19,-3060.995850,2540.917969,62.348377,0,0,0,0,0,0,0,0,0,3.516796,0,0),
(69096,20,-3093.398682,2538.857666,61.741001,0,0,0,0,0,0,0,0,0,2.176905,0,0),
(69096,21,-3110.854492,2560.546143,61.733631,0,0,0,0,0,0,0,0,0,1.701946,0,0),
(69096,22,-3109.842529,2567.114746,61.760807,0,0,0,0,0,0,0,0,0,1.000585,0,0),
(69096,23,-3102.253906,2573.323242,61.768463,0,0,0,0,0,0,0,0,0,6.280032,0,0),
(69096,24,-3092.999268,2571.400146,61.760933,0,0,0,0,0,0,0,0,0,5.346198,0,0),
(69096,25,-3068.213379,2522.235840,61.926987,0,0,0,0,0,0,0,0,0,5.135713,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1936401, 1936402); 
-- #2
DELETE FROM creature_linking WHERE guid = 69097; 
INSERT INTO creature_linking (guid, master_guid, flag) VALUES    
(69097, 69096, 518); -- Kor'kron Rider linked to his master
-- Kor'kron Wyvern Rider
DELETE FROM creature_movement WHERE id =74220;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74220,1,-3045.574,2592.941,140.8448,0,2115301,0,0,0,0,0,0,0,0,0,0),
(74220,2,-3046.095,2591.678,139.9281,0,0,0,0,0,0,0,0,0,0,0,0),
(74220,3,-3028.975,2582.002,141.6225,0,0,0,0,0,0,0,0,0,0,0,0),
(74220,4,-3014.283,2567.434,141.6225,0,0,0,0,0,0,0,0,0,0,0,0),
(74220,5,-2997.179,2547.184,141.6225,0,0,0,0,0,0,0,0,0,0,0,0),
(74220,6,-2975.056,2527.355,141.6225,0,0,0,0,0,0,0,0,0,0,0,0),
(74220,7,-2944.816,2526.003,141.6225,0,0,0,0,0,0,0,0,0,0,0,0),
(74220,8,-2925.329,2546.514,141.6225,0,0,0,0,0,0,0,0,0,0,0,0),
(74220,9,-2919.246,2565.872,141.6225,0,0,0,0,0,0,0,0,0,0,0,0),
(74220,10,-2920.081,2589.365,141.6225,0,0,0,0,0,0,0,0,0,0,0,0),
(74220,11,-2931.993,2608.762,141.6225,0,0,0,0,0,0,0,0,0,0,0,0),
(74220,12,-2955.626,2618.87,141.6225,0,0,0,0,0,0,0,0,0,0,0,0),
(74220,13,-2977.497,2619.666,141.6225,0,0,0,0,0,0,0,0,0,0,0,0),
(74220,14,-3014.667,2609.543,141.6225,0,0,0,0,0,0,0,0,0,0,0,0),
(74220,15,-3055.036,2590.46,141.6225,0,0,0,0,0,0,0,0,0,0,0,0),
(74220,16,-3085.538,2571.631,141.6225,0,0,0,0,0,0,0,0,0,0,0,0),
(74220,17,-3114.716,2555.922,141.6225,0,0,0,0,0,0,0,0,0,0,0,0),
(74220,18,-3143.012,2552.032,141.6225,0,0,0,0,0,0,0,0,0,0,0,0),
(74220,19,-3176.688,2560.458,141.6225,0,0,0,0,0,0,0,0,0,0,0,0),
(74220,20,-3190.569,2587.816,141.6225,0,0,0,0,0,0,0,0,0,0,0,0),
(74220,21,-3187.101,2615.266,141.6225,0,0,0,0,0,0,0,0,0,0,0,0),
(74220,22,-3164.5,2634.338,141.6225,0,0,0,0,0,0,0,0,0,0,0,0),
(74220,23,-3137.512,2639.929,141.6225,0,0,0,0,0,0,0,0,0,0,0,0),
(74220,24,-3099.443,2633.703,141.6225,0,0,0,0,0,0,0,0,0,0,0,0),
(74220,25,-3074.344,2622.916,141.6225,0,0,0,0,0,0,0,0,0,0,0,0),
(74220,26,-3057.397,2608.769,141.6225,0,0,0,0,0,0,0,0,0,0,0,0),
(74220,27,-3045.574,2592.941,140.8448,0,0,0,0,0,0,0,0,0,0,0,0),
(74220,28,-3046.095,2591.678,139.9281,0,0,0,0,0,0,0,0,0,0,0,0),
(74220,29,-3028.975,2582.002,141.6225,0,0,0,0,0,0,0,0,0,0,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2115301; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES
(2115301,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON');
-- Dragonmaw Fortress - SHADOWMOON VALLEY
-- Dragonmaw Wrangler
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (75752, 75767, 75780);
DELETE FROM creature_movement WHERE id IN (75752, 75767, 75780);
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
-- #1
(75767,1,-4188.010742,575.998657,17.729940,0,0,0,0,0,0,0,0,0,2.366051,0,0),
(75767,2,-4198.010742,588.189148,19.047892,0,0,0,0,0,0,0,0,0,1.932511,0,0),
(75767,3,-4199.839844,593.627625,19.466450,0,0,0,0,0,0,0,0,0,1.502113,0,0),
(75767,4,-4195.008789,584.689453,18.181055,0,0,0,0,0,0,0,0,0,5.389044,0,0),
(75767,5,-4188.620605,577.609314,17.729494,0,0,0,0,0,0,0,0,0,5.652937,0,0),
(75767,6,-4175.713867,565.297791,16.412207,0,0,0,0,0,0,0,0,0,5.706347,0,0),
(75767,7,-4168.107910,561.899414,13.978737,0,0,0,0,0,0,0,0,0,5.875206,0,0),
(75767,8,-4155.913574,556.916565,12.142880,0,0,0,0,0,0,0,0,0,5.894841,0,0),
(75767,9,-4132.807129,546.087402,17.350250,0,0,0,0,0,0,0,0,0,5.867352,0,0),
(75767,10,-4109.653320,542.435852,18.351336,0,0,0,0,0,0,0,0,0,5.987518,0,0),
(75767,11,-4102.089844,537.566650,23.001888,0,0,0,0,0,0,0,0,0,5.421247,0,0),
(75767,12,-4099.586914,531.915527,27.454123,0,0,0,0,0,0,0,0,0,2.232087,0,0),
(75767,13,-4108.219727,542.360596,18.605085,0,0,0,0,0,0,0,0,0,2.528969,0,0),
(75767,14,-4135.797363,545.615417,16.860237,0,0,0,0,0,0,0,0,0,2.616148,0,0),
(75767,15,-4144.270996,549.549744,13.583424,0,0,0,0,0,0,0,0,0,2.673482,0,0),
(75767,16,-4158.298340,555.947815,12.490613,0,0,0,0,0,0,0,0,0,2.625573,0,0),
(75767,17,-4166.084473,562.763062,13.601583,0,0,0,0,0,0,0,0,0,2.554887,0,0),
-- #2
(75752,1,-4232.931641,497.837555,32.258911,0,0,0,0,0,0,0,0,0,0.333773,0,0),
(75752,2,-4208.652832,503.911896,30.622068,0,0,0,0,0,0,0,0,0,0.457865,0,0),
(75752,3,-4196.171387,507.795532,28.993822,0,0,0,0,0,0,0,0,0,0.935057,0,0),
(75752,4,-4187.255859,521.639099,26.369997,0,0,0,0,0,0,0,0,0,1.292414,0,0),
(75752,5,-4185.345215,530.538757,24.680729,0,0,0,0,0,0,0,0,0,1.818808,0,0),
(75752,6,-4189.390625,535.696899,25.812838,0,0,0,0,0,0,0,0,0,2.288476,0,0),
(75752,7,-4196.165039,540.461243,27.049620,0,0,0,0,0,0,0,0,0,2.524096,0,0),
(75752,8,-4199.928711,541.857605,26.613752,0,0,0,0,0,0,0,0,0,2.857890,0,0),
(75752,9,-4202.984863,542.702148,27.960930,0,0,0,0,0,0,0,0,0,2.893233,0,0),
(75752,10,-4214.729492,545.492249,27.658199,0,0,0,0,0,0,0,0,0,2.158885,0,0),
(75752,11,-4221.317383,555.177795,33.294201,0,0,0,0,0,0,0,0,0,1.744356,0,0),
(75752,12,-4219.146973,568.996399,34.550354,0,0,0,0,0,0,0,0,0,1.171015,0,0),
(75752,13,-4215.952637,577.919678,31.837757,3000,0,0,0,0,0,0,0,0,1.229135,0,0),
(75752,14,-4223.088379,559.878845,35.105816,0,0,0,0,0,0,0,0,0,4.904798,0,0),
(75752,15,-4221.260254,552.027832,32.533688,0,0,0,0,0,0,0,0,0,5.225236,0,0),
(75752,16,-4215.488281,543.471985,27.796789,0,0,0,0,0,0,0,0,0,5.728674,0,0),
(75752,17,-4203.125977,541.787659,27.839315,0,0,0,0,0,0,0,0,0,6.106445,0,0),
(75752,18,-4200.407715,541.324158,26.561014,0,0,0,0,0,0,0,0,0,6.114299,0,0),
(75752,19,-4191.425293,538.032104,26.027517,0,0,0,0,0,0,0,0,0,5.910099,0,0),
(75752,20,-4185.604492,528.890137,25.013880,0,0,0,0,0,0,0,0,0,4.600848,0,0),
(75752,21,-4190.329590,517.424500,26.886118,0,0,0,0,0,0,0,0,0,3.995307,0,0),
(75752,22,-4198.889160,505.739441,29.831257,0,0,0,0,0,0,0,0,0,3.469879,0,0),
(75752,23,-4227.240234,500.003937,31.785309,0,0,0,0,0,0,0,0,0,3.326151,0,0),
(75752,24,-4234.566406,498.073700,32.537895,0,0,0,0,0,0,0,0,0,3.653662,0,0),
(75752,25,-4239.346191,494.284882,34.392879,0,0,0,0,0,0,0,0,0,3.875930,0,0),
-- #3
(75780,1,-4188.431,467.3629,30.58786,3000,0,0,0,0,0,0,0,0,0.816276,0,0),
(75780,2,-4204.05,452.0077,30.68821,3000,0,0,0,0,0,0,0,0,3.93823,0,0);
-- Dragonmaw Shaman
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 75806;
DELETE FROM creature_movement WHERE id = 75806;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(75806,1,-4177.804199,486.220612,30.077543,0,0,0,0,0,0,0,0,0,2.467699,0,0),
(75806,2,-4183.045410,489.395172,29.558874,0,0,0,0,0,0,0,0,0,3.012801,0,0),
(75806,3,-4187.705078,489.121246,29.724194,0,0,0,0,0,0,0,0,0,3.524881,0,0),
(75806,4,-4196.065430,484.703735,29.924784,0,0,0,0,0,0,0,0,0,3.327746,0,0),
(75806,5,-4216.111328,482.995209,33.373230,0,0,0,0,0,0,0,0,0,3.919936,0,0),
(75806,6,-4225.131836,476.294800,37.392998,0,0,0,0,0,0,0,0,0,4.044815,0,0),
(75806,7,-4228.804688,471.083008,40.249447,0,0,0,0,0,0,0,0,0,4.493277,0,0),
(75806,8,-4229.854980,458.369507,45.700077,0,0,0,0,0,0,0,0,0,5.082324,0,0),
(75806,9,-4226.083496,452.472107,46.537434,0,0,0,0,0,0,0,0,0,5.368205,0,0),
(75806,10,-4217.913574,441.546509,47.571629,0,0,0,0,0,0,0,0,0,4.979433,0,0),
(75806,11,-4216.639160,434.690399,48.436863,0,0,0,0,0,0,0,0,0,4.516050,0,0),
(75806,12,-4219.950195,428.530182,49.121250,0,0,0,0,0,0,0,0,0,4.042457,0,0),
(75806,13,-4225.127930,422.294006,50.601624,0,0,0,0,0,0,0,0,0,3.978055,0,0),
(75806,14,-4231.592285,416.950226,53.448383,0,0,0,0,0,0,0,0,0,4.063663,0,0),
(75806,15,-4235.403320,411.337372,57.345684,0,0,0,0,0,0,0,0,0,4.127280,0,0),
(75806,16,-4239.785156,405.440125,62.149086,0,0,0,0,0,0,0,0,0,4.091937,0,0),
(75806,17,-4248.827637,388.563507,75.081512,0,0,0,0,0,0,0,0,0,4.272575,0,0),
(75806,18,-4253.813965,380.367889,77.451920,0,0,0,0,0,0,0,0,0,3.844530,0,0),
(75806,19,-4246.598633,391.258942,73.414169,0,0,0,0,0,0,0,0,0,1.154541,0,0),
(75806,20,-4241.328613,403.482391,63.737835,0,0,0,0,0,0,0,0,0,0.964474,0,0),
(75806,21,-4232.953125,413.125977,55.420212,0,0,0,0,0,0,0,0,0,0.793257,0,0),
(75806,22,-4221.696289,424.398224,49.814671,0,0,0,0,0,0,0,0,0,1.054010,0,0),
(75806,23,-4216.987793,433.357361,48.673328,0,0,0,0,0,0,0,0,0,1.491477,0,0),
(75806,24,-4217.191895,440.679321,47.622936,0,0,0,0,0,0,0,0,0,1.975282,0,0),
(75806,25,-4223.239746,449.554688,46.986233,0,0,0,0,0,0,0,0,0,2.181057,0,0),
(75806,26,-4228.468262,456.715576,45.919838,0,0,0,0,0,0,0,0,0,1.859829,0,0),
(75806,27,-4229.584961,464.403656,43.218948,0,0,0,0,0,0,0,0,0,1.425503,0,0),
(75806,28,-4227.307129,473.491699,38.944069,0,0,0,0,0,0,0,0,0,0.868656,0,0),
(75806,29,-4218.513184,481.633362,34.271664,0,0,0,0,0,0,0,0,0,0.380138,0,0),
(75806,30,-4211.095215,483.373901,31.906696,0,0,0,0,0,0,0,0,0,0.154729,0,0),
(75806,31,-4197.064453,483.996185,30.002192,0,0,0,0,0,0,0,0,0,0.347937,0,0),
(75806,32,-4185.631348,488.883881,29.643353,0,0,0,0,0,0,0,0,0,0.088755,0,0),
(75806,33,-4181.416992,488.485596,29.771294,0,0,0,0,0,0,0,0,0,5.453812,0,0),
(75806,34,-4178.755859,483.346649,29.964998,0,0,0,0,0,0,0,0,0,4.962154,0,0),
(75806,35,-4178.053223,477.427490,30.252510,0,0,0,0,0,0,0,0,0,5.106668,0,0),
(75806,36,-4171.917480,466.521179,30.429811,0,0,0,0,0,0,0,0,0,5.533921,0,0),
(75806,37,-4160.896484,455.055878,30.672913,0,0,0,0,0,0,0,0,0,5.718939,0,0),
(75806,38,-4148.679688,446.607391,33.682346,0,0,0,0,0,0,0,0,0,5.675743,0,0),
(75806,39,-4156.754883,452.168213,31.474447,0,0,0,0,0,0,0,0,0,2.573419,0,0),
(75806,40,-4168.957031,466.059998,30.494608,0,0,0,0,0,0,0,0,0,2.282822,0,0);
-- Sunfury Warlock
UPDATE creature SET MovementType = 2, spawndist  =0 WHERE guid = 75414;
DELETE FROM creature_movement WHERE id = 75414;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(75414,1,-3824.080566,342.716705,120.657806,0,0,0,0,0,0,0,0,0,1.511785,0,0),
(75414,2,-3824.897949,309.914795,120.632156,0,0,0,0,0,0,0,0,0,4.684789,0,0),
(75414,3,-3824.870605,256.013763,120.616676,0,0,0,0,0,0,0,0,0,4.751546,0,0),
(75414,4,-3824.703613,314.869141,120.657677,0,0,0,0,0,0,0,0,0,1.570683,0,0);
-- now 5 that channel spell on Azaloth
-- 1st
DELETE FROM creature_movement WHERE id = 75409;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(75409,1,-3821.185059,388.192596,120.564316,30000,0,0,0,0,0,0,0,38722,3.542035,0,0), -- TO DO: Spell stucks on npc - should be removed on aggro
(75409,2,-3821.185059,388.192596,120.564316,0,0,0,0,0,0,0,0,0,3.542035,0,0);
-- 2nd
DELETE FROM creature_movement WHERE id = 75410;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(75410,1,-3844.86499,388.54379,120.416885,30000,0,0,0,0,0,0,0,38722,5.969026,0,0), -- TO DO: Spell stucks on npc - should be removed on aggro
(75410,2,-3844.86499,388.54379,120.416885,0,0,0,0,0,0,0,0,0,5.969026,0,0);
-- 3rd
DELETE FROM creature_movement WHERE id = 75411;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(75411,1,-3841.58496,376.102,120.403328,30000,0,0,0,0,0,0,0,38722,0.9948376,0,0), -- TO DO: Spell stucks on npc - should be removed on aggro
(75411,2,-3841.58496,376.102,120.403328,0,0,0,0,0,0,0,0,0,0.9948376,0,0);
-- 4th
DELETE FROM creature_movement WHERE id = 75412;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(75412,1,-3824.62988,374.3699,120.57457,30000,0,0,0,0,0,0,0,38722,2.234,0,0), -- TO DO: Spell stucks on npc - should be removed on aggro
(75412,2,-3824.62988,374.3699,120.57457,0,0,0,0,0,0,0,0,0,2.234,0,0);
-- 5th
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 75408;
DELETE FROM creature_movement WHERE id = 75408;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(75408,1,-3839.98,403.547,120.641,30000,0,0,0,0,0,0,0,38722,5.25344,0,0), -- TO DO: Spell stucks on npc - should be removed on aggro
(75408,2,-3839.98,403.547,120.641,0,0,0,0,0,0,0,0,0,5.25344,0,0);
-- Dragonmaw Subjugator
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 75774;
DELETE FROM creature_movement WHERE id = 75774;
INSERT INTO creature_movement (id, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(75774,1,-4093.977783,381.199615,30.644897,0,0,0,0,0,0,0,0,0,3.892662,0,0),
(75774,2,-4098.746582,376.555664,30.797308,0,0,0,0,0,0,0,0,0,3.542376,0,0),
(75774,3,-4105.760254,375.540924,30.608936,0,0,0,0,0,0,0,0,0,2.820595,0,0),
(75774,4,-4113.001953,380.848358,30.458948,0,0,0,0,0,0,0,0,0,2.017918,0,0),
(75774,5,-4115.609375,389.396088,30.423685,0,0,0,0,0,0,0,0,0,1.377818,0,0),
(75774,6,-4114.786621,392.274078,30.417028,11000,2171801,0,0,0,0,0,0,0,0.949776,0,0),
(75774,7,-4113.623535,392.392578,30.395899,0,0,0,0,0,0,0,0,0,6.171103,0,0),
(75774,8,-4109.685059,390.704681,30.401756,0,0,0,0,0,0,0,0,0,0.155740,0,0),
(75774,9,-4105.583984,390.955475,30.452295,0,0,0,0,0,0,0,0,0,0.459689,0,0),
(75774,10,-4103.539063,393.594086,30.495529,0,0,0,0,0,0,0,0,0,1.419446,0,0),
(75774,11,-4102.723633,398.989929,30.628727,0,0,0,0,0,0,0,0,0,1.126493,0,0),
(75774,12,-4096.089355,403.437164,30.524677,0,0,0,0,0,0,0,0,0,0.149457,0,0),
(75774,13,-4090.207764,403.836487,30.441118,0,0,0,0,0,0,0,0,0,5.730498,0,0),
(75774,14,-4087.153076,402.147980,30.486839,11000,2171801,0,0,0,0,0,0,0,5.670027,0,0),
(75774,15,-4086.802246,400.638947,30.511129,0,0,0,0,0,0,0,0,0,4.698492,0,0),
(75774,16,-4086.153809,397.519714,30.562328,0,0,0,0,0,0,0,0,0,5.128107,0,0),
(75774,17,-4085.152344,394.526855,30.647171,0,0,0,0,0,0,0,0,0,4.711061,0,0),
(75774,18,-4089.763428,387.494690,30.568907,0,0,0,0,0,0,0,0,0,4.024629,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2171801; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES
(2171801,3,15,30945,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2171801,8,15,6273,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Illidari Ravager <Servant of Illidan>
DELETE FROM dbscripts_on_creature_movement WHERE id = 2285701; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES
(2285701,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement changed to :idle');
-- Let Gahz'rilla walk out of his basin)
UPDATE creature_template SET MovementType = 2 WHERE entry = 7273;
DELETE FROM creature_movement_template WHERE entry= 7273;
INSERT INTO creature_movement_template (entry, POINT, position_x, position_y, position_z, waittime, script_id) VALUES
(7273, 1, 1703.787354, 1225.994019, 8.876802, 1000, 7273);
DELETE FROM dbscripts_on_creature_movement WHERE id = 7273;
INSERT INTO dbscripts_on_creature_movement (id, command, datalong, datalong2, data_flags, comments) VALUES
(7273, 20, 1, 15, 8, 'Let Gahzrilla move random');
-- Better movement for UBRS Rookery Event
UPDATE creature_template SET MovementType = 2 WHERE entry IN (10264, 10258, 10683);
-- Waypoints for some NPCs
DELETE FROM creature_movement_template WHERE entry IN (10264, 10258, 10683);
INSERT INTO creature_movement_template (entry, POINT, position_x, position_y, position_z, waittime, script_id) VALUES
-- Solakar Flamewreath
(10264, 1, 62.9621, -270.921, 93.4347, 0, 0),
(10264, 2, 74.4821, -275.932, 92.602, 0, 0),
(10264, 3, 80.6596, -289.724, 91.4508, 0, 0),
(10264, 4, 78.1464, -317.642, 91.4405, 1, 1026404),
-- Rookery Guardian
(10258, 1, 62.9621, -270.921, 93.4347, 0, 0),
(10258, 2, 74.4821, -275.932, 92.602, 0, 0),
(10258, 3, 80.6596, -289.724, 91.4508, 0, 0),
(10258, 4, 78.1464, -317.642, 91.4405, 1, 1026404),
-- Rookery Hatcher
(10683, 1, 62.9621, -270.921, 93.4347, 0, 0),
(10683, 2, 74.4821, -275.932, 92.602, 0, 0),
(10683, 3, 80.6596, -289.724, 91.4508, 0, 0),
(10683, 4, 78.1464, -317.642, 91.4405, 1, 1026404);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1026404;
INSERT INTO dbscripts_on_creature_movement (id, command, datalong, datalong2, data_flags, comments) VALUES
(1026404, 20, 1, 20, 0x08, 'UBRS-Rookery event: Random movement around current position');
-- Lurker
UPDATE creature_template SET unitflags = unitflags | 32832, InhabitType = InhabitType | 1 WHERE entry = 21217;


-- ## -- Random updates -- ## --
-- Defias Messenger (Westfall) - update (rubish removed: after new script system was created)
UPDATE dbscripts_on_creature_movement SET datalong = 1, datalong2 = 0  WHERE id = 55001 AND delay = 5;
UPDATE dbscripts_on_creature_movement SET datalong = 0, datalong2 = 0  WHERE id = 55002;

-- Edrick Killian -- Undercity
UPDATE creature_template SET MovementType = 2 WHERE entry = 5670; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 5670;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(5670,1,1596.405029,363.119293,-62.177650,0,0,0,0,0,0,0,0,0,1.277002,0,0),
(5670,2,1600.587769,371.134369,-62.177650,0,0,0,0,0,0,0,0,0,0.804196,0,0),
(5670,3,1604.573242,375.022400,-62.177650,0,0,0,0,0,0,0,0,0,0.384794,0,0),
(5670,4,1612.855103,375.448364,-62.177650,0,0,0,0,0,0,0,0,0,6.163754,0,0),
(5670,5,1629.419556,373.422943,-61.619919,0,0,0,0,0,0,0,0,0,6.103280,0,0),
(5670,6,1636.503540,371.630280,-62.031597,0,0,0,0,0,0,0,0,0,5.950131,0,0),
(5670,7,1648.593140,366.277405,-62.147816,0,0,0,0,0,0,0,0,0,5.690954,0,0),
(5670,8,1650.512939,364.817749,-60.762695,0,0,0,0,0,0,0,0,0,5.632050,0,0),
(5670,9,1658.693970,356.650909,-60.746399,0,0,0,0,0,0,0,0,0,5.163956,0,0),
(5670,10,1660.307495,351.520935,-60.725143,0,0,0,0,0,0,0,0,0,4.732781,0,0),
(5670,11,1659.802246,344.907684,-62.171364,0,0,0,0,0,0,0,0,0,4.813679,0,0),
(5670,12,1660.424805,337.392883,-62.172363,0,0,0,0,0,0,0,0,0,5.537809,0,0),
(5670,13,1686.193359,312.154358,-62.158852,0,0,0,0,0,0,0,0,0,5.632049,0,0),
(5670,14,1693.320801,305.167542,-62.161331,0,0,0,0,0,0,0,0,0,5.794629,0,0),
(5670,15,1700.086304,302.831299,-62.170135,0,0,0,0,0,0,0,0,0,0.157036,0,0),
(5670,16,1714.190552,304.062317,-61.487946,0,0,0,0,0,0,0,0,0,6.012219,0,0),
(5670,17,1720.737305,299.714569,-61.492283,0,0,0,0,0,0,0,0,0,5.507210,0,0),
(5670,18,1722.402466,297.283234,-62.177639,0,0,0,0,0,0,0,0,0,5.114514,0,0),
(5670,19,1728.375977,279.715546,-62.177864,0,0,0,0,0,0,0,0,0,5.010843,0,0),
(5670,20,1729.156250,274.653625,-61.619877,0,0,0,0,0,0,0,0,0,4.771299,0,0),
(5670,21,1729.829712,270.673431,-62.055553,0,0,0,0,0,0,0,0,0,4.896961,0,0),
(5670,22,1733.395386,254.987732,-62.177433,0,0,0,0,0,0,0,0,0,4.790934,0,0),
(5670,23,1731.589600,247.396042,-62.177433,0,0,0,0,0,0,0,0,0,4.102143,0,0),
(5670,24,1722.094116,241.103333,-62.177433,0,0,0,0,0,0,0,0,0,3.269622,0,0),
(5670,25,1708.783691,237.127625,-62.177433,0,0,0,0,0,0,0,0,0,3.199721,0,0),
(5670,26,1667.436035,238.903625,-62.177433,0,0,0,0,0,0,0,0,0,2.791315,0,0),
(5670,27,1661.928345,245.750763,-62.177433,0,0,0,0,0,0,0,0,0,1.745308,0,0),
(5670,28,1659.920166,263.653625,-62.177433,0,0,0,0,0,0,0,0,0,1.928306,0,0),
(5670,29,1652.952759,278.418701,-62.177433,0,0,0,0,0,0,0,0,0,2.262100,0,0),
(5670,30,1645.442017,287.234406,-62.181824,0,0,0,0,0,0,0,0,0,2.478869,0,0),
(5670,31,1632.756470,298.534302,-62.178776,0,0,0,0,0,0,0,0,0,2.689356,0,0),
(5670,32,1621.633545,304.092194,-62.178776,0,0,0,0,0,0,0,0,0,3.026292,0,0),
(5670,33,1602.038208,308.263031,-62.178776,0,0,0,0,0,0,0,0,0,2.555839,0,0),
(5670,34,1597.119507,314.250580,-62.178776,0,0,0,0,0,0,0,0,0,1.932232,0,0),
(5670,35,1595.592285,321.994965,-62.178776,0,0,0,0,0,0,0,0,0,1.713891,0,0),
(5670,36,1596.298096,340.950775,-62.178776,0,0,0,0,0,0,0,0,0,1.556811,0,0);
-- Davitt Hickson -- Undercity
UPDATE creature SET MovementType = 2,spawndist = 0 WHERE guid = 41830;
DELETE FROM creature_movement WHERE id = 41830;
UPDATE creature_template SET MovementType = 2 WHERE entry = 5706; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry =5706;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(5706,1,1596.213379,161.705170,-62.177460,0,0,0,0,0,0,0,0,0,1.412201,0,0),
(5706,2,1599.041992,168.373367,-62.177460,0,0,0,0,0,0,0,0,0,0.969237,0,0),
(5706,3,1624.806885,177.136841,-62.177460,0,0,0,0,0,0,0,0,0,0.604677,0,0),
(5706,4,1635.193481,183.345413,-62.177460,0,0,0,0,0,0,0,0,0,0.753903,0,0),
(5706,5,1644.250000,190.512405,-62.181984,0,0,0,0,0,0,0,0,0,0.954179,0,0),
(5706,6,1653.079468,198.578018,-62.178810,0,0,0,0,0,0,0,0,0,1.236138,0,0),
(5706,7,1658.437866,208.939301,-62.178810,0,0,0,0,0,0,0,0,0,1.235352,0,0),
(5706,8,1664.887939,231.188461,-62.178810,0,0,0,0,0,0,0,0,0,1.006015,0,0),
(5706,9,1669.192627,236.103745,-62.178810,0,0,0,0,0,0,0,0,0,0.369843,0,0),
(5706,10,1683.702148,238.710999,-62.178810,0,0,0,0,0,0,0,0,0,6.264256,0,0),
(5706,11,1702.693726,239.171371,-62.178810,0,0,0,0,0,0,0,0,0,0.021911,0,0),
(5706,12,1721.727905,238.299728,-62.178810,0,0,0,0,0,0,0,0,0,6.009789,0,0),
(5706,13,1728.945801,232.596146,-62.178810,0,0,0,0,0,0,0,0,0,5.211829,0,0),
(5706,14,1729.274780,211.525177,-62.178810,0,0,0,0,0,0,0,0,0,4.450782,0,0),
(5706,15,1727.064209,203.416824,-61.619919,0,0,0,0,0,0,0,0,0,4.311769,0,0),
(5706,16,1720.510010,188.163895,-62.145714,0,0,0,0,0,0,0,0,0,4.150070,0,0),
(5706,17,1719.229736,185.943527,-60.760353,0,0,0,0,0,0,0,0,0,4.114728,0,0),
(5706,18,1701.347656,159.810822,-60.782578,0,0,0,0,0,0,0,0,0,3.857120,0,0),
(5706,19,1671.785645,130.367386,-60.390602,0,0,0,0,0,0,0,0,0,3.796644,0,0),
(5706,20,1669.355957,128.857864,-61.481884,0,0,0,0,0,0,0,0,0,3.701612,0,0),
(5706,21,1646.949951,113.663521,-62.183788,0,0,0,0,0,0,0,0,0,3.546888,0,0),
(5706,22,1630.369995,108.162102,-61.620037,0,0,0,0,0,0,0,0,0,3.205240,0,0),
(5706,23,1616.766479,106.218842,-62.177586,0,0,0,0,0,0,0,0,0,3.202884,0,0),
(5706,24,1605.792603,106.219116,-62.177586,0,0,0,0,0,0,0,0,0,2.770129,0,0),
(5706,25,1599.237915,109.457069,-62.177586,0,0,0,0,0,0,0,0,0,2.270616,0,0),
(5706,26,1595.918213,120.261322,-62.177586,0,0,0,0,0,0,0,0,0,1.636014,0,0),
(5706,27,1595.887329,130.826263,-62.177586,0,0,0,0,0,0,0,0,0,1.608525,0,0);

-- Raven's Wood Stonebark #1 - Raven's Wood
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74684;
DELETE FROM creature_movement WHERE id = 74684;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(74684,1,3335.737305,6896.388672,164.625183,0,0,0,0,0,0,0,0,0,4.302203,0,0),
(74684,2,3309.555420,6872.659180,167.787308,0,0,0,0,0,0,0,0,0,4.347760,0,0),
(74684,3,3297.825439,6850.702148,169.448059,0,0,0,0,0,0,0,0,0,5.040515,0,0),
(74684,4,3299.141357,6824.546875,168.693314,0,0,0,0,0,0,0,0,0,5.644480,0,0),
(74684,5,3328.774170,6812.213379,167.769943,0,0,0,0,0,0,0,0,0,5.611484,0,0),
(74684,6,3344.035889,6790.651855,168.908035,0,0,0,0,0,0,0,0,0,6.045029,0,0),
(74684,7,3371.876953,6798.302734,167.628799,0,0,0,0,0,0,0,0,0,0.013177,0,0),
(74684,8,3385.930176,6786.741699,166.810776,0,0,0,0,0,0,0,0,0,4.711435,0,0),
(74684,9,3380.581055,6720.467285,168.415115,0,0,0,0,0,0,0,0,0,4.104832,0,0),
(74684,10,3361.237793,6697.047852,166.218842,0,0,0,0,0,0,0,0,0,4.408246,0,0),
(74684,11,3345.877197,6695.349121,165.911987,0,0,0,0,0,0,0,0,0,1.894974,0,0),
(74684,12,3338.582275,6729.638184,166.702728,0,0,0,0,0,0,0,0,0,1.565105,0,0),
(74684,13,3347.255615,6777.783203,169.521027,0,0,0,0,0,0,0,0,0,0.742217,0,0),
(74684,14,3381.237061,6799.541016,168.211700,0,0,0,0,0,0,0,0,0,0.828478,0,0),
(74684,15,3396.946289,6829.958984,170.324356,0,0,0,0,0,0,0,0,0,1.468577,0,0),
(74684,16,3389.834717,6898.867188,167.891190,0,0,0,0,0,0,0,0,0,2.302224,0,0),
(74684,17,3373.431396,6917.860352,163.549881,0,0,0,0,0,0,0,0,0,2.667433,0,0),
(74684,18,3346.964111,6929.285156,162.449631,0,0,0,0,0,0,0,0,0,2.404032,0,0),
(74684,19,3328.096436,6953.527344,164.047409,0,0,0,0,0,0,0,0,0,2.935746,0,0),
(74684,20,3312.547852,6953.742676,163.745956,0,0,0,0,0,0,0,0,0,4.076144,0,0),
(74684,21,3303.466797,6933.588867,164.247421,0,0,0,0,0,0,0,0,0,4.728872,0,0),
(74684,22,3302.131836,6919.916016,165.461578,0,0,0,0,0,0,0,0,0,5.312421,0,0),
(74684,23,3318.453613,6909.049316,164.112015,0,0,0,0,0,0,0,0,0,5.791206,0,0);
-- Raven's Wood Stonebark #2 - Raven's Wood
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74683;
DELETE FROM creature_movement WHERE id = 74683;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(74683,1,3613.701660,6869.672363,143.392929,0,0,0,0,0,0,0,0,0,1.891705,0,0),
(74683,2,3584.131592,6924.325195,142.605515,0,0,0,0,0,0,0,0,0,2.304033,0,0),
(74683,3,3551.186768,7005.665527,152.601822,0,0,0,0,0,0,0,0,0,1.420459,0,0),
(74683,4,3577.130615,7046.243164,147.840225,0,0,0,0,0,0,0,0,0,0.300479,0,0),
(74683,5,3606.182861,7043.406738,144.670212,0,0,0,0,0,0,0,0,0,5.914508,0,0),
(74683,6,3665.104248,7029.369629,150.335861,0,0,0,0,0,0,0,0,0,5.881522,0,0),
(74683,7,3716.450684,6985.810547,146.004593,0,0,0,0,0,0,0,0,0,5.055276,0,0),
(74683,8,3726.844238,6938.100586,143.874008,0,0,0,0,0,0,0,0,0,5.168210,0,0),
(74683,9,3726.000732,6886.956055,146.320145,0,0,0,0,0,0,0,0,0,4.060802,0,0),
(74683,10,3703.385742,6863.924805,149.436508,0,0,0,0,0,0,0,0,0,3.965770,0,0),
(74683,11,3677.379150,6836.406738,146.920990,0,0,0,0,0,0,0,0,0,2.756254,0,0),
(74683,12,3627.839355,6847.969238,141.859543,0,0,0,0,0,0,0,0,0,2.932969,0,0);
-- Wyrmcult Scout #1 - Blackwing Coven
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 75461;
DELETE FROM creature_movement WHERE id = 75461;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(75461,1,3265.246094,7042.908203,167.128906,0,0,0,0,0,0,0,0,0,0.341048,0,0),
(75461,2,3275.629150,7048.381348,166.984940,0,0,0,0,0,0,0,0,0,1.202630,0,0),
(75461,3,3279.498047,7068.834473,169.084900,0,0,0,0,0,0,0,0,0,1.641667,0,0),
(75461,4,3274.820313,7083.257324,170.751175,0,0,0,0,0,0,0,0,0,2.438061,0,0),
(75461,5,3265.760010,7089.631348,171.828339,0,0,0,0,0,0,0,0,0,2.882890,0,0),
(75461,6,3257.594971,7091.708496,172.627182,0,0,0,0,0,0,0,0,0,3.327425,0,0),
(75461,7,3235.323730,7080.799805,172.287186,0,0,0,0,0,0,0,0,0,3.940822,0,0),
(75461,8,3231.248779,7075.868652,171.987610,0,0,0,0,0,0,0,0,0,4.324880,0,0),
(75461,9,3230.588379,7068.987305,172.020874,0,0,0,0,0,0,0,0,0,4.928063,0,0),
(75461,10,3235.762695,7048.075195,169.078705,0,0,0,0,0,0,0,0,0,5.306622,0,0),
(75461,11,3239.418945,7044.324219,168.695465,0,0,0,0,0,0,0,0,0,5.958497,0,0),
(75461,12,3252.124268,7044.683594,166.902100,0,0,0,0,0,0,0,0,0,0.074293,0,0);
-- Wyrmcult Scout #2 - Blackwing Coven
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 75460;
DELETE FROM creature_movement WHERE id = 75460;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(75460,1,3267.794189,7043.311523,167.148895,0,0,0,0,0,0,0,0,0,0.323261,0,0),
(75460,2,3273.521484,7048.104004,167.147308,0,0,0,0,0,0,0,0,0,1.044257,0,0),
(75460,3,3278.574707,7060.771973,168.347900,0,0,0,0,0,0,0,0,0,1.409467,0,0),
(75460,4,3276.890625,7079.760742,170.274948,0,0,0,0,0,0,0,0,0,2.091979,0,0),
(75460,5,3267.274902,7090.395508,171.873535,0,0,0,0,0,0,0,0,0,2.627620,0,0),
(75460,6,3258.751465,7093.309570,172.477570,0,0,0,0,0,0,0,0,0,3.294424,0,0),
(75460,7,3234.737061,7080.653809,172.240601,0,0,0,0,0,0,0,0,0,3.843418,0,0),
(75460,8,3230.578857,7074.742188,171.986069,0,0,0,0,0,0,0,0,0,4.591901,0,0),
(75460,9,3233.044189,7047.865234,169.522827,0,0,0,0,0,0,0,0,0,5.247705,0,0),
(75460,10,3235.300049,7043.284668,169.270523,0,0,0,0,0,0,0,0,0,5.931784,0,0),
(75460,11,3244.371338,7041.061523,167.533707,0,0,0,0,0,0,0,0,0,6.194862,0,0);
-- Wyrmcult Scout #3 - Blackwing Coven
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 75462;
DELETE FROM creature_movement WHERE id = 75462;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(75462,1,3265.386963,7079.816406,171.094116,0,0,0,0,0,0,0,0,0,1.583004,0,0),
(75462,2,3264.458252,7116.043945,170.977402,0,0,0,0,0,0,0,0,0,1.646621,0,0),
(75462,3,3265.852783,7080.112793,171.077667,0,0,0,0,0,0,0,0,0,4.729304,0,0);
-- Wyrmcult Scout #4 - Blackwing Coven
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 75464;
DELETE FROM creature_movement WHERE id = 75464;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(75464,1,3264.327637,7167.532715,168.835541,0,0,0,0,0,0,0,0,0,1.263348,0,0),
(75464,2,3262.605225,7137.516602,170.871063,0,0,0,0,0,0,0,0,0,4.745015,0,0);
-- Wyrmcult Scout #5 - Blackwing Coven
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 75463;
DELETE FROM creature_movement WHERE id = 75463;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(75463,1,3265.896484,7115.500488,170.900772,2000,0,0,0,0,0,0,0,0,0.260392,0,0),
(75463,2,3229.743896,7106.632324,173.691895,0,0,0,0,0,0,0,0,0,0.357783,0,0);
-- Wyrmcult Scout #6 - Blackwing Coven
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 75465;
DELETE FROM creature_movement WHERE id = 75465;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(75465,1,3226.469971,7124.665039,173.353592,0,0,0,0,0,0,0,0,0,3.369786,0,0),
(75465,2,3257.745605,7133.408691,170.707642,2000,0,0,0,0,0,0,0,0,0.287097,0,0);
-- Wyrmcult Scout #7 - Blackwing Coven
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 75466;
DELETE FROM creature_movement WHERE id = 75466;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(75466,1,3265.432373,7171.586426,168.043198,0,0,0,0,0,0,0,0,0,5.407892,0,0),
(75466,2,3241.919922,7187.971680,167.312149,0,0,0,0,0,0,0,0,0,5.768391,0,0);
-- Wyrmcult Scout #8 - Blackwing Coven
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 75467;
DELETE FROM creature_movement WHERE id = 75467;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(75467,1,3186.849121,7163.799316,162.601913,0,0,0,0,0,0,0,0,0,1.260206,0,0),
(75467,2,3196.614014,7186.724609,164.747772,0,0,0,0,0,0,0,0,0,0.340504,0,0),
(75467,3,3220.127441,7196.033691,166.273682,0,0,0,0,0,0,0,0,0,0.349144,0,0),
(75467,4,3194.010254,7178.354980,165.175537,0,0,0,0,0,0,0,0,0,4.259643,0,0);
-- Wyrmcult Zealot #1 - Blackwing Coven
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74828;
DELETE FROM creature_movement WHERE id = 74828;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(74828,1,3214.145020,7114.848145,173.329193,2000,0,0,0,0,0,0,0,0,0.307520,0,0),
(74828,2,3205.847168,7097.213867,173.649246,0,0,0,0,0,0,0,0,0,4.203093,0,0);
-- Wyrmcult Zealot #2 - Blackwing Coven
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74831;
DELETE FROM creature_movement WHERE id = 74831;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(74831,1,3209.713623,7137.650391,173.187683,0,0,0,0,0,0,0,0,0,1.964708,0,0),
(74831,2,3213.964355,7115.430176,173.335190,0,0,0,0,0,0,0,0,0,4.933512,0,0);


-- Eye of the Citadel -- spawned only after 'Warlord Morkh' death + we shouldnt see him
DELETE FROM creature_movement_template WHERE entry = 21134;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(21134,1,-1168.39,1917.36,80.40,15000,2113401,0,0,0,0,0,0,0,5.75,0,0);
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
-- Bleeding Hollow Tormentor #1
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 69481;
DELETE FROM creature_movement WHERE id = 69481;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(69481,1,-1085.730347,2268.461670,24.846298,0,0,0,0,0,0,0,0,0,3.000890,0,0),
(69481,2,-1118.016602,2267.340332,28.668350,0,0,0,0,0,0,0,0,0,3.267923,0,0),
(69481,3,-1165.465210,2260.730957,40.327095,0,0,0,0,0,0,0,0,0,3.771906,0,0),
(69481,4,-1174.304810,2250.315918,43.066456,0,0,0,0,0,0,0,0,0,4.402771,0,0),
(69481,5,-1181.825439,2211.353760,49.969406,0,0,0,0,0,0,0,0,0,4.886572,0,0),
(69481,6,-1174.306641,2158.303467,62.511532,0,0,0,0,0,0,0,0,0,5.114336,0,0),
(69481,7,-1177.182129,2220.931396,47.041889,0,0,0,0,0,0,0,0,0,1.247820,0,0),
(69481,8,-1169.440308,2257.333984,41.496624,0,0,0,0,0,0,0,0,0,0.786009,0,0),
(69481,9,-1127.515137,2271.718750,30.783106,0,0,0,0,0,0,0,0,0,0.083858,0,0),
(69481,10,-1091.150513,2274.087402,24.864824,0,0,0,0,0,0,0,0,0,5.722237,0,0),
(69481,11,-1081.078491,2266.177979,24.850050,0,0,0,0,0,0,0,0,0,5.206768,0,0),
(69481,12,-1072.319946,2252.039551,24.891975,0,0,0,0,0,0,0,0,0,5.795825,0,0),
(69481,13,-1057.030273,2245.796875,23.025778,0,0,0,0,0,0,0,0,0,2.775967,0,0);
-- Bleeding Hollow Tormentor #2 
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 69476;
DELETE FROM creature_movement WHERE id = 69476;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(69476,1,-1058.475952,2110.307373,56.275890,0,0,0,0,0,0,0,0,0,4.322702,0,0),
(69476,2,-1081.057373,2076.104736,65.404343,0,0,0,0,0,0,0,0,0,3.803552,0,0),
(69476,3,-1101.374146,2046.567627,67.061478,0,0,0,0,0,0,0,0,0,3.525521,0,0),
(69476,4,-1143.822021,2032.493408,66.993912,0,0,0,0,0,0,0,0,0,0.383930,0,0),
(69476,5,-1093.838623,2049.278564,66.940681,0,0,0,0,0,0,0,0,0,0.921928,0,0),
(69476,6,-1063.502441,2094.122070,61.053200,0,0,0,0,0,0,0,0,0,1.268289,0,0),
(69476,7,-1058.119751,2110.895996,56.056568,0,0,0,0,0,0,0,0,0,1.564384,0,0),
(69476,8,-1058.310181,2138.641602,44.471546,0,0,0,0,0,0,0,0,0,1.296563,0,0),
(69476,9,-1051.706299,2161.292969,31.184345,0,0,0,0,0,0,0,0,0,1.636641,0,0),
(69476,10,-1048.008911,2191.853760,20.094387,0,0,0,0,0,0,0,0,0,1.791364,0,0),
(69476,11,-1059.131714,2233.372559,21.419680,0,0,0,0,0,0,0,0,0,2.323864,0,0),
(69476,12,-1069.602905,2246.986816,24.822861,0,0,0,0,0,0,0,0,0,1.927238,0,0),
(69476,13,-1078.690430,2293.485596,23.902674,0,0,0,0,0,0,0,0,0,1.455998,0,0),
(69476,14,-1078.312622,2307.388184,20.248459,0,0,0,0,0,0,0,0,0,1.441863,0,0),
(69476,15,-1066.722900,2352.723633,17.589792,0,0,0,0,0,0,0,0,0,1.505480,0,0),
(69476,16,-1065.181396,2423.995117,20.967661,0,0,0,0,0,0,0,0,0,1.150989,0,0),
(69476,17,-1060.460327,2434.233154,17.258204,0,0,0,0,0,0,0,0,0,1.081089,0,0),
(69476,18,-1041.125244,2473.595703,14.542444,0,0,0,0,0,0,0,0,0,1.434518,0,0),
(69476,19,-1040.729126,2485.625977,14.335879,0,0,0,0,0,0,0,0,0,1.993722,0,0),
(69476,20,-1042.731445,2496.647705,14.389601,0,0,0,0,0,0,0,0,0,2.632250,0,0),
(69476,21,-1054.550415,2499.745605,15.785695,0,0,0,0,0,0,0,0,0,3.425502,0,0),
(69476,22,-1100.891357,2458.919189,26.190712,0,0,0,0,0,0,0,0,0,3.490691,0,0),
(69476,23,-1110.513428,2454.875977,32.061302,0,0,0,0,0,0,0,0,0,3.539385,0,0),
(69476,24,-1140.431885,2443.590576,34.614586,0,0,0,0,0,0,0,0,0,2.805037,0,0),
(69476,25,-1147.623291,2449.070801,36.420860,0,0,0,0,0,0,0,0,0,2.786562,0,0),
(69476,26,-1154.000244,2450.904053,37.517906,0,0,0,0,0,0,0,0,0,3.163553,0,0),
(69476,27,-1163.462036,2447.874023,38.270378,0,0,0,0,0,0,0,0,0,4.019637,0,0),
(69476,28,-1172.660522,2424.059570,36.774651,0,0,0,0,0,0,0,0,0,4.728848,0,0),
(69476,29,-1163.808350,2373.841553,34.838898,0,0,0,0,0,0,0,0,0,4.693501,0,0),
(69476,30,-1152.615234,2323.533691,34.078762,0,0,0,0,0,0,0,0,0,4.365201,0,0),
(69476,31,-1163.021240,2286.804443,38.275612,0,0,0,0,0,0,0,0,0,4.388761,0,0),
(69476,32,-1172.976318,2258.851563,42.295650,0,0,0,0,0,0,0,0,0,5.074411,0,0),
(69476,33,-1165.158447,2252.312744,40.751495,0,0,0,0,0,0,0,0,0,5.937496,0,0),
(69476,34,-1127.530151,2233.237305,33.938915,0,0,0,0,0,0,0,0,0,5.827541,0,0),
(69476,35,-1089.715942,2209.037109,27.929937,0,0,0,0,0,0,0,0,0,5.674391,0,0),
(69476,36,-1064.827026,2188.071045,24.829670,0,0,0,0,0,0,0,0,0,5.113621,0,0),
(69476,37,-1056.307617,2171.221924,28.590641,0,0,0,0,0,0,0,0,0,4.941622,0,0),
(69476,38,-1056.486572,2152.667725,36.809460,0,0,0,0,0,0,0,0,0,4.669093,0,0),
(69476,39,-1059.817139,2128.160889,49.912823,0,0,0,0,0,0,0,0,0,4.964390,0,0),
(69476,40,-1057.949829,2114.073486,54.956074,0,0,0,0,0,0,0,0,0,5.435627,0,0),
(69476,41,-1038.601563,2098.855225,61.700172,0,0,0,0,0,0,0,0,0,5.474108,0,0),
(69476,42,-1021.648315,2077.173096,67.663216,0,0,0,0,0,0,0,0,0,5.403420,0,0),
(69476,43,-1005.556519,2059.000000,67.623756,0,0,0,0,0,0,0,0,0,5.446617,0,0),
(69476,44,-993.817566,2049.765381,67.067886,0,0,0,0,0,0,0,0,0,6.105566,0,0),
(69476,45,-977.045959,2053.233887,67.128174,0,0,0,0,0,0,0,0,0,0.510387,0,0),
(69476,46,-990.862793,2051.377686,66.962723,0,0,0,0,0,0,0,0,0,3.021305,0,0),
(69476,47,-1001.215271,2054.028809,67.341782,0,0,0,0,0,0,0,0,0,2.450321,0,0),
(69476,48,-1027.760620,2084.813965,66.597237,0,0,0,0,0,0,0,0,0,2.383561,0,0),
(69476,49,-1048.651489,2100.710693,59.454109,0,0,0,0,0,0,0,0,0,2.059977,0,0),
(69476,50,-1058.033325,2118.406006,53.392273,0,0,0,0,0,0,0,0,0,1.528262,0,0),
(69476,51,-1057.630005,2134.943604,46.152061,0,0,0,0,0,0,0,0,0,1.535331,0,0),
(69476,52,-1052.229248,2157.421143,33.071705,0,0,0,0,0,0,0,0,0,2.070101,0,0),
(69476,53,-1058.290161,2187.536865,23.208622,0,0,0,0,0,0,0,0,0,2.181690,0,0),
(69476,54,-1089.962891,2215.208252,27.476307,0,0,0,0,0,0,0,0,0,2.874411,0,0),
(69476,55,-1131.333252,2239.021729,34.112709,0,0,0,0,0,0,0,0,0,2.644366,0,0),
(69476,56,-1167.888306,2255.420654,41.223240,0,0,0,0,0,0,0,0,0,2.066313,0,0),
(69476,57,-1170.771851,2261.926270,41.585327,0,0,0,0,0,0,0,0,0,1.389299,0,0),
(69476,58,-1159.758057,2298.092285,37.042061,0,0,0,0,0,0,0,0,0,1.254210,0,0),
(69476,59,-1152.918945,2322.891846,34.177132,0,0,0,0,0,0,0,0,0,1.855052,0,0),
(69476,60,-1160.122437,2362.328125,34.670837,0,0,0,0,0,0,0,0,0,1.784365,0,0),
(69476,61,-1169.183594,2403.968994,34.834908,0,0,0,0,0,0,0,0,0,1.792224,0,0),
(69476,62,-1172.055298,2421.570801,36.441708,0,0,0,0,0,0,0,0,0,1.194536,0,0),
(69476,63,-1164.664429,2445.323730,38.061295,0,0,0,0,0,0,0,0,0,0.932213,0,0),
(69476,64,-1156.839600,2450.752197,37.855053,0,0,0,0,0,0,0,0,0,6.268208,0,0),
(69476,65,-1148.684570,2449.541748,36.631584,0,0,0,0,0,0,0,0,0,0.040788,0,0),
(69476,66,-1109.316650,2453.862305,31.515718,0,0,0,0,0,0,0,0,0,0.418565,0,0),
(69476,67,-1100.806641,2458.217529,26.198090,0,0,0,0,0,0,0,0,0,0.481397,0,0),
(69476,68,-1065.008667,2480.489990,17.397568,0,0,0,0,0,0,0,0,0,1.086939,0,0),
(69476,69,-1060.017090,2495.675049,16.545135,0,0,0,0,0,0,0,0,0,0.918863,0,0),
(69476,70,-1055.148438,2500.549561,15.840707,0,0,0,0,0,0,0,0,0,0.273265,0,0),
(69476,71,-1043.529541,2500.470459,14.382005,0,0,0,0,0,0,0,0,0,5.686230,0,0),
(69476,72,-1036.972168,2489.736572,13.837662,0,0,0,0,0,0,0,0,0,4.822293,0,0),
(69476,73,-1044.335571,2467.024414,15.024881,0,0,0,0,0,0,0,0,0,4.125648,0,0),
(69476,74,-1069.489502,2424.921875,21.742687,0,0,0,0,0,0,0,0,0,4.567043,0,0),
(69476,75,-1077.855713,2391.888916,20.111912,0,0,0,0,0,0,0,0,0,4.459443,0,0),
(69476,76,-1088.581421,2355.919678,20.907547,0,0,0,0,0,0,0,0,0,4.722549,0,0),
(69476,77,-1082.215942,2304.550537,21.368330,0,0,0,0,0,0,0,0,0,4.848210,0,0),
(69476,78,-1073.807373,2255.950195,24.906696,0,0,0,0,0,0,0,0,0,5.428614,0,0),
(69476,79,-1058.614258,2241.983154,22.620577,0,0,0,0,0,0,0,0,0,5.665017,0,0),
(69476,80,-1047.777100,2218.083496,18.774460,0,0,0,0,0,0,0,0,0,4.843494,0,0),
(69476,81,-1047.100952,2193.009766,19.752184,0,0,0,0,0,0,0,0,0,4.650287,0,0),
(69476,82,-1054.406982,2155.183594,34.791752,0,0,0,0,0,0,0,0,0,4.426450,0,0);
-- Bleeding Hollow Tormentor #3 
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 69479;
DELETE FROM creature_movement WHERE id = 69479;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(69479,1,-904.800720,2140.010254,15.821722,2000,0,0,0,0,0,0,0,0,5.270751,0,0),
(69479,2,-929.749146,2171.638672,12.407661,0,0,0,0,0,0,0,0,0,2.478660,0,0),
(69479,3,-961.989075,2199.568604,11.032035,0,0,0,0,0,0,0,0,0,2.700929,0,0),
(69479,4,-1005.119324,2215.763916,11.956749,0,0,0,0,0,0,0,0,0,2.787293,0,0),
(69479,5,-1042.341797,2231.554199,18.358982,0,0,0,0,0,0,0,0,0,2.548532,0,0),
(69479,6,-1065.282471,2248.223145,24.474363,2000,0,0,0,0,0,0,0,0,2.485700,0,0),
(69479,7,-1027.780396,2232.727783,15.339687,0,0,0,0,0,0,0,0,0,5.910033,0,0),
(69479,8,-987.287598,2216.827393,10.240157,0,0,0,0,0,0,0,0,0,5.967369,0,0),
(69479,9,-961.168518,2204.212402,10.428080,0,0,0,0,0,0,0,0,0,5.473353,0,0),
(69479,10,-939.016479,2189.584473,11.046396,0,0,0,0,0,0,0,0,0,5.233809,0,0),
(69479,11,-929.090332,2172.021729,12.368859,0,0,0,0,0,0,0,0,0,5.199253,0,0);
-- Bleeding Hollow Tormentor #4 
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 69477;
DELETE FROM creature_movement WHERE id = 69477;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(69477,1,-904.344666,2037.704834,50.001060,0,0,0,0,0,0,0,0,0,3.994459,0,0),
(69477,2,-921.761719,2023.693115,60.662533,0,0,0,0,0,0,0,0,0,3.392059,0,0),
(69477,3,-942.931702,2017.415771,66.496887,0,0,0,0,0,0,0,0,0,3.277390,0,0),
(69477,4,-992.396851,2016.431396,66.939690,0,0,0,0,0,0,0,0,0,3.295455,0,0),
(69477,5,-1014.874084,2009.067383,68.024918,0,0,0,0,0,0,0,0,0,3.164292,0,0),
(69477,6,-1043.664917,2015.960083,66.940384,0,0,0,0,0,0,0,0,0,2.712690,0,0),
(69477,7,-1061.384766,2022.081177,67.538696,0,0,0,0,0,0,0,0,0,3.589195,0,0),
(69477,8,-1073.012329,2013.131348,67.740395,0,0,0,0,0,0,0,0,0,4.120910,0,0),
(69477,9,-1079.178833,1996.458130,67.650902,0,0,0,0,0,0,0,0,0,4.922793,0,0),
(69477,10,-1073.516113,1990.697998,68.194633,2000,0,0,0,0,0,0,0,0,5.547968,0,0),
(69477,11,-1077.552734,1998.841309,67.470245,0,0,0,0,0,0,0,0,0,1.312316,0,0),
(69477,12,-1065.622070,2020.731079,67.837715,0,0,0,0,0,0,0,0,0,6.055336,0,0),
(69477,13,-1022.292603,2008.998779,68.073395,0,0,0,0,0,0,0,0,0,0.099659,0,0),
(69477,14,-990.645996,2016.065308,66.939705,0,0,0,0,0,0,0,0,0,6.205344,0,0),
(69477,15,-961.459106,2015.479858,66.940269,0,0,0,0,0,0,0,0,0,6.249327,0,0),
(69477,16,-937.868835,2018.022583,65.683685,0,0,0,0,0,0,0,0,0,0.625875,0,0),
(69477,17,-919.763123,2025.501587,59.606327,0,0,0,0,0,0,0,0,0,0.684802,0,0),
(69477,18,-897.143433,2044.974487,44.405445,0,0,0,0,0,0,0,0,0,0.918851,0,0),
(69477,19,-891.365601,2083.894531,27.507591,0,0,0,0,0,0,0,0,0,2.041970,0,0),
(69477,20,-909.706177,2117.238037,19.987719,0,0,0,0,0,0,0,0,0,1.885664,0,0),
(69477,21,-918.437195,2153.867920,13.990370,0,0,0,0,0,0,0,0,0,2.395388,0,0),
(69477,22,-944.434204,2188.610596,11.553843,0,0,0,0,0,0,0,0,0,2.407247,0,0),
(69477,23,-964.757080,2221.719971,8.782063,0,0,0,0,0,0,0,0,0,1.928154,0,0),
(69477,24,-972.937195,2257.992920,7.310841,0,0,0,0,0,0,0,0,0,2.081307,0,0),
(69477,25,-984.265869,2278.314209,6.905689,0,0,0,0,0,0,0,0,0,2.273729,0,0),
(69477,26,-1008.067627,2299.093506,8.015253,0,0,0,0,0,0,0,0,0,2.631086,0,0),
(69477,27,-1039.368408,2313.254639,12.584133,0,0,0,0,0,0,0,0,0,2.880056,0,0),
(69477,28,-1059.264648,2313.980225,16.015442,0,0,0,0,0,0,0,0,0,3.434547,0,0),
(69477,29,-1082.558105,2305.669189,21.285490,0,0,0,0,0,0,0,0,0,4.611074,0,0),
(69477,30,-1084.335449,2288.420654,24.452042,0,0,0,0,0,0,0,0,0,4.966074,0,0),
(69477,31,-1072.928467,2254.036621,24.917498,0,0,0,0,0,0,0,0,0,5.095662,0,0),
(69477,32,-1060.324463,2226.274170,21.026867,0,0,0,0,0,0,0,0,0,5.146712,0,0),
(69477,33,-1047.180298,2193.447021,19.696850,0,0,0,0,0,0,0,0,0,5.119223,0,0),
(69477,34,-1047.110962,2171.280029,25.993654,0,0,0,0,0,0,0,0,0,4.706890,0,0),
(69477,35,-1050.914551,2152.057129,35.194706,0,0,0,0,0,0,0,0,0,4.514468,0,0),
(69477,36,-1057.243286,2126.902588,49.855488,0,0,0,0,0,0,0,0,0,4.475198,0,0),
(69477,37,-1057.661865,2102.663330,58.578568,0,0,0,0,0,0,0,0,0,5.058748,0,0),
(69477,38,-1048.123779,2084.573242,63.496311,0,0,0,0,0,0,0,0,0,5.151587,0,0),
(69477,39,-1031.332520,2063.440674,66.985794,0,0,0,0,0,0,0,0,0,4.990578,0,0),
(69477,40,-1031.044556,2054.955566,67.185883,0,0,0,0,0,0,0,0,0,4.568035,0,0),
(69477,41,-1041.198608,2037.503784,67.437210,0,0,0,0,0,0,0,0,0,3.752790,0,0),
(69477,42,-1060.498169,2025.251099,67.575523,0,0,0,0,0,0,0,0,0,3.635766,0,0),
(69477,43,-1069.047119,2018.630005,67.954239,0,0,0,0,0,0,0,0,0,4.170622,0,0),
(69477,44,-1078.180542,2003.771973,67.421112,0,0,0,0,0,0,0,0,0,4.703120,0,0),
(69477,45,-1077.924927,1995.617798,67.653473,0,0,0,0,0,0,0,0,0,5.092676,0,0),
(69477,46,-1073.191162,1988.718506,68.641678,2000,0,0,0,0,0,0,0,0,5.383271,0,0),
(69477,47,-1078.786011,2000.404785,67.452835,0,0,0,0,0,0,0,0,0,1.657342,0,0),
(69477,48,-1073.826904,2013.674805,67.782631,0,0,0,0,0,0,0,0,0,0.771413,0,0),
(69477,49,-1061.150879,2026.682251,67.390984,0,0,0,0,0,0,0,0,0,0.596269,0,0),
(69477,50,-1034.208862,2048.755859,67.688248,0,0,0,0,0,0,0,0,0,0.872730,0,0),
(69477,51,-1029.936035,2058.483643,67.083855,0,0,0,0,0,0,0,0,0,1.849765,0,0),
(69477,52,-1039.379883,2074.167969,65.850075,0,0,0,0,0,0,0,0,0,2.210551,0,0),
(69477,53,-1056.848145,2100.049805,59.321968,0,0,0,0,0,0,0,0,0,1.721247,0,0),
(69477,54,-1058.189331,2123.582764,51.411049,0,0,0,0,0,0,0,0,0,1.483271,0,0),
(69477,55,-1057.165405,2137.241699,44.863773,0,0,0,0,0,0,0,0,0,1.236657,0,0),
(69477,56,-1049.458374,2165.444336,28.796076,0,0,0,0,0,0,0,0,0,1.608935,0,0),
(69477,57,-1047.996460,2191.894287,20.085361,0,0,0,0,0,0,0,0,0,1.880683,0,0),
(69477,58,-1061.090942,2227.673096,21.203344,0,0,0,0,0,0,0,0,0,1.974146,0,0),
(69477,59,-1074.123047,2254.475098,24.951677,0,0,0,0,0,0,0,0,0,1.714964,0,0),
(69477,60,-1081.230591,2293.883301,23.731279,0,0,0,0,0,0,0,0,0,1.310484,0,0),
(69477,61,-1075.467896,2305.822021,19.961241,0,0,0,0,0,0,0,0,0,0.613835,0,0),
(69477,62,-1055.174316,2314.299072,15.261082,0,0,0,0,0,0,0,0,0,6.262419,0,0),
(69477,63,-1036.081543,2311.773438,11.996511,0,0,0,0,0,0,0,0,0,5.806104,0,0),
(69477,64,-996.499390,2288.923584,7.300016,0,0,0,0,0,0,0,0,0,5.751127,0,0),
(69477,65,-980.992493,2274.711426,6.871607,0,0,0,0,0,0,0,0,0,5.167578,0,0),
(69477,66,-972.791809,2243.945068,7.751119,0,0,0,0,0,0,0,0,0,4.953952,0,0),
(69477,67,-965.805603,2216.411133,9.459405,0,0,0,0,0,0,0,0,0,5.316020,0,0),
(69477,68,-942.965271,2183.293945,12.315009,0,0,0,0,0,0,0,0,0,5.311305,0,0),
(69477,69,-921.471191,2147.820557,14.779966,0,0,0,0,0,0,0,0,0,5.268108,0,0),
(69477,70,-915.584839,2129.166504,18.619259,0,0,0,0,0,0,0,0,0,5.008928,0,0),
(69477,71,-900.482849,2108.072021,21.701344,0,0,0,0,0,0,0,0,0,5.366282,0,0),
(69477,72,-887.398804,2085.980957,26.545578,0,0,0,0,0,0,0,0,0,4.851849,0,0),
(69477,73,-885.720947,2058.691650,35.388058,0,0,0,0,0,0,0,0,0,4.244740,0,0);
-- Bleeding Hollow Tormentor #5 --- need to be mounted
DELETE FROM creature_addon WHERE guid = 69478;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(69478,9562,0,1,16,0,0,NULL);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 69478;
DELETE FROM creature_movement WHERE id = 69478;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(69478,1,-891.300049,2047.003296,41.317982,0,0,0,0,0,0,0,0,0,3.846560,0,0),
(69478,2,-915.059509,2021.046753,59.572216,0,0,0,0,0,0,0,0,0,4.049195,0,0),
(69478,3,-923.794006,2000.874390,65.555481,0,0,0,0,0,0,0,0,0,4.009140,0,0),
(69478,4,-953.165100,1964.585327,67.123100,0,0,0,0,0,0,0,0,0,4.117525,0,0),
(69478,5,-968.616943,1944.969482,68.679550,0,0,0,0,0,0,0,0,0,4.336649,0,0),
(69478,6,-972.183105,1917.940063,75.887939,0,0,0,0,0,0,0,0,0,4.639809,0,0),
(69478,7,-973.518616,1898.598389,86.329666,0,0,0,0,0,0,0,0,0,4.420683,0,0),
(69478,8,-974.750732,1887.797363,93.568588,0,0,0,0,0,0,0,0,0,4.502364,0,0),
(69478,9,-976.054077,1881.634155,94.710373,4000,0,0,0,0,0,0,0,0,4.482729,0,0),
(69478,10,-973.889648,1887.116211,93.721550,0,0,0,0,0,0,0,0,0,1.199764,0,0),
(69478,11,-970.093567,1911.992310,77.601677,0,0,0,0,0,0,0,0,0,1.474654,0,0),
(69478,12,-966.989197,1930.910889,70.592041,0,0,0,0,0,0,0,0,0,1.403968,0,0),
(69478,13,-958.151245,1954.607178,67.786232,0,0,0,0,0,0,0,0,0,0.909168,0,0),
(69478,14,-930.347107,1988.286743,66.662033,0,0,0,0,0,0,0,0,0,1.042686,0,0),
(69478,15,-918.002686,2019.057983,60.923820,0,0,0,0,0,0,0,0,0,0.979854,0,0),
(69478,16,-905.889343,2036.405273,51.062759,0,0,0,0,0,0,0,0,0,0.617785,0,0),
(69478,17,-887.845886,2067.105469,32.972401,0,0,0,0,0,0,0,0,0,1.062321,0,0),
(69478,18,-873.888000,2089.002197,24.572937,0,0,0,0,0,0,0,0,0,1.122011,0,0),
(69478,19,-865.936707,2112.852783,18.489285,0,0,0,0,0,0,0,0,0,1.181703,0,0),
(69478,20,-858.243652,2123.799316,17.028839,0,0,0,0,0,0,0,0,0,0.867544,0,0),
(69478,21,-851.814331,2127.913330,16.406960,0,0,0,0,0,0,0,0,0,0.135553,0,0),
(69478,22,-824.980103,2121.336182,16.313349,0,0,0,0,0,0,0,0,0,5.929437,0,0),
(69478,23,-803.832825,2112.592773,18.139872,0,0,0,0,0,0,0,0,0,5.524173,0,0),
(69478,24,-786.096313,2076.206299,24.751093,0,0,0,0,0,0,0,0,0,5.144042,0,0),
(69478,25,-774.526062,2044.076782,30.609726,0,0,0,0,0,0,0,0,0,4.702652,0,0),
(69478,26,-784.345337,2023.143433,35.613087,0,0,0,0,0,0,0,0,0,4.160729,0,0),
(69478,27,-804.478699,1990.084351,39.137081,0,0,0,0,0,0,0,0,0,4.388494,0,0),
(69478,28,-816.850647,1953.700317,46.382805,0,0,0,0,0,0,0,0,0,4.384567,0,0),
(69478,29,-826.891541,1924.049438,53.598846,0,0,0,0,0,0,0,0,0,4.204710,0,0),
(69478,30,-855.075317,1897.474121,63.806549,0,0,0,0,0,0,0,0,0,3.528483,0,0),
(69478,31,-885.906982,1889.717896,70.843910,0,0,0,0,0,0,0,0,0,3.391824,0,0),
(69478,32,-910.180603,1889.448730,74.786362,0,0,0,0,0,0,0,0,0,3.144423,0,0),
(69478,33,-938.717896,1887.959351,80.420860,0,0,0,0,0,0,0,0,0,3.281868,0,0),
(69478,34,-958.809326,1884.414307,87.935410,0,0,0,0,0,0,0,0,0,3.852067,0,0),
(69478,35,-965.227295,1878.337646,93.864189,0,0,0,0,0,0,0,0,0,3.716193,0,0),
(69478,36,-970.385803,1875.873657,94.728752,0,0,0,0,0,0,0,0,0,3.061171,0,0),
(69478,37,-975.503845,1877.549438,94.795929,4000,0,0,0,0,0,0,0,0,3.925110,0,0),
(69478,38,-967.402466,1876.073242,94.576981,0,0,0,0,0,0,0,0,0,0.291070,0,0),
(69478,39,-949.630066,1882.818604,85.362770,0,0,0,0,0,0,0,0,0,5.879962,0,0),
(69478,40,-923.466919,1882.902466,80.700180,0,0,0,0,0,0,0,0,0,0.013036,0,0),
(69478,41,-895.808960,1883.223145,74.881363,0,0,0,0,0,0,0,0,0,0.020890,0,0),
(69478,42,-866.645508,1892.182617,67.099030,0,0,0,0,0,0,0,0,0,0.291852,0,0),
(69478,43,-843.825500,1904.528687,60.244347,0,0,0,0,0,0,0,0,0,0.660989,0,0),
(69478,44,-827.110413,1926.547363,53.079021,0,0,0,0,0,0,0,0,0,1.108666,0,0),
(69478,45,-817.485046,1952.698975,46.737255,0,0,0,0,0,0,0,0,0,1.198987,0,0),
(69478,46,-810.255798,1980.168457,39.726307,0,0,0,0,0,0,0,0,0,1.155005,0,0),
(69478,47,-790.293335,2008.969604,37.892632,0,0,0,0,0,0,0,0,0,0.950801,0,0),
(69478,48,-776.461426,2027.081909,33.730286,0,0,0,0,0,0,0,0,0,1.068611,0,0),
(69478,49,-771.933777,2044.344116,30.535988,0,0,0,0,0,0,0,0,0,1.731487,0,0),
(69478,50,-774.704224,2062.900879,27.398983,0,0,0,0,0,0,0,0,0,1.906631,0,0),
(69478,51,-787.147644,2079.023193,24.267998,0,0,0,0,0,0,0,0,0,2.132041,0,0),
(69478,52,-808.946777,2106.313477,18.538874,0,0,0,0,0,0,0,0,0,2.473689,0,0),
(69478,53,-829.713074,2121.040039,16.294077,0,0,0,0,0,0,0,0,0,2.709309,0,0),
(69478,54,-846.322754,2127.129395,16.356516,0,0,0,0,0,0,0,0,0,3.080009,0,0),
(69478,55,-858.307007,2124.516357,16.965628,0,0,0,0,0,0,0,0,0,3.857553,0,0),
(69478,56,-866.565491,2111.990723,18.637341,0,0,0,0,0,0,0,0,0,4.396336,0,0),
(69478,57,-871.745178,2091.869873,23.612295,0,0,0,0,0,0,0,0,0,4.481941,0,0),
(69478,58,-876.654175,2067.967529,30.637917,0,0,0,0,0,0,0,0,0,4.148149,0,0);
-- Bleeding Hollow Tormentor #6 
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 69480;
DELETE FROM creature_movement WHERE id = 69480;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(69480,1,-921.140930,2193.051025,10.922313,0,0,0,0,0,0,0,0,0,5.883876,0,0),
(69480,2,-888.224854,2173.709961,10.581021,0,0,0,0,0,0,0,0,0,6.028389,0,0),
(69480,3,-854.811707,2157.650391,12.752934,0,0,0,0,0,0,0,0,0,5.780992,0,0),
(69480,4,-844.064209,2150.661133,13.653356,0,0,0,0,0,0,0,0,0,5.403218,0,0),
(69480,5,-838.367310,2142.140869,14.638391,0,0,0,0,0,0,0,0,0,4.873079,0,0),
(69480,6,-840.752930,2133.033691,15.654090,0,0,0,0,0,0,0,0,0,4.196852,0,0),
(69480,7,-853.727661,2114.882568,17.780720,0,0,0,0,0,0,0,0,0,3.891336,0,0),
(69480,8,-872.799805,2099.863525,21.582912,0,0,0,0,0,0,0,0,0,3.361192,0,0),
(69480,9,-893.450256,2099.202148,23.411373,0,0,0,0,0,0,0,0,0,2.748581,0,0),
(69480,10,-909.541504,2111.942627,21.120012,0,0,0,0,0,0,0,0,0,2.213724,0,0),
(69480,11,-915.429138,2126.304688,19.112494,0,0,0,0,0,0,0,0,0,1.881501,0,0),
(69480,12,-919.826782,2156.632080,13.741777,0,0,0,0,0,0,0,0,0,1.736202,0,0),
(69480,13,-927.429199,2188.791504,11.020359,0,0,0,0,0,0,0,0,0,1.897209,0,0),
(69480,14,-937.974792,2218.421875,8.567327,0,0,0,0,0,0,0,0,0,2.227061,0,0),
(69480,15,-944.477783,2227.111816,7.827459,0,0,0,0,0,0,0,0,0,2.921354,0,0),
(69480,16,-952.326233,2227.370117,8.016093,0,0,0,0,0,0,0,0,0,3.670624,0,0),
(69480,17,-959.750305,2221.960693,8.690232,0,0,0,0,0,0,0,0,0,4.259672,0,0),
(69480,18,-959.718994,2209.894287,9.948567,0,0,0,0,0,0,0,0,0,5.451116,0,0); 
-- Bleeding Hollow Tormentor #7
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 69474;
DELETE FROM creature_movement WHERE id = 69474;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(69474,1,-1147.611938,2031.190063,67.076881,0,0,0,0,0,0,0,0,0,5.939407,0,0),
(69474,2,-1120.608154,2037.993774,67.256500,0,0,0,0,0,0,0,0,0,6.247278,0,0),
(69474,3,-1090.175415,2035.556396,66.939766,0,0,0,0,0,0,0,0,0,5.955112,0,0),
(69474,4,-1052.268188,2024.452393,67.464653,0,0,0,0,0,0,0,0,0,5.872646,0,0),
(69474,5,-1020.431580,2009.684937,68.173576,0,0,0,0,0,0,0,0,0,5.825526,0,0),
(69474,6,-992.912231,1992.142334,67.264847,0,0,0,0,0,0,0,0,0,5.581269,0,0),
(69474,7,-981.574890,1969.575562,69.271652,0,0,0,0,0,0,0,0,0,5.102181,0,0),
(69474,8,-977.500793,1944.567017,70.069252,0,0,0,0,0,0,0,0,0,5.107678,0,0),
(69474,9,-967.470276,1920.134033,73.456802,0,0,0,0,0,0,0,0,0,5.352722,0,0),
(69474,10,-954.652222,1905.339600,74.319687,0,0,0,0,0,0,0,0,0,5.818459,0,0),
(69474,11,-928.706970,1898.185059,73.670425,0,0,0,0,0,0,0,0,0,6.067425,0,0),
(69474,12,-906.438538,1891.936157,72.948631,5000,0,0,0,0,0,0,0,0,6.012448,0,0),
(69474,13,-930.511169,1893.973633,76.018501,0,0,0,0,0,0,0,0,0,3.000448,0,0),
(69474,14,-958.804993,1909.763672,73.887230,0,0,0,0,0,0,0,0,0,1.999058,0,0),
(69474,15,-971.234009,1930.203369,71.738182,0,0,0,0,0,0,0,0,0,1.845905,0,0),
(69474,16,-977.705505,1959.371460,69.270813,0,0,0,0,0,0,0,0,0,1.966856,0,0),
(69474,17,-984.425781,1976.965942,68.939224,0,0,0,0,0,0,0,0,0,2.198549,0,0),
(69474,18,-994.644409,1993.023193,67.126289,0,0,0,0,0,0,0,0,0,2.413749,0,0),
(69474,19,-1012.830078,2005.937500,67.551018,0,0,0,0,0,0,0,0,0,2.611669,0,0),
(69474,20,-1036.167114,2017.678833,67.784973,0,0,0,0,0,0,0,0,0,2.694136,0,0),
(69474,21,-1061.344727,2027.187256,67.378105,0,0,0,0,0,0,0,0,0,2.808018,0,0),
(69474,22,-1088.523193,2037.824097,66.995003,0,0,0,0,0,0,0,0,0,3.152023,0,0),
(69474,23,-1109.662109,2038.272949,67.085800,0,0,0,0,0,0,0,0,0,3.371933,0,0),
(69474,24,-1138.712158,2032.474976,66.953224,0,0,0,0,0,0,0,0,0,3.306745,0,0);
-- Bleeding Hollow Tormentor #8 
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 69471;
DELETE FROM creature_movement WHERE id = 69471;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(69471,1,-1136.550171,1911.096680,81.393265,0,0,0,0,0,0,0,0,0,1.731284,0,0),
(69471,2,-1138.600464,1919.574463,81.348328,0,0,0,0,0,0,0,0,0,1.883651,0,0),
(69471,3,-1142.189819,1929.685547,81.406830,0,0,0,0,0,0,0,0,0,2.174248,0,0),
(69471,4,-1146.759155,1936.748535,81.403702,0,0,0,0,0,0,0,0,0,2.589280,0,0),
(69471,5,-1152.559692,1940.860474,81.403702,0,0,0,0,0,0,0,0,0,2.834324,0,0),
(69471,6,-1159.556885,1944.302246,81.403801,0,0,0,0,0,0,0,0,0,2.731437,0,0),
(69471,7,-1152.952271,1941.376587,81.403801,0,0,0,0,0,0,0,0,0,5.697883,0,0),
(69471,8,-1145.444702,1936.002930,81.403801,0,0,0,0,0,0,0,0,0,5.392365,0,0),
(69471,9,-1140.774414,1926.637939,81.394020,0,0,0,0,0,0,0,0,0,5.042870,0,0),
(69471,10,-1136.005005,1914.571899,81.391922,0,0,0,0,0,0,0,0,0,4.793113,0,0),
(69471,11,-1136.208496,1907.561035,81.392731,0,0,0,0,0,0,0,0,0,4.369003,0,0),
(69471,12,-1139.472534,1900.198364,81.354660,0,0,0,0,0,0,0,0,0,4.017934,0,0),
(69471,13,-1145.081055,1892.433960,81.354660,0,0,0,0,0,0,0,0,0,4.023435,0,0),
(69471,14,-1138.811523,1901.579224,81.354500,0,0,0,0,0,0,0,0,0,1.109609,0,0);
-- Bleeding Hollow Peon #1 
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 58632;
DELETE FROM creature_movement WHERE id = 58632;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(58632,1,-967.837097,2049.468994,66.939590,0,0,0,0,0,0,0,0,0,1.041965,0,0),
(58632,2,-961.269714,2056.896240,66.939590,0,0,0,0,0,0,0,0,0,1.319211,0,0),
(58632,3,-959.368713,2062.513184,66.939590,45000,0,0,0,0,0,69,0,0,1.277585,0,0),
(58632,4,-963.171448,2062.435059,66.939590,0,0,0,0,0,0,0,0,0,2.698971,0,0),
(58632,5,-972.978149,2069.148682,67.210938,0,0,0,0,0,0,0,0,0,2.680907,0,0),
(58632,6,-980.363220,2071.689209,68.111107,0,0,0,0,0,0,0,0,0,3.500077,0,0),
(58632,7,-983.955811,2068.972900,67.409409,0,0,0,0,0,0,0,0,0,4.274479,0,0),
(58632,8,-985.507385,2063.743164,66.939644,0,0,0,0,0,0,0,0,0,4.730792,0,0),
(58632,9,-981.499390,2052.045166,67.383759,0,0,0,0,0,0,0,0,0,5.237366,0,0),
(58632,10,-969.215149,2033.986938,66.939873,0,0,0,0,0,0,0,0,0,5.018239,0,0),
(58632,11,-967.019653,2022.121826,66.939873,0,0,0,0,0,0,0,0,0,4.626330,0,0),
(58632,12,-967.238464,2012.217407,66.939873,45000,0,0,0,0,0,69,0,0,4.542297,0,0),
(58632,13,-966.300842,2034.513306,66.940483,0,0,0,0,0,0,0,0,0,1.557782,0,0);
-- Bleeding Hollow Peon #2
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 58636;
DELETE FROM creature_movement WHERE id = 58636;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(58636,1,-989.994873,1941.953735,71.459511,0,0,0,0,0,0,0,0,0,2.193923,0,0),
(58636,2,-1008.413635,1959.056030,68.923553,0,0,0,0,0,0,0,0,0,2.417762,0,0),
(58636,3,-1019.706848,1969.102783,68.601791,0,0,0,0,0,0,0,0,0,2.386346,0,0),
(58636,4,-1026.266357,1974.991211,70.054985,0,0,0,0,0,0,0,0,0,1.871910,0,0),
(58636,5,-1026.924194,1982.568115,69.328300,45000,0,0,0,0,0,69,0,0,1.706976,0,0),
(58636,6,-1025.509888,1975.341309,69.882309,0,0,0,0,0,0,0,0,0,5.220063,0,0),
(58636,7,-1020.078064,1966.497559,68.307961,0,0,0,0,0,0,0,0,0,6.115412,0,0),
(58636,8,-995.227722,1955.722900,69.966187,0,0,0,0,0,0,0,0,0,5.317444,0,0),
(58636,9,-978.143188,1924.367432,75.159401,0,0,0,0,0,0,0,0,0,5.155549,0,0),
(58636,10,-971.913086,1906.661987,81.009102,0,0,0,0,0,0,0,0,0,4.792695,0,0),
(58636,11,-969.988281,1896.654053,85.586975,0,0,0,0,0,0,0,0,0,4.447121,0,0),
(58636,12,-968.025757,1884.122437,93.571579,45000,0,0,0,0,0,69,0,0,4.806046,0,0),
(58636,13,-968.339233,1894.251587,86.274696,0,0,0,0,0,0,0,0,0,1.971544,0,0),
(58636,14,-971.346313,1907.804321,80.163971,0,0,0,0,0,0,0,0,0,2.209521,0,0),
(58636,15,-978.063049,1919.933960,76.912735,0,0,0,0,0,0,0,0,0,2.116058,0,0);
-- Bleeding Hollow Peon #3
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 58638;
DELETE FROM creature_movement WHERE id = 58638;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(58638,1,-969.117126,1895.510132,85.834244,0,0,0,0,0,0,0,0,0,3.447317,0,0),
(58638,2,-979.001770,1893.236572,92.738396,0,0,0,0,0,0,0,0,0,3.862792,0,0),
(58638,3,-980.752930,1889.950806,94.266716,45000,0,0,0,0,0,69,0,0,4.524092,0,0),
(58638,4,-969.103882,1893.873901,86.940453,0,0,0,0,0,0,0,0,0,0.295507,0,0),
(58638,5,-943.257935,1896.119141,76.528870,0,0,0,0,0,0,0,0,0,0.226394,0,0),
(58638,6,-927.465088,1904.292114,70.923218,0,0,0,0,0,0,0,0,0,0.853927,0,0),
(58638,7,-918.027649,1919.593384,67.282433,0,0,0,0,0,0,0,0,0,1.039281,0,0),
(58638,8,-912.198364,1930.650879,66.943939,0,0,0,0,0,0,0,0,0,0.900266,0,0),
(58638,9,-906.253296,1936.394775,66.940865,0,0,0,0,0,0,0,0,0,6.104314,0,0),
(58638,10,-902.916199,1935.384521,66.940865,0,0,0,0,0,0,0,0,0,5.578885,0,0),
(58638,11,-899.892578,1931.821899,66.940865,45000,0,0,0,0,0,69,0,0,5.331488,0,0),
(58638,12,-904.320313,1933.325195,66.940865,0,0,0,0,0,0,0,0,0,3.389197,0,0),
(58638,13,-909.278625,1931.342041,66.940865,0,0,0,0,0,0,0,0,0,3.933478,0,0),
(58638,14,-923.101868,1907.026367,69.679916,0,0,0,0,0,0,0,0,0,3.974313,0,0),
(58638,15,-935.694275,1898.914673,74.055901,0,0,0,0,0,0,0,0,0,3.265884,0,0),
(58638,16,-957.265015,1896.197876,79.849152,0,0,0,0,0,0,0,0,0,3.077389,0,0);
-- Bleeding Hollow Peon #4
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 58635;
DELETE FROM creature_movement WHERE id = 58635;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(58635,1,-930.127869,2000.575439,65.805489,0,0,0,0,0,0,0,0,0,3.100847,0,0),
(58635,2,-943.891235,2000.601440,66.866531,45000,0,0,0,0,0,69,0,0,3.157396,0,0),
(58635,3,-927.428589,1999.935913,65.753281,0,0,0,0,0,0,0,0,0,5.915708,0,0),
(58635,4,-916.523682,1997.898193,66.372726,0,0,0,0,0,0,0,0,0,5.442903,0,0),
(58635,5,-911.154785,1991.462402,67.374107,0,0,0,0,0,0,0,0,0,5.128751,0,0),
(58635,6,-906.294312,1982.158081,67.531693,45000,0,0,0,0,0,69,0,0,5.105193,0,0),
(58635,7,-912.459045,1992.950928,67.169350,0,0,0,0,0,0,0,0,0,2.591917,0,0),
(58635,8,-925.843994,1998.590698,65.841309,0,0,0,0,0,0,0,0,0,2.459970,0,0);
-- Bleeding Hollow Peon #5 - Update
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 58637;
-- Bleeding Hollow Peon #6 
UPDATE creature_addon SET emote = 0 WHERE guid = 58628; -- emote is part of his wps
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 58628;
DELETE FROM creature_movement WHERE id = 58628;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(58628,1,-1066.278564,2076.291748,65.258133,0,0,0,0,0,0,0,0,0,2.203428,0,0),
(58628,2,-1084.712036,2090.957031,64.069794,0,0,0,0,0,0,0,0,0,2.968404,0,0),
(58628,3,-1107.215454,2093.742676,67.026070,0,0,0,0,0,0,0,0,0,3.239367,0,0),
(58628,4,-1126.190063,2091.051270,67.664238,0,0,0,0,0,0,0,0,0,3.412154,0,0),
(58628,5,-1140.148438,2088.175293,67.045998,0,0,0,0,0,0,0,0,0,3.851978,0,0),
(58628,6,-1144.392090,2084.571289,66.940399,45000,0,0,0,0,0,69,0,0,3.935933,0,0),
(58628,7,-1132.805054,2089.311035,67.616081,0,0,0,0,0,0,0,0,0,0.167592,0,0),
(58628,8,-1115.337402,2093.108887,67.525368,0,0,0,0,0,0,0,0,0,0.005800,0,0),
(58628,9,-1091.943115,2092.040527,65.128181,0,0,0,0,0,0,0,0,0,5.935558,0,0),
(58628,10,-1073.855957,2086.685303,63.254597,0,0,0,0,0,0,0,0,0,5.725072,0,0),
(58628,11,-1064.040283,2075.594971,65.620255,0,0,0,0,0,0,0,0,0,5.002511,0,0),
(58628,12,-1064.260376,2062.375244,67.309395,45000,0,0,0,0,0,69,0,0,4.686000,0,0);
-- Bleeding Hollow Peon #7 - correct spawn point + let him work 
UPDATE creature SET position_x = -985.57, position_y = 1874.44, position_z = 95.82, orientation = 0.21, spawndist = 0, MovementType = 0 WHERE guid = 58639;
DELETE FROM creature_addon WHERE guid = 58639;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(58639,0,0,1,16,234,0,NULL);
-- Bleeding Hollow Peon #8 - let him work 
DELETE FROM creature_addon WHERE guid = 58640;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(58640,0,0,1,16,234,0,NULL);
-- Bleeding Hollow Dark Shaman #1 
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 58258;
DELETE FROM creature_movement WHERE id =58258;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(58258,1,-921.448975,1980.349487,66.877449,0,0,0,0,0,0,0,0,0,5.702196,0,0),
(58258,2,-913.764954,1975.236206,66.938622,0,0,0,0,0,0,0,0,0,5.684921,0,0),
(58258,3,-928.577271,1988.217651,66.636101,0,0,0,0,0,0,0,0,0,2.123923,0,0),
(58258,4,-938.014893,2005.055786,66.117706,0,0,0,0,0,0,0,0,0,1.885162,0,0),
(58258,5,-941.708069,2016.249023,66.374184,0,0,0,0,0,0,0,0,0,3.049908,0,0),
(58258,6,-957.924866,2015.490845,66.938255,0,0,0,0,0,0,0,0,0,2.857636,0,0),
(58258,7,-964.086121,2017.722900,66.938255,0,0,0,0,0,0,0,0,0,2.039251,0,0),
(58258,8,-966.337524,2023.661377,66.938255,0,0,0,0,0,0,0,0,0,1.563300,0,0),
(58258,9,-967.487915,2047.717651,66.939514,0,0,0,0,0,0,0,0,0,1.638698,0,0),
(58258,10,-967.083679,2025.857788,66.939514,0,0,0,0,0,0,0,0,0,5.055962,0,0),
(58258,11,-963.562683,2017.482056,66.939514,0,0,0,0,0,0,0,0,0,5.721190,0,0),
(58258,12,-959.347290,2015.480591,66.939514,0,0,0,0,0,0,0,0,0,6.267038,0,0),
(58258,13,-945.109985,2016.231323,66.636986,0,0,0,0,0,0,0,0,0,6.095034,0,0),
(58258,14,-941.892944,2014.638550,66.375290,0,0,0,0,0,0,0,0,0,5.110147,0,0),
(58258,15,-938.415833,2004.230957,66.179733,0,0,0,0,0,0,0,0,0,5.292364,0,0),
(58258,16,-931.909424,1992.215454,66.483078,0,0,0,0,0,0,0,0,0,5.487925,0,0),
(58258,17,-927.701294,1986.468994,66.710274,0,0,0,0,0,0,0,0,0,5.605732,0,0),
(58258,18,-914.462219,1975.920776,66.938301,0,0,0,0,0,0,0,0,0,5.636358,0,0),
(58258,19,-922.633667,1982.744629,66.826248,0,0,0,0,0,0,0,0,0,2.884323,0,0),
(58258,20,-929.578796,1983.857788,66.799690,0,0,0,0,0,0,0,0,0,3.548770,0,0),
(58258,21,-938.836060,1975.638428,66.937805,0,0,0,0,0,0,0,0,0,4.195153,0,0),
(58258,22,-947.479614,1963.747314,66.937805,0,0,0,0,0,0,0,0,0,4.598060,0,0),
(58258,23,-948.247375,1958.086182,66.937805,0,0,0,0,0,0,0,0,0,4.945202,0,0),
(58258,24,-946.036926,1948.458008,66.937805,0,0,0,0,0,0,0,0,0,5.023736,0,0),
(58258,25,-947.170410,1958.572388,66.937805,0,0,0,0,0,0,0,0,0,1.403049,0,0),
(58258,26,-946.699097,1963.575928,66.937805,0,0,0,0,0,0,0,0,0,0.982075,0,0),
(58258,27,-936.566406,1978.140137,66.927383,0,0,0,0,0,0,0,0,0,0.705615,0,0),
(58258,28,-927.684875,1982.052002,66.835876,0,0,0,0,0,0,0,0,0,6.219110,0,0);
-- Bleeding Hollow Dark Shaman #2 
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 58256;
DELETE FROM creature_movement WHERE id = 58256;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(58256,1,-1114.137207,2011.377808,67.160423,0,0,0,0,0,0,0,0,0,0.828908,0,0),
(58256,2,-1101.410767,2028.733765,66.939812,0,0,0,0,0,0,0,0,0,1.159561,0,0),
(58256,3,-1093.524170,2047.060669,66.939812,0,0,0,0,0,0,0,0,0,1.167415,0,0),
(58256,4,-1085.035889,2065.807861,66.626167,0,0,0,0,0,0,0,0,0,0.933367,0,0),
(58256,5,-1076.155884,2080.223145,64.470154,0,0,0,0,0,0,0,0,0,0.978920,0,0),
(58256,6,-1064.433350,2095.273682,60.848419,0,0,0,0,0,0,0,0,0,1.180767,0,0),
(58256,7,-1059.126221,2106.458496,57.534264,4000,0,0,0,0,0,0,0,0,1.373975,0,0),
(58256,8,-1061.435181,2097.328125,60.172970,0,0,0,0,0,0,0,0,0,4.157425,0,0),
(58256,9,-1072.130005,2086.706299,63.112404,0,0,0,0,0,0,0,0,0,3.611574,0,0),
(58256,10,-1082.487305,2083.974121,64.526230,0,0,0,0,0,0,0,0,0,3.137979,0,0),
(58256,11,-1104.779663,2083.747803,66.931480,0,0,0,0,0,0,0,0,0,3.262072,0,0),
(58256,12,-1118.399780,2083.031738,67.100792,0,0,0,0,0,0,0,0,0,3.458422,0,0),
(58256,13,-1127.969360,2079.651123,66.941566,0,0,0,0,0,0,0,0,0,3.552669,0,0),
(58256,14,-1114.920044,2083.489746,67.190331,0,0,0,0,0,0,0,0,0,0.067070,0,0),
(58256,15,-1100.282104,2084.036621,66.602280,0,0,0,0,0,0,0,0,0,6.270145,0,0),
(58256,16,-1087.113892,2083.690430,65.105392,0,0,0,0,0,0,0,0,0,0.116551,0,0),
(58256,17,-1075.007813,2085.765137,63.494282,0,0,0,0,0,0,0,0,0,0.559319,0,0),
(58256,18,-1064.912842,2094.614014,61.027885,0,0,0,0,0,0,0,0,0,0.948092,0,0),
(58256,19,-1059.403687,2103.586670,58.391666,0,0,0,0,0,0,0,0,0,1.187638,0,0),
(58256,20,-1067.457031,2090.515381,62.063904,0,0,0,0,0,0,0,0,0,3.981300,0,0),
(58256,21,-1084.703857,2067.087891,66.525970,0,0,0,0,0,0,0,0,0,4.140737,0,0),
(58256,22,-1095.021118,2044.956543,66.938263,0,0,0,0,0,0,0,0,0,4.289960,0,0),
(58256,23,-1103.497070,2026.858643,66.940720,0,0,0,0,0,0,0,0,0,4.059839,0,0),
(58256,24,-1124.076538,1994.267212,69.852798,0,0,0,0,0,0,0,0,0,4.172153,0,0),
(58256,25,-1135.958984,1970.909424,73.544449,0,0,0,0,0,0,0,0,0,4.270325,0,0),
(58256,26,-1141.877563,1958.744995,79.152245,4000,0,0,0,0,0,0,0,0,4.180000,0,0),
(58256,27,-1135.303467,1970.007080,73.721436,0,0,0,0,0,0,0,0,0,1.006989,0,0),
(58256,28,-1131.216675,1981.867310,72.988731,0,0,0,0,0,0,0,0,0,1.154644,0,0),
(58256,29,-1124.473145,1995.191284,69.731705,0,0,0,0,0,0,0,0,0,1.058040,0,0);
-- Bleeding Hollow Dark Shaman #3 
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 58257;
DELETE FROM creature_movement WHERE id = 58257;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(58257,1,-994.857910,2016.681030,66.940125,0,0,0,0,0,0,0,0,0,0.460341,0,0),
(58257,2,-987.057739,2016.844238,66.944038,0,0,0,0,0,0,0,0,0,6.012321,0,0),
(58257,3,-969.962524,2015.546143,66.940712,0,0,0,0,0,0,0,0,0,0.017378,0,0),
(58257,4,-992.626831,2016.881958,66.939621,0,0,0,0,0,0,0,0,0,2.776484,0,0),
(58257,5,-1008.494141,2035.804932,66.939621,0,0,0,0,0,0,0,0,0,3.004249,0,0),
(58257,6,-1019.053467,2035.347778,67.212395,0,0,0,0,0,0,0,0,0,2.995105,0,0),
(58257,7,-1026.293579,2037.923462,66.986382,0,0,0,0,0,0,0,0,0,2.511642,0,0),
(58257,8,-1031.452515,2045.002930,67.205719,0,0,0,0,0,0,0,0,0,1.843268,0,0),
(58257,9,-1031.799316,2050.980713,67.372971,0,0,0,0,0,0,0,0,0,1.295846,0,0),
(58257,10,-1029.178223,2060.436523,67.073296,0,0,0,0,0,0,0,0,0,1.801642,0,0),
(58257,11,-1035.137329,2070.828369,66.457756,0,0,0,0,0,0,0,0,0,2.345923,0,0),
(58257,12,-1046.053467,2081.998779,64.143639,0,0,0,0,0,0,0,0,0,2.298799,0,0),
(58257,13,-1057.359741,2102.013672,58.757362,0,0,0,0,0,0,0,0,0,1.721531,0,0),
(58257,14,-1058.044434,2129.592285,48.813656,5000,0,0,0,0,0,0,0,0,1.493766,0,0),
(58257,15,-1057.715576,2110.082764,56.303387,0,0,0,0,0,0,0,0,0,5.071252,0,0),
(58257,16,-1052.969604,2091.249268,61.721436,0,0,0,0,0,0,0,0,0,5.271216,0,0),
(58257,17,-1038.316528,2072.456787,66.096436,0,0,0,0,0,0,0,0,0,5.392948,0,0),
(58257,18,-1027.762573,2059.277832,67.110367,0,0,0,0,0,0,0,0,0,4.392350,0,0),
(58257,19,-1031.241089,2051.670166,67.273415,0,0,0,0,0,0,0,0,0,4.546763,0,0),
(58257,20,-1030.166992,2044.373901,67.058655,0,0,0,0,0,0,0,0,0,5.164866,0,0),
(58257,21,-1024.427368,2037.198730,67.017387,0,0,0,0,0,0,0,0,0,5.981672,0,0),
(58257,22,-1009.709167,2037.914063,66.942307,0,0,0,0,0,0,0,0,0,5.536349,0,0),
(58257,23,-1001.397766,2026.911743,66.940887,0,0,0,0,0,0,0,0,0,5.354928,0,0),
(58257,24,-997.202637,2019.573120,66.940887,0,0,0,0,0,0,0,0,0,4.738392,0,0),
(58257,25,-998.892090,2012.330078,66.940887,0,0,0,0,0,0,0,0,0,4.030749,0,0),
(58257,26,-1009.969238,1993.768311,66.943695,0,0,0,0,0,0,0,0,0,4.176834,0,0),
(58257,27,-1006.721375,1997.570435,66.940620,0,0,0,0,0,0,0,0,0,0.886014,0,0);
-- Worg Master Kruush 
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 69634;
DELETE FROM creature_movement WHERE id = 69634;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(69634,1,-1061.400635,1990.542725,67.737541,5000,0,0,0,0,0,0,0,0,4.237452,0,0),
(69634,2,-1050.054932,2010.758179,66.944176,5000,0,0,0,0,0,0,0,0,1.060518,0,0);
-- Eye of Grillok #1
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 69630;
DELETE FROM creature_movement WHERE id = 69630;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(69630,1,-1130.955200,1977.056763,73.517754,0,0,0,0,0,0,0,0,0,3.690380,0,0),
(69630,2,-1135.352295,1970.435425,73.571503,0,0,0,0,0,0,0,0,0,4.159264,0,0),
(69630,3,-1143.914917,1956.053223,80.157318,0,0,0,0,0,0,0,0,0,4.218168,0,0),
(69630,4,-1151.395874,1943.341919,81.419655,0,0,0,0,0,0,0,0,0,4.727108,0,0),
(69630,5,-1151.147217,1940.227661,81.404175,0,0,0,0,0,0,0,0,0,5.480297,0,0),
(69630,6,-1144.936646,1935.170288,81.403214,0,0,0,0,0,0,0,0,0,5.374263,0,0),
(69630,7,-1141.158447,1928.720337,81.403778,0,0,0,0,0,0,0,0,0,5.082097,0,0),
(69630,8,-1136.030151,1915.822632,81.373436,0,0,0,0,0,0,0,0,0,4.821351,0,0),
(69630,9,-1136.115234,1908.329224,81.391357,0,0,0,0,0,0,0,0,0,4.508764,0,0),
(69630,10,-1138.449707,1901.605225,81.354774,0,0,0,0,0,0,0,0,0,3.171234,0,0),
(69630,11,-1145.656372,1903.002686,81.380653,0,0,0,0,0,0,0,0,0,2.703137,0,0),
(69630,12,-1159.015259,1911.413086,81.547356,0,0,0,0,0,0,0,0,0,2.570404,0,0),
(69630,13,-1142.669312,1901.459106,81.368828,0,0,0,0,0,0,0,0,0,6.246849,0,0),
(69630,14,-1139.454590,1902.470459,81.361267,0,0,0,0,0,0,0,0,0,0.877864,0,0),
(69630,15,-1136.081665,1909.392822,81.392426,0,0,0,0,0,0,0,0,0,1.611426,0,0),
(69630,16,-1140.080444,1926.670776,81.388000,0,0,0,0,0,0,0,0,0,2.081095,0,0),
(69630,17,-1144.762695,1935.161621,81.402863,0,0,0,0,0,0,0,0,0,2.615166,0,0),
(69630,18,-1151.000610,1939.814819,81.404007,0,0,0,0,0,0,0,0,0,1.996273,0,0),
(69630,19,-1150.762939,1944.484619,81.414787,0,0,0,0,0,0,0,0,0,1.254071,0,0),
(69630,20,-1146.296509,1952.457886,81.334106,0,0,0,0,0,0,0,0,0,1.058507,0,0),
(69630,21,-1141.138794,1961.069458,78.446350,0,0,0,0,0,0,0,0,0,1.011383,0,0),
(69630,22,-1135.096069,1971.034424,73.544441,0,0,0,0,0,0,0,0,0,1.466129,0,0),
(69630,23,-1135.724365,1978.001953,73.544441,0,0,0,0,0,0,0,0,0,2.116386,0,0),
(69630,24,-1142.404663,1985.187500,73.365456,0,0,0,0,0,0,0,0,0,2.739139,0,0),
(69630,25,-1150.054443,1986.321655,73.725090,0,0,0,0,0,0,0,0,0,3.436574,0,0),
(69630,26,-1156.955566,1982.023071,73.811409,0,0,0,0,0,0,0,0,0,4.046043,0,0),
(69630,27,-1166.109863,1975.073730,74.142761,0,0,0,0,0,0,0,0,0,3.452281,0,0),
(69630,28,-1173.553345,1975.426636,73.859131,0,0,0,0,0,0,0,0,0,2.762297,0,0),
(69630,29,-1181.089111,1980.193237,73.808128,0,0,0,0,0,0,0,0,0,2.093923,0,0),
(69630,30,-1184.352173,1990.115601,74.563431,0,0,0,0,0,0,0,0,0,1.521367,0,0),
(69630,31,-1181.587280,1999.559814,74.045036,0,0,0,0,0,0,0,0,0,0.796445,0,0),
(69630,32,-1173.961792,2005.097656,73.550964,0,0,0,0,0,0,0,0,0,6.274597,0,0),
(69630,33,-1156.363770,2001.697144,71.325363,0,0,0,0,0,0,0,0,0,5.743670,0,0),
(69630,34,-1127.164551,1987.016602,71.558182,0,0,0,0,0,0,0,0,0,5.460930,0,0),
(69630,35,-1116.562256,1965.419434,73.638351,0,0,0,0,0,0,0,0,0,4.633123,0,0),
(69630,36,-1117.544922,1953.454956,74.279579,0,0,0,0,0,0,0,0,0,5.243375,0,0),
(69630,37,-1110.632813,1945.695923,74.082886,0,0,0,0,0,0,0,0,0,6.043692,0,0),
(69630,38,-1103.691895,1945.068726,75.230789,0,0,0,0,0,0,0,0,0,0.453449,0,0),
(69630,39,-1098.103394,1949.223877,75.905907,0,0,0,0,0,0,0,0,0,1.490175,0,0),
(69630,40,-1097.169312,1957.515137,74.734596,0,0,0,0,0,0,0,0,0,1.913504,0,0),
(69630,41,-1107.352051,1971.749756,73.424332,0,0,0,0,0,0,0,0,0,2.679268,0,0),
(69630,42,-1119.677490,1976.493286,72.843056,0,0,0,0,0,0,0,0,0,3.148141,0,0);
-- Eye of Grillok #2
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 69631;
DELETE FROM creature_movement WHERE id = 69631;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(69631,1,-975.790344,2044.955688,67.408485,0,0,0,0,0,0,0,0,0,5.783136,0,0),
(69631,2,-948.242004,2029.139404,67.676506,0,0,0,0,0,0,0,0,0,5.787061,0,0),
(69631,3,-936.145813,2022.558105,65.084648,0,0,0,0,0,0,0,0,0,0.070144,0,0),
(69631,4,-922.183533,2023.544556,60.818218,0,0,0,0,0,0,0,0,0,0.586146,0,0),
(69631,5,-910.117615,2034.757690,53.280693,0,0,0,0,0,0,0,0,0,0.807629,0,0),
(69631,6,-902.775452,2046.881958,45.763729,0,0,0,0,0,0,0,0,0,1.342485,0,0),
(69631,7,-897.786743,2064.385254,36.044083,0,0,0,0,0,0,0,0,0,1.595383,0,0),
(69631,8,-901.265686,2084.680176,27.632118,0,0,0,0,0,0,0,0,0,1.820792,0,0),
(69631,9,-923.188904,2118.999512,21.087282,0,0,0,0,0,0,0,0,0,2.178149,0,0),
(69631,10,-937.791992,2141.869629,17.333218,0,0,0,0,0,0,0,0,0,2.044631,0,0),
(69631,11,-948.638123,2161.392822,16.403925,0,0,0,0,0,0,0,0,0,2.314023,0,0),
(69631,12,-956.171143,2173.607178,15.541905,0,0,0,0,0,0,0,0,0,2.374499,0,0),
(69631,13,-974.084717,2186.668457,15.085345,0,0,0,0,0,0,0,0,0,2.962762,0,0),
(69631,14,-994.165588,2187.265625,14.155642,0,0,0,0,0,0,0,0,0,3.136334,0,0),
(69631,15,-1018.802124,2181.951660,17.933630,0,0,0,0,0,0,0,0,0,3.548669,0,0),
(69631,16,-1036.020752,2170.746338,23.935820,0,0,0,0,0,0,0,0,0,4.078813,0,0),
(69631,17,-1049.238159,2152.982422,34.348988,0,0,0,0,0,0,0,0,0,4.538269,0,0),
(69631,18,-1057.010376,2134.835449,46.034103,0,0,0,0,0,0,0,0,0,4.501112,0,0),
(69631,19,-1058.724365,2121.959717,52.155811,0,0,0,0,0,0,0,0,0,4.853753,0,0),
(69631,20,-1054.448975,2111.354248,55.722900,0,0,0,0,0,0,0,0,0,5.430232,0,0),
(69631,21,-1041.797241,2099.953369,60.681328,0,0,0,0,0,0,0,0,0,5.577099,0,0),
(69631,22,-1022.156433,2080.880859,67.726036,0,0,0,0,0,0,0,0,0,5.514267,0,0),
(69631,23,-1002.301636,2063.610352,67.627098,0,0,0,0,0,0,0,0,0,5.608513,0,0);
-- Eye of Grillok #3
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 69633;
DELETE FROM creature_movement WHERE id = 69633;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(69633,1,-930.894531,1990.702148,66.545105,0,0,0,0,0,0,0,0,0,3.747118,0,0),
(69633,2,-941.685364,1985.107178,67.674561,0,0,0,0,0,0,0,0,0,2.993133,0,0),
(69633,3,-950.815552,1988.375977,68.421768,0,0,0,0,0,0,0,0,0,2.434715,0,0),
(69633,4,-956.079712,1995.807251,68.643875,0,0,0,0,0,0,0,0,0,1.637535,0,0),
(69633,5,-959.472900,2021.279663,66.942970,0,0,0,0,0,0,0,0,0,2.135478,0,0),
(69633,6,-969.235168,2038.831177,66.939651,0,0,0,0,0,0,0,0,0,2.473985,0,0),
(69633,7,-990.895447,2056.723145,66.949562,0,0,0,0,0,0,0,0,0,2.486551,0,0),
(69633,8,-1016.763000,2074.811523,68.164108,0,0,0,0,0,0,0,0,0,2.506186,0,0),
(69633,9,-1040.611572,2089.956787,63.261433,0,0,0,0,0,0,0,0,0,2.639704,0,0),
(69633,10,-1065.191162,2099.835205,59.835762,0,0,0,0,0,0,0,0,0,2.808564,0,0),
(69633,11,-1089.065186,2107.406982,63.428860,0,0,0,0,0,0,0,0,0,2.824272,0,0),
(69633,12,-1108.930054,2118.346924,67.019585,0,0,0,0,0,0,0,0,0,2.557237,0,0),
(69633,13,-1122.924561,2127.223877,66.961624,0,0,0,0,0,0,0,0,0,2.769295,0,0),
(69633,14,-1132.251587,2128.703857,67.060234,0,0,0,0,0,0,0,0,0,2.957791,0,0),
(69633,15,-1116.964722,2124.831055,67.010315,0,0,0,0,0,0,0,0,0,6.083674,0,0),
(69633,16,-1097.335571,2117.052979,65.712105,0,0,0,0,0,0,0,0,0,5.840204,0,0),
(69633,17,-1073.994629,2105.888428,60.955971,0,0,0,0,0,0,0,0,0,5.863766,0,0),
(69633,18,-1039.381348,2091.450928,63.201607,0,0,0,0,0,0,0,0,0,5.891257,0,0),
(69633,19,-1024.459229,2081.606445,67.311432,0,0,0,0,0,0,0,0,0,5.532326,0,0),
(69633,20,-1003.197632,2062.401611,67.528282,0,0,0,0,0,0,0,0,0,5.742814,0,0),
(69633,21,-977.357239,2043.141724,67.555214,0,0,0,0,0,0,0,0,0,5.593591,0,0),
(69633,22,-960.437866,2027.433105,67.035728,0,0,0,0,0,0,0,0,0,4.961352,0,0),
(69633,23,-956.708801,2000.347656,68.564789,0,0,0,0,0,0,0,0,0,5.162415,0,0),
(69633,24,-953.478333,1991.683716,68.546791,0,0,0,0,0,0,0,0,0,5.401172,0,0),
(69633,25,-946.047791,1985.082764,68.179298,0,0,0,0,0,0,0,0,0,5.907743,0,0),
(69633,26,-941.726868,1985.069458,67.679527,0,0,0,0,0,0,0,0,0,0.501846,0,0),
(69633,27,-931.534302,1992.862793,66.433533,0,0,0,0,0,0,0,0,0,4.893792,0,0),
(69633,28,-920.878662,1953.941650,67.464890,0,0,0,0,0,0,0,0,0,5.035948,0,0),
(69633,29,-922.406921,1963.725830,67.945747,0,0,0,0,0,0,0,0,0,1.745129,0,0);
-- Eye of Grillok #4
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 69632;
DELETE FROM creature_movement WHERE id = 69632;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(69632,1,-1039.396362,2090.708008,63.336811,0,0,0,0,0,0,0,0,0,3.062276,0,0),
(69632,2,-1063.881104,2091.930176,61.581238,0,0,0,0,0,0,0,0,0,3.679600,0,0),
(69632,3,-1087.563354,2080.033203,65.558640,0,0,0,0,0,0,0,0,0,3.727509,0,0),
(69632,4,-1100.734741,2068.060303,67.683464,0,0,0,0,0,0,0,0,0,3.908936,0,0),
(69632,5,-1072.305298,2083.006592,63.772236,0,0,0,0,0,0,0,0,0,0.243483,0,0),
(69632,6,-1049.364624,2088.186279,62.637157,0,0,0,0,0,0,0,0,0,0.146879,0,0),
(69632,7,-1037.281250,2089.464844,63.944912,0,0,0,0,0,0,0,0,0,6.004379,0,0),
(69632,8,-1023.507629,2081.950195,67.500145,0,0,0,0,0,0,0,0,0,5.597548,0,0),
(69632,9,-998.714905,2055.166504,67.140160,0,0,0,0,0,0,0,0,0,4.772881,0,0),
(69632,10,-997.205078,2028.710327,67.157890,0,0,0,0,0,0,0,0,0,4.772882,0,0),
(69632,11,-998.396973,2005.806519,66.939583,0,0,0,0,0,0,0,0,0,4.920537,0,0),
(69632,12,-992.760620,1959.010742,69.775253,0,0,0,0,0,0,0,0,0,5.720856,0,0),
(69632,13,-958.248840,1940.995728,67.954483,0,0,0,0,0,0,0,0,0,5.805674,0,0),
(69632,14,-990.840576,1949.398682,70.632912,0,0,0,0,0,0,0,0,0,1.836274,0,0),
(69632,15,-993.278748,1968.019287,68.950356,0,0,0,0,0,0,0,0,0,1.684592,0,0),
(69632,16,-1000.527405,2008.502808,66.939819,0,0,0,0,0,0,0,0,0,1.415986,0,0),
(69632,17,-998.168091,2040.536621,67.626595,0,0,0,0,0,0,0,0,0,1.737214,0,0),
(69632,18,-1002.555969,2056.830566,67.420433,0,0,0,0,0,0,0,0,0,2.365533,0,0),
(69632,19,-1018.969116,2077.498779,68.046677,0,0,0,0,0,0,0,0,0,2.407159,0,0);
-- Bleeding Hollow Grunt #4
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 58254;
DELETE FROM creature_movement WHERE id = 58254;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(58254,1,-790.032471,1962.926514,45.344662,0,0,0,0,0,0,0,0,0,4.266652,0,0),
(58254,2,-809.197754,1923.560303,51.834373,0,0,0,0,0,0,0,0,0,4.119786,0,0),
(58254,3,-827.004089,1896.668823,59.706078,0,0,0,0,0,0,0,0,0,4.064810,0,0),
(58254,4,-849.343628,1879.823730,67.125351,0,0,0,0,0,0,0,0,0,3.460053,0,0),
(58254,5,-825.689209,1900.386475,58.711632,0,0,0,0,0,0,0,0,0,1.146270,0,0),
(58254,6,-808.321594,1925.146851,51.420067,0,0,0,0,0,0,0,0,0,0.970341,0,0),
(58254,7,-791.544250,1962.344238,45.315014,0,0,0,0,0,0,0,0,0,1.166690,0,0),
(58254,8,-781.956665,1990.765991,40.240845,0,0,0,0,0,0,0,0,0,1.284500,0,0),
(58254,9,-773.231079,2018.085938,35.439224,0,0,0,0,0,0,0,0,0,1.268792,0,0),
(58254,10,-768.838684,2042.852051,30.903221,0,0,0,0,0,0,0,0,0,1.645783,0,0),
(58254,11,-772.550781,2061.688965,27.775206,0,0,0,0,0,0,0,0,0,2.043980,0,0),
(58254,12,-787.499084,2083.497559,23.672663,0,0,0,0,0,0,0,0,0,2.709999,0,0),
(58254,13,-823.744934,2089.205566,20.918173,0,0,0,0,0,0,0,0,0,3.000596,0,0),
(58254,14,-856.988098,2093.570313,22.210340,0,0,0,0,0,0,0,0,0,3.012377,0,0),
(58254,15,-886.279663,2099.456543,22.935305,0,0,0,0,0,0,0,0,0,2.723350,0,0),
(58254,16,-904.994751,2111.077148,21.143303,0,0,0,0,0,0,0,0,0,2.398981,0,0),
(58254,17,-922.803467,2128.003906,19.321318,0,0,0,0,0,0,0,0,0,2.632244,0,0),
(58254,18,-942.019836,2150.803467,16.550884,0,0,0,0,0,0,0,0,0,2.188493,0,0),
(58254,19,-959.779968,2164.993164,15.898741,0,0,0,0,0,0,0,0,0,2.565484,0,0),
(58254,20,-940.572021,2143.932861,17.655590,0,0,0,0,0,0,0,0,0,5.451822,0,0),
(58254,21,-918.176575,2118.689209,20.540924,0,0,0,0,0,0,0,0,0,5.432188,0,0),
(58254,22,-899.605835,2102.689209,22.878145,0,0,0,0,0,0,0,0,0,5.758123,0,0),
(58254,23,-874.996887,2094.672852,23.113935,0,0,0,0,0,0,0,0,0,6.005520,0,0),
(58254,24,-850.268921,2093.940186,21.441620,0,0,0,0,0,0,0,0,0,0.012928,0,0),
(58254,25,-816.175781,2094.166992,20.135012,0,0,0,0,0,0,0,0,0,6.025153,0,0),
(58254,26,-793.212341,2087.497559,22.670568,0,0,0,0,0,0,0,0,0,5.798959,0,0),
(58254,27,-781.009766,2077.786621,24.917582,0,0,0,0,0,0,0,0,0,5.447103,0,0),
(58254,28,-769.776367,2061.455566,28.088127,0,0,0,0,0,0,0,0,0,5.020636,0,0),
(58254,29,-765.402771,2038.763916,31.870306,0,0,0,0,0,0,0,0,0,4.634221,0,0),
(58254,30,-769.031128,2017.480835,36.003529,0,0,0,0,0,0,0,0,0,4.345197,0,0),
(58254,31,-780.603394,1989.925903,40.515251,0,0,0,0,0,0,0,0,0,4.337343,0,0);
-- Bleeding Hollow Grunt #5
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 58236;
DELETE FROM creature_movement WHERE id = 58236;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(58236,1,-1024.859131,2199.926514,16.050743,0,0,0,0,0,0,0,0,0,2.861966,0,0),
(58236,2,-1043.709839,2205.847656,18.273947,0,0,0,0,0,0,0,0,0,2.814842,0,0),
(58236,3,-1068.301514,2213.877686,22.796705,0,0,0,0,0,0,0,0,0,2.861966,0,0),
(58236,4,-1092.911865,2219.375000,27.926315,0,0,0,0,0,0,0,0,0,3.015118,0,0),
(58236,5,-1117.160278,2221.180664,33.039249,0,0,0,0,0,0,0,0,0,3.168271,0,0),
(58236,6,-1134.753906,2216.388916,37.468540,0,0,0,0,0,0,0,0,0,3.665428,0,0),
(58236,7,-1149.060303,2203.347168,42.965729,0,0,0,0,0,0,0,0,0,4.243480,0,0),
(58236,8,-1155.481201,2189.720703,48.246181,0,0,0,0,0,0,0,0,0,4.472816,0,0),
(58236,9,-1158.350098,2175.262695,53.318989,0,0,0,0,0,0,0,0,0,4.718645,0,0),
(58236,10,-1152.853149,2194.926758,46.002682,0,0,0,0,0,0,0,0,0,1.142726,0,0),
(58236,11,-1145.526245,2212.204346,40.607738,0,0,0,0,0,0,0,0,0,0.858412,0,0),
(58236,12,-1128.846069,2223.858398,35.313477,0,0,0,0,0,0,0,0,0,0.477493,0,0),
(58236,13,-1109.886108,2228.368164,30.780582,0,0,0,0,0,0,0,0,0,6.213256,0,0),
(58236,14,-1083.278076,2225.963379,25.749516,0,0,0,0,0,0,0,0,0,6.167704,0,0),
(58236,15,-1061.527222,2221.215332,21.200569,0,0,0,0,0,0,0,0,0,5.994919,0,0),
(58236,16,-1035.280884,2215.967529,16.606760,0,0,0,0,0,0,0,0,0,5.768717,0,0),
(58236,17,-1000.940125,2193.198486,13.846385,0,0,0,0,0,0,0,0,0,5.665050,0,0),
(58236,18,-976.253113,2185.775879,15.273767,0,0,0,0,0,0,0,0,0,5.900667,0,0),
(58236,19,-955.032837,2175.497803,14.907238,0,0,0,0,0,0,0,0,0,5.818202,0,0),
(58236,20,-934.932190,2161.587402,15.037132,0,0,0,0,0,0,0,0,0,5.357962,0,0),
(58236,21,-910.531006,2137.361816,16.346848,0,0,0,0,0,0,0,0,0,5.648554,0,0),
(58236,22,-932.734802,2160.219971,14.882269,0,0,0,0,0,0,0,0,0,2.568222,0,0),
(58236,23,-955.264709,2176.375000,14.750407,0,0,0,0,0,0,0,0,0,2.775567,0,0),
(58236,24,-980.067322,2185.155273,15.183619,0,0,0,0,0,0,0,0,0,2.791275,0,0),
(58236,25,-1001.411621,2192.606201,13.952467,0,0,0,0,0,0,0,0,0,2.814837,0,0);
-- Bleeding Hollow Grunt #6
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 58237;
DELETE FROM creature_movement WHERE id = 58237;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(58237,1,-974.290955,2186.155029,15.125253,0,0,0,0,0,0,0,0,0,6.027122,0,0),
(58237,2,-951.808167,2177.397217,14.106166,0,0,0,0,0,0,0,0,0,5.656416,0,0),
(58237,3,-929.571289,2164.153076,13.464408,0,0,0,0,0,0,0,0,0,5.491485,0,0),
(58237,4,-902.517090,2138.786865,16.076986,0,0,0,0,0,0,0,0,0,5.548036,0,0),
(58237,5,-930.447998,2172.636475,12.309905,0,0,0,0,0,0,0,0,0,2.288632,0,0),
(58237,6,-944.377380,2186.651367,11.893930,0,0,0,0,0,0,0,0,0,3.231111,0,0),
(58237,7,-983.654602,2187.450439,14.849688,0,0,0,0,0,0,0,0,0,3.144717,0,0),
(58237,8,-1007.330139,2189.930420,14.975175,0,0,0,0,0,0,0,0,0,3.034760,0,0),
(58237,9,-1030.587646,2194.994629,17.467888,0,0,0,0,0,0,0,0,0,2.932658,0,0),
(58237,10,-1057.931152,2201.248779,21.019207,0,0,0,0,0,0,0,0,0,2.909096,0,0),
(58237,11,-1083.973389,2208.651123,26.614111,0,0,0,0,0,0,0,0,0,2.858046,0,0),
(58237,12,-1107.716797,2215.392822,31.335537,0,0,0,0,0,0,0,0,0,3.060678,0,0),
(58237,13,-1131.010742,2214.459229,36.860252,0,0,0,0,0,0,0,0,0,3.587681,0,0),
(58237,14,-1142.891235,2204.847412,41.072144,0,0,0,0,0,0,0,0,0,4.147670,0,0),
(58237,15,-1152.114380,2188.745361,47.563145,0,0,0,0,0,0,0,0,0,4.521519,0,0),
(58237,16,-1155.218994,2172.216553,53.615444,0,0,0,0,0,0,0,0,0,4.821541,0,0),
(58237,17,-1153.807739,2160.074219,58.667461,0,0,0,0,0,0,0,0,0,4.860810,0,0),
(58237,18,-1154.314331,2183.874756,49.637375,0,0,0,0,0,0,0,0,0,1.597480,0,0),
(58237,19,-1150.311523,2200.556396,43.869713,0,0,0,0,0,0,0,0,0,1.251905,0,0),
(58237,20,-1139.975464,2212.489990,39.175163,0,0,0,0,0,0,0,0,0,0.659715,0,0),
(58237,21,-1126.375854,2220.283936,35.157448,0,0,0,0,0,0,0,0,0,0.135854,0,0),
(58237,22,-1101.180542,2221.347168,29.591373,0,0,0,0,0,0,0,0,0,6.064825,0,0),
(58237,23,-1072.664917,2217.092529,23.598436,0,0,0,0,0,0,0,0,0,6.137083,0,0),
(58237,24,-1045.890747,2211.764648,18.525686,0,0,0,0,0,0,0,0,0,6.086033,0,0),
(58237,25,-1023.868958,2206.671631,15.176994,0,0,0,0,0,0,0,0,0,5.789939,0,0),
(58237,26,-1003.496948,2198.920410,13.501784,0,0,0,0,0,0,0,0,0,5.706690,0,0),
(58237,27,-983.176147,2187.154297,14.912819,0,0,0,0,0,0,0,0,0,5.730252,0,0);


-- ## --  Nagrand -- ## --  


-- Warmaul Hill (Cave)
-- Warmaul Warlock #1
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 63747;
DELETE FROM creature_movement WHERE id = 63747;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(63747,1,-615.581787,8802.628906,202.345459,0,0,0,0,0,0,0,0,0,0.509924,0,0),
(63747,2,-600.825256,8812.809570,202.414581,0,0,0,0,0,0,0,0,0,0.905765,0,0),
(63747,3,-585.726379,8836.047852,208.710876,0,0,0,0,0,0,0,0,0,1.109969,0,0),
(63747,4,-578.854065,8854.451172,210.429611,0,0,0,0,0,0,0,0,0,1.022790,0,0),
(63747,5,-571.065063,8864.916016,210.811462,0,0,0,0,0,0,0,0,0,0.315931,0,0),
(63747,6,-545.818298,8870.407227,209.292648,0,0,0,0,0,0,0,0,0,0.011982,0,0),
(63747,7,-527.514526,8870.347656,208.791000,0,0,0,0,0,0,0,0,0,0.325356,0,0),
(63747,8,-507.784210,8874.017578,206.673843,0,0,0,0,0,0,0,0,0,6.012471,0,0),
(63747,9,-493.743347,8870.433594,205.310776,0,0,0,0,0,0,0,0,0,5.717165,0,0),
(63747,10,-479.994354,8861.848633,202.677017,0,0,0,0,0,0,0,0,0,5.371591,0,0),
(63747,11,-476.972076,8848.212891,200.471268,0,0,0,0,0,0,0,0,0,5.329182,0,0),
(63747,12,-470.751923,8840.757813,200.245819,0,0,0,0,0,0,0,0,0,5.016592,0,0),
(63747,13,-467.603180,8829.301758,200.161453,0,0,0,0,0,0,0,0,0,4.806108,0,0),
(63747,14,-466.820801,8824.712891,199.484467,0,0,0,0,0,0,0,0,0,5.263996,0,0),
(63747,15,-460.125153,8811.440430,199.140945,0,0,0,0,0,0,0,0,0,5.124196,0,0),
(63747,16,-469.725891,8833.606445,199.836975,0,0,0,0,0,0,0,0,0,1.610325,0,0),
(63747,17,-469.839539,8839.959961,200.239273,0,0,0,0,0,0,0,0,0,2.115336,0,0),
(63747,18,-472.816406,8843.811523,200.321869,0,0,0,0,0,0,0,0,0,2.634485,0,0),
(63747,19,-476.791779,8847.058594,200.327393,0,0,0,0,0,0,0,0,0,1.848301,0,0),
(63747,20,-479.722015,8858.825195,202.150787,0,0,0,0,0,0,0,0,0,2.349385,0,0),
(63747,21,-488.953186,8868.023438,204.763580,0,0,0,0,0,0,0,0,0,2.804131,0,0),
(63747,22,-508.365204,8874.719727,206.781693,0,0,0,0,0,0,0,0,0,3.496853,0,0),
(63747,23,-531.308105,8871.211914,209.028320,0,0,0,0,0,0,0,0,0,3.298147,0,0),
(63747,24,-553.053650,8869.244141,210.236313,0,0,0,0,0,0,0,0,0,3.831431,0,0),
(63747,25,-578.369202,8856.199219,210.500824,0,0,0,0,0,0,0,0,0,4.204495,0,0),
(63747,26,-590.261658,8828.422852,206.820694,0,0,0,0,0,0,0,0,0,4.135377,0,0),
(63747,27,-600.373840,8811.606445,202.436203,0,0,0,0,0,0,0,0,0,3.869915,0,0),
(63747,28,-617.177124,8802.176758,202.332123,0,0,0,0,0,0,0,0,0,3.588743,0,0),
(63747,29,-645.398193,8792.637695,202.291031,0,0,0,0,0,0,0,0,0,3.435590,0,0),
(63747,30,-664.068787,8774.395508,199.322128,0,0,0,0,0,0,0,0,0,3.836146,0,0),
(63747,31,-670.379639,8770.128906,196.108063,0,0,0,0,0,0,0,0,0,5.111634,0,0),
(63747,32,-667.586426,8760.208008,190.788025,0,0,0,0,0,0,0,0,0,4.611331,0,0),
(63747,33,-674.619080,8749.049805,184.612534,0,0,0,0,0,0,0,0,0,5.002460,0,0),
(63747,34,-670.746399,8738.015625,183.901230,0,0,0,0,0,0,0,0,0,6.008555,0,0),
(63747,35,-657.281311,8735.559570,185.699326,0,0,0,0,0,0,0,0,0,5.505899,0,0),
(63747,36,-643.427734,8720.479492,187.312042,0,0,0,0,0,0,0,0,0,4.145598,0,0),
(63747,37,-643.590210,8710.242188,188.658005,0,0,0,0,0,0,0,0,0,3.495290,0,0),
(63747,38,-655.155945,8705.457031,183.061661,0,0,0,0,0,0,0,0,0,2.815135,0,0),
(63747,39,-671.749146,8707.959961,173.990662,0,0,0,0,0,0,0,0,0,3.243178,0,0),
(63747,40,-689.984619,8704.096680,166.154297,0,0,0,0,0,0,0,0,0,3.847149,0,0),
(63747,41,-709.475342,8690.007813,162.421310,0,0,0,0,0,0,0,0,0,3.808665,0,0),
(63747,42,-731.991882,8683.267578,157.838669,0,0,0,0,0,0,0,0,0,3.139505,0,0),
(63747,43,-744.754639,8680.236328,158.933228,0,0,0,0,0,0,0,0,0,2.758587,0,0),
(63747,44,-761.900940,8684.188477,160.215332,0,0,0,0,0,0,0,0,0,3.153642,0,0),
(63747,45,-781.680481,8684.991211,159.456161,0,0,0,0,0,0,0,0,0,3.745833,0,0),
(63747,46,-782.305481,8677.609375,160.877731,5000,0,0,0,0,0,0,0,0,4.621552,0,0),
(63747,47,-777.186646,8685.665039,159.737885,0,0,0,0,0,0,0,0,0,6.095746,0,0),
(63747,48,-746.014160,8684.477539,159.437180,0,0,0,0,0,0,0,0,0,6.188425,0,0),
(63747,49,-731.644897,8683.111328,157.818008,0,0,0,0,0,0,0,0,0,0.313646,0,0),
(63747,50,-710.329651,8689.276367,162.189987,0,0,0,0,0,0,0,0,0,0.656080,0,0),
(63747,51,-695.070618,8700.360352,164.616028,0,0,0,0,0,0,0,0,0,0.414962,0,0),
(63747,52,-679.380737,8709.688477,170.645782,0,0,0,0,0,0,0,0,0,0.261024,0,0),
(63747,53,-653.700012,8704.459961,184.212753,0,0,0,0,0,0,0,0,0,0.068602,0,0),
(63747,54,-644.857483,8714.860352,187.227386,0,0,0,0,0,0,0,0,0,1.415560,0,0),
(63747,55,-648.754333,8730.410156,187.513565,0,0,0,0,0,0,0,0,0,2.630938,0,0),
(63747,56,-656.725708,8737.370117,186.295700,0,0,0,0,0,0,0,0,0,2.945882,0,0),
(63747,57,-669.383301,8738.741211,184.064697,0,0,0,0,0,0,0,0,0,2.608160,0,0),
(63747,58,-673.708557,8749.237305,184.806671,0,0,0,0,0,0,0,0,0,1.065900,0,0),
(63747,59,-668.139221,8755.954102,189.217880,0,0,0,0,0,0,0,0,0,1.435822,0,0),
(63747,60,-669.375549,8768.341797,194.909058,0,0,0,0,0,0,0,0,0,0.985788,0,0),
(63747,61,-664.329895,8773.554688,199.050430,0,0,0,0,0,0,0,0,0,0.700688,0,0),
(63747,62,-653.615845,8791.429688,200.933167,0,0,0,0,0,0,0,0,0,0.282855,0,0),
(63747,63,-640.215942,8795.769531,202.348572,0,0,0,0,0,0,0,0,0,0.307452,0,0);
-- Overseer Ripsaw - wps
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 75406;
DELETE FROM creature_movement WHERE id = 75406;
UPDATE creature_template SET MovementType= 2 WHERE entry = 21499; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 21499;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(21499,1,-3272.843506,2971.382568,133.970261,0,0,0,0,0,0,0,0,0,2.221634,0,0),
(21499,2,-3278.496582,2984.289551,136.129166,0,0,0,0,0,0,0,0,0,1.621590,0,0),
(21499,3,-3276.449707,2992.783691,138.053421,0,0,0,0,0,0,0,0,0,0.813414,0,0),
(21499,4,-3262.683838,3003.519043,138.648178,3000,0,0,0,0,0,0,0,0,0.536169,0,0),
(21499,5,-3280.270020,2984.839600,136.464142,0,0,0,0,0,0,0,0,0,4.854287,0,0),
(21499,6,-3277.697266,2973.099365,134.571899,0,0,0,0,0,0,0,0,0,5.490453,0,0),
(21499,7,-3255.085449,2960.492432,131.976868,0,0,0,0,0,0,0,0,0,5.957759,0,0),
(21499,8,-3237.694580,2951.947754,127.202316,0,0,0,0,0,0,0,0,0,5.137015,0,0),
(21499,9,-3228.066162,2925.123535,127.099556,0,0,0,0,0,0,0,0,0,4.489064,0,0),
(21499,10,-3238.741943,2908.368652,126.218292,0,0,0,0,0,0,0,0,0,3.795768,0,0),
(21499,11,-3252.437500,2900.958740,125.350372,0,0,0,0,0,0,0,0,0,2.927117,0,0),
(21499,12,-3260.733154,2903.152832,126.775841,3000,0,0,0,0,0,0,0,0,2.660867,0,0),
(21499,13,-3251.934570,2902.005371,125.441032,0,0,0,0,0,0,0,0,0,0.267758,0,0),
(21499,14,-3238.650635,2908.147461,126.179871,0,0,0,0,0,0,0,0,0,0.774340,0,0),
(21499,15,-3229.861572,2917.152344,127.228485,0,0,0,0,0,0,0,0,0,1.216584,0,0),
(21499,16,-3229.093994,2929.261963,126.887856,0,0,0,0,0,0,0,0,0,2.020832,0,0),
(21499,17,-3236.670898,2950.031006,126.819160,0,0,0,0,0,0,0,0,0,2.389183,0,0);
-- Terrormaster #1
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74634;
DELETE FROM creature_movement WHERE id = 74634;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74634,1,-3329.757813,3070.925781,154.743927,0,0,0,0,0,0,0,0,0,3.362849,0,0),
(74634,2,-3344.113037,3070.876709,164.211990,0,0,0,0,0,0,0,0,0,2.359111,0,0),
(74634,3,-3346.537842,3078.499756,163.818710,6000,2131401,0,0,0,0,0,0,0,1.676599,0,0),
(74634,4,-3344.984619,3073.876709,163.993866,0,0,0,0,0,0,0,0,0,5.655052,0,0),
(74634,5,-3327.645752,3068.910156,154.074799,0,0,0,0,0,0,0,0,0,5.992768,0,0),
(74634,6,-3318.893799,3064.214844,150.375198,0,0,0,0,0,0,0,0,0,5.105275,0,0),
(74634,7,-3315.575195,3057.529785,148.517715,6000,2131401,0,0,0,0,0,0,0,4.937851,0,0),
(74634,8,-3311.989258,3061.288086,147.020065,0,0,0,0,0,0,0,0,0,6.229822,0,0),
(74634,9,-3304.685547,3053.843262,145.344589,0,0,0,0,0,0,0,0,0,5.306202,0,0),
(74634,10,-3302.840332,3047.133545,146.032333,0,0,0,0,0,0,0,0,0,4.554580,0,0),
(74634,11,-3310.399658,3024.938232,158.551208,6000,2131401,0,0,0,0,0,0,0,4.238852,0,0),
(74634,12,-3305.737793,3022.960693,155.840332,0,0,0,0,0,0,0,0,0,5.680058,0,0),
(74634,13,-3290.165771,3009.220459,145.894882,0,0,0,0,0,0,0,0,0,5.393389,0,0),
(74634,14,-3282.511719,2996.426758,140.691452,0,0,0,0,0,0,0,0,0,4.725807,0,0),
(74634,15,-3283.229004,2985.925049,137.336945,0,0,0,0,0,0,0,0,0,4.124196,0,0),
(74634,16,-3285.952148,2980.388184,136.533859,6000,2131401,0,0,0,0,0,0,0,3.736001,0,0),
(74634,17,-3282.865967,2987.629883,137.825500,0,0,0,0,0,0,0,0,0,1.657890,0,0),
(74634,18,-3288.058105,3000.072510,144.134018,0,0,0,0,0,0,0,0,0,2.318410,0,0),
(74634,19,-3282.690186,3028.929199,142.702667,0,0,0,0,0,0,0,0,0,1.811830,0,0),
(74634,20,-3287.721680,3054.595947,141.166763,0,0,0,0,0,0,0,0,0,1.614081,0,0),
(74634,21,-3284.459717,3065.074463,140.890747,0,0,0,0,0,0,0,0,0,2.384883,0,0),
(74634,22,-3292.313721,3069.325928,142.174789,0,0,0,0,0,0,0,0,0,3.024712,0,0);
-- Terrormaster #2
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74622;
DELETE FROM creature_movement WHERE id = 74622;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74622,1,-3062.203125,2938.720215,91.592888,0,0,0,0,0,0,0,0,0,0.978424,0,0),
(74622,2,-3050.474854,2951.362061,92.405670,0,0,0,0,0,0,0,0,0,0.990205,0,0),
(74622,3,-3045.588867,2963.722412,92.465736,0,0,0,0,0,0,0,0,0,1.795394,0,0),
(74622,4,-3052.378418,2984.158691,92.367073,6000,2131401,0,0,0,0,0,0,0,0.387960,0,0),
(74622,5,-3076.864990,2984.227783,95.086235,0,0,0,0,0,0,0,0,0,3.749465,0,0),
(74622,6,-3082.461670,2972.360596,92.091080,0,0,0,0,0,0,0,0,0,4.508943,0,0),
(74622,7,-3083.167236,2954.880859,90.967857,6000,2131401,0,0,0,0,0,0,0,4.618897,0,0),
(74622,8,-3093.774658,2954.795898,91.075104,0,0,0,0,0,0,0,0,0,3.886122,0,0),
(74622,9,-3102.001953,2943.352295,90.906097,0,0,0,0,0,0,0,0,0,3.665419,0,0),
(74622,10,-3135.847168,2936.670410,93.543846,0,0,0,0,0,0,0,0,0,2.949923,0,0),
(74622,11,-3143.173340,2938.824463,94.686859,0,0,0,0,0,0,0,0,0,2.199867,0,0),
(74622,12,-3144.868896,2945.833252,97.264206,0,0,0,0,0,0,0,0,0,1.245608,0,0),
(74622,13,-3142.847900,2951.322998,99.935265,6000,2131401,0,0,0,0,0,0,0,1.194557,0,0),
(74622,14,-3156.553955,2937.103271,97.069611,0,0,0,0,0,0,0,0,0,4.236068,0,0),
(74622,15,-3164.269531,2914.989746,97.231606,0,0,0,0,0,0,0,0,0,4.805474,0,0),
(74622,16,-3165.469971,2898.994141,94.661240,0,0,0,0,0,0,0,0,0,4.877803,0,0),
(74622,17,-3151.906494,2884.905029,90.298508,6000,2131401,0,0,0,0,0,0,0,4.975973,0,0),
(74622,18,-3129.689453,2891.026123,88.845779,0,0,0,0,0,0,0,0,0,0.165246,0,0),
(74622,19,-3114.145508,2894.488037,89.653664,6000,2131401,0,0,0,0,0,0,0,5.254235,0,0),
(74622,20,-3091.557617,2897.551270,87.620613,0,0,0,0,0,0,0,0,0,0.458591,0,0),
(74622,21,-3076.135742,2911.249023,89.856445,0,0,0,0,0,0,0,0,0,0.949465,0,0),
(74622,22,-3067.267578,2926.395020,90.501869,0,0,0,0,0,0,0,0,0,1.295041,0,0);
-- Terrormaster #3
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74636;
DELETE FROM creature_movement WHERE id = 74636;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74636,1,-3144.013428,2826.223389,87.533920,0,0,0,0,0,0,0,0,0,0.809664,0,0),
(74636,2,-3131.590820,2834.472900,88.040001,0,0,0,0,0,0,0,0,0,0.862285,0,0),
(74636,3,-3118.202881,2854.458496,88.093536,6000,2131401,0,0,0,0,0,0,0,0.973368,0,0),
(74636,4,-3147.547607,2814.663086,88.066422,0,0,0,0,0,0,0,0,0,3.675138,0,0),
(74636,5,-3165.722168,2805.161865,85.995201,0,0,0,0,0,0,0,0,0,3.280822,0,0),
(74636,6,-3184.360596,2803.867432,90.714439,0,0,0,0,0,0,0,0,0,3.653100,0,0),
(74636,7,-3197.542236,2792.007813,97.730141,0,0,0,0,0,0,0,0,0,4.089782,0,0),
(74636,8,-3207.452148,2777.017334,101.634155,0,0,0,0,0,0,0,0,0,4.317546,0,0),
(74636,9,-3217.544434,2755.202637,103.727676,6000,2131401,0,0,0,0,0,0,0,4.331028,0,0),
(74636,10,-3230.493408,2765.470947,106.487785,0,0,0,0,0,0,0,0,0,2.219092,0,0),
(74636,11,-3239.161133,2778.305664,109.062874,0,0,0,0,0,0,0,0,0,2.293705,0,0),
(74636,12,-3244.885254,2784.778320,114.759155,0,0,0,0,0,0,0,0,0,2.320409,0,0),
(74636,13,-3254.557617,2789.591553,118.702293,6000,2131401,0,0,0,0,0,0,0,3.910841,0,0),
(74636,14,-3261.707275,2792.382080,120.581421,0,0,0,0,0,0,0,0,0,3.291946,0,0),
(74636,15,-3266.888184,2789.513184,122.247307,0,0,0,0,0,0,0,0,0,4.016870,0,0),
(74636,16,-3266.446289,2782.083008,125.511719,0,0,0,0,0,0,0,0,0,4.009803,0,0),
(74636,17,-3270.951904,2775.994141,130.832123,0,0,0,0,0,0,0,0,0,3.797747,0,0),
(74636,18,-3281.485596,2767.157471,133.131439,6000,2131401,0,0,0,0,0,0,0,3.657947,0,0),
(74636,19,-3269.691650,2779.241455,129.845367,0,0,0,0,0,0,0,0,0,1.113248,0,0),
(74636,20,-3264.957031,2788.327393,121.466026,0,0,0,0,0,0,0,0,0,1.203393,0,0),
(74636,21,-3253.327637,2804.870117,122.329269,0,0,0,0,0,0,0,0,0,0.571933,0,0),
(74636,22,-3238.121826,2814.250732,120.261360,0,0,0,0,0,0,0,0,0,0.524024,0,0),
(74636,23,-3227.785889,2818.469971,119.562149,6000,2131401,0,0,0,0,0,0,0,0.264842,0,0),
(74636,24,-3233.607666,2807.020020,117.168068,0,0,0,0,0,0,0,0,0,5.193204,0,0),
(74636,25,-3226.809082,2800.188232,110.400291,0,0,0,0,0,0,0,0,0,5.731197,0,0),
(74636,26,-3216.584961,2795.667969,101.421097,0,0,0,0,0,0,0,0,0,0.092819,0,0),
(74636,27,-3200.344727,2800.758301,95.689926,0,0,0,0,0,0,0,0,0,0.411275,0,0),
(74636,28,-3181.612549,2804.176758,89.712044,0,0,0,0,0,0,0,0,0,5.543069,0,0),
(74636,29,-3175.855469,2797.444336,85.114502,0,0,0,0,0,0,0,0,0,4.839379,0,0),
(74636,30,-3175.609131,2789.866699,82.983917,6000,2131401,0,0,0,0,0,0,0,4.470246,0,0),
(74636,31,-3160.937988,2804.302002,86.822121,0,0,0,0,0,0,0,0,0,0.601375,0,0),
(74636,32,-3144.978516,2816.179443,88.070740,0,0,0,0,0,0,0,0,0,0.874693,0,0);
-- Terrormaster #4 - correct spawn point + wps
UPDATE creature SET position_x = -3196, position_y = 2930.8, position_z = 123.67, orientation = 3.84 WHERE guid = 74637;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74637;
DELETE FROM creature_movement WHERE id = 74637;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74637,1,-3222.600830,2915.962891,127.170555,0,0,0,0,0,0,0,0,0,4.035916,0,0),
(74637,2,-3250.622314,2892.012451,122.101128,6000,2131401,0,0,0,0,0,0,0,5.059285,0,0),
(74637,3,-3224.201416,2915.458740,127.285095,6000,2131401,0,0,0,0,0,0,0,5.733152,0,0),
(74637,4,-3193.362793,2949.597656,123.667694,0,0,0,0,0,0,0,0,0,1.009767,0,0),
(74637,5,-3170.701416,2968.863525,123.324928,6000,2131401,0,0,0,0,0,0,0,6.050455,0,0),
(74637,6,-3161.214844,2983.006836,123.131256,0,0,0,0,0,0,0,0,0,1.881566,0,0),
(74637,7,-3170.968018,3011.725830,117.823761,0,0,0,0,0,0,0,0,0,2.502031,0,0),
(74637,8,-3183.952148,3017.812988,121.006805,0,0,0,0,0,0,0,0,0,2.808335,0,0),
(74637,9,-3189.267578,3023.014404,122.621803,0,0,0,0,0,0,0,0,0,2.011942,0,0),
(74637,10,-3189.666992,3027.659912,123.354446,6000,2131401,0,0,0,0,0,0,0,1.115017,0,0),
(74637,11,-3189.753906,3014.007568,123.190926,0,0,0,0,0,0,0,0,0,4.308440,0,0),
(74637,12,-3199.495117,3000.338379,127.514755,0,0,0,0,0,0,0,0,0,3.122644,0,0),
(74637,13,-3213.557129,3002.005127,132.152618,0,0,0,0,0,0,0,0,0,2.210796,0,0),
(74637,14,-3219.909668,3010.632568,135.698639,0,0,0,0,0,0,0,0,0,1.343467,0,0),
(74637,15,-3218.474854,3020.875488,137.528564,6000,2131401,0,0,0,0,0,0,0,6.183452,0,0),
(74637,16,-3215.749023,3035.348145,137.178757,0,0,0,0,0,0,0,0,0,1.736527,0,0),
(74637,17,-3219.731689,3049.982178,137.486435,6000,2131401,0,0,0,0,0,0,0,0.633043,0,0),
(74637,18,-3234.814697,3067.511475,137.132431,0,0,0,0,0,0,0,0,0,1.804071,0,0),
(74637,19,-3234.655762,3077.497070,134.469025,0,0,0,0,0,0,0,0,0,0.911072,0,0),
(74637,20,-3228.106689,3083.994385,131.733597,0,0,0,0,0,0,0,0,0,0.307886,0,0),
(74637,21,-3213.157715,3087.223633,127.534134,0,0,0,0,0,0,0,0,0,0.220708,0,0),
(74637,22,-3197.184082,3094.327393,128.870483,0,0,0,0,0,0,0,0,0,0.121748,0,0),
(74637,23,-3187.356445,3094.932373,129.825272,0,0,0,0,0,0,0,0,0,5.768761,0,0),
(74637,24,-3183.062256,3087.640137,132.336929,6000,2131401,0,0,0,0,0,0,0,4.748534,0,0),
(74637,25,-3194.023926,3091.458008,128.925629,0,0,0,0,0,0,0,0,0,3.798204,0,0),
(74637,26,-3200.843262,3082.405273,125.588135,0,0,0,0,0,0,0,0,0,4.571815,0,0),
(74637,27,-3202.311279,3070.892090,122.495529,0,0,0,0,0,0,0,0,0,5.007706,0,0),
(74637,28,-3176.484375,3039.641357,115.087349,0,0,0,0,0,0,0,0,0,5.222115,0,0),
(74637,29,-3173.190430,3028.743652,115.706947,0,0,0,0,0,0,0,0,0,4.734383,0,0),
(74637,30,-3167.860107,3000.140869,119.181664,0,0,0,0,0,0,0,0,0,5.064918,0,0),
(74637,31,-3162.693848,2985.858398,123.025230,0,0,0,0,0,0,0,0,0,4.640798,0,0),
(74637,32,-3167.539307,2973.269775,123.581284,0,0,0,0,0,0,0,0,0,3.799498,0,0),
(74637,33,-3186.521484,2957.967529,123.546555,0,0,0,0,0,0,0,0,0,4.108949,0,0),
(74637,34,-3192.256836,2946.680664,123.619225,0,0,0,0,0,0,0,0,0,4.511072,0,0),
(74637,35,-3196.261719,2930.507568,123.674210,0,0,0,0,0,0,0,0,0,3.929878,0,0);
-- Terrormaster #5 - correct spawn point + wps
UPDATE creature SET position_x = -3366.27, position_y = 2878.73, position_z = 156.911, orientation = 3.28 WHERE guid = 74635;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74635;
DELETE FROM creature_movement WHERE id = 74635;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(74635,1,-3387.851807,2872.679932,167.923645,0,0,0,0,0,0,0,0,0,3.674093,0,0),
(74635,2,-3401.326660,2861.706055,173.817642,6000,2131401,0,0,0,0,0,0,0,3.218561,0,0),
(74635,3,-3383.880615,2870.013916,166.428833,6000,2131401,0,0,0,0,0,0,0,4.787007,0,0),
(74635,4,-3369.096191,2879.979004,158.486572,0,0,0,0,0,0,0,0,0,0.775977,0,0),
(74635,5,-3364.566650,2888.386475,161.382675,0,0,0,0,0,0,0,0,0,1.574728,0,0),
(74635,6,-3365.481934,2895.357422,165.872467,6000,2131401,0,0,0,0,0,0,0,1.840192,0,0),
(74635,7,-3350.011230,2854.959961,149.521545,6000,2131401,0,0,0,0,0,0,0,4.720248,0,0),
(74635,8,-3319.504883,2854.594482,135.158936,0,0,0,0,0,0,0,0,0,0.222267,0,0),
(74635,9,-3293.606445,2861.083740,128.770035,6000,2131401,0,0,0,0,0,0,0,5.444383,0,0),
(74635,10,-3291.865967,2883.758057,131.406723,6000,2131401,0,0,0,0,0,0,0,0.596908,0,0),
(74635,11,-3321.485596,2878.826904,140.475174,6000,2131401,0,0,0,0,0,0,0,1.737307,0,0),
(74635,12,-3342.939209,2880.083252,151.645950,0,0,0,0,0,0,0,0,0,2.729265,0,0),
(74635,13,-3367.237061,2879.806152,157.580261,0,0,0,0,0,0,0,0,0,3.294752,0,0);
-- Terrormaster should talk to 19740 on his wps
DELETE FROM dbscripts_on_creature_movement WHERE id = 2131401; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2131401,0,31,19740,10,0,0,0,-5000,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(2131401,2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2131401,4,1,66,0,19740,10,0x04,0,0,0,0,0,0,0,0,'force 19740 to: emote');
-- Makazradon -- wps -- correct wps added  
DELETE FROM creature_movement_template WHERE entry = 21501;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(21501,1,-3247.604004,2994.167480,135.993484,0,0,0,0,0,0,0,0,0,2.398583,0,0),
(21501,2,-3279.025879,3007.973389,141.888947,0,0,0,0,0,0,0,0,0,2.803064,0,0),
(21501,3,-3298.270020,3015.950439,150.866119,0,0,0,0,0,0,0,0,0,2.311651,0,0),
(21501,4,-3305.809326,3025.773926,154.973022,0,0,0,0,0,0,0,0,0,1.783863,0,0),
(21501,5,-3306.911865,3039.003906,150.530472,0,0,0,0,0,0,0,0,0,0.896363,0,0),
(21501,6,-3290.875244,3050.579590,142.305161,0,0,0,0,0,0,0,0,0,0.584560,0,0),
(21501,7,-3247.361572,3076.234375,135.867859,0,0,0,0,0,0,0,0,0,0.312027,0,0),
(21501,8,-3226.746826,3084.365967,131.209534,0,0,0,0,0,0,0,0,0,0.048247,0,0),
(21501,9,-3212.599121,3083.740723,127.017624,0,0,0,0,0,0,0,0,0,5.411735,0,0),
(21501,10,-3189.074463,3053.510010,116.723297,0,0,0,0,0,0,0,0,0,5.653965,0,0),
(21501,11,-3163.712402,3039.346680,109.256241,0,0,0,0,0,0,0,0,0,5.522796,0,0),
(21501,12,-3123.281250,2992.121826,97.344063,0,0,0,0,0,0,0,0,0,4.842641,0,0),
(21501,13,-3119.818848,2954.273438,93.262192,0,0,0,0,0,0,0,0,0,4.552833,0,0),
(21501,14,-3126.953613,2940.518555,93.391373,0,0,0,0,0,0,0,0,0,3.528627,0,0),
(21501,15,-3147.164551,2936.335938,94.750710,0,0,0,0,0,0,0,0,0,3.613429,0,0),
(21501,16,-3157.915039,2926.544922,96.005447,0,0,0,0,0,0,0,0,0,4.335994,0,0),
(21501,17,-3172.449219,2894.140869,96.478958,0,0,0,0,0,0,0,0,0,4.337167,0,0),
(21501,18,-3177.282959,2877.402832,96.641151,0,0,0,0,0,0,0,0,0,4.816255,0,0),
(21501,19,-3169.696777,2843.482910,89.179810,0,0,0,0,0,0,0,0,0,4.649749,0,0),
(21501,20,-3170.422363,2824.293213,87.797813,0,0,0,0,0,0,0,0,0,4.093695,0,0),
(21501,21,-3187.373047,2806.074463,91.511307,0,0,0,0,0,0,0,0,0,3.818810,0,0),
(21501,22,-3206.979248,2791.168213,99.263664,0,0,0,0,0,0,0,0,0,3.001210,0,0),
(21501,23,-3219.352295,2790.443848,102.431892,0,0,0,0,0,0,0,0,0,2.887837,0,0),
(21501,24,-3238.972168,2798.192871,116.781219,0,0,0,0,0,0,0,0,0,3.085757,0,0),
(21501,25,-3272.612061,2796.842285,122.802559,0,0,0,0,0,0,0,0,0,3.170580,0,0),
(21501,26,-3306.260010,2800.199951,123.103752,0,0,0,0,0,0,0,0,0,2.549330,0,0),
(21501,27,-3323.377441,2811.405762,123.410988,0,0,0,0,0,0,0,0,0,1.963236,0,0),
(21501,28,-3326.329834,2831.935791,130.764023,0,0,0,0,0,0,0,0,0,0.881953,0,0),
(21501,29,-3305.216797,2857.187744,130.839249,0,0,0,0,0,0,0,0,0,0.751577,0,0),
(21501,30,-3293.862061,2880.298340,131.406845,0,0,0,0,0,0,0,0,0,1.309995,0,0),
(21501,31,-3287.932373,2911.600342,132.587997,0,0,0,0,0,0,0,0,0,1.054418,0,0),
(21501,32,-3278.145508,2933.549805,131.801346,0,0,0,0,0,0,0,0,0,0.294013,0,0),
(21501,33,-3256.962891,2941.665771,128.587296,0,0,0,0,0,0,0,0,0,1.256753,0,0),
(21501,34,-3243.065186,2976.445313,132.121201,0,0,0,0,0,0,0,0,0,1.504154,0,0);




-- Enraged Water Spirit #14 - wps
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 73970;
DELETE FROM creature_movement WHERE id = 73970;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(73970,1,-2968.68,1703.04,66.32,0,0,0,0,0,0,0,0,0,3.75,0,0),
(73970,2,-2950.61,1724.91,66.16,0,0,0,0,0,0,0,0,0,1.64,0,0),
(73970,3,-2946.80,1740.59,66.16,0,0,0,0,0,0,0,0,0,1.63,0,0),
(73970,4,-2948.52,1754.60,66.04,0,0,0,0,0,0,0,0,0,1.84,0,0),
(73970,5,-2945.53,1731.65,66.28,0,0,0,0,0,0,0,0,0,4.39,0,0);
-- Enraged Water Spirit #15 - wps
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 73976;
DELETE FROM creature_movement WHERE id = 73976;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(73976,1,-2861.152832,1430.137817,6.212326,0,0,0,0,0,0,0,0,0,1.373287,0,0),
(73976,2,-2860.966309,1439.020264,6.254366,0,0,0,0,0,0,0,0,0,1.935632,0,0),
(73976,3,-2866.094727,1446.807007,6.236337,0,0,0,0,0,0,0,0,0,2.284349,0,0),
(73976,4,-2869.699463,1452.445068,6.063048,0,0,0,0,0,0,0,0,0,1.597126,0,0),
(73976,5,-2861.872070,1466.385132,6.057288,0,0,0,0,0,0,0,0,0,0.587889,0,0),
(73976,6,-2854.626465,1469.490601,6.121273,0,0,0,0,0,0,0,0,0,6.264747,0,0),
(73976,7,-2833.738281,1470.152710,6.320684,0,0,0,0,0,0,0,0,0,0.330278,0,0),
(73976,8,-2810.742432,1481.113159,6.372933,0,0,0,0,0,0,0,0,0,0.980588,0,0),
(73976,9,-2799.000977,1496.064209,6.100363,0,0,0,0,0,0,0,0,0,0.838430,0,0),
(73976,10,-2790.837402,1505.846069,6.286506,0,0,0,0,0,0,0,0,0,0.890266,0,0),
(73976,11,-2783.837646,1516.140869,6.398393,0,0,0,0,0,0,0,0,0,1.188718,0,0),
(73976,12,-2782.583008,1521.707153,6.257148,0,0,0,0,0,0,0,0,0,0.914614,0,0),
(73976,13,-2774.634277,1524.698364,6.330190,0,0,0,0,0,0,0,0,0,6.054260,0,0),
(73976,14,-2768.782227,1521.139893,6.391075,0,0,0,0,0,0,0,0,0,5.131421,0,0),
(73976,15,-2754.831055,1487.750854,6.011575,0,0,0,0,0,0,0,0,0,4.660968,0,0),
(73976,16,-2754.208984,1477.664063,6.018538,0,0,0,0,0,0,0,0,0,4.016948,0,0),
(73976,17,-2759.584961,1473.342407,6.019732,0,0,0,0,0,0,0,0,0,3.411408,0,0),
(73976,18,-2776.859131,1468.137451,6.187690,0,0,0,0,0,0,0,0,0,3.681586,0,0),
(73976,19,-2799.311279,1457.955811,6.213720,0,0,0,0,0,0,0,0,0,3.576343,0,0),
(73976,20,-2827.651367,1441.630005,5.808296,0,0,0,0,0,0,0,0,0,3.682371,0,0),
(73976,21,-2861.356201,1420.465210,6.061584,0,0,0,0,0,0,0,0,0,3.705933,0,0),
(73976,22,-2878.200439,1410.968750,6.136442,0,0,0,0,0,0,0,0,0,3.611686,0,0),
(73976,23,-2888.198730,1405.956543,6.224855,0,0,0,0,0,0,0,0,0,3.717714,0,0),
(73976,24,-2898.496338,1397.407471,6.176886,0,0,0,0,0,0,0,0,0,4.157537,0,0),
(73976,25,-2891.018066,1407.442993,6.155785,0,0,0,0,0,0,0,0,0,0.660943,0,0),
(73976,26,-2874.207520,1417.343018,6.171679,0,0,0,0,0,0,0,0,0,0.513288,0,0);
-- Coilskar Defender - update
UPDATE creature_template SET unitflags=unitflags &~ 0x2000300, flags_extra = 2048 WHERE entry = 19762; 
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 70693;
DELETE FROM creature_movement WHERE id = 70693;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(70693,1,-3048.674316,1763.918335,76.291183,0,0,0,0,0,0,0,0,0,6.257137,0,0),
(70693,2,-3088.770020,1761.732300,75.197487,0,0,0,0,0,0,0,0,0,3.131252,0,0);
-- Coilskar Siren #1
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 70714;
DELETE FROM creature_movement WHERE id = 70714;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(70714,1,-3041.476318,1656.305298,66.524933,2000,0,0,0,0,0,0,0,0,0.024692,0,0),
(70714,2,-3081.508789,1641.820679,62.313141,0,0,0,0,0,0,0,0,0,3.745911,0,0),
(70714,3,-3105.275391,1628.812378,57.298016,0,0,0,0,0,0,0,0,0,3.447733,0,0),
(70714,4,-3126.220215,1621.720337,55.605270,0,0,0,0,0,0,0,0,0,3.317357,0,0),
(70714,5,-3141.611084,1616.996948,53.291500,0,0,0,0,0,0,0,0,0,3.636229,0,0),
(70714,6,-3154.592041,1607.606812,54.247635,0,0,0,0,0,0,0,0,0,3.891483,0,0),
(70714,7,-3160.416992,1595.942261,55.537144,0,0,0,0,0,0,0,0,0,4.798617,0,0),
(70714,8,-3159.296875,1588.215698,55.548504,3000,0,0,0,0,0,0,0,0,5.185031,0,0),
(70714,9,-3159.716309,1597.822266,55.344860,0,0,0,0,0,0,0,0,0,1.251757,0,0),
(70714,10,-3155.706055,1605.746948,54.533394,0,0,0,0,0,0,0,0,0,0.733394,0,0),
(70714,11,-3148.737793,1612.342163,53.391853,0,0,0,0,0,0,0,0,0,0.465573,0,0),
(70714,12,-3115.529297,1628.920654,56.806492,0,0,0,0,0,0,0,0,0,0.465283,0,0),
(70714,13,-3084.626709,1645.998901,62.901539,0,0,0,0,0,0,0,0,0,0.488180,0,0),
(70714,14,-3066.649902,1655.899414,65.268730,0,0,0,0,0,0,0,0,0,0.226641,0,0);
-- Coilskar Siren #2
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 70713;
DELETE FROM creature_movement WHERE id = 70713;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(70713,1,-3168.846191,1761.929321,88.983124,0,0,0,0,0,0,0,0,0,5.982031,0,0),
(70713,2,-3152.446777,1756.864624,86.042015,0,0,0,0,0,0,0,0,0,6.088060,0,0),
(70713,3,-3131.216309,1752.949829,79.427544,0,0,0,0,0,0,0,0,0,6.072350,0,0),
(70713,4,-3117.546875,1746.603760,76.791733,0,0,0,0,0,0,0,0,0,5.648236,0,0),
(70713,5,-3111.517334,1740.766479,74.889114,0,0,0,0,0,0,0,0,0,5.510793,0,0),
(70713,6,-3104.240234,1728.828613,71.836258,0,0,0,0,0,0,0,0,0,5.224125,0,0),
(70713,7,-3102.125488,1725.200317,71.037941,0,0,0,0,0,0,0,0,0,5.832022,0,0),
(70713,8,-3096.254395,1721.875732,69.965622,0,0,0,0,0,0,0,0,0,5.589332,0,0),
(70713,9,-3093.924072,1722.618774,69.880249,0,0,0,0,0,0,0,0,0,1.945086,0,0),
(70713,10,-3101.587891,1725.315308,70.987259,0,0,0,0,0,0,0,0,0,2.903272,0,0),
(70713,11,-3110.143066,1740.758911,74.710915,0,0,0,0,0,0,0,0,0,2.322077,0,0),
(70713,12,-3115.241455,1746.463745,76.491493,0,0,0,0,0,0,0,0,0,2.769754,0,0),
(70713,13,-3139.832275,1755.221191,81.258255,0,0,0,0,0,0,0,0,0,2.850651,0,0),
(70713,14,-3156.402588,1758.339844,87.173431,0,0,0,0,0,0,0,0,0,2.992025,0,0),
(70713,15,-3169.149658,1761.903442,88.995117,0,0,0,0,0,0,0,0,0,2.787821,0,0),
(70713,16,-3184.804443,1766.693848,88.330719,3000,0,0,0,0,0,0,0,0,2.798031,0,0),
(70713,17,-3190.322998,1771.278442,88.296532,4000,0,0,0,0,0,0,0,0,2.560055,0,0);
-- Coilskar Siren #3
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 70715;
DELETE FROM creature_movement WHERE id = 70715;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(70715,1,-2990.202881,1741.093628,75.869385,0,0,0,0,0,0,0,0,0,4.781379,0,0),
(70715,2,-2990.906494,1736.774780,76.008713,0,0,0,0,0,0,0,0,0,4.415385,0,0),
(70715,3,-2996.212402,1726.545410,74.715889,0,0,0,0,0,0,0,0,0,4.369047,0,0),
(70715,4,-2999.187988,1718.014526,73.706184,0,0,0,0,0,0,0,0,0,4.847353,0,0),
(70715,5,-2996.248047,1704.241211,72.080551,0,0,0,0,0,0,0,0,0,5.063334,0,0),
(70715,6,-3007.091064,1714.338745,73.779472,0,0,0,0,0,0,0,0,0,2.428324,0,0),
(70715,7,-3026.657227,1735.814331,75.439522,0,0,0,0,0,0,0,0,0,2.548490,0,0),
(70715,8,-3056.120117,1745.226440,75.173630,0,0,0,0,0,0,0,0,0,3.095912,0,0),
(70715,9,-3047.972412,1749.997559,75.296692,0,0,0,0,0,0,0,0,0,0.146742,0,0),
(70715,10,-3042.118652,1749.057983,75.198174,0,0,0,0,0,0,0,0,0,5.495306,0,0),
(70715,11,-3030.037842,1739.280518,75.436424,0,0,0,0,0,0,0,0,0,5.728569,0,0),
(70715,12,-3023.644531,1736.560425,75.412933,0,0,0,0,0,0,0,0,0,0.088624,0,0),
(70715,13,-3018.395020,1736.784546,75.361969,0,0,0,0,0,0,0,0,0,0.374507,0,0),
(70715,14,-3015.353027,1740.301392,75.292984,0,0,0,0,0,0,0,0,0,1.332693,0,0),
(70715,15,-3016.528076,1748.510254,75.218391,0,0,0,0,0,0,0,0,0,1.906034,0,0),
(70715,16,-3020.714111,1758.131104,75.207108,0,0,0,0,0,0,0,0,0,2.015989,0,0),
(70715,17,-3013.582520,1744.752319,75.429413,0,0,0,0,0,0,0,0,0,5.487451,0,0),
(70715,18,-3004.684082,1739.765137,75.553413,0,0,0,0,0,0,0,0,0,6.151897,0,0),
(70715,19,-2993.285645,1742.313843,75.795509,0,0,0,0,0,0,0,0,0,0.339164,0,0);
-- Coilskar Siren #4 - correct spawn point + wps
UPDATE creature SET position_x = -3011.76, position_y = 1667.38, position_z = 69.01, orientation = 1.361 WHERE guid = 70719;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 70719;
DELETE FROM creature_movement WHERE id = 70719;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(70719,1,-3013.80,1657.69,68.37,30000,0,0,0,0,0,0,0,0,1.53,0,0),
(70719,2,-3012.06,1666.31,69.01,60000,0,0,0,0,0,0,0,0,1.25,0,0);
-- Coilskar Waterseeker #1
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 70810;
DELETE FROM creature_movement WHERE id = 70810;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(70810,1,-3043.166504,1733.805298,75.262810,0,0,0,0,0,0,0,0,0,3.407362,0,0),
(70810,2,-3048.647705,1732.653198,75.362801,0,0,0,0,0,0,0,0,0,3.706599,0,0),
(70810,3,-3053.416504,1728.551392,75.681870,0,0,0,0,0,0,0,0,0,4.268945,0,0),
(70810,4,-3055.100342,1723.946167,76.244965,0,0,0,0,0,0,0,0,0,3.913943,0,0),
(70810,5,-3057.536377,1723.780273,76.474754,0,0,0,0,0,0,0,0,0,2.632959,0,0),
(70810,6,-3061.556396,1731.949829,76.060608,3000,0,0,0,0,0,0,0,0,1.988147,0,0),
(70810,7,-3057.806885,1724.499390,76.408554,0,0,0,0,0,0,0,0,0,5.815393,0,0),
(70810,8,-3056.292480,1723.154541,76.448769,0,0,0,0,0,0,0,0,0,0.273622,0,0),
(70810,9,-3055.195801,1723.883301,76.262001,0,0,0,0,0,0,0,0,0,1.159900,0,0),
(70810,10,-3051.715088,1729.036255,75.526314,0,0,0,0,0,0,0,0,0,0.907788,0,0),
(70810,11,-3048.094482,1731.749756,75.279770,0,0,0,0,0,0,0,0,0,0.354867,0,0),
(70810,12,-3042.574219,1733.865601,75.237495,0,0,0,0,0,0,0,0,0,0.764845,0,0),
(70810,13,-3041.526855,1735.636353,75.291962,0,0,0,0,0,0,0,0,0,1.762301,0,0),
(70810,14,-3046.220703,1742.361572,75.808640,3000,0,0,0,0,0,0,0,0,2.220188,0,0),
(70810,15,-3042.772949,1736.435059,75.368332,0,0,0,0,0,0,0,0,0,5.243969,0,0);
-- Coilskar Waterseeker #2
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 70811;
DELETE FROM creature_movement WHERE id = 70811;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(70811,1,-2945.295410,1712.679321,66.84,0,0,0,0,0,0,0,0,0,1.18,0,0),
(70811,2,-2939.748779,1733.896973,66.52,0,0,0,0,0,0,0,0,0,1.38,0,0),
(70811,3,-2941.600342,1749.171143,66.63,0,0,0,0,0,0,0,0,0,2.10,0,0),
(70811,4,-2953.705566,1766.616333,67.18,0,0,0,0,0,0,0,0,0,1.94,0,0),
(70811,5,-2954.503906,1773.408081,66.75,0,0,0,0,0,0,0,0,0,1.19,0,0),
(70811,6,-2952.216797,1765.413574,66.97,0,0,0,0,0,0,0,0,0,5.58,0,0),
(70811,7,-2940.699219,1752.269287,66.76,0,0,0,0,0,0,0,0,0,4.97,0,0),
(70811,8,-2938.949707,1741.960449,66.69,0,0,0,0,0,0,0,0,0,4.24,0,0),
(70811,9,-2943.192383,1719.959229,66.81,0,0,0,0,0,0,0,0,0,4.42,0,0),
(70811,10,-2946.121338,1707.858398,66.20,0,0,0,0,0,0,0,0,0,4.97,0,0),
(70811,11,-2942.795898,1693.982056,66.74,0,0,0,0,0,0,0,0,0,5.23,0,0);
-- few creatures that must be death 
UPDATE creature SET DeathState = 1 WHERE guid IN (70697, 70698, 70724, 70725, 70799, 70800);
-- Grom'tor, Son of Oronok - event
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74574;
DELETE FROM creature_movement WHERE id = 74574;
UPDATE creature_template SET MovementType = 2 WHERE entry = 21291; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 21291;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(21291,1,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,2,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,3,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,4,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,5,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,6,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,7,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,8,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,9,-2814.745,1774.943,59.50566,15000,2129101,0,0,0,0,0,0,0,6.24801,0,0), -- event starts
(21291,10,-2815.424,1771.031,59.10168,1000,2129102,0,0,0,0,0,0,0,4.98352,0,0),
(21291,11,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,12,-2815.424,1771.031,59.10168,9000,2129103,0,0,0,0,0,0,0,4.98352,0,0),
(21291,13,-2814.4,1773.86,59.2722,20000,2129104,0,0,0,0,0,0,0,0.496542,0,0),
(21291,14,-2815.424,1771.031,59.10168,15000,2129105,0,0,0,0,0,0,0,0.831902,0,0), -- event ends
(21291,15,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,16,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,17,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,18,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,19,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,20,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,21,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,22,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,23,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,24,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,25,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,26,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,27,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,28,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,29,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,30,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,31,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,32,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,33,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,34,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,35,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,36,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,37,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,38,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,39,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,40,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,41,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,42,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,43,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,44,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,45,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,46,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,47,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,48,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,49,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,50,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,51,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,52,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,53,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,54,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,55,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,56,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,57,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,58,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,59,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,60,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,61,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,62,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,63,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,64,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,65,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,66,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,67,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,68,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,69,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,70,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,71,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,72,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,73,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,74,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,75,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,76,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,77,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,78,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,79,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,80,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,81,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,82,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,83,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,84,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,85,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0),
(21291,86,-2815.424,1771.031,59.10168,1000,0,0,0,0,0,0,0,0,4.98352,0,0),
(21291,87,-2817.188,1777.806,60.35168,1000,0,0,0,0,0,0,0,0,1.64479,0,0);
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


-- Summoner Skartax - EVENT
DELETE FROM creature_template_addon WHERE entry = 21207;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(21207,0,0,1,16,0,0,36382);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 84853;
DELETE FROM creature_movement WHERE id = 84853;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(84853,1,-3350.91,2151.45,-7.08715,4000,0,0,0,0,0,0,0,0,3.71755,0,0),
(84853,2,-3350.91,2151.45,-7.08715,15000,2120701,0,0,0,0,0,0,0,3.71755,0,0),
(84853,3,-3350.91,2151.45,-7.08715,120000,2120702,0,0,0,0,0,0,0,3.71755,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2120701, 2120702); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2120701,0,15,36431,0,0,0,8,0,0,0,0,0,0,0,0,'visual - channel'),
(2120701,9,10,19757,300000,0,0,0,0,0,0,0,-3368.91,2145.37,-8.39026,4.4855,'summon - Infernal Soul'),
(2120702,0,15,36431,0,0,0,8,0,0,0,0,0,0,0,0,'visual - channel');
-- invis casting summon_channel spell
DELETE FROM creature_addon WHERE guid = 84857;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(84857,0,0,1,16,0,0,36393);
-- invis casting channel spell #1-4 
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 84854;
DELETE FROM creature_movement WHERE id = 84854;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(84854,1,-3369.89,2164.47,-7.06,1000,0,0,0,0,0,0,0,0,4.9,0,0),
(84854,2,-3369.89,2164.47,-7.06,180000,2121001,0,0,0,0,0,0,0,4.9,0,0);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 84855;
DELETE FROM creature_movement WHERE id =84855;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(84855,1,-3392.08,2153.75,-7.53,1000,0,0,0,0,0,0,0,0,6.16,0,0),
(84855,2,-3392.08,2153.75,-7.53,180000,2121001,0,0,0,0,0,0,0,6.16,0,0);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 84856;
DELETE FROM creature_movement WHERE id =84856;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(84856,1,-3349.41,2139.45,-7.73881,1000,0,0,0,0,0,0,0,0,3.16,0,0),
(84856,2,-3349.41,2139.45,-7.73881,180000,2121001,0,0,0,0,0,0,0,3.16,0,0);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 84858;
DELETE FROM creature_movement WHERE id = 84858;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(84858,1,-3366.91,2121.34,-7.63,1000,0,0,0,0,0,0,0,0,1.78,0,0),
(84858,2,-3366.91,2121.34,-7.63,180000,2121001,0,0,0,0,0,0,0,1.78,0,0);
-- script for them
DELETE FROM dbscripts_on_creature_movement WHERE id = 2121001; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2121001,0,15,36384,0,0,0,8,0,0,0,0,0,0,0,0,'visual - channel');
-- Infernal Soul - unique npc
UPDATE creature_template SET MovementType = 2 WHERE entry = 19757;
DELETE FROM creature_movement_template WHERE entry = 19757;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(19757,1,-3354.029053,2136.074951,-7.617691,0,0,0,0,0,0,0,0,0,5.459571,0,0),
(19757,2,-3334.709473,2123.353760,0.110530,0,0,0,0,0,0,0,0,0,4.477822,0,0),
(19757,3,-3336.440918,2118.739014,2.385972,0,0,0,0,0,0,0,0,0,3.864426,0,0),
(19757,4,-3350.577637,2102.399902,6.414635,0,0,0,0,0,0,0,0,0,4.022291,0,0),
(19757,5,-3361.743408,2090.762207,4.971794,0,0,0,0,0,0,0,0,0,3.947680,0,0),
(19757,6,-3372.547607,2080.442871,6.923079,0,0,0,0,0,0,0,0,0,3.540058,0,0),
(19757,7,-3390.733154,2071.638916,9.478933,0,0,0,0,0,0,0,0,0,4.084339,0,0),
(19757,8,-3397.304688,2062.291748,14.805972,0,0,0,0,0,0,0,0,0,3.880135,0,0),
(19757,9,-3403.150391,2057.081299,15.146488,0,0,0,0,0,0,0,0,0,4.444836,0,0),
(19757,10,-3403.513428,2050.048096,17.169069,0,0,0,0,0,0,0,0,0,4.823395,0,0),
(19757,11,-3401.415527,2042.168579,20.685322,0,0,0,0,0,0,0,0,0,4.819469,0,0),
(19757,12,-3398.083252,2022.913818,20.769167,0,0,0,0,0,0,0,0,0,4.890154,0,0),
(19757,13,-3394.884521,2001.233643,24.717464,0,0,0,0,0,0,0,0,0,4.832035,0,0),
(19757,14,-3395.340088,1996.945068,24.894569,0,0,0,0,0,0,0,0,0,5.294635,0,0),
(19757,15,-3391.309814,1990.309692,25.402233,0,0,0,0,0,0,0,0,0,5.880540,0,0),
(19757,16,-3374.793457,1986.204956,24.770254,0,0,0,0,0,0,0,0,0,0.189546,0,0),
(19757,17,-3361.020264,1986.218140,27.790358,0,0,0,0,0,0,0,0,0,0.771526,0,0),
(19757,18,-3352.330078,1994.869629,30.410479,0,0,0,0,0,0,0,0,0,1.037776,0,0),
(19757,19,-3347.756104,2002.661987,32.189018,0,0,0,0,0,0,0,0,0,1.132023,0,0),
(19757,20,-3345.875000,2009.087646,32.619484,0,0,0,0,0,0,0,0,0,1.754844,0,0),
(19757,21,-3347.413330,2015.157959,33.819714,0,0,0,0,0,0,0,0,0,2.117698,0,0),
(19757,22,-3355.960449,2028.379028,35.801514,0,0,0,0,0,0,0,0,0,2.184457,0,0),
(19757,23,-3366.470215,2041.372925,38.798149,0,0,0,0,0,0,0,0,0,2.333683,0,0),
(19757,24,-3375.805908,2054.354980,35.752903,0,0,0,0,0,0,0,0,0,1.947266,0,0),
(19757,25,-3386.452393,2085.322754,34.379436,0,0,0,0,0,0,0,0,0,2.259069,0,0),
(19757,26,-3408.116455,2107.904297,34.378651,0,0,0,0,0,0,0,0,0,2.516680,0,0),
(19757,27,-3432.918457,2130.658447,34.401749,0,0,0,0,0,0,0,0,0,2.416150,0,0),
(19757,28,-3447.556152,2143.636719,31.521667,0,0,0,0,0,0,0,0,0,2.396515,0,0),
(19757,29,-3468.232178,2160.356689,33.163986,0,0,0,0,0,0,0,0,0,2.455420,0,0),
(19757,30,-3477.012695,2171.717041,32.935181,8000,1975701,0,0,0,0,0,0,0,2.200165,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1975701; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1975701,0,15,11969,0,0,0,8,0,0,0,0,0,0,0,0,'cast nova'),
(1975701,3,15,7,0,0,0,8,0,0,0,0,0,0,0,0,'cast death'),
(1975701,5,10,19760,6000,0,0,0,0,0,0,0,-3477.012695,2171.717041,32.935181,4.83166,'summon - Infernal');
-- Deathforge Summoner #1
UPDATE creature SET MovementType = 2, spawndist = 0  WHERE guid = 73601;
DELETE FROM creature_movement WHERE id = 73601;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(73601,1,-3220.043701,1966.761963,108.964783,0,0,0,0,0,0,0,0,0,0.881438,0,0),
(73601,2,-3208.124268,1984.999756,106.479858,0,0,0,0,0,0,0,0,0,1.360532,0,0),
(73601,3,-3201.871582,2004.888184,101.001251,0,0,0,0,0,0,0,0,0,0.927452,0,0),
(73601,4,-3188.239990,2020.072510,94.212540,0,0,0,0,0,0,0,0,0,0.833204,0,0),
(73601,5,-3184.711182,2025.444702,93.527260,3000,0,0,0,0,0,0,0,0,1.068824,0,0),
(73601,6,-3186.666260,2020.416260,94.003876,0,0,0,0,0,0,0,0,0,4.032914,0,0),
(73601,7,-3199.945068,2005.807251,100.531464,0,0,0,0,0,0,0,0,0,4.340795,0,0),
(73601,8,-3207.854492,1986.168457,106.366829,0,0,0,0,0,0,0,0,0,4.012493,0,0),
(73601,9,-3220.182617,1967.358765,108.920403,0,0,0,0,0,0,0,0,0,4.578833,0,0),
(73601,10,-3227.614990,1952.055420,110.673180,0,0,0,0,0,0,0,0,0,3.962603,0,0),
(73601,11,-3240.332520,1940.244751,109.981293,0,0,0,0,0,0,0,0,0,3.848720,0,0),
(73601,12,-3251.046631,1932.889160,106.026604,3000,0,0,0,0,0,0,0,0,3.766253,0,0);
DELETE FROM creature_linking WHERE guid = 73646; 
INSERT INTO creature_linking (guid, master_guid, flag) VALUES    
(73646, 73601, 518); -- Deathforge imp linked to his master
-- Deathforge Summoner #2
UPDATE creature SET position_x = -3288.52, position_y = 1922.98, position_z = 143.28, orientation = 4.73, MovementType = 2, spawndist = 0 WHERE guid = 73602;
DELETE FROM creature_movement WHERE id =73602;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(73602,1,-3288.520752,1922.988647,143.280212,0,0,0,0,0,0,0,0,0,4.736549,0,0),
(73602,2,-3286.358154,1912.329102,142.914230,0,0,0,0,0,0,0,0,0,5.148875,0,0),
(73602,3,-3285.400635,1904.550781,141.234100,0,0,0,0,0,0,0,0,0,4.178911,0,0),
(73602,4,-3288.802246,1902.376343,141.670227,3000,0,0,0,0,0,0,0,0,3.711600,0,0),
(73602,5,-3286.029785,1905.134644,141.417114,0,0,0,0,0,0,0,0,0,1.405671,0,0),
(73602,6,-3288.403809,1920.882935,143.046188,0,0,0,0,0,0,0,0,0,1.343625,0,0),
(73602,7,-3285.739258,1927.430664,144.004654,0,0,0,0,0,0,0,0,0,0.657187,0,0),
(73602,8,-3271.433838,1937.653076,144.451279,0,0,0,0,0,0,0,0,0,0.321036,0,0),
(73602,9,-3252.090576,1946.800659,142.956390,0,0,0,0,0,0,0,0,0,0.416855,0,0),
(73602,10,-3247.576416,1949.014160,143.631699,0,0,0,0,0,0,0,0,0,0.467906,0,0),
(73602,11,-3232.925781,1955.284424,145.763870,0,0,0,0,0,0,0,0,0,0.622629,0,0),
(73602,12,-3218.852539,1966.316162,144.417007,0,0,0,0,0,0,0,0,0,1.100151,0,0),
(73602,13,-3213.384277,1978.922974,140.940384,0,0,0,0,0,0,0,0,0,1.237596,0,0),
(73602,14,-3210.237793,1987.784180,140.936523,3000,0,0,0,0,0,0,0,0,1.178691,0,0),
(73602,15,-3212.281006,1979.845825,141.103760,0,0,0,0,0,0,0,0,0,4.251166,0,0),
(73602,16,-3218.346436,1966.754150,144.389252,0,0,0,0,0,0,0,0,0,3.896952,0,0),
(73602,17,-3233.263672,1956.498779,145.752380,0,0,0,0,0,0,0,0,0,3.705317,0,0),
(73602,18,-3247.104980,1948.600098,143.608749,0,0,0,0,0,0,0,0,0,3.350317,0,0),
(73602,19,-3270.611816,1939.169189,144.649933,0,0,0,0,0,0,0,0,0,3.755582,0,0),
(73602,20,-3286.303711,1930.364258,144.240997,0,0,0,0,0,0,0,0,0,3.981776,0,0),
(73602,21,-3288.903076,1922.341797,143.160172,0,0,0,0,0,0,0,0,0,4.545688,0,0);
-- for his imp
UPDATE creature SET position_x = -3291.69, position_y = 1922.06, position_z = 142.82, orientation = 4.81 WHERE guid = 73645;
DELETE FROM creature_linking WHERE guid = 73645; 
INSERT INTO creature_linking (guid, master_guid, flag) VALUES    
(73645, 73602, 518); -- Deathforge imp linked to his master
-- Deathforge Summoner #3
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 73595;
DELETE FROM creature_movement WHERE id = 73595;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(73595,1,-3217.513184,2095.651855,76.157066,0,0,0,0,0,0,0,0,0,0.745932,0,0),
(73595,2,-3202.336914,2105.711670,74.812988,0,0,0,0,0,0,0,0,0,0.275478,0,0),
(73595,3,-3191.884277,2109.214844,74.270287,3000,0,0,0,0,0,0,0,0,0.233851,0,0),
(73595,4,-3201.714600,2106.261963,74.770218,0,0,0,0,0,0,0,0,0,3.790135,0,0),
(73595,5,-3219.170654,2094.856934,76.355347,0,0,0,0,0,0,0,0,0,3.627556,0,0),
(73595,6,-3241.610596,2084.343994,77.215012,0,0,0,0,0,0,0,0,0,3.583574,0,0),
(73595,7,-3259.911865,2071.086182,74.783455,0,0,0,0,0,0,0,0,0,3.986484,0,0),
(73595,8,-3274.342285,2055.943604,71.597359,0,0,0,0,0,0,0,0,0,4.476570,0,0),
(73595,9,-3277.190674,2046.317749,69.095802,0,0,0,0,0,0,0,0,0,4.800936,0,0),
(73595,10,-3275.593994,2030.349731,64.825882,0,0,0,0,0,0,0,0,0,4.832346,0,0),
(73595,11,-3275.646484,2013.541870,60.990456,3000,0,0,0,0,0,0,0,0,4.679196,0,0),
(73595,12,-3275.301270,2032.639526,65.466797,0,0,0,0,0,0,0,0,0,1.671121,0,0),
(73595,13,-3276.838867,2046.530640,69.125473,0,0,0,0,0,0,0,0,0,1.541530,0,0),
(73595,14,-3274.560547,2054.611572,71.190384,0,0,0,0,0,0,0,0,0,0.987824,0,0),
(73595,15,-3262.887695,2069.314697,74.374779,0,0,0,0,0,0,0,0,0,0.673665,0,0),
(73595,16,-3241.012939,2084.315186,77.144798,0,0,0,0,0,0,0,0,0,0.599052,0,0);
DELETE FROM creature_linking WHERE guid = 73640; 
INSERT INTO creature_linking (guid, master_guid, flag) VALUES    
(73640, 73595, 518); -- Deathforge imp linked to his master
-- Deathforge Summoner #4
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 73596;
DELETE FROM creature_movement WHERE id = 73596;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(73596,1,-3300.468994,1996.882935,48.219864,0,0,0,0,0,0,0,0,0,4.811934,0,0),
(73596,2,-3297.505859,1986.143311,50.716724,0,0,0,0,0,0,0,0,0,5.261967,0,0),
(73596,3,-3294.159912,1980.301392,52.532162,3000,0,0,0,0,0,0,0,0,0.482025,0,0),
(73596,4,-3301.056885,1995.909912,48.485577,0,0,0,0,0,0,0,0,0,2.033186,0,0),
(73596,5,-3307.829102,2011.288818,42.160316,0,0,0,0,0,0,0,0,0,2.304149,0,0),
(73596,6,-3313.020752,2015.625977,39.902199,0,0,0,0,0,0,0,0,0,2.936395,0,0),
(73596,7,-3326.751221,2016.115112,35.525684,0,0,0,0,0,0,0,0,0,3.274116,0,0),
(73596,8,-3335.206299,2013.579712,31.656546,0,0,0,0,0,0,0,0,0,3.442977,0,0),
(73596,9,-3344.307129,2008.830322,32.386829,0,0,0,0,0,0,0,0,0,4.382313,0,0),
(73596,10,-3347.675049,2000.909790,31.995934,0,0,0,0,0,0,0,0,0,3.992757,0,0),
(73596,11,-3359.358154,1988.816528,28.508093,0,0,0,0,0,0,0,0,0,3.816042,0,0),
(73596,12,-3370.669189,1985.192993,26.284994,0,0,0,0,0,0,0,0,0,3.281971,0,0),
(73596,13,-3374.542725,1985.746216,24.733402,0,0,0,0,0,0,0,0,0,2.971740,0,0),
(73596,14,-3393.687744,1992.225830,25.835398,3000,0,0,0,0,0,0,0,0,1.756728,0,0),
(73596,15,-3374.922852,1985.819580,24.733747,0,0,0,0,0,0,0,0,0,0.122308,0,0),
(73596,16,-3363.200684,1988.307251,28.041607,0,0,0,0,0,0,0,0,0,0.479662,0,0),
(73596,17,-3352.612305,1994.927734,30.386007,0,0,0,0,0,0,0,0,0,0.997240,0,0),
(73596,18,-3348.241211,2001.576538,32.164364,0,0,0,0,0,0,0,0,0,0.899065,0,0),
(73596,19,-3337.238770,2015.260620,32.389744,0,0,0,0,0,0,0,0,0,0.823667,0,0),
(73596,20,-3327.681641,2019.128662,35.658611,0,0,0,0,0,0,0,0,0,0.021775,0,0),
(73596,21,-3311.569092,2015.839966,40.450832,0,0,0,0,0,0,0,0,0,5.598891,0,0);
DELETE FROM creature_linking WHERE guid = 73641; 
INSERT INTO creature_linking (guid, master_guid, flag) VALUES    
(73641, 73596, 518); -- Deathforge imp linked to his master
-- Deathforge Summoner #5
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 73599;
DELETE FROM creature_movement WHERE id = 73599;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(73599,1,-3395.601563,2085.393066,34.141243,0,0,0,0,0,0,0,0,0,5.171791,0,0),
(73599,2,-3391.843262,2071.675049,34.049999,0,0,0,0,0,0,0,0,0,5.372856,0,0),
(73599,3,-3388.835693,2069.100586,34.218472,0,0,0,0,0,0,0,0,0,6.118195,0,0),
(73599,4,-3377.178955,2076.978760,34.297272,0,0,0,0,0,0,0,0,0,0.845815,0,0),
(73599,5,-3376.033691,2081.414063,34.225540,0,0,0,0,0,0,0,0,0,1.646136,0,0),
(73599,6,-3377.727539,2092.481201,34.043617,0,0,0,0,0,0,0,0,0,1.849554,0,0),
(73599,7,-3379.932861,2096.497070,34.057068,0,0,0,0,0,0,0,0,0,2.369488,0,0),
(73599,8,-3389.255615,2106.105469,33.947643,0,0,0,0,0,0,0,0,0,2.430749,0,0),
(73599,9,-3415.030762,2127.361572,34.401295,0,0,0,0,0,0,0,0,0,2.446457,0,0),
(73599,10,-3425.839600,2137.862793,34.401295,0,0,0,0,0,0,0,0,0,2.379698,0,0),
(73599,11,-3436.399170,2147.192627,32.068035,0,0,0,0,0,0,0,0,0,2.711136,0,0),
(73599,12,-3441.088135,2148.067383,31.521196,0,0,0,0,0,0,0,0,0,3.455695,0,0),
(73599,13,-3451.584717,2137.100830,31.521196,0,0,0,0,0,0,0,0,0,4.340054,0,0),
(73599,14,-3451.888916,2133.227783,31.845333,0,0,0,0,0,0,0,0,0,5.225979,0,0),
(73599,15,-3440.833008,2123.487305,34.663040,0,0,0,0,0,0,0,0,0,5.591971,0,0),
(73599,16,-3422.092529,2110.144287,34.475407,0,0,0,0,0,0,0,0,0,5.487513,0,0);
DELETE FROM creature_linking WHERE guid = 73644; 
INSERT INTO creature_linking (guid, master_guid, flag) VALUES    
(73644, 73599, 518); -- Deathforge imp linked to his master
-- Deathforge Summoner #5
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 73597;
DELETE FROM creature_movement WHERE id = 73597;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(73597,1,-3408.135986,2055.210693,15.301399,0,0,0,0,0,0,0,0,0,0.547428,0,0),
(73597,2,-3395.810303,2063.343018,14.616655,0,0,0,0,0,0,0,0,0,0.904785,0,0),
(73597,3,-3390.614502,2071.184082,9.590954,0,0,0,0,0,0,0,0,0,0.552141,0,0),
(73597,4,-3381.719482,2076.284180,8.021390,0,0,0,0,0,0,0,0,0,0.278037,0,0),
(73597,5,-3371.132080,2079.978271,6.499158,0,0,0,0,0,0,0,0,0,0.738280,0,0),
(73597,6,-3349.192871,2102.747559,6.219915,0,0,0,0,0,0,0,0,0,0.673092,0,0),
(73597,7,-3341.361328,2109.226074,4.161588,0,0,0,0,0,0,0,0,0,0.953479,0,0),
(73597,8,-3336.420166,2118.330566,2.391350,0,0,0,0,0,0,0,0,0,1.592794,0,0),
(73597,9,-3342.314941,2108.677490,4.505372,0,0,0,0,0,0,0,0,0,3.860239,0,0),
(73597,10,-3349.162598,2101.341553,6.088561,0,0,0,0,0,0,0,0,0,3.920717,0,0),
(73597,11,-3371.663818,2079.906250,6.628232,0,0,0,0,0,0,0,0,0,3.525661,0,0),
(73597,12,-3391.101563,2072.341797,9.409741,0,0,0,0,0,0,0,0,0,4.200319,0,0),
(73597,13,-3396.205811,2062.770996,14.761282,0,0,0,0,0,0,0,0,0,3.856312,0,0),
(73597,14,-3408.234375,2055.523438,15.303344,0,0,0,0,0,0,0,0,0,3.311247,0,0),
(73597,15,-3425.192871,2058.611572,15.287258,0,0,0,0,0,0,0,0,0,3.283758,0,0),
(73597,16,-3447.362793,2058.731201,15.730772,0,0,0,0,0,0,0,0,0,3.151026,0,0),
(73597,17,-3422.599121,2058.438721,15.299659,0,0,0,0,0,0,0,0,0,6.123755,0,0),
(73597,18,-3401.948242,2054.009033,15.362193,0,0,0,0,0,0,0,0,0,5.015556,0,0),
(73597,19,-3404.593018,2042.034058,20.896397,0,0,0,0,0,0,0,0,0,4.869473,0,0),
(73597,20,-3396.651367,2017.688599,21.837374,0,0,0,0,0,0,0,0,0,4.917377,0,0),
(73597,21,-3393.900391,2002.055420,24.786732,3000,0,0,0,0,0,0,0,0,4.862399,0,0),
(73597,22,-3395.625000,2022.849365,20.612501,0,0,0,0,0,0,0,0,0,1.918726,0,0),
(73597,23,-3402.773926,2042.241211,20.793344,0,0,0,0,0,0,0,0,0,1.952498,0,0);
DELETE FROM creature_linking WHERE guid = 73642; 
INSERT INTO creature_linking (guid, master_guid, flag) VALUES    
(73642, 73597, 518); -- Deathforge imp linked to his master
-- Overlord Or'barokh - event -- SHADOWMOON VALLEY
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 76072;
DELETE FROM creature_movement WHERE id = 76072;
UPDATE creature_template SET MovementType = 2, speedwalk = 1.125 WHERE entry = 21769; -- now move him to template (unique npc) + correct speed 
DELETE FROM creature_movement_template WHERE entry = 21769;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(21769,1,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,2,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,3,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,4,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,5,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,6,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,7,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,8,-2917,2660.08,94.3668,19000,2176901,0,0,0,0,0,0,0,3.56041,0,0), -- event 
(21769,9,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,10,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,11,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,12,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,13,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,14,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,15,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,16,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,17,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,18,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,19,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,20,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,21,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,22,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,23,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,24,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,25,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,26,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,27,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,28,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,29,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,30,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,31,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,32,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,33,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,34,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,35,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,36,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,37,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,38,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,39,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,40,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,41,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,42,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,43,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,44,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,45,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,46,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,47,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,48,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,49,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,50,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,51,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,52,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,53,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,54,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,55,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,56,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,57,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,58,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,59,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,60,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,61,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,62,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,63,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,64,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,65,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,66,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,67,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,68,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,69,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,70,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,71,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,72,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,73,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,74,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,75,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,76,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,77,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,78,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,79,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,80,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,81,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0),
(21769,82,-2916.384,2655.595,94.4961,0,0,0,0,0,0,0,0,0,4.97096,0,0),
(21769,83,-2918.522,2663.986,94.32904,0,0,0,0,0,0,0,0,0,2.25349,0,0);
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
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(17008,1,-3593.4,1858.13,48.4441,20000,1700801,0,0,0,0,0,0,0,4.9567,0,0),
(17008,2,-3593.4,1858.13,48.4441,8000,1700802,0,0,0,0,0,0,0,1.745329,0,0),
(17008,3,-3593.4,1858.13,48.4441,35000,1700803,0,0,0,0,0,0,0,4.9567,0,0),
(17008,4,-3593.4,1858.13,48.4441,120000,0,0,0,0,0,0,0,0,4.9567,0,0);
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
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(73908,1,-3593,1874.94,47.324,24000,0,2000005453,2000005454,2000005457,2000005458,0,20,0,4.90438,0,0),
(73908,2,-3593,1874.94,47.324,36000,0,2000005457,2000005453,2000005454,2000005458,0,20,0,4.90438,0,0),
(73908,3,-3593,1874.94,47.324,27000,0,2000005458,2000005457,2000005454,2000005453,0,20,0,4.90438,0,0);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 73921;
DELETE FROM creature_movement WHERE id = 73921;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES 
(73921,1,-3600.1,1873.26,47.3238,16000,0,2000005452,2000005455,2000005456,0,0,15,0,4.81711,0,0),
(73921,2,-3600.1,1873.26,47.3238,55000,0,2000005455,2000005456,2000005452,0,0,15,0,4.81711,0,0),
(73921,3,-3600.1,1873.26,47.3238,34000,0,2000005456,2000005455,2000005452,0,0,15,0,4.81711,0,0);
DELETE FROM db_script_string WHERE entry BETWEEN 2000005452 AND 2000005458;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(2000005452,'Tear the land asunder, Gul\'dan! Sever the tie!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005453,'Do not do this, Gul\'dan! The elements will never forgive us!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005454,'Think of your younglings, Gul\'dan! You will destroy us all!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005455,'They have abandoned us! Do not forget!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005456,'We will take from the land if it refuses to give!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005457,'Stop! You must stop!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005458,'You have damned us all... We are lost.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);