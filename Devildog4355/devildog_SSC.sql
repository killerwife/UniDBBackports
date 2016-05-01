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
