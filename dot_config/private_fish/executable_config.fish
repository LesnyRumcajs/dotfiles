if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx EDITOR /usr/bin/nvim
set -gx VISUAL /usr/bin/nvim
set -gx PATH "$HOME/bin" $PATH
set -gx PATH "$HOME/.cargo/bin" $PATH
set -gx PATH "$HOME/.local/bin" $PATH
set -gx PATH "$HOME/go/bin" $PATH
set -gx PATH "$HOME/.foundry/bin" $PATH
set -gx PATH "$HOME/.npm/lib/bin" $PATH
set -gx PATH "$HOME/.node/bin:$PATH"
set -gx NODE_PATH "$HOME/.node/lib/node_modules:$NODE_PATH"

alias v="nvim"

zoxide init fish | source
starship init fish | source
