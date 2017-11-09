function fe -d "open file in editor"
  set files (fzf-tmux --query $argv[1] --multi --select-1 --exit-0)
  if test -n $files
    if test -z $EDITOR
    else
    end
  end
end
