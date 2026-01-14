# Append blank
function upgradeablespawners:image/process/append/blank

data modify storage upgradeablespawners:image tellraw append \
  from storage upgradeablespawners:image current.description_text

# Append blank
function upgradeablespawners:image/process/append/blank

# Append line_break
execute unless score $index.image_data upgradeablespawners.image = $length upgradeablespawners.image \
  run function upgradeablespawners:image/process/append/line_break

# Remove first element from the description
data remove storage upgradeablespawners:image current.description[0]
 