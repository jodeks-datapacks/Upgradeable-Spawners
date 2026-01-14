execute as @e[type=item_frame,tag=upgradeablespawners.upgrade,distance=..1.1] unless data entity @s Item run data modify entity @s Invisible set value 0b

execute if block ~ ~ ~ minecraft:spawner{MaxNearbyEntities:12s} run playsound block.music_disc_tears.activate block @a ~ ~ ~

data modify block ~ ~ ~ SpawnCount set value 512s
data modify block ~ ~ ~ MaxNearbyEntities set value 16s
data modify entity @s data.spawn_count set value 4b
scoreboard players set @s upgradeablespawners.spawn_count 4