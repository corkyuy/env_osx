# A record, from name to path, of the third-party packages
let
  versions = builtins.fromJSON (builtins.readFile ./versions.json);
  fetchGit =
    # fetchTarball version that is compatible between all the versions of
    # Nix
    { url, rev, name }@attrs:
    let
      inherit (builtins) fetchGit;
    in
      fetchGit attrs;
in
  builtins.mapAttrs (_: spec:
      fetchGit {
        url = spec.url;
        rev = spec.rev;
        name = spec.name;
      }
    ) versions
