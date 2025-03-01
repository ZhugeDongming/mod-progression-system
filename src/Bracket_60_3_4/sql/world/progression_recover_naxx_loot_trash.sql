-- Recover Not used and thus useless
DELETE FROM `creature_loot_template` WHERE `Entry` IN (100005, 100006);
INSERT INTO `creature_loot_template`
(`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`,
`MinCount`, `MaxCount`, `Comment`)
VALUES
(100005,1,35085,100,0,1,0,1,1,'Naxxramas Cultist (1) - (ReferenceTable)'),
(100006,1,35085,100,0,1,0,1,1,'Carrion Spinner (1) - (ReferenceTable)'),
(100006,42253,0,18,0,1,1,1,3,'Carrion Spinner (1) - Iceweb Spider Silk'),
(100006,44758,0,70,0,1,1,2,4,'Carrion Spinner (1) - Icy Spinneret'),
(100006,44759,0,12,0,1,1,2,3,'Carrion Spinner (1) - Acid-Drenched Fangs');

-- Recover No loot
-- UPDATE `creature_template` SET `mingold` = 0, `maxgold` = 0, `lootid` = 0
-- WHERE `Entry` IN (29356, 29608, 29603, 29823, 29601, 30085);
DELETE FROM `creature_template` WHERE `Entry` IN (29356, 29608, 29603, 29823, 29601, 30085);
INSERT INTO `creature_template` 
VALUES 
(29356,0,0,0,0,0,15962,0,0,0,'Sludge Belcher (1)','','',0,82,82,2,21,0,1,1.14286,1,1,20,1,1,0,13,2500,2000,1,1,1,64,2048,8,0,0,0,0,0,6,72,100005,0,0,0,0,17046,17046,'',0,1,25,1,1,1,0,144,1,8388624,0,0,'',12340),
(29601,0,0,0,0,0,16895,0,0,0,'Mutated Grub (1)','','',0,81,81,2,16,0,1,1.42857,1,1,20,1,1,0,13,2000,2000,1,1,1,64,2048,8,0,0,0,0,0,10,72,100005,0,0,0,0,0,0,'',0,1,8,1,1,1,0,144,1,0,0,0,'',12340),
(29603,0,0,0,0,0,1954,0,0,0,'Plagued Bat (1)','','',0,80,80,2,16,0,1,1.42857,1,1,20,1,1,0,13,2000,2000,1,1,1,64,2048,8,0,0,0,0,0,1,72,100005,0,0,0,0,0,0,'',0,1,3,1,1,1,0,144,1,0,0,0,'',12340),
(29608,0,0,0,0,0,7896,0,0,0,'Frenzied Bat (1)','','',0,80,80,2,16,0,1,1.42857,1,1,20,1,1,0,13,1500,2000,1,1,1,64,2048,8,0,0,0,0,0,1,72,100005,0,0,0,0,0,0,'',0,1,3,1,1,1,0,144,1,0,0,0,'',12340),
(29823,0,0,0,0,0,16508,26542,26543,26544,'Death Knight (1)','','',0,81,81,2,21,0,1.28,1.14286,1,1,20,1,1,0,13,2000,2000,1,1,1,64,2048,8,0,0,0,0,0,6,72,100005,0,0,0,0,6746,8820,'',0,1,24,2,1,1,0,148,1,8388624,0,0,'',12340),
(30085,30087,0,0,0,0,19329,0,0,0,'Vigilant Shade','','',0,81,81,2,21,0,1.6,1.71429,1,1,20,1,1,0,7.5,2000,2000,1,1,1,64,2048,8,0,0,0,0,0,6,72,0,0,0,0,0,0,0,'SmartAI',0,1,10,10,1,1,0,167,1,8388624,0,0,'',12340);


