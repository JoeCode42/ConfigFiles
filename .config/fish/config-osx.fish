# osx specific configuration

set -gx PATH /opt/homebrew/bin $PATH
set -gx PATH /usr/local/bin $PATH

if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end
