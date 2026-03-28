execute as @e[type=item_frame,tag=upgradeable_spawners.upgrade,distance=..1.1] unless data entity @s Item run data modify entity @s Invisible set value 0b

data modify entity @s data.spawn_range set value 6b
scoreboard players set @s upgradeable_spawners.spawn_range 6