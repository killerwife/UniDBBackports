-- ### BWL ###
-- Link Grethok to Razorgore
UPDATE creature_linking_template SET flag = 135 WHERE entry = 12557 AND map = 469;
DELETE FROM spell_script_target WHERE entry = 20037;
INSERT INTO spell_script_target (entry, TYPE, targetEntry) VALUES
(20037, 1, 16604);
-- Orb of Domination event
DELETE FROM dbscripts_on_event WHERE id = 8302;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, buddy_entry, search_radius, data_flags, comments) VALUES
(8302, 0, 15, 23014, 14449, 10, 7, 'Blackwing Orb Trigger - Cast Possess visual'),
(8302, 90, 14, 23014, 12435, 100, 7, 'Razorgore - Remove Possess visual'),
(8302, 90, 15, 23958, 0, 0, 4, 'Cast Mind Exhaustion on player');
-- Increase Eggs spawntime
UPDATE gameobject SET spawntimesecs=604800 WHERE id=177807;

-- Arcatraz intro mobs
UPDATE creature_template SET MovementType = 0 WHERE entry IN (20865, 20864);

-- quest 1920 
DELETE FROM creature_template_addon WHERE entry = 6492;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(6492, 0, 0, 0, 0, 0, 0, '9093');

-- sd2
-- 2326 (missing from prev updates)
UPDATE creature_template SET ScriptName='' WHERE entry=8479;

-- 2720
UPDATE creature_template SET ScriptName='' WHERE entry=23598;

-- 2722
UPDATE creature_template SET ScriptName='boss_coren_direbrew' WHERE entry=23872;

-- 2730
UPDATE item_template SET ScriptName='' WHERE entry=31088;
UPDATE creature_template SET ScriptName='' WHERE entry=19870;
UPDATE creature_template SET ScriptName='' WHERE entry=22009;
UPDATE gameobject_template SET ScriptName='go_shield_generator' WHERE entry IN (185051,185052,185053,185054);

-- 2731
UPDATE creature_template SET ScriptName='npc_target_trigger' WHERE entry=17474;

-- 2734
UPDATE creature_template SET ScriptName='npc_shield_orb' WHERE entry=25502;

-- 2737
UPDATE creature_template SET ScriptName='npc_enslaved_soul' WHERE entry=23469;
UPDATE creature_template SET ScriptName='' WHERE entry=23111;

-- 2742
UPDATE creature_template SET ScriptName='npc_protectorate_demolitionist' WHERE entry=20802;

-- 2743
UPDATE creature_template SET ScriptName='npc_captured_vanguard' WHERE entry=20763;

-- 2745
UPDATE creature_template SET ScriptName='' WHERE entry=23336;
UPDATE creature_template SET ScriptName='' WHERE entry=23069;
UPDATE creature_template SET ScriptName='' WHERE entry=23259;
UPDATE gameobject_template SET ScriptName='' WHERE entry=185916;

-- 2749
UPDATE creature_template SET ScriptName='npc_fel_guard_hound' WHERE entry=21847;

-- 2752
UPDATE creature_template SET ScriptName='spell_dummy_npc' WHERE entry=24922;

-- 2756
UPDATE creature_template SET ScriptName='npc_eye_of_acherus' WHERE entry=28511;

-- 2757
DELETE FROM world_template WHERE map=609;
INSERT INTO world_template VALUES
(609, 'world_map_ebon_hold');

-- 2758
UPDATE creature_template SET ScriptName='npc_scarlet_ghoul' WHERE entry=28845;

-- 2761
UPDATE creature_template SET ScriptName='npc_highlord_darion_mograine' WHERE entry=29173;
UPDATE creature_template SET ScriptName='npc_fellow_death_knight' WHERE entry IN (29199, 29204, 29200);

-- 2763
UPDATE creature_template SET ScriptName='npc_acherus_deathcharger' WHERE entry=28782;

