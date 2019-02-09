with { fetch = import ./nix/fetch.nix; };
let

  # The (pinned) Nixpkgs where the original packages are sourced from
  pkgs = import fetch.nixpkgs {};

  # The list of packages to be installed
  homies = with pkgs;
    [
      # Customized packages
      bashrc
      git
      tmux
      vim

      pkgs.cabal-install
      pkgs.cabal2nix
      pkgs.cacert
      pkgs.curl
      pkgs.fzf
      pkgs.ghc
      pkgs.gnupg
#      pkgs.htop
      pkgs.jq
      pkgs.less
      pkgs.nix
      pkgs.nix-prefetch-git
      pkgs.pass
      pkgs.tree
      pkgs.xclip
    ];

  ## Some cunstomizations

  # A custom '.bashrc' (see bashrc/default.nix for details)
  bashrc = pkgs.callPackage ./bashrc {};

  # Git with config baked in
  git = import ./git (
    { inherit (pkgs) makeWrapper symlinkJoin;
      git = pkgs.git;
    });

  # Tmux with a custom tmux.conf baked in
  tmux = import ./tmux (with pkgs;
    { inherit
        makeWrapper
        symlinkJoin
        writeText
        ;
      tmux = pkgs.tmux;
    });

  # Vim with a custom vimrc and set of packages
  vim = import ./vim
    { inherit (pkgs)
        haskellPackages
        makeWrapper
        symlinkJoin
        vimPlugins
        vimUtils
        vim_configurable;
      inherit
        git
        tmux;
    };

in
  if pkgs.lib.inNixShell
  then pkgs.mkshell
    { buildinputs = homies;
      shellHook = ''
        $(bashrc)
        '';
    }
  else homies