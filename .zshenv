if [ "$(uname)" = "Darwin" ]; then
    export http_proxy="http://localhost:7890"
    export https_proxy="http://localhost:7890"
    export ZDOTDIR=/Users/$(whoami)/.config/zsh
elif [ "$(uname)" = "Linux" ]; then
    export hostip=$(nslookup chen.local | grep -oP '(?<=Address:\ ).*' | sed '2q;d')
    export https_proxy="http://${hostip}:7890"
    export http_proxy="http://${hostip}:7890"
    export ZDOTDIR=/Home/$(whoami)/.config/zsh
else
    echo "Unknown operating system."
fi
