execute as @e[type=item_frame,tag=upgradeablespawners.upgrade,distance=..1.1] unless data entity @s Item run data modify entity @s Invisible set value 0b

data modify entity @s data.spawn_range set value 5b
scoreboard players set @s upgradeablespawners.spawn_range 5