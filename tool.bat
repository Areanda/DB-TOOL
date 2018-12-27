:TOP
@CLS
@ECHO OFF

ECHO Welcome to WarDB database installer.
ECHO.
ECHO Please enter your MySQL information.

set /p user=   Database login: 
set /p pass=   Password: 

SET dumppath=.\dump\
SET port=3306
SET host=127.0.0.1
SET mysqlpath=.\MySQL
SET devsql=.\development\war_world
SET changsql=.\development\changesets

:Begin
CLS
ECHO.
ECHO    http://www
ECHO.
ECHO 	i - Import World Database, NOTE! Whole db will be overwritten!
ECHO 	W - Backup World Database.
ECHO 	C - Backup Character Database.
ECHO 	R - Import Changeset.
ECHO.
ECHO 	D - Dump your table.
ECHO.
ECHO 	X - Exit this tool
ECHO.
SET /p v= 		Enter a char:
IF %v%==* GOTO error
IF %v%==i GOTO import
IF %v%==I GOTO import
IF %v%==w GOTO dumpworld
IF %v%==W GOTO dumpworld
IF %v%==c GOTO dumpchar
IF %v%==C GOTO dumpchar
IF %v%==r GOTO changeset
IF %v%==R GOTO changeset
IF %v%==D GOTO dumpever
IF %v%==d GOTO dumpever
IF %v%==x GOTO exit
IF %v%==X GOTO exit
GOTO error

:import
CLS
echo          Write the name of your database, where you have tables to dump.
echo.
set /p world_db=           Name:
IF %world_db%=="" GOTO error
CLS
Echo.
echo Importing..
echo.
ECHO import: abilities.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\abilities.sql

ECHO import: ability_commands.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\ability_commands.sql

ECHO import: ability_damage_heals.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\ability_damage_heals.sql

ECHO import: ability_knockback_info.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\ability_knockback_info.sql

ECHO import: ability_modifier_checks.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\ability_modifier_checks.sql

ECHO import: ability_modifiers.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\ability_modifiers.sql

ECHO import: battlefront_guards.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\battlefront_guards.sql

ECHO import: battlefront_objectives.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\battlefront_objectives.sql

ECHO import: battlefront_objects.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\battlefront_objects.sql

ECHO import: battlefront_resource_spawns.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\battlefront_resource_spawns.sql

ECHO import: battlefront_status.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\battlefront_status.sql

ECHO import: buff_commands.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\buff_commands.sql

ECHO import: buff_infos.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\buff_infos.sql

ECHO import: chapter_infos.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\chapter_infos.sql

ECHO import: chapter_rewards.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\chapter_rewards.sql

ECHO import: characterinfo.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\characterinfo.sql

ECHO import: characterinfo_items.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\characterinfo_items.sql

ECHO import: characterinfo_renown.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\characterinfo_renown.sql

ECHO import: characterinfo_stats.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\characterinfo_stats.sql

ECHO import: creature_abilities.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\creature_abilities.sql

ECHO import: creature_items.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\creature_items.sql

ECHO import: creature_loots.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\creature_loots.sql

ECHO import: creature_protos.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\creature_protos.sql

ECHO import: creature_spawns.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\creature_spawns.sql

ECHO import: creature_stats.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\creature_stats.sql

ECHO import: creature_texts.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\creature_texts.sql

ECHO import: creature_vendors.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\creature_vendors.sql

ECHO import: dye_infos.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\dye_infos.sql

ECHO import: entries.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\entries.sql

ECHO import: gameobject_loots.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\gameobject_loots.sql

ECHO import: gameobject_protos.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\gameobject_protos.sql

ECHO import: gameobject_spawns.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\gameobject_spawns.sql

ECHO import: gear_generic_drops.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\gear_generic_drops.sql

ECHO import: gmcommandlogs.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\gmcommandlogs.sql

ECHO import: guild_xp.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\guild_xp.sql

ECHO import: instance_attributes.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\instance_attributes.sql

ECHO import: instance_boss_spawns.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\instance_boss_spawns.sql

ECHO import: instance_creature_spawns.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\instance_creature_spawns.sql

ECHO import: instance_encounters.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\instance_encounters.sql

ECHO import: instance_event_commands.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\instance_event_commands.sql

ECHO import: instance_events.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\instance_events.sql

ECHO import: instance_infos.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\instance_infos.sql

ECHO import: instance_lockouts.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\instance_lockouts.sql

ECHO import: instance_objects.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\instance_objects.sql

ECHO import: instance_scripts.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\instance_scripts.sql

ECHO import: instance_spawn_state_abilities.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\instance_spawn_state_abilities.sql

ECHO import: instance_spawn_states.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\instance_spawn_states.sql

ECHO import: item_infos.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\item_infos.sql

ECHO import: item_sets.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\item_sets.sql

