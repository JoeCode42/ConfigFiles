set fish_greeting $argv
set -g fish_prompt_pwd_dir_length 1

command -qv nvim && alias vim nvim

if type -q exa
  alias ll "exa -l -g --icons"
else
  alias ll "ls"
end

set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH
set -gx PATH ~/.npm-global/bin $PATH

alias lla "ll -a"
alias c "clear"
alias g "git"

if status is-interactive 
    if not set -q TMUX
      tmux attach -t base; or tmux new -s base
    end
end
fish_user_key_bindings
