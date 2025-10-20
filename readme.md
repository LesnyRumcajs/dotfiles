My personal dotfiles. Feel free to take a look (copy at your own risk).

I manage those with [chezmoi](https://github.com/twpayne/chezmoi).

The templates require a config file in `$HOME/.config/chezmoi/chezmoi.toml`
```toml
[data]
full_name = "<full name>"
email     = "<email address>"
pubkey    = "<path to the public SSH key>"

[merge]
command = "nvim"
args = ["-d", "{{ .Destination }}", "{{ .Source }}", "{{ .Target }}"]

[diff]
command = "delta"
args = ["--color-only", "--features", "line-numbers", "--line-numbers", "--paging", "never"]
```

Other setup steps can be found [here](setup_linux.md).
