scoreboard players set @a upgradeable_spawners.config 0

$dialog show @s {\
  type:"minecraft:multi_action",\
  title:"Upgradeable Spawners Config",\
  "body": [\
    {\
      "type": "minecraft:item",\
      "item": {\
        "id": "minecraft:spawner"\
      }\
    }\
  ],\
  inputs:[\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_spawn_count",\
      "label": {\
        "translate": "upgradeable_spawners.config.spawn_count",\
        "fallback": "Spawn Count Upgrade"\
      },\
      "initial": $(spawn_count),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_spawn_delay",\
      "label": {\
        "translate": "upgradeable_spawners.config.spawn_delay",\
        "fallback": "Spawn Delay Upgrade"\
      },\
      "initial": $(spawn_delay),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_player_distance",\
      "label": {\
        "translate": "upgradeable_spawners.config.player_distance",\
        "fallback": "Player Distance Upgrade"\
      },\
      "initial": $(player_distance),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_spawn_range",\
      "label": {\
        "translate": "upgradeable_spawners.config.spawn_range",\
        "fallback": "Spawn Range Upgrade"\
      },\
      "initial": $(spawn_range),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_no_ai",\
      "label": {\
        "translate": "upgradeable_spawners.config.no_ai",\
        "fallback": "No AI Upgrade"\
      },\
      "initial": $(no_ai),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_low_hp",\
      "label": {\
        "translate": "upgradeable_spawners.config.low_hp",\
        "fallback": "Low HP Upgrade"\
      },\
      "initial": $(low_hp),\
      "on_true": "1",\
      "on_false": "0"\
    }\
  ],\
  columns:1,\
    "exit_action": {\
      "label": {\
        "translate": "jodek.save",\
        "fallback": "Save"\
      },\
    "action": {\
      type:"dynamic/run_command",\
      template:"function upgradeable_spawners:config/save_config {dialog_spawn_count:$(dialog_spawn_count),dialog_spawn_delay:$(dialog_spawn_delay),dialog_player_distance:$(dialog_player_distance),dialog_spawn_range:$(dialog_spawn_range),dialog_no_ai:$(dialog_no_ai),dialog_low_hp:$(dialog_low_hp)}"\
    }\
  },\
  actions:[\
    {\
        "label": {\
        "translate": "jodek.save",\
        "fallback": "Save"\
      },\
      "action": {\
        type:"dynamic/run_command",\
        template:"function upgradeable_spawners:config/save_config {dialog_spawn_count:$(dialog_spawn_count),dialog_spawn_delay:$(dialog_spawn_delay),dialog_player_distance:$(dialog_player_distance),dialog_spawn_range:$(dialog_spawn_range),dialog_no_ai:$(dialog_no_ai),dialog_low_hp:$(dialog_low_hp)}"\
      }\
    }\
  ]\
}