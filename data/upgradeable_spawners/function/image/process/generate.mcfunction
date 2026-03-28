#> upgradeable_spawners:image/process/generate
#
# This function generates the image data.

data modify storage upgradeable_spawners:image data.current.image_data set from storage upgradeable_spawners:image data.image_data
data modify storage upgradeable_spawners:image data.current.description set from storage upgradeable_spawners:image data.description
data modify storage upgradeable_spawners:image data.current.pixel_character set from storage upgradeable_spawners:image data.pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data upgradeable_spawners.image 0
# Set width
execute store result score $width upgradeable_spawners.image run data get storage upgradeable_spawners:image data.width
# Set height
execute store result score $height upgradeable_spawners.image run data get storage upgradeable_spawners:image data.height
# Set length
scoreboard players operation $length upgradeable_spawners.image = $width upgradeable_spawners.image
scoreboard players operation $length upgradeable_spawners.image *= $height upgradeable_spawners.image
# Clear remaining entries in tellraw
data remove storage upgradeable_spawners:image data.tellraw

# Add spacing on top
function upgradeable_spawners:image/process/append/line_break
# Loop over image data
function upgradeable_spawners:image/process/loop_over_image_data
# Add spacing on bottom
function upgradeable_spawners:image/process/append/line_break