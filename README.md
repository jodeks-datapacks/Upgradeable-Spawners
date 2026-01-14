# Upgradeable Spawners

<div style="display: flex; gap: 20px;">
<a href="https://ko-fi.com/H2H011LYHJ"><img src="https://ko-fi.com/img/githubbutton_sm.svg" alt="ko-fi"/></a>
  
<a href="https://github.com/sponsors/Jodekq" target="_blank">
  <img src="https://img.shields.io/badge/Sponsor-Jodek-green?style=for-the-badge&logo=github&logoWidth=20" alt="Sponsor @Jodek" />
</a>
</div>

###

<picture>
   <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/Mqxx/GitHub-Markdown/main/blockquotes/badge/light-theme/tip.svg">
  <img alt="Tip" src="https://raw.githubusercontent.com/Mqxx/GitHub-Markdown/main/blockquotes/badge/dark-theme/tip.svg">
 </picture><br>
 
Questions or issues? -> [discord server](https://discord.gg/z2n3qTzQY6) | _or create an issue on github_

## Features

You can attach modules to spawners to upgrade them

| Upgrade | Item | Description | Default | 1 Module | 2 Modules | 3 Modules | 4 Modules |
|---------|------|-------------|---------|----------|-----------|-----------|-----------|
| **Spawn Count Upgrade** | Tears Music Disc | Increases the number of spawned mobs | 4 mobs | 6 mobs | 8 mobs | 12 mobs | 16 mobs |
| **Spawn Delay Upgrade** | Trident | Decreases the spawn delay | 10-40 sec | 10-20 sec | 10-15 sec | 5-10 sec | 5 sec |
| **Player Distance Upgrade** | Totem of Undying | Increases the player distance for spawner activation | 16 blocks | 32 blocks | 64 blocks | 128 blocks | 192 blocks |
| **Spawn Range Upgrade** | Beacon | Increases the spawn range of the spawner | 9x3x9 | 7x3x7 | 5x3x5 | 3x3x3 | 0x3x0 |
| **NoAI Upgrade** | Creeper Banner Pattern | Spawned mobs have no AI | - | - | - | - | - |
| **Low HP Upgrade** | Turtle Helmet | Spawned mobs have reduced health | Full HP | 6 HP | 4 HP | 2 HP | 1 HP |

## How it works

Attach an item frame to a spawner and put the matching item in it

## Config

To enable and disable upgrades

```
/trigger upgradeablespawners.config
```