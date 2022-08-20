function _peco_change_directory
  if [ (count $argv) ]
    peco --layout=bottom-up --query "$argv "|perl -pe 's/([ ()])/\\\\$1/g'| sed "s/[\]//g" | read foo
  else
    peco --layout=bottom-up |perl -pe 's/([ ()])/\\\\$1/g'| sed "s/[\]//g" | read foo
  end
  if [ $foo ]
    builtin cd $foo
    commandline -r ''
    commandline -f repaint
  else
    commandline ''
  end
end

function peco_change_directory
  begin
    echo $HOME/.config
    find -L -maxdepth 1 -type d -name '*' ! -name '.*' -printf '%f\n' | perl -pe "s#^#$PWD/#"|grep -v \.git
    ls -ad /media/alex/Data/Nextcloud/Projects/*/ |grep -v \.git
    ls -ad /media/alex/Data/GoogleDrive/*/ |grep -v \.git
  end | sed -e 's/\/$//' | awk '!a[$0]++' | _peco_change_directory $argv
end
