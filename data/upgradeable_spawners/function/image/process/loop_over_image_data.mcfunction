# Copy current pixel
data modify storage upgradeable_spawners:image data.current.pixel_color set \
  from storage upgradeable_spawners:image data.current.image_data[0]
data modify storage upgradeable_spawners:image data.current.description_text set \
  from storage upgradeable_spawners:image data.current.description[0]

scoreboard players add $index.image_data upgradeable_spawners.image 1

# Calculate column
scoreboard players operation $index.column upgradeable_spawners.image = $index.image_data upgradeable_spawners.image
scoreboard players operation $index.column upgradeable_spawners.image %= $width upgradeable_spawners.image

# Calculate row
scoreboard players operation $index.row upgradeable_spawners.image = $index.image_data upgradeable_spawners.image
scoreboard players operation $index.row upgradeable_spawners.image /= $width upgradeable_spawners.image

# Append start spacing
execute if score $index.column upgradeable_spawners.image matches 1 run \
  function upgradeable_spawners:image/process/append/blank

# Append colored pixel
execute unless data storage upgradeable_spawners:image data.current{pixel_color: ''} run \
  function upgradeable_spawners:image/process/append/pixel
# Append background pixel
execute if data storage upgradeable_spawners:image data.current{pixel_color: ''} run \
  function upgradeable_spawners:image/process/append/background

# Append description
execute if score $index.column upgradeable_spawners.image matches 0 run \
    function upgradeable_spawners:image/process/image_end/description

# Remove first element from the image_data array
data remove storage upgradeable_spawners:image data.current.image_data[0]
# Loop over rows
execute if score $index.row upgradeable_spawners.image < $height upgradeable_spawners.image run \
  function upgradeable_spawners:image/process/loop_over_image_data
 