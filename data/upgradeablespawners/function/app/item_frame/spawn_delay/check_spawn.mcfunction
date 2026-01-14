tag @s add upgradeablespawners.upgrade

execute unless entity @e[type=block_display,distance=..0.5] run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:tinted_glass"},width:0.1f,height:0.1f,Tags:["upgradeablespawners.block_display"],data:{spawn_count:0b,spawn_delay:0b,player_distance:0b,spawn_range:0b,no_ai:0b,low_hp:0b}}

execute as @e[type=block_display,distance=..0.5,nbt={data:{spawn_count:0b,spawn_delay:0b,player_distance:0b,spawn_range:0b,no_ai:0b,low_hp:0b}}] run function upgradeablespawners:app/item_frame/set_default_scores

data modify entity @s Invisible set value 1b