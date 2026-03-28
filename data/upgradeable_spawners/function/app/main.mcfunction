#> upgradeable_spawners:app/main
# Called on every tick

scoreboard players enable @a upgradeable_spawners.config
execute as @a if score @s upgradeable_spawners.config matches 1 run \
 function upgradeable_spawners:config/dialog_config with storage upgradeable_spawners:root data