-- Recover Spider loot
DELETE FROM `creature_template` WHERE `entry` IN (29242, 29241, 29243, 30389, 29286);
INSERT INTO `creature_template` 
VALUES 
(29241,0,0,0,0,0,15938,0,0,0,'Carrion Spinner (1)','','',0,81,81,2,312,0,1,1.14286,1,1,20,1,1,0,13,2000,2000,1,1,1,64,2048,8,3,0,0,0,0,1,73,100006,0,0,13151,0,0,0,'',0,1,18,1,1,1,0,144,1,0,0,0,'',12340),
(29242,0,0,0,0,0,15937,0,0,0,'Dread Creeper (1)','','',0,81,81,2,312,0,1,1.14286,1,1,20,1,1,0,13,2000,2000,1,1,1,64,2048,8,3,0,0,0,0,1,73,100006,0,0,13153,0,0,0,'',0,1,15,1,1,1,0,144,1,0,0,0,'',12340),
(29243,0,0,0,0,0,15939,0,0,0,'Venom Stalker (1)','','',0,81,81,2,312,0,1,1.14286,1,1,20,1,1,0,13,2000,2000,1,1,1,64,2048,8,3,0,0,0,0,1,73,100006,0,0,13150,0,0,0,'',0,1,30,1,1,1,0,144,1,0,0,0,'',12340),
(29286,0,0,0,0,0,15942,0,0,0,'Tomb Horror (1)','','',0,81,81,2,312,0,1,1.14286,1,1,20,1,1,0,13,2000,2000,1,1,1,64,2048,8,0,0,0,0,0,6,72,100006,0,0,0,0,0,0,'',1,1,35,1,1,1,0,144,1,8388624,0,0,'',12340),
(30389,0,0,0,0,0,15941,0,0,0,'Crypt Reaver (1)','','',0,81,81,2,312,0,1,1.14286,1,1,20,1,1,0,13,1200,2000,1,1,1,64,2048,8,0,0,0,0,0,6,72,100006,0,0,0,0,0,0,'',0,1,45,1,1,1,0,144,1,8388624,0,0,'',12340);

DELETE FROM `creature_loot_template` WHERE `Entry` IN (29242, 29241, 29243, 30389, 29286);

-- Recover Scraps or no loot
-- reference_loot_template, entry IN (50603, 60008, 60282, 60296, 60445, 50603)
-- for now, no loot
DELETE FROM `creature_template` WHERE `Entry` IN (29575, 29609);;
INSERT INTO `creature_template` 
VALUES 
(29575,0,0,0,0,0,11140,0,0,0,'Plague Slime (1)','','',0,81,81,2,14,0,0.8,1.14286,1,1,20,1,1,0,13,1800,2000,1,1,1,64,2048,8,0,0,0,0,0,10,72,100005,0,0,0,0,12102,15812,'',0,1,40,1,1,1,0,70,1,0,0,0,'',12340),
(29609,0,0,0,0,0,23136,0,0,0,'Plague Beast (1)','','',0,81,81,2,16,0,1,1.14286,1,1,20,1,1,0,13,2000,2000,1,1,1,64,2048,8,0,0,0,0,0,6,72,100005,0,0,0,0,0,0,'',0,1,15,1,1,1,0,144,1,8388624,0,0,'',12340);


