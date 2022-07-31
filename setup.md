### Setup
A part of my personal setup. It contains packages specific to my workflow and hardware.

### Dotfiles
Manually install `chezmoi`, then populate the `chezmoi.toml`. Then: `$ chezmoi init --apply --verbose https://github.com/LesnyRumcajs/dotfiles.git`

### Packages (Fedora)
```
sudo dnf copr enable atim/bottom -y
sudo dnf group install -y "C Development Tools and Libraries" "Development Tools"
sudo dnf install -y \
  alacritty \
  bat \
  bottom \
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
  ripgrep \
  ruby \
  rust-analyzer \
  sd \
  tealdeer \
  tmux \
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

### fish
[oh-my-fish](https://github.com/oh-my-fish/oh-my-fish): `curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish`
Plugins:
- git aliases: `omf install https://github.com/jhillyerd/plugin-git`
- bang bang (i.e. `sudo !!`): `omf install bang-bang`
