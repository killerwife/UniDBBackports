-- Grz3s
-- Raven Stone Fragment should be spawned 'only' by Cenarion Sparrowhawk in q.10988.
DELETE FROM gameobject WHERE guid IN (39908,39909,39910,39911,39912,39913,39914,39915,39916,39917,39918,39919,39920);
-- Cenarion Sparrowhawk should be spawned 'only' in q.10988.
DELETE FROM creature WHERE guid = 78965;
-- Skettis - Invis Raven Stone - (Terrokar Forest)
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(140488,22986,530,1,1,0,0,-3709.53,3744.06,277.073,1.62054,320,0,0,41,60,0,0),
(140489,22986,530,1,1,0,0,-3758.84,3732.39,276.846,5.73288,320,0,0,41,60,0,0),
(140490,22986,530,1,1,0,0,-3687.76,3677.07,275.927,5.73288,320,0,0,41,60,0,0),
(140491,22986,530,1,1,0,0,-3591.33,3724.59,285.996,5.73288,320,0,0,41,60,0,0),
(140492,22986,530,1,1,0,0,-3615.09,3667.87,277.788,1.00477,320,0,0,41,60,0,0),
(140493,22986,530,1,1,0,0,-3642.5,3189.22,314.596,1.50114,320,0,0,41,60,0,0),
(140494,22986,530,1,1,0,0,-3967.37,3323.17,289.012,1.50114,320,0,0,41,60,0,0),
(140495,22986,530,1,1,0,0,-3523.61,3591.08,279.754,0.483256,320,0,0,41,60,0,0);