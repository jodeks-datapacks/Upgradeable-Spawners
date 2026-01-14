execute as @e[type=item_frame,tag=upgradeablespawners.upgrade,distance=..1.1] unless data entity @s Item run data modify entity @s Invisible set value 0b

execute if block ~ ~ ~ minecraft:spawner{SpawnRange:2s} run playsound block.music_disc_tears.deactivate block @a ~ ~ ~
execute if block ~ ~ ~ minecraft:spawner{SpawnRange:4s} run playsound block.music_disc_tears.activate block @a ~ ~ ~

data modify block ~ ~ ~ SpawnRange set value 3s
data modify entity @s data.spawn_range set value 1b
scoreboard players set @s upgradeablespawners.spawn_range 1