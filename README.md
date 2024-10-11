
## 配置代理

nslookup 后的名称可能不一样，要注意，确保最后返回的结果正确
```
sudo apt update
sudo apt install bind9-dnsutils -y
export hostip=$(nslookup chen.local |grep -oP '(?<=Address:\ ).*' | sed '2q;d')
export https_proxy="http://${hostip}:7890"
export http_proxy="http://${hostip}:7890"
echo  $https_proxy
```

## 安装程序

```
curl -Lks https://raw.githubusercontent.com/phenix-chen/.cfg/refs/heads/master/app-install.sh | /bin/bash
```

## 安装配置
```
curl -Lks https://raw.githubusercontent.com/phenix-chen/.cfg/refs/heads/master/cfg-install | /bin/bash
```

## Neovim 安装插件
open neovim, and run command: :PlugInstall