-- Recover Reference loot table
DELETE FROM `creature_template` WHERE `entry` IN (16157, 16158, 16368, 16446, 16448, 16449, 16451, 16452, 29247, 29248, 29347, 29353, 29359, 29362, 29363, 29371, 29574, 29576, 29824, 29825, 29828, 29831, 29833, 29835, 29837, 29842, 29852, 29898, 29899, 29900, 30075, 30087, 30097);
INSERT INTO `creature_template` 
VALUES 
(16157,0,0,0,0,0,16528,0,0,0,'Doom Touched Warrior','',NULL,0,61,61,0,21,0,1,1.42857,1,1,20,1,1,0,7.5,2000,2000,1,1,1,0,2048,0,0,0,0,0,0,7,8,0,0,0,0,0,0,0,'',1,1,8,1,1,1,0,144,1,1006830096,0,0,'',12340),
(16158,0,0,0,0,0,16533,0,0,0,'Death Touched Warrior','',NULL,0,61,61,1,21,0,1,1.42857,1,1,20,1,1,0,25,2000,2000,1,1,1,0,2048,0,0,0,0,0,0,7,8,0,0,0,0,0,0,0,'',0,1,8,1,1,1,0,144,1,1006830096,0,0,'',12340),
(16368,0,0,0,0,0,16160,16161,0,0,'Necropolis Acolyte',NULL,NULL,0,82,82,2,233,0,1.5,1.14286,1,1,20,1,1,0,7.5,2000,2000,1,1,2,0,2048,0,0,0,0,0,0,7,0,0,0,0,0,0,2865,3746,'',1,1,25,10,1,1,0,164,1,1019952723,0,0,'',12340),
(16446,0,0,0,0,0,14710,0,0,0,'Plagued Gargoyle','',NULL,0,70,70,0,233,0,1.5,1.14286,1,1,20,1,1,0,7.5,2000,2000,1,1,1,0,2048,0,0,0,0,0,0,6,8,0,0,0,0,0,0,0,'',0,1,100,3,1,1,0,144,1,1071628127,0,0,'',12340),
(16448,0,0,0,0,0,15964,0,0,0,'Plagued Deathhound','',NULL,0,61,61,0,16,0,2,2.14286,1,1,20,1,1,0,7.5,2000,2000,1,1,1,0,2048,0,0,0,0,0,0,1,8,0,0,0,0,0,0,0,'',0,1,22,2,1,1,0,191,1,1019952723,0,0,'',12340),
(16449,0,0,0,0,0,10553,0,0,0,'Spirit of Naxxramas',NULL,NULL,0,61,61,0,21,0,1,1.42857,1,1,20,1,1,0,7.5,2000,2000,1,1,1,0,2048,0,0,0,0,0,0,6,8,0,0,0,0,0,4776,6241,'',1,1,35,10,1,1,0,144,1,1015751186,0,0,'',12340),
(16451,0,0,0,0,0,10729,0,0,0,'[UNUSED] Death Knight Vindicator',NULL,NULL,0,62,62,1,21,0,2.2,1.14286,1,1,20,1,1,0,40,1000,2000,1,1,1,0,2048,0,0,0,0,0,0,6,8,0,0,0,0,0,5627,7354,'',1,1,50,10,1,1,0,164,1,8388624,0,0,'',12340),
(16452,0,0,0,0,0,2606,0,0,0,'Necro Knight Guardian',NULL,NULL,0,62,62,1,21,0,1,1.71429,1,1,20,1,1,0,26,1200,2000,1,1,1,0,2048,0,0,0,0,0,0,6,8,0,0,0,0,0,2567,3358,'',1,1,25,18,1,1,0,164,1,1019952723,0,0,'',12340),
(29247,0,0,0,0,0,16594,16595,16596,16597,'Naxxramas Cultist (1)','','',0,81,81,2,312,0,1,1.14286,1,1,20,1,1,0,13,2000,2000,1,1,8,32832,2048,8,0,0,0,0,0,7,72,100005,0,0,0,0,11428,19048,'',0,1,5,10,1,1,0,144,1,0,0,0,'',12340),
(29248,0,0,0,0,0,16598,16599,16600,16601,'Naxxramas Acolyte (1)','','',0,81,81,2,312,0,1,1.14286,1,1,20,1,1,0,13,2000,2000,1,1,8,32832,2048,8,0,0,0,0,0,7,72,100005,0,0,0,0,11450,19082,'',0,1,5,10,1,1,0,144,1,0,0,0,'',12340),
(29347,0,0,0,0,0,9760,0,0,0,'Patchwork Golem (1)','','',0,81,81,2,21,0,1,1.14286,1,1,20,1,1,0,13,2000,2000,1,1,1,64,2048,8,0,0,0,0,0,6,72,100005,0,0,0,0,7596,9930,'',0,1,30,2,1,1,0,144,1,8388624,0,0,'',12340),
(29353,0,0,0,0,0,15958,0,0,0,'Bile Retcher (1)','','',0,81,81,2,21,0,1,1.14286,1,1,20,1,1,0,13,2000,2000,1,1,1,64,2048,8,0,0,0,0,0,6,72,100005,0,0,0,0,9552,12482,'',0,1,24,2,1,1,0,144,1,8388624,0,0,'',12340),
(29359,0,0,0,0,0,16175,0,0,0,'Living Monstrosity (1)','','',0,82,82,2,21,0,0.8,1.14286,1,1,20,1,1,0,13,2000,2000,1,1,1,64,2048,8,0,0,0,0,0,6,72,100005,0,0,0,0,4030,5272,'',0,1,35,2,1,1,0,144,1,8388624,0,0,'',12340),
(29362,0,0,0,0,0,16063,0,0,0,'Mad Scientist (1)','','',0,81,81,2,21,0,1,1.14286,1,1,20,1,1,0,13,2000,2000,1,1,2,64,2048,8,0,0,0,0,0,6,72,100005,0,0,0,0,4452,5822,'',0,1,15,2,1,1,0,144,1,8388624,0,0,'',12340),
(29363,0,0,0,0,0,836,0,0,0,'Surgical Assistant (1)','','',0,80,80,2,21,0,1,1.14286,1,1,20,1,1,0,13,2000,2000,1,1,2,64,2048,8,0,0,0,0,0,6,72,100005,0,0,0,0,3684,4820,'',0,1,7,5,1,1,0,144,1,8388624,0,0,'',12340),
(29371,0,0,0,0,0,24484,0,0,0,'Stitched Giant (1)','','',0,82,82,2,21,0,1,1.14286,1,1,20,1,1,0,13,2000,2000,1,1,1,64,2048,8,0,0,0,0,0,6,72,100005,0,0,0,0,12958,16932,'',0,1,40,2,1,1,0,144,1,8388624,0,0,'',12340),
(29574,0,0,0,0,0,26329,0,0,0,'Infectious Ghoul (1)','','',0,81,81,2,21,0,0.8,1.14286,1,1,20,1,1,0,13,1500,2000,1,1,1,64,2048,8,0,0,0,0,0,6,72,100005,0,0,0,0,0,0,'',0,1,30,1,1,1,0,144,1,8388624,0,0,'',12340),
(29576,0,0,0,0,0,14710,0,0,0,'Stoneskin Gargoyle (1)','','',0,81,81,2,233,0,2,1.14286,1,1,20,1,1,0,13,2000,2000,1,1,1,64,2048,8,0,0,0,0,0,6,72,100005,0,0,0,0,22302,29132,'',0,1,75,10,1,1,0,135,1,8388624,0,0,'',12340),
(29824,0,0,0,0,0,26546,26781,26549,26550,'Death Knight Captain (1)','','',0,81,81,2,21,0,1.28,1.14286,1,1,20,1,1,0,13,2500,2000,1,1,1,64,2048,8,0,0,0,0,0,6,72,100005,0,0,0,0,8276,10818,'',0,1,30,2,1,1,0,148,1,8388624,0,0,'',12340),
(29825,0,0,0,0,0,10553,0,0,0,'Shade of Naxxramas (1)','','',0,81,81,2,21,0,1,1.14286,1,1,20,1,1,0,13,2000,2000,1,1,1,64,2048,8,0,0,0,0,0,6,72,100005,0,0,0,0,4962,6488,'',0,1,18,10,1,1,0,144,1,8388624,0,0,'',12340),
(29828,0,0,0,0,0,27105,0,0,0,'Necro Knight (1)','','',0,81,81,2,21,0,1,1.14286,1,1,20,1,1,0,13,2000,2000,1,1,8,64,2048,8,0,0,0,0,0,6,72,100005,0,0,0,0,3602,4712,'',0,1,18,18,1,1,0,144,1,8388624,0,0,'',12340),
(29831,0,0,0,0,0,16927,0,0,0,'Risen Squire (1)','','',0,81,81,2,21,0,1,1.14286,1,1,20,1,1,0,13,2000,2000,1,1,1,64,2048,8,0,0,0,0,0,6,72,100005,0,0,0,0,2326,3048,'',0,1,10,1,1,1,0,144,1,8388624,0,0,'',12340),
(29833,0,0,0,0,0,26569,26555,0,0,'Dark Touched Warrior (1)','','',0,81,81,2,21,0,1.28,1.14286,1,1,20,1,1,0,13,2000,2000,1,1,1,32832,2048,8,0,0,0,0,0,7,8,0,0,0,0,0,0,0,'',0,1,12,1,1,1,0,148,1,8388624,0,0,'',12340),
(29835,0,0,0,0,0,21305,0,0,0,'Bony Construct (1)','','',0,81,81,2,233,0,1,1.14286,1,1,20,1,1,0,13,2000,2000,1,1,1,64,2048,8,0,0,0,0,0,6,72,100005,0,0,0,0,3346,4380,'',0,1,12,3,1,1,0,144,1,8388624,0,0,'',12340),
(29837,0,0,0,0,0,26563,0,0,0,'Skeletal Smith (1)','','',0,81,81,2,21,0,1.28,1.14286,1,1,20,1,1,0,13,2000,2000,1,1,1,64,2048,8,0,0,0,0,0,6,72,100005,0,0,0,0,4452,5822,'',0,1,12,1,1,1,0,148,1,8388624,0,0,'',12340),
(29842,0,0,0,0,0,26571,0,0,0,'Death Knight Cavalier (1)','','',0,81,81,2,21,0,1,1.14286,1,1,20,1,1,0,13,1500,2000,1,1,2,64,2048,8,0,0,0,0,0,6,2120,100005,0,0,0,0,9552,12482,'',0,1,30,5,1,1,0,144,1,8388624,0,0,'',12340),
(29852,0,0,0,0,0,26539,26540,26541,0,'Deathcharger Steed (1)','','',0,81,81,2,21,0,1,1.14286,1,1,20,1,1,0,13,2000,2000,1,1,1,64,2048,8,0,0,0,0,0,6,72,100005,0,0,0,0,0,0,'',0,1,15,1,1,1,0,164,1,8388624,0,0,'',12340),
(29898,0,0,0,0,0,24722,0,0,0,'Unholy Axe (1)','','',0,81,81,2,21,0,1,1.14286,1,1,20,1,1,0,13,2000,2000,1,1,1,64,2048,8,0,0,0,0,0,6,72,100005,0,0,0,0,9552,12482,'',0,1,35,1,1,1,0,164,1,8388624,0,0,'',12340),
(29899,0,0,0,0,0,24723,0,0,0,'Unholy Staff (1)','','',0,81,81,2,21,0,1,1.14286,1,1,20,1,1,0,13,2000,2000,1,1,1,64,2048,8,0,0,0,0,0,6,72,100005,0,0,0,0,7766,10152,'',0,1,30,1,1,1,0,164,1,8388624,0,0,'',12340),
(29900,0,0,0,0,0,24724,0,0,0,'Unholy Swords (1)','','',0,81,81,2,21,0,1,1.14286,1,1,20,1,1,0,13,1500,2000,1,1,1,64,2048,8,0,0,0,0,0,6,72,100005,0,0,0,0,8276,10818,'',0,1,30,1,1,1,0,164,1,8388624,0,0,'',12340),
(30075,0,0,0,0,0,26746,0,0,0,'Stitched Colossus (1)','','',0,82,82,2,21,0,1.6,1.14286,1,1,20,1,1,0,13,2500,2000,1,1,1,64,2048,8,0,0,0,0,0,6,72,100005,0,0,0,0,0,0,'',0,1,50,2,1,1,0,167,1,8388624,0,0,'',12340),
(30087,0,0,0,0,0,19329,0,0,0,'Vigilant Shade (1)','','',0,81,81,2,21,0,1.6,1.14286,1,1,20,1,1,0,13,2000,2000,1,1,1,64,2048,8,0,0,0,0,0,6,72,0,0,0,0,0,0,0,'',0,1,25,10,1,1,0,167,1,8388624,0,0,'',12340),
(30097,0,0,0,0,0,24998,0,0,0,'Plagued Ghoul (1)','','',0,81,81,2,21,0,0.8,1.42857,1,1,20,1,1,0,13,1500,2000,1,1,1,32832,2048,8,0,0,0,0,0,6,72,100005,0,0,0,0,8022,10484,'',0,1,20,1,1,1,0,144,1,8388624,0,0,'',12340);

