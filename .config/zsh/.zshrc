if [[ $(uname -a) == *"WSL"* ]]; then
    source ~/.config/zsh/wsl.zsh
fi

source ~/.config/zsh/env.zsh
source ~/.config/zsh/alias.zsh
source ~/.config/zsh/app.zsh
source ~/.config/zsh/functions.zsh
# source ~/.config/zsh/plugins.zsh  # plugins data dir: ~/.antigen
[[ ! -f ~/.config/zsh/local.zsh ]] || source ~/.config/zsh/local.zsh
source ~/.config/zsh/zinit.zsh

# [在同一目录中打开选项卡/窗格 | Microsoft Learn](https://learn.microsoft.com/zh-cn/windows/terminal/tutorials/new-tab-same-directory)
# 好像不起作用，待研究
keep_current_path() {
  printf "\e]9;9;%s\e\\" "$(wslpath -w "$PWD")"
}
precmd_functions+=(keep_current_path)
