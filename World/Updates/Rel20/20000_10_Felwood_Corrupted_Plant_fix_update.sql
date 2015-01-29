-- --------------------------------------------------------------------------------
-- This is an attempt to create a full transactional update
-- --------------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS `update_mangos`; 

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_mangos`()
BEGIN
    DECLARE bRollback BOOL  DEFAULT FALSE ;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `bRollback` = TRUE;

  SET @cOldRev = 'required_20000_09_Guardian_of_Blizzard_non_combat_fix';

  -- Set the new revision string
  SET @cNewRev = 'required_20000_10_Felwood_Corrupted_Plant_fix_update';

  -- Set thisRevision to the column name of db_version in the currently selected database
  SET @cThisRev := ((SELECT column_name FROM information_schema.`COLUMNS` WHERE table_name='db_version' AND table_schema=(SELECT DATABASE() AS thisDB FROM DUAL) AND column_name LIKE 'required%'));

 
  -- Only Proceed if the old values match
  IF @cThisRev = @cOldRev THEN
    -- Make this all a single transaction
    START TRANSACTION;

    -- Apply the Version Change from Old Version to New Version
    SET @query = CONCAT('ALTER TABLE db_version CHANGE COLUMN ',@cOldRev, ' ' ,@cNewRev,' bit;');
    PREPARE stmt1 FROM @query;
    EXECUTE stmt1;
    DEALLOCATE PREPARE stmt1;
    -- The Above block is required for making table changes

    -- -- -- -- Normal Update / Insert / Delete statements will go here  -- -- -- -- --

-- Improved script

-- Cleansed Windblossom

-- Delete Corrupted Windblossom entries
DELETE FROM gameobject_loot_template where item = 11950;

-- New gameobject_loot_template records for Cleansed Windblossom

-- Cleansed Windblossom (gameobject_template: 164884, 173326, 174616, 174617, 174618, 174619, 174620, 174621, 174710, 174711)
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) VALUES (164884, 11950, 100, 0, 1, 3, 0);

-- Replace Cleansed Windblossom gameobject_template records
-- the plants will now be lootable
UPDATE gameobject_template SET type= 3, data0 = 43, data1 = 164884, data2 = 0, data3 = 1, data4 = 1, data5 = 1, data10 = 0 WHERE entry = 164884;
UPDATE gameobject_template SET type= 3, data0 = 43, data1 = 173326, data2 = 0, data3 = 1, data4 = 1, data5 = 1, data10 = 0 WHERE entry = 173326;
UPDATE gameobject_template SET type= 3, data0 = 43, data1 = 174616, data2 = 0, data3 = 1, data4 = 1, data5 = 1, data10 = 0 WHERE entry = 174616;
UPDATE gameobject_template SET type= 3, data0 = 43, data1 = 174617, data2 = 0, data3 = 1, data4 = 1, data5 = 1, data10 = 0 WHERE entry = 174617;
UPDATE gameobject_template SET type= 3, data0 = 43, data1 = 174618, data2 = 0, data3 = 1, data4 = 1, data5 = 1, data10 = 0 WHERE entry = 174618;
UPDATE gameobject_template SET type= 3, data0 = 43, data1 = 174619, data2 = 0, data3 = 1, data4 = 1, data5 = 1, data10 = 0 WHERE entry = 174619;
UPDATE gameobject_template SET type= 3, data0 = 43, data1 = 174620, data2 = 0, data3 = 1, data4 = 1, data5 = 1, data10 = 0 WHERE entry = 174620;
UPDATE gameobject_template SET type= 3, data0 = 43, data1 = 174621, data2 = 0, data3 = 1, data4 = 1, data5 = 1, data10 = 0 WHERE entry = 174621;
UPDATE gameobject_template SET type= 3, data0 = 43, data1 = 174710, data2 = 0, data3 = 1, data4 = 1, data5 = 1, data10 = 0 WHERE entry = 174710;
UPDATE gameobject_template SET type= 3, data0 = 43, data1 = 174711, data2 = 0, data3 = 1, data4 = 1, data5 = 1, data10 = 0 WHERE entry = 174711;

-- Assign a script to each of the corrupted Windblossom gameobject_template records
UPDATE gameobject_template SET `ScriptName`= 'go_corrupted_plant' WHERE `entry`='164887';
UPDATE gameobject_template SET `ScriptName`= 'go_corrupted_plant' WHERE `entry`='173327';
UPDATE gameobject_template SET `ScriptName`= 'go_corrupted_plant' WHERE `entry`='174599';
UPDATE gameobject_template SET `ScriptName`= 'go_corrupted_plant' WHERE `entry`='174600';
UPDATE gameobject_template SET `ScriptName`= 'go_corrupted_plant' WHERE `entry`='174601';
UPDATE gameobject_template SET `ScriptName`= 'go_corrupted_plant' WHERE `entry`='174602';
UPDATE gameobject_template SET `ScriptName`= 'go_corrupted_plant' WHERE `entry`='174603';
UPDATE gameobject_template SET `ScriptName`= 'go_corrupted_plant' WHERE `entry`='174604';
UPDATE gameobject_template SET `ScriptName`= 'go_corrupted_plant' WHERE `entry`='174708';

-- Delete all cleansed Windblossom gameobject records (not required because the script spawns them)
DELETE FROM gameobject WHERE id IN (164884, 173326, 174616, 174617, 174618, 174619, 174620, 174621, 174710, 174711);

-- Delete all but one cleansed Windblossom record from gameobject_template (we only need one)
DELETE FROM gameobject_template WHERE entry IN (173326, 174616, 174617, 174618, 174619, 174620, 174621, 174710, 174711);

-- Cleansed Night Dragon

-- Delete Corrupted Night Dragon entries
DELETE FROM gameobject_loot_template where item = 11952;

-- New gameobject_loot_template records for Cleansed Night Dragon

-- Cleansed Night Dragon (gameobject_template: 164881, 173325, 174609, 174685)
INSERT INTO gameobject_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('164881', '11952', '100', '0', '1', '3', '0');

-- Replace Cleansed Night Dragon gameobject_template records
-- the plants will now be lootable
UPDATE gameobject_template SET type= 3, data0 = 43, data1 = 164881, data2 = 0, data3 = 1, data4 = 1, data5 = 1, data10 = 0 WHERE entry = 164881;
UPDATE gameobject_template SET type= 3, data0 = 43, data1 = 173325, data2 = 0, data3 = 1, data4 = 1, data5 = 1, data10 = 0 WHERE entry = 173325;
UPDATE gameobject_template SET type= 3, data0 = 43, data1 = 174609, data2 = 0, data3 = 1, data4 = 1, data5 = 1, data10 = 0 WHERE entry = 174609;
UPDATE gameobject_template SET type= 3, data0 = 43, data1 = 174685, data2 = 0, data3 = 1, data4 = 1, data5 = 1, data10 = 0 WHERE entry = 174685;

-- Assign a script to each of the corrupted Night Dragon gameobject_template records
UPDATE gameobject_template SET `ScriptName`= 'go_corrupted_plant' WHERE `entry`='164885';
UPDATE gameobject_template SET `ScriptName`= 'go_corrupted_plant' WHERE `entry`='173324';
UPDATE gameobject_template SET `ScriptName`= 'go_corrupted_plant' WHERE `entry`='174608';
UPDATE gameobject_template SET `ScriptName`= 'go_corrupted_plant' WHERE `entry`='174684';

-- Delete all cleansed Night Dragon gameobject records (not required because the script spawns them)
DELETE FROM gameobject WHERE id IN (164881, 173325, 174609, 174685);

-- Delete all but one cleansed Night Dragon record from gameobject_template (we only need one)
DELETE FROM gameobject_template WHERE entry IN (173325, 174609, 174685);


-- Cleansed Songflower

-- Assign a script to each of the corrupted songflower gameobject_template records
UPDATE gameobject_template SET `ScriptName`= 'go_corrupted_plant' WHERE `entry`='164886';
UPDATE gameobject_template SET `ScriptName`= 'go_corrupted_plant' WHERE `entry`='171939';
UPDATE gameobject_template SET `ScriptName`= 'go_corrupted_plant' WHERE `entry`='171942';
UPDATE gameobject_template SET `ScriptName`= 'go_corrupted_plant' WHERE `entry`='174594';
UPDATE gameobject_template SET `ScriptName`= 'go_corrupted_plant' WHERE `entry`='174595';
UPDATE gameobject_template SET `ScriptName`= 'go_corrupted_plant' WHERE `entry`='174596';
UPDATE gameobject_template SET `ScriptName`= 'go_corrupted_plant' WHERE `entry`='174598';
UPDATE gameobject_template SET `ScriptName`= 'go_corrupted_plant' WHERE `entry`='174712';
UPDATE gameobject_template SET `ScriptName`= 'go_corrupted_plant' WHERE `entry`='174713';

-- Delete the CompleteQuest script (set to 0) for the corrupted songflower quest (the above assigned script will now deal with this)
UPDATE quest_template SET `CompleteScript`='0' WHERE `entry`='2523';

-- Assign a script to the cleansed songflower gameobject_template record
UPDATE gameobject_template SET `data2`='0', `data10`='0', `ScriptName`= 'go_cleansed_plant' WHERE `entry`='164882';

-- Delete all cleansed songflower gameobject records (not required because the script spawns them)
DELETE FROM gameobject WHERE id IN (164882, 171940, 171943, 174610, 174612, 174613, 174614, 174615, 174714, 174715);

-- Delete all but one cleansed songflower record from gameobject_template (we only need one)
DELETE FROM gameobject_template WHERE entry IN (171940, 171943, 174610, 174612, 174613, 174614, 174615, 174714, 174715);

-- =========================================
-- Reapply the entire Corrupted plant script (too fubar'd not to)
-- =========================================

-- Cleansed Whipper Root

-- REMOVE UNWANTED CLEANSED WHIPPER ROOT RECORDS (there are 2 of each, but only one of each is needed/correct - see above table)
DELETE FROM gameobject WHERE `guid`='17660';
DELETE FROM gameobject WHERE `guid`='17662';
DELETE FROM gameobject WHERE `guid`='17664';
DELETE FROM gameobject WHERE `guid`='18176';
DELETE FROM gameobject WHERE `guid`='18178';
DELETE FROM gameobject WHERE `guid`='18180';

-- New gameobject_loot_template records for Cleansed Whipper Root

-- Cleansed Whipper Root (gameobject_template: 164883, 174622, 174623, 174624, 174625, 174687)
DELETE FROM gameobject_loot_template WHERE item = 11951;
INSERT INTO gameobject_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('164883', '11951', '100', '0', '1', '3', '0');

-- Replace Cleansed Whipper Root gameobject_template records
-- the plants will now be lootable
DELETE FROM gameobject_template where name = "Cleansed Whipper Root";
INSERT INTO gameobject_template (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `ScriptName`) VALUES ('164883', '3', '3255', 'Cleansed Whipper Root', '0', '0', '2', '43', '164883', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', ''),('174622', '3', '3255', 'Cleansed Whipper Root', '0', '0', '2', '43', '174622', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', ''),('174623', '3', '3255', 'Cleansed Whipper Root', '0', '0', '2', '43', '174623', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', ''),('174624', '3', '3255', 'Cleansed Whipper Root', '0', '0', '2', '43', '174624', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', ''),('174625', '3', '3255', 'Cleansed Whipper Root', '0', '0', '2', '43', '174625', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', ''),('174687', '3', '3255', 'Cleansed Whipper Root', '0', '0', '2', '43', '174687', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');

-- INCORRECT GUID USED FOR SPAWNING CLEANSED WHIPPER ROOT
UPDATE dbscripts_on_quest_end SET datalong = 48882 WHERE id = 4443;

-- Assign a script to each of the corrupted Whipper Root gameobject_template records
UPDATE gameobject_template SET `ScriptName`= 'go_corrupted_plant' WHERE `entry`='164888';
UPDATE gameobject_template SET `ScriptName`= 'go_corrupted_plant' WHERE `entry`='173284';
UPDATE gameobject_template SET `ScriptName`= 'go_corrupted_plant' WHERE `entry`='174605';
UPDATE gameobject_template SET `ScriptName`= 'go_corrupted_plant' WHERE `entry`='174606';
UPDATE gameobject_template SET `ScriptName`= 'go_corrupted_plant' WHERE `entry`='174607';
UPDATE gameobject_template SET `ScriptName`= 'go_corrupted_plant' WHERE `entry`='174686';

-- Delete all cleansed songflower gameobject records (not required because the script spawns them)
DELETE FROM gameobject WHERE id IN (164883, 174622, 174623, 174624, 174625, 174687);

-- Delete all but one cleansed songflower record from gameobject_template (we only need one)
DELETE FROM gameobject_template WHERE entry IN (174622, 174623, 174624, 174625, 174687);

-- remove scripts (Felwood Corrupted plants)
UPDATE quest_template SET CompleteScript = 0 WHERE entry IN (996, 998, 1514, 2523, 2878, 3363, 4113, 4114, 4115, 4116, 4117, 4118, 4119, 4221, 4222, 4343, 4401, 4403, 4443, 4444, 4445, 4446, 4447, 4448, 4461, 4462, 4464, 4465, 4466, 4467);
-- These are handled by scripdev scripts, therefore can be deleted (Felwood Corrupted plants)
DELETE FROM dbscripts_on_quest_end WHERE id IN (996, 998, 1514, 2523, 2878, 3363, 4113, 4114, 4115, 4116, 4117, 4118, 4119, 4221, 4222, 4343, 4401, 4403, 4443, 4444, 4445, 4446, 4447, 4448, 4461, 4462, 4464, 4465, 4466, 4467);
    
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
    
    -- If we get here ok, commit the changes
    IF bRollback = TRUE THEN
      ROLLBACK;
      SELECT '* UPDATE FAILED *' AS 'Status',@cThisRev AS 'DB is on Version';
    ELSE
      COMMIT;
      SELECT '* UPDATE COMPLETE *' AS 'Status',@cNewRev AS 'DB is now on Version';
    END IF;
  ELSE
    SELECT '* UPDATE SKIPPED *' AS 'Status',@cOldRev AS 'Required Version',@cThisRev AS 'Found Version';
  END IF;

END $$

DELIMITER ;

-- Execute the procedure
CALL update_mangos();

-- Drop the procedure
DROP PROCEDURE IF EXISTS `update_mangos`;