DELETE FROM `creature_template` WHERE `entry` IN (34133, 34136);
INSERT INTO `creature_template` 
VALUES 
(30075,0,0,0,0,0,26746,0,0,0,'Stitched Colossus (1)','','',0,82,82,2,21,0,1.6,1.14286,1,1,20,1,1,0,13,2500,2000,1,1,1,64,2048,8,0,0,0,0,0,6,72,100005,0,0,0,0,0,0,'',0,1,50,2,1,1,0,167,1,8388624,0,0,'',12340),
(30087,0,0,0,0,0,19329,0,0,0,'Vigilant Shade (1)','','',0,81,81,2,21,0,1.6,1.14286,1,1,20,1,1,0,13,2000,2000,1,1,1,64,2048,8,0,0,0,0,0,6,72,0,0,0,0,0,0,0,'',0,1,25,10,1,1,0,167,1,8388624,0,0,'',12340);

DELETE FROM `creature_loot_template` WHERE `Entry` IN
(16157, 16158, 16368, 16446, 16448, 16449, 16451, 16452, 29247, 29248, 29347,
29353, 29362, 29359, 29363, 29371, 29852, 29824, 29831, 29833, 29842, 29825,
29828, 29835, 29576, 29837, 29898, 29899, 29900, 29574, 30097, 30075);


