ALTER TABLE db_version CHANGE COLUMN required_s1894_12364_01_mangos_spell_script_target required_s1900_12370_01_mangos_npc_vendor bit;

ALTER TABLE npc_vendor ADD COLUMN `condition_id` mediumint(8) unsigned NOT NULL default '0' AFTER ExtendedCost;
