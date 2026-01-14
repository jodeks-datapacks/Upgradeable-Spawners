execute as @e[type=item_frame,tag=upgradeablespawners.upgrade,distance=..1.1] unless data entity @s Item run data modify entity @s Invisible set value 0b

execute if block ~ ~ ~ minecraft:spawner{SpawnCount:512s} run playsound block.music_disc_tears.deactivate block @a ~ ~ ~

data modify block ~ ~ ~ SpawnCount set value 4s
data modify block ~ ~ ~ MaxNearbyEntities set value 6s
data modify entity @s data.spawn_count set value 0b
scoreboard players set @s upgradeablespawners.spawn_count 0