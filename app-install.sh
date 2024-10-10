
# install
sudo apt update
sudo apt install -y \
    git \
    neovim \
    zsh \
    gh \
    fzf \
    ripgrep  # https://github.com/BurntSushi/ripgrep

# install zoxide https://github.com/ajeetdsouza/zoxide
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

# install fd-find
sudo apt install -y \
    fd-find
if [ ! -d ~/.local/bin ]; then
    mkdir -p ~/.local/bin
fi
ln -s $(which fdfind) ~/.local/bin/fd

# install neovim version vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'