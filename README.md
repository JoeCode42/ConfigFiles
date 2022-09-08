# ConfigFiles
My personal config files for Linux type environments.

# MacBook Setup

## Install prerequesites

```
brew install peco exa
```

Install the shell & plugin manager

```
brew install fish fisher
```

## Install nerdfont

```
brew tap homebrew/cask-fonts && brew install --cask font-meslo-lg-nerd-font
```

Open the terminal and select the font under Terminal -> Preferences -> Profiles

## Install tide by using fisher:

```
fisher install IlanCosman/tide@v5
```

Go through the basic design configuration and afterwards I modified the contents of the two bars:

```
set -u tide_right_prompt_items virtual_env
set -u tide_left_prompt_items os pwd git
```
## Install z plugin with fisher

```
fisher install jethrokuan/z
```

## Copy configs from repo

