$data modify storage upgradeablespawners:root spawn_count set value $(dialog_spawn_count)
$scoreboard players set &spawn_count upgradeablespawners.config $(dialog_spawn_count)
data modify storage upgradeablespawners:root dialog_spawn_count set value "$(dialog_spawn_count)"

$data modify storage upgradeablespawners:root spawn_delay set value $(dialog_spawn_delay)
$scoreboard players set &spawn_delay upgradeablespawners.config $(dialog_spawn_delay)
data modify storage upgradeablespawners:root dialog_spawn_delay set value "$(dialog_spawn_delay)"

$data modify storage upgradeablespawners:root player_distance set value $(dialog_player_distance)
$scoreboard players set &player_distance upgradeablespawners.config $(dialog_player_distance)
data modify storage upgradeablespawners:root dialog_player_distance set value "$(dialog_player_distance)"

$data modify storage upgradeablespawners:root spawn_range set value $(dialog_spawn_range)
$scoreboard players set &spawn_range upgradeablespawners.config $(dialog_spawn_range)
data modify storage upgradeablespawners:root dialog_spawn_range set value "$(dialog_spawn_range)"

$data modify storage upgradeablespawners:root no_ai set value $(dialog_no_ai)
$scoreboard players set &no_ai upgradeablespawners.config $(dialog_no_ai)
data modify storage upgradeablespawners:root dialog_no_ai set value "$(dialog_no_ai)"

$data modify storage upgradeablespawners:root low_hp set value $(dialog_low_hp)
$scoreboard players set &low_hp upgradeablespawners.config $(dialog_low_hp)
data modify storage upgradeablespawners:root dialog_low_hp set value "$(dialog_low_hp)"

execute if score &spawn_count upgradeablespawners.config matches 0 run schedule clear upgradeablespawners:app/spawner/set_count/item_frame_check
execute if score &spawn_count upgradeablespawners.config matches 1 run schedule function upgradeablespawners:app/spawner/set_count/item_frame_check 10t

execute if score &spawn_delay upgradeablespawners.config matches 0 run schedule clear upgradeablespawners:app/spawner/set_delay/item_frame_check
execute if score &spawn_delay upgradeablespawners.config matches 1 run schedule function upgradeablespawners:app/spawner/set_delay/item_frame_check 10t

execute if score &player_distance upgradeablespawners.config matches 0 run schedule clear upgradeablespawners:app/spawner/set_player_distance/item_frame_check
execute if score &player_distance upgradeablespawners.config matches 1 run schedule function upgradeablespawners:app/spawner/set_player_distance/item_frame_check 10t

execute if score &spawn_range upgradeablespawners.config matches 0 run schedule clear upgradeablespawners:app/spawner/set_range/item_frame_check
execute if score &spawn_range upgradeablespawners.config matches 1 run schedule function upgradeablespawners:app/spawner/set_range/item_frame_check 10t

execute if score &no_ai upgradeablespawners.config matches 0 run schedule clear upgradeablespawners:app/spawner/no_ai/item_frame_check
execute if score &no_ai upgradeablespawners.config matches 1 run schedule function upgradeablespawners:app/spawner/no_ai/item_frame_check 10t

execute if score &low_hp upgradeablespawners.config matches 0 run schedule clear upgradeablespawners:app/spawner/low_hp/item_frame_check
execute if score &low_hp upgradeablespawners.config matches 1 run schedule function upgradeablespawners:app/spawner/low_hp/item_frame_check 10t