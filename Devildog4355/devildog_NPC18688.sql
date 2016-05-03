-- Ancient Orc Ancestor
DELETE FROM creature WHERE guid IN (301673, 301674, 301675, 301676, 301677, 301678, 301679, 301680);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('301673','18688','530','1','0','0','-3115.32','5931.75','1.44551','0.519631','120','0','0','1','0','0','2'),
('301674','18688','530','1','0','0','-2201.538330','8605.272461','-5.685029','4.0','120','0','0','1','0','0','2'),
('301675','18688','530','1','0','0','-2180.282227','8519.277344','-9.262681','3.662356','120','0','0','1','0','0','2'),
('301676','18688','530','1','0','0','-2165.219482','8456.146484','-13.857843','3.4','120','0','0','1','0','0','2'),
('301677','18688','530','1','0','0','-2126.526855','8399.152344','-12.993474','3.3','120','0','0','1','0','0','2'),
('301678','18688','530','1','0','0','-2063.336670','8261.949219','-9.946277','2.8','120','0','0','1','0','0','2'),
('301679','18688','530','1','0','0','-831.663086','7798.496582','38.461380','2.8','120','0','0','1','0','0','2'),
('301680','18688','530','1','0','0','-1212.283203','7399.475586','28.820879','1.5','120','0','0','1','0','0','2');
-- Movements
-- # 1
SET @GUID := '301673';
SET @POINT := '0';
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-3071.19', '5954.33', '1.8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '.5', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-3025.08', '5985.59', '4.75', '0', '0', '0', '0', '0', '0', '0', '0', '0', '.3', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2993.6818', '5988.4443', '6.05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.1', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2993.681885', '5988.44336', '6.0596', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.1', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2913.347900', '5959.564941', '13.442146', '0', '0', '0', '0', '0', '0', '0', '0', '0', '.25', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2864.583740', '5979.756836', '18.929880', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.45', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2808.798340', '6006.663574', '27.429', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.45', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2718.991943', '6055.179199', '37.581085', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.89', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2654.529297', '6136.418457', '38.45', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.2', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2649.136475', '6203.349121', '36.419201', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.6', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2648.289307', '6265.080078', '38.351837', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.3', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2633.736816', '6304.891113', '39.316990', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.79', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2575.1777734', '6347.911133', '36.784275', '0', '0', '0', '0', '0', '0', '0', '0', '0', '.3', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2517.079102', '6364.747070', '31.114983', '0', '0', '0', '0', '0', '0', '0', '0', '0', '.5', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2488.851074', '6389.271973', '29.419', '0', '0', '0', '0', '0', '0', '0', '0', '0', '.9', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2465.956787', '6506.493652', '16.615515', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.3', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2427.670410', '6601.672852', '4.3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.5', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2428.765381', '6668.575195', '0.3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.66', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2440.680176', '6750.601074', '-0.62', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.4', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2407.695557', '6823.268066', '-2.7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.3', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2403.852051', '6912.779785', '-1.913927', '0', '240000', '0', '0', '0', '0', '0', '0', '0', '1.15', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2353.983643', '7006.104980', '-10.202595', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.1', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2321.097168', '7071.906738', '-16.004225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.1', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2303.695068', '7103.707520', '-24.689642', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2285.721924', '7132.169922', '-45.616062', '0', '0', '0', '0', '0', '0', '0', '0', '0', '.9', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2263.230469', '7168.153320', '-57.329849', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.5', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2265.614502', '7201.251953', '-67.143669', '0', '240001', '0', '0', '0', '0', '0', '0', '0', '1.6', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2269.295166', '7235.240234', '-64.848572', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.6', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2270.202148', '7256.588379', '-57.190735', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.3', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2218.283203', '7279.94287', '-36.792503', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2202.584473', '7301.62871', '-35.293', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.7', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2243.84076', '7446.476563', '-19.265919', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.9', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2262.015869', '7499.254395', '-18.921289', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.9', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2272.249756', '7528.971680', '-12.275742', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.9', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2287.464600', '7564.337891', '-11.963841', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.9', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2314.883057', '7603.28715', '-4.24', '0', '240002', '0', '0', '0', '0', '0', '0', '0', '2.1', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2360.844727', '7674.906738', '-9.705969', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.1', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2403.638916', '7740.171875', '-24.024775', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.1', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2444.677979', '7807.943359', '-38.432907', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2474.292480', '7872.607910', '-49.477627', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.9', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2508.692627', '7952.901367', '-53.980072', '0', '240003', '0', '0', '0', '0', '0', '0', '0', '1.9', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2557.722900', '8130.773438', '-42.233028', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.9', '0', '0');
-- #2
SET @GUID := '301674';
SET @POINT := '0';
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-2239.739990', '8561.368164', '-13.359775', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.0', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2277.48619', '8521.654297', '-23.497812', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.8', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2324.714844', '8475.03180', '-30.114693', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.7', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2398.680664', '8430.418945', '-39.015709', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.6', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2450.414795', '8388.868164', '-37.004723', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '3.8', '0', '0');
-- #3
SET @GUID := '301675';
SET @POINT := '0';
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-2177.469971', '8521.160156', '-5.548360', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.2', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2295.900391', '8447.355469', '-32.58361', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.5', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2367.016357', '8415.544922', '-36.291386', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.6', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2390.9842422', '8404.318359', '-39.887737', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.6', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2442.986328', '8379.373047', '-36.343510', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '3.5', '0', '0');
-- #4
SET @GUID := '301676';
SET @POINT := '0';
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-2245.460938', '8431.916992', '-29.689590', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.7', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2351.615479', '8385.347656', '-38.273003', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.3', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2435.546631', '8373.478516', '-38.10648', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '3.2', '0', '0');
-- #5
SET @GUID := '301677';
SET @POINT := '0';
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-2169.727295', '8387.002930', '-17.449869', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.3', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2235.405029', '8370.698242', '-30.70454', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.3', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2333.348145', '8344.952148', '-35.711082', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.7', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2373.702637', '8313.407227', '-40.443287', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.8', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2432.931396', '8255.963867', '-38.28137', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0');
-- #6
SET @GUID := '301678';
SET @POINT := '0';
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-2123.362061', '8281.975586', '-18.916889', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.8', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2198.775391', '8297.466797', '-24.524033', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2241.641357', '8298.574219', '-28.876959', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.2', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2287.638428', '8290.154297', '-33.027802', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.3', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2332.483643', '8281.299805', '-35.887096', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.3', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2373.647217', '8272.615234', '-40.634979', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.3', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2423.526611', '8260.748047', '-38.161446', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '3.375714', '0', '0');
-- #7
SET @GUID := '301679';
SET @POINT := '0';
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-848.572449', '7831.716797', '41.092445', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.8', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-856.496765', '7870.391113', '42.002571', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.6', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-864.095276', '7928.425293', '38.987564', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-885.940552', '7968.226563', '35.191887', '0', '240003', '0', '0', '0', '0', '0', '0', '0', '2.1', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-910.998718', '8006.125000', '32.310265', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-920.041260', '8036.384277', '27.272230', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.7', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-927.441162', '8089.941406', '20.014185', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-943.160217', '8121.916992', '14.233925', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-953.255554', '8142.342773', '7.916735', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-962.096008', '8160.067383', '12.006940', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-970.183899', '8175.737305', '14.670942', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.1', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-989.871216', '8205.204102', '13.982605', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-1001.750305', '8226.902344', '14.059360', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-1020.442261', '8265.612305', '15.802829', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.9', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-1036.532715', '8301.840820', '16.352119', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-1056.820313', '8331.714844', '22.60653', '0', '240001', '0', '0', '0', '0', '0', '0', '0', '2.2', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-1105.687622', '8393.125000', '20.355492', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.4', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-1151.638306', '8416.565430', '20.422329', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.9', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-1208.768066', '8430.761719', '20.225883', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.7', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-1278.458618', '8462.401367', '16.341427', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.5', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-1307.560059', '8490.139648', '14.491500', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.4', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-1326.729980', '8511.280273', '12.954700', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.0', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-1365.008545', '8524.562500', '11.033627', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.5', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-1391.108032', '8556.458984', '11.931925', '0', '240004', '0', '0', '0', '0', '0', '0', '0', '1.9', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-1401.845459', '8578.338867', '13.624339', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.1', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-1424.831421', '8613.176758', '16.204895', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.1', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-1452.305420', '8655.079102', '19.120457', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.2', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-1463.816650', '8670.665039', '20.344481', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.2', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-1463.816650', '8670.665039', '20.344481', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.2', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-1511.663940', '8714.256836', '26.849453', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.6', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-1561.951172', '8738.818359', '32.236485', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-1585.742554', '8742.379883', '33.644115', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-1642.087891', '8747.83789', '31.794371', '0', '240003', '0', '0', '0', '0', '0', '0', '0', '3.1', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-1729.594971', '8750.526367', '27.213169', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.3', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-1756.161011', '8735.495117', '24.226381', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.6', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-1798.160034', '8721.330078', '24.890800', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.3', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-1821.726074', '8716.631836', '24.737240', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.1', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-1906.672852', '8726.478516', '24.800865', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.2', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-1960.484497', '8718.807617', '22.230165', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.1', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2008.237183', '8718.449219', '19.703913', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.3', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2040.793335', '8701.776367', '18.100224', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.7', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2118.960449', '8616.165039', '17.294487', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2157.469482', '8608.153320', '12.698842', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.1', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2173.831299', '8607.937500', '5.098440', '0', '240005', '0', '0', '0', '0', '0', '0', '0', '3.1', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2179.290527', '8606.939453', '1.279656', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.2', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2201.230713', '8605.05957', '-5.669892', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.3', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2216.472656', '8597.39453', '-8.47297', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.9', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2250.805908', '8554.581055', '-15.766086', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.1', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2276.562744', '8518.612305', '-24.003145', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2292.774902', '8493.035156', '-27.985697', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.1', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2309.594482', '8465.444336', '-30.957064', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.2', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2329.813965', '8430.076172', '-34.904648', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.1', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2353.324707', '8391.121094', '-36.802143', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.1', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2376.447021', '8349.384766', '-40.402893', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.2', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2397.59877', '8310.372070', '-38.471684', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.2', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2407.098633', '8290.999023', '-39.538261', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.2', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-2435.879395', '8254.694336', '-38.234631', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '3.7', '0', '0');

