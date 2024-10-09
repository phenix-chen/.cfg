
# # iterm2 intergration
# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


# # Fzf
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# export FZF_DEFAULT_OPTS=''
# export FZF_DEFAULT_COMMAND='fd'
# export FZF_COMPLETION_TRIGGER='\'

# pyenv
# if command -v pyenv 1>/dev/null 2>&1; then
#     eval "$(pyenv init - --no-rehash)"
# #     # eval "$(pyenv init -)"
#     # eval "$(pyenv virtualenv-init -)"
# fi

# zoxide https://github.com/ajeetdsouza/zoxide#getting-started
eval "$(zoxide init zsh)"
export _ZO_ECHO=1

# nvm
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
