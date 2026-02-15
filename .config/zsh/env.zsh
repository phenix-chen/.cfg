export EDITOR='nvim'

# pyenv
# https://stackoverflow.com/questions/51863225/pyenv-python-command-not-found
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/shims:$PATH"
# export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="/Users/chen/.pixi/bin:$PATH"

# zsh
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export HISTFILE="$XDG_DATA_HOME"/zsh/history
export PATH="$HOME/bin:$PATH"
# pip user base
# export PATH="$HOME/.local/:$PATH"

# Added by Antigravity
export PATH="/Users/chen/.antigravity/antigravity/bin:$PATH"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
# decktape
export CHROME_PATH="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

# rust
. "$HOME/.cargo/env"
