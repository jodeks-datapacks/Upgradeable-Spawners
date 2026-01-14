scoreboard players set @s upgradeablespawners.raycast_hit 0
scoreboard players set @s upgradeablespawners.raycast_distance 0

tag @s add upgradeablespawners.riding_ray
function upgradeablespawners:app/raycast/ray
tag @s remove upgradeablespawners.riding_ray

scoreboard players set @s upgradeablespawners.raycast_start 1