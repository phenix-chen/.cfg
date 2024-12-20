# https://zdharma-continuum.github.io/zinit/wiki/INTRODUCTION/
# https://github.com/zdharma-continuum/zinit

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

# load oh-my-zsh plugins --find plugins in https://github.com/ohmyzsh/ohmyzsh/tree/master/lib
zinit snippet OMZ::plugins/command-not-found
zinit snippet OMZ::plugins/conda
zinit snippet OMZ::plugins/pip
zinit snippet OMZ::plugins/fzf
zinit snippet OMZ::plugins/timer
zinit snippet OMZ::plugins/themes
# zinit snippet OMZ::plugins/docker
# zinit snippet OMZ::plugins/docker-compose
# zinit snippet OMZ::plugins/vi-mode
zinit snippet OMZ::plugins/sudo

# load oh-my-zsh library --find libraries in https://github.com/ohmyzsh/ohmyzsh/tree/master/lib
zinit snippet OMZL::theme-and-appearance.zsh
zinit snippet OMZL::clipboard.zsh
zinit snippet OMZL::history.zsh

# load plugins or theme from github
zinit load zsh-users/zsh-autosuggestions
zinit load zsh-users/zsh-completions
zinit load zsh-users/zsh-syntax-highlighting
zinit load dracula/zsh
