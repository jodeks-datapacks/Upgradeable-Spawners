execute as @e[type=block_display,tag=upgradeablespawners.block_display] at @s unless block ~ ~ ~ minecraft:spawner run kill @s

schedule function upgradeablespawners:app/spawner/spawner_check 5t

