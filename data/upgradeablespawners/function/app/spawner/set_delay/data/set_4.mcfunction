execute as @e[type=item_frame,tag=upgradeablespawners.upgrade,distance=..1.1] unless data entity @s Item run data modify entity @s Invisible set value 0b

execute if block ~ ~ ~ minecraft:spawner{MaxSpawnDelay:200s} run playsound block.music_disc_tears.activate block @a ~ ~ ~

data modify block ~ ~ ~ MinSpawnDelay set value 100s
data modify block ~ ~ ~ MaxSpawnDelay set value 100s
data modify entity @s data.spawn_delay set value 4b
scoreboard players set @s upgradeablespawners.spawn_delay 4