$data modify storage upgradeable_spawners:root data.spawn_count set value $(dialog_spawn_count)
$scoreboard players set &spawn_count upgradeable_spawners.config $(dialog_spawn_count)
data modify storage upgradeable_spawners:root data.dialog_spawn_count set value "$(dialog_spawn_count)"

$data modify storage upgradeable_spawners:root data.spawn_delay set value $(dialog_spawn_delay)
$scoreboard players set &spawn_delay upgradeable_spawners.config $(dialog_spawn_delay)
data modify storage upgradeable_spawners:root data.dialog_spawn_delay set value "$(dialog_spawn_delay)"

$data modify storage upgradeable_spawners:root data.player_distance set value $(dialog_player_distance)
$scoreboard players set &player_distance upgradeable_spawners.config $(dialog_player_distance)
data modify storage upgradeable_spawners:root data.dialog_player_distance set value "$(dialog_player_distance)"

$data modify storage upgradeable_spawners:root data.spawn_range set value $(dialog_spawn_range)
$scoreboard players set &spawn_range upgradeable_spawners.config $(dialog_spawn_range)
data modify storage upgradeable_spawners:root data.dialog_spawn_range set value "$(dialog_spawn_range)"

$data modify storage upgradeable_spawners:root data.no_ai set value $(dialog_no_ai)
$scoreboard players set &no_ai upgradeable_spawners.config $(dialog_no_ai)
data modify storage upgradeable_spawners:root data.dialog_no_ai set value "$(dialog_no_ai)"

$data modify storage upgradeable_spawners:root data.low_hp set value $(dialog_low_hp)
$scoreboard players set &low_hp upgradeable_spawners.config $(dialog_low_hp)
data modify storage upgradeable_spawners:root data.dialog_low_hp set value "$(dialog_low_hp)"

execute if score &spawn_count upgradeable_spawners.config matches 0 run schedule clear upgradeable_spawners:app/spawner/set_count/item_frame_check
execute if score &spawn_count upgradeable_spawners.config matches 1 run schedule function upgradeable_spawners:app/spawner/set_count/item_frame_check 10t

execute if score &spawn_delay upgradeable_spawners.config matches 0 run schedule clear upgradeable_spawners:app/spawner/set_delay/item_frame_check
execute if score &spawn_delay upgradeable_spawners.config matches 1 run schedule function upgradeable_spawners:app/spawner/set_delay/item_frame_check 10t

execute if score &player_distance upgradeable_spawners.config matches 0 run schedule clear upgradeable_spawners:app/spawner/set_player_distance/item_frame_check
execute if score &player_distance upgradeable_spawners.config matches 1 run schedule function upgradeable_spawners:app/spawner/set_player_distance/item_frame_check 10t

execute if score &spawn_range upgradeable_spawners.config matches 0 run schedule clear upgradeable_spawners:app/spawner/set_range/item_frame_check
execute if score &spawn_range upgradeable_spawners.config matches 1 run schedule function upgradeable_spawners:app/spawner/set_range/item_frame_check 10t

execute if score &no_ai upgradeable_spawners.config matches 0 run schedule clear upgradeable_spawners:app/spawner/no_ai/item_frame_check
execute if score &no_ai upgradeable_spawners.config matches 1 run schedule function upgradeable_spawners:app/spawner/no_ai/item_frame_check 10t

execute if score &low_hp upgradeable_spawners.config matches 0 run schedule clear upgradeable_spawners:app/spawner/low_hp/item_frame_check
execute if score &low_hp upgradeable_spawners.config matches 1 run schedule function upgradeable_spawners:app/spawner/low_hp/item_frame_check 10t