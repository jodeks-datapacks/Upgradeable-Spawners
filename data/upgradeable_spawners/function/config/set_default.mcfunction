execute unless score &spawn_count upgradeable_spawners.config = &spawn_count upgradeable_spawners.config run data modify storage upgradeable_spawners:root data.spawn_count set value 1
data modify storage upgradeable_spawners:root data.dialog_spawn_count set value "$(dialog_spawn_count)"
execute unless score &spawn_count upgradeable_spawners.config = &spawn_count upgradeable_spawners.config run scoreboard players set &spawn_count upgradeable_spawners.config 1

execute unless score &spawn_delay upgradeable_spawners.config = &spawn_delay upgradeable_spawners.config run data modify storage upgradeable_spawners:root data.spawn_delay set value 1
data modify storage upgradeable_spawners:root data.dialog_spawn_delay set value "$(dialog_spawn_delay)"
execute unless score &spawn_delay upgradeable_spawners.config = &spawn_delay upgradeable_spawners.config run scoreboard players set &spawn_delay upgradeable_spawners.config 1

execute unless score &player_distance upgradeable_spawners.config = &player_distance upgradeable_spawners.config run data modify storage upgradeable_spawners:root data.player_distance set value 1
data modify storage upgradeable_spawners:root data.dialog_player_distance set value "$(dialog_player_distance)"
execute unless score &player_distance upgradeable_spawners.config = &player_distance upgradeable_spawners.config run scoreboard players set &player_distance upgradeable_spawners.config 1

execute unless score &spawn_range upgradeable_spawners.config = &spawn_range upgradeable_spawners.config run data modify storage upgradeable_spawners:root data.spawn_range set value 1
data modify storage upgradeable_spawners:root data.dialog_spawn_range set value "$(dialog_spawn_range)"
execute unless score &spawn_range upgradeable_spawners.config = &spawn_range upgradeable_spawners.config run scoreboard players set &spawn_range upgradeable_spawners.config 1

execute unless score &no_ai upgradeable_spawners.config = &no_ai upgradeable_spawners.config run data modify storage upgradeable_spawners:root data.no_ai set value 1
data modify storage upgradeable_spawners:root data.dialog_no_ai set value "$(dialog_no_ai)"
execute unless score &no_ai upgradeable_spawners.config = &no_ai upgradeable_spawners.config run scoreboard players set &no_ai upgradeable_spawners.config 1

execute unless score &low_hp upgradeable_spawners.config = &low_hp upgradeable_spawners.config run data modify storage upgradeable_spawners:root data.low_hp set value 1
data modify storage upgradeable_spawners:root data.dialog_low_hp set value "$(dialog_low_hp)"
execute unless score &low_hp upgradeable_spawners.config = &low_hp upgradeable_spawners.config run scoreboard players set &low_hp upgradeable_spawners.config 1