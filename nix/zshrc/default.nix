{ lib, writeText, writeScriptBin, fzf, zsh }:
let
  zshrc = writeText "zshrc"
    (lib.concatStringsSep "\n"
    [ (builtins.readFile ./zshrc)
      ''
      source ${fzf}/share/fzf/completion.bash
      source ${fzf}/share/fzf/key-bindings.bash
      ''
    ]
    );
in writeScriptBin "zshrc"
  ''
    echo ". ${zshrc}"
  ''