ECHO import: keep_creatures.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\keep_creatures.sql

ECHO import: keep_doors.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\keep_doors.sql

ECHO import: keep_infos.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\keep_infos.sql

ECHO import: loot_group_butchering.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\loot_group_butchering.sql

ECHO import: loot_group_items.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\loot_group_items.sql

ECHO import: loot_groups.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\loot_groups.sql

ECHO import: mount_infos.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\mount_infos.sql

ECHO import: new_ability_infos.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\new_ability_infos.sql

ECHO import: new_ability_volatiles.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\new_ability_volatiles.sql

ECHO import: pet_mastery_modifiers.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\pet_mastery_modifiers.sql

ECHO import: pet_stat_override.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\pet_stat_override.sql

ECHO import: pquest_info.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\pquest_info.sql

ECHO import: pquest_loot.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\pquest_loot.sql

ECHO import: pquest_loot_crafting.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\pquest_loot_crafting.sql

ECHO import: pquest_objectives.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\pquest_objectives.sql

ECHO import: pquest_spawns.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\pquest_spawns.sql

ECHO import: quests.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\quests.sql

ECHO import: quests_creature_finisher.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\quests_creature_finisher.sql

ECHO import: quests_creature_starter.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\quests_creature_starter.sql

ECHO import: quests_maps.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\quests_maps.sql

ECHO import: quests_objectives.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\quests_objectives.sql

ECHO import: rallypoints.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\rallypoints.sql

ECHO import: random_names.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\random_names.sql

ECHO import: renown_infos.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\renown_infos.sql

ECHO import: rvr_objects.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\rvr_objects.sql

ECHO import: scenario_infos.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\scenario_infos.sql

ECHO import: scenario_objects.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\scenario_objects.sql

ECHO import: timedannounces.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\timedannounces.sql

ECHO import: tok_bestary.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\tok_bestary.sql

ECHO import: tok_infos.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\tok_infos.sql

ECHO import: vendor_items.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\vendor_items.sql

ECHO import: waypoints.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\waypoints.sql

ECHO import: world_settings.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\world_settings.sql

ECHO import: xp_infos.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\xp_infos.sql

ECHO import: zone_areas.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\zone_areas.sql

ECHO import: zone_infos.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\zone_infos.sql

ECHO import: zone_jumps.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\zone_jumps.sql

ECHO import: zone_respawns.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\zone_respawns.sql

ECHO import: zone_taxis.sql
%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %devsql%\zone_taxis.sql




ECHO Done.
ECHO.
ECHO Press any key to exit.
PAUSE >NUL
GOTO exit

