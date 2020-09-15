{ lib, writeText, writeScriptBin, fzf, zsh }:
let
  zshrc = writeText "zshrc"
    (lib.concatStringsSep "\n"
    [ (builtins.readFile ./zshrc)
    ]
    );
in writeScriptBin "zshrc"
  ''
    echo ". ${zshrc}"
  ''
