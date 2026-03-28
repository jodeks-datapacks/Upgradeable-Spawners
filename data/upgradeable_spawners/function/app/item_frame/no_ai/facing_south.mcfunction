advancement revoke @s only upgradeable_spawners:item_frame/no_ai/facing_south

execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function upgradeable_spawners:app/raycast/start_ray

execute as @e[type=item_frame,tag=upgradeable_spawners.ray_hit_entity] at @s if block ~ ~ ~-1 minecraft:spawner positioned ~ ~ ~-0.52525 run function upgradeable_spawners:app/item_frame/no_ai/check_spawn

tag @e[type=item_frame,tag=upgradeable_spawners.ray_hit_entity] remove upgradeable_spawners.ray_hit_entity