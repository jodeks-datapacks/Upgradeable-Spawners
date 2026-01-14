#> upgradeablespawners:app/main
# Called on every tick

scoreboard players enable @a upgradeablespawners.config
execute as @a if score @s upgradeablespawners.config matches 1 run \
 function upgradeablespawners:config/dialog_config with storage upgradeablespawners:root