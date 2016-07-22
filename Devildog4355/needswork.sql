needswork

-- Artificer Daelo <Engineering Trainer> c.17222
UPDATE creature_movement SET script_id = 1722201, textid1 = 0, textid2 = 0 WHERE id = 84582 AND point = 1;
UPDATE creature_movement SET script_id = 1722202, textid1 = 0, textid2 = 0 WHERE id = 84582 AND point = 3;
UPDATE creature_movement SET script_id = 1722203, textid1 = 0, textid2 = 0 WHERE id = 84582 AND point = 5;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1722201,1722202,1722203); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1722201,4,0,0,0,0,0,0,2000005143,2000005224,0,0,0,0,0,0,''),
(1722202,4,0,0,0,0,0,0,2000005144,2000005225,0,0,0,0,0,0,''),
(1722203,4,0,0,0,0,0,0,2000005145,2000005226,0,0,0,0,0,0,'');

-- missing spell 33242
-- GUID: Full: 0xF1304B3B003954F3 Type: Unit Entry: 19259 Low: 3757299 -- sniff
-- UNIT_CREATED_BY_SPELL: 33242  -- sniff
DELETE FROM spell_template WHERE id = 33242;
INSERT INTO `spell_template` (`id`, `attr_ex`, `attr_ex2`, `attr_ex3`, `proc_flags`, `proc_chance`, `duration_index`, `effect0`, `effect0_implicit_target_a`, `effect0_implicit_target_b`, `effect0_radius_idx`, `effect0_apply_aura_name`, `effect0_misc_value`, `effect0_misc_value_b`, `effect0_trigger_spell`, `comments`) VALUES
('33242','0','4','0','0','101','21','28','18','0','7','0','19259','64','0','summon Infernal Invader');