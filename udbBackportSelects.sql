select * from gossip_menu;

select * from gameobject where (guid between 121700 and 121846) or (guid between 121847 and 121904) or guid in(105315,50422,50423,50424);

select * from creature where id IN (26121,26120,25710);

select max(entry) from creature_template;

select * from gameobject_template WHERE entry in(191330,191331,191332);

select * from gameobject WHERE guid IN (78738, 78739, 78740, 78741);

select * from pool_template WHERE entry IN (15010, 15011, 15012, 15013);

select * from pool_gameobject WHERE guid IN (93956, 93957, 93958, 93959, 93960, 93961, 93962, 93963, 93964, 
93965, 93966, 93967);

select * from gameobject where id in(141979);
select count(guid) from gameobject where id in(184701);

select * from creature where guid IN (84622, 84626);
select * from creature where id IN(21059);
select count(guid) from creature where id IN(21059);
select count(guid) from udbmangos.creature where id IN(21059);
select * from creature_template where name like '%bleeding hollow dark shaman%';