execute as @e[type=item_frame,tag=upgradeable_spawners.upgrade,distance=..1.1] unless data entity @s Item run data modify entity @s Invisible set value 0b

execute if block ~ ~ ~ minecraft:spawner{RequiredPlayerRange:96s} run playsound block.music_disc_tears.activate block @a ~ ~ ~

data modify block ~ ~ ~ RequiredPlayerRange set value 128s
data modify entity @s data.player_distance set value 4b
scoreboard players set @s upgradeable_spawners.player_distance 4