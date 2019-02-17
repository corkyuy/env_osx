# NIX configuration

# Install

```
$ nix-env -f default.nix -i --remove-all
```


# List generations

```
$ nix-env --list-generations
```



# List generations

```
$ nix-env --rollback
```

# Remove old configurations

```
$ nix-env --delete-generations [3 4 9 | old | 30d]
```
