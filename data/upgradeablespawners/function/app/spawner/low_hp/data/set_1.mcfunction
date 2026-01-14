execute as @e[type=item_frame,tag=upgradeablespawners.upgrade,distance=..1.1] unless data entity @s Item run data modify entity @s Invisible set value 0b

execute if block ~ ~ ~ minecraft:spawner unless data block ~ ~ ~ SpawnData.entity.attributes run playsound block.music_disc_tears.activate block @a ~ ~ ~
execute if block ~ ~ ~ minecraft:spawner{SpawnData:{entity:{attributes:[{id:"minecraft:max_health",base:8}]}}} run playsound block.music_disc_tears.deactivate block @a ~ ~ ~

data modify block ~ ~ ~ SpawnData.entity.attributes set value [{id:"minecraft:max_health",base:12}]
data modify entity @s data.low_hp set value 1b
scoreboard players set @s upgradeablespawners.low_hp 1