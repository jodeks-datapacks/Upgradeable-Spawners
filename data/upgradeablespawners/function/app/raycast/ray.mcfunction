execute if score @s upgradeablespawners.raycast_hit matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=item_frame,dx=0] run function upgradeablespawners:app/raycast/check_hit_entity
# execute unless block ~ ~ ~ minecraft:air run function upgradeablespawners:app/raycast/hit_block
scoreboard players add @s upgradeablespawners.raycast_distance 1
execute if score @s upgradeablespawners.raycast_hit matches 0 if score @s upgradeablespawners.raycast_distance matches ..50 positioned ^ ^ ^0.1 run function upgradeablespawners:app/raycast/ray