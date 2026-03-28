execute as @e[type=block_display,tag=upgradeable_spawners.block_display] at @s positioned ~ ~ ~ if entity @e[type=item_frame,tag=upgradeable_spawners.upgrade,distance=..0.9,nbt={Facing:0b,Item:{id:"minecraft:trident"}}] run \
 scoreboard players add @s upgradeable_spawners.spawn_delay_check 1
execute as @e[type=block_display,tag=upgradeable_spawners.block_display] at @s positioned ~ ~ ~ if entity @e[type=item_frame,tag=upgradeable_spawners.upgrade,distance=..1,nbt={Facing:1b,Item:{id:"minecraft:trident"}}] run \
 scoreboard players add @s upgradeable_spawners.spawn_delay_check 1
execute as @e[type=block_display,tag=upgradeable_spawners.block_display] at @s positioned ~ ~ ~ if entity @e[type=item_frame,tag=upgradeable_spawners.upgrade,distance=..0.9,nbt={Facing:2b,Item:{id:"minecraft:trident"}}] run \
 scoreboard players add @s upgradeable_spawners.spawn_delay_check 1
execute as @e[type=block_display,tag=upgradeable_spawners.block_display] at @s positioned ~ ~ ~ if entity @e[type=item_frame,tag=upgradeable_spawners.upgrade,distance=..0.9,nbt={Facing:3b,Item:{id:"minecraft:trident"}}] run \
 scoreboard players add @s upgradeable_spawners.spawn_delay_check 1
execute as @e[type=block_display,tag=upgradeable_spawners.block_display] at @s positioned ~ ~ ~ if entity @e[type=item_frame,tag=upgradeable_spawners.upgrade,distance=..0.9,nbt={Facing:4b,Item:{id:"minecraft:trident"}}] run \
 scoreboard players add @s upgradeable_spawners.spawn_delay_check 1
execute as @e[type=block_display,tag=upgradeable_spawners.block_display] at @s positioned ~ ~ ~ if entity @e[type=item_frame,tag=upgradeable_spawners.upgrade,distance=..0.9,nbt={Facing:5b,Item:{id:"minecraft:trident"}}] run \
 scoreboard players add @s upgradeable_spawners.spawn_delay_check 1

function upgradeable_spawners:app/spawner/set_delay/set_data

execute as @e[type=block_display,tag=upgradeable_spawners.block_display] run scoreboard players set @s upgradeable_spawners.spawn_delay_check 0

schedule function upgradeable_spawners:app/spawner/set_delay/item_frame_check 10t