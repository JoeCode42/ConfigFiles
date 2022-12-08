# OSX Fish Shell Setup

## Install Fish Shell

```
sudo add-apt-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish
```

## Install Utility Libraries

A nerdfont is needed to display all the icons and symbols used:

download font from -> https://www.nerdfonts.com/font-downloads
unzip font
sudo cp -r ~/Downloads/<FontDirectory> /usr/share/fonts/truetype/<FontDirectory>

On desktop PC -> go to console preferences and change the font 


Peco is used for quick directory switching and a better command history:
```
sudo apt install peco exa
```

A plugin manager used to install fish-plugins very easily:
```
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
```

## Install Fish Plugins With Fisher:

```
fisher install jethrokuan/z
fisher install IlanCosman/tide@v5
```

Go through the basic design configuration and afterwards modify the contents of the two bars:

```
set -u tide_right_prompt_items virtual_env
set -u tide_left_prompt_items os pwd git
```

## Copy Fish Config Files

You are now ready to go, simply copy the config files from the '.fish' folder into your local
config folder (typically at '~/.config/fish')

## Set fish as defauklt shell
On desktop pc ->
```
sudo chsh -s /usr/bin/fish 
```
On server for ssh logins-> (lead to vsc ssh crashes!!!)
edit /etc/passwd and change the shell of the user 


