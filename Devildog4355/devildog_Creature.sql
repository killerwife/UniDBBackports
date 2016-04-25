-- Ar'tor, Son of Oronok
UPDATE creature_template SET inhabitType=5, regeneratestats =0 WHERE entry = 21292;
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
UPDATE creature_template SET EquipmentTemplateId = 53 WHERE entry = 21455; -- they all should use this tool
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
-- Ancient Shadowmoon Spirit - update
UPDATE creature_template SET EquipmentTemplateId = 321 WHERE entry = 21797;
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
UPDATE creature SET MovementType = 2, spawndist = 0, spawntimesecs = 25 WHERE guid IN (52277, 52290, 52300, 52325, 52340, 52342, 52343, 52345, 52287);
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