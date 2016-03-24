-- Event - (q.11081) #1
DELETE FROM dbscripts_on_event WHERE id = 14856;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(14856,1,15,40136,0,23102,30,7,0,0,0,0,0,0,0,0,''),
(14856,4,10,23096,120000,0,0,0,0,0,0,0,-2482.269,4661.722,161.5004,0.9424778,'spawn Acolyte of Air'),
(14856,118,31,23096,100,0,0,0,0,0,0,0,0,0,0,0,''), -- let check if creature is alive
(14856,119,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'despawn'); 
-- Event - (q.11081) #2
DELETE FROM dbscripts_on_event WHERE id = 14857;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(14857,1,15,40141,0,23102,30,7,0,0,0,0,0,0,0,0,''),
(14857,4,10,23097,120000,0,0,0,0,0,0,0,-2443.984,4634.114,158.2763,2.36124,'spawn Acolyte of Water'),
(14857,118,31,23097,100,0,0,0,0,0,0,0,0,0,0,0,''), -- let check if creature is alive
(14857,119,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'despawn');
-- Event - (q.11081) #3
DELETE FROM dbscripts_on_event WHERE id = 14858;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(14858,3,15,40147,0,23102,30,7,0,0,0,0,0,0,0,0,''),
(14858,4,10,23098,120000,0,0,0,0,0,0,0,-2385.025,4552.593,165.7631,2.36124,'spawn Acolyte of Earth'),
(14858,118,31,23098,100,0,0,0,0,0,0,0,0,0,0,0,''), -- let check if creature is alive
(14858,119,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'despawn');
-- Event - (q.11081) #4
DELETE FROM dbscripts_on_event WHERE id = 14859;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(14859,1,15,40148,0,23102,140758,7 | 0x10,0,0,0,0,0,0,0,0,''),
(14859,1,15,40148,0,23102,140759,7 | 0x10,0,0,0,0,0,0,0,0,''),
(14859,1,15,40148,0,23102,140760,7 | 0x10,0,0,0,0,0,0,0,0,''),
(14859,1,15,40148,0,23102,140761,7 | 0x10,0,0,0,0,0,0,0,0,''),
(14859,1,15,40148,0,23102,140762,7 | 0x10,0,0,0,0,0,0,0,0,''),
(14859,1,15,40148,0,23102,140763,7 | 0x10,0,0,0,0,0,0,0,0,''),
(14859,1,15,40148,0,23102,140764,7 | 0x10,0,0,0,0,0,0,0,0,''),
(14859,1,15,40148,0,23102,140765,7 | 0x10,0,0,0,0,0,0,0,0,''),
(14859,1,15,40148,0,23102,140766,7 | 0x10,0,0,0,0,0,0,0,0,''),
(14859,1,15,40148,0,23102,140767,7 | 0x10,0,0,0,0,0,0,0,0,''),
(14859,4,10,23099,120000,0,0,0,0,0,0,0,-2425.974,4444.52,167.2437,1.884956,'spawn Acolyte of Fire'),
(14859,118,31,23099,100,0,0,0,0,0,0,0,0,0,0,0,''), -- let check if creature is alive
(14859,119,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'despawn');
-- Event - (q.11081) #final
DELETE FROM dbscripts_on_event WHERE id = 14860;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(14860,0,20,2,0,23102,140757,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint');