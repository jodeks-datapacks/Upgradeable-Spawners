#> upgradeable_spawners:app/setup
# Called on load

scoreboard objectives add jodek.config dummy
execute unless score &upgradeable_spawners_load_message jodek.config = &upgradeable_spawners_load_message jodek.config run scoreboard players set &upgradeable_spawners_load_message jodek.config 1
execute unless score &upgradeable_spawners_advancements jodek.config = &upgradeable_spawners_advancements jodek.config run scoreboard players set &upgradeable_spawners_advancements jodek.config 1

scoreboard objectives add upgradeable_spawners.raycast_start dummy
scoreboard objectives add upgradeable_spawners.raycast_hit dummy
scoreboard objectives add upgradeable_spawners.raycast_distance dummy
scoreboard objectives add upgradeable_spawners.raycast_check dummy

scoreboard objectives add upgradeable_spawners.config trigger

scoreboard objectives add upgradeable_spawners.image dummy

scoreboard objectives add upgradeable_spawners.check dummy

scoreboard objectives add upgradeable_spawners.spawn_count dummy
scoreboard objectives add upgradeable_spawners.player_distance dummy
scoreboard objectives add upgradeable_spawners.spawn_delay dummy
scoreboard objectives add upgradeable_spawners.spawn_range dummy
scoreboard objectives add upgradeable_spawners.no_ai dummy
scoreboard objectives add upgradeable_spawners.low_hp dummy

scoreboard objectives add upgradeable_spawners.spawn_count_check dummy
scoreboard objectives add upgradeable_spawners.player_distance_check dummy
scoreboard objectives add upgradeable_spawners.spawn_delay_check dummy
scoreboard objectives add upgradeable_spawners.spawn_range_check dummy
scoreboard objectives add upgradeable_spawners.no_ai_check dummy
scoreboard objectives add upgradeable_spawners.low_hp_check dummy
# Print the image
function upgradeable_spawners:config/image

function upgradeable_spawners:config/set_default

scoreboard players set @a upgradeable_spawners.config 0

schedule function upgradeable_spawners:app/spawner/spawner_check 5t
schedule function upgradeable_spawners:app/spawner/check_for_item_frames 10t

schedule function upgradeable_spawners:app/spawner/set_count/item_frame_check 10t
schedule function upgradeable_spawners:app/spawner/set_player_distance/item_frame_check 10t
schedule function upgradeable_spawners:app/spawner/set_delay/item_frame_check 10t
schedule function upgradeable_spawners:app/spawner/set_range/item_frame_check 10t
schedule function upgradeable_spawners:app/spawner/no_ai/item_frame_check 10t
schedule function upgradeable_spawners:app/spawner/low_hp/item_frame_check 10t