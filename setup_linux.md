### Setup
A part of my personal setup. It contains packages specific to my workflow and hardware.

### Dotfiles
Manually install `chezmoi`, then populate the `chezmoi.toml`. Then: `chezmoi init --apply --verbose git@github.com:LesnyRumcajs/dotfiles.git` or just install & init `sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply LesnyRumcajs`. More up-to-date instructions are at the [chezmoi website](https://www.chezmoi.io/).

### Packages (Fedora)
```shell 
sudo dnf-3 config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo

sudo dnf group install -y c-development development-tools
sudo dnf install -y \
  alacritty \
  bat \
  bottom \
  clang-devel \
  cmake \
  containerd.io \
  docker-ce-cli \
  docker-compose-plugin \
  fd-find \
  fish \
  golang \
  hexyl \
  htop \
  lsd \
  meld \
  mc \
  neovim \
  nodejs \
  perl-FindBin \
  ripgrep \
  ruby \
  starship \
  tealdeer \
  tmux \
  util-linux-user \
  wget \
  zoxide
```

### Make fish the default shell
```
chsh -s /usr/bin/fish
```

### Nvidia drivers (Fedora)
```
sudo dnf install -y akmod-nvidia xorg-x11-drv-nvidia-cuda
```

### tmux
Plugins manager:
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### fish
[oh-my-fish](https://github.com/oh-my-fish/oh-my-fish): `curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish`
Plugins:
- git aliases: `omf install https://github.com/jhillyerd/plugin-git`
- bang bang (i.e. `sudo !!`): `omf install bang-bang`

### Fonts
Need to install nerd fonts from [here](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/CodeNewRoman).

### Rust

install rust
```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

cargo binaries
```
cargo install cargo-watch cargo-edit cargo-audit cargo-generate sd
```

wasm-pack
```
curl https://rustwasm.github.io/wasm-pack/installer/init.sh -sSf | sh
```

# Troubleshooting

Verify that that the setup supports all fancy colours (otherwise you might want to tinker with the tmux settings)
```bash
for i in {0..255}; do
    printf "\x1b[38;5;${i}mcolour${i}\x1b[0m\n"
done
```
