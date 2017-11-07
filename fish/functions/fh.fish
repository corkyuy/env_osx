function fh -d "history"
  set cmd (history | fzf)
  commandline $cmd
end
