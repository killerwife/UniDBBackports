-- ### Black Temple ###

DELETE FROM spell_script_target WHERE entry = 41537;
INSERT INTO spell_script_target (entry, TYPE, targetEntry) VALUES
(41537, 1, 23472);
-- Shade of Akama
DELETE FROM creature_linking_template WHERE entry IN (23215, 23216, 23523, 23318, 23524);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(23215, 564, 22990, 4112, 0),
(23216, 564, 22990, 4112, 0),
(23523, 564, 22990, 4112, 0),
(23318, 564, 22990, 4112, 0),
(23524, 564, 22990, 4112, 0);
UPDATE creature SET MovementType = 0 WHERE id = 23210;
-- Council
DELETE FROM spell_script_target WHERE entry = 41455;
INSERT INTO spell_script_target (entry, TYPE, targetEntry) VALUES
(41455, 1, 22949),
(41455, 1, 22950),
(41455, 1, 22951),
(41455, 1, 22952);
DELETE FROM spell_script_target WHERE entry = 41499;
INSERT INTO spell_script_target (entry, TYPE, targetEntry) VALUES
(41499, 1, 22949),
(41499, 1, 22950),
(41499, 1, 22951),
(41499, 1, 22952);
DELETE FROM spell_script_target WHERE entry = 41333;
INSERT INTO spell_script_target (entry, TYPE, targetEntry) VALUES
(41333, 1, 22949),
(41333, 1, 22950),
(41333, 1, 22951),
(41333, 1, 22952);

DELETE FROM creature_linking_template WHERE entry IN (22951, 22950, 22952);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(22951, 564, 22949, 143, 0),
(22950, 564, 22949, 143, 0),
(22952, 564, 22949, 143, 0);
-- Illidan
DELETE FROM creature_linking_template WHERE entry IN (23089, 23197, 23226, 23498, 22996, 22997, 23375);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(23089, 564, 22917, 4096, 0),
(23197, 564, 22917, 4096, 0),
(23226, 564, 22917, 4112, 0),
(23498, 564, 22917, 4112, 0),
(22996, 564, 22917, 4096, 0),
(22997, 564, 22917, 4096, 0),
(23375, 564, 22917, 4096, 0);
DELETE FROM spell_script_target WHERE entry IN (39635, 39849);
INSERT INTO spell_script_target (entry, TYPE, targetEntry) VALUES
(39635, 1, 23448),
(39849, 1, 23448);
-- cage spells
DELETE FROM spell_script_target WHERE entry IN (40704, 40707, 40708, 40709, 40710, 40711, 40712, 40713);
INSERT INTO spell_script_target (entry, TYPE, targetEntry) VALUES
(40704, 1, 23292),
(40707, 1, 23293),
(40708, 1, 23294),
(40709, 1, 23295),
(40710, 1, 23296),
(40711, 1, 23297),
(40712, 1, 23298),
(40713, 1, 23299);

-- Coren direbrew
DELETE FROM spell_script_target WHERE entry = 52850;
INSERT INTO spell_script_target (entry, TYPE, targetEntry) VALUES
(52850, 1, 23872);
DELETE FROM creature_linking_template WHERE entry IN (26776, 26764, 26822);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(26776, 230, 23872, 4112, 0),
(26764, 230, 23872, 4112, 0),
(26822, 230, 23872, 4112, 0);
DELETE FROM creature_template_addon WHERE entry = 26764;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(26764, 0, 0, 1, 0, 0, 0, '47759 47760');
