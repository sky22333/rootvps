
#  VPS工具脚本


###  修改root密码：

```
wget -N --no-check-certificate https://github.com/taotao1058/rootvps/raw/main/rootvps && bash rootvps
```


###  修改root密码简洁版：

```
wget -N --no-check-certificate https://github.com/taotao1058/rootvps/raw/main/root && bash root
```

---

### 新系统优化脚本：

```
sudo wget -N --no-check-certificate https://github.com/taotao1058/rootvps/raw/main/xin && sudo bash xin
```


---

#  VPS一键DD 重装系统

[DD脚本来自萌咖大佬](https://github.com/MoeClub/Note)


###  请用root用户执行

####  自定义密码：
```
wget -N --no-check-certificate https://github.com/taotao1058/rootvps/raw/main/install.sh && chmod +x install.sh && sudo ./install.sh -u focal -p "自定义密码"
```

####  默认密码：
```
wget -N --no-check-certificate https://github.com/taotao1058/rootvps/raw/main/install.sh && chmod +x install.sh && sudo ./install.sh -u focal
```

  默认登录信息
  
  用户名：```root```
  
  端口：```22```
  
  root密码：```MoeClub.org```
  
---
 重装完系统安装必备软件

Debian/Ubuntu 命令：
 

```
apt update


apt install curl wget git zip tar iptables lsof -y
```


CentOS 命令：

```
yum update -y


yum install curl wget git zip tar iptables lsof -y
``` 


  如果DD报错请手动安装所需环境尝试：
```
Debian/Ubuntu 命令：

apt-get install -y xz-utils openssl gawk file

 
CentOS 命令：

yum install -y xz openssl gawk file
```

---

###  可以在脚本结尾传递参数来定制操作系统的安装

| 参数               | 描述                                                  | 示例                              |
|-------------------|-----------------------------------------------------|---------------------------------|
| `-v`       | 指定操作系统的架构版本（如 `32` 或 `64`）                     | `-v 64`                          |
| `-d`    | 安装Debian系统，后接发行版名称（如 `buster`）              | `-d buster`                      |
| `-u`    | 安装Ubuntu系统，后接发行版名称（如 `focal`）               | `-u focal`                       |
| `-c`    | 安装CentOS系统，后接版本号（如 `7`）                       | `-c 7`                           |
| `-dd`    | 使用指定的镜像URL进行安装                                 | `-dd http://example.com/image.iso` |
| `-p`  | 设置root用户的密码                                     | `-p "密码"`                |
| `-i`  | 选择网络接口                                           | `-i eth0`                        |
| `--ip-addr`         | 设置静态IP地址                                         | `--ip-addr 192.168.0.100`        |
| `--ip-mask`         | 设置网络掩码                                          | `--ip-mask 255.255.255.0`        |
| `--ip-gate`         | 设置默认网关                                          | `--ip-gate 192.168.0.1`          |
| `--ip-dns`          | 设置DNS服务器地址                                      | `--ip-dns 8.8.8.8`               |
| `-apt` `--mirror`  | 指定软件源镜像地址                               | `--mirror “http://mirror.example.com”` |
| `-rdp`              | 设置Windows远程桌面端口（仅在使用Windows镜像时有效）       | `-rdp 3389`                      |
| `-port`             | 设置SSH端口                                           | `-port 22`                       |
| `--noipv6`          | 禁用IPv6                                               | `--noipv6`                       |
| `-firmware`         | 包含固件支持（仅Debian有效）                             | `-firmware`                      |
| `-cmd`              | 设置在安装后执行的命令或脚本                              | `-cmd 'echo hello'`              |





---


---
