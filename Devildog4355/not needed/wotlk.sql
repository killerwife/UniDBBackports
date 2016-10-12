-- Missing heroic vehicle_id
UPDATE creature_template AS h, creature_template AS a SET h.vehicle_id=a.vehicle_id WHERE h.entry=a.difficulty_entry_1 AND a.vehicle_id != h.vehicle_id;
UPDATE creature_template AS h, creature_template AS a SET h.vehicle_id=a.vehicle_id WHERE h.entry=a.difficulty_entry_2 AND a.vehicle_id != h.vehicle_id;
UPDATE creature_template AS h, creature_template AS a SET h.vehicle_id=a.vehicle_id WHERE h.entry=a.difficulty_entry_3 AND a.vehicle_id != h.vehicle_id;
-- Port from ytdb 636
DELETE FROM vehicle_accessory WHERE vehicle_entry IN (
27241, 27626, 27661, 28018, 28054, 28312, 28614, 29555, 29625,
29698, 29931, 30330, 32189, 32627, 32633, 32640, 32930, 33060,
33109, 33113, 33114, 33214, 33669, 33687, 33778, 34776, 35069,
35633, 35634, 35635, 35636, 35637, 35638, 35640, 35641, 36678,
27213, 24083, 24750, 28710, 29433, 29579, 29838, 29931, 30234,
30248, 31262, 31269, 31406, 31583, 31881, 31884, 32225, 32227,
32344, 32490, 33293, 36896);
INSERT INTO vehicle_accessory (vehicle_entry, seat, accessory_entry, comment) VALUES
(27241, 0, 27268, 'Risen Gryphon'),
(27626, 0, 27627, 'Tatjana\'s Horse'),
(27661, 0, 27662, 'Wintergarde Gryphon'),
(28018, 0, 28006, 'Thiassi the Light Bringer'),
(28054, 0, 28053, 'Lucky Wilhelm - Apple'),
(28312, 7, 28319, 'Wintergrasp Siege Engine'),
(28614, 0, 28616, 'Scarlet Gryphon Rider'),
(29555, 0, 29556, 'Goblin Sapper'),
(29625, 0, 29694, 'Hyldsmeet Proto-Drake'),
(29698, 0, 29699, 'Drakuru Raptor'),
(29931, 0, 29982, 'Drakkari Rider on Drakkari Rhino'),
(30330, 0, 30332, 'Jotunheim Proto-Drake'),
(32189, 0, 32190, 'Skybreaker Recon Fighter'),
(32627, 7, 32629, 'Wintergrasp Siege Engine'),
(32633, 1, 32638, 'Traveler Mammoth (A) - Vendor'),
(32633, 2, 32639, 'Traveler Mammoth (A) - Vendor & Repairer'),
(32640, 1, 32642, 'Traveler Mammoth (H) - Vendor'),
(32640, 2, 32641, 'Traveler Mammoth (H) - Vendor & Repairer'),
(32930, 0, 32933, 'Kologarn'),
(32930, 1, 32934, 'Kologarn'),
(33060, 7, 33067, 'Salvaged Siege Engine'),
(33109, 1, 33167, 'Salvaged Demolisher'),
(33109, 2, 33620, 'Salvaged Demolisher'),
(33109, 3, 33167, 'Salvaged Demolisher'),
(33113, 2, 33114, 'Flame Leviathan'),
(33113, 3, 33114, 'Flame Leviathan'),
(33113, 7, 33139, 'Flame Leviathan'),
(33114, 1, 33142, 'Overload Control Device'),
(33114, 2, 33143, 'Leviathan Defense Turret'),
(33214, 1, 33218, 'Mechanolift 304-A'),
(33669, 0, 33666, 'Demolisher Engineer Blastwrench'),
(33687, 0, 33695, 'Chillmaw'),
(33687, 1, 33695, 'Chillmaw'),
(33687, 2, 33695, 'Chillmaw'),
(33778, 0, 33780, 'Tournament Hippogryph'),
(34776, 7, 34777, 'Isle of Conquest Siege Engine  - main turret (ally)'),
(34776, 1, 36356, 'Isle of Conquest Siege Engine  - flame turret 1 (ally)'),
(34776, 2, 36356, 'Isle of Conquest Siege Engine  - flame turret 2 (ally)'),
(35069, 7, 36355, 'Isle of Conquest Siege Engine - main turret (horde)'),
(35069, 1, 34778, 'Isle of Conquest Siege Engine - flame turret 1 (horde)'),
(35069, 2, 34778, 'Isle of Conquest Siege Engine - flame turret 2 (horde)'),
(35633, 0, 34702, 'Ambrose Boltspark\'s Mount'),
(35634, 0, 35617, 'Deathstalker Visceri\'s Mount'),
(35635, 0, 35569, 'Eressea Dawnsinger\'s Mount'),
(35636, 0, 34703, 'Lana Stouthammer\'s Mount'),
(35637, 0, 34705, 'Marshal Jacob Alerius\' Mount'),
(35638, 0, 35572, 'Mokra the Skullcrusher\'s Mount'),
(35640, 0, 35571, 'Runok Wildmane\'s Mount'),
(35641, 0, 35570, 'Zul\'tore\'s Mount'),
(36678, 0, 38309, 'Professor Putricide - trigger'),
(36678, 1, 38308, 'Professor Putricide - trigger'),
(27213, 0, 27206, 'Onslaught Warhorse - Onslaught Knight'),
(24083, 0, 24849, 'Proto Drake Rider mounted to Enslaved Proto Drake'),
(24750, 0, 24751, 'Excelsior rides Hidalgo the Master Falconer'),
(28710, 0, 28646, 'Pilot Vic'),
(29433, 0, 29440, 'Goblin Sapper in K3'),
(29579, 0, 29599, 'Brann Snow Target'),
(29838, 0, 29836, 'Drakkari Battle Rider on Drakkari Rhino, not minion'),
(29931, 1, 29982, 'Drakkari Rider on Drakkari Rhino'),
(29931, 2, 29982, 'Drakkari Rider on Drakkari Rhino'),
(30234, 0, 30245, 'Hover Disk - Nexus Lord'),
(30248, 0, 30249, 'Hover Disk - Scion of Eternity'),
(31262, 0, 31263, 'Carrion Hunter rides Blight Falconer'),
(31269, 0, 27559, 'Kor\'kron Battle Wyvern'),
(31406, 0, 31408, 'Alliance Bomber Seat on Alliance Infra-green Bomber'),
(31406, 1, 31407, 'Alliance Turret Seat on Alliance Infra-green Bomber'),
(31406, 2, 31409, 'Alliance Engineering Seat on rides Alliance Infra-green Bomber'),
(31406, 3, 32217, 'Banner Bunny, Hanging, Alliance on Alliance Infra-green Bomber'),
(31406, 4, 32221, 'Banner Bunny, Side, Alliance on Alliance Infra-green Bomber'),
(31406, 5, 32221, 'Banner Bunny, Side, Alliance on Alliance Infra-green Bomber'),
(31406, 6, 32256, 'Shield Visual Loc Bunny on Alliance Infra-green Bomber'),
(31406, 7, 32274, 'Alliance Bomber Pilot rides Alliance Infra-green Bomber'),
(31583, 1, 31630, 'Skytalon Explosion Bunny on Frostbrood Skytalon'),
(31881, 0, 31891, 'Kor\'kron Transport Pilot rides Kor\'kron Troop Transport'),
(31881, 1, 31884, 'Kor\'kron Suppression Turret on Kor\'kron Troop Transport'),
(31881, 2, 31882, 'Kor\'kron Infiltrator on Kor\'kron Troop Transport'),
(31881, 3, 31882, 'Kor\'kron Infiltrator on Kor\'kron Troop Transport'),
(31881, 4, 31882, 'Kor\'kron Infiltrator on Kor\'kron Troop Transport'),
(31881, 5, 31882, 'Kor\'kron Infiltrator on Kor\'kron Troop Transport'),
(31884, 0, 31882, 'Kor\'kron Infiltrator rides Kor\'kron Suppression Turret'),
(32225, 0, 32223, 'Skybreaker Transport Pilot rides Skybreaker Troop Transport'),
(32225, 1, 32227, 'Skybreaker Suppression Turret on Skybreaker Troop Transport'),
(32225, 2, 32222, 'Skybreaker Infiltrator on Skybreaker Troop Transport'),
(32225, 3, 32222, 'Skybreaker Infiltrator on Skybreaker Troop Transport'),
(32225, 4, 32222, 'Skybreaker Infiltrator on Skybreaker Troop Transport'),
(32225, 5, 32222, 'Skybreaker Infiltrator on Skybreaker Troop Transport'),
(32227, 0, 32222, 'Skybreaker Infiltrator rides Skybreaker Suppression Turret'),
(32344, 0, 32274, 'Alliance Bomber Pilot rides Alliance Rescue Craft'),
(32344, 2, 32531, 'Banner Bunny, Side, Alliance, Small rides Alliance Rescue Craft'),
(32490, 0, 32486, 'Scourge Death Knight rides Scourge Deathcharger'),
(33293, 0, 33329, 'XT-002 Deconstructor - Heart'),
(36896, 1, 28717, 'Overlord Drakuru on Stonespine Gargoyle');
-- ### Naxx ###
UPDATE gameobject_template SET faction = 114, flags = 32 WHERE entry = 181356;

-- ### Halls of Stone ###
-- Sjonnir
DELETE FROM spell_script_target WHERE entry = 50742;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(50742, 1, 27981, 0);
DELETE FROM creature_linking_template WHERE entry IN (28165, 27981, 27979, 27982, 27980);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(28165, 599, 27978, 4112, 0),
(27981, 599, 27978, 4112, 0),
(27979, 599, 27978, 4112, 0),
(27982, 599, 27978, 4112, 0),
(27980, 599, 27978, 4112, 0);
DELETE FROM achievement_criteria_requirement WHERE criteria_id = 7593 AND type IN (11, 18);
INSERT INTO achievement_criteria_requirement (criteria_id, type, value1, value2) VALUES
(7593, 18, 0, 0);
-- ### Gundrak ###
DELETE FROM creature_linking_template WHERE entry IN (29713, 29680);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(29713, 604, 29304, 4112, 0),
(29680, 604, 29304, 4112, 0);

-- ### Oculus ###
DELETE FROM creature_linking_template WHERE entry = 28166;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(28166, 578, 27654, 4112, 0);
DELETE FROM db_script_string WHERE entry BETWEEN 2000005525 AND 2000005528;
INSERT INTO db_script_string (entry, content_default) VALUES
(2000005525, 'Thank you for freeing us, mortals. Beware, the Blue Flight is alerted to your presence. Even now, Malygos sends Varos Cloudstrider and his ring guardians to defend the Oculus. You will need our help to stand a chance.'),
(2000005526, 'Intruders, your victory will be short-lived. I am Commander Varos Cloudstrider. My drakes control the skies and protect this conduit. I will see to it personally that the Oculus does not fall into your hands!'),
(2000005527, 'The trickster Mage-Lord Urom protects the third ring. He will appear alone and defenseless, but do not be fooled by appearances! Urom is a powerful conjurer who commands a menagerie of Phantasmal creatures. Seek him out above.'),
(2000005528, 'Your greatest challenge lies ahead. Ley-Guardian Eregos is a Blue dragon of immense power. You will find him flying above the uppermost ring.');
DELETE FROM dbscripts_on_creature_death WHERE id = 27654;
INSERT INTO dbscripts_on_creature_death(id, delay, command, datalong, datalong2, buddy_entry, search_radius, dataint, x, y, z, comments) VALUES
(27654, 6, 3, 0, 0, 27658, 75, 0, 939.73, 1044.25, 359.96, 'Belgaristrasz - move out of the cage'),
(27654, 6, 3, 0, 0, 27657, 75, 0, 948.57, 1032.11, 359.96, 'Verdisa - move out of the cage'),
(27654, 6, 3, 0, 0, 27659, 75, 0, 941.93, 1060.08, 359.96, 'Eternos - move out of the cage'),
(27654, 9, 0, 0, 0, 27658, 75, 2000005525, 0, 0, 0, 'Belgaristrasz - say greet'),
(27654, 9, 1, 1, 0, 27658, 75, 0, 0, 0, 0, 'Belgaristrasz - emote greet'),
(27654, 17, 0, 6, 0, 27447, 360, 2000005526, 0, 0, 0, 'Varos - yell intro, map wide'),
(27654, 17, 16, 13648, 8, 27447, 360, 0, 0, 0, 0, 'Varos - yell intro sound, map wide');
DELETE FROM dbscripts_on_creature_death WHERE id = 27447;
INSERT INTO dbscripts_on_creature_death(id, delay, command, datalong, datalong2, buddy_entry, search_radius, dataint, comments) VALUES
(27447, 1, 15, 12980, 0, 28012, 10, 0, 'Image of Belgaristrasz - cast teleport visual'),
(27447, 5, 0, 0, 0, 28012, 75, 2000005527, 'Image of Belgaristrasz - say after Varos'),
(27447, 5, 1, 1, 0, 28012, 75, 0, 'Image of Belgaristrasz - emote after Varos');
DELETE FROM dbscripts_on_creature_death WHERE id = 27655;
INSERT INTO dbscripts_on_creature_death(id, delay, command, datalong, datalong2, buddy_entry, search_radius, dataint, comments) VALUES
(27655, 1, 15, 12980, 0, 28012, 10, 0, 'Image of Belgaristrasz - cast teleport visual'),
(27655, 5, 0, 0, 0, 28012, 75, 2000005528, 'Image of Belgaristrasz - say after Urom'),
(27655, 5, 1, 1, 0, 28012, 75, 0, 'Image of Belgaristrasz - emote after Urom');
DELETE FROM dbscripts_on_creature_death WHERE id = 27656;
INSERT INTO dbscripts_on_creature_death(id, delay, command, datalong, datalong2, buddy_entry, search_radius, dataint, x, y, z, o, comments) VALUES
(27656, 0, 10, 28012, 180000, 0, 0, 0, 1022.39, 1051.51, 605.62, 0.07, 'Summon Image of Belgaristrasz'),
(27656, 1, 15, 12980, 0, 28012, 360, 0, 0, 0, 0, 0, 'Image of Belgaristrasz - cast teleport visual');
DELETE FROM spell_script_target WHERE entry = 50087;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(50087, 1, 27641, 0);
-- Varos
DELETE FROM creature_linking_template WHERE entry IN (28236, 28183);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(28236, 578, 27447, 4112, 0),
(28183, 578, 27447, 4, 0);
UPDATE creature_template SET InhabitType=InhabitType | 4 WHERE entry IN (28236, 27756, 27692, 27755);
-- Eregos
-- Planar anomaly 
UPDATE creature_template SET unit_flags=unit_flags|33554432 WHERE entry = 30879;

-- ### Oculus vehicle spells scripts ###
-- ruby
DELETE FROM spell_script_target WHERE entry = 49464;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(49464, 1, 27756, 0);
-- emerald
DELETE FROM spell_script_target WHERE entry = 49346;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(49346, 1, 27692, 0);
-- amber
DELETE FROM spell_script_target WHERE entry = 49460;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(49460, 1, 27755, 0);
-- scaling spells
DELETE FROM spell_script_target WHERE entry = 66667;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(66667, 1, 27756, 0),
(66667, 1, 27692, 0),
(66667, 1, 27755, 0);
-- update creature_template
UPDATE creature_template SET minhealth = 11379, maxhealth = 11379, faction_A = 14, faction_H = 14, mindmg = 372, maxdmg = 558, attackpower = 139, armor = 8833, dmg_multiplier = 1.4, rangeattacktime = 2000, minrangedmg = 298,
 maxrangedmg=446, rangedattackpower=111, minlevel=77, maxlevel=77 WHERE entry=28165;
UPDATE creature_template SET faction_A = 14, faction_H = 14 WHERE entry = 31389;
-- Tribunal
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE id = 28235;
UPDATE creature_template SET InhabitType = InhabitType | 4 WHERE entry IN (28235, 31874);
DELETE FROM spell_script_target WHERE entry = 51001;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(51001, 1, 22515, 0),
(51001, 1, 30897, 0);
DELETE FROM spell_script_target WHERE entry = 51136;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(51136, 1, 22515, 0),
(51136, 1, 30899, 0);
DELETE FROM spell_script_target WHERE entry = 59867;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(59867, 1, 22515, 0),
(59867, 1, 30899, 0);
DELETE FROM spell_script_target WHERE entry = 51288;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(51288, 1, 27983, 0),
(51288, 1, 27984, 0),
(51288, 1, 27985, 0);
DELETE FROM achievement_criteria_requirement WHERE criteria_id = 7590 AND type IN (11, 18);
INSERT INTO achievement_criteria_requirement VALUES
(7590, 18, 0, 0);
-- spells - the 3rd spell require some core condition because it's available only for the last boss
DELETE FROM creature_template_spells WHERE entry IN (27756, 27692, 27755);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
(27756, 50232, 50240, 50253, 0, 0, 53389, 0, 0),
(27692, 50328, 50341, 50344, 0, 0, 53389, 0, 0),
(27755, 49840, 49838, 49592, 0, 0, 53389, 0, 0);

-- ### Utgarde Pinnacle ###
UPDATE spell_target_position SET target_orientation = 3.141 WHERE id = 61790;
DELETE FROM spell_script_target WHERE entry = 48641;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(48641, 1, 19871, 0);
UPDATE creature_template SET InhabitType = InhabitType | 4, RegenHealth = 0 WHERE entry = 26893;
DELETE FROM creature_linking_template WHERE entry = 26893;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(26893, 575, 26693, 4, 0);
DELETE FROM creature_template_addon WHERE entry = 30684;
INSERT INTO creature_template_addon (entry, auras) VALUES (30684, '57718');
DELETE FROM creature_template_addon WHERE entry = 30777;
INSERT INTO creature_template_addon (entry, auras) VALUES (30777, '57718');
DELETE FROM dbscripts_on_spell WHERE id = 56790;
INSERT INTO dbscripts_on_spell (id, command, comments) VALUES
(56790, 18, 'Despawn Harpoon Loot Sparkles on spell Create Harpoon');
-- Grauf movement
DELETE FROM creature_movement_template WHERE entry = 26893;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z) VALUES
(26893, 1, 310.2165, -510.5302, 120.5487),
(26893, 2, 300.8685, -520.3249, 133.3664),
(26893, 3, 298.3447, -529.4818, 137.2831),
(26893, 4, 309.0959, -540.3195, 134.9774),
(26893, 5, 323.6415, -547.9715, 130.3106),
(26893, 6, 357.078, -549.1597, 116.3105),
(26893, 7, 401.2573, -550.2768, 114.9216),
(26893, 8, 464.5062, -555.9442, 114.4494),
(26893, 9, 496.192, -556.9628, 114.8661),
(26893, 10, 523.2011, -548.9916, 114.8661), -- emote in range
(26893, 11, 500.243, -501.693, 120.002),    -- left breath
(26893, 12, 451.9824, -509.2508, 120.0273),
(26893, 13, 399.2607, -510.0719, 121.1193),
(26893, 14, 350.6099, -508.3901, 122.3138),
(26893, 15, 325.8217, -506.7769, 125.175),  -- last breath point
(26893, 16, 301.2941, -516.6706, 133.7026),
(26893, 17, 301.2957, -549.4583, 137.4249),
(26893, 18, 335.0746, -552.1211, 119.8416),
(26893, 19, 397.6237, -553.9203, 119.8416),
(26893, 20, 459.6321, -558.0078, 119.8416),
(26893, 21, 505.5458, -568.7815, 119.8416),
(26893, 22, 518.099, -560.8499, 119.8416),
(26893, 23, 520.4827, -541.5633, 119.8416), -- emote in range
(26893, 24, 500.243, -521.693, 120.204),    -- right breath
(26893, 25, 451.9824, -518.2508, 120.0273),
(26893, 26, 399.2607, -515.0719, 121.1193),
(26893, 27, 350.6099, -516.3901, 122.3138),
(26893, 28, 325.8217, -515.3769, 121.175);  -- last breath point - restart from beginning
-- Summons movement
DELETE FROM creature_movement_template WHERE entry = 26690;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z) VALUES
(26690, 1, 478.309, -511.049, 104.724),
(26690, 2, 311.576, -509.201, 104.407);
DELETE FROM creature_movement_template WHERE entry = 26691;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z) VALUES
(26691, 1, 478.309, -511.049, 104.724),
(26691, 2, 311.576, -509.201, 104.407);
DELETE FROM creature_movement_template WHERE entry = 26692;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z) VALUES
(26692, 1, 478.309, -511.049, 104.724),
(26692, 2, 311.576, -509.201, 104.407);
-- Achievements
DELETE FROM achievement_criteria_requirement WHERE criteria_id = 7595 AND type IN (11, 18);
INSERT INTO achievement_criteria_requirement (criteria_id, type, value1, value2) VALUES
(7595, 18, 0, 0);

-- ### Azjol Nerub ###
DELETE FROM spell_script_target WHERE entry = 53177;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(53177, 1, 23472, 0);
DELETE FROM spell_script_target WHERE entry = 53185;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(53185, 1, 23472, 0);
DELETE FROM achievement_criteria_requirement WHERE criteria_id = 4244 AND type IN (11, 18);
INSERT INTO achievement_criteria_requirement (criteria_id, type, value1, value2) VALUES
(4244, 18, 0, 0);
-- delete some auras
DELETE FROM creature_addon WHERE guid = 127376;
DELETE FROM creature_addon WHERE guid = 127377;
DELETE FROM creature_addon WHERE guid = 127378;
DELETE FROM creature_template_addon WHERE entry = 28921;

-- Spider movement
-- right spawns
DELETE FROM creature_movement_template WHERE entry = 29062;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z) VALUES
(29062, 1, 485.25, 611.46, 771.42),
(29062, 2, 485.25, 611.46, 771.42), -- add twice because of mmap issue
(29062, 3, 489.30, 607.92, 767.10),
(29062, 4, 494.01, 603.90, 760.76),
(29062, 5, 499.17, 599.71, 754.00),
(29062, 6, 503.84, 595.65, 747.65),
(29062, 7, 507.66, 592.57, 742.67),
(29062, 8, 510.83, 589.98, 738.49),
(29062, 9, 512.51, 588.51, 736.54),
(29062, 10, 532.731, 573.102, 732.949), 
(29062, 11, 567.483, 567.908, 726.914),
(29062, 12, 584.959, 576.709, 726.172),
(29062, 13, 603.581, 569.991, 721.507),
(29062, 14, 611.256, 560.783, 718.022),
(29062, 15, 619.722, 538.278, 705.649),
(29062, 16, 617.151, 526.951, 698.210),
(29062, 17, 609.638, 517.172, 695.850),
(29062, 18, 597.256, 511.442, 694.927),
(29062, 19, 578.910, 510.994, 698.347),
(29062, 20, 568.497, 513.034, 698.679),
(29062, 21, 557.671, 516.684, 693.457);
DELETE FROM creature_movement_template WHERE entry = 29063;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z) VALUES
(29063, 1, 485.25, 611.46, 771.42),
(29063, 2, 485.25, 611.46, 771.42), -- add twice because of mmap issue
(29063, 3, 489.30, 607.92, 767.10),
(29063, 4, 494.01, 603.90, 760.76),
(29063, 5, 499.17, 599.71, 754.00),
(29063, 6, 503.84, 595.65, 747.65),
(29063, 7, 507.66, 592.57, 742.67),
(29063, 8, 510.83, 589.98, 738.49),
(29063, 9, 512.51, 588.51, 736.54),
(29063, 10, 532.731, 573.102, 732.949), 
(29063, 11, 567.483, 567.908, 726.914),
(29063, 12, 584.959, 576.709, 726.172),
(29063, 13, 603.581, 569.991, 721.507),
(29063, 14, 611.256, 560.783, 718.022),
(29063, 15, 619.722, 538.278, 705.649),
(29063, 16, 617.151, 526.951, 698.210),
(29063, 17, 609.638, 517.172, 695.850),
(29063, 18, 597.256, 511.442, 694.927),
(29063, 19, 578.910, 510.994, 698.347),
(29063, 20, 568.497, 513.034, 698.679),
(29063, 21, 557.671, 516.684, 693.457);
DELETE FROM creature_movement_template WHERE entry = 29064;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z) VALUES
(29064, 1, 485.25, 611.46, 771.42),
(29064, 2, 485.25, 611.46, 771.42), -- add twice because of mmap issue
(29064, 3, 489.30, 607.92, 767.10),
(29064, 4, 494.01, 603.90, 760.76),
(29064, 5, 499.17, 599.71, 754.00),
(29064, 6, 503.84, 595.65, 747.65),
(29064, 7, 507.66, 592.57, 742.67),
(29064, 8, 510.83, 589.98, 738.49),
(29064, 9, 512.51, 588.51, 736.54),
(29064, 10, 532.731, 573.102, 732.949), 
(29064, 11, 567.483, 567.908, 726.914),
(29064, 12, 584.959, 576.709, 726.172),
(29064, 13, 603.581, 569.991, 721.507),
(29064, 14, 611.256, 560.783, 718.022),
(29064, 15, 619.722, 538.278, 705.649),
(29064, 16, 617.151, 526.951, 698.210),
(29064, 17, 609.638, 517.172, 695.850),
(29064, 18, 597.256, 511.442, 694.927),
(29064, 19, 578.910, 510.994, 698.347),
(29064, 20, 568.497, 513.034, 698.679),
(29064, 21, 557.671, 516.684, 693.457);

-- left spawns
DELETE FROM creature_movement_template WHERE entry = 28924;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z) VALUES
(28924, 1, 575.21, 611.47, 771.46),
(28924, 2, 575.21, 611.47, 771.46), -- add twice because of mmap issue
(28924, 3, 570.05, 606.73, 765.19),
(28924, 4, 564.51, 602.06, 757.79),
(28924, 5, 558.91, 597.30, 750.26),
(28924, 6, 552.40, 591.78, 741.54),
(28924, 7, 546.09, 586.55, 733.19),
(28924, 8, 544.75, 584.20, 731.31),
(28924, 9, 547.99, 568.27, 730.60),
(28924, 10, 567.483, 567.908, 726.914),
(28924, 11, 584.959, 576.709, 726.172),
(28924, 12, 603.581, 569.991, 721.507),
(28924, 13, 611.256, 560.783, 718.022),
(28924, 14, 619.722, 538.278, 705.649),
(28924, 15, 617.151, 526.951, 698.210),
(28924, 16, 609.638, 517.172, 695.850),
(28924, 17, 597.256, 511.442, 694.927),
(28924, 18, 578.910, 510.994, 698.347),
(28924, 19, 568.497, 513.034, 698.679),
(28924, 20, 557.671, 516.684, 693.457);
DELETE FROM creature_movement_template WHERE entry = 28925;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z) VALUES
(28925, 1, 575.21, 611.47, 771.46),
(28925, 2, 575.21, 611.47, 771.46), -- add twice because of mmap issue
(28925, 3, 570.05, 606.73, 765.19),
(28925, 4, 564.51, 602.06, 757.79),
(28925, 5, 558.91, 597.30, 750.26),
(28925, 6, 552.40, 591.78, 741.54),
(28925, 7, 546.09, 586.55, 733.19),
(28925, 8, 544.75, 584.20, 731.31),
(28925, 9, 547.99, 568.27, 730.60),
(28925, 10, 567.483, 567.908, 726.914),
(28925, 11, 584.959, 576.709, 726.172),
(28925, 12, 603.581, 569.991, 721.507),
(28925, 13, 611.256, 560.783, 718.022),
(28925, 14, 619.722, 538.278, 705.649),
(28925, 15, 617.151, 526.951, 698.210),
(28925, 16, 609.638, 517.172, 695.850),
(28925, 17, 597.256, 511.442, 694.927),
(28925, 18, 578.910, 510.994, 698.347),
(28925, 19, 568.497, 513.034, 698.679),
(28925, 20, 557.671, 516.684, 693.457);
DELETE FROM creature_movement_template WHERE entry = 29051;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z) VALUES
(29051, 1, 575.21, 611.47, 771.46),
(29051, 2, 575.21, 611.47, 771.46), -- add twice because of mmap issue
(29051, 3, 570.05, 606.73, 765.19),
(29051, 4, 564.51, 602.06, 757.79),
(29051, 5, 558.91, 597.30, 750.26),
(29051, 6, 552.40, 591.78, 741.54),
(29051, 7, 546.09, 586.55, 733.19),
(29051, 8, 544.75, 584.20, 731.31),
(29051, 9, 547.99, 568.27, 730.60),
(29051, 10, 567.483, 567.908, 726.914),
(29051, 11, 584.959, 576.709, 726.172),
(29051, 12, 603.581, 569.991, 721.507),
(29051, 13, 611.256, 560.783, 718.022),
(29051, 14, 619.722, 538.278, 705.649),
(29051, 15, 617.151, 526.951, 698.210),
(29051, 16, 609.638, 517.172, 695.850),
(29051, 17, 597.256, 511.442, 694.927),
(29051, 18, 578.910, 510.994, 698.347),
(29051, 19, 568.497, 513.034, 698.679),
(29051, 20, 557.671, 516.684, 693.457);