-- Recover gold values
-- Loot
UPDATE `creature_template` SET `mingold`=11428,  `maxgold`=19048   WHERE `Entry`=29247;
UPDATE `creature_template` SET `mingold`=11450,  `maxgold`=19082   WHERE `Entry`=29248;
UPDATE `creature_template` SET `mingold`=7596,  `maxgold`=9930   WHERE `Entry`=29347;
UPDATE `creature_template` SET `mingold`=9552,  `maxgold`=12482   WHERE `Entry`=29353;
UPDATE `creature_template` SET `mingold`=4452,  `maxgold`=5822   WHERE `Entry`=29362;
UPDATE `creature_template` SET `mingold`=4030,  `maxgold`=5272   WHERE `Entry`=29359;
UPDATE `creature_template` SET `mingold`=3684,  `maxgold`=4820   WHERE `Entry`=29363;
UPDATE `creature_template` SET `mingold`=12958,  `maxgold`=16932   WHERE `Entry`=29371;
UPDATE `creature_template` SET `mingold`=0,     `maxgold`=0      WHERE `Entry`=29852;
UPDATE `creature_template` SET `mingold`=8276,  `maxgold`=10818   WHERE `Entry`=29824;
UPDATE `creature_template` SET `mingold`=2326,  `maxgold`=3048   WHERE `Entry`=29831;

