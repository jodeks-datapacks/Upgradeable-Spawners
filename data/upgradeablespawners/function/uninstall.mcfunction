#> upgradeablespawners:uninstall
# Function to uninstall the datapack

data remove storage upgradeablespawners:image image_data
data remove storage upgradeablespawners:image width
data remove storage upgradeablespawners:image height
data remove storage upgradeablespawners:image background_color
data remove storage upgradeablespawners:image description
data remove storage upgradeablespawners:image tellraw

advancement revoke @a only jodek:upgradeablespawners
advancement revoke @a only jodek:utility
advancement revoke @a only jodek:root

scoreboard objectives remove upgradeablespawners.image

scoreboard objectives remove upgradeablespawners.raycast_start
scoreboard objectives remove upgradeablespawners.raycast_hit
scoreboard objectives remove upgradeablespawners.raycast_distance
scoreboard objectives remove upgradeablespawners.raycast_check

scoreboard objectives remove upgradeablespawners.config

say Successfully uninstalled Upgradeable Spawners!