# Dogview dwm rice

> Welcome to my new super smashy [dwm](https://dwm.suckless.org/) rice!

![DWM SCREENSCHOT](https://github.com/plastic-bottleneck/dwm-dogview-rice/blob/main/dwm-dogview.png)

---

## //How to install
### )( 1. If needed then chmod the install.sh file:
```
sudo chmod +x install.sh package_(distro).sh
```
#### $$ Or with doas:
```
doas chmod +x install.sh package_(distro).sh
```
### )( 2. Install packages
> Either use the install scripts for your distro or install them manually!
> The following packages are needed:
> - picom
> - xorg(-server)
> - feh
> - alacritty
> - (flameshot) additional if you want
> - (librewolf) also additional
> - (ranger) did I tell you that this is also additional?
> - sxhkd
> - SauceCodePro (font)
>
> SauceCodePro needs to be installed manually because some people dislike this font for some reason.
> Change the font you want inside the ~/src/dwm/config.def.h in the first few lines. After that remove the original config.h and recompile dwm with `make && [sudo/doas] make clean install`
#### $$ Automatic package installation:
> Supported Distros:
> - Gentoo
> - Arch
> - Debian (Ubuntu)
```
doas bash package_(distro).sh # replace (distro) with the distro you have without the '()'.
```
### )( 3. Now run the install.sh file:
> Now run the main install script which will compile dwm and dmenu and sets the rest like wallpapers etc. up! :)
```
./install.sh
```

## //Keybinds
| Keybind | What it does |
|---|---|
|super + w | start browser |
|super + @space | take screenshot |
| super + @enter | spawn terminal |
| super + q | kill programm |
| super + e | file manager |

> The rest of the keybinds are the default dwm binds which can be seen inside the config.def.h and config.h inside the dwm source directory.

---

> Made by Paul alias Plastic Bottleneck  
> GitHub: https://github.com/plastic-bottleneck  
> Check out my own Distro at 1.4Mb! https://github.com/plastic-bottleneck/plus-linux
