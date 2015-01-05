-- --------------------------------------------------------------------------------
-- This is an attempt to create a full transactional update
-- --------------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS `update_mangos`; 

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_mangos`()
BEGIN
    DECLARE bRollback BOOL  DEFAULT FALSE ;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `bRollback` = TRUE;

  SET @cOldRev = 'required_20000_00_Rel20_Initial';

  -- Set the new revision string
  SET @cNewRev = 'required_20001_01_pvpstats';

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

DROP TABLE IF EXISTS `pvpstats_battlegrounds`;
CREATE TABLE `pvpstats_battlegrounds` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `winner_team` TINYINT NOT NULL,
  `bracket_id` TINYINT UNSIGNED NOT NULL,
  `type` TINYINT UNSIGNED NOT NULL,
  `date` DATETIME NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS `pvpstats_players`;
CREATE TABLE `pvpstats_players` (
  `battleground_id` BIGINT UNSIGNED NOT NULL,
  `player_guid` INT UNSIGNED NOT NULL,
  `score_killing_blows` MEDIUMINT UNSIGNED NOT NULL,
  `score_deaths` MEDIUMINT UNSIGNED NOT NULL,
  `score_honorable_kills` MEDIUMINT UNSIGNED NOT NULL,
  `score_bonus_honor` MEDIUMINT UNSIGNED NOT NULL,
  `score_damage_done` MEDIUMINT UNSIGNED NOT NULL,
  `score_healing_done` MEDIUMINT UNSIGNED NOT NULL,
  `attr_1` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
  `attr_2` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
  `attr_3` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
  `attr_4` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
  `attr_5` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`battleground_id`, `player_guid`)
) ENGINE=InnoDB;
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
