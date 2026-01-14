execute as @e[type=item_frame,tag=upgradeablespawners.upgrade,distance=..1.1] unless data entity @s Item run data modify entity @s Invisible set value 0b

execute if block ~ ~ ~ minecraft:spawner{MaxSpawnDelay:100s} run playsound block.music_disc_tears.deactivate block @a ~ ~ ~
execute if block ~ ~ ~ minecraft:spawner{MaxSpawnDelay:300s} run playsound block.music_disc_tears.activate block @a ~ ~ ~

data modify block ~ ~ ~ MinSpawnDelay set value 100s
data modify block ~ ~ ~ MaxSpawnDelay set value 200s
data modify entity @s data.spawn_delay set value 3b
scoreboard players set @s upgradeablespawners.spawn_delay 3