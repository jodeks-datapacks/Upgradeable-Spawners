execute as @e[type=item_frame,tag=upgradeablespawners.upgrade,distance=..1.1] unless data entity @s Item run data modify entity @s Invisible set value 0b

data modify entity @s data.no_ai set value 2b
scoreboard players set @s upgradeablespawners.no_ai 2