:dumpworld
@ECHO OFF
CLS
echo          Write the name of your database, where you have tables to dump.
echo.
set /p world_db=           Name:
IF %world_db%=="" GOTO error
CLS
if not exist "%dumppath%" mkdir %dumppath%
echo %world_db% Database Export started...
ECHO Dumping: abilities
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% abilities > %dumppath%\abilities.sql
ECHO Dumping: ability_commands
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% ability_commands > %dumppath%\ability_commands.sql
ECHO Dumping: ability_damage_heals
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% ability_damage_heals > %dumppath%\ability_damage_heals.sql
ECHO Dumping: ability_knockback_info
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% ability_knockback_info > %dumppath%\ability_knockback_info.sql
ECHO Dumping: ability_modifier_checks
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% ability_modifier_checks > %dumppath%\ability_modifier_checks.sql
ECHO Dumping: ability_modifiers
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% ability_modifiers > %dumppath%\ability_modifiers.sql
ECHO Dumping: battlefront_guards
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% battlefront_guards > %dumppath%\battlefront_guards.sql
ECHO Dumping: battlefront_objectives
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% battlefront_objectives > %dumppath%\battlefront_objectives.sql
ECHO Dumping: battlefront_objects
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% battlefront_objects > %dumppath%\battlefront_objects.sql
ECHO Dumping: battlefront_resource_spawns
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% battlefront_resource_spawns > %dumppath%\battlefront_resource_spawns.sql
ECHO Dumping: battlefront_status
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% battlefront_status > %dumppath%\battlefront_status.sql
ECHO Dumping: buff_commands
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% buff_commands > %dumppath%\buff_commands.sql
ECHO Dumping: buff_infos
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% buff_infos > %dumppath%\buff_infos.sql
ECHO Dumping: chapter_infos
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% chapter_infos > %dumppath%\chapter_infos.sql
ECHO Dumping: chapter_rewards
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% chapter_rewards > %dumppath%\chapter_rewards.sql
ECHO Dumping: characterinfo
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% characterinfo > %dumppath%\characterinfo.sql
ECHO Dumping: characterinfo_items
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% characterinfo_items > %dumppath%\characterinfo_items.sql
ECHO Dumping: characterinfo_renown
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% characterinfo_renown > %dumppath%\characterinfo_renown.sql
ECHO Dumping: characterinfo_stats
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% characterinfo_stats > %dumppath%\characterinfo_stats.sql
ECHO Dumping: creature_abilities
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% creature_abilities > %dumppath%\creature_abilities.sql
ECHO Dumping: creature_items
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% creature_items > %dumppath%\creature_items.sql
ECHO Dumping: creature_loots
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% creature_loots > %dumppath%\creature_loots.sql
ECHO Dumping: creature_protos
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% creature_protos > %dumppath%\creature_protos.sql
ECHO Dumping: creature_spawns
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% creature_spawns > %dumppath%\creature_spawns.sql
ECHO Dumping: creature_stats
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% creature_stats > %dumppath%\creature_stats.sql
ECHO Dumping: creature_texts
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% creature_texts > %dumppath%\creature_texts.sql
ECHO Dumping: creature_vendors
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% creature_vendors > %dumppath%\creature_vendors.sql
ECHO Dumping: dye_infos
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% dye_infos > %dumppath%\dye_infos.sql
ECHO Dumping: entries
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% entries > %dumppath%\entries.sql
ECHO Dumping: gameobject_loots
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% gameobject_loots > %dumppath%\gameobject_loots.sql
ECHO Dumping: gameobject_protos
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% gameobject_protos > %dumppath%\gameobject_protos.sql
ECHO Dumping: gameobject_spawns
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% gameobject_spawns > %dumppath%\gameobject_spawns.sql
ECHO Dumping: gear_generic_drops
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% gear_generic_drops > %dumppath%\gear_generic_drops.sql
ECHO Dumping: gmcommandlogs
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% gmcommandlogs > %dumppath%\gmcommandlogs.sql
ECHO Dumping: guild_xp
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% guild_xp > %dumppath%\guild_xp.sql
ECHO Dumping: instance_attributes
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% instance_attributes > %dumppath%\instance_attributes.sql
ECHO Dumping: instance_boss_spawns
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% instance_boss_spawns > %dumppath%\instance_boss_spawns.sql
ECHO Dumping: instance_creature_spawns
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% instance_creature_spawns > %dumppath%\instance_creature_spawns.sql
ECHO Dumping: instance_encounters
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% instance_encounters > %dumppath%\instance_encounters.sql
ECHO Dumping: instance_event_commands
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% instance_event_commands > %dumppath%\instance_event_commands.sql
ECHO Dumping: instance_events
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% instance_events > %dumppath%\instance_events.sql
ECHO Dumping: instance_infos
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% instance_infos > %dumppath%\instance_infos.sql
ECHO Dumping: instance_lockouts
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% instance_lockouts > %dumppath%\instance_lockouts.sql
ECHO Dumping: instance_objects
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% instance_objects > %dumppath%\instance_objects.sql
ECHO Dumping: instance_scripts
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% instance_scripts > %dumppath%\instance_scripts.sql
ECHO Dumping: instance_spawn_state_abilities
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% instance_spawn_state_abilities > %dumppath%\instance_spawn_state_abilities.sql
ECHO Dumping: instance_spawn_states
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% instance_spawn_states > %dumppath%\instance_spawn_states.sql
ECHO Dumping: item_infos
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% item_infos > %dumppath%\item_infos.sql
ECHO Dumping: item_sets
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% item_sets > %dumppath%\item_sets.sql
ECHO Dumping: keep_creatures
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% keep_creatures > %dumppath%\keep_creatures.sql
ECHO Dumping: keep_doors
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% keep_doors > %dumppath%\keep_doors.sql
ECHO Dumping: keep_infos
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% keep_infos > %dumppath%\keep_infos.sql
ECHO Dumping: loot_group_butchering
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% loot_group_butchering > %dumppath%\loot_group_butchering.sql
ECHO Dumping: loot_group_items
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% loot_group_items > %dumppath%\loot_group_items.sql
ECHO Dumping: loot_groups
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% loot_groups > %dumppath%\loot_groups.sql
ECHO Dumping: mount_infos
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% mount_infos > %dumppath%\mount_infos.sql
ECHO Dumping: new_ability_infos
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% new_ability_infos > %dumppath%\new_ability_infos.sql
ECHO Dumping: new_ability_volatiles
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% new_ability_volatiles > %dumppath%\new_ability_volatiles.sql
ECHO Dumping: pet_mastery_modifiers
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% pet_mastery_modifiers > %dumppath%\pet_mastery_modifiers.sql
ECHO Dumping: pet_stat_override
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% pet_stat_override > %dumppath%\pet_stat_override.sql
ECHO Dumping: pquest_info
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% pquest_info > %dumppath%\pquest_info.sql
ECHO Dumping: pquest_loot
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% pquest_loot > %dumppath%\pquest_loot.sql
ECHO Dumping: pquest_loot_crafting
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% pquest_loot_crafting > %dumppath%\pquest_loot_crafting.sql
ECHO Dumping: pquest_objectives
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% pquest_objectives > %dumppath%\pquest_objectives.sql
ECHO Dumping: pquest_spawns
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% pquest_spawns > %dumppath%\pquest_spawns.sql
ECHO Dumping: quests
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% quests > %dumppath%\quests.sql
ECHO Dumping: quests_creature_finisher
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% quests_creature_finisher > %dumppath%\quests_creature_finisher.sql
ECHO Dumping: quests_creature_starter
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% quests_creature_starter > %dumppath%\quests_creature_starter.sql
ECHO Dumping: quests_maps
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% quests_maps > %dumppath%\quests_maps.sql
ECHO Dumping: quests_objectives
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% quests_objectives > %dumppath%\quests_objectives.sql
ECHO Dumping: rallypoints
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% rallypoints > %dumppath%\rallypoints.sql
ECHO Dumping: random_names
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% random_names > %dumppath%\random_names.sql
ECHO Dumping: renown_infos
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% renown_infos > %dumppath%\renown_infos.sql
ECHO Dumping: rvr_objects
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% rvr_objects > %dumppath%\rvr_objects.sql
ECHO Dumping: scenario_infos
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% scenario_infos > %dumppath%\scenario_infos.sql
ECHO Dumping: scenario_objects
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% scenario_objects > %dumppath%\scenario_objects.sql
ECHO Dumping: timedannounces
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% timedannounces > %dumppath%\timedannounces.sql
ECHO Dumping: tok_bestary
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% tok_bestary > %dumppath%\tok_bestary.sql
ECHO Dumping: tok_infos
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% tok_infos > %dumppath%\tok_infos.sql
ECHO Dumping: vendor_items
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% vendor_items > %dumppath%\vendor_items.sql
ECHO Dumping: waypoints
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% waypoints > %dumppath%\waypoints.sql
ECHO Dumping: world_settings
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% world_settings > %dumppath%\world_settings.sql
ECHO Dumping: xp_infos
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% xp_infos > %dumppath%\xp_infos.sql
ECHO Dumping: zone_areas
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% zone_areas > %dumppath%\zone_areas.sql
ECHO Dumping: zone_infos
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% zone_infos > %dumppath%\zone_infos.sql
ECHO Dumping: zone_jumps
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% zone_jumps > %dumppath%\zone_jumps.sql
ECHO Dumping: zone_respawns
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% zone_respawns > %dumppath%\zone_respawns.sql
ECHO Dumping: zone_taxis
%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% %world_db% zone_taxis > %dumppath%\zone_taxis.sql


