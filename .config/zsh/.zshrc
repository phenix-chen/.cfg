if [[ $(uname -a) == *"WSL"* ]]; then
    source ~/.config/zsh/wsl.zsh
fi
source ~/.config/zsh/env.zsh
source ~/.config/zsh/alias.zsh
source ~/.config/zsh/app.zsh
source ~/.config/zsh/functions.zsh
source ~/.config/zsh/plugins.zsh  # plugins data dir: ~/.antigen
[[ ! -f ~/.config/zsh/local.zsh ]] || source ~/.config/zsh/local.zsh
export NNN_PLUG='g:!git status'
# export NNN_PLUG='o:fzopen;m:nmount;x:!chmod +x $nnn'

source ~/.config/zsh/zinit.zsh

keep_current_path() {
  printf "\e]9;9;%s\e\\" "$(wslpath -w "$PWD")"
}
precmd_functions+=(keep_current_path)
