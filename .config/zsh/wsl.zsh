# envs
export WINHOME="/mnt/c/Users/c2521"

# alias
alias open=explorer.exe
alias cdwin="cd $WINHOME"

# proxy
export hostip=$(nslookup chen.local |grep -oP '(?<=Address:\ ).*' | sed '2q;d')
export https_proxy="http://${hostip}:7890"
export http_proxy="http://${hostip}:7890"

# conda cuda pytorch
export LD_LIBRARY_PATH=/usr/lib/wsl/lib:$LD_LIBRARY_PATH