-- lower spawns
DELETE FROM creature_movement_template WHERE entry = 29096;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z) VALUES
(29096, 1, 589.51, 597.66, 739.14),
(29096, 2, 589.51, 597.66, 739.14), -- add twice because of mmap issue
(29096, 3, 593.92, 593.26, 733.62),
(29096, 4, 597.83, 588.18, 727.28),
(29096, 5, 603.581, 569.991, 721.507),
(29096, 6, 611.256, 560.783, 718.022),
(29096, 7, 619.722, 538.278, 705.649),
(29096, 8, 617.151, 526.951, 698.210),
(29096, 9, 609.638, 517.172, 695.850),
(29096, 10, 597.256, 511.442, 694.927),
(29096, 11, 578.910, 510.994, 698.347),
(29096, 12, 568.497, 513.034, 698.679),
(29096, 13, 557.671, 516.684, 693.457);
DELETE FROM creature_movement_template WHERE entry = 29097;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z) VALUES
(29097, 1, 589.51, 597.66, 739.14),
(29097, 2, 589.51, 597.66, 739.14), -- add twice because of mmap issue
(29097, 3, 593.92, 593.26, 733.62),
(29097, 4, 597.83, 588.18, 727.28),
(29097, 5, 603.581, 569.991, 721.507),
(29097, 6, 611.256, 560.783, 718.022),
(29097, 7, 619.722, 538.278, 705.649),
(29097, 8, 617.151, 526.951, 698.210),
(29097, 9, 609.638, 517.172, 695.850),
(29097, 10, 597.256, 511.442, 694.927),
(29097, 11, 578.910, 510.994, 698.347),
(29097, 12, 568.497, 513.034, 698.679),
(29097, 13, 557.671, 516.684, 693.457);
DELETE FROM creature_movement_template WHERE entry = 29098;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z) VALUES
(29098, 1, 589.51, 597.66, 739.14),
(29098, 2, 589.51, 597.66, 739.14), -- add twice because of mmap issue
(29098, 3, 593.92, 593.26, 733.62),
(29098, 4, 597.83, 588.18, 727.28),
(29098, 5, 603.581, 569.991, 721.507),
(29098, 6, 611.256, 560.783, 718.022),
(29098, 7, 619.722, 538.278, 705.649),
(29098, 8, 617.151, 526.951, 698.210),
(29098, 9, 609.638, 517.172, 695.850),
(29098, 10, 597.256, 511.442, 694.927),
(29098, 11, 578.910, 510.994, 698.347),
(29098, 12, 568.497, 513.034, 698.679),
(29098, 13, 557.671, 516.684, 693.457);

-- Hadronox movement
DELETE FROM creature_movement_template WHERE entry = 28921;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z) VALUES
(28921, 1, 568.497, 513.034, 698.679),
(28921, 2, 578.910, 510.994, 698.347),
(28921, 3, 597.256, 511.442, 694.927),
(28921, 4, 609.638, 517.172, 695.850),
(28921, 5, 617.151, 526.951, 698.210),
(28921, 6, 619.722, 538.278, 705.649),
(28921, 7, 611.256, 560.783, 718.022),
(28921, 8, 603.581, 569.991, 721.507),
(28921, 9, 584.959, 576.709, 726.172),
(28921, 10, 567.483, 567.908, 726.914),
(28921, 11, 530.42, 560.003, 733.0308); -- last before closing doors

-- ### Ahn'kahet ###
DELETE FROM db_script_string WHERE entry BETWEEN 2000005529 AND 2000005534;
INSERT INTO db_script_string (entry, content_default) VALUES
(2000005529, 'They who dine on lost souls know only hunger.'),
(2000005530, 'Gaze into the void. It is the perpetuity in which they dwell.'),
(2000005531, 'They drink your fear: it is the blood of life.'),
(2000005532, 'They are the whisper on the shivering wind.'),
(2000005533, 'They do not die; they do not live. They are outside the cycle.'),
(2000005534, 'Where one falls, many shall take its place.');

DELETE FROM dbscripts_on_spell WHERE id IN (60291, 60292, 60293, 60294, 60295, 60296, 60297);
INSERT INTO dbscripts_on_spell (id, command, datalong, dataint, comments) VALUES
(60291, 0, 4, 2000005529, 'volazj - whisper aggro'),
(60292, 0, 4, 2000005530, 'volazj - whisper insanity'),
(60293, 0, 4, 2000005531, 'volazj - whisper slay1'),
(60294, 0, 4, 2000005532, 'volazj - whisper slay2'),
(60295, 0, 4, 2000005533, 'volazj - whisper slay3'),
(60297, 0, 4, 2000005534, 'volazj - whisper death2');

-- ### Eye of Eternity ###
DELETE FROM creature_template_spells WHERE entry = 30161;
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
(30161, 56091, 56092, 57090, 57143, 57108, 57092, 0, 0);
DELETE FROM spell_script_target WHERE entry = 56505;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(56505, 1, 22517, 0);
UPDATE creature_template SET InhabitType=InhabitType|4 WHERE entry IN (30234, 31748, 30248, 31749, 30161, 31752);
-- This shouldn't be not_attackable
UPDATE creature_template SET unit_flags=unit_flags&~2 WHERE entry=30282;

-- ### Ruby Sanctum ###
-- Baltharus clone linking
DELETE FROM creature_linking_template WHERE entry = 39899;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(39899, 724, 39751, 4112, 0);

DELETE FROM db_script_string WHERE entry BETWEEN 2000005535 AND 2000005542;
INSERT INTO db_script_string (entry, content_default) VALUES
(2000005535, 'Thank you! I could not have held out for much longer.... A terrible thing has happened here.'),
(2000005536, 'We believed the Sanctum was well-fortified, but we were not prepared for the nature of this assault.'),
(2000005537, 'The Black dragonkin materialized from thin air, and set upon us before we could react.'),
(2000005538, 'We did not stand a chance. As my brethren perished around me, I managed to retreat here and bar the entrance.'),
(2000005539, 'They slaughtered us with cold efficiency, but the true focus of their interest seemed to be the eggs kept here in the Sanctum.'),
(2000005540, 'The commander of the forces on the ground here is a cruel brute named Zarithrian, but I fear there are greater powers at work.'),
(2000005541, 'In their initial assault, I caught a glimpse of their true leader, a fearsome full-grown twilight dragon.'),
(2000005542, 'I know not the extent of their plans, heroes, but I know this:  They cannot be allowed to succeed!');

-- Baltharus outro
DELETE FROM creature_movement_template WHERE entry = 40429;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id) VALUES
(40429, 1, 3155.54, 342.39, 84.59, 1000, 4042901),
(40429, 2, 3152.32, 359.41, 85.30, 0, 4042902),
(40429, 3, 3152.07, 383.93, 86.33, 1000, 4042903);

DELETE FROM dbscripts_on_creature_movement WHERE id IN (4042901, 4042902, 4042903);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, dataint, comments) VALUES
(4042901, 0, 0, 1, 0, 2000005535, 'Xerestrasza first yell text'),
(4042901, 0, 16, 17491, 0, 0, 'Xerestrasza first yell sound'),
(4042901, 0, 1, 5, 0, 0, 'Xerestrasza first yell emote'),
(4042902, 0, 0, 0, 0, 2000005536, 'Xerestrasza second yell text'),
(4042902, 0, 16, 17492, 0, 0, 'Xerestrasza second yell sound'),
(4042902, 0, 1, 1, 0, 0, 'Xerestrasza second yell emote'),
(4042903, 0, 32, 1, 0, 0, 'Xerestrasza stop movement'),
(4042903, 0, 0, 0, 0, 2000005537, 'Xerestrasza third yell text'),
(4042903, 0, 16, 17493, 0, 0, 'Xerestrasza third yell sound'),
(4042903, 0, 1, 1, 0, 0, 'Xerestrasza third yell emote'),
(4042903, 7, 0, 0, 0, 2000005538, 'Xerestrasza forth yell text'),
(4042903, 7, 16, 17494, 0, 0, 'Xerestrasza forth yell sound'),
(4042903, 7, 1, 1, 0, 0, 'Xerestrasza forth yell emote'),
(4042903, 18, 0, 0, 0, 2000005539, 'Xerestrasza fifth yell text'),
(4042903, 18, 16, 17495, 0, 0, 'Xerestrasza fifth yell sound'),
(4042903, 18, 1, 1, 0, 0, 'Xerestrasza fifth yell emote'),
(4042903, 28, 0, 0, 0, 2000005540, 'Xerestrasza sixth yell text'),
(4042903, 28, 16, 17496, 0, 0, 'Xerestrasza sixth yell sound'),
(4042903, 28, 1, 1, 0, 0, 'Xerestrasza sixth yell emote'),
(4042903, 38, 0, 0, 0, 2000005541, 'Xerestrasza seventh yell text'),
(4042903, 38, 16, 17497, 0, 0, 'Xerestrasza seventh yell sound'),
(4042903, 38, 1, 1, 0, 0, 'Xerestrasza seventh yell emote'),
(4042903, 47, 0, 0, 0, 2000005542, 'Xerestrasza eigth yell text'),
(4042903, 47, 16, 17498, 0, 0, 'Xerestrasza eigth yell sound'),
(4042903, 47, 1, 5, 0, 0, 'Xerestrasza eigth yell emote'),
(4042903, 54, 29, 2, 1, 0, 'Xerestrasza set quest giver flag');

-- Saviana script target
DELETE FROM spell_script_target WHERE entry = 74455;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(74455, 1, 39747, 0);

-- Onyx Flamecaller linking
DELETE FROM creature_linking_template WHERE entry = 39814;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(39814, 724, 39746, 4112, 0);

-- Onyx Flamecaller - Data from YTDB
UPDATE creature_template SET difficulty_entry_1 = 39815, minlevel = 82, maxlevel = 82, minhealth = 202215, maxhealth = 202215, minmana = 125070, maxmana = 125070, armor = 10225, faction_A = 103, faction_H = 103,
 mindmg = 315, maxdmg = 473, attackpower = 118, dmg_multiplier = 83.2, baseattacktime = 1500, rangeattacktime = 1500, unit_flags = 32768, minrangedmg = 252, maxrangedmg = 378, rangedattackpower = 94 WHERE entry = 39814;

-- *** Halion ***
-- rotation focus script target
DELETE FROM spell_script_target WHERE entry = 74758;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(74758, 1, 40091, 0);

-- Halion linking
DELETE FROM creature_linking_template WHERE entry IN (40001, 40029, 40135, 40083, 40100, 40468, 40469, 40081, 40091, 40681, 40683, 40041, 40042, 40043, 40044, 40055);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(40001, 724, 39863, 4112, 0),
(40029, 724, 39863, 4112, 0),
(40135, 724, 39863, 4112, 0),
(40083, 724, 39863, 4112, 0),
(40100, 724, 39863, 4112, 0),
(40468, 724, 39863, 4112, 0),
(40469, 724, 39863, 4112, 0),
(40081, 724, 39863, 4112, 0),
(40091, 724, 39863, 4112, 0),
(40681, 724, 39863, 4112, 0),
(40683, 724, 39863, 4112, 0),
(40041, 724, 39863, 4112, 0),
(40042, 724, 39863, 4112, 0),
(40043, 724, 39863, 4112, 0),
(40044, 724, 39863, 4112, 0),
(40055, 724, 39863, 4112, 0);

-- Halion data
UPDATE creature_template SET minhealth = 11156000, maxhealth = 11156000, armor = 10627, faction_A = 14, faction_H = 14, rank = 3, mindmg = 468, maxdmg = 702, attackpower = 175, dmg_multiplier = 74.2, baseattacktime = 2000,
 rangeattacktime = 2000, unit_flags = 32832, minrangedmg = 374, maxrangedmg = 562, rangedattackpower = 140 WHERE entry = 39863;
UPDATE creature_template SET difficulty_entry_1 = 40143, difficulty_entry_2 = 40144, difficulty_entry_3 = 40145, minhealth = 11156000, maxhealth = 11156000, minlevel = 83, maxlevel = 83, faction_A = 14, faction_H = 14, rank = 3, mindmg = 468,
 maxdmg = 702, attackpower = 175, dmg_multiplier = 74.6, baseattacktime = 2000, rangeattacktime = 2000, unit_flags = 32832, minrangedmg = 374, maxrangedmg = 562, rangedattackpower = 140 WHERE entry = 40142;
UPDATE creature_template SET faction_A = 14, faction_H = 14, unit_flags = 33554688 WHERE entry = 40146;

-- Orbs
UPDATE creature_template SET minlevel = 80, maxlevel = 80, faction_A = 14, faction_H = 14, unit_flags = 33554688, vehicle_id = 718 WHERE entry = 40081;
UPDATE creature_template SET minlevel = 80, maxlevel = 80, faction_A = 14, faction_H = 14, unit_flags = 33554432 WHERE entry = 40100;
UPDATE creature_template SET minlevel = 80, maxlevel = 80, faction_A = 14, faction_H = 14, unit_flags = 33554432 WHERE entry = 40083;
UPDATE creature_template SET minlevel = 80, maxlevel = 80, faction_A = 14, faction_H = 14, unit_flags = 33554688 WHERE entry = 40091;
UPDATE gameobject_template SET faction = 35 WHERE entry = 202794;
UPDATE creature_template SET minlevel = 80, maxlevel = 80, faction_A = 14, faction_H = 14, unit_flags = 33554432 WHERE entry = 40029;
UPDATE creature_template SET minlevel = 83, maxlevel = 83, faction_A = 14, faction_H = 14, unit_flags = 33554432 WHERE entry = 40135;
UPDATE creature_template SET minlevel = 80, maxlevel = 80, faction_A = 14, faction_H = 14, unit_flags = 33554432 WHERE entry IN (40041, 40042, 40043, 40044, 40055);

-- ### Vehicles stuff ###
UPDATE creature_template SET InhabitType=InhabitType | 4 WHERE entry IN (28670, 30161);
DELETE FROM creature_template_spells WHERE entry in (17178, 28833, 28670, 28606, 28605, 28782);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
(17178,29992,0,0,0,0,0,0,0),
(28670,53114,0,53110,0,0,0,0,0),
(28833,52435,52576,0,0,52588,0,0,0),
(28606,52264,52268,0,0,0,0,0,0),
(28605,52264,52268,0,0,0,0,0,0),
(28782,52362,0,0,0,0,0,0,0);

-- Frostbrood vanquisher fly aura
DELETE FROM creature_template_addon WHERE entry = 28670;
INSERT INTO creature_template_addon (entry, auras) VALUES (28670, 53112);

-- quest 12687
-- riders are on vehicle accessory
DELETE FROM vehicle_accessory WHERE vehicle_entry = 28782;
INSERT INTO vehicle_accessory (vehicle_entry, seat, accessory_entry, comment) VALUES
(28782, 0, 28768, 'Acherus Deathcharger - Dark Rider of Acherus');
DELETE FROM spell_script_target WHERE entry = 52349;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(52349, 1, 28782);
DELETE FROM npc_spellclick_spells WHERE npc_entry = 28782;
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, quest_start_active, cast_flags) VALUES
(28782, 52349, 12687, 1, 2);
DELETE FROM dbscripts_on_spell WHERE id = 52361;
INSERT INTO dbscripts_on_spell (id, command, datalong, data_flags, comments) VALUES
(52361, 14, 52349, 6, 'remove Overtake aura'),
(52361, 14, 52693, 6, 'remove Realm of Shadows aura');

-- quest 12801
DELETE FROM creature_template_addon WHERE entry = 28821;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(28821, 0, 0, 0, 0, 0, 0, '54173');
DELETE FROM creature_template_addon WHERE entry = 29175;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(29175, 14338, 0, 0, 0, 0, 0, '');

DELETE FROM spell_script_target WHERE entry = 53210;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(53210, 1, 29177),
(53210, 1, 29176),
(53210, 1, 29180),
(53210, 1, 29182),
(53210, 1, 29181),
(53210, 1, 29178),
(53210, 1, 29179),
(53210, 1, 29174);
DELETE FROM spell_script_target WHERE entry = 53644;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(53644, 1,29206),
(53644, 1,29219),
(53644, 1,29186);

-- ### From Janisli ###
-- Conditions
DELETE FROM conditions WHERE condition_entry IN (871, 872, 873);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(871, 9, 9164, 0),
(872, 2, 22628, 1),
(873, -2, 871, 872);

