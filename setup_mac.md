# Dump of installation steps for MacOS

## Install `brew`

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Install key software

Refer to the [list](./brew_packages.txt).

```bash
chsh -s $(which fish)
```

## Install NodeJS

`fnm` is already installed via `brew`.

```bash
fnm env --use-on-cd --shell fish | source > ~/.config/fish/conf.d/fnm.fish
fnm completions --shell fish | source > ~/.config/fish/completions/fnm.fish
fnm i <version>
```
