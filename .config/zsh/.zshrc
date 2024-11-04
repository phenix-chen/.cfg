[[ ! -f ~/.config/zsh/local.zsh ]] || source ~/.config/zsh/local.zsh
if [[ $(uname -a) == *"WSL"* ]]; then
  source ~/.config/zsh/wsl.zsh
fi

source ~/.config/zsh/env.zsh
source ~/.config/zsh/alias.zsh
source ~/.config/zsh/app.zsh
source ~/.config/zsh/functions.zsh
# source ~/.config/zsh/plugins.zsh  # plugins data dir: ~/.antigen
source ~/.config/zsh/zinit.zsh
