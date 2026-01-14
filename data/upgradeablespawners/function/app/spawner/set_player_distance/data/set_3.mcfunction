execute as @e[type=item_frame,tag=upgradeablespawners.upgrade,distance=..1.1] unless data entity @s Item run data modify entity @s Invisible set value 0b

execute if block ~ ~ ~ minecraft:spawner{RequiredPlayerRange:128s} run playsound block.music_disc_tears.deactivate block @a ~ ~ ~
execute if block ~ ~ ~ minecraft:spawner{RequiredPlayerRange:64s} run playsound block.music_disc_tears.activate block @a ~ ~ ~

data modify block ~ ~ ~ RequiredPlayerRange set value 96s
data modify entity @s data.player_distance set value 3b
scoreboard players set @s upgradeablespawners.player_distance 3