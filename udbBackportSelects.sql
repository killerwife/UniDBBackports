select * from gossip_menu;

select * from gameobject where (guid between 121700 and 121846) or (guid between 121847 and 121904) or guid in(105315,50422,50423,50424);

select * from creature where id IN (26121,26120,25710);

select max(entry) from creature_template;

select * from gameobject_template WHERE entry in(191330,191331,191332,184731);

select * from gameobject WHERE guid IN (78738, 78739, 78740, 78741);

select * from pool_template WHERE entry IN (15010, 15011, 15012, 15013);

select * from pool_gameobject WHERE guid IN (93956, 93957, 93958, 93959, 93960, 93961, 93962, 93963, 93964, 
93965, 93966, 93967);

SELECT MIN(t1.guid + 1) AS nextID
FROM creature t1
   LEFT JOIN creature t2
       ON t1.guid + 1 = t2.guid
WHERE t2.guid IS NULL;
select * from gameobject_template where entry=1684;
select * from gameobject_template where name like 'Blacksmith''s Anvil';
select * from udbmangos.gameobject_template where entry=1684;
select * from gameobject where guid > 150000 order by guid;
select * from udbmangos.conditions WHERE condition_entry IN (435);
select * from conditions WHERE type = -1 and value1=432 and value2=435;
select * from gameobject where id in(188526);
select * from gameobject where guid BETWEEN 121847 AND 121904;
select count(guid) from gameobject where id in(185915);
select count(guid) from udbmangos.gameobject where id in(185915);
select * from udbmangos.creature_movement where id=69069;
select * from udbmangos.creature_equip_template where entry=273;
select * from creature_equip_template where entry=974;
select * from creature_equip_template where equipentry1=18122 and equipentry2=0 and equipentry3=0;
select * from item_template where entry=31603;
-- missing items 31603,31600,31466,11343,14707,13625,14533,28965,18122,13504,12182,17462,13698,30625,30182,24321,29417,31605,31551,31206,31601

select * from spell_target_position WHERE id = 36459;
select * from db_script_string;
select * from db_script_string WHERE entry BETWEEN 2000005452 AND 2000005458;
select * from dbscripts_on_creature_movement WHERE id IN (2124402,2124403,2124404);
select * from dbscripts_on_creature_movement where delay=3 and dataint =  '2000005765';
select * from creature where guid in(81433);
select * from creature_addon WHERE guid IN (58628);
select * from creature_movement_template WHERE entry IN (21867);
select * from creature_movement WHERE id IN (135864);
select * from creature_linking WHERE guid IN (69097);
select * from creature_linking_template WHERE entry IN (5707, 5701);
select * from creature where id IN (21455);
select * from gameobject where guid=140705;
select * from creature_template where entry IN (16415);
select * from creature_template_addon where entry = 16907;
select * from udbmangos.creature where id IN(19795);
select count(guid) from creature where id IN(23286);
select count(guid) from udbmangos.creature where id IN(23286);
select * from creature_template where name like '%bleeding hollow dark shaman%';