set -g fish_greeting ""

set -gx TERM xterm-256color

##### THEME

set -g theme_color_scheme terminal_dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

##### ALIASES #####

alias ls "ls -p -G"
alias lsa "ls -A"
alias ll "ls -l"
alias lla "ll -A"
alias c clear
alias g git

alias vim nvim
set -gx EDITOR nvim

if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end

##### PATHS #####

set -gx EDITOR nvim
set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# tbc

##### OS-SPECIFIC CONFIGS #####

switch (uname)
  case Darwin
    source (dirname (status --current-filename))/config-osx.fish
  case Linux
    source (dirname (status --current-filename))/config-linux.fish
  case '*'
    source (dirname (status --current-filename))/config-windows.fish
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Generated for envman. Do not edit.
test -s "$HOME/.config/envman/load.fish"; and source "$HOME/.config/envman/load.fish"

