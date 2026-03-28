execute as @e[type=item_frame,tag=upgradeable_spawners.upgrade,distance=..1.1] unless data entity @s Item run data modify entity @s Invisible set value 0b

execute if block ~ ~ ~ minecraft:spawner{SpawnData:{entity:{attributes:[{id:"minecraft:max_health",base:12}]}}} run playsound block.music_disc_tears.deactivate block @a ~ ~ ~

data remove block ~ ~ ~ SpawnData.entity.attributes
data modify entity @s data.low_hp set value 0b
scoreboard players set @s upgradeable_spawners.low_hp 0