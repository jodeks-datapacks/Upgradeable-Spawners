execute unless score &spawn_count upgradeablespawners.config = &spawn_count upgradeablespawners.config run data modify storage upgradeablespawners:root spawn_count set value 1
data modify storage upgradeablespawners:root dialog_spawn_count set value "$(dialog_spawn_count)"
execute unless score &spawn_count upgradeablespawners.config = &spawn_count upgradeablespawners.config run scoreboard players set &spawn_count upgradeablespawners.config 1

execute unless score &spawn_delay upgradeablespawners.config = &spawn_delay upgradeablespawners.config run data modify storage upgradeablespawners:root spawn_delay set value 1
data modify storage upgradeablespawners:root dialog_spawn_delay set value "$(dialog_spawn_delay)"
execute unless score &spawn_delay upgradeablespawners.config = &spawn_delay upgradeablespawners.config run scoreboard players set &spawn_delay upgradeablespawners.config 1

execute unless score &player_distance upgradeablespawners.config = &player_distance upgradeablespawners.config run data modify storage upgradeablespawners:root player_distance set value 1
data modify storage upgradeablespawners:root dialog_player_distance set value "$(dialog_player_distance)"
execute unless score &player_distance upgradeablespawners.config = &player_distance upgradeablespawners.config run scoreboard players set &player_distance upgradeablespawners.config 1

execute unless score &spawn_range upgradeablespawners.config = &spawn_range upgradeablespawners.config run data modify storage upgradeablespawners:root spawn_range set value 1
data modify storage upgradeablespawners:root dialog_spawn_range set value "$(dialog_spawn_range)"
execute unless score &spawn_range upgradeablespawners.config = &spawn_range upgradeablespawners.config run scoreboard players set &spawn_range upgradeablespawners.config 1

execute unless score &no_ai upgradeablespawners.config = &no_ai upgradeablespawners.config run data modify storage upgradeablespawners:root no_ai set value 1
data modify storage upgradeablespawners:root dialog_no_ai set value "$(dialog_no_ai)"
execute unless score &no_ai upgradeablespawners.config = &no_ai upgradeablespawners.config run scoreboard players set &no_ai upgradeablespawners.config 1

execute unless score &low_hp upgradeablespawners.config = &low_hp upgradeablespawners.config run data modify storage upgradeablespawners:root low_hp set value 1
data modify storage upgradeablespawners:root dialog_low_hp set value "$(dialog_low_hp)"
execute unless score &low_hp upgradeablespawners.config = &low_hp upgradeablespawners.config run scoreboard players set &low_hp upgradeablespawners.config 1