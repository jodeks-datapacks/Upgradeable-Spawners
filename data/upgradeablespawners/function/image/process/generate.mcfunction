#> upgradeablespawners:image/process/generate
#
# This function generates the image data.

data modify storage upgradeablespawners:image current.image_data set from storage upgradeablespawners:image image_data
data modify storage upgradeablespawners:image current.description set from storage upgradeablespawners:image description
data modify storage upgradeablespawners:image current.pixel_character set from storage upgradeablespawners:image pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data upgradeablespawners.image 0
# Set width
execute store result score $width upgradeablespawners.image run data get storage upgradeablespawners:image width
# Set height
execute store result score $height upgradeablespawners.image run data get storage upgradeablespawners:image height
# Set length
scoreboard players operation $length upgradeablespawners.image = $width upgradeablespawners.image
scoreboard players operation $length upgradeablespawners.image *= $height upgradeablespawners.image
# Clear remaining entries in tellraw
data remove storage upgradeablespawners:image tellraw

# Add spacing on top
function upgradeablespawners:image/process/append/line_break
# Loop over image data
function upgradeablespawners:image/process/loop_over_image_data
# Add spacing on bottom
function upgradeablespawners:image/process/append/line_break