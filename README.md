
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


---

#  VPS一键DD 重装系统

[脚本原地址萌咖](https://github.com/MoeClub/Note)


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

###  脚本结尾传递参数

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

# 另一个版本DD脚本

[脚本原地址](https://github.com/leitbogioro/Tools)

#### 先下载
```
wget --no-check-certificate -qO InstallNET.sh 'https://raw.githubusercontent.com/leitbogioro/Tools/master/Linux_reinstall/InstallNET.sh' && chmod a+x InstallNET.sh
```

#### 国内环境下载
```
wget --no-check-certificate -qO InstallNET.sh 'https://gitee.com/mb9e8j2/Tools/raw/master/Linux_reinstall/InstallNET.sh' && chmod a+x InstallNET.sh
```

### 运行
```
bash InstallNET.sh -ubuntu 20.04 -pwd "qwe78907890"
```

### 运行结尾传递参数

参数详细说明

`-debian 7-12`：Debian 7 及更高版本


`-kali Rolling/dev/experimental`：Kali Rolling，开发和实验，“Kali Rolling”显然是最推荐的。


`-centos 7 或 8`：CentOS 7 及更高版本


`-almalinux/alma 8/9` : AlmaLinux 8 及更高版本


`-ubuntu 20.04/22.04/24.04` 不稳定，可能失联


`-windows 10/11/2012/2016/2019/2022`

### 默认信息

默认用户名

对于 Linux：`root`

对于 Windows：`Administrator`

默认密码

对于 Linux：`LeitboGi0ro`

对于 Windows：`Teddysun.com`

默认端口

对于Linux：`与之前通过终端连接的系统相同`

对于 Windows：`3389`


---



---