-- Creature movement template
DELETE FROM creature_movement_template WHERE entry IN (16206, 16208, 16209);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(16206, 1, 6436.87, -6633.02, 107.432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16206, 2, 6435.63, -6620.86, 107.436, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16206, 3, 6429.88, -6618.29, 108.128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16206, 4, 6426.7, -6614.82, 110.159, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16206, 5, 6428.75, -6611.21, 111.905, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16206, 6, 6432.83, -6606.89, 112.126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16206, 7, 6431.51, -6597.97, 112.113, 5000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1.76377, 0, 0),
(16208, 1, 6647.83, -6344.92, 9.13345, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16208, 2, 6657.92, -6345.96, 15.3468, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16208, 3, 6661.58, -6342.65, 15.4309, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16208, 4, 6662.35, -6334.64, 20.8803, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16208, 5, 6662.63, -6331.85, 20.8924, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16208, 6, 6645.36, -6330.13, 30.263, 5000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 3.05496, 0, 0),
(16209, 1, 6290.21, -6366.1, 78.0195, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16209, 2, 6301.65, -6364.06, 78.0238, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16209, 3, 6305.82, -6360.2, 78.0782, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16209, 4, 6310.5, -6356.76, 80.6154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16209, 5, 6314.06, -6360.67, 82.6096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16209, 6, 6317.35, -6365.34, 82.7124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16209, 7, 6326.85, -6366.82, 82.709, 5000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Creature template gossips (YTDB)
UPDATE creature_template SET gossip_menu_id = 7182 WHERE entry = 16208;
UPDATE creature_template SET gossip_menu_id = 7185 WHERE entry = 16206;
UPDATE creature_template SET gossip_menu_id = 7177 WHERE entry = 16209;

-- Creature template addon
DELETE FROM creature_template_addon WHERE entry = 16208;
INSERT INTO creature_template_addon (entry, bytes1) VALUES
(16208, 7);

-- DBscript on gossip
DELETE FROM dbscripts_on_gossip WHERE id IN (7179, 7186, 7176);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(7179, 0, 0, 0, 0, 0, 0, 0, 2000005543, 0, 0, 0, 0, 0, 0, 0, 'Enith chat'),
(7179, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enith stand'),
(7179, 1, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enith emote'),
(7179, 5, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enith run 1'),
(7179, 5, 20, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enith run 2'),
(7179, 0, 29, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enith gossip flag remove'),
(7176, 0, 0, 0, 0, 0, 0, 0, 2000005544, 0, 0, 0, 0, 0, 0, 0, 'Vedoran chat'),
(7176, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Vedoran stand'),
(7176, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Vedoran emote'),
(7176, 0, 29, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Vedoran gossip flag remove'),
(7176, 5, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Vedoran prepare to run'),
(7176, 5, 20, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Vedoran run'),
(7186, 0, 0, 0, 0, 0, 0, 0, 2000005545, 0, 0, 0, 0, 0, 0, 0, 'Varnis chat'),
(7186, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Varnis stand'),
(7186, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Varnis emote'),
(7186, 0, 29, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Varnis gossip flag remove'),
(7186, 5, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Varnis prepare to run'),
(7186, 5, 20, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Varnis run'),
(7179, 10, 8, 16208, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Quest credit Enith'),
(7186, 10, 8, 16206, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Quest credit Varnis'),
(7176, 10, 8, 16209, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Quest credit Vedonar');

-- DBscript string
DELETE FROM db_script_string WHERE entry IN (2000005543, 2000005544, 2000005545);
INSERT INTO db_script_string (entry, content_default) VALUES
(2000005543, 'Thanks, I should\'ve never left Silverpine Forest.'),
(2000005544, 'You have my thanks!'),
(2000005545, 'Thank you. I thought I was going to die.');

-- Gossip menu
DELETE FROM gossip_menu WHERE entry IN (7182, 7179, 7185, 7186, 7177, 7176);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7176, 8456, 0, 873),
(7177, 8457, 0, 0),
(7179, 8460, 0, 873),
(7182, 8459, 0, 0),
(7185, 8461, 0, 0),
(7186, 8463, 0, 873);

-- Gossip menu options
DELETE FROM gossip_menu_option WHERE menu_id IN (7182, 7179, 7185, 7186, 7177, 7176);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(7176, 0, 0, 'You\'re free to go now. The way out is safe.', 1, 1, 0, 0, 7176, 0, 0, NULL, 873),
(7177, 0, 0, '<Administer the restorative draught.>', 1, 1, 7176, 0, 0, 0, 0, NULL, 873),
(7179, 0, 0, 'A bit ungrateful, aren\'t we?  The way out is clear, flee quickly!', 1, 1, 0, 0, 7179, 0, 0, NULL, 873),
(7182, 0, 0, '<Administer the restorative draught.>', 1, 1, 7179, 0, 0, 0, 0, NULL, 873),
(7185, 0, 0, '<Administer the restorative draught.>', 1, 1, 7186, 0, 0, 0, 0, NULL, 873),
(7186, 0, 0, 'You\'re free to go now. The way out is safe.', 1, 1, 0, 0, 7186, 0, 0, NULL, 873);

-- ### Auchenai Crypts ###
UPDATE creature_template SET MovementType = 0 WHERE entry = 18374;

-- ### Violet Hold ###
-- Erekem guards
DELETE FROM creature_linking_template WHERE entry IN (29395, 32228);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(29395, 608, 29315, 7, 0),
(32228, 608, 32226, 3, 0);

-- ### Pit of Saron ####
-- Garfrost related
DELETE FROM creature_linking_template WHERE entry = 36907;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(36907, 658, 36494, 1, 0);
UPDATE creature_template_addon SET auras = '68792' WHERE entry = 36494;
-- Pursuit whisper
DELETE FROM db_script_string WHERE entry = 2000005546;
INSERT INTO db_script_string (entry, content_default) VALUES
(2000005546, '%s is chasing you!');
DELETE FROM dbscripts_on_spell WHERE id = 68987;
INSERT INTO dbscripts_on_spell (id, command, datalong, dataint, comments) VALUES
(68987, 0, 5, 2000005546, 'ick - boss whisper pursuit');
-- Tyrannus intro mount
DELETE FROM vehicle_accessory WHERE vehicle_entry = 36794;
INSERT INTO vehicle_accessory (vehicle_entry, seat, accessory_entry, comment) VALUES
(36794, 0, 36658, 'Scourgelord Tyrannus - intro');
-- Misc mobs
DELETE FROM vehicle_accessory WHERE vehicle_entry = 36891;
INSERT INTO vehicle_accessory (vehicle_entry, seat, accessory_entry, comment) VALUES
(36891, 0, 31260, 'Iceborn Proto-Drake');
-- Tyrannus
DELETE FROM spell_script_target WHERE targetEntry IN (37581, 37577, 37578, 37579) AND entry = 70521;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(70521, 1, 37581),
(70521, 1, 37577),
(70521, 1, 37578),
(70521, 1, 37579);
DELETE FROM spell_script_target WHERE entry IN (70639, 70525);
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(70639, 1, 38189),
(70525, 1, 38188);
DELETE FROM creature_addon WHERE guid IN (
132182, 132183, 132184, 132185, 132187, 132188, 132190, 132191, 132192, 132194, 132195, 132196, 132197,
132198, 132200, 132202, 132203, 132204, 132205, 132207, 132210, 132211, 132212, 132213, 132232, 132234,
132235, 132237, 132239, 132241);

-- ### Achievements ###
-- Don't look up (PoS - heroic)
DELETE FROM achievement_criteria_requirement WHERE criteria_id = 12994 AND type = 12;
INSERT INTO achievement_criteria_requirement (criteria_id, type, value1, value2) VALUES
(12994, 12, 1, 0);
-- 4 horsemen 10 & 25 man
DELETE FROM achievement_criteria_requirement WHERE criteria_id = 7192;
INSERT INTO achievement_criteria_requirement (criteria_id, type, value1, value2) VALUES
(7192, 12, 0, 0);
DELETE FROM achievement_criteria_requirement WHERE criteria_id = 7193;
INSERT INTO achievement_criteria_requirement (criteria_id, type, value1, value2) VALUES
(7193, 12, 1, 0);
-- 4 horsemen - fall together 10 & 25 man
DELETE FROM achievement_criteria_requirement WHERE criteria_id = 7600;
INSERT INTO achievement_criteria_requirement (criteria_id, type, value1, value2) VALUES
(7600, 12, 0, 0),
(7600, 18, 0, 0);
DELETE FROM achievement_criteria_requirement WHERE criteria_id = 7601;
INSERT INTO achievement_criteria_requirement (criteria_id, type, value1, value2) VALUES
(7601, 12, 1, 0),
(7601, 18, 0, 0);
-- Ulduar - assembly of iron
DELETE FROM achievement_criteria_requirement WHERE criteria_id = 10578;
INSERT INTO achievement_criteria_requirement (criteria_id, type, value1, value2) VALUES
(10578, 12, 0, 0);
DELETE FROM achievement_criteria_requirement WHERE criteria_id = 10579;
INSERT INTO achievement_criteria_requirement (criteria_id, type, value1, value2) VALUES
(10579, 12, 1, 0);
-- Lightning Struck (HoL - heroic)
DELETE FROM achievement_criteria_requirement WHERE criteria_id = 6835 AND type IN (11, 18);
INSERT INTO achievement_criteria_requirement (criteria_id, type, value1, value2) VALUES
(6835, 18, 0, 0);
-- Brann spankin
DELETE FROM achievement_criteria_requirement WHERE criteria_id = 7590;
INSERT INTO achievement_criteria_requirement (criteria_id, type, value1, value2) VALUES
(7590, 12, 1, 0);

-- Sartharion special loot, 10m
DELETE FROM creature_loot_template WHERE entry = 28860 AND groupid IN (5, 6, 7);
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) VALUES
-- at least 1 drake
(28860, 43990, 0, 5, 1, 1, 739),
(28860, 43988, 0, 5, 1, 1, 739),
(28860, 43991, 0, 5, 1, 1, 739),
(28860, 43989, 0, 5, 1, 1, 739),
(28860, 43992, 0, 5, 1, 1, 739),
-- at least 2 drakes
(28860, 43995, 0, 6, 1, 1, 738),
(28860, 43998, 0, 6, 1, 1, 738),
(28860, 43994, 0, 6, 1, 1, 738),
(28860, 43996, 0, 6, 1, 1, 738),
(28860, 43993, 0, 6, 1, 1, 738),
-- 3 drakes
(28860, 43986, 0, 7, 1, 1, 736);

-- Sartharion special loot, 25m
DELETE FROM creature_loot_template WHERE entry = 31311 AND groupid IN (5, 6, 7);
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) VALUES
-- at least 1 drake
(31311, 44004, 0, 5, 1, 1, 739),
(31311, 44000, 0, 5, 1, 1, 739),
(31311, 44002, 0, 5, 1, 1, 739),
(31311, 44003, 0, 5, 1, 1, 739),
-- at least 2 drakes
(31311, 44007, 0, 6, 1, 1, 738),
(31311, 44006, 0, 6, 1, 1, 738),
(31311, 44005, 0, 6, 1, 1, 738),
(31311, 44011, 0, 6, 1, 1, 738),
(31311, 44008, 0, 6, 1, 1, 738),
-- 3 drakes
(31311, 43954, 0, 7, 1, 1, 736);
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


-- Nexus 70, Telestra'shere, should be GO_FLAG_NO_INTERACT
UPDATE gameobject_template SET flags = flags | 16 WHERE entry = 188526;

-- remove gender requirement from a quest-spell (quest 12498)
UPDATE spell_area SET gender = 2 WHERE spell = 50426;
-- Cooking quest 13571 - Fletcher's Lost and Found
DELETE FROM creature_questrelation WHERE quest = 13571;
INSERT INTO creature_questrelation (id, quest) VALUES
(32516, 13571);
DELETE FROM creature_involvedrelation WHERE quest = 13571;
INSERT INTO creature_involvedrelation (id, quest) VALUES
(32516, 13571);
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

-- Fix Ulduar, HoS Tribunal Encounter Chest (has GO_FLAG_NO_INTERACT, must be spawned)
UPDATE gameobject SET spawntimesecs = 86400 WHERE id IN (190586, 193996);

-- npc_spellclick_spells which control vehicles
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (
24418, 25743, 27587, 27714, 27850, 27881, 28094, 28312,
28319, 28605, 28606, 28607, 28670, 28833, 28887, 30236,
32627, 32629, 32633, 32640, 24083, 26523, 27626, 28710,
29579);
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, quest_start_active, quest_end, cast_flags) VALUES
(24418, 43768, 11390, 1, 11390, 1),
(24418, 43768, 11391, 1, 11391, 1),
(25743, 46260, 11879, 1, 11879, 1),
(27587, 49078, 12326, 1, 12326, 1),
(27714, 49584, 12457, 1, 12457, 1),
(27850, 60968, 0, 0, 0, 3),
(27881, 60968, 0, 0, 0, 1),
(28094, 60968, 0, 0, 0, 1),
(28312, 60968, 0, 0, 0, 1),
(28319, 60968, 0, 0, 0, 1),
(28605, 52263, 12680, 1, 12680, 1),
(28606, 52263, 12680, 1, 12680, 1),
(28607, 52263, 12680, 1, 12680, 1),
(28670, 52196, 0, 0, 0, 0),
(28833, 52447, 12701, 1, 12701, 1),
(28887, 52447, 12701, 1, 12701, 1),
(30236, 57573, 0, 0, 0, 1),
(32627, 60968, 0, 0, 0, 1),
(32629, 60968, 0, 0, 0, 1),
(32633, 61424, 0, 0, 0, 0),
(32640, 61424, 0, 0, 0, 0),
(24083, 55074, 0, 0, 0, 1),
(26523, 48296, 12218, 1, 12218, 1),
(27626, 49138, 0, 0, 0, 1),
(28710, 46598, 0, 0, 0, 1),
(29579, 46598, 0, 0, 0, 1);
-- WOTLK Achievements
DELETE FROM conditions WHERE condition_entry IN (764, 765, 766, 771, 793); 
 INSERT INTO conditions (condition_entry, TYPE, value1, value2) VALUES
(764, 20, 1681, 0), -- has achievement The Loremaster
(765, 20, 1682, 0), -- has achievement The Loremaster
(766, 20, 45, 0), -- has achievement Explore Northrend --> Tabard of the Explorer
(771, 20, 1021, 0), -- has achievement Twenty-Five Tabards --> Tabard of the Achiever
(793, 20, 876, 0); -- has achievement Brutally Dedicated

-- thx to Reamer
DELETE FROM spell_script_target WHERE entry IN (63820, 64425, 64620);
INSERT INTO spell_script_target (entry, TYPE, targetEntry) VALUES
(63820, 1, 33856),
(64425, 1, 33856),
(64620, 1, 33856);

-- NeatElves, slightly adapted for UDB, text corrected
UPDATE creature_template SET gossipmenuid = 10638 WHERE entry = 35364;
DELETE FROM conditions WHERE condition_entry IN (743, 744);
INSERT INTO conditions (condition_entry, TYPE, value1, value2) VALUES
(743, 34, 1, 0),
(744, 34, 0, 0);
DELETE FROM dbscripts_on_gossip WHERE id IN (1063801, 1063802);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES
(1063801, 0, 33, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'stop XP USER'),
(1063802, 0, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'start XP USER');
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 1063801, condition_id = 743 WHERE menu_id = 10638 AND id = 0;
DELETE FROM gossip_menu_option WHERE menu_id = 10638 AND id = 1;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(10638, 1, 16, 'I wish to start gaining experience again.', 1, 1, -1, 0, 1063802, 0, 100000, 'Are you certain you wish to start gaining experience again?', 744);

DELETE FROM gossip_menu_option WHERE menu_id = 9832 AND id != 0;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(9832, 1, 0, 'I\'ve lost my Tabard of Blood Knight.', 1, 1, -1, 0, 983201, 0, 0, NULL, 781),
(9832, 2, 0, 'I\'ve lost my Tabard of the Hand.', 1, 1, -1, 0, 983202, 0, 0, NULL, 782),
(9832, 3, 0, 'I\'ve lost my Tabard of the Protector.', 1, 1, -1, 0, 983203, 0, 0, NULL, 783),
(9832, 4, 0, 'I\'ve lost my Green Trophy Tabard of the Illidari.', 1, 1, -1, 0, 983204, 0, 0, NULL, 795),
(9832, 5, 0, 'I\'ve lost my Purple Trophy Tabard of the Illidari.', 1, 1, -1, 0, 983205, 0, 0, NULL, 795),
(9832, 6, 0, 'I\'ve lost my Tabard of Summer Skies.', 1, 1, -1, 0, 983206, 0, 0, NULL, 796),
(9832, 7, 0, 'I\'ve lost my Tabard of Summer Flames.', 1, 1, -1, 0, 983207, 0, 0, NULL, 797),
(9832, 12, 0, 'I\'ve lost my Arathor Battle Tabard.', 1, 1, -1, 0, 983212, 0, 0, NULL, 802),
(9832, 13, 0, 'I\'ve lost my Battle Tabard of the Defilers.', 1, 1, -1, 0, 983213, 0, 0, NULL, 805);

DELETE FROM dbscripts_on_gossip WHERE id IN (983201,983202,983203,983204,983205,983206,983207,983208,983209,983210,983211,983212,983213);
INSERT INTO dbscripts_on_gossip (id, command, datalong, comments) VALUES
(983206, 15, 62768, 'Create Tabard of Summer Skies'),
(983207, 15, 62769, 'Create Tabard of Summer Flames'),
(983204, 15, 54977, 'Create Green Trophy Tabard of the Illidari'),
(983205, 15, 54982, 'Create Purple Trophy Tabard of the Illidari'),
(983201, 15, 54974, 'Create Blood Knight Tabard'),
(983202, 15, 54976, 'Create Tabard of the Hand'),
(983203, 15, 55008, 'Create Tabard of the Protector'),
(983212, 15, 54971, 'Create Arathor Battle Tabard'),
(983213, 15, 54973, 'Create Battle Tabard of the Defilers');
-- UPDATE creature_template SET ScriptName='' WHERE entry IN (384,1261,1460,2357,3362,3685,4730,4731,4885,7952,7955,16264,17584);

-- Pure guesswork, but big mobs clearly need a way bigger spawndist than 5
UPDATE creature SET spawndist = 20 WHERE id = 29753 AND MovementType = 1;

-- q57852
DELETE FROM dbscripts_on_spell WHERE id = 57852;
INSERT INTO dbscripts_on_spell (id, command, comments) VALUES (57852, 8, 'quest credit q13119');
DELETE FROM creature where id IN (30742, 30744, 30745, 30950);
INSERT INTO creature(guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(121091, 30742, 571, 1, 0, 0, 6470.42, 3139.73, 659.273, 2.70526, 300, 0, 0, 12600, 3994, 0, 0),
(121122, 30744, 571, 1, 0, 0, 6431.48, 3148.91, 659.196, 5.86431, 300, 0, 0, 12600, 3994, 0, 0),
(121130, 30745, 571, 1, 0, 0, 6469.17, 3071.56, 659.218, 1.55334, 300, 0, 0, 12600, 3994, 0, 0),
(124617, 30950, 571, 1, 0, 0, 6436.78, 3100.7, 658.905, 5.86431, 300, 0, 0, 12600, 3994, 0, 0);

-- q11607
DELETE FROM item_required_target WHERE entry = 34711;
INSERT INTO item_required_target VALUES
(34711, 1, 25321),
(34711, 1, 25322);
DELETE FROM dbscripts_on_spell WHERE id = 45504;
INSERT INTO dbscripts_on_spell (id, command, comments) VALUES (45504, 8, 'quest credit q12094');

-- Port from ytdb, http://www.wowhead.com/quest=12240
DELETE FROM dbscripts_on_event WHERE id = 17868;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, x, y, z, o, comments) VALUES
(17868, 5, 10, 27238, 600000, 2797.68, -201.873, 139.161, 3.5791, 'Summon Npc for quest 12240');

DELETE FROM conditions WHERE condition_entry IN (717, 718);
INSERT INTO conditions (condition_entry, TYPE, value1, value2) VALUES
(717, 31, 715, 0),
(718, 31, 716, 0);

-- Kor'kron Overseer - missing in undercity - ADDED WOTLK
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(140585,36213,0,1,1,0,2009,1446.82,415.778,-84.9914,4.05085,180,0,0,15952,0,0,0);
-- Kor'kron Overseer - missing in undercity - ADDED WOTLK
INSERT INTO creature (guid,id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140768,36213,0,1,1,0,2009,1418.86,388.783,-84.9909,0.942079,180,0,0,15952,0,0,0);
-- Baelog's Chest should be targetable/lootable. (sniff) (WOTLK)
UPDATE gameobject_template SET flags = 0 WHERE entry = 123329;
-- ---------------
-- Various
-- ---------------
-- Fix DK quest spell click
DELETE FROM npc_spellclick_spells where npc_entry IN (29708,28782);
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, quest_start_active, quest_end, cast_flags,condition_id) VALUES 
(28782, 52349, 12687, 1, 12687, 1, 0),
(29708, 55028, 12856, 1, 12856, 1, 0);
-- Vehicle data fix
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, MinLevelHealth = 12600, MaxLevelHealth = 12600, MinLevelMana = 11982, MaxLevelMana = 11982, Armor = 9633 WHERE entry = 28999;
-- Icefang
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, MinLevelHealth = 63000, MaxLevelHealth = 63000, Armor = 9730, MovementType = 2 WHERE entry = 29602;
DELETE FROM creature_movement_template WHERE entry IN (29602);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id, waittime) VALUES
(29602,1, 7085.600, -1941.878, 773.144, 2960201, 1000),
(29602,2, 7073.979, -1964.498, 768.656, 0, 0),
(29602,3, 7082.235, -1993.693, 767.976, 0, 0),
(29602,4, 7089.624, -2024.012, 766.308, 0, 0),
(29602,5, 7102.195, -2072.441, 763.672, 0, 0),
(29602,6, 7116.834, -2127.098, 759.205, 0, 0),
(29602,7, 7140.550, -2161.849, 761.036, 0, 0),
(29602,8, 7170.924, -2192.156, 761.323, 0, 0),
(29602,9, 7219.515, -2226.946, 759.077, 0, 0),
(29602,10,7280.996, -2271.891, 756.243, 0, 0),
(29602,11,7335.085, -2294.143, 755.844, 0, 0),
(29602,12,7385.635, -2314.972, 757.249, 0, 0),
(29602,13,7401.934, -2346.189, 755.022, 0, 0),
(29602,14,7407.586, -2379.071, 753.156, 0, 0),
(29602,15,7385.282, -2407.132, 748.946, 0, 0),
(29602,16,7344.961, -2407.402, 750.123, 0, 0),
(29602,17,7317.786, -2377.497, 749.030, 0, 0),
(29602,18,7297.351, -2348.611, 749.586, 0, 0),
(29602,19,7271.876, -2316.258, 752.514, 0, 0),
(29602,20,7243.617, -2296.425, 753.760, 0, 0),
(29602,21,7202.361, -2270.390, 755.781, 0, 0),
(29602,22,7170.279, -2249.533, 758.963, 0, 0),
(29602,23,7136.257, -2227.768, 758.618, 0, 0),
(29602,24,7117.583, -2202.440, 758.786, 0, 0),
(29602,25,7096.870, -2167.813, 758.943, 0, 0),
(29602,26,7083.056, -2130.481, 758.719, 0, 0),
(29602,27,7078.193, -2078.994, 759.237, 0, 0),
(29602,28,7105.447, -2028.474, 768.562, 0, 0),
(29602,29,7105.573, -1999.694, 771.150, 2960228, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2960201, 2960228);
INSERT INTO dbscripts_on_creature_movement (id, command, datalong, comments) VALUES
(2960201, 25, 1, 'set run on'),
(2960228, 14, 54908, 'remove aura Riding Icefang');
DELETE FROM spell_script_target WHERE entry = 54798;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(54798,1,29358,0),
(54798,1,29351,0);
DELETE FROM dbscripts_on_spell WHERE id IN (54799,54804);
INSERT INTO dbscripts_on_spell (id, command, datalong, data_flags, comments) VALUES
(54804, 8, 29595, 0, 'kill credit for quest 12851'),
(54799, 8, 29597, 0, 'kill credit for quest 12851');
DELETE FROM vehicle_accessory WHERE vehicle_entry IN (30174,29500);
INSERT INTO vehicle_accessory (vehicle_entry, seat, accessory_entry, comment) VALUES
(29500, 0, 29498, 'Brunnhildar Warmaiden'),
(30174, 0, 30175, 'Hyldsmeet Bear Rider');
-- quest 12981
DELETE FROM creature_template_addon WHERE entry = 30169;
INSERT INTO creature_template_addon (entry, auras) VALUES (30169, 56118);
DELETE FROM spell_script_target WHERE entry = 56099;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(56099,1,30169,0);
-- quest 11590
DELETE FROM spell_script_target WHERE entry IN (45630,45651,45735);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(45651,1,25474,0),
(45630,1,25474,0),
(45735,1,25474,0);
-- cast at quest completion - maybe there are some missing cinematics here.
DELETE FROM dbscripts_on_spell WHERE id IN (45651);
INSERT INTO dbscripts_on_spell (id, command, datalong, data_flags, comments) VALUES
(45651, 18, 0, 0, 'despawn captured beryl sorcerer');
-- quests 11919, 11940
-- quest ending
DELETE FROM db_script_string WHERE entry IN (2000005623,2000005624,2000005625,2000005626);
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000005623,'Easy now, drakeling.',0,0,0,0,'Raelorasz - say_drake_1'),
(2000005624,'A wonderful specimen.',0,0,0,0,'Raelorasz - say_drake_2'),
(2000005625,'Sleep now, young one....',0,0,0,0,'Raelorasz - say_drake_3'),
(2000005626,'Yes, this one should advance my studies nicely....',0,0,0,0,'say_drake_4');
DELETE FROM dbscripts_on_spell WHERE id IN (46702,46693);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, data_flags, dataint, dataint2, dataint3, comments) VALUES
(46702, 1, 15, 46704, 6, 0, 0, 0, 'cast Raelorasz Fireball'),
(46702, 1, 0, 0, 2, 2000005623, 2000005624, 2000005625, 'say text'),
(46702, 5, 0, 0, 2, 2000005626, 0, 0, 'say text'),
(46693, 0, 14, 46691, 2, 0, 0, 0, 'remove Drake Hatchling Subdued aura');
-- quest 11154
DELETE FROM spell_script_target WHERE entry IN (43307);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(43307,1,24230,0);
-- guesswork - to be checked!
UPDATE creature_template SET UnitFlags = UnitFlags|33554432 WHERE entry = 24230;
-- quest 11889
DELETE FROM spell_script_target WHERE entry IN (45863);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(45863,1,24771,0);
-- quest 11645 and 11468
DELETE FROM item_required_target WHERE entry IN (34111,34121);
INSERT INTO item_required_target (entry, type, targetEntry) VALUES
(34111, 1, 24746),
(34121, 1, 24747);
-- quest 11470
UPDATE creature_template SET InhabitType = InhabitType|4 WHERE entry = 24783;
DELETE FROM creature_template_spells WHERE entry IN (24783);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3,  spell4, spell5, spell6, spell7, spell8) VALUES
(24783, 44422, 44423, 44424, 0, 0, 0, 0, 0);
-- quest 13284, 13301
DELETE FROM creature_linking_template WHERE entry IN (31832, 31701);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(31832, 571, 31833, 131, 12),
(31701, 571, 31737, 131, 12);
-- quest 13309
UPDATE creature SET MovementType = 0 WHERE id = 31881;
DELETE FROM npc_spellclick_spells where npc_entry IN (32227, 31884);
-- INSERT INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, quest_start_active, quest_end, cast_flags,condition_id) VALUES
-- todo: add spell click and creature template spells for these
DELETE FROM creature_template_spells WHERE entry IN (32227, 31884);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3,  spell4, spell5, spell6, spell7, spell8) VALUES
(32227,59880, 0, 0, 0, 0, 0, 0, 0),
(31884,59880, 0, 0, 0, 0, 0, 0, 0);
-- quest 12082
UPDATE gameobject SET state = 0 WHERE id IN (188480);
UPDATE creature_template_addon SET auras = NULL WHERE entry = 26867;
UPDATE creature_template SET FactionAlliance = 14, FactionHorde = 14 WHERE entry IN (26871,26865);
-- quest 12255 and 12259
DELETE FROM conditions WHERE condition_entry IN (946, 947);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(946, 9, 12255, 0),
(947, 9, 12259, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 9512;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id,  npc_option_npcflag, action_menu_id, action_poi_id, 
action_script_id, box_coded, box_money, box_text, condition_id) VALUES 
(9512, 0, 0, 'Unchain and control Flamebringer.', 1, 1, -1, 0, 951201, 0, 0, NULL, 946),
(9512, 1, 0, 'Unchain and control Flamebringer.', 1, 1, -1, 0, 951201, 0, 0, NULL, 947);
DELETE FROM dbscripts_on_gossip WHERE id = 951201;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry,  search_radius, data_flags, dataint, dataint2, 
dataint3, dataint4, x, y, z, o, comments) VALUES 
(951201, 0, 15, 48595, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Summon Flamebringer'),
(951201, 1, 15, 48600, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Ride Flamebringer'),
(951201, 1, 15, 48602, 0, 27292, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Flight');
UPDATE creature_template SET InhabitType = InhabitType|4 WHERE entry = 27292;
-- quest 12644
UPDATE gameobject SET spawntimesecs = -180 WHERE id = 190643;
-- quest 11476
DELETE FROM conditions WHERE condition_entry IN (948, 949, 950);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(948, 9, 11476, 1),
(949, 2, 35813, 1),
(950, -1, 948, 949);
DELETE FROM npc_spellclick_spells WHERE npc_entry = 26503;
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, quest_start_active, quest_end, cast_flags,condition_id) VALUES
(26503, 0, 0, 0, 0, 0, 950);
-- quest 12075
DELETE FROM conditions WHERE condition_entry IN (951, 952, 953);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(951, 9, 12075, 1),
(952, 32, 31261, 0),
(953, -1, 951, 952);
DELETE FROM npc_spellclick_spells WHERE npc_entry = 26809;
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, quest_start_active, quest_end, cast_flags,condition_id) VALUES
(26809, 0, 0, 0, 0, 0, 953);
-- non power regen creatures
UPDATE creature_template SET RegenerateStats =  RegenerateStats&~2 where entry IN (37813,38582,38583,30790,15340,15262,33167,33109,36838,37672);
-- error fix
UPDATE creature SET spawndist = 0 WHERE id = 31881;
DELETE FROM creature_addon WHERE guid IN (120880,120881,120882,120883,120884,120903,120904,120905,120906,120907);
-- Missing vehicle data (YTDB)
DELETE FROM vehicle_accessory WHERE vehicle_entry IN (40081);
INSERT INTO vehicle_accessory (vehicle_entry, seat, accessory_entry, comment) VALUES
(40081, 0, 40083, 'Orb Carrier'),
(40081, 1, 40100, 'Orb Carrier');
-- missing vehicle spells (YTDB)
DELETE FROM creature_template_spells WHERE entry IN (25334,25596,25743,26472,26523,26813,27061,27213,27258,27270,27292,27354,27496,27587,27629,27692,27714,27755,27756,27894,27992,27993,27996,28115,28222,28366,28605,28606,28607
,28670,28781,28782,28833,28985,28999,29005,29414,29602,29677,29709,29884,29918,30124,30161,30228);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3,  spell4, spell5, spell6, spell7, spell8) VALUES
(25334, 50672, 45750, 50677, 47849, 47962, 0, 0, 0),
(25596, 45877, 0, 0, 0, 0, 0, 0, 0),
(25743, 46317, 46315, 46316, 0, 0, 0, 0, 0),
(26472, 49285, 29577, 0, 0, 0, 0, 0, 0),
(26523, 48211, 0, 0, 0, 0, 0, 0, 0),
(26813, 63507, 47434, 47454, 0, 0, 0, 0, 0),
(27061, 47966, 47921, 47938, 47939, 0, 0, 0, 0),
(27213, 48297, 0, 0, 0, 0, 0, 0, 0),
(27258, 48363, 48397, 54170, 0, 0, 0, 0, 0),
(27270, 49238, 0, 0, 0, 0, 0, 0, 0),
(27292, 48619, 48620, 52812, 0, 0, 0, 0, 0),
(27354, 48558, 48604, 48548, 48610, 0, 0, 0, 0),
(27496, 48984, 49063, 74608, 49025, 0, 0, 0, 0),
(27587, 49315, 49333, 49109, 49081, 0, 0, 0, 0),
(27629, 49161, 49243, 49263, 49264, 49367, 0, 0, 0),
(27692, 50328, 50341, 50344, 0, 0, 53389, 0, 0),
(27714, 49190, 49550, 0, 0, 0, 0, 0, 0),
(27755, 49840, 49838, 49592, 0, 0, 53389, 0, 0),
(27756, 50232, 50240, 50253, 0, 0, 53389, 0, 0),
(27894, 49872, 0, 0, 0, 0, 0, 0, 0),
(27992, 43997, 43986, 0, 0, 0, 0, 0, 0),
(27993, 43997, 43986, 0, 0, 0, 0, 0, 0),
(27996, 55987, 50430, 50348, 0, 0, 0, 0, 0),
(28115, 52331, 52358, 53032, 0, 0, 52321, 0, 0),
(28222, 50978, 50980, 50985, 50983, 54166, 0, 0, 0),
(28366, 51421, 0, 0, 0, 0, 0, 0, 0),
(28605, 52264, 52268, 0, 0, 0, 0, 0, 0),
(28606, 52264, 52268, 0, 0, 0, 0, 0, 0),
(28607, 52264, 52268, 0, 0, 0, 0, 0, 0),
(28670, 53114, 0, 53110, 0, 0, 0, 0, 0),
(28781, 52338, 60206, 0, 0, 0, 0, 0, 0),
(28782, 52362, 0, 0, 0, 0, 0, 0, 0),
(28833, 52435, 52576, 0, 0, 52588, 0, 0, 0),
(28985, 61374, 52870, 52864, 0, 0, 0, 0, 0),
(28999, 61375, 61376, 52862, 52864, 0, 0, 0, 0),
(29005, 61380, 47911, 0, 0, 0, 0, 0, 0),
(29414, 48766, 54469, 54467, 55214, 54422, 0, 0, 0),
(29602, 54897, 54907, 0, 0, 0, 0, 0, 0),
(29677, 54997, 54996, 0, 0, 0, 0, 0, 0),
(29709, 55046, 0, 0, 0, 0, 0, 0, 0),
(29884, 55426, 55429, 55516, 55421, 0, 0, 0, 0),
(29918, 0, 0, 0, 54459, 54458, 54460, 0, 0),
(30124, 56750, 56753, 0, 0, 0, 0, 0, 0),
(30161, 56091, 56092, 57090, 57143, 57108, 57092, 0, 0),
(30228, 56683, 56684, 56712, 0, 0, 0, 0, 0);
DELETE FROM creature_template_spells WHERE entry IN (30337,30645,30895,31110,31157,31784,31830,32535,33217,33316,33317,33318,33319,33320,33321,33322,33323,33324,33531,33782,33844,33845,34045,34775,34776,34777,34778,34793,34802
,34929,34935,34944,35069,35273,35644,36355,36356,36557,36558,36559,36838,37672,27881,28312,32627,28319,32629,28094);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3,  spell4, spell5, spell6, spell7, spell8) VALUES
(30337, 56585, 0, 56570, 0, 0, 0, 0, 0),
(30645, 57643, 57652, 57665, 57668, 0, 0, 0, 0),
(30895, 57882, 58203, 58282, 58283, 0, 0, 0, 0),
(31110, 58541, 58544, 58543, 58562, 58563, 58658, 0, 0),
(31157, 59234, 0, 0, 0, 0, 0, 0, 0),
(31784, 4338, 4342, 4336, 0, 0, 0, 0, 0),
(31830, 59733, 8204, 59737, 0, 0, 0, 0, 0),
(32535, 56091, 56092, 57090, 57143, 57108, 57403, 0, 0),
(33217, 62544, 62575, 62960, 62552, 64077, 62863, 63034, 0),
(33316, 62544, 62575, 62960, 62552, 64077, 62863, 63034, 0),
(33317, 62544, 62575, 62960, 62552, 64077, 62863, 63034, 0),
(33318, 62544, 62575, 62960, 62552, 64077, 62863, 63034, 0),
(33319, 62544, 62575, 62960, 62552, 64077, 62863, 63034, 0),
(33320, 62544, 62575, 62960, 62552, 64077, 62863, 63034, 0),
(33321, 62544, 62575, 62960, 62552, 64077, 62863, 63034, 0),
(33322, 62544, 62575, 62960, 62552, 64077, 62863, 63034, 0),
(33323, 62544, 62575, 62960, 62552, 64077, 62863, 63034, 0),
(33324, 62544, 62575, 62960, 62552, 64077, 62863, 63034, 0),
(33531, 64588, 64595, 62563, 62552, 64077, 0, 0, 0),
(33782, 62544, 62575, 62960, 62552, 64077, 62863, 63034, 0),
(33844, 62544, 62575, 62960, 62552, 64077, 62863, 63034, 0),
(33845, 62544, 62575, 62960, 62552, 64077, 62863, 63034, 0),
(34045, 62974, 62286, 62299, 64660, 0, 0, 0, 0),
(34775, 67440, 67441, 0, 0, 0, 0, 0, 0),
(34776, 67796, 67797, 0, 0, 0, 0, 0, 0),
(34777, 67462, 69505, 0, 0, 0, 0, 0, 0),
(34778, 68832, 0, 0, 0, 0, 0, 0, 0),
(34793, 66218, 66296, 0, 0, 0, 0, 0, 68362),
(34802, 66456, 67195, 0, 0, 0, 0, 0, 0),
(34929, 66518, 0, 0, 0, 0, 0, 0, 0),
(34935, 66529, 0, 0, 0, 0, 0, 0, 0),
(34944, 68170, 66541, 0, 0, 0, 0, 0, 0),
(35069, 67796, 67797, 0, 0, 0, 0, 0, 0),
(35273, 67034, 67195, 0, 0, 0, 0, 0, 0),
(35644, 68505, 62575, 68282, 66482, 0, 0, 0, 0),
(36355, 67462, 69505, 0, 0, 0, 0, 0, 0),
(36356, 68832, 0, 0, 0, 0, 0, 0, 0),
(36557, 68505, 62575, 68282, 66482, 0, 0, 0, 0),
(36558, 68505, 62575, 68282, 66482, 0, 0, 0, 0),
(36559, 68505, 62575, 68282, 66482, 0, 0, 0, 0),
(36838, 69399, 70175, 0, 0, 0, 0, 0, 0),
(37672, 70360, 70539, 70542, 0, 0, 71516, 0, 0),
-- wintergrasp vehicles
(27881, 57606, 50989, 0, 0, 0, 0, 0, 0),
(28094, 57618, 54107, 0, 0, 0, 0, 0, 0),
(28312, 54109, 0, 0, 0, 0, 0, 0, 0),
(32627, 51678, 0, 0, 0, 0, 0, 0, 0),
(28319, 57609, 0, 0, 0, 0, 0, 0, 0),
(32629, 57609, 0, 0, 0, 0, 0, 0, 0);
-- ---------------
-- Neatelves
-- ---------------
-- quests 12213, 12220
DELETE FROM dbscripts_on_spell WHERE id = 48218;
INSERT INTO dbscripts_on_spell (id, command, comments) VALUES
(48218, 8, 'create from quest_template');
-- Tailor (by Neatelves)
-- Conditions (start condition entry from 921) - updated for UDB
DELETE FROM conditions WHERE condition_entry IN (921,922,923,924,925,926,927,928,929,930,931,932,933,934,935,936,937,938,939,940);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(921, 29, 197, 1), -- has no tailor skill
(922, 17, 26797, 0), -- has spellfire tailor
(923, 17, 26798, 0), -- has mooncloth tailor
(924, 17, 26801, 0), -- has shadoweave tailor
(925, 8, 10832, 0), -- awarded quest Spellfire Tailor
(926, 8, 10831, 0), -- awarded quest Mooncloth Tailor
(927, 8, 10833, 0), -- awarded quest Shadoweave Tailor
(928, 7, 197, 350), -- has tailor of min 350
(929, 15, 60, 1), -- has at least lvl 60
(930, -2, 925, 926), -- Spellfire tailor OR Mooncloth tailor quests awarded
(931, -2, 927, 930), -- Spellfire tailor OR Mooncloth tailor OR Shadoweave quests awarded
(932, -1, 928, 929), -- has tailor of 350 AND lvl 60
(933, -1, 931, 932), -- (tailor of 350 AND lvl 60) AND (any tailor quests awarded)
(934, -2, 922, 923), -- has spellfire tailor spell OR mooncloth tailor spell
(935, -2, 924, 934), -- has spellfire tailor spell OR mooncloth tailor spell OR shadoweave tailor spell
(936, -3, 935, 0), -- has NOT (spellfire tailor spell OR mooncloth tailor spell OR shadoweave tailor spell)
(937, -1, 933, 936), -- has (level AND skill AND quests) AND (has NOT tailor spells)
(938, -1, 922, 933), -- has (level AND skill AND quests) AND has spellfire tailor
(939, -1, 923, 933), -- has (level AND skill AND quests) AND has mooncloth tailor
(940, -1, 924, 933); -- has (level AND skill AND quests) AND has shadoweave tailor
-- gossip menus
DELETE FROM gossip_menu WHERE entry IN (8530,8531,8532);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8530, 10669, 0, 0),
(8530, 10670, 0, 921),
(8531, 10671, 0, 0),
(8531, 10672, 0, 921),
(8532, 10673, 0, 0),
(8532, 10674, 0, 921);
-- gossip menu options
DELETE FROM gossip_menu_option WHERE menu_id IN (8530,8531,8532);
REPLACE INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_poi_id,action_script_id,box_coded,box_money,box_text,condition_id) VALUES
(8530, 0, 1, 'Show me what you have for sale.', 3, 128, 0, 0, 0, 0, 0, NULL, 0),
(8530, 1, 0, 'Please teach me how to become a Mooncloth tailoring.', 1, 1, -1, 0, 853001, 0, 0, NULL, 937),
(8530, 2, 0, 'I wish to unlearn Mooncloth Tailoring.', 1, 1, -1, 0, 853002, 0, 1500000, 'Do you really want to unlearn your tailoring specialty and lose all associated recipes?', 939),
(8531, 0, 1, 'Show me what you have for sale.', 3, 128, 0, 0, 0, 0, 0, NULL, 0),
(8531, 1, 0, 'Please teach me how to become a Spellfire tailoring.', 1, 1, -1, 0, 853101, 0, 0, NULL, 937),
(8531, 2, 0, 'I wish to unlearn Spellfire Tailoring.', 1, 1, -1, 0, 853102, 0, 1500000, 'Do you really want to unlearn your tailoring specialty and lose all associated recipes?', 938),
(8532, 0, 1, 'Show me what you have for sale.', 3, 128, 0, 0, 0, 0, 0, NULL, 0),
(8532, 1, 0, 'Please teach me how to become a Shadoweave tailoring.', 1, 1, -1, 0, 853201, 0, 0, NULL, 937),
(8532, 2, 0, 'I wish to unlearn Shadoweave Tailoring.', 1, 1, -1, 0, 853202, 0, 1500000, 'Do you really want to unlearn your tailoring specialty and lose all associated recipes?', 940);
-- gossip scripts
DELETE FROM dbscripts_on_gossip WHERE id IN (853101,853102,853001,853002,853201,853202);
INSERT INTO dbscripts_on_gossip (id,delay,command,datalong,comments) VALUES
(853101, 0, 15, 26796, 'cast Spellfire Tailoring'),
(853001, 0, 15, 26799, 'cast Mooncloth Tailoring'),
(853201, 0, 15, 26800, 'cast Shadoweave Tailoring'),
(853102, 0, 15, 41299, 'cast Unlearn Spellfire Tailoring'),
(853002, 0, 15, 41558, 'cast Unlearn Mooncloth Tailoring'),
(853202, 0, 15, 41559, 'cast Unlearn Shadoweave Tailoring');
-- npc_spellclick_spells for one condition of cmangos [12641] -- Author. NeatElves
REPLACE INTO conditions (condition_entry, type, value1, value2) VALUES
(964, 1, 63146, 0);
REPLACE INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, quest_start_active, quest_end, cast_flags, condition_id) VALUES
(33498, 63125, 0, 0, 0, 1, 964);
-- DeathGuard Bartrand
UPDATE creature SET spawndist = 1, MovementType = 1 WHERE guid = 28498;
-- Mindless Zombie
UPDATE creature SET position_x = 1900.229, position_y = 1551.08, position_z = 88.96, orientation = 5.97 WHERE guid = 44961;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 44961;
DELETE FROM creature_movement WHERE id = 44961;
INSERT INTO creature_movement VALUES
(44961,1,1900.229248,1551.080688,88.962784,40000,0,0,0,0,0,0,0,0,0,5.972022,0,0),
(44961,2,1906.845459,1549.275757,88.963142,0,0,0,0,0,0,0,0,0,0,0.059717,0,0),
(44961,3,1918.237671,1550.205078,86.896423,0,0,0,0,0,0,0,0,0,0,1.092514,0,0),
(44961,4,1921.960083,1559.946167,86.194336,0,0,0,0,0,0,0,0,0,0,0.815268,0,0),
(44961,5,1934.780640,1577.855835,82.626656,40000,0,0,0,0,0,0,0,0,0,0.907945,0,0),
(44961,6,1915.648682,1587.774658,84.535027,0,0,0,0,0,0,0,0,0,0,3.187170,0,0),
(44961,7,1889.429932,1586.552246,88.860100,4000,150101,0,0,0,0,0,0,0,0,2.765410,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 150101;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(150101,0,26,0,0,1736,20,0x01,0,0,0,0,0,0,0,0,''),
(150101,1,22,21,0x01,0,0,0,0,0,0,0,0,0,0,0,'');
-- Disidra Stormglory c.32718
UPDATE creature_movement SET script_id = 3271801, emote = 0 WHERE id = 115281 AND point = 13;
DELETE FROM dbscripts_on_creature_movement WHERE id = 3271801; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3271801,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Dread Crew#1 c.28052
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 86277 AND point = 1;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 86277 AND point = 3;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 86277 AND point = 5;
UPDATE creature_movement SET script_id = 2805203, emote = 0 WHERE id = 86277 AND point = 6;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 86277 AND point = 7;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 86277 AND point = 9;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 86277 AND point = 11;
UPDATE creature_movement SET script_id = 2805205, spell = 0 WHERE id = 86277 AND point = 12;
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2805201 AND 2805205; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2805201,1,1,10,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2805201,11,1,10,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2805202,1,1,7,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2805203,1,1,4,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2805204,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2805204,5,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2805205,1,15,11544,0,0,0,0,0,0,0,0,0,0,0,0,'cast 11544');
-- Dread Crew#2 c.28052
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 77646 AND point = 2;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 77646 AND point = 4;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 77646 AND point = 5;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 77646 AND point = 7;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 77646 AND point = 8;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 77646 AND point = 9;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 77646 AND point = 11;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 77646 AND point = 13;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 77646 AND point = 15;
-- Dread Crew#3 c.28052 
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 43212 AND point = 1;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 43212 AND point = 2;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 43212 AND point = 3;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 43212 AND point = 4;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 43212 AND point = 5;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 43212 AND point = 7;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 43212 AND point = 9;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 43212 AND point = 11;
-- Dread Crew#4 c.28052  
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 86278 AND point = 2;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 86278 AND point = 4;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 86278 AND point = 6;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 86278 AND point = 8;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 86278 AND point = 9;
UPDATE creature_movement SET script_id = 2805203, emote = 0 WHERE id = 86278 AND point = 10;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 86278 AND point = 11;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 86278 AND point = 12;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 86278 AND point = 13;
-- Dread Crew#5 c.28052 
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 16402 AND point = 1;
UPDATE creature_movement SET script_id = 2805203, emote = 0 WHERE id = 16402 AND point = 3;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 16402 AND point = 4;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 16402 AND point = 5;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 16402 AND point = 6;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 16402 AND point = 8;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 16402 AND point = 10;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 16402 AND point = 11;
-- Dread Crew#6 c.28052
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 100431 AND point = 1;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 100431 AND point = 3;
UPDATE creature_movement SET script_id = 2805203, emote = 0 WHERE id = 100431 AND point = 5;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 100431 AND point = 7;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 100431 AND point = 8;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 100431 AND point = 10;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 100431 AND point = 12;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 100431 AND point = 13;
-- Dread Crew#7 c.28052
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 86869 AND point = 1;
UPDATE creature_movement SET script_id = 2805203, emote = 0 WHERE id = 86869 AND point = 2;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 86869 AND point = 3;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 86869 AND point = 5;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 86869 AND point = 7;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 86869 AND point = 8;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 86869 AND point = 9;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 86869 AND point = 10;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 86869 AND point = 11;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 86869 AND point = 12;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 86869 AND point = 13;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 86869 AND point = 14;
-- Dread Crew#8 c.28052
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 100084 AND point = 1;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 100084 AND point = 2;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 100084 AND point = 3;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 100084 AND point = 5;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 100084 AND point = 7;
UPDATE creature_movement SET script_id = 2805203, emote = 0 WHERE id = 100084 AND point = 8;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 100084 AND point = 9;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 100084 AND point = 10;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 100084 AND point = 11;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 100084 AND point = 12;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 100084 AND point = 13;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 100084 AND point = 14;
-- Dread Crew#9 c.28052
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 97346 AND point = 1;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 97346 AND point = 3;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 97346 AND point = 5;
UPDATE creature_movement SET script_id = 2805205, spell = 0 WHERE id = 97346 AND point = 6;
UPDATE creature_movement SET script_id = 2805203, emote = 0 WHERE id = 97346 AND point = 7;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 97346 AND point = 8;
UPDATE creature_movement SET script_id = 2805203, emote = 0 WHERE id = 97346 AND point = 9;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 97346 AND point = 10;
UPDATE creature_movement SET script_id = 2805205, spell = 0 WHERE id = 97346 AND point = 11;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 97346 AND point = 12;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 97346 AND point = 13;
-- Dread Crew#10 c.28052
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 105593 AND point = 1;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 105593 AND point = 3;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 105593 AND point = 5;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 105593 AND point = 7;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 105593 AND point = 9;
UPDATE creature_movement SET script_id = 2805203, emote = 0 WHERE id = 105593 AND point = 10;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 105593 AND point = 12;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 105593 AND point = 14;
UPDATE creature_movement SET script_id = 2805203, emote = 0 WHERE id = 105593 AND point = 15;
-- Dread Crew#11 c.28052 
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 105582 AND point = 1;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 105582 AND point = 3;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 105582 AND point = 5;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 105582 AND point = 7;
UPDATE creature_movement SET script_id = 2805203, emote = 0 WHERE id = 105582 AND point = 8;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 105582 AND point = 9;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 105582 AND point = 11;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 105582 AND point = 12;
-- Dread Crew#12 c.28052 
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 70165 AND point = 3;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 70165 AND point = 5;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 70165 AND point = 7;
UPDATE creature_movement SET script_id = 2805203, emote = 0 WHERE id = 70165 AND point = 9;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 70165 AND point = 11;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 70165 AND point = 13;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 70165 AND point = 14;
-- Dread Crew#13 c.28052 
UPDATE creature_movement SET script_id = 2805203, emote = 0 WHERE id = 84498 AND point = 3;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 84498 AND point = 5;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 84498 AND point = 10;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 84498 AND point = 12;
-- Dread Crew#14 c.28052
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 78933 AND point = 2;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 78933 AND point = 6;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 78933 AND point = 8;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 78933 AND point = 11;
-- Dread Crew#15 c.28052
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 102309 AND point = 2;
UPDATE creature_movement SET script_id = 2805203, emote = 0 WHERE id = 102309 AND point = 4;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 102309 AND point = 8;
UPDATE creature_movement SET script_id = 2805201, emote = 0 WHERE id = 102309 AND point = 11;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 102309 AND point = 13;
UPDATE creature_movement SET script_id = 2805204, emote = 0 WHERE id = 102309 AND point = 16;
UPDATE creature_movement SET script_id = 2805202, emote = 0 WHERE id = 102309 AND point = 18;
-- Dread Crew#16 c.28052
UPDATE creature_movement SET script_id = 2805203, emote = 0 WHERE id = 93838 AND point = 3;
-- Dread Crew#17 c.28052
UPDATE creature_movement SET script_id = 2805203, emote = 0 WHERE id = 77647 AND point = 3;
-- Dread Crew#18 c.28052
UPDATE creature_movement SET script_id = 2805203, emote = 0 WHERE id = 105579 AND point = 3;
-- Engineer Kurtis Paddock <The Assurance> c.29288 -- req. new emote command 11/2013
DELETE FROM creature_movement WHERE id = 49580;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(49580,1,-8419.88,1298.12,20.9113,10000,0,0,0,0,0,0,0,0,0,4.7032,0,0),
(49580,2,-8419.88,1298.12,20.9113,2000,2928801,0,0,0,0,0,0,0,0,4.7032,0,0),
(49580,3,-8419.88,1298.12,20.9113,6000,0,0,0,0,0,0,0,0,0,4.7032,0,0),
(49580,4,-8419.88,1298.12,20.9113,2000,2928801,0,0,0,0,0,0,0,0,4.7032,0,0),
(49580,5,-8419.88,1298.12,20.9113,6000,0,0,0,0,0,0,0,0,0,4.7032,0,0),
(49580,6,-8419.88,1298.12,20.9113,2000,2928801,0,0,0,0,0,0,0,0,4.7032,0,0),
(49580,7,-8419.88,1298.12,20.9113,6000,0,0,0,0,0,0,0,0,0,4.7032,0,0),
(49580,8,-8425.25,1300.45,20.8698,0,0,0,0,0,0,0,0,0,0,1.5129,0,0),
(49580,9,-8425.68,1310.2,11.3676,15000,0,0,0,0,0,0,0,0,0,1.6205,0,0),
(49580,10,-8423.6,1315.14,11.2577,0,0,0,0,0,0,0,0,0,0,0.970193,0,0),
(49580,11,-8421.38,1318.37,11.2047,3000,0,0,0,0,0,0,0,0,0,0.960767,0,0),
(49580,12,-8421.38,1318.37,11.2047,4000,2928801,0,0,0,0,0,0,0,0,0.960767,0,0),
(49580,13,-8422.7,1318.96,11.1473,0,0,0,0,0,0,0,0,0,0,3.68126,0,0),
(49580,14,-8425.77,1310.05,11.373,0,0,0,0,0,0,0,0,0,0,4.73213,0,0),
(49580,15,-8425.42,1300.53,20.8331,0,0,0,0,0,0,0,0,0,0,6.05788,0,0),
(49580,16,-8419.91,1298.8,20.9113,0,0,0,0,0,0,0,0,0,0,4.67636,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2928801; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2928801,1,1,1,0,0,0,0,6,274,273,0,0,0,0,0,'');
-- Moon Priestess Nici c.32714
UPDATE creature_movement SET script_id = 3271401, emote = 0 WHERE id = 114933 AND point = 51;
DELETE FROM dbscripts_on_creature_movement WHERE id = 3271401; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3271401,2,1,415,0,0,0,0,0,0,0,0,0,0,0,0,''),
(3271401,22,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Sorrow c.32715
UPDATE creature_movement SET script_id = 3271501, emote = 0 WHERE id = 114952 AND point = 5;
UPDATE creature_movement SET script_id = 3271502, emote = 0 WHERE id = 114952 AND point = 14;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3271501,3271502); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3271501,2,1,415,0,0,0,0,0,0,0,0,0,0,0,0,''),
(3271501,22,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(3271502,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Mendez Nightshadow c.32747
UPDATE creature_movement SET script_id = 3274701, emote = 0 WHERE id = 118176 AND point = 6;
DELETE FROM dbscripts_on_creature_movement WHERE id = 3274701; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3274701,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Amera Sky c.32745
UPDATE creature_movement SET script_id = 3274501, emote = 0 WHERE id = 117938 AND point = 7;
UPDATE creature_movement SET script_id = 3274501, emote = 0 WHERE id = 117938 AND point = 20;
DELETE FROM dbscripts_on_creature_movement WHERE id = 3274501; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3274501,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Galkara the Assassin c.32425
UPDATE creature_movement SET script_id = 3242501, emote = 0 WHERE id = 111937 AND point = 8;
UPDATE creature_movement SET script_id = 3242502, emote = 0 WHERE id = 111937 AND point = 11;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3242501,3242502); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3242501,2,1,415,0,0,0,0,0,0,0,0,0,0,0,0,''),
(3242501,22,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(3242502,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Saedelin Whitedawn c.32706
UPDATE creature_movement SET script_id = 3270601, emote = 0 WHERE id = 114292 AND point = 28;
DELETE FROM dbscripts_on_creature_movement WHERE id = 3270601; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3270601,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Warp-Huntress Kula c.32711
UPDATE creature_movement SET script_id = 3271101, emote = 0 WHERE id = 114764 AND point = 13;
UPDATE creature_movement SET script_id = 3271101, emote = 0 WHERE id = 114764 AND point = 44;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3271101,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Orland Schaeffer <Blacksmithing Trainer> c.29506
DELETE FROM creature_movement WHERE id = 102071;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(102071,1,5910.67,679.581,643.497,0,0,0,0,0,0,0,0,0,0,2.46859,0,0),
(102071,2,5910.67,679.581,643.497,90000,2950601,0,0,0,0,0,0,0,0,2.46859,0,0),
(102071,3,5912.5,682.377,643.497,90000,2950602,0,0,0,0,0,0,0,0,1.10659,0,0),
(102071,4,5911.21,679.712,643.497,0,0,0,0,0,0,0,0,0,0,0,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2950601,2950602); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2950601,1,1,233,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2950601,85,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2950602,1,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2950602,85,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Susana Averoy <General Goods> c.28691
UPDATE creature_movement SET waittime = 20000, script_id = 2869101, emote = 0 WHERE id = 97931 AND point = 8;
UPDATE creature_movement SET waittime = 20000, script_id = 2869101, emote = 0 WHERE id = 97931 AND point = 12;
UPDATE creature_movement SET waittime = 20000, script_id = 2869102, emote = 0 WHERE id = 97931 AND point = 16;
UPDATE creature_movement SET waittime = 20000, script_id = 2869102, emote = 0 WHERE id = 97931 AND point = 17;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2869101,2869102); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2869101,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2869101,17,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2869102,3,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(2869102,17,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND');
-- Josie Birch c.29640
DELETE FROM creature_movement WHERE id = 114781;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(114781,1,5861.59,751.648,640.596,50000,0,0,0,0,0,0,0,0,0,5.07891,0,0),
(114781,2,5861.59,751.648,640.596,20000,2964001,0,0,0,0,0,0,0,0,5.07891,0,0),
(114781,3,5863.3,748.935,640.581,20000,2964002,0,0,0,0,0,0,0,0,5.4413,0,0),
(114781,4,5861.59,751.648,640.596,50000,0,0,0,0,0,0,0,0,0,5.07891,0,0),
(114781,5,5864.05,747.998,640.577,0,0,0,0,0,0,0,0,0,0,5.07891,0,0),
(114781,6,5864.05,747.998,640.577,20000,2964001,0,0,0,0,0,0,746,0,5.07891,0,0),
(114781,7,5861.59,751.648,640.596,0,0,0,0,0,0,0,0,0,0,5.07891,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2964001,2964002); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2964001,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0.485437,''),
(2964001,8,15,746,0,32651,10,0x01,0,0,0,0,0,0,0,0,'cast 746 on buddy'),
(2964001,17,3,0,0,0,0,0,0,0,0,0,0,0,0,5.07891,''),
(2964002,3,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(2964002,17,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND');
-- Olisarra the Kind <First Aid Trainer> c.28706
UPDATE creature_movement SET script_id = 2870601, emote = 0 WHERE id = 99029 AND point = 3;
UPDATE creature_movement SET script_id = 2870602, emote = 0 WHERE id = 99029 AND point = 7;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2870601,2870602); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2870601,3,15,746,0,32651,10,0x01,0,0,0,0,0,0,0,0,'cast 746 on buddy'),
(2870602,3,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Thulrin c.25239
UPDATE creature_movement SET script_id = 2523901, emote = 0 WHERE id = 110115 AND point = 2;
UPDATE creature_movement SET waittime = 5000, script_id = 2523902, emote = 0 WHERE id = 110115 AND point = 6;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2523901,2523902); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2523901,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2523901,18,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2523902,1,1,381,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2523902,4,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Valiance Keep Worker#1 c.25271
DELETE FROM creature_movement WHERE id = 113252;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(113252,1,2359.92,5242.06,7.75584,0,0,0,0,0,0,0,0,0,0,3.49751,0,0),
(113252,2,2356.98,5242.16,7.78924,0,0,0,0,0,0,0,0,0,0,2.3697,0,0),
(113252,3,2352.26,5247.09,7.78171,0,0,0,0,0,0,0,0,0,0,1.32512,0,0),
(113252,4,2353.28,5251.16,7.68238,0,0,0,0,0,0,0,0,0,0,0.359081,0,0),
(113252,5,2362.99,5254.59,7.55464,0,0,0,0,0,0,0,0,0,0,6.17103,0,0),
(113252,6,2371.43,5253.99,7.55195,0,0,0,0,0,0,0,0,0,0,0.245197,0,0),
(113252,7,2382.37,5257.24,3.44619,0,0,0,0,0,0,0,0,0,0,0.288394,0,0),
(113252,8,2385.28,5258.1,3.29655,0,0,0,0,0,0,0,0,0,0,6.03358,0,0),
(113252,9,2392.52,5256.32,3.29372,0,0,0,0,0,0,0,0,0,0,4.95759,0,0),
(113252,10,2395.44,5246.34,3.2908,0,0,0,0,0,0,0,0,0,0,4.78088,0,0),
(113252,11,2396.6,5225.96,3.29162,0,0,0,0,0,0,0,0,0,0,4.44708,0,0),
(113252,12,2391.4,5208.38,3.29162,0,0,0,0,0,0,0,0,0,0,2.95482,0,0),
(113252,13,2388.96,5208.91,3.29162,50000,2527101,0,0,0,0,0,0,0,0,2.93126,0,0),
(113252,14,2391.4,5208.38,3.29162,0,0,0,0,0,0,0,0,0,0,1.26229,0,0),
(113252,15,2396.6,5225.96,3.29162,0,0,0,0,0,0,0,0,0,0,1.47435,0,0),
(113252,16,2395.44,5246.34,3.2908,0,0,0,0,0,0,0,0,0,0,1.94952,0,0),
(113252,17,2392.52,5256.32,3.29372,0,0,0,0,0,0,0,0,0,0,2.72313,0,0),
(113252,18,2385.28,5258.1,3.29655,0,0,0,0,0,0,0,0,0,0,3.48104,0,0),
(113252,19,2382.37,5257.24,3.44619,0,0,0,0,0,0,0,0,0,0,3.48104,0,0),
(113252,20,2371.43,5253.99,7.55195,0,0,0,0,0,0,0,0,0,0,3.01373,0,0),
(113252,21,2362.99,5254.59,7.55464,0,0,0,0,0,0,0,0,0,0,3.48104,0,0),
(113252,22,2353.28,5251.16,7.68238,0,0,0,0,0,0,0,0,0,0,4.30964,0,0),
(113252,23,2352.26,5247.09,7.78171,0,0,0,0,0,0,0,0,0,0,4.91832,0,0),
(113252,24,2356.98,5242.16,7.78924,0,0,0,0,0,0,0,0,0,0,6.04536,0,0),
(113252,25,2359.92,5242.06,7.75584,0,0,0,0,0,0,0,0,0,0,5.73513,0,0),
(113252,26,2365.84,5237.83,7.63421,50000,2527101,0,0,0,0,0,0,0,0,5.63419,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2527101,2527102); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2527101,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2527101,45,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2527102,3,1,381,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2527102,13,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Valiance Keep Worker#2 c.25271
DELETE FROM creature_movement WHERE id = 113251;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(113251,1,2355.3,5266.33,7.75584,0,0,0,0,0,0,0,0,0,0,3.34973,0,0),
(113251,2,2346.46,5262.42,7.54849,0,0,0,0,0,0,0,0,0,0,4.72418,0,0),
(113251,3,2346.98,5256.03,7.61863,0,0,0,0,0,0,0,0,0,0,5.34856,0,0),
(113251,4,2352.05,5249.76,7.68733,0,0,0,0,0,0,0,0,0,0,0.00392437,0,0),
(113251,5,2359.74,5249.94,7.63308,0,0,0,0,0,0,0,0,0,0,0.663659,0,0),
(113251,6,2370.4,5256.88,7.55221,0,0,0,0,0,0,0,0,0,0,0.314157,0,0),
(113251,7,2381.94,5260.98,3.29606,0,0,0,0,0,0,0,0,0,0,0.341645,0,0),
(113251,8,2386.12,5262.47,3.29606,0,0,0,0,0,0,0,0,0,0,6.11825,0,0),
(113251,9,2389.88,5261.6,3.29464,0,0,0,0,0,0,0,0,0,0,5.03441,0,0),
(113251,10,2394.54,5250.4,3.2911,0,0,0,0,0,0,0,0,0,0,3.44005,0,0),
(113251,11,2392.55,5249.76,3.2911,50000,2527101,0,0,0,0,0,0,0,0,4.44708,0,0),
(113251,12,2394.54,5250.4,3.2911,0,0,0,0,0,0,0,0,0,0,1.86533,0,0),
(113251,13,2389.88,5261.6,3.29464,0,0,0,0,0,0,0,0,0,0,5.03441,0,0),
(113251,14,2386.12,5262.47,3.29606,0,0,0,0,0,0,0,0,0,0,2389.88,0,0),
(113251,15,2381.94,5260.98,3.29606,0,0,0,0,0,0,0,0,0,0,2389.88,0,0),
(113251,16,2370.4,5256.88,7.55221,0,0,0,0,0,0,0,0,0,0,2389.88,0,0),
(113251,17,2359.74,5249.94,7.63308,0,0,0,0,0,0,0,0,0,0,2.61538,0,0),
(113251,18,2352.05,5249.76,7.68733,0,0,0,0,0,0,0,0,0,0,2.03812,0,0),
(113251,19,2346.98,5256.03,7.61863,0,0,0,0,0,0,0,0,0,0,5.34856,0,0),
(113251,20,2346.46,5262.42,7.54849,0,0,0,0,0,0,0,0,0,0,0.365217,0,0),
(113251,21,2355.3,5266.33,7.75584,0,0,0,0,0,0,0,0,0,0,0.365217,0,0),
(113251,22,2355.8,5266.07,7.63065,50000,2527101,0,0,0,0,0,0,0,0,0.345582,0,0);
-- Valiance Keep Worker#3 c.25271 
DELETE FROM creature_movement WHERE id = 113246;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(113246,1,2392.47,5208.15,3.29215,0,0,0,0,0,0,0,0,0,0,1.22915,0,0),
(113246,2,2394.35,5215.35,3.29215,0,0,0,0,0,0,0,0,0,0,3.31046,0,0),
(113246,3,2391.9,5214.93,3.29193,50000,2527101,0,0,0,0,0,0,0,0,3.31046,0,0),
(113246,4,2395.65,5218.93,3.29193,0,0,0,0,0,0,0,0,0,0,1.26057,0,0),
(113246,5,2399.95,5235.3,3.29193,0,0,0,0,0,0,0,0,0,0,1.80642,0,0),
(113246,6,2391.69,5262.17,3.29227,0,0,0,0,0,0,0,0,0,0,2.42296,0,0),
(113246,7,2385.13,5267.25,3.29366,15000,2527102,0,0,0,0,0,0,0,0,2.44259,0,0),
(113246,8,2386.8,5263.62,3.29366,0,0,0,0,0,0,0,0,0,0,5.48601,0,0),
(113246,9,2394.74,5256.05,3.29185,0,0,0,0,0,0,0,0,0,0,4.95979,0,0),
(113246,10,2398.14,5244.51,3.29187,0,0,0,0,0,0,0,0,0,0,4.78307,0,0),
(113246,11,2399.09,5231.12,3.29187,0,0,0,0,0,0,0,0,0,0,4.41786,0,0),
(113246,12,2390.35,5199.66,3.29187,0,0,0,0,0,0,0,0,0,0,3.81311,0,0),
(113246,13,2383.77,5194.42,3.29187,50000,2527101,0,0,0,0,0,0,0,0,3.81311,0,0);
-- Stormfleet Deckhand#1 c.25234
DELETE FROM creature_movement WHERE id = 109655;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(109655,1,2218.42,5252.38,11.285,0,0,0,0,0,0,0,0,0,0,0.113863,0,0),
(109655,2,2219.58,5252.42,11.3045,25000,2523401,0,0,0,0,0,0,0,0,0.0196153,0,0),
(109655,3,2213.76,5252.03,10.9358,0,0,0,0,0,0,0,0,0,0,2.70175,0,0),
(109655,4,2204.99,5256.12,10.5869,0,0,0,0,0,0,0,0,0,0,1.20557,0,0),
(109655,5,2218.15,5292.69,10.6677,0,0,0,0,0,0,0,0,0,0,6.10253,0,0),
(109655,6,2228.59,5290.69,10.9359,0,0,0,0,0,0,0,0,0,0,4.91265,0,0),
(109655,7,2232.49,5290.59,11.1649,0,0,0,0,0,0,0,0,0,0,1.15452,0,0),
(109655,8,2233.65,5293.95,11.4762,25000,2523401,0,0,0,0,0,0,0,0,1.15452,0,0),
(109655,9,2229.5,5285.8,11.2249,0,0,0,0,0,0,0,0,0,0,5.96115,0,0),
(109655,10,2230.39,5285.3,11.2421,0,0,0,0,0,0,0,0,0,0,6.00042,0,0),
(109655,11,2231.17,5285.25,11.2233,25000,2523401,0,0,0,0,0,0,0,0,5.96115,0,0),
(109655,12,2227.8,5291.05,10.9028,0,0,0,0,0,0,0,0,0,0,3.04733,0,0),
(109655,13,2218.2,5291.47,10.6833,0,0,0,0,0,0,0,0,0,0,4.33145,0,0),
(109655,14,2203.76,5255.4,10.5792,0,0,0,0,0,0,0,0,0,0,5.98079,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2523401,2523402,2523403,2523404); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2523401,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2523401,23,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2523402,3,1,22,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2523402,11,1,70,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2523402,17,1,6,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2523403,2,1,381,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2523403,8,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2523404,1,1,15,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Stormfleet Deckhand#2 c.25234 
DELETE FROM creature_movement WHERE id = 109652;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(109652,1,2224.21,5293.65,10.826,25000,2523401,0,0,0,0,0,0,0,0,0.596882,0,0),
(109652,2,2220.1,5288.88,10.7057,0,0,0,0,0,0,0,0,0,0,3.44395,0,0),
(109652,3,2215.09,5287.72,10.6693,0,0,0,0,0,0,0,0,0,0,4.28826,0,0),
(109652,4,2212.78,5282.25,10.8133,0,0,0,0,0,0,0,0,0,0,5.48206,0,0),
(109652,5,2216.76,5278.65,11.2862,0,0,0,0,0,0,0,0,0,0,5.54881,0,0),
(109652,6,2222.81,5272.7,7.223,0,0,0,0,0,0,0,0,0,0,5.50562,0,0),
(109652,7,2226.29,5269.28,7.16337,0,0,0,0,0,0,0,0,0,0,5.94937,0,0),
(109652,8,2234.01,5266.39,7.51529,0,0,0,0,0,0,0,0,0,0,5.92581,0,0),
(109652,9,2240.83,5263.85,11.7338,0,0,0,0,0,0,0,0,0,0,5.92581,0,0),
(109652,10,2244.76,5264.69,11.7113,0,0,0,0,0,0,0,0,0,0,5.90617,0,0),
(109652,11,2248.33,5263.27,11.7067,0,0,0,0,0,0,0,0,0,0,4.73593,0,0),
(109652,12,2248.44,5254.41,11.8997,0,0,0,0,0,0,0,0,0,0,4.51209,0,0),
(109652,13,2247.86,5252.43,11.9663,0,0,0,0,0,0,0,0,0,0,4.28433,0,0),
(109652,14,2244.16,5244.03,21.1326,20000,2523402,0,0,0,0,0,0,0,0,4.30003,0,0),
(109652,15,2248.1,5252.48,11.9583,0,0,0,0,0,0,0,0,0,0,1.46082,0,0),
(109652,16,2249.32,5258.77,11.7708,0,0,0,0,0,0,0,0,0,0,1.81032,0,0),
(109652,17,2248.44,5261.55,11.7411,0,0,0,0,0,0,0,0,0,0,2.91773,0,0),
(109652,18,2240.46,5263.34,11.7449,0,0,0,0,0,0,0,0,0,0,2.49362,0,0),
(109652,19,2234.27,5267.91,7.33371,0,0,0,0,0,0,0,0,0,0,2.86275,0,0),
(109652,20,2222.26,5271.09,7.20408,0,0,0,0,0,0,0,0,0,0,2.88239,0,0),
(109652,21,2214.66,5273.73,11.2626,0,0,0,0,0,0,0,0,0,0,2.14019,0,0),
(109652,22,2213.03,5275.86,10.8115,0,0,0,0,0,0,0,0,0,0,1.76712,0,0),
(109652,23,2212.12,5280.54,10.8101,0,0,0,0,0,0,0,0,0,0,1.20949,0,0),
(109652,24,2215.94,5289.2,10.6658,0,0,0,0,0,0,0,0,0,0,0.628296,0,0);
-- Stormfleet Deckhand#3 c.25234 -- correct wps added
DELETE FROM creature_movement WHERE id = 109653;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(109653,1,2265.7,5314.69,22.438,20000,2523402,0,0,0,0,0,0,0,0,5.80828,0,0),
(109653,2,2263.37,5305.24,23.3751,0,0,0,0,0,0,0,0,0,0,4.54772,0,0),
(109653,3,2263.2,5304.93,21.7024,0,0,0,0,0,0,0,0,0,0,4.61055,0,0),
(109653,4,2262.15,5292.59,19.5437,0,0,0,0,0,0,0,0,0,0,4.6616,0,0),
(109653,5,2261.66,5283.29,13.5761,0,0,0,0,0,0,0,0,0,0,4.34351,0,0),
(109653,6,2261.05,5282.67,12.0555,0,0,0,0,0,0,0,0,0,0,3.833,0,0),
(109653,7,2256.04,5279.16,11.8853,10000,2523403,0,0,0,0,0,0,0,0,3.71127,0,0),
(109653,8,2261.46,5281.99,12.0328,25000,2523401,0,0,0,0,0,0,0,0,1.40613,0,0),
(109653,9,2261.48,5282.81,12.8933,0,0,0,0,0,0,0,0,0,0,1.40613,0,0),
(109653,10,2261.58,5283.39,13.6079,0,0,0,0,0,0,0,0,0,0,1.40613,0,0),
(109653,11,2262.41,5305.47,21.7684,0,0,0,0,0,0,0,0,0,0,1.43166,0,0),
(109653,12,2262.51,5305.89,23.3759,0,0,0,0,0,0,0,0,0,0,1.33349,0,0);
-- Stormfleet Deckhand#4 c.25234 -- still got problem with mmaps
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 109654;
DELETE FROM creature_movement WHERE id = 109654;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(109654,1,2253.49,5252.67,35.7595,20000,2523402,0,0,0,0,0,0,0,0,5.86103,0,0),
(109654,2,2248.38,5255.54,35.9361,0,0,0,0,0,0,0,0,0,0,2.66132,0,0),
(109654,3,2245.05,5257.85,36.238,0,0,0,0,0,0,0,0,0,0,2.72337,0,0),
(109654,4,2244.28,5258.42,36.0902,0,0,0,0,0,0,0,0,0,0,3.03124,0,0),
(109654,5,2240.55,5258.66,36.7351,0,0,0,0,0,0,0,0,0,0,2.94485,0,0),
(109654,6,2239.79,5258.78,35.9885,0,0,0,0,0,0,0,0,0,0,2.80268,0,0),
(109654,7,2233.87,5260.22,35.7524,5000,2523404,0,0,0,0,0,0,0,0,2.88908,0,0),
(109654,8,2240.6,5258.78,36.6595,0,0,0,0,0,0,0,0,0,0,6.06444,0,0),
(109654,9,2244.44,5258.31,36.1157,0,0,0,0,0,0,0,0,0,0,5.83275,0,0),
(109654,10,2247.49,5256.28,36.58,0,0,0,0,0,0,0,0,0,0,5.64191,0,0),
(109654,11,2249.85,5254.61,35.9037,0,0,0,0,0,0,0,0,0,0,5.71652,0,0);
-- Jimmy the Stable Boy c.27364 -- he must be redone completly! need avi.
UPDATE creature_movement SET emote = 0 WHERE id = 117744 AND point = 2;
UPDATE creature_movement SET emote = 0 WHERE id = 117744 AND point = 3;
-- Sandra Bartan <Barmaid> c.32403
UPDATE creature_movement SET script_id = 3240301, emote = 0 WHERE id = 109735 AND point = 14;
DELETE FROM dbscripts_on_creature_movement WHERE id = 3240301; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3240301,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(3240301,13,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Unu'pe Villager c.27566
UPDATE creature_movement SET script_id = 2756601, emote = 0 WHERE id = 112379 AND point = 1;
UPDATE creature_movement SET script_id = 2756602, emote = 0 WHERE id = 112379 AND point = 3;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2756601,2756602); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2756601,3,1,233,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2756601,28,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2756602,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2756602,13,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Justin Boehm <The Assurance> c.29296
DELETE FROM creature_movement WHERE id = 49649;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(49649,1,-8425.53,1319.01,11.1249,0,0,0,0,0,0,0,0,0,0,0.000259,0,0),
(49649,2,-8423.73,1319,11.1337,0,0,0,0,0,0,0,0,0,0,0.004186,0,0),
(49649,3,-8422.25,1322.46,11.0723,0,0,0,0,0,0,0,0,0,0,0.165193,0,0),
(49649,4,-8418.66,1322.84,11.0669,0,0,0,0,0,0,0,0,0,0,5.61978,0,0),
(49649,5,-8414.76,1319.14,11.1205,0,0,0,0,0,0,0,0,0,0,0.000257,0,0),
(49649,6,-8407.75,1319.34,6.88187,0,0,0,0,0,0,0,0,0,0,0.44872,0,0),
(49649,7,-8402.74,1322.65,6.66857,70000,2929601,0,0,0,0,0,0,0,0,0.72747,0,0),
(49649,8,-8406.85,1319.1,6.73553,0,0,0,0,0,0,0,0,0,0,3.21719,0,0),
(49649,9,-8414.76,1319.05,11.1226,0,0,0,0,0,0,0,0,0,0,3.09545,0,0),
(49649,10,-8418.04,1323.28,11.0556,0,0,0,0,0,0,0,0,0,0,3.33633,0,0),
(49649,11,-8422.66,1322.86,11.0604,0,0,0,0,0,0,0,0,0,0,4.42567,0,0),
(49649,12,-8423.21,1319.68,11.1227,0,0,0,0,0,0,0,0,0,0,3.17924,0,0),
(49649,13,-8425.61,1319.62,11.0512,0,0,0,0,0,0,0,0,0,0,3.16746,0,0),
(49649,14,-8432.95,1319.73,6.73108,70000,2929601,0,0,0,0,0,0,0,0,3.10856,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2929601; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2929601,3,1,379,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2929601,65,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Michael Corpora <The Assurance> c.29297
DELETE FROM creature_movement WHERE id = 49584;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(49584,1,-8417.51,1327.79,11.0264,15000,2929701,0,0,0,0,0,0,0,0,1.73394,0,0),
(49584,2,-8422.86,1327.48,11.0281,0,0,0,0,0,0,0,0,0,0,1.59572,0,0),
(49584,3,-8422.86,1327.7,11.0265,15000,0,0,0,0,0,0,0,0,0,1.59572,0,0),
(49584,4,-8417.62,1327.19,11.0289,0,0,0,0,0,0,0,0,0,0,1.63971,0,0),
(49584,5,-8417.63,1327.32,11.0295,15000,2929701,0,0,0,0,0,0,0,0,1.63971,0,0),
(49584,6,-8420.2,1327.48,11.0422,0,0,0,0,0,0,0,0,0,0,1.5184,0,0),
(49584,7,-8420.19,1329.73,11.0296,0,0,0,0,0,0,0,0,0,0,3.29419,0,0),
(49584,8,-8420.32,1329.71,11.0296,15000,2929701,0,0,0,0,0,0,0,0,3.29419,0,0),
(49584,9,-8419.69,1329.38,11.0306,15000,2929701,0,0,0,0,0,0,0,0,0.048578,0,0),
(49584,10,-8420.09,1326.71,11.0466,0,0,0,0,0,0,0,0,0,0,6.20723,0,0),
(49584,11,-8417.73,1326.82,11.0346,0,0,0,0,0,0,0,0,0,0,1.71554,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2929701; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2929701,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2929701,12,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Robert Richardson <The Assurance> c.29300
DELETE FROM creature_movement WHERE id = 49588;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(49588,1,-8410.43,1332.88,11.0661,10000,2930001,0,0,0,0,0,0,0,0,0.222403,0,0),
(49588,2,-8417.27,1340.1,11.4042,0,0,0,0,0,0,0,0,0,0,3.11267,0,0),
(49588,3,-8421.54,1340.19,11.4555,0,0,0,0,0,0,0,0,0,0,3.84309,0,0),
(49588,4,-8424.73,1337.23,11.252,0,0,0,0,0,0,0,0,0,0,4.67561,0,0),
(49588,5,-8422.77,1332.19,11.0477,10000,2930001,0,0,0,0,0,0,0,0,5.05652,0,0),
(49588,6,-8428.88,1337.12,11.1986,0,0,0,0,0,0,0,0,0,0,3.15462,0,0),
(49588,7,-8429.08,1337.12,11.1965,60000,0,0,0,0,0,0,0,0,0,3.15462,0,0),
(49588,8,-8422.46,1340.36,11.4403,0,0,0,0,0,0,0,0,0,0,6.21969,0,0),
(49588,9,-8415.57,1340.2,11.359,0,0,0,0,0,0,0,0,0,0,6.19848,0,0),
(49588,10,-8411.82,1337.18,11.2055,0,0,0,0,0,0,0,0,0,0,6.27859,0,0),
(49588,11,-8411.35,1337.18,11.2003,10000,2930001,0,0,0,0,0,0,0,0,6.27859,0,0),
(49588,12,-8417.14,1332.56,11.0659,0,0,0,0,0,0,0,0,0,0,4.546,0,0),
(49588,13,-8417.16,1332.36,11.058,10000,2930001,0,0,0,0,0,0,0,0,4.69366,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2930001; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2930001,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2930001,8,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Steam Tank Engineer#1 c.29016
DELETE FROM creature_movement WHERE id = 120714;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(120714,1,-8341.82,1144.29,19.1521,25000,2901601,0,0,0,0,0,0,0,0,2.4732,0,0),
(120714,2,-8333.36,1143.05,18.9424,0,0,0,0,0,0,0,0,0,0,6.11966,0,0),
(120714,3,-8333.25,1143.18,18.9497,25000,2901601,0,0,0,0,0,0,0,0,0.896764,0,0),
(120714,4,-8334.16,1142.16,18.9273,0,0,0,0,0,0,0,0,0,0,5.05309,0,0),
(120714,5,-8331.72,1140.15,18.8464,0,0,0,0,0,0,0,0,0,0,0.083875,0,0),
(120714,6,-8319.58,1140.6,18.88,0,0,0,0,0,0,0,0,0,0,0.260587,0,0),
(120714,7,-8317.88,1144.89,18.983,25000,2901601,0,0,0,0,0,0,0,0,1.15987,0,0),
(120714,8,-8321,1140.26,18.8938,0,0,0,0,0,0,0,0,0,0,3.17049,0,0),
(120714,9,-8331.42,1139.52,18.8309,0,0,0,0,0,0,0,0,0,0,2.85658,0,0);
-- Steam Tank Engineer#2 c.29016
DELETE FROM creature_movement WHERE id = 120710;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(120710,1,-8427.11,1125.21,19.0443,0,0,0,0,0,0,0,0,0,0,4.81118,0,0),
(120710,2,-8427.28,1120.68,19.0507,0,0,0,0,0,0,0,0,0,0,0.039102,0,0),
(120710,3,-8427.29,1120.68,19.0507,25000,2901601,0,0,0,0,0,0,0,0,0.039102,0,0),
(120710,4,-8427.48,1122.81,19.0507,2000,0,0,0,0,0,0,0,0,0,1.70807,0,0),
(120710,5,-8425.52,1126.73,18.987,0,0,0,0,0,0,0,0,0,0,6.18798,0,0),
(120710,6,-8419.04,1127.63,18.9321,0,0,0,0,0,0,0,0,0,0,5.51882,0,0),
(120710,7,-8414.23,1123.19,19.0504,0,0,0,0,0,0,0,0,0,0,3.3582,0,0),
(120710,8,-8416.29,1122.7,19.0504,25000,2901601,0,0,0,0,0,0,0,0,3.38568,0,0),
(120710,9,-8416.53,1125.82,19.0303,0,0,0,0,0,0,0,0,0,0,2.42436,0,0),
(120710,10,-8420.78,1129.97,18.7194,0,0,0,0,0,0,0,0,0,0,3.04325,0,0),
(120710,11,-8422.75,1129.64,18.7821,0,0,0,0,0,0,0,0,0,0,4.88344,0,0),
(120710,12,-8422.64,1126.61,18.9589,10000,0,0,0,0,0,0,0,0,0,4.77573,0,0);
-- Steam Tank Engineer#3 c.29016
DELETE FROM creature_movement WHERE id = 120707;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(120707,1,-8429.32,1104.22,19.0518,0,0,0,0,0,0,0,0,0,0,3.67723,0,0),
(120707,2,-8429.52,1104.1,19.0518,25000,2901601,0,0,0,0,0,0,0,0,3.67723,0,0),
(120707,3,-8427.96,1104.87,19.0518,0,0,0,0,0,0,0,0,0,0,6.01201,0,0),
(120707,4,-8422.6,1102.15,19.0518,0,0,0,0,0,0,0,0,0,0,3.92835,0,0),
(120707,5,-8424.83,1095.45,19.0518,0,0,0,0,0,0,0,0,0,0,3.7265,0,0),
(120707,6,-8430.66,1092.24,19.0518,0,0,0,0,0,0,0,0,0,0,1.98056,0,0),
(120707,7,-8431.6,1094,19.0518,25000,2901601,0,0,0,0,0,0,0,0,2.07481,0,0),
(120707,8,-8434.16,1092.08,19.0518,0,0,0,0,0,0,0,0,0,0,2.7314,0,0),
(120707,9,-8438.85,1092.48,19.0518,0,0,0,0,0,0,0,0,0,0,1.90752,0,0),
(120707,10,-8441.77,1101.9,19.0518,0,0,0,0,0,0,0,0,0,0,5.6091,0,0),
(120707,11,-8440.17,1100.4,19.0518,0,0,0,0,0,0,0,0,0,0,0.872371,0,0),
(120707,12,-8439.39,1101.21,19.0518,25000,2901601,0,0,0,0,0,0,0,0,0.808753,0,0),
(120707,13,-8438.81,1099.22,19.0518,0,0,0,0,0,0,0,0,0,0,4.36975,0,0),
(120707,14,-8439.26,1096.63,19.0518,0,0,0,0,0,0,0,0,0,0,5.29022,0,0),
(120707,15,-8436.67,1091.74,19.0518,0,0,0,0,0,0,0,0,0,0,0.294295,0,0),
(120707,16,-8425.42,1095.32,19.0518,0,0,0,0,0,0,0,0,0,0,1.28232,0,0),
(120707,17,-8424.09,1099.62,19.0518,0,0,0,0,0,0,0,0,0,0,3.52808,0,0),
(120707,18,-8427.16,1098.59,19.0518,25000,2901601,0,0,0,0,0,0,0,0,3.45346,0,0);
-- Steam Tank Engineer#4 c.29016
DELETE FROM creature_movement WHERE id = 120715;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(120715,1,-8451.17,1122.94,19.0531,0,0,0,0,0,0,0,0,0,0,0.781591,0,0),
(120715,2,-8448.09,1127.72,19.0372,0,0,0,0,0,0,0,0,0,0,6.2731,0,0),
(120715,3,-8441.96,1125.39,19.051,0,0,0,0,0,0,0,0,0,0,3.92083,0,0),
(120715,4,-8441.92,1122.8,19.0519,25000,2901601,0,0,0,0,0,0,0,0,4.16039,0,0),
(120715,5,-8439.23,1126.54,19.0519,0,0,0,0,0,0,0,0,0,0,3.25209,0,0),
(120715,6,-8447.35,1126.57,19.051,0,0,0,0,0,0,0,0,0,0,3.45394,0,0),
(120715,7,-8453.81,1123.36,19.051,0,0,0,0,0,0,0,0,0,0,4.38534,0,0),
(120715,8,-8455.5,1116.1,19.051,0,0,0,0,0,0,0,0,0,0,5.5171,0,0),
(120715,9,-8453.39,1114.72,19.051,25000,2901601,0,0,0,0,0,0,0,0,5.75209,0,0),
(120715,10,-8453.8,1118.47,19.051,0,0,0,0,0,0,0,0,0,0,6.27359,0,0),
(120715,11,-8452.08,1118.23,19.0561,25000,2901601,0,0,0,0,0,0,0,0,6.0912,0,0);
-- Steam Tank Engineer#5 c.29016
DELETE FROM creature_movement WHERE id = 120705;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(120705,1,-8451.93,1104.48,19.0522,1000,2901603,0,0,0,0,0,0,0,0,4.25515,0,0),
(120705,2,-8462.51,1106.1,19.053,25000,2901601,0,0,0,0,0,0,0,0,1.75508,0,0),
(120705,3,-8462.51,1106.1,19.053,25000,2901601,0,0,0,0,0,0,0,0,1.75508,0,0),
(120705,4,-8462.51,1106.1,19.053,25000,2901601,0,0,0,0,0,0,0,0,1.75508,0,0),
(120705,5,-8462.51,1106.1,19.053,25000,2901601,0,0,0,0,0,0,0,0,1.75508,0,0),
(120705,6,-8450.52,1101.22,19.0522,5000,2901602,0,0,0,0,0,0,0,0,2.70619,0,0),
(120705,7,-8450.8,1110.86,19.0561,25000,2901601,0,0,0,0,0,0,0,0,1.76278,0,0),
(120705,8,-8450.8,1110.86,19.0561,5000,0,0,0,0,0,0,0,0,0,1.76278,0,0),
(120705,9,-8450.8,1110.86,19.0561,25000,2901601,0,0,0,0,0,0,0,0,1.76278,0,0),
(120705,10,-8450.8,1110.86,19.0561,5000,0,0,0,0,0,0,0,0,0,1.76278,0,0),
(120705,11,-8450.8,1110.86,19.0561,25000,2901601,0,0,0,0,0,0,0,0,1.76278,0,0),
(120705,12,-8450.8,1110.86,19.0561,5000,0,0,0,0,0,0,0,0,0,1.76278,0,0),
(120705,13,-8450.8,1110.86,19.0561,25000,2901601,0,0,0,0,0,0,0,0,1.76278,0,0),
(120705,14,-8450.8,1110.86,19.0561,5000,0,0,0,0,0,0,0,0,0,1.76278,0,0),
(120705,15,-8450.8,1110.86,19.0561,25000,2901601,0,0,0,0,0,0,0,0,1.76278,0,0),
(120705,16,-8450.8,1110.86,19.0561,5000,0,0,0,0,0,0,0,0,0,1.76278,0,0),
(120705,17,-8450.8,1110.86,19.0561,25000,2901601,0,0,0,0,0,0,0,0,1.76278,0,0),
(120705,18,-8450.8,1110.86,19.0561,5000,0,0,0,0,0,0,0,0,0,1.76278,0,0),
(120705,19,-8450.8,1110.86,19.0561,25000,2901601,0,0,0,0,0,0,0,0,1.76278,0,0),
(120705,20,-8450.8,1110.86,19.0561,2000,0,0,0,0,0,0,0,0,0,1.76278,0,0),
(120705,21,-8450.8,1110.86,19.0561,25000,2901601,0,0,0,0,0,0,0,0,1.76278,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2901601 AND 2901603; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2901601,4,1,233,0,0,0,0,69,0,0,0,0,0,0,0,'random emote'),
(2901601,20,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2901602,1,1,3,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2901603,0,10,29144,240000,0,0,0,0,0,0,0,-8463.9,1109.41,19.1352,1.48353,'summon - Refurbished Steam Tank');
-- Refurbished Steam Tank c.29144 
DELETE FROM creature WHERE guid = 120795;
DELETE FROM creature_movement WHERE id = 120795;
UPDATE creature_template SET MovementType = 2 WHERE entry = 29144; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 29144;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,wpguid,orientation,model1,model2) VALUES
(29144,1,-8463.9,1109.41,19.1352,1000,0,0,0,0,0,0,0,0,0,1.48353,0,0),
(29144,2,-8463.52,1112.6,19.0517,120000,0,0,0,0,0,0,0,0,0,1.47418,0,0),
(29144,3,-8463.23,1108.18,19.053,5000,0,0,0,0,0,0,0,0,0,4.06056,0,0),
(29144,4,-8473.35,1096.63,18.7345,0,0,0,0,0,0,0,0,0,0,3.14165,0,0),
(29144,5,-8496.34,1095.88,17.9444,0,0,0,0,0,0,0,0,0,0,1.80018,0,0),
(29144,6,-8499.86,1132.84,17.9763,6000,0,0,0,0,0,0,0,0,0,1.66117,0,0),
(29144,7,-8486,1138.24,17.9608,0,0,0,0,0,0,0,0,0,0,6.22434,0,0),
(29144,8,-8462.43,1136.04,18.6577,0,0,0,0,0,0,0,0,0,0,6.2047,0,0),
(29144,9,-8440.65,1137.48,18.8719,0,0,0,0,0,0,0,0,0,0,0.172842,0,0),
(29144,10,-8412.35,1137.49,18.0685,10000,0,0,0,0,0,0,0,0,0,6.26361,0,0),
(29144,11,-8412.35,1137.49,18.0685,0,0,0,0,0,0,0,0,5,0,6.26361,0,0);
-- Stormwind Dock Worker#1 c.29152
DELETE FROM creature_movement WHERE id = 120798;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(120798,1,-8299.85,1210.14,5.36178,0,0,0,0,0,0,0,0,0,0,3.43094,0,0),
(120798,2,-8305.23,1207.67,5.42879,0,0,0,0,0,0,0,0,0,0,4.11745,0,0),
(120798,3,-8311.6,1200.56,5.56437,0,0,0,0,0,0,0,0,0,0,4.43946,0,0),
(120798,4,-8314.25,1191.27,5.69166,23000,2915201,0,0,0,0,0,0,0,0,4.46302,0,0),
(120798,5,-8313.35,1194.52,5.65874,0,0,0,0,0,0,0,0,0,0,1.11722,0,0),
(120798,6,-8310.12,1202.25,5.54039,0,0,0,0,0,0,0,0,0,0,0.041298,0,0),
(120798,7,-8290.29,1206.43,5.47234,0,0,0,0,0,0,0,0,0,0,0.018084,0,0),
(120798,8,-8261.41,1210.15,5.33682,0,0,0,0,0,0,0,0,0,0,5.8693,0,0),
(120798,9,-8259.69,1209.16,5.3674,23000,2915201,0,0,0,0,0,0,0,0,5.73578,0,0),
(120798,10,-8265.38,1210.92,5.32295,0,0,0,0,0,0,0,0,0,0,3.01831,0,0);
-- Stormwind Dock Worker#2 c.29152
DELETE FROM creature_movement WHERE id = 120797;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(120797,1,-8310.31,1205.76,5.47061,0,0,0,0,0,0,0,0,0,0,0.274122,0,0),
(120797,2,-8290.76,1212.13,5.30324,0,0,0,0,0,0,0,0,0,0,0.776475,0,0),
(120797,3,-8283.8,1218.69,5.12783,0,0,0,0,0,0,0,0,0,0,1.5768,0,0),
(120797,4,-8283.85,1252.21,5.92599,0,0,0,0,0,0,0,0,0,0,1.56095,0,0),
(120797,5,-8282.23,1264.73,5.23056,0,0,0,0,0,0,0,0,0,0,1.58137,0,0),
(120797,6,-8286.43,1290.12,5.23056,0,0,0,0,0,0,0,0,0,0,1.72589,0,0),
(120797,7,-8299.31,1308.23,5.2306,23000,2915201,0,0,0,0,0,0,0,0,2.16571,0,0),
(120797,8,-8295.96,1300.16,5.2306,0,0,0,0,0,0,0,0,0,0,4.68762,0,0),
(120797,9,-8297.72,1252.03,5.92557,0,0,0,0,0,0,0,0,0,0,4.7104,0,0),
(120797,10,-8299.14,1242.13,5.23096,0,0,0,0,0,0,0,0,0,0,4.60039,0,0),
(120797,11,-8301.92,1219.22,5.26001,0,0,0,0,0,0,0,0,0,0,5.16195,0,0),
(120797,12,-8299.71,1214.86,5.21961,0,0,0,0,0,0,0,0,0,0,5.18551,0,0),
(120797,13,-8314.54,1197.53,5.60277,0,0,0,0,0,0,0,0,0,0,4.46687,0,0),
(120797,14,-8315.74,1191.05,5.74044,23000,2915201,0,0,0,0,0,0,0,0,4.54148,0,0);
-- Stormwind Dock Worker#3 c.29152
DELETE FROM creature_movement WHERE id = 120799;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(120799,1,-8287.74,1210,5.37336,0,0,0,0,0,0,0,0,0,0,1.26753,0,0),
(120799,2,-8284.33,1218.8,5.12699,0,0,0,0,0,0,0,0,0,0,1.33586,0,0),
(120799,3,-8284.03,1252.12,5.92808,0,0,0,0,0,0,0,0,0,0,1.59739,0,0),
(120799,4,-8283.12,1269.9,5.23078,0,0,0,0,0,0,0,0,0,0,1.52278,0,0),
(120799,5,-8286.5,1316.12,5.23078,0,0,0,0,0,0,0,0,0,0,3.11714,0,0),
(120799,6,-8297.33,1320.5,5.2306,0,0,0,0,0,0,0,0,0,0,4.1303,0,0),
(120799,7,-8302.11,1314.06,5.23041,23000,2915201,0,0,0,0,0,0,0,0,4.38605,0,0),
(120799,8,-8297.52,1315.19,5.2306,0,0,0,0,0,0,0,0,0,0,5.52045,0,0),
(120799,9,-8294.72,1312.06,5.2306,0,0,0,0,0,0,0,0,0,0,4.82852,0,0),
(120799,10,-8297.2,1294.2,5.2306,0,0,0,0,0,0,0,0,0,0,4.79553,0,0),
(120799,11,-8297.83,1252.05,5.92656,0,0,0,0,0,0,0,0,0,0,4.69971,0,0),
(120799,12,-8301.39,1215.63,5.19864,0,0,0,0,0,0,0,0,0,0,5.28201,0,0),
(120799,13,-8287.33,1203.95,5.53263,0,0,0,0,0,0,0,0,0,0,5.29615,0,0),
(120799,14,-8282.63,1198.46,5.61464,23000,2915201,0,0,0,0,0,0,0,0,5.33149,0,0);
-- Stormwind Dock Worker#4 c.29152 
DELETE FROM creature_movement WHERE id = 88370;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(88370,1,-8120.61,1222.76,7.95895,0,0,0,0,0,0,0,0,0,0,6.1735,0,0),
(88370,2,-8089.94,1218.23,7.7505,23000,2915201,0,0,0,0,0,0,0,0,6.04391,0,0),
(88370,3,-8115.25,1223.06,7.85131,0,0,0,0,0,0,0,0,0,0,2.91803,0,0),
(88370,4,-8149.73,1228.71,8.79505,0,0,0,0,0,0,0,0,0,0,2.15383,0,0),
(88370,5,-8159.54,1238.17,7.78501,0,0,0,0,0,0,0,0,0,0,1.09197,0,0),
(88370,6,-8156.69,1246.09,7.86472,23000,2915201,0,0,0,0,0,0,0,0,1.23727,0,0),
(88370,7,-8159.74,1240.04,7.7721,0,0,0,0,0,0,0,0,0,0,5.55696,0,0),
(88370,8,-8142.14,1225.23,8.88772,0,0,0,0,0,0,0,0,0,0,5.7376,0,0);
-- Stormwind Dock Worker#5 c.29152 
DELETE FROM creature_movement WHERE id = 88375;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(88375,1,-8541.23,1144.3,18.9831,3000,0,0,0,0,0,0,0,0,0,0.95809,0,0),
(88375,2,-8538.3,1149.52,19.0522,23000,2915201,0,0,0,0,0,0,0,0,0.921979,0,0),
(88375,3,-8544.61,1133.18,18.1536,0,0,0,0,0,0,0,0,0,0,4.31569,0,0),
(88375,4,-8551.97,1118.55,19.0523,0,0,0,0,0,0,0,0,0,0,4.25678,0,0),
(88375,5,-8564.22,1107.25,19.0523,0,0,0,0,0,0,0,0,0,0,4.22537,0,0),
(88375,6,-8566.66,1101.82,19.0523,23000,2915201,0,0,0,0,0,0,0,0,4.28427,0,0),
(88375,7,-8559.28,1114.25,19.0523,0,0,0,0,0,0,0,0,0,0,0.742907,0,0);
-- Stormwind Dock Worker#6 c.29152 
DELETE FROM creature_movement WHERE id = 88376;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(88376,1,-8576.71,1146.47,18.0207,0,0,0,0,0,0,0,0,0,0,3.45975,0,0),
(88376,2,-8592.24,1140.14,19.0232,23000,2915201,0,0,0,0,0,0,0,0,3.48724,0,0),
(88376,3,-8587.63,1142.05,18.664,0,0,0,0,0,0,0,0,0,0,1.80021,0,0),
(88376,4,-8589.12,1147.9,18.8099,0,0,0,0,0,0,0,0,0,0,2.5856,0,0),
(88376,5,-8593.48,1149.63,19.0517,23000,2915201,0,0,0,0,0,0,0,0,2.69006,0,0),
(88376,6,-8577.21,1153.82,17.9682,0,0,0,0,0,0,0,0,0,0,6.26778,0,0),
(88376,7,-8558.95,1154.11,18.8956,0,0,0,0,0,0,0,0,0,0,5.51223,0,0),
(88376,8,-8557.69,1153.3,19.0169,23000,2915201,0,0,0,0,0,0,0,0,5.60334,0,0);
-- Stormwind Dock Worker#7 c.29152 
DELETE FROM creature_movement WHERE id = 88377;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(88377,1,-8418.49,1216.51,5.15492,0,0,0,0,0,0,0,0,0,0,3.18179,0,0),
(88377,2,-8437.26,1216.18,5.15686,23000,2915201,0,0,0,0,0,0,0,0,3.18179,0,0),
(88377,3,-8418.49,1216.51,5.15492,0,0,0,0,0,0,0,0,0,0,6.24877,0,0),
(88377,4,-8401.74,1217.04,5.14119,23000,2915201,0,0,0,0,0,0,0,0,6.24877,0,0);
-- Stormwind Dock Worker#8 c.29152 
DELETE FROM creature_movement WHERE id = 88378;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(88378,1,-8483.92,1205.52,5.30837,0,0,0,0,0,0,0,0,0,0,3.19278,0,0),
(88378,2,-8504.95,1204.34,5.43422,23000,2915201,0,0,0,0,0,0,0,0,3.21635,0,0),
(88378,3,-8496.24,1205.74,5.33554,0,0,0,0,0,0,0,0,0,0,6.21814,0,0),
(88378,4,-8472.6,1205.68,5.3309,0,0,0,0,0,0,0,0,0,0,5.91105,0,0),
(88378,5,-8451.6,1202.08,5.28666,0,0,0,0,0,0,0,0,0,0,6.20581,0,0),
(88378,6,-8440.75,1198.68,5.49148,0,0,0,0,0,0,0,0,0,0,4.94917,0,0),
(88378,7,-8437.91,1192.77,5.47497,23000,2915201,0,0,0,0,0,0,0,0,5.11019,0,0),
(88378,8,-8443.81,1199.8,5.43047,0,0,0,0,0,0,0,0,0,0,2.54586,0,0),
(88378,9,-8463.18,1206.26,5.2489,0,0,0,0,0,0,0,0,0,0,3.21242,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2915201; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2915201,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2915201,19,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Ol' Chumbucket c.28050
DELETE FROM creature_movement WHERE id = 16399;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(16399,1,-14430.4,520.976,25.9306,5000,2805001,0,0,0,0,0,0,0,0,2.56563,0,0),
(16399,2,-14430.4,520.976,25.9306,10000,0,0,0,0,0,0,0,0,0,2.56563,0,0),
(16399,3,-14430.4,520.976,25.9306,10000,0,0,0,0,0,0,0,0,0,2.56563,0,0),
(16399,4,-14430.4,520.976,25.9306,5000,2805001,0,0,0,0,0,0,0,0,2.56563,0,0),
(16399,5,-14430.4,520.976,25.9306,10000,2805002,0,0,0,0,0,0,0,0,2.56563,0,0),
(16399,6,-14430.4,520.976,25.9306,10000,0,0,0,0,0,0,0,0,0,2.56563,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2805001; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2805001,0,1,378,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2805001,4,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2805002,1,1,25,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Cap'n Slappy c.28051
DELETE FROM creature_movement WHERE id = 16400;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(16400,1,-14432.2,521.966,25.6104,10000,2805002,0,0,0,0,0,0,0,0,5.84685,0,0),
(16400,2,-14432.2,521.966,25.6104,5000,2805001,0,0,0,0,0,0,0,0,5.84685,0,0),
(16400,3,-14432.2,521.966,25.6104,10000,0,0,0,0,0,0,0,0,0,5.84685,0,0),
(16400,4,-14432.2,521.966,25.6104,10000,0,0,0,0,0,0,0,0,0,5.84685,0,0),
(16400,5,-14432.2,521.966,25.6104,5000,2805001,0,0,0,0,0,0,0,0,5.84685,0,0),
(16400,6,-14432.2,521.966,25.6104,10000,0,0,0,0,0,0,0,0,0,5.84685,0,0);
-- Scroll of Recall spells
DELETE FROM spell_target_position WHERE id IN (60323,60324,60325,60326,60327,60328,60329,60330,60331,60332,60333,60334,60335);
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(60323,0,-5506.339,-704.348,392.686,0.595), -- Steelgrills Depot
(60324,0,-9470.760,3.909,49.794,4.802), -- Lions Pride Inn, Goldshire
(60325,1,-3721.306,-4411.906,25.247,0.831), -- Theramore isle, Dustwallow Marsh
(60326,0,286.314,-2184.086,122.612,2.271), -- Aerie Peak, The Hinterlands
(60327,1,6395.708,433.256,33.260,0.566), -- Auberdine, Darkshore
(60328,0,-14412.923,692.017,22.248,1.231), -- Boote Bay
(60329,1,-7135.717,-3787.769,8.799,5.992), -- Tanaris, Gadgetzan
(60330,0,-10336.138,-2934.057,116.723,4.523), -- Swamp of Sorrows, Z coord is intended
(60331,0,-10446.900,-3261.909,20.179,5.875), -- Stonard, Swamp of Sorrows
(60332,0,-103.988,-902.795,55.534,5.924), -- Tarren Mill, Hillsbrad Foothils
(60333,0,1804.836,196.322,70.399,1.572), -- Undercity
(60334,1,-1060.266,23.137,141.455,5.967), -- Thunder Bluff
(60335,1,-506.224,-2590.084,113.150,2.445); -- Barrens, The Crossroads
-- dufernst, spell effect of 72254
DELETE FROM dbscripts_on_spell WHERE id = 72254;
INSERT INTO dbscripts_on_spell (id, command, datalong, comments) VALUES
(72254, 15, 72293, 'Deathbringer Saurfang, cast Mark of the Fallen Champion');
-- stfx - original author Kinzcool (xyz confirmed)
DELETE FROM spell_target_position WHERE id = 53821;
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(53821, 0, 2359.64, -5662.41, 382.261, 0.596899); -- Teach: Death Gate

UPDATE creature_template SET UnitClass = 1 WHERE entry = 29174; -- Defender of the Light
UPDATE creature_template SET UnitClass = 1 WHERE entry = 29177; -- Commander Eligor Dawnbringer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 29178; -- Lord Maxwell Tyrosus
UPDATE creature_template SET UnitClass = 1 WHERE entry = 29181; -- Rayne
UPDATE creature_template SET UnitClass = 1 WHERE entry = 29182; -- Rimblat Earthshatter
UPDATE creature_template SET UnitClass = 1 WHERE entry = 29228; -- Darion Mograine
UPDATE creature_template SET UnitClass = 8 WHERE entry = 29560; -- Lord-Commander Arete
UPDATE creature_template SET UnitClass = 1 WHERE entry = 29572; -- Landgren\'s Soul
UPDATE creature_template SET UnitClass = 1 WHERE entry = 29861; -- Stormforged Eradicator
UPDATE creature_template SET UnitClass = 2 WHERE entry = 30024; -- Gargoral the Water Lord
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30053; -- Icebound Revenant
UPDATE creature_template SET UnitClass = 8 WHERE entry = 30063; -- Stormforged Decimator
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30190; -- Attendant Tock
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30202; -- Reanimated Crusader
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30236; -- Argent Cannon
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30301; -- Tamed Jormungar
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30322; -- Earthen Jormungar Handler
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30374; -- Elder Muraco
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30375; -- Elder Stonebeard
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30474; -- The North Wind
UPDATE creature_template SET UnitClass = 2 WHERE entry = 30482; -- Wrathstrike Gargoyle
UPDATE creature_template SET UnitClass = 2 WHERE entry = 30543; -- Forgotten Depths High Priest
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30550; -- Image of the North Wind
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30591; -- Stormforged Amplifier
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30593; -- Forgotten Depths Slayer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30672; -- Crusader of Virtue
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30686; -- Crusade Architect Silas
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30703; -- Ebon Blade Champion
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30704; -- Argent Paladin
UPDATE creature_template SET UnitClass = 2 WHERE entry = 30813; -- Torkus Jr. (1)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 30829; -- Salranax the Flesh Render
UPDATE creature_template SET UnitClass = 2 WHERE entry = 30831; -- High Priest Yath\'amon
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30839; -- Jayde
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30840; -- Munch
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30919; -- Argent Battle-priest
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30984; -- Scourge Drudge
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30986; -- Reanimated Captain
UPDATE creature_template SET UnitClass = 1 WHERE entry = 30989; -- Halof the Deathbringer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 31003; -- Crusader Lord Dalfors
UPDATE creature_template SET UnitClass = 1 WHERE entry = 31235; -- Crusader Olakin Sainrith
UPDATE creature_template SET UnitClass = 1 WHERE entry = 31306; -- Margrave Dhakar
UPDATE creature_template SET UnitClass = 1 WHERE entry = 31314; -- Ebon Blade Veteran
UPDATE creature_template SET UnitClass = 1 WHERE entry = 31428; -- Crusader Olakin Sainrith
UPDATE creature_template SET UnitClass = 1 WHERE entry = 31432; -- Ghostwing
UPDATE creature_template SET UnitClass = 1 WHERE entry = 31482; -- Apothecary Chemist
UPDATE creature_template SET UnitClass = 1 WHERE entry = 31516; -- Blight Doctor
UPDATE creature_template SET UnitClass = 1 WHERE entry = 31524; -- Apothecary Collaborator
UPDATE creature_template SET UnitClass = 1 WHERE entry = 31526; -- Blight Slinger
UPDATE creature_template SET UnitClass = 1 WHERE entry = 31529; -- Ravishing Betrayer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 31531; -- Perfidious Dreadlord
UPDATE creature_template SET UnitClass = 1 WHERE entry = 31638; -- Alliance Siege Vehicle
UPDATE creature_template SET UnitClass = 1 WHERE entry = 31831; -- Blight Spreader
UPDATE creature_template SET UnitClass = 2 WHERE entry = 32162; -- Grimkor the Wicked
UPDATE creature_template SET UnitClass = 2 WHERE entry = 32234; -- Swirling Water Revenant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 32239; -- Highlord Tirion Fordring
UPDATE creature_template SET UnitClass = 1 WHERE entry = 32241; -- Disguised Crusader
UPDATE creature_template SET UnitClass = 1 WHERE entry = 32270; -- Legion Dreadwhisperer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 32271; -- Legion Overlord
UPDATE creature_template SET UnitClass = 1 WHERE entry = 32272; -- High Invoker Basaleph
UPDATE creature_template SET UnitClass = 1 WHERE entry = 32309; -- Ebon Knight
UPDATE creature_template SET UnitClass = 1 WHERE entry = 32311; -- Koltira Deathweaver
UPDATE creature_template SET UnitClass = 2 WHERE entry = 32357; -- Old Crystalbark
UPDATE creature_template SET UnitClass = 1 WHERE entry = 32430; -- Fringe Engineer Tezzla
UPDATE creature_template SET UnitClass = 1 WHERE entry = 32443; -- The Lich King
UPDATE creature_template SET UnitClass = 1 WHERE entry = 32500; -- Dirkee
UPDATE creature_template SET UnitClass = 2 WHERE entry = 32554; -- Swirling Water Revenant (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 32800; -- Father Kamaros
UPDATE creature_template SET UnitClass = 1 WHERE entry = 33163; -- Iron Honor Guard (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 33164; -- Iron Honor Guard (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 33255; -- Titanium Stormlord
UPDATE creature_template SET UnitClass = 1 WHERE entry = 33330; -- Battle-Priest Gina
UPDATE creature_template SET UnitClass = 1 WHERE entry = 33331; -- Amira Blazeweaver
UPDATE creature_template SET UnitClass = 1 WHERE entry = 33332; -- Spiritwalker Tara
UPDATE creature_template SET UnitClass = 1 WHERE entry = 33333; -- Kar Greycloud
UPDATE creature_template SET UnitClass = 1 WHERE entry = 33495; -- Ysera
UPDATE creature_template SET UnitClass = 1 WHERE entry = 33536; -- Alexstrasza
UPDATE creature_template SET UnitClass = 1 WHERE entry = 33567; -- Deathsworn Zealo
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34112; -- Titanium Stormlord (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34113; -- Steelforged Defender (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34247; -- Steelforged Defender (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34298; -- Kologarn (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34310; -- Keristrasza
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34320; -- Venomhide Hatchling
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34327; -- Dino Meat Feeding Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34336; -- Silithid Meat Feeding Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34337; -- The Postmaster
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34338; -- Silithid Egg Feeding Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34360; -- Wabbit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34364; -- Calico Cat
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34386; -- High-Oracle Soo-roo
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34393; -- Test Vendor
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34425; -- Furious Gladiator\'s Frost Wyrm
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34428; -- MiniZep
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34434; -- ELM Daze Target
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34435; -- Cheerful Human Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34436; -- ELM Attacker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34437; -- Isle of Conquest Battlemaster
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34460; -- Kavina Grovesong
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34461; -- Tyrius Duskblade
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34463; -- Shaabad
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34465; -- Velanaa
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34466; -- Anthar Forgemender
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34467; -- Alyssia Moonstalker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34468; -- Noozle Whizzlestick
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34469; -- Melador Valestrider
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34470; -- Saamul
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34471; -- Baelnor Lightbearer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34472; -- Irieth Shadowstep
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34473; -- Brienna Nightfell
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34474; -- Serissa Grimdabbler
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34475; -- Shocuul
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34476; -- Cheerful Forsaken Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34477; -- Cheerful Orc Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34478; -- Cheerful Dwarf Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34479; -- Cheerful Night Elf Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34480; -- Cheerful Tauren Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34481; -- Cheerful Gnome Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34482; -- Cheerful Troll Spiri
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34483; -- Cheerful Blood Elf Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34484; -- Cheerful Draenei Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34489; -- Winterfin Playmate
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34515; -- XT-005 Debugger
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34531; -- Roo
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34532; -- Kekek
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34533; -- ScottM Test Creature
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34561; -- Forsaken Prankster
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34562; -- [DND] Stink Bomb Target
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34565; -- Innocuous Townsman
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34579; -- Venomhide Hatchling (1.25)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34580; -- Venomhide Hatchling (1.50)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34581; -- Venomhide Hatchling (1.75)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34612; -- Danowe Thunderhorn
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34644; -- Edward Winslow
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34645; -- Elizabeth Barker Winslow
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34653; -- Bountiful Table Hostess
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34654; -- Bountiful Feast Hostess
UPDATE creature_template SET UnitClass = 2 WHERE entry = 34657; -- Jaelyne Evensong
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34658; -- Jaelyne Evensong\'s Mount
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34675; -- Gregory Tabor
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34676; -- Isaac Allerton
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34677; -- Miles Standish
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34678; -- Dokin Farplain
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34679; -- Francis Eaton
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34681; -- Ikaneba Summerset
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34682; -- Wilmina Holbeck
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34683; -- Rose Standish
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34684; -- Laha Farplain
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34685; -- Dalni Tallgrass
UPDATE creature_template SET UnitClass = 2 WHERE entry = 34702; -- Ambrose Boltspark
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34708; -- Caitrin Ironkettle
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34709; -- Silver Riding Dragonhawk
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34710; -- Ellen Moore
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34711; -- Mary Allerton
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34712; -- Roberta Carter
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34713; -- Ondani Greatmill
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34714; -- Mahara Goldwheat
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34724; -- Shimmering Wyrmling
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34737; -- Spice Bread Stuffing Proxy
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34738; -- Slow-roasted Turkey Proxy
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34739; -- Candied Sweet Potato Proxy
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34740; -- Pumpkin Pie Proxy
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34741; -- Cranberry Chutney Proxy
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34744; -- Jasper Moore
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34755; -- Healing Marker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34768; -- William Mullins
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34770; -- Macabre Marionette
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34783; -- Ranisa Whiteboug
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34785; -- Alnar Whitebough
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34786; -- Alice Rigsdale
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34787; -- John Rigsdale
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34798; -- Acidmaw (Mobile)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34801; -- Incinerated Skeleton
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34806; -- Bountiful Table Kill Credit Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34812; -- The Turkey Chair
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34819; -- The Stuffing Chair
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34822; -- The Pie Chair
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34823; -- The Cranberry Chair
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34824; -- The Sweet Potato Chair
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34827; -- Argent Coliseum PTR Beast Master
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34875; -- Ice Turret (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34889; -- [PH] Goss Test NPC
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34891; -- [PH] Tournament Hippogryph Quest Mount
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34893; -- [PH] Stabled Argent Hippogryph
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34895; -- Jend Jow (Test)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34899; -- Snowblind Follower Proxy
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34921; -- Felflame Infernal Ball
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34930; -- Jade Tiger
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34942; -- Memory of Hogger
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34971; -- Hotoro
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34980; -- Drottinn Hrothgar
UPDATE creature_template SET UnitClass = 1 WHERE entry = 34993; -- Larina Heartforge
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35003; -- Horde Gunship Captain
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35004; -- Jaeren Sunsworn
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35012; -- Ornolf the Scarred
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35018; -- Stalker Koralon
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35019; -- Bruka Woebringer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35021; -- Marog
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35026; -- Marsa Keybrand
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35027; -- Erutor
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35028; -- Memory of VanCleef
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35029; -- Memory of Mutanus
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35031; -- Memory of Lucifron
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35032; -- Memory of Thunderaan
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35033; -- Memory of Chromaggus
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35034; -- Memory of Hakkar
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35036; -- Memory of Vek\'nilash
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35037; -- Memory of Kalithresh
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35038; -- Memory of Malchezaar
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35039; -- Memory of Gruul
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35040; -- Memory of Vashj
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35041; -- Memory of Archimonde
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35043; -- Memory of Delrissa
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35044; -- Memory of Entropius
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35045; -- Memory of Ingvar
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35048; -- Memory of Onyxia
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35050; -- Memory of Ignis
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35051; -- Memory of Vezax
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35052; -- Memory of Algalon
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35055; -- Fallen Hero\'s Spirit Proxy
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35066; -- [ph] Argent Raid Spectator - FX - Alliance Fireworks NOT USED
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35067; -- Imp in a Bottle
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35074; -- Quest - Wintergrasp - Southern Tower Kill
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35085; -- Foreman Fisk
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35086; -- Labor Captain Grabbit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35087; -- Malynea Skyreaver
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35088; -- Custer Clubnik
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35091; -- Horzak Zignibble
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35107; -- Argent Coliseum PTR Eredar Master
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35108; -- Argent Coliseum PTR Faction Champion Master
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35109; -- Argent Coliseum PTR Val\'kyr Master
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35110; -- Argent Coliseum PTR Anub\'arak Master
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35116; -- Cult Saboteur
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35127; -- Cult Assassin
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35145; -- Dreadscale (Sessile)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35146; -- Argent Hippogryph (Bombing Run)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35147; -- Silver Covenant Hippogryph
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35148; -- Sunreaver Dragonhawk
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35155; -- Mana Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35156; -- Jade Panda
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35157; -- Tiny Jade Dragon
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35179; -- Argent Charger
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35180; -- Argent Warhorse
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35189; -- Skoll
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35228; -- Invisible Burrowed Jormungar
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35242; -- Kvaldir Invader
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35243; -- Ghostly Blood Elf Celebrant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35244; -- Ghostly Forsaken Celebrant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35246; -- Ghostly Draenei Celebrant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35247; -- Ghostly Dwarf Celebrant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35248; -- Ghostly Gnome Celebrant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35249; -- Ghostly Human Celebrant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35250; -- Ghostly Night Elf Celebrant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35251; -- Ghostly Orc Celebrant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35252; -- Ghostly Tauren Celebrant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35253; -- Ghostly Troll Celebrant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35254; -- Ghostly Dalaran Celebrant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35256; -- Cheerful Dalaran Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35258; -- Ghostly Aldor Celebrant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35259; -- Ghostly Scryer Celebrant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35260; -- Cheerful Aldor Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35261; -- Cheerful Scryer Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35285; -- Argent Colt
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35297; -- Icecrown Cultist Proxy
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35328; -- Stormwind Champion
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35329; -- Ironforge Champion
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35330; -- Exodar Champion
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35331; -- Gnomeregan Champion
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35332; -- Darnassus Champion
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35337; -- Bountiful Barrel
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35338; -- Bountiful Barrel
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35340; -- Bountiful Barrel
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35341; -- Bountiful Barrel
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35342; -- Bountiful Barrel
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35343; -- Bountiful Barrel
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35346; -- Goblin Mechanic
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35362; -- Relentless Gladiator\'s Frost Wyrm
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35387; -- Leaping Hatchling
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35394; -- Razzashi Hatchling
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35395; -- Deviate Hatchling
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35396; -- Darting Hatchling
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35397; -- Ravasaur Hatchling
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35398; -- Razormaw Hatchling
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35399; -- Obsidian Hatchling
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35400; -- Gundrak Hatchling
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35405; -- Overlord Agmar (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35425; -- Goblin Mechanic (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35445; -- Argent Warhorse
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35459; -- The Lich King
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35468; -- Onyx Panther
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35492; -- Zephyr Guard
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35493; -- Vengeful Frostwyrm
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35519; -- Memory of Algalon (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35520; -- Memory of Archimonde (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35521; -- Memory of Chromaggus (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35523; -- Memory of Delrissa (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35525; -- Memory of Entropius (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35527; -- Memory of Gruul (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35528; -- Memory of Hakkar (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35531; -- Memory of Hogger (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35532; -- Memory of Ignis (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35534; -- Memory of Ingvar (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35535; -- Memory of Kalithresh (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35536; -- Memory of Lucifron (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35537; -- Memory of Malchezaar (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35538; -- Memory of Mutanus (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35539; -- Memory of Onyxia (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35540; -- Memory of Thunderaan (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35541; -- Memory of VanCleef (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35542; -- Memory of Vashj (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35543; -- Memory of Vek\'nilash (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35544; -- Memory of Vezax (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35545; -- Risen Jaeren Sunsworn
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35546; -- Risen Jaeren Sunsworn (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35547; -- The Black Knight
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35557; -- The Black Knight
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35559; -- The Black Knight (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35560; -- The Black Knight (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35586; -- Argent Hippogryph (Herald Mount)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35588; -- Coliseum Master of Patchwerks
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35633; -- Ambrose Boltspark\'s Mount
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35636; -- Lana Stouthammer\'s Mount
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35637; -- Marshal Jacob Alerius\' Mount
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35642; -- Jeeves
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35644; -- Argent Warhorse
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35646; -- Wormhole
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35662; -- Alyssia Moonstalker (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35663; -- Alyssia Moonstalker (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35664; -- Alyssia Moonstalker (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35665; -- Anthar Forgemender (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35666; -- Anthar Forgemender (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35667; -- Anthar Forgemender (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35668; -- Baelnor Lightbearer (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35669; -- Baelnor Lightbearer (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35670; -- Baelnor Lightbearer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35674; -- Brienna Nightfell (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35675; -- Brienna Nightfell (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35676; -- Brienna Nightfell (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35699; -- Irieth Shadowstep (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35700; -- Irieth Shadowstep (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35701; -- Irieth Shadowstep (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35702; -- Kavina Grovesong (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35703; -- Kavina Grovesong (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35704; -- Kavina Grovesong (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35714; -- Melador Valestrider (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35715; -- Melador Valestrider (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35716; -- Melador Valestrider (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35721; -- Noozle Whizzlestick (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35722; -- Noozle Whizzlestick (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35723; -- Noozle Whizzlestick (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35728; -- Saamul (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35729; -- Saamul (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35730; -- Saamul (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35731; -- Serissa Grimdabbler (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35732; -- Serissa Grimdabbler (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35733; -- Serissa Grimdabbler (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35734; -- Shaabad (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35735; -- Shaabad (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35736; -- Shaabad (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35737; -- Shocuul (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35738; -- Shocuul (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35739; -- Shocuul (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35743; -- Tyrius Duskblade (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35744; -- Tyrius Duskblade (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35745; -- Tyrius Duskblade (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35746; -- Velanaa (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35747; -- Velanaa (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35748; -- Velanaa (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35768; -- Colosos\' Mount
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35809; -- Swift Horde Wolf
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35876; -- Crusader\'s White Warhorse
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35878; -- Crusader\'s Black Warhorse
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35895; -- Barrett Ramsey
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35910; -- Barrett Ramsey
UPDATE creature_template SET UnitClass = 1 WHERE entry = 35983; -- [DNT] Test Dragonhawk
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36021; -- The Brewmaiden
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36024; -- The Black Brewmaiden
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36064; -- Marked Immortal Guardian
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36067; -- Marked Immortal Guardian (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36071; -- [DND] Argent Charger
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36072; -- [DND] Swift Burgundy Wolf
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36074; -- [DND] Swift Horde Wolf
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36075; -- [DND] White Stallion
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36076; -- [DND] Swift Alliance Steed
UPDATE creature_template SET UnitClass = 2 WHERE entry = 36082; -- Ambrose Boltspark (1)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 36086; -- Jaelyne Evensong (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36128; -- Frostwyrm Rider
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36164; -- Kor\'kron Reaver
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36168; -- Dan\'s Test Colossus
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36189; -- Hardknuckle Charger Proxy
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36209; -- [DND]Northrend Children\'s Week Trigger 2
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36215; -- Schweitzermobile
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36235; -- Auctioneer Rockbone
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36284; -- Flint Ironstag
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36350; -- Honorable Defender Trigger, 25 yd (Horde)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36351; -- Slab Bulkhead
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36352; -- Trunk Slamchest
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36359; -- Auctioneer Plankchest
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36360; -- Auctioneer Slabrock
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36380; -- Buff Hardback
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36390; -- Blast Thickneck
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36431; -- Dark Iron Guard
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36482; -- Tuskarr Kite
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36483; -- Little White Stallion
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36484; -- Little Ivory Raptor
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36503; -- Devourer of Souls
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36504; -- Devourer of Souls
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36510; -- Durotar Sand Vortex
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36511; -- Spectral Tiger Cub
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36532; -- Unstable Searing Totem
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36533; -- Unstable Fire Elemental
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36537; -- Unstable Earth Elemental [mini]
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36542; -- Unstable Healing Stream Totem
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36543; -- Unstable Water Elemental [mini]
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36544; -- Night Elf Mohawk
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36545; -- Unstable Water Elemental
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36546; -- Unstable Air Elemental
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36547; -- Unstable Air Elemental [mini]
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36550; -- Unstable Stoneskin Totem
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36553; -- Unstable Fire Elemental [mini]
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36554; -- Unstable Earth Elemental
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36556; -- Unstable Wrath of Air Totem
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36558; -- Argent Battleworg
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36568; -- Crazed Apothecary
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36573; -- Justin\'s test Boss A
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36574; -- Justin\'s Test Boss B
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36597; -- The Lich King
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36598; -- Strangulate Vehicle
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36605; -- Unstable Lightwell
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36607; -- Onyxian Whelpling
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36609; -- Val\'kyr Shadowguard
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36633; -- Ice Sphere
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36644; -- Ahmo Thunderhorn
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36648; -- Baine Bloodhoof (Leader)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36677; -- Skeletal Miner (Cosmetic)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36679; -- Frostsworn Lieutenant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36701; -- Raging Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36710; -- [DND] Apothecary Table (Spell Effect)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36715; -- Quel\'Delar Krasus Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36726; -- [PH] Icecrown Reanimated Crusader
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36737; -- Invisible Stalker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36757; -- Frostsworn Berserker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36763; -- Frostsworn Battle-Mage
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36769; -- Frostsworn Marksman
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36792; -- [PH] Unused Quarry Overseer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36796; -- Corrupted Champion
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36804; -- Matt\'s Test Priest
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36823; -- Terenas Menethil
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36824; -- Spirit Warden
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36837; -- Onyxian Drake
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36839; -- Horde Gunship Cannon
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36857; -- Blood Elf Warrior
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36858; -- Dwarf Mage
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36859; -- Dwarf Shaman
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36860; -- Gnome Priest
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36861; -- Human Hunter
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36862; -- Night Elf Mage
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36863; -- Orc Mage
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36864; -- Tauren Paladin
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36865; -- Tauren Priest
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36866; -- Troll Druid
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36867; -- Undead Hunter
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36871; -- Core Hound Pup
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36875; -- [PH] Icecrown Gauntlet Ghoul
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36904; -- Gryphon Hatchling 3.3.0
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36908; -- Gryphon Hatchling
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36909; -- Wind Rider Cub
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36910; -- Zipao Tiger
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36911; -- Pandaren Monk
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36912; -- Chen Stormstout
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36923; -- Hogger (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36949; -- [PH] Scaling Fire Elemental
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36950; -- Skybreaker Marine
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36961; -- Skybreaker Sergeant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36963; -- [PH] Scaling Earth Elemental
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36964; -- [PH] Scaling Air Elemental
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36965; -- Furious Water Elemental
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36966; -- [DND] Town Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36969; -- Skybreaker Rifleman
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36971; -- Orgrim\'s Hammer Crew
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36977; -- Soulbound Fire Elemental
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36978; -- Skybreaker Mortar Soldier
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36979; -- Lil\' K.T.
UPDATE creature_template SET UnitClass = 2 WHERE entry = 36990; -- Lady Sylvanas Windrunner
UPDATE creature_template SET UnitClass = 1 WHERE entry = 36991; -- Sunwell Guardian
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37000; -- Sunwell Visual Bunny
UPDATE creature_template SET UnitClass = 8 WHERE entry = 37021; -- Skybreaker Vicar
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37036; -- Rippling Water Elemental
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37037; -- Acanthurus
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37039; -- [DND]Ground Cover Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37044; -- Kor\'kron Battle Standard
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37063; -- Stormwind City Guard
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37074; -- Argent Warhose TEST
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37094; -- Crucible of Souls
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37100; -- Alliance Brigadier General (Stormwind Visual)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37101; -- Horde Warbringer - Orgrimmar Appearance (DND)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 37116; -- Skybreaker Sorcerer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37118; -- Elemental Stone
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37128; -- [PH] Icecrown Shade
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37130; -- Mirror Image
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37131; -- Mirror Image Bug Test
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37158; -- Quel\'Delar
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37168; -- [DND] Summon Bunny 1
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37172; -- Detective Snap Snagglebolt
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37189; -- Kor\'kron General
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37191; -- [PH] Ice Stone 2
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37192; -- [PH] Ice Stone 3
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37193; -- Balistoides
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37194; -- Chaetodon
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37201; -- [DND] Summon Bunny 2
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37202; -- [DND] Summon Bunny 3
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37205; -- Thalorien Dawnseeker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37211; -- Sunwell Defender
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37214; -- Crown Lackey
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37221; -- Lady Jaina Proudmoore
UPDATE creature_template SET UnitClass = 2 WHERE entry = 37223; -- Lady Sylvanas Windrunner
UPDATE creature_template SET UnitClass = 2 WHERE entry = 37225; -- Uther the Lightbringer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37226; -- The Lich King
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37233; -- Aerie Gryphon (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37234; -- Aggi Rumblestomp (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37235; -- Alliance Sentinel (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37236; -- Alliance Spirit Guide (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37237; -- Alterac Ram (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37238; -- Alterac Yeti (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37239; -- Arch Druid Renferal (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37240; -- Athramanis (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37241; -- Blizzard Elemental (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37242; -- Brogus Thunderbrew (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37243; -- Captain Balinda Stonehearth (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37244; -- Captain Galvangar (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37245; -- Champion Coldmine Explorer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37246; -- Champion Coldmine Guard (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37247; -- Champion Coldmine Invader (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37248; -- Champion Coldmine Surveyor (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37249; -- Champion Commando (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37250; -- Champion Defender (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37251; -- Champion Guardian (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37252; -- Champion Guardsman (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37253; -- Champion Irondeep Explorer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37254; -- Champion Irondeep Guard (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37255; -- Champion Irondeep Raider (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37256; -- Champion Irondeep Surveyor (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37257; -- Champion Legionnaire (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37258; -- Champion Mountaineer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37259; -- Champion Outrunner (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37260; -- Champion Ranger (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37261; -- Champion Reaver (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37262; -- Champion Sentinel (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37263; -- Champion Warrior (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37264; -- Coldmine Explorer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37265; -- Coldmine Guard (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37266; -- Coldmine Invader (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37267; -- Coldmine Miner (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37268; -- Coldmine Peon (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37269; -- Coldmine Surveyor (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37270; -- Commander Dardosh <old> (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37271; -- Commander Duffy (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37272; -- Commander Karl Philips (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37273; -- Commander Louis Philips (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37274; -- Commander Malgor (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37275; -- Commander Mortimer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37276; -- Commander Mulfort (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37277; -- Commander Randolph (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37278; -- Corporal Noreg Stormpike (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37279; -- Corporal Teeka Bloodsnarl (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37280; -- Deathstalker Agent (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37281; -- Dirk Swindle (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37282; -- Drakan (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37283; -- Drek\'Thar (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37284; -- Druid of the Grove (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37285; -- Dun Baldar North Marshal (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37286; -- Dun Baldar North Warmaster (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37287; -- Dun Baldar South Marshal (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37289; -- Duros (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37290; -- East Frostwolf Marshal (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37291; -- East Frostwolf Warmaster (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37292; -- Field Marshal Teravaine (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37293; -- Fjordune the Greater (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37294; -- Frostwolf (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37295; -- Frostwolf Battleguard (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37296; -- Frostwolf Bloodhound (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37297; -- Frostwolf Bowman (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37298; -- Frostwolf Emissary (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37299; -- Frostwolf Explosives Expert (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37300; -- Frostwolf Guardian (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37301; -- Frostwolf Herald (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37302; -- Frostwolf Legionnaire (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37303; -- Frostwolf Mine Layer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37304; -- Frostwolf Outrunner (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37305; -- Frostwolf Quartermaster (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37306; -- Frostwolf Reaver (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37307; -- Frostwolf Reclaimer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37308; -- Frostwolf Shaman (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37309; -- Frostwolf Shredder Unit (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37310; -- Frostwolf Stable Master (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37311; -- Frostwolf Warrior (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37312; -- Frostwolf Wolf Rider (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37313; -- Frostwolf Wolf Rider Commander (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37314; -- Furis (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37315; -- Gaelden Hammersmith (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37316; -- Gahz\'ranka Herald (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37317; -- Gash\'nak the Cannibal (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37318; -- Grelkor (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37319; -- Grimtooth (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37320; -- Grunnda Wolfheart (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37321; -- Guse\'s War Rider (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37322; -- Herald (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37323; -- Horde Spirit Guide (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37324; -- Ice Giant (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37326; -- Iceblood Warmaster (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37327; -- Icewing Marshal (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37329; -- Ichman\'s Gryphon (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37330; -- Irondeep Cave Lurker UNUSED (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37331; -- Irondeep Explorer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37332; -- Irondeep Geomancer UNUSED (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37335; -- Irondeep Peon (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37336; -- Irondeep Raider (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37337; -- Irondeep Shaman (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37338; -- Irondeep Skullthumper (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37339; -- Irondeep Surveyor (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37340; -- Irondeep Trogg (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37341; -- Ivus the Forest Lord (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37342; -- Jekyll Flandring (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37343; -- Jeztor\'s War Rider (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37344; -- Jonivera Farmountain (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37345; -- Jotek (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37346; -- Keetar (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37348; -- Kurdrum Barleybeard (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37349; -- Lana Thunderbrew (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37350; -- Lieutenant Greywand (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37351; -- Lieutenant Grummus (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37352; -- Lieutenant Haggerdin (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37353; -- Lieutenant Largent (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37354; -- Lieutenant Lewis (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37355; -- Lieutenant Lonadin (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37356; -- Lieutenant Mancuso (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37357; -- Lieutenant Murp <old> (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37358; -- Lieutenant Rugba (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37359; -- Lieutenant Spencer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37360; -- Lieutenant Stouthandle (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37361; -- Lieutenant Stronghoof (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37362; -- Lieutenant Vol\'talar (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37363; -- Lokholar the Ice Lord (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37364; -- Masha Swiftcut (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37365; -- Master Engineer Zinfizzlex (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37366; -- Morloch (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37367; -- Mountaineer Boombellow (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37368; -- Mulverick\'s War Rider (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37369; -- Murgot Deepforge (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37370; -- Najak Hexxen (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37371; -- Primalist Thurloga (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37373; -- Rarck (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37374; -- Ravak Grimtotem (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37375; -- Rezrelek (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37376; -- Risen Ancient (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37377; -- Ryson\'s Eye in the Sky (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37378; -- Seasoned Coldmine Explorer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37379; -- Seasoned Coldmine Guard (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37380; -- Seasoned Coldmine Invader (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37381; -- Seasoned Coldmine Surveyor (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37382; -- Seasoned Commando (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37383; -- Seasoned Defender (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37384; -- Seasoned Guardian (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37385; -- Seasoned Guardsman (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37386; -- Seasoned Irondeep Explorer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37387; -- Seasoned Irondeep Guard (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37388; -- Seasoned Irondeep Raider (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37389; -- Seasoned Irondeep Surveyor (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37390; -- Seasoned Legionnaire (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37391; -- Seasoned Mountaineer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37392; -- Seasoned Outrunner (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37393; -- Seasoned Ranger (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37394; -- Seasoned Reaver (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37395; -- Seasoned Sentinel (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37396; -- Seasoned Warrior (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37397; -- Sergeant Durgen Stormpike (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37398; -- Sergeant Yazra Bloodsnarl (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37399; -- Shrye Ragefist (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37400; -- Slidore\'s Gryphon (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37401; -- Smith Regzar (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37402; -- Snowblind Ambusher (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37403; -- Snowblind Harpy (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37404; -- Snowblind Windcaller (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37405; -- Stabled Alterac Ram (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37406; -- Stabled Frostwolf (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37407; -- Stonehearth Marshal (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37409; -- Stormpike Battleguard (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37410; -- Stormpike Bowman (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37411; -- Stormpike Commando (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37412; -- Stormpike Defender (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37413; -- Stormpike Emissary (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37414; -- Stormpike Explosives Expert (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37415; -- Stormpike Guardsman (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37416; -- Stormpike Herald (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37417; -- Stormpike Mine Layer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37418; -- Stormpike Mountaineer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37419; -- Stormpike Owl (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37420; -- Stormpike Quartermaster (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37421; -- Stormpike Ram Rider (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37422; -- Stormpike Ram Rider Commander (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37423; -- Stormpike Ranger (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37424; -- Stormpike Reclaimer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37425; -- Stormpike Shredder Unit (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37426; -- Stormpike Stable Master (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37427; -- Svalbrad Farmountain (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37428; -- Syndicate Agent (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37429; -- Syndicate Brigand (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37430; -- Syndicate Master Ryson (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37431; -- Taskmaster Snivvle (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37432; -- Tatterhide (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37433; -- Thanthaldis Snowgleam (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37434; -- Tower Point Marshal (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37435; -- Tower Point Warmaster (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37436; -- Trigger Guse (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37437; -- Trigger Ichman (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37438; -- Trigger Jeztor (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37439; -- Trigger Mulverick (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37440; -- Trigger Slidore (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37441; -- Trigger Vipore (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37442; -- Umi Thorson (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37443; -- Ushalac the Gloomdweller (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37444; -- Vanndar Stormpike (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37445; -- Veteran Coldmine Explorer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37446; -- Veteran Coldmine Guard (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37447; -- Veteran Coldmine Invader (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37448; -- Veteran Coldmine Surveyor (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37449; -- Veteran Commando (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37450; -- Veteran Defender (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37451; -- Veteran Guardian (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37452; -- Veteran Guardsman (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37453; -- Veteran Irondeep Explorer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37454; -- Veteran Irondeep Guard (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37455; -- Veteran Irondeep Raider (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37456; -- Veteran Irondeep Surveyor (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37457; -- Veteran Legionnaire (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37458; -- Veteran Mountaineer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37459; -- Veteran Outrunner (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37460; -- Veteran Ranger (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37461; -- Veteran Reaver (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37462; -- Veteran Sentinel (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37463; -- Veteran Warrior (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37464; -- Vipore\'s Gryphon (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37465; -- Voggah Deathgrip (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37466; -- War Rider (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37467; -- West Frostwolf Marshal (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37468; -- West Frostwolf Warmaster (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37469; -- Whitewhisker Digger (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37470; -- Whitewhisker Geomancer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37471; -- Whitewhisker Overseer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37472; -- Whitewhisker Tunnel Rat (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37473; -- Whitewhisker Vermin (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37474; -- Wildpaw Alpha (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37475; -- Wildpaw Brute (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37476; -- Wildpaw Gnoll (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37477; -- Wildpaw Mystic (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37478; -- Wildpaw Shaman (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37479; -- Wing Commander Guse (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37480; -- Wing Commander Ichman (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37481; -- Wing Commander Jeztor (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37482; -- Wing Commander Mulverick (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37483; -- Wing Commander Slidore (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37484; -- Wing Commander Vipore (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37485; -- Yaelika Farclaw (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37486; -- Zora Guthrek (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37491; -- Captain Arnath
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37493; -- Captain Brandon
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37494; -- Captain Grondel
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37495; -- Captain Rupert
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37509; -- Shattered Sun Sentry
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37510; -- Shattered Sun Archmage
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37512; -- Shattered Sun Warrior
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37523; -- Warden of the Sunwell
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37527; -- Halduron Brightwing
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37530; -- Slimy Tentacle
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37535; -- Ooze Covered Tentacle
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37538; -- Scourge Zombie
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37539; -- Ghoul Invader
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37541; -- Crypt Raider
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37542; -- Morlen Coldgrip
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37552; -- Thalorien Dawnseeker\'s Remains
UPDATE creature_template SET UnitClass = 8 WHERE entry = 37554; -- Lady Sylvanas Windrunner
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37558; -- [DND]Something Stinks Kill Credit Bunny
UPDATE creature_template SET UnitClass = 2 WHERE entry = 37577; -- Freed Horde Slave
UPDATE creature_template SET UnitClass = 2 WHERE entry = 37578; -- Freed Horde Slave
UPDATE creature_template SET UnitClass = 2 WHERE entry = 37579; -- Freed Horde Slave
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37581; -- Gorkun Ironskull
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37583; -- Dark Ranger Kalira
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37584; -- Coliseum Champion
UPDATE creature_template SET UnitClass = 2 WHERE entry = 37587; -- Coliseum Champion
UPDATE creature_template SET UnitClass = 8 WHERE entry = 37588; -- Coliseum Champion
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37592; -- Gorkun Ironskull
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37593; -- Icecrown Dungeon Horde Gunship Cannon
UPDATE creature_template SET UnitClass = 2 WHERE entry = 37596; -- Lady Sylvanas Windrunner
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37601; -- Thalorien Dawnseeker Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37607; -- Gorkun Ironskull (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37608; -- Dark Ranger Kalira (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37618; -- Gorkun Ironskull (1)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 37619; -- Freed Horde Slave (1)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 37620; -- Freed Horde Slave (1)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 37621; -- Freed Horde Slave (1)
UPDATE creature_template SET UnitClass = 8 WHERE entry = 37623; -- Coliseum Champion (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37624; -- Coliseum Champion (1)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 37625; -- Coliseum Champion (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37630; -- Lady Jaina Proudmoore (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37631; -- Lady Jaina Proudmoore (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37632; -- Lady Sylvanas Windrunner (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37633; -- Lady Sylvanas Windrunner (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37639; -- Wrathbone Siegesmith (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37657; -- Corrupted Champion (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37658; -- [PH] Unused Quarry Overseer (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37671; -- Crown Supply Guard
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37672; -- Mutated Abomination
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37691; -- Guardian Shade
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37693; -- Commander Aliocha Segard [Icecrown Raid]
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37695; -- Drudge Ghoul
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37698; -- Shambling Horror
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37699; -- RN Test Honor Guard
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37700; -- RN Test Royal Guard
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37703; -- Surging Water Elemental
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37707; -- Silvermoon Builder
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37721; -- Spiritual Reflection (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37722; -- Spiritual Reflection (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37732; -- [PH] Stormwind City Mage
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37734; -- Evacuation Portal
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37745; -- Quel\'Delar
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37746; -- Sunwell Caster Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37749; -- Dwarf Air Totem
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37750; -- Dwarf Earth Totem
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37751; -- Dwarf Fire Totem
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37752; -- Dwarf Water Totem
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37763; -- Grand Magister Rommath
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37764; -- Lor\'themar Theron
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37765; -- Captain Auric Sunchaser
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37766; -- Orc Air Totem
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37767; -- Orc Earth Totem
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37768; -- Troll Earth Totem
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37769; -- Troll Air Totem
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37770; -- Orc Fire Totem
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37771; -- Troll Fire Totem
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37772; -- Orc Water Totem
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37773; -- Troll Water Totem
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37775; -- Ironforge Guard
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37779; -- Dark Ranger Loralen
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37781; -- Sunwell Honor Guard
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37787; -- [PH] Citizen
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37788; -- [PH] Runner Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37790; -- Darnassus Sentinel
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37797; -- Dark Ranger Loralen (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37798; -- Exodar Peacekeeper
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37799; -- Vile Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37800; -- Silvermoon City Guardian
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37801; -- Shadow\'s Edge Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37814; -- Shadow\'s Edge Axe Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37820; -- [TEST] High Overlord Omar
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37825; -- Kor\'kron Overseer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37828; -- Image of Thalorien Dawnseeker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37829; -- Image of Alexstrasza
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37831; -- [PH] Captain
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37833; -- Sky-Reaver Korm Blackscar
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37844; -- Image of Anasterian
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37845; -- Image of Morlen Coldgrip
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37846; -- Blood-Queen Lana\'thel
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37860; -- Bluffwatcher
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37864; -- Lord Marrowgar Image
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37865; -- Perky Pug
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37869; -- Orgrimmar Grunt
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37882; -- The Frozen Throne
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37883; -- Bug 174037
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37898; -- Skybreaker Engineer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37902; -- Alliance Mason
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37906; -- Imprisoned Soul
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37917; -- Crown Thug
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37919; -- Empowered Vampiric Fiend
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37920; -- Kor\'kron Reaver
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37930; -- Warsong Peon
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37932; -- Orgrim\'s Hammer Siege Engineer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37935; -- Apothecary Candith Tomas
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37936; -- Morgan Dayblaze
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37937; -- Dark Iron Troublemaker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37944; -- Stormwind City Patroller
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37950; -- Valithria Dreamwalker
UPDATE creature_template SET UnitClass = 2 WHERE entry = 37955; -- Blood-Queen Lana\'thel
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37964; -- [DND] Love Boat Summoner 02
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37966; -- Undercity Love Boat
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37982; -- Furious Fire Elemental
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37983; -- Searing Fire Elemental
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37984; -- Crown Duster
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37985; -- Dream Cloud
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37990; -- [DND] Sample Quest Kill Credit Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37991; -- Ikfirus the Vile
UPDATE creature_template SET UnitClass = 2 WHERE entry = 37992; -- Tortunok
UPDATE creature_template SET UnitClass = 2 WHERE entry = 37993; -- Gerardo the Suave
UPDATE creature_template SET UnitClass = 1 WHERE entry = 37994; -- Water Elemental
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38006; -- Crown Hoodlum
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38009; -- Reanimated Fanatic
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38010; -- Reanimated Adherent
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38011; -- Sunreaver Disguise (Male)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38012; -- Sunreaver Disguise (Female)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38013; -- Silver Covenant Disguise (Female)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38014; -- Silver Covenant Disguise (Male)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38016; -- Crown Agent
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38019; -- Anolis
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38020; -- Basiliscus
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38021; -- Conolophus
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38030; -- Crown Underling
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38042; -- Kwee Q. Peddlefeet
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38043; -- Kwee Q. Peddlefeet
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38044; -- Kwee Q. Peddlefeet
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38045; -- Kwee Q. Peddlefeet
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38047; -- Blood Elf Pilgrim
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38048; -- High Elf Pilgrim
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38049; -- Young Pilgrim
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38050; -- Orgrimmar Grunt
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38052; -- Lady Liadrin
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38053; -- [DND] Fire Creature
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38056; -- Chamberlain Galiros
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38067; -- [PH] Orgrimmar Citizen
UPDATE creature_template SET UnitClass = 8 WHERE entry = 38085; -- Skybreaker Vicar (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38116; -- Image of the Sunwell
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38121; -- Soul Feast Kill Credit Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38135; -- Deformed Fanatic
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38136; -- Empowered Adherent
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38154; -- Warhawk
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38158; -- [PH] Orgrimmar Mage
UPDATE creature_template SET UnitClass = 2 WHERE entry = 38161; -- Lady Sylvanas Windrunner
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38162; -- Trapped Citizen
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38163; -- Swarming Shadows
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38164; -- [PH] Captain (Orgrimmar)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38180; -- Cleansing Totem
UPDATE creature_template SET UnitClass = 8 WHERE entry = 38181; -- Haragg the Unseen
UPDATE creature_template SET UnitClass = 2 WHERE entry = 38189; -- Lady Sylvanas Windrunner
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38191; -- Shadow\'s Edge
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38201; -- Sunreaver Agent
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38204; -- Big Love Rocket
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38207; -- Flying Big Love Rocket
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38211; -- Wrath of the Lich King Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38216; -- Mutated Professor Putricide
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38226; -- [DND] Fire Wall - No Scaling
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38230; -- [DND] Fire Wall
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38236; -- [DND] Fire Strat
UPDATE creature_template SET UnitClass = 2 WHERE entry = 38256; -- Skybreaker Sorcerer (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38260; -- Invincible
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38261; -- Skybreaker Sergeant (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38264; -- Dark Rune Giant Transform
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38271; -- Vrykul Illusion
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38273; -- Taunka Illusion
UPDATE creature_template SET UnitClass = 8 WHERE entry = 38284; -- Uvlus Banefire
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38285; -- Mutated Abomination
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38289; -- Unholy Infusion KC Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38291; -- Melee Trinket - Tuskarr
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38292; -- Melee Trinket - Taunka
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38295; -- Junior Detective
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38310; -- Invisible Stalker (Float, Uninteractible, LargeAOI) (3.00)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38319; -- Blood Queen Door
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38328; -- Roka
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38334; -- Snivel Rustrocket
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38335; -- Snivel Rustrocket
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38336; -- Snivel Rustrocket
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38337; -- Snivel Rustrocket
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38338; -- Snivel Rustrocket
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38339; -- Snivel Rustrocket
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38349; -- Captain Arnath (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38350; -- Captain Brandon (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38351; -- Captain Grondel (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38352; -- Captain Rupert (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38353; -- Blood Queen Orb
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38361; -- Wrathful Gladiator\'s Frost Wyrm
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38367; -- Tesla Coil Stalker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38374; -- Toxic Wasteling
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38386; -- Patchwerk (PTR All-Around Test)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38388; -- Patchwerk (PTR All-Around Test) (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38391; -- Val\'kyr Guardian
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38392; -- Val\'kyr Protector
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38395; -- Deformed Fanatic (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38396; -- Empowered Adherent (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38397; -- Reanimated Adherent (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38398; -- Reanimated Fanatic (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38404; -- Kor\'kron Reaver (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38407; -- Skybreaker Mortar Soldier (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38408; -- Skybreaker Rifleman (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38421; -- Nightmare Cloud
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38429; -- Nightmare Portal (Pre-effect)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38430; -- Nightmare Portal
UPDATE creature_template SET UnitClass = 2 WHERE entry = 38434; -- Blood-Queen Lana\'thel (1)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 38435; -- Blood-Queen Lana\'thel (2)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 38436; -- Blood-Queen Lana\'thel (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38453; -- Arcturis
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38485; -- Darnavan
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38490; -- Rotting Frost Giant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38491; -- Kor\'kron Lieutenant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38492; -- Skybreaker Lieutenant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38494; -- Rotting Frost Giant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38495; -- Kor\'kron Lieutenant (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38496; -- Skybreaker Lieutenant (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38497; -- Argent Crusader (Mounted)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38503; -- Blood Infusion Quest Credit Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38527; -- Shadowmourne Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38528; -- Shadowmourne Axe Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38529; -- Shadowmourne
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38545; -- Invincible
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38546; -- Frost Infusion Quest Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38547; -- Sindragosa Quest Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38548; -- Vile Gas Stalker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38551; -- Alrin the Agile
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38552; -- Alrin the Agile (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38556; -- Malleable Ooze Stalker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38557; -- Minchar Beam Stalker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38558; -- Infiltrator Minchar
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38566; -- Phantom Hallucination
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38572; -- Bug 181860
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38579; -- Terenas Menethil
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38580; -- [PH] Matt Test NPC
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38581; -- [PH] Matt Test NPC 2
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38584; -- Frostmourne Trigger
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38587; -- Professor Putricide Proxy Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38588; -- Blood Queen Proxy Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38589; -- Valithria Dreamwalker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38590; -- Valithria Dreamwalker (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38595; -- Argent Valiant Credit (Aspirant Test)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38601; -- Empowered Vampiric Fiend (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38605; -- Mutated Abomination (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38606; -- Lady Jaina Proudmoore
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38607; -- Muradin Bronzebeard
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38608; -- Uther the Lightbringer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38609; -- Lady Sylvanas Windrunner
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38610; -- Highlord Alexandros Mograine
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38630; -- Reanimated Fanatic (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38631; -- Reanimated Fanatic (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38632; -- Empowered Adherent (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38633; -- Empowered Adherent (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38634; -- Deformed Fanatic (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38635; -- Deformed Fanatic (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38667; -- Combat Trigger
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38679; -- Kor\'kron Reaver (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38680; -- Kor\'kron Reaver (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38687; -- Skybreaker Mortar Soldier (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38688; -- Skybreaker Mortar Soldier (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38689; -- Skybreaker Rifleman (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38690; -- Skybreaker Rifleman (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38691; -- Skybreaker Sergeant (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38692; -- Skybreaker Sergeant (3)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 38693; -- Skybreaker Sorcerer (2)
UPDATE creature_template SET UnitClass = 2 WHERE entry = 38694; -- Skybreaker Sorcerer (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38695; -- Icebound Frostbrood Vanquisher
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38710; -- Frostmourne Soul Transform Visual
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38716; -- Magister Thelos
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38757; -- Defile
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38763; -- Summoned Cadaver
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38778; -- Bloodbathed Frostbrood Vanquisher
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38786; -- Mutated Abomination (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38787; -- Mutated Abomination (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38788; -- Mutated Abomination (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38789; -- Mutated Abomination (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38790; -- Mutated Abomination (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38825; -- Aerin
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38830; -- [PH] Grimtotem Protector
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38831; -- Slain Bluffwatcher
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38839; -- Dark Iron Guard
UPDATE creature_template SET UnitClass = 2 WHERE entry = 38841; -- Vol\'guk
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38843; -- [PH] Grimtotem Collector
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38846; -- [PH] Slain Druid
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38857; -- PattyMacks LK
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38860; -- Bug 184688
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38863; -- Unkillable Test Dummy 83 Rogue
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38870; -- [DND] Dark Iron Guard Move To Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38877; -- Dark Iron Citizen
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38882; -- [DND] Mole Machine Spawner
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38883; -- ScottG Test
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38900; -- Auctioneer Kavarn
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38901; -- Ironforge Civilian
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38903; -- Queue trigger
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38905; -- [PH] Grimtotem Vendor
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38906; -- Auctioneer Sarnkin
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38907; -- Queue Controller
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38919; -- [PH] Grimtotem Banker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38920; -- [PH] Grimtotem Banker 2
UPDATE creature_template SET UnitClass = 1 WHERE entry = 38921; -- [PH] Grimtotem Banker 3
UPDATE creature_template SET UnitClass = 2 WHERE entry = 38995; -- Highlord Tirion Fordring
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39000; -- Reanimated Adherent (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39001; -- Reanimated Adherent (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39019; -- Quest - Wintergrasp - PvP Kill - Horde
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39021; -- Agitated Earth Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39023; -- [DND] TB Event Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39045; -- Azure Deathcharger
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39046; -- Crimson Deathcharger
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39047; -- Agitated Fire Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39048; -- Sylvanas\' Lamenter
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39055; -- Gavan Grayfeather
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39057; -- [DND] Fire Strat Auto
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39058; -- [PH] Orc Firefighter
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39060; -- Brann Bronzebeard (Prologue)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39089; -- Item: Frostborn Illusion
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39090; -- Durak Flamespeaker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39091; -- Darnavan Kill Credit 10
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39092; -- Darnavan Kill Credit 25
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39101; -- Courier Tormun
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39103; -- Twilight Seeker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39120; -- Val\'kyr Shadowguard (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39121; -- Val\'kyr Shadowguard (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39122; -- Val\'kyr Shadowguard (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39123; -- Blood Quickening Credit 25
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39125; -- Val\'kyr Shadowguard (Hover Height 20 Visual)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39130; -- Blazing Servant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39131; -- Watery Servant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39132; -- Earthen Servant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39135; -- Prologue Portal Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39137; -- Shadow Trap
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39158; -- Phalanx 2.0
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39166; -- The Lich King (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39167; -- The Lich King (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39168; -- The Lich King (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39189; -- Spirit Bomb
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39190; -- Wicked Spirit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39217; -- Terenas Menethil
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39229; -- [DND] Flying Machine
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39231; -- The Lich King (Temp)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39232; -- The Lich King (Temp) (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39233; -- The Lich King (Temp) (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39234; -- The Lich King (Temp) (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39265; -- Rescued Gnomeregan Evacuee
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39283; -- Seer Bahura
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39284; -- Vile Spirit (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39285; -- Vile Spirit (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39286; -- Vile Spirit (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39287; -- Wicked Spirit (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39288; -- Wicked Spirit (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39289; -- Wicked Spirit (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39296; -- Spirit Warden (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39299; -- Shambling Horror (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39300; -- Shambling Horror (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39301; -- Shambling Horror (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39302; -- Raging Spirit (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39303; -- Raging Spirit (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39304; -- Raging Spirit (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39305; -- Ice Sphere (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39306; -- Ice Sphere (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39307; -- Ice Sphere (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39309; -- Drudge Ghoul (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39310; -- Drudge Ghoul (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39311; -- Drudge Ghoul (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39328; -- Doomsayer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39343; -- Orgrimmar Citizen
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39355; -- [DND] Salute Quest Credit Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39356; -- [DND] Roar Quest Credit Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39361; -- [DND] Dance Quest Credit Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39362; -- [DND] Cheer Quest Credit Bunny
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39372; -- Garrosh Hellscream
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39421; -- Radiageigatron
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39448; -- Blood Guard Torek
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39454; -- Doomsayer Speech Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39462; -- Owen Test Vendor
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39466; -- Motivated Citizen
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39508; -- Captain Anton
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39581; -- Poster Marker - Orgrimmar
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39624; -- Motivated Citizen
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39632; -- Orgrimmar Citizen
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39633; -- Sen\'jin Watcher
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39639; -- Restless Zombie
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39647; -- Zalazane
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39648; -- Doomsday Cultist
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39654; -- Vol\'jin
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39672; -- Poster Marker - Stormwind
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39682; -- Ejector Mechano-Tank
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39683; -- [DND] Quest Credit Bunny - Eject
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39686; -- Stormwind Citizen
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39691; -- [DND] Quest Credit Bunny - Move 1
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39692; -- [DND] Quest Credit Bunny - Move 2
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39695; -- [DND] Quest Credit Bunny - Move 3
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39703; -- [DND] Quest Credit Bunny - Attack
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39712; -- High Tinker Mekkatorque
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39713; -- Scuttling Mechano-Tank
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39714; -- Shooting Mechano-Tank
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39757; -- Cultist Kagarn
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39758; -- Cultist Agtar
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39760; -- Cultist Tokka
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39763; -- Cultist Rokaga
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39794; -- Zarithrian Spawn Stalker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39798; -- [PH] Mother Trogg
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39805; -- General Zarithrian (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39807; -- Image of Cho\'Gall
UPDATE creature_template SET UnitClass = 2 WHERE entry = 39814; -- Onyx Flamecaller
UPDATE creature_template SET UnitClass = 2 WHERE entry = 39815; -- Onyx Flamecaller (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39817; -- [DND] Summoning Pad
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39818; -- Irradiated Mechano-Tank
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39821; -- Cho\'Gall Speech Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39823; -- Saviana Ragefire (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39825; -- Overseer Golbaz
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39827; -- Overseer Jintak
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39842; -- Invisible Stalker (Hostile, Ignore Combat, Float, Uninteractible, Large AOI)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39852; -- Raging Fire Elemental
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39856; -- Raging Storm Elemental
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39861; -- Worried Citizen
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39863; -- Halion
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39864; -- Halion (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39872; -- Cult Recruitment Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39888; -- Gnomeregan Medic
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39891; -- Doomsday Cultist
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39920; -- Baltharus the Warborn (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39922; -- Baltharus the Warborn (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39934; -- Zeppelin Sentry
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39938; -- Twilight Seeker\'s Mount
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39940; -- Dead Seeker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39944; -- Halion (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39945; -- Halion (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39967; -- Cultist Lethelyn
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39968; -- Cultist Kaima
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39969; -- Cultist Wyman
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39970; -- Cultist Orlunn
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39973; -- Swift Orange Mechanostrider
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39975; -- East Zeppelin Tower Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39976; -- West Zeppelin Tower Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 39977; -- Razor Hill Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40001; -- Combustion
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40006; -- Durak\'s Shield
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40010; -- Gnomeregan Mechano-Suit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40029; -- Meteor Strike
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40037; -- Durak\'s Shield (stage 2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40038; -- Durak\'s Shield (stage 3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40039; -- Durak\'s Shield (stage 4)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40041; -- Meteor Strike
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40042; -- Meteor Strike
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40043; -- Meteor Strike
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40044; -- Meteor Strike
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40055; -- Meteor Strike
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40057; -- Mekkatorque\'s Swift Blue Mechanostrider
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40081; -- Orb Carrier
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40083; -- Shadow Orb
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40091; -- Orb Rotation Focus
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40097; -- Overseer Talathor
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40098; -- Overseer Sylandra
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40100; -- Shadow Orb
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40101; -- Valley of Heroes Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40102; -- Westbrook Garrison Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40103; -- Goldshire Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40104; -- Raging Wind Elemental
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40110; -- Worried Citizen
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40120; -- Gnomeregan Mechano-Tank
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40122; -- Gnomeregan Infantry
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40124; -- Doomsayer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40125; -- Stormwind Citizen
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40135; -- Consumption
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40138; -- Stormwind City Guard (Corpse)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40141; -- Tormun\'s Shield
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40142; -- Halion
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40143; -- Halion (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40144; -- Halion (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40145; -- Halion (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40146; -- Halion Controller
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40151; -- Combat Stalker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40165; -- Blazing Hippogryph
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40175; -- Gnomeregan Mechano-Tank
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40176; -- Sen\'jin Frog
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40182; -- Bwonsamdi
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40184; -- Vanira
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40187; -- Vanira\'s Sentry Totem
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40188; -- Attuned Frog
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40189; -- Jun\'do the Traitor
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40191; -- Wooly White Rhino
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40192; -- Vanira
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40195; -- Mindless Troll
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40196; -- Zen\'tabra
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40198; -- Frigid Frostling
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40199; -- Tiki Warrior
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40203; -- Recon Bat
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40204; -- Handler Marnlek
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40205; -- Zom Bocom
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40206; -- Big Zokk Torquewrench
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40207; -- Kezzik the Striker
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40208; -- Leeni \"Smiley\" Smalls
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40209; -- Grex Brainboiler
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40210; -- Xazi Smolderpipe
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40211; -- Nargle Lashcord
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40212; -- Trapjaw Rix
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40213; -- Ecton Brasstumbler
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40214; -- Evee Copperspring
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40215; -- Argex Irongut
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40216; -- Blazzek the Biter
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40217; -- Echo Isle Animal
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40218; -- Spy Frog Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40220; -- [ph] Summoned Crab - Pet
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40222; -- Scout Bat
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40225; -- Hexed Dire Troll
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40231; -- Hexed Troll
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40241; -- Darkspear Warrior
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40246; -- Instant Statue Pedestal
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40253; -- Champion Uru\'zin
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40256; -- Troll Citizen
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40257; -- Troll Citizen
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40260; -- Troll Volunteer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40263; -- Tiki Warrior
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40264; -- Troll Volunteer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40265; -- [DND] Zen\'tabra Cat Form
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40274; -- Restless Zombie
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40279; -- Bwonsamdi
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40281; -- Crashin\' Thrashin\' Racer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40295; -- Clockwork Rocket Bot
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40301; -- Tiger Matriarch Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40305; -- Spirit of the Tiger
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40312; -- Tiger Matriarch
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40329; -- Zen\'tabra
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40352; -- Witch Doctor Hez\'tok
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40354; -- [DND] Zen\'tabra Travel Form
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40356; -- Ritual Dancer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40361; -- Troll Dance Leader
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40363; -- Dance Participant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40368; -- Zalazane\'s Remains
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40373; -- Ritual Drummer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40374; -- Voice of the Spirits
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40387; -- Omen Event Credit
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40388; -- Darkspear Ancestor
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40391; -- Vol\'jin
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40392; -- Darkspear Warrior
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40404; -- Tyrantus
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40405; -- Kieupid
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40413; -- Alenjon Sunblade
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40414; -- Bones of Bwonsamdi
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40415; -- Scout\'s Bat
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40416; -- Darkspear Scout
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40418; -- Charscale Invoker (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40420; -- Charscale Assaulter (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40422; -- Charscale Elite (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40424; -- Charscale Commander (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40425; -- Voodoo Troll
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40426; -- Tiny Mooncloth Carpet
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40428; -- [DND] Quest Credit Bunny - ET Battle
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40435; -- Headless Ghost
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40437; -- Battered Brewer
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40438; -- Steamwheedle Shyster
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40468; -- Shadow Orb
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40469; -- Shadow Orb
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40470; -- Orb Carrier (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40471; -- Orb Carrier (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40472; -- Orb Carrier (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40479; -- Camera Vehicle
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40481; -- Troll Celebrant
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40492; -- Zild\'jian
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40502; -- Zalazane
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40533; -- Frosty Flying Carpet
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40606; -- Knight-Lieutenant T\'Maire Sydes
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40624; -- Celestial Dragon
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40625; -- Celestial Steed
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40670; -- Combustion (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40671; -- Combustion (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40672; -- Combustion (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40673; -- Consumption (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40674; -- Consumption (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40675; -- Consumption (3)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40681; -- Living Inferno
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40682; -- Living Inferno (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40683; -- Living Ember
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40684; -- Living Ember (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40703; -- Lil\' XT
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40704; -- Vrykul Proto-dragon Mount
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40721; -- Murkimus the Gladiator
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40724; -- Crafticus Jones
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40725; -- X-53 Touring Rocket
UPDATE creature_template SET UnitClass = 1 WHERE entry = 40842; -- Ruby Drake
UPDATE creature_template SET UnitClass = 1 WHERE entry = 41839; -- [DND] Controller
UPDATE creature_template SET UnitClass = 1 WHERE entry = 42078; -- Mini Thor
UPDATE creature_template SET UnitClass = 1 WHERE entry = 43280; -- Orb Rotation Focus (1)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 43281; -- Orb Rotation Focus (2)
UPDATE creature_template SET UnitClass = 1 WHERE entry = 43282; -- Orb Rotation Focus (3)

-- Overseer Kragosh - event
UPDATE creature SET MovementType = 2 WHERE guid = 104535;
UPDATE creature_template SET MovementType = 2 WHERE entry = 36217;
DELETE FROM creature_movement_template WHERE entry = 36217;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(36217,1,1438.03,403.83,-85.2626,45000,0,0,0,0,0,0,0,0,3.12414,0,0),
(36217,2,1438.03,403.83,-85.2626,6000,3621701,0,0,0,0,0,0,0,3.12414,0,0),
(36217,3,1438.01,400.654,-85.2645,0,0,0,0,0,0,0,0,0,4.67316,0,0),
(36217,4,1436.25,397.342,-85.2657,0,0,0,0,0,0,0,0,0,3.97572,0,0),
(36217,5,1432.92,395.72,-85.2653,0,0,0,0,0,0,0,0,0,3.23666,0,0),
(36217,6,1430.37,397.151,-85.2619,0,0,0,0,0,0,0,0,0,2.48347,0,0),
(36217,7,1428.68,401,-85.2571,55000,3621702,0,0,0,0,0,0,0,1.86693,0,0),
(36217,8,1430.37,397.151,-85.2619,0,0,0,0,0,0,0,0,0,5.86461,0,0),
(36217,9,1432.92,395.72,-85.2653,0,0,0,0,0,0,0,0,0,0.314982,0,0),
(36217,10,1436.25,397.342,-85.2657,0,0,0,0,0,0,0,0,0,1.24254,0,0),
(36217,11,1438.01,400.654,-85.2645,0,0,0,0,0,0,0,0,0,1.58026,0,0),
(36217,12,1438.03,403.83,-85.2626,2000,0,0,0,0,0,0,0,0,1.72556,0,0),
(36217,13,1438.03,403.83,-85.2626,420000,0,0,0,0,0,0,0,0,3.12414,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3621701,3621702);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3621701,2,0,0,0,0,0,0,2000005722,0,0,0,0,0,0,0,''),
(3621702,0,1,25,0,0,0,0,0,0,0,0,0,0,0,0,''),
(3621702,4,0,0,0,0,0,0,2000005723,0,0,0,0,0,0,0,''),
(3621702,10,3,0,0,0,0,0,0,0,0,0,0,0,0,0.640137,''),
(3621702,11,0,0,0,0,0,0,2000005724,0,0,0,0,0,0,0,''),
(3621702,20,31,2055,20,0,0,0,0,0,0,0,0,0,0,0,''), -- let check if creature is alive
(3621702,21,3,0,0,2055,20,7,0,0,0,0,0,0,0,4.00321,''),
(3621702,22,0,0,0,2055,20,4,2000005725,0,0,0,0,0,0,0,'force 2055 to: say text'),
(3621702,32,0,0,0,2055,20,4,2000005726,0,0,0,0,0,0,0,'force 2055 to: say text'),
(3621702,38,0,0,0,0,0,0,2000005727,0,0,0,0,0,0,0,''),
(3621702,44,3,0,0,0,0,0,0,0,0,0,0,0,0,3.99929,''),
(3621702,46,0,0,0,0,0,0,2000005728,0,0,0,0,0,0,0,''),
(3621702,48,1,66,0,36213,140768,7 | 0x10,0,0,0,0,0,0,0,0,''),
(3621702,50,3,0,0,2055,20,7,0,0,0,0,0,0,0,2.26893,''),
(3621702,50,3,0,0,36213,140768,7 | 0x10,0,0,0,0,1420.97,389.227,-84.9886,0.0620715,''),
(3621702,51,3,0,0,36213,140768,7 | 0x10,0,0,0,0,1422.92,387.966,-84.9914,5.27633,''),
(3621702,52,3,0,0,36213,140768,7 | 0x10,0,0,0,0,1422.9,384.706,-84.9962,4.3323,''),
(3621702,53,3,0,0,36213,140768,7 | 0x10,0,0,0,0,1420.35,382.272,-84.9962,3.85478,''),
(3621702,56,0,0,0,36213,140768,7 | 0x10,2000005729,0,0,0,0,0,0,0,'force 36213 to: say text'),
(3621702,63,3,0,0,36213,140768,7 | 0x10,0,0,0,0,1418.86,388.783,-84.9909,0.942079,''),
(3621702,72,3,0,0,36213,140768,7 | 0x10,0,0,0,0,0,0,0,0.942079,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000005722 AND 2000005729;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005722,'I\'ve got my eye on you, Faranell.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005723,'No abominations protecting you. No secrecy. No plotting in the dark.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005724,'If you so much as spit without my permission, this place shuts down. Forcefully.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005725,'I assure you, overseer, the Royal Apothecary Society dearly wishes to make up for the tragic misguidance which ended so many lives.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005726,'We will cause you no trouble. We seek only to continue our research in peace.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005727,'We\'ll see about that.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005728,'Get that rotten nut to shut his trap!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,5,NULL),
(2000005729,'Shut your face, you gibbering idiot! ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,5,NULL);

-- UDB_119
-- Bloody Breakout(q.12727) 
DELETE FROM dbscripts_on_quest_start WHERE id = 12727;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12727,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Koltira active'),
(12727,1,29,2,2,0,0,0,0,0,0,0,0,0,0,0,'quest flag removed'),
(12727,2,0,0,0,0,0,0,2000000440,0,0,0,0,0,0,0,''),
(12727,3,28,1,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_SIT'),
(12727,7,0,0,0,0,0,0,2000000441,0,0,0,0,0,0,0,''),
(12727,8,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(12727,10,3,0,0,0,0,0,0,0,0,0,1653.36,-6038.34,127.584,1.78556,''),  -- JumpGravity: 137.7387 (should jump here)
(12727,11,3,0,0,0,0,0,0,0,0,0,1653.94,-6034.72,127.584,1.29819,''), 
(12727,14,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(12727,15,0,0,0,29011,129877,7 | 0x10,2000000442,0,0,0,0,0,0,0,'Valroth - text'),
(12727,16,15,52899,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(12727,16,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(12727,18,3,0,0,0,0,0,0,0,0,0,1651.89,-6037.101,127.5844,3.839724,''),
(12727,18,10,29007,300000,0,0,0,0,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon Crimson Acolyte'),
(12727,19,10,29007,300000,0,0,0,0,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon Crimson Acolyte'),
(12727,19,10,29007,300000,0,0,0,0,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon Crimson Acolyte'),
(12727,20,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(12727,20,0,0,0,0,0,0,2000000443,0,0,0,0,0,0,0,''),
(12727,21,15,52894,0,0,0,0x04 | 0x08,0,0,0,0,0,0,0,0,''),
(12727,24,0,0,0,0,0,0,2000000444,0,0,0,0,0,0,0,''),
(12727,24,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(12727,64,0,0,0,0,0,0,2000000445,0,0,0,0,0,0,0,''),
(12727,65,0,0,0,29011,129877,7 | 0x10,2000000446,0,0,0,0,0,0,0,'Valroth - text'),
(12727,66,10,29007,300000,0,0,0,0,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon Crimson Acolyte'),
(12727,67,10,29007,300000,0,0,0,0,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon Crimson Acolyte'),
(12727,67,10,29007,300000,0,0,0,0,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon Crimson Acolyte'),
(12727,99,0,0,0,0,0,0,2000000447,0,0,0,0,0,0,0,''),
(12727,100,0,0,0,29011,129877,7 | 0x10,2000000448,0,0,0,0,0,0,0,'Valroth - text'),
(12727,101,10,29007,300000,0,0,0,0,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon Crimson Acolyte'),
(12727,102,10,29007,300000,0,0,0,0,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon Crimson Acolyte'),
(12727,102,10,29007,300000,0,0,0,0,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon Crimson Acolyte'),
(12727,144,0,0,0,0,0,0,2000000449,0,0,0,0,0,0,0,''),
(12727,145,0,0,0,29011,129877,7 | 0x10,2000000450,0,0,0,0,0,0,0,'Valroth - text'),
(12727,146,10,29001,420000,0,0,0,0,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon High Inquisitor Valroth');
UPDATE quest_template SET StartScript = 12727 WHERE entry = 12727;
DELETE FROM db_script_string WHERE entry BETWEEN 2000000440 AND 2000000451;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000440,'Damn the Crusade! I think my ribs are broken and I might be bleeding internally.',0,0,0,1,NULL),
(2000000441,'I\'ll need to get my runeblade and armor... Just need a little more time.',0,0,0,0,NULL),
(2000000442,'Acolytes, chain them up! Prepare them for questioning!',0,1,0,0,NULL),
(2000000443,'I\'m still weak, but I think I can get an anti-magic barrier up. Stay inside it or you\'ll be destroyed by their spells.',0,0,0,0,NULL),
(2000000444,'Maintaining this barrier will require all of my concentration. Kill them all!',0,0,0,0,NULL),
(2000000445,'There are more comming. Defend yourself! Don\'t fall out of anti-magic field! They\'ll tear you apart without its protection!',0,0,0,0,NULL),
(2000000446,'Scourge filth! By the Light be cleansed!',0,1,0,0,NULL),
(2000000447,'I can\'t keep this barrier up much longer... Where is that coward?',0,0,0,0,NULL),
(2000000448,'The Crusade will purge your kind from this world!',0,1,0,0,NULL),
(2000000449,'The Hight Inquisitor comes! Be ready, death knight! Do not let him draw you out of the protective bounds of my anti-magic field! Kill him and take his head!',0,0,0,0,NULL),
(2000000450,'It seams that I\'ll need to deal with you myself. The HIgh Inquisitor comes for you, Scourge!',0,1,0,0,NULL),
(2000000451,'%s\'s remains fall on the ground.',0,3,0,0,NULL);
-- Crimson Acolyte
UPDATE creature_template SET MaxLevel = 55, MovementType = 2, Expansion = 0, UnitFlags = 33026, HealthMultiplier = 0.3124, MinLevelHealth = 633, MinLevelHealth = 653, MinLevelMana = 1020, MaxLevelMana = 1058 WHERE entry = 29007;
DELETE FROM creature_movement_template WHERE entry = 29007;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(29007,1,1640.65,-6032.49,134.739,2000,2900701,4.58821,0,0),
(29007,2,1647.06,-6043.39,127.583,10000,2900702,0.570896,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2900701,2900702); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2900701,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Valroth active'),
(2900701,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2900701,4,22,2103,0x01 | 0x08,0,0,0,0,0,0,0,0,0,0,0,'temp faction'), -- only flag is removed here
(2900702,1,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'wp pause');
-- High Inquisitor Valroth
UPDATE creature_template SET MovementType = 2, Expansion = 0, UnitFlags = 33026, HealthMultiplier = 3.7503, MinLevelMana = 6489, MaxLevelMana = 6489 WHERE entry = 29001;
DELETE FROM creature_movement_template WHERE entry = 29001;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(29001,1,1640.65,-6032.49,134.739,2000,2900101,4.58821,0,0),
(29001,2,1647.06,-6043.39,127.583,200000,0,0.570896,0,0),
(29001,3,1647.06,-6043.39,127.583,150000,2900102,0.570896,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2900101,2900102); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2900101,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Valroth active'),
(2900101,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2900101,5,22,2103,0x01 | 0x08,0,0,0,0,0,0,0,0,0,0,0,'temp faction'), -- only flag is removed here
(2900102,1,31,28912,100,0,0,0,0,0,0,0,0,0,0,0,''), -- check if source is still there
(2900102,2,15,5,0,28912,100,7,0,0,0,0,0,0,0,0,''),
(2900102,3,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'desp self');
DELETE FROM dbscripts_on_creature_death WHERE id = 29001;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(29001,0,0,0,0,0,0,0,2000000451,0,0,0,0,0,0,0,''),
(29001,0,15,52929,0,0,0,0,0,0,0,0,0,0,0,0,''),
(29001,1,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(29001,1,28,0,0,28912,50,7,0,0,0,0,0,0,0,0,'STATE_STAND'),
(29001,2,14,52894,0,28912,50,7,0,0,0,0,0,0,0,0,''),
(29001,3,20,2,0,28912,50,7,0,0,0,0,0,0,0,0,'movement chenged to 2:movement');
-- Koltira Deathweaver
UPDATE creature_template_addon SET b2_0_sheath = 0, auras = NULL WHERE entry = 28912;
UPDATE creature SET spawntimesecs = 60 WHERE guid = 130354;
UPDATE creature_template SET MovementType = 0, UnitFlags = 33282, ExtraFlags = 2 WHERE entry = 28912; -- movement 2 will be set by EVENT
DELETE FROM creature_movement_template WHERE entry = 28912;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(28912,1,1651.89,-6037.101,127.5844,18000,2891201,3.839724,0,0),
(28912,2,1640.65,-6032.49,134.739,0,0,0,0,0),
(28912,3,1639.1,-6028.1,134.739,0,0,2.67357,0,0),
(28912,4,1628.37,-6026.34,134.739,0,0,2.29266,0,0),
(28912,5,1625.79,-6021.81,134.739,0,0,1.41301,0,0),
(28912,6,1627.06,-6016.95,134.739,0,0,0.692014,0,0),
(28912,7,1639.85,-6015.64,134.748,0,0,0.0668366,0,0),
(28912,8,1648.06,-6013.66,133.24,0,0,0.82239,0,0),
(28912,9,1652.9,-5973.75,132.524,1000,2891202,1.51513,0,0),
(28912,10,1653.61,-5927.44,121.345,0,0,1.57404,0,0),
(28912,11,1656.07,-5905.5,116.21,0,0,1.14364,0,0),
(28912,12,1668.06,-5894.89,116.141,0,0,0.396723,0,0),
(28912,13,1694.23,-5882.54,116.138,6000,2891203,0.141469,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2891201,2891202,2891203); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2891201,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Koltira active'),
(2891201,1,0,0,0,0,0,0,2000000452,0,0,0,0,0,0,0,''),
(2891201,9,0,0,0,0,0,0,2000000453,0,0,0,0,0,0,0,''),
(2891201,15,0,0,0,0,0,0,2000000454,0,0,0,0,0,0,0,''),
(2891201,16,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2891202,1,24,25445,0,0,0,0x08,0,0,0,0,0,0,0,0,'mount'),
(2891203,0,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'quest flag added'),
(2891203,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Koltira unactive'),
(2891203,0,24,0,0,0,0,0,0,0,0,0,0,0,0,0,'unmount'),
(2891203,0,23,29011,0,0,0,0,0,0,0,0,0,0,0,0,'temp morph'),
(2891203,1,15,5,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2891203,2,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'desp');
DELETE FROM dbscripts_on_creature_death WHERE id = 28912;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(28912,1,23,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(28912,1,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'quest flag added'),
(28912,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Koltira unactive');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000452 AND 2000000454;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000452,'The death of the High Inquisitor of New Avalon will not go unnoticed. You need to get out of here at once! Go, before more of them show up. I\'ll be fine on my own.',0,0,0,1,NULL),
(2000000453,'I\'ll draw their fire, you make your escape behind me.',0,0,0,1,NULL),
(2000000454,'Your High Inquisitor is nothing more than a pile of meat, Crusaders! There are none beyond the grasp of the Scourge!',0,1,0,1,NULL);
