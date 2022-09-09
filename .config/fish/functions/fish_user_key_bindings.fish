function fish_user_key_bindings
  # peco
  bind \cr peco_select_history # Ctrl + R
  bind \cf peco_change_directory # Ctrl + F

  # vim-like
  bind \cl forward-char

  # prevent iterm2 from closing when typing Ctrl+D (EOF)
  bind \cd delete-char
end
