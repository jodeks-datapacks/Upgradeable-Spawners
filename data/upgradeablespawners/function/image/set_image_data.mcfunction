#> upgradeablespawners:image/set_image_data
#
# This function sets the image data.
#
# @input $(image_data) {string[][]} The data to set  
# @input $(width) {number} The width of the image  
# @input $(height) {number} The height of the image  
# @input $(background_color) {string} The background color of the image  
# @input $(description) {string[]} The description on the right hand side  
# @writes storage upgradeablespawners:image image_data  
# @writes storage upgradeablespawners:image width  
# @writes storage upgradeablespawners:image height  
# @writes storage upgradeablespawners:image background_color  
# @writes storage upgradeablespawners:image description  
# @writes storage upgradeablespawners:image pixel_character.blank  
# @writes storage upgradeablespawners:image pixel_character.chat  
# @writes storage upgradeablespawners:image pixel_character.lore

data remove storage upgradeablespawners:image image_data
data remove storage upgradeablespawners:image width
data remove storage upgradeablespawners:image height
data remove storage upgradeablespawners:image background_color
data remove storage upgradeablespawners:image description

$data modify storage upgradeablespawners:image image_data set value $(image_data)
$data modify storage upgradeablespawners:image width set value $(width)
$data modify storage upgradeablespawners:image height set value $(height)
$data modify storage upgradeablespawners:image background_color set value "$(background_color)"
$data modify storage upgradeablespawners:image description set value $(description)

data modify storage upgradeablespawners:image pixel_character.blank set value "　"
data modify storage upgradeablespawners:image pixel_character.pixel set value "▌▌"
data modify storage upgradeablespawners:image pixel_character.line_break set value '\n'

function upgradeablespawners:image/process/generate
