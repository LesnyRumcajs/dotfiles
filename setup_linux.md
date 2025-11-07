### Setup
A part of my personal setup. It contains packages specific to my workflow and hardware. It's aimed at Rust development on Linux Fedora 42.

### Dotfiles
Manually install `chezmoi`, then populate the `chezmoi.toml`. Then: `chezmoi init --apply --verbose git@github.com:LesnyRumcajs/dotfiles.git` or just install & init `sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply LesnyRumcajs`. More up-to-date instructions are at the [chezmoi website](https://www.chezmoi.io/).

### Packages (Fedora)
```shell 
sudo dnf-3 config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo

sudo dnf group install -y c-development development-tools
sudo dnf install -y \
  alacritty \
  aria2 \
  bat \
  bottom \
  btop \
  clang-devel \
  cmake \
  containerd.io \
  docker-ce-cli \
  docker-compose-plugin \
  fd-find \
  fish \
  git-delta \
  golang \
  hexyl \
  htop \
  hwloc-devel \
  lsd \
  luarocks \
  meld \
  mc \
  neovim \
  nodejs \
  perl-FindBin \
  ripgrep \
  rocm-opencl-devel \
  ruby \
  ruby-devel \
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

### tmux
Plugins manager:
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### fish
[oh-my-fish](https://github.com/oh-my-fish/oh-my-fish): `curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish`

Run this installation [script](https://github.com/LesnyRumcajs/dotfiles/blob/master/install_fish_plugins.fish).

### Fonts
Need to install nerd fonts from [here](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/CodeNewRoman).

### Rust

install rust
```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

cargo binaries
```
cargo install --locked cargo-watch cargo-edit cargo-audit cargo-generate sd eza
cargo install --locked --features clipboard broot
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
