# Copy current pixel
data modify storage upgradeablespawners:image current.pixel_color set \
  from storage upgradeablespawners:image current.image_data[0]
data modify storage upgradeablespawners:image current.description_text set \
  from storage upgradeablespawners:image current.description[0]

scoreboard players add $index.image_data upgradeablespawners.image 1

# Calculate column
scoreboard players operation $index.column upgradeablespawners.image = $index.image_data upgradeablespawners.image
scoreboard players operation $index.column upgradeablespawners.image %= $width upgradeablespawners.image

# Calculate row
scoreboard players operation $index.row upgradeablespawners.image = $index.image_data upgradeablespawners.image
scoreboard players operation $index.row upgradeablespawners.image /= $width upgradeablespawners.image

# Append start spacing
execute if score $index.column upgradeablespawners.image matches 1 run \
  function upgradeablespawners:image/process/append/blank

# Append colored pixel
execute unless data storage upgradeablespawners:image current{pixel_color: ''} run \
  function upgradeablespawners:image/process/append/pixel
# Append background pixel
execute if data storage upgradeablespawners:image current{pixel_color: ''} run \
  function upgradeablespawners:image/process/append/background

# Append description
execute if score $index.column upgradeablespawners.image matches 0 run \
    function upgradeablespawners:image/process/image_end/description

# Remove first element from the image_data array
data remove storage upgradeablespawners:image current.image_data[0]
# Loop over rows
execute if score $index.row upgradeablespawners.image < $height upgradeablespawners.image run \
  function upgradeablespawners:image/process/loop_over_image_data
 