-- 2766
UPDATE creature_template SET ScriptName='npc_lich_king_light_dawn' WHERE entry=29183;

-- 2790
UPDATE creature_template SET ScriptName='npc_baltharus_clone' WHERE entry=39899;

-- 2799
UPDATE creature_template SET ScriptName='boss_halion_real' WHERE entry=39863;
UPDATE creature_template SET ScriptName='boss_halion_twilight' WHERE entry=40142;

-- 2801
UPDATE creature_template SET ScriptName='npc_dark_matter' WHERE entry=28235;
UPDATE creature_template SET ScriptName='npc_searing_gaze' WHERE entry=28265;

-- 2802
UPDATE creature_template SET ScriptName='' WHERE entry=29682;

-- 2806
UPDATE creature_template SET ScriptName='spell_dummy_npc' WHERE entry=21729;

-- 2808
UPDATE creature_template SET ScriptName='boss_varos' WHERE entry=27447;

-- 2809
UPDATE creature_template SET ScriptName='npc_azure_ring_captain' WHERE entry=28236;
UPDATE creature_template SET ScriptName='npc_arcane_beam' WHERE entry=28239;
UPDATE creature_template SET ScriptName='npc_centrifuge_core' WHERE entry=28183;
DELETE FROM scripted_event_id WHERE id IN (10665,12229,18454,18455);
INSERT INTO scripted_event_id VALUES
(10665,'event_spell_call_captain'),
(12229,'event_spell_call_captain'),
(18454,'event_spell_call_captain'),
(18455,'event_spell_call_captain');

-- 2810
UPDATE creature_template SET ScriptName='npc_planar_anomaly' WHERE entry=30879;

-- 2815
UPDATE creature_template SET ScriptName='npc_oculus_drake' WHERE entry IN (27756, 27692, 27755);

-- 2816
UPDATE creature_template SET ScriptName='npc_crystal_spike_trigger' WHERE entry IN (27101, 27079);

-- 2817
UPDATE creature_template SET ScriptName='npc_grauf' WHERE entry=26893;

-- 2821
UPDATE creature_template SET ScriptName='spell_dummy_npc' WHERE entry=13016;

-- 2823
UPDATE creature_template SET ScriptName='npc_impale_target' WHERE entry=29184;

-- 2826
UPDATE creature_template SET ScriptName='npc_wyrmrest_skytalon' WHERE entry=30161;

-- 2831
UPDATE gameobject_template SET ScriptName='go_father_flame' WHERE entry=175245;

-- 2832
UPDATE creature_template SET ScriptName='boss_krick' WHERE entry=36477;
UPDATE creature_template SET ScriptName='boss_ick' WHERE entry=36476;
UPDATE creature_template SET ScriptName='npc_exploding_orb' WHERE entry=36610;

-- 2837
UPDATE creature_template SET ScriptName='npc_ymirjar_deathbringer' WHERE entry=36892;
DELETE FROM scripted_areatrigger WHERE entry=5578;
INSERT INTO scripted_areatrigger VALUES (5578,'at_pit_of_saron');

-- 2838
UPDATE creature_template SET ScriptName='npc_collapsing_icicle' WHERE entry=36847;

-- 2840
UPDATE creature_template SET ScriptName='boss_tyrannus' WHERE entry=36658;
UPDATE creature_template SET ScriptName='boss_rimefang_pos' WHERE entry=36661;

-- 2842
DELETE FROM scripted_areatrigger WHERE entry IN (5581);
INSERT INTO scripted_areatrigger VALUES
(5581,'at_pit_of_saron');

-- 2846
UPDATE creature_template SET ScriptName='' WHERE entry=15302;
UPDATE creature_template SET ScriptName='' WHERE entry=15260;

-- 2847
UPDATE creature_template SET ScriptName='npc_erekem_guard' WHERE entry=32228;

-- 2856
UPDATE gameobject_template SET ScriptName='go_black_dragon_egg' WHERE entry=177807;