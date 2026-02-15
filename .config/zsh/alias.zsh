# zsh
alias zshconfig="vim ~/.config/zsh/.zshrc"
alias sozsh="source ~/.config/zsh/.zshrc"

# vim
alias vimconfig="nv ~/.config/nvim/init.vim"
alias vim="nvim"
alias nv="nvim"
alias nvimdiff="nvim -d"

# usb drive
alias ejectusb="diskutil unmount /Volumes/CHEN"

alias ra="ranger"

# tmux
alias attach="tmux attach-session -t"
alias tls="tmux ls"
alias tmk="tmux kill-session -t"
alias tvi="tmuxp load ide"

# lazygit
alias lg=lazygit
# if test ccat; then
#     alias cat=ccat
# fi

alias dl=trash-put
alias start_work="open -g hammerspoon://develop_env"
alias stop_work="open -g hammerspoon://stop_work"

# cfg dotfiles [How to Store Dotfiles - A Bare Git Repository | Atlassian Git Tutorial](https://www.atlassian.com/git/tutorials/dotfiles)
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# 为了在vscode中快速启动本地conda venv
alias acv="source ~/miniconda3/bin/activate ./.venv"

alias claude="claude --allow-dangerously-skip-permissions"



alias cc="claude"
alias glm="ANTHROPIC_API_KEY='' \
ANTHROPIC_BASE_URL=https://api.z.ai/api/anthropic \
ANTHROPIC_AUTH_TOKEN=28e3a9483b6c4885ba87e73ecd5180db.8NoiDOZV0CAbgPnf \
ANTHROPIC_DEFAULT_SONNET_MODEL=glm-4.7 \
ANTHROPIC_DEFAULT_HAIKU_MODEL=glm-4.7 \
claude"

# config lazygit for dotfiles
alias config-lazy='GIT_DIR=$HOME/.cfg GIT_WORK_TREE=$HOME lazygit'
