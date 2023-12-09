-- delete Archmage Tarsis Kir-Moldir
SET @GUID:= 88813;
INSERT INTO `creature_template` VALUES 
(16381,0,0,0,0,0,16158,0,0,0,'Archmage Tarsis Kir-Moldir','',NULL,0,60,60,0,35,0,1.5,1.14286,1,1,20,1,1,0,7.5,2000,2000,1,1,1,0,2048,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'',0,1,105,100,1,1,0,0,1,0,0,2,'',12340);
DELETE FROM `creature` WHERE `guid` = @GUID and `id1` = 16381;

-- delete Archmage Sleep
DELETE FROM `creature_template_addon` WHERE (`entry` = 16381);


-- delete CreatureText
DELETE FROM `creature_text` WHERE `CreatureID`=16381;


-- delete Menu
DELETE FROM `gossip_menu` WHERE `MenuID` IN 
(7222, 7223, 7224, 7225, 7226, 7227, 7228, 7231, 7232, 7233);

-- delete Menu
DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (7222, 7223, 7224, 7225, 7226, 7227, 7228, 7232, 7233);


-- delete dialog option if has Splinter of Atiesh
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 15) AND (`SourceGroup` = 7228);


-- delete SmartAI
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 16381;
DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 16381);