UPDATE `creature_template` SET `mingold`=0,     `maxgold`=0      WHERE `Entry`=29833;
UPDATE `creature_template` SET `mingold`=0,     `maxgold`=0      WHERE `Entry`=16157;
UPDATE `creature_template` SET `mingold`=0,     `maxgold`=0      WHERE `Entry`=16158;

UPDATE `creature_template` SET `mingold`=9552,  `maxgold`=12482   WHERE `Entry`=29842;
UPDATE `creature_template` SET `mingold`=4962,  `maxgold`=6488   WHERE `Entry`=29825;

UPDATE `creature_template` SET `mingold`=3602,  `maxgold`=4712   WHERE `Entry`=29828;

UPDATE `creature_template` SET `mingold`=3346,  `maxgold`=4380   WHERE `Entry`=29835;
UPDATE `creature_template` SET `mingold`=22302, `maxgold`=29132  WHERE `Entry`=29576;

UPDATE `creature_template` SET `mingold`=4452,  `maxgold`=5822   WHERE `Entry`=29837;
UPDATE `creature_template` SET `mingold`=9552,  `maxgold`=12482  WHERE `Entry`=29898;
UPDATE `creature_template` SET `mingold`=7766,  `maxgold`=10152  WHERE `Entry`=29899;
UPDATE `creature_template` SET `mingold`=8276,  `maxgold`=10818  WHERE `Entry`=29900;
UPDATE `creature_template` SET `mingold`=0,     `maxgold`=0      WHERE `Entry`=29574;
UPDATE `creature_template` SET `mingold`=2865,  `maxgold`=3746   WHERE `Entry`=16368;
UPDATE `creature_template` SET `mingold`=0,     `maxgold`=0      WHERE `Entry`=16446;
UPDATE `creature_template` SET `mingold`=8022,  `maxgold`=10484  WHERE `Entry`=30097;
UPDATE `creature_template` SET `mingold`=0,     `maxgold`=0      WHERE `Entry`=16448;
UPDATE `creature_template` SET `mingold`=4776,  `maxgold`=6241   WHERE `Entry`=16449;
UPDATE `creature_template` SET `mingold`=5627,  `maxgold`=7354   WHERE `Entry`=16451;
UPDATE `creature_template` SET `mingold`=2567,  `maxgold`=3358   WHERE `Entry`=16452;
