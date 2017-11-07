function fd -d "change directory"
  set dir (find * -maxdepth 0 -type d -print 2> /dev/null | fzf-tmux)
  cd $dir
end
