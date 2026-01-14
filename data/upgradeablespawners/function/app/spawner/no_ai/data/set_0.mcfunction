execute as @e[type=item_frame,tag=upgradeablespawners.upgrade,distance=..1.1] unless data entity @s Item run data modify entity @s Invisible set value 0b

execute if block ~ ~ ~ minecraft:spawner{SpawnData:{entity:{NoAI:1b}}} run playsound block.music_disc_tears.deactivate block @a ~ ~ ~

data remove block ~ ~ ~ SpawnData.entity.NoAI
data modify entity @s data.no_ai set value 0b
scoreboard players set @s upgradeablespawners.no_ai 0