
# install
sudo apt update
sudo apt install -y \
    git \
    neovim \
    zsh \
    gh \
    fzf \
    fd-find


# install neovim version vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'