echo  Finished ... %world_db% exported to %dumppath% folder...
pause 
GOTO begin

:dumpchar
@ECHO OFF
CLS
SET sqlname=char-%DATE:~0,3% - %DATE:~4,2%-%DATE:~7,2%-%DATE:~10,4%--%TIME:~0,2%-%TIME:~3,2%
SET /p chardb=   Enter name of your character DB:
ECHO.
ECHO Dumping %sqlname%.sql to %dumppath%
%mysqlpath%\mysqldump -u%user% -p%pass% --result-file="%dumppath%\%sqlname%.sql" %chardb%
ECHO Done.
PAUSE
GOTO begin

:changeset
CLS
ECHO   Please Write down number of changeset (not the number of rev!!!)
ECHO.
ECHO.
set /p ch=      Number:
ECHO.
ECHO      Importing...
if not exist "%changsql%\changeset_%ch%.sql" GOTO error2
ECHO.

%mysqlpath%\mysql -h %host% --user=%user% --password=%pass% --port=%port% %world_db% < %changsql%\changeset_%ch%.sql
ECHO.
ECHO      File changeset_%ch%.sql imported sucesfully!
ECHO.
PAUSE
GOTO begin

:dumpever
CLS
echo          Write the name of your database, where you have tables to dump.
echo.
set /p db=           Name:
IF %db%=="" GOTO error 
echo.
echo.
echo          Type there name of table, which you want to dump
echo          (if you want to dump more tables, type space between names):
echo.
set /p z=           Name(s):
IF %z%=="" GOTO error 
echo              Processing....
echo.
set bu1="%z%"

if not exist "%dumppath%" mkdir %dumppath%

%mysqlpath%\mysqldump -h %host% --user=%user% --password=%pass% --add-drop-table %db% "%bu1%" > "%dumppath%"\"%z%.sql"

@echo              Dump table(s) %z% from database %db% is/are succesfull !
set bu1=
set z=
echo.
pause
goto begin

:error
ECHO 	Please enter a correct database.
ECHO.
PAUSE
GOTO begin

:error2
ECHO 	Changeset with this number not found.
ECHO.
PAUSE
GOTO changeset

:exit