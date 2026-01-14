advancement revoke @s only upgradeablespawners:item_frame/spawn_delay/facing_down

execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function upgradeablespawners:app/raycast/start_ray

execute as @e[type=item_frame,tag=upgradeablespawners.ray_hit_entity] at @s if block ~ ~1 ~ minecraft:spawner positioned ~ ~0.1 ~ run function upgradeablespawners:app/item_frame/spawn_delay/check_spawn

tag @e[type=item_frame,tag=upgradeablespawners.ray_hit_entity] remove upgradeablespawners.ray_hit_entity