-- #8

-- Gossip
DELETE FROM db_script_string WHERE entry IN (2000005779, 2000005780, 2000005781, 2000005782, 2000005783, 2000005784, 2000005785, 2000005786);
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(2000005779,'What will become of us when it falls? ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(2000005780,'What is happening to me?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(2000005781,'I remember everything...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(2000005782,'It is dying. It is dying. It is dying.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(2000005783,'The pain is unbearable.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(2000005784,'The spirts call... I am consumed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(2000005785,'Cannot control... It draws me in... The void grows...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(2000005786,'Cease your crying! STOP!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (240000, 240001, 240002, 240003, 240004, 240005, 240006, 240007); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES
(240000,0,0,0,0,0,15,0,2000005779,0,0,0,0,0,0,0,'NPC Chat 18688'),
(240001,0,0,0,0,0,15,0,2000005780,0,0,0,0,0,0,0,'NPC Chat 18688'),
(240002,0,0,0,0,0,15,0,2000005781,0,0,0,0,0,0,0,'NPC Chat 18688'),
(240003,0,0,0,0,0,15,0,2000005782,0,0,0,0,0,0,0,'NPC Chat 18688'),
(240004,0,0,0,0,0,15,0,2000005783,0,0,0,0,0,0,0,'NPC Chat 18688'),
(240005,0,0,0,0,0,15,0,2000005784,0,0,0,0,0,0,0,'NPC Chat 18688'),
(240006,0,0,0,0,0,15,0,2000005785,0,0,0,0,0,0,0,'NPC Chat 18688'),
(240007,0,0,0,0,0,15,0,2000005786,0,0,0,0,0,0,0,'NPC Chat 18688');

