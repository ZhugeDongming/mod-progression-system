-- Recover and delete Omarion to the cage in The Military Quarter
SET @GUID:= 88811;
DELETE FROM `creature` WHERE `guid` = @GUID AND `id1` = 16365;


-- Recover gossip with cpp script
UPDATE `creature_template` SET `ScriptName`='',`gossip_menu_id`=7215 WHERE `entry` = 16365;


SET @ID:= 24400;
-- Set correct text when gossip tailor/leatherwork/blacksmith option
DELETE FROM `npc_text` WHERE `ID` in (@ID+1, @ID+2, @ID+3);
DELETE FROM `gossip_menu` WHERE `MenuID` IN (@ID+1, @ID+2, @ID+3);


-- Set Emotes: Laugh = 11, Talk = 1, Question = 6
-- Menu intro
UPDATE `npc_text` SET `Probability0`=0, `em0_0`=0, `em0_1`=6, `em0_2`=0, `em0_3`=1, `em0_4`=0, `em0_5`=1 WHERE `ID`=8507;
UPDATE `broadcast_text` SET `EmoteID1`=6, `EmoteID2`=1, `EmoteID3`=1 WHERE `ID`=12247;
-- Non-crafter / book
UPDATE `npc_text` SET `Probability0`=0, `em0_0`=0, `em0_1`=14, `em0_2`=0, `em0_3`=1, `em0_4`=0, `em0_5`=1 WHERE `ID`=8516;
UPDATE `broadcast_text` SET `EmoteID1`=14, `EmoteID2`=1, `EmoteID3`=1 WHERE `ID`=12280;
-- Tailoring
UPDATE `npc_text` SET `Probability0`=1, `em0_0`=0, `em0_1`=6, `em0_2`=0, `em0_3`=1, `em0_4`=0, `em0_5`=0 WHERE `ID`=24401;
UPDATE `broadcast_text` SET `EmoteID1`=6, `EmoteID2`=1, `EmoteID3`=1 WHERE `ID` = 12252;
-- Blacksmithing
UPDATE `npc_text` SET `Probability0`=1, `em0_0`=0, `em0_1`=1, `em0_2`=0, `em0_3`=0, `em0_4`=0, `em0_5`=0 WHERE `ID`=24402;
UPDATE `broadcast_text` SET `EmoteID1`=1, `EmoteID2`=0, `EmoteID3`=0 WHERE `ID` = 12265;
-- Leatherworking
UPDATE `npc_text` SET `Probability0`=1, `em0_0`=0, `em0_1`=1, `em0_2`=0, `em0_3`=0, `em0_4`=0, `em0_5`=0 WHERE `ID`=24403;
UPDATE `broadcast_text` SET `EmoteID1`=0, `EmoteID2`=0, `EmoteID3`=0 WHERE `ID` = 12258;



-- Recover menus
DELETE FROM `gossip_menu_option` WHERE `MenuID` IN
(@ID, @ID+1, @ID+2, @ID+3, @ID+4);