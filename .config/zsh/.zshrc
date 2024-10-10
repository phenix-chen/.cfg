if [[ $(uname -a) == *"WSL"* ]]; then
    source ~/.config/zsh/wsl.zsh
fi
source ~/.config/zsh/env.zsh
source ~/.config/zsh/alias.zsh
source ~/.config/zsh/app.zsh
source ~/.config/zsh/functions.zsh
# source ~/.config/zsh/plugins.zsh  # plugins data dir: ~/.antigen
[[ ! -f ~/.config/zsh/local.zsh ]] || source ~/.config/zsh/local.zsh
keep_current_path() {
  printf "\e]9;9;%s\e\\" "$(wslpath -w "$PWD")"
}
precmd_functions+=(keep_current_path)
export NNN_PLUG='g:!git status'
# export NNN_PLUG='o:fzopen;m:nmount;x:!chmod +x $nnn'

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk
#

zinit snippet OMZ::plugins/command-not-found
zinit snippet OMZ::plugins/conda
zinit snippet OMZ::plugins/pip
zinit snippet OMZ::plugins/fzf
zinit snippet OMZ::plugins/timer
zinit snippet OMZ::plugins/themes
zinit snippet OMZ::plugins/docker
zinit snippet OMZ::plugins/docker-compose
zinit snippet OMZ::plugins/vi-mode
zinit snippet OMZ::plugins/sudo
zinit load zsh-users/zsh-autosuggestions
zinit load zsh-users/zsh-completions
zinit load zsh-users/zsh-syntax-highlighting
zinit load dracula/zsh