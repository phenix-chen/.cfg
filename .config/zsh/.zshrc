# Amazon Q pre block. Keep at the top of this file.
# [[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"

[[ ! -f ~/.config/zsh/local.zsh ]] || source ~/.config/zsh/local.zsh
if [[ $(uname -a) == *"WSL"* ]]; then
  source ~/.config/zsh/wsl.zsh
fi

[[ ! -d ~/miniconda3 ]] || source ~/.config/zsh/conda.zsh
source ~/.config/zsh/env.zsh
source ~/.config/zsh/alias.zsh
source ~/.config/zsh/app.zsh
source ~/.config/zsh/functions.zsh
# source ~/.config/zsh/plugins.zsh  # plugins data dir: ~/.antigen
source ~/.config/zsh/zinit.zsh
source ~/.config/zsh/autorun.zsh

# Amazon Q post block. Keep at the bottom of this file.
# [[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
#

# pnpm
export PNPM_HOME="/Users/chen/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

. "$HOME/.local/share/../bin/env"

# opencode
export PATH=/Users/chen/.opencode/bin:$PATH

# bun completions
[ -s "/Users/chen/.bun/_bun" ] && source "/Users/chen/.bun/_bun"
