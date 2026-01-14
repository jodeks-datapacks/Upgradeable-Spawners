execute as @e[type=item_frame,tag=upgradeablespawners.upgrade,distance=..1.1] unless data entity @s Item run data modify entity @s Invisible set value 0b

execute if block ~ ~ ~ minecraft:spawner unless data block ~ ~ ~ SpawnData.entity.attributes run playsound block.music_disc_tears.activate block @a ~ ~ ~

data modify block ~ ~ ~ SpawnData.entity.NoAI set value 1b
data modify entity @s data.no_ai set value 1b
scoreboard players set @s upgradeablespawners.no_ai 1