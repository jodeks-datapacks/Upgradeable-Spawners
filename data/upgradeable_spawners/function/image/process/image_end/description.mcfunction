# Append blank
function upgradeable_spawners:image/process/append/blank

data modify storage upgradeable_spawners:image data.tellraw append \
  from storage upgradeable_spawners:image data.current.description_text

# Append blank
function upgradeable_spawners:image/process/append/blank

# Append line_break
execute unless score $index.image_data upgradeable_spawners.image = $length upgradeable_spawners.image \
  run function upgradeable_spawners:image/process/append/line_break

# Remove first element from the description
data remove storage upgradeable_spawners:image data.current.description[0]
 