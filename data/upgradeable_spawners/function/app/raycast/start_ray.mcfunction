scoreboard players set @s upgradeable_spawners.raycast_hit 0
scoreboard players set @s upgradeable_spawners.raycast_distance 0

tag @s add upgradeable_spawners.riding_ray
function upgradeable_spawners:app/raycast/ray
tag @s remove upgradeable_spawners.riding_ray

scoreboard players set @s upgradeable_spawners.raycast_start 1