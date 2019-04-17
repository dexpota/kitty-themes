[1]: https://github.com/mbadolato/iTerm2-Color-Schemes
[2]: https://github.com/stark/Color-Scripts/tree/master/color-scripts

# kitty-themes
> **Personalize** your *kitty* terminal and choose your theme from this awesome
> collection, for more information on the terminal visit
> https://github.com/kovidgoyal/kitty

[Bring me to the previews!](#previews)

![kitty-themes](./.github/kitty-themes.jpg)

In this repository you can find a set of themes to personalize your kitty
terminal, these have been ported from [iTerm2-Color-Schemes][1]. You can find
the previews for each theme in the [section](#previews) below or inside the
[previews](./previews) directory.

## Installation

1. If you want to download and use one of these theme you have two options:
    - clone the entire *kitty-themes* repository:

    ```bash
    git clone --depth 1 git@github.com:dexpota/kitty-themes.git ~/.config/kitty/kitty-themes
    ```

   - or download just one theme:

    ```bash
    wget https://raw.githubusercontent.com/dexpota/kitty-themes/master/themes/3024_Day.conf -P ~/.config/kitty/kitty-themes
    ```

2. Choose a theme and create a symlink:

```bash
cd ~/.config/kitty
ln -s ./kitty-themes/themes/Floraverse.conf ~/.config/kitty/theme.conf
```

3. Add this line to your kitty.conf configuration file:
```
include ./theme.conf
```

## License

All original content of this repository is licensed with the [MIT
License](./LICENSE.md). Whenever possible the author of the theme is cited
inside each theme configuration file, together with its license. Hit me up if
you find your theme inside this repository and you want a proper citation.


## Previews

If you have followed the [installation](#installation) instructions and cloned
the entire repo, you have two options to try a theme:

1. If you have enabled remote control in *kitty* you can run this command:
  ```bash
  kitty @ set-colors -a "~/.config/kitty/kitty-themes/themes/AdventureTime.conf"
  ```
2. Otherwise you can start another instance of kitty and specify another config
  file to read from, this will cause *kitty* to read both its normal config
  file and the specified one:
  ```bash
  kitty -o include="~/.config/kitty/kitty-themes/themes/AdventureTime.conf"
  ```

### Bonus

Try your new theme with one of the scripts in [Color-scripts][2] with this
one-liner:

```bash
wget -q -O - $(curl -s https://api.github.com/repos/stark/Color-Scripts/contents/color-scripts | jq '.[] | "\(.path) \(.download_url)"' -r | shuf -n1 | cut -d " " -f2) | bash
```

## 3024 Day
[![image](previews/3024_Day.png)](themes/3024_Day.conf)
## 3024 Night
[![image](previews/3024_Night.png)](themes/3024_Night.conf)
## AdventureTime
[![image](previews/AdventureTime.png)](themes/AdventureTime.conf)
## Afterglow
[![image](previews/Afterglow.png)](themes/Afterglow.conf)
## AlienBlood
[![image](previews/AlienBlood.png)](themes/AlienBlood.conf)
## Alucard
[![image](previews/Alucard.png)](themes/Alucard.conf)
## Argonaut
[![image](previews/Argonaut.png)](themes/Argonaut.conf)
## Arthur
[![image](previews/Arthur.png)](themes/Arthur.conf)
## AtelierSulphurpool
[![image](previews/AtelierSulphurpool.png)](themes/AtelierSulphurpool.conf)
## Atom
[![image](previews/Atom.png)](themes/Atom.conf)
## AtomOneLight
[![image](previews/AtomOneLight.png)](themes/AtomOneLight.conf)
## Batman
[![image](previews/Batman.png)](themes/Batman.conf)
## Belafonte Day
[![image](previews/Belafonte_Day.png)](themes/Belafonte_Day.conf)
## Belafonte Night
[![image](previews/Belafonte_Night.png)](themes/Belafonte_Night.conf)
## BirdsOfParadise
[![image](previews/BirdsOfParadise.png)](themes/BirdsOfParadise.conf)
## Blazer
[![image](previews/Blazer.png)](themes/Blazer.conf)
## Borland
[![image](previews/Borland.png)](themes/Borland.conf)
## Bright Lights
[![image](previews/Bright_Lights.png)](themes/Bright_Lights.conf)
## Broadcast
[![image](previews/Broadcast.png)](themes/Broadcast.conf)
## Brogrammer
[![image](previews/Brogrammer.png)](themes/Brogrammer.conf)
## C64
[![image](previews/C64.png)](themes/C64.conf)
## CLRS
[![image](previews/CLRS.png)](themes/CLRS.conf)
## Chalk
[![image](previews/Chalk.png)](themes/Chalk.conf)
## Chalkboard
[![image](previews/Chalkboard.png)](themes/Chalkboard.conf)
## Ciapre
[![image](previews/Ciapre.png)](themes/Ciapre.conf)
## Cobalt2
[![image](previews/Cobalt2.png)](themes/Cobalt2.conf)
## Cobalt Neon
[![image](previews/Cobalt_Neon.png)](themes/Cobalt_Neon.conf)
## CrayonPonyFish
[![image](previews/CrayonPonyFish.png)](themes/CrayonPonyFish.conf)
## Dark Pastel
[![image](previews/Dark_Pastel.png)](themes/Dark_Pastel.conf)
## Darkside
[![image](previews/Darkside.png)](themes/Darkside.conf)
## Desert
[![image](previews/Desert.png)](themes/Desert.conf)
## DimmedMonokai
[![image](previews/DimmedMonokai.png)](themes/DimmedMonokai.conf)
## DotGov
[![image](previews/DotGov.png)](themes/DotGov.conf)
## Dracula
[![image](previews/Dracula.png)](themes/Dracula.conf)
## Dumbledore
[![image](previews/Dumbledore.png)](themes/Dumbledore.conf)
## Duotone Dark
[![image](previews/Duotone_Dark.png)](themes/Duotone_Dark.conf)
## ENCOM
[![image](previews/ENCOM.png)](themes/ENCOM.conf)
## Earthsong
[![image](previews/Earthsong.png)](themes/Earthsong.conf)
## Elemental
[![image](previews/Elemental.png)](themes/Elemental.conf)
## Espresso
[![image](previews/Espresso.png)](themes/Espresso.conf)
## Espresso Libre
[![image](previews/Espresso_Libre.png)](themes/Espresso_Libre.conf)
## Fideloper
[![image](previews/Fideloper.png)](themes/Fideloper.conf)
## FishTank
[![image](previews/FishTank.png)](themes/FishTank.conf)
## Flat
[![image](previews/Flat.png)](themes/Flat.conf)
## Flatland
[![image](previews/Flatland.png)](themes/Flatland.conf)
## Floraverse
[![image](previews/Floraverse.png)](themes/Floraverse.conf)
## FrontEndDelight
[![image](previews/FrontEndDelight.png)](themes/FrontEndDelight.conf)
## FunForrest
[![image](previews/FunForrest.png)](themes/FunForrest.conf)
## Galaxy
[![image](previews/Galaxy.png)](themes/Galaxy.conf)
## Github
[![image](previews/Github.png)](themes/Github.conf)
## Glacier
[![image](previews/Glacier.png)](themes/Glacier.conf)
## GoaBase
[![image](previews/GoaBase.png)](themes/GoaBase.conf)
## Grape
[![image](previews/Grape.png)](themes/Grape.conf)
## Grass
[![image](previews/Grass.png)](themes/Grass.conf)
## Hardcore
[![image](previews/Hardcore.png)](themes/Hardcore.conf)
## Harper
[![image](previews/Harper.png)](themes/Harper.conf)
## Highway
[![image](previews/Highway.png)](themes/Highway.conf)
## Hipster Green
[![image](previews/Hipster_Green.png)](themes/Hipster_Green.conf)
## Homebrew
[![image](previews/Homebrew.png)](themes/Homebrew.conf)
## Hurtado
[![image](previews/Hurtado.png)](themes/Hurtado.conf)
## Hybrid
[![image](previews/Hybrid.png)](themes/Hybrid.conf)
## IC Green PPL
[![image](previews/IC_Green_PPL.png)](themes/IC_Green_PPL.conf)
## IC Orange PPL
[![image](previews/IC_Orange_PPL.png)](themes/IC_Orange_PPL.conf)
## IR Black
[![image](previews/IR_Black.png)](themes/IR_Black.conf)
## Jackie Brown
[![image](previews/Jackie_Brown.png)](themes/Jackie_Brown.conf)
## Japanesque
[![image](previews/Japanesque.png)](themes/Japanesque.conf)
## Jellybeans
[![image](previews/Jellybeans.png)](themes/Jellybeans.conf)
## JetBrains Darcula
[![image](previews/JetBrains_Darcula.png)](themes/JetBrains_Darcula.conf)
## Kibble
[![image](previews/Kibble.png)](themes/Kibble.conf)
## Later This Evening
[![image](previews/Later_This_Evening.png)](themes/Later_This_Evening.conf)
## Lavandula
[![image](previews/Lavandula.png)](themes/Lavandula.conf)
## LiquidCarbon
[![image](previews/LiquidCarbon.png)](themes/LiquidCarbon.conf)
## LiquidCarbonTransparent
[![image](previews/LiquidCarbonTransparent.png)](themes/LiquidCarbonTransparent.conf)
## LiquidCarbonTransparentInverse
[![image](previews/LiquidCarbonTransparentInverse.png)](themes/LiquidCarbonTransparentInverse.conf)
## Man Page
[![image](previews/Man_Page.png)](themes/Man_Page.conf)
## Material
[![image](previews/Material.png)](themes/Material.conf)
## MaterialDark
[![image](previews/MaterialDark.png)](themes/MaterialDark.conf)
## Mathias
[![image](previews/Mathias.png)](themes/Mathias.conf)
## Medallion
[![image](previews/Medallion.png)](themes/Medallion.conf)
## Misterioso
[![image](previews/Misterioso.png)](themes/Misterioso.conf)
## Molokai
[![image](previews/Molokai.png)](themes/Molokai.conf)
## MonaLisa
[![image](previews/MonaLisa.png)](themes/MonaLisa.conf)
## Monokai Pro (Filter Spectrum)
[![image](previews/Monokai_Pro_(Filter_Spectrum).png)](themes/Monokai_Pro_(Filter_Spectrum).conf)
## Monokai Soda
[![image](previews/Monokai_Soda.png)](themes/Monokai_Soda.conf)
## N0tch2k
[![image](previews/N0tch2k.png)](themes/N0tch2k.conf)
## Neopolitan
[![image](previews/Neopolitan.png)](themes/Neopolitan.conf)
## Neutron
[![image](previews/Neutron.png)](themes/Neutron.conf)
## NightLion v1
[![image](previews/NightLion_v1.png)](themes/NightLion_v1.conf)
## NightLion v2
[![image](previews/NightLion_v2.png)](themes/NightLion_v2.conf)
## Nova
[![image](previews/Nova.png)](themes/Nova.conf)
## Novel
[![image](previews/Novel.png)](themes/Novel.conf)
## Obsidian
[![image](previews/Obsidian.png)](themes/Obsidian.conf)
## Ocean
[![image](previews/Ocean.png)](themes/Ocean.conf)
## OceanicMaterial
[![image](previews/OceanicMaterial.png)](themes/OceanicMaterial.conf)
## Ollie
[![image](previews/Ollie.png)](themes/Ollie.conf)
## Parasio Dark
[![image](previews/Parasio_Dark.png)](themes/Parasio_Dark.conf)
## PaulMillr
[![image](previews/PaulMillr.png)](themes/PaulMillr.conf)
## PencilDark
[![image](previews/PencilDark.png)](themes/PencilDark.conf)
## PencilLight
[![image](previews/PencilLight.png)](themes/PencilLight.conf)
## Piatto Light
[![image](previews/Piatto_Light.png)](themes/Piatto_Light.conf)
## Pnevma
[![image](previews/Pnevma.png)](themes/Pnevma.conf)
## Pro
[![image](previews/Pro.png)](themes/Pro.conf)
## Red Alert
[![image](previews/Red_Alert.png)](themes/Red_Alert.conf)
## Red Sands
[![image](previews/Red_Sands.png)](themes/Red_Sands.conf)
## Relaxed Afterglow
[![image](previews/Relaxed_Afterglow.png)](themes/Relaxed_Afterglow.conf)
## Renault Style
[![image](previews/Renault_Style.png)](themes/Renault_Style.conf)
## Renault Style Light
[![image](previews/Renault_Style_Light.png)](themes/Renault_Style_Light.conf)
## Rippedcasts
[![image](previews/Rippedcasts.png)](themes/Rippedcasts.conf)
## Royal
[![image](previews/Royal.png)](themes/Royal.conf)
## SeaShells
[![image](previews/SeaShells.png)](themes/SeaShells.conf)
## Seafoam Pastel
[![image](previews/Seafoam_Pastel.png)](themes/Seafoam_Pastel.conf)
## Seti
[![image](previews/Seti.png)](themes/Seti.conf)
## Shaman
[![image](previews/Shaman.png)](themes/Shaman.conf)
## Slate
[![image](previews/Slate.png)](themes/Slate.conf)
## Smyck
[![image](previews/Smyck.png)](themes/Smyck.conf)
## SoftServer
[![image](previews/SoftServer.png)](themes/SoftServer.conf)
## Solarized Darcula
[![image](previews/Solarized_Darcula.png)](themes/Solarized_Darcula.conf)
## Solarized Dark
[![image](previews/Solarized_Dark.png)](themes/Solarized_Dark.conf)
## Solarized Dark - Patched
[![image](previews/Solarized_Dark_-_Patched.png)](themes/Solarized_Dark_-_Patched.conf)
## Solarized Dark Higher Contrast
[![image](previews/Solarized_Dark_Higher_Contrast.png)](themes/Solarized_Dark_Higher_Contrast.conf)
## Solarized Light
[![image](previews/Solarized_Light.png)](themes/Solarized_Light.conf)
## Source Code X
[![image](previews/Source_Code_X.png)](themes/Source_Code_X.conf)
## SpaceGray
[![image](previews/SpaceGray.png)](themes/SpaceGray.conf)
## SpaceGray Eighties
[![image](previews/SpaceGray_Eighties.png)](themes/SpaceGray_Eighties.conf)
## SpaceGray Eighties Dull
[![image](previews/SpaceGray_Eighties_Dull.png)](themes/SpaceGray_Eighties_Dull.conf)
## Spacedust
[![image](previews/Spacedust.png)](themes/Spacedust.conf)
## Spiderman
[![image](previews/Spiderman.png)](themes/Spiderman.conf)
## Spring
[![image](previews/Spring.png)](themes/Spring.conf)
## Square
[![image](previews/Square.png)](themes/Square.conf)
## Sundried
[![image](previews/Sundried.png)](themes/Sundried.conf)
## Symfonic
[![image](previews/Symfonic.png)](themes/Symfonic.conf)
## Tango Dark
[![image](previews/Tango_Dark.png)](themes/Tango_Dark.conf)
## Tango Light
[![image](previews/Tango_Light.png)](themes/Tango_Light.conf)
## Teerb
[![image](previews/Teerb.png)](themes/Teerb.conf)
## Thayer Bright
[![image](previews/Thayer_Bright.png)](themes/Thayer_Bright.conf)
## The Hulk
[![image](previews/The_Hulk.png)](themes/The_Hulk.conf)
## Tomorrow
[![image](previews/Tomorrow.png)](themes/Tomorrow.conf)
## Tomorrow Night
[![image](previews/Tomorrow_Night.png)](themes/Tomorrow_Night.conf)
## Tomorrow Night Blue
[![image](previews/Tomorrow_Night_Blue.png)](themes/Tomorrow_Night_Blue.conf)
## Tomorrow Night Bright
[![image](previews/Tomorrow_Night_Bright.png)](themes/Tomorrow_Night_Bright.conf)
## Tomorrow Night Eighties
[![image](previews/Tomorrow_Night_Eighties.png)](themes/Tomorrow_Night_Eighties.conf)
## ToyChest
[![image](previews/ToyChest.png)](themes/ToyChest.conf)
## Treehouse
[![image](previews/Treehouse.png)](themes/Treehouse.conf)
## Twilight
[![image](previews/Twilight.png)](themes/Twilight.conf)
## Ubuntu
[![image](previews/Ubuntu.png)](themes/Ubuntu.conf)
## Urple
[![image](previews/Urple.png)](themes/Urple.conf)
## Vaughn
[![image](previews/Vaughn.png)](themes/Vaughn.conf)
## VibrantInk
[![image](previews/VibrantInk.png)](themes/VibrantInk.conf)
## WarmNeon
[![image](previews/WarmNeon.png)](themes/WarmNeon.conf)
## Wez
[![image](previews/Wez.png)](themes/Wez.conf)
## WildCherry
[![image](previews/WildCherry.png)](themes/WildCherry.conf)
## Wombat
[![image](previews/Wombat.png)](themes/Wombat.conf)
## Wryan
[![image](previews/Wryan.png)](themes/Wryan.conf)
## Zenburn
[![image](previews/Zenburn.png)](themes/Zenburn.conf)
## ayu
[![image](previews/ayu.png)](themes/ayu.conf)
## ayu light
[![image](previews/ayu_light.png)](themes/ayu_light.conf)
## gruvbox light
[![image](previews/gruvbox_light.png)](themes/gruvbox_light.conf)
## gruvbox dark
[![image](previews/gruvbox_dark.png)](themes/gruvbox_dark.conf)
## idleToes
[![image](previews/idleToes.png)](themes/idleToes.conf)
