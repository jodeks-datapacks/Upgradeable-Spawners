execute as @e[type=block_display,tag=upgradeable_spawners.block_display] at @s unless block ~ ~ ~ minecraft:spawner run kill @s

schedule function upgradeable_spawners:app/spawner/spawner_check 5t

