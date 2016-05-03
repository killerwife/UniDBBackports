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
+DELETE FROM conditions WHERE condition_entry IN (764, 765, 766, 771, 793); 
 INSERT INTO conditions (condition_entry, TYPE, value1, value2) VALUES
(764, 20, 1681, 0), -- has achievement The Loremaster
(765, 20, 1682, 0), -- has achievement The Loremaster
(766, 20, 45, 0), -- has achievement Explore Northrend --> Tabard of the Explorer
(771, 20, 1021, 0), -- has achievement Twenty-Five Tabards --> Tabard of the Achiever
(793, 20, 876, 0), -- has achievement Brutally Dedicated