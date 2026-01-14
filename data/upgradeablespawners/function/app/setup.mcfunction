#> upgradeablespawners:app/setup
# Called on load

scoreboard objectives add upgradeablespawners.raycast_start dummy
scoreboard objectives add upgradeablespawners.raycast_hit dummy
scoreboard objectives add upgradeablespawners.raycast_distance dummy
scoreboard objectives add upgradeablespawners.raycast_check dummy

scoreboard objectives add upgradeablespawners.config trigger

scoreboard objectives add upgradeablespawners.image dummy

scoreboard objectives add upgradeablespawners.check dummy

scoreboard objectives add upgradeablespawners.spawn_count dummy
scoreboard objectives add upgradeablespawners.player_distance dummy
scoreboard objectives add upgradeablespawners.spawn_delay dummy
scoreboard objectives add upgradeablespawners.spawn_range dummy
scoreboard objectives add upgradeablespawners.no_ai dummy
scoreboard objectives add upgradeablespawners.low_hp dummy

scoreboard objectives add upgradeablespawners.spawn_count_check dummy
scoreboard objectives add upgradeablespawners.player_distance_check dummy
scoreboard objectives add upgradeablespawners.spawn_delay_check dummy
scoreboard objectives add upgradeablespawners.spawn_range_check dummy
scoreboard objectives add upgradeablespawners.no_ai_check dummy
scoreboard objectives add upgradeablespawners.low_hp_check dummy
# Print the image
function upgradeablespawners:config/image

function upgradeablespawners:config/set_default

scoreboard players set @a upgradeablespawners.config 0

schedule function upgradeablespawners:app/spawner/spawner_check 5t
schedule function upgradeablespawners:app/spawner/check_for_item_frames 10t

schedule function upgradeablespawners:app/spawner/set_count/item_frame_check 10t
schedule function upgradeablespawners:app/spawner/set_player_distance/item_frame_check 10t
schedule function upgradeablespawners:app/spawner/set_delay/item_frame_check 10t
schedule function upgradeablespawners:app/spawner/set_range/item_frame_check 10t
schedule function upgradeablespawners:app/spawner/no_ai/item_frame_check 10t
schedule function upgradeablespawners:app/spawner/low_hp/item_frame_check 10t