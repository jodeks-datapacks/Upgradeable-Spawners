execute as @e[type=block_display,tag=upgradeablespawners.block_display] at @s positioned ~ ~ ~ if entity @e[type=item_frame,tag=upgradeablespawners.upgrade,distance=..0.9,nbt={Facing:0b,Item:{id:"minecraft:creeper_banner_pattern"}}] run \
 scoreboard players add @s upgradeablespawners.no_ai_check 1
 
execute as @e[type=block_display,tag=upgradeablespawners.block_display] at @s positioned ~ ~ ~ if entity @e[type=item_frame,tag=upgradeablespawners.upgrade,distance=..1,nbt={Facing:1b,Item:{id:"minecraft:creeper_banner_pattern"}}] run \
 scoreboard players add @s upgradeablespawners.no_ai_check 1

execute as @e[type=block_display,tag=upgradeablespawners.block_display] at @s positioned ~ ~ ~ if entity @e[type=item_frame,tag=upgradeablespawners.upgrade,distance=..0.9,nbt={Facing:2b,Item:{id:"minecraft:creeper_banner_pattern"}}] run \
 scoreboard players add @s upgradeablespawners.no_ai_check 1

execute as @e[type=block_display,tag=upgradeablespawners.block_display] at @s positioned ~ ~ ~ if entity @e[type=item_frame,tag=upgradeablespawners.upgrade,distance=..0.9,nbt={Facing:3b,Item:{id:"minecraft:creeper_banner_pattern"}}] run \
 scoreboard players add @s upgradeablespawners.no_ai_check 1

execute as @e[type=block_display,tag=upgradeablespawners.block_display] at @s positioned ~ ~ ~ if entity @e[type=item_frame,tag=upgradeablespawners.upgrade,distance=..0.9,nbt={Facing:4b,Item:{id:"minecraft:creeper_banner_pattern"}}] run \
 scoreboard players add @s upgradeablespawners.no_ai_check 1

execute as @e[type=block_display,tag=upgradeablespawners.block_display] at @s positioned ~ ~ ~ if entity @e[type=item_frame,tag=upgradeablespawners.upgrade,distance=..0.9,nbt={Facing:5b,Item:{id:"minecraft:creeper_banner_pattern"}}] run \
 scoreboard players add @s upgradeablespawners.no_ai_check 1

function upgradeablespawners:app/spawner/no_ai/set_data

execute as @e[type=block_display,tag=upgradeablespawners.block_display] run scoreboard players set @s upgradeablespawners.no_ai_check 0

schedule function upgradeablespawners:app/spawner/no_ai/item_frame_check 10t