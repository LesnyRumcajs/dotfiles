### Setup
A part of my personal setup. It contains packages specific to my workflow and hardware.

### Dotfiles
Manually install `chezmoi`, then populate the `chezmoi.toml`. Then: `$ chezmoi init --apply --verbose https://github.com/LesnyRumcajs/dotfiles.git` or just install & init ` sh -c "$(curl -fsLS https://chezmoi.io/get)" -- init --apply LesnyRumcajs`

### Packages (Fedora)
```shell 
sudo dnf copr enable atim/bottom -y
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo

sudo dnf group install -y "C Development Tools and Libraries" "Development Tools"
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
  htop \
  lsd \
  mc \
  neovim \
  nodejs \
  ocl-icd-devel \
  perl-FindBin \
  ripgrep \
  ruby \
  sd \
  tealdeer \
  tmux \
  util-linux-user \
  wget \
  zoxide
```

### Nvidia drivers (Fedora)
```
sudo dnf install -y akmod-nvidia xorg-x11-drv-nvidia-cuda
```

### Git
```
gpg --full-generate-key
gpg --list-secret-keys --keyid-format=long
gpg --armor --export XXX

... then import in Github
```

### tmux
Plugins manager:
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### neovim
Install `Plug`
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
launch `nvim` and execute `:PlugInstall` to install the dependencies.

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
cargo install cargo-watch cargo-edit cargo-audit cargo-generate
```

wasm-pack
```
curl https://rustwasm.github.io/wasm-pack/installer/init.sh -sSf | sh
```
