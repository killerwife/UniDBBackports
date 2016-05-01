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
select * from gameobject_template where entry=188526;
select * from gameobject where guid > 150000 order by guid;
select * from conditions WHERE condition_entry IN (717, 718);
select * from gameobject where id in(188526);
select * from gameobject where guid BETWEEN 121847 AND 121904;
select count(guid) from gameobject where id in(185915);
select count(guid) from udbmangos.gameobject where id in(185915);
select * from creature where position_x=-4231.41;
select * from creature_movement where id in(64248);
select * from creature where guid IN(133966) or guid between 75023 and 75025;
select * from udbmangos.creature where guid in(22252);
select * from creature_template where entry IN(15502);
select * from creature where id in(21245);
select * from udbmangos.creature where id IN(21347);
select count(guid) from creature where id IN(21789);
select count(guid) from udbmangos.creature where id IN(21789);
select * from creature_template where name like '%bleeding hollow dark shaman%';