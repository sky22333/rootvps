
#  VPS工具脚本


###  修改root密码：


```
bash <(wget -qO- -o- https://github.com/sky22333/rootvps/raw/main/rootvps.sh)
```
###  修改root密码简洁版：


```
bash <(wget -qO- -o- https://github.com/sky22333/rootvps/raw/main/root.sh)
```
---

#  VPS一键DD 重装系统

[脚本原地址萌咖](https://github.com/MoeClub/Note)


###  请用root用户执行

####  自定义密码：
```
wget -N --no-check-certificate https://github.com/sky22333/rootvps/raw/main/install.sh && chmod +x install.sh && sudo ./install.sh -d 11 -p "自定义密码"
```

####  默认密码：
```
wget -N --no-check-certificate https://github.com/sky22333/rootvps/raw/main/install.sh && chmod +x install.sh && sudo ./install.sh -d 11
```

  默认debian 11系统
  
  登录信息
  
  用户名：```root```
  
  端口：```22```
  
  root密码：```MoeClub.org```
  
---
 重装完系统安装必备软件

Debian/Ubuntu 命令：
 

```
apt update


apt install curl wget git zip tar vim lsof -y
```


CentOS 命令：

```
yum update -y


yum install curl wget git zip tar vim lsof -y
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
| `-d`    | 安装Debian系统，后接发行版名称（如 `12`）              | `-d 12`                      |
| `-u`    | 安装Ubuntu系统，后接发行版名称（如 `20.04`）               | `-u 20.04`                       |
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
cd /root
```

```
wget --no-check-certificate -qO InstallNET.sh 'https://raw.githubusercontent.com/leitbogioro/Tools/master/Linux_reinstall/InstallNET.sh' && chmod a+x InstallNET.sh
```

#### 国内环境下载
```
wget --no-check-certificate -qO InstallNET.sh 'https://gitee.com/mb9e8j2/Tools/raw/master/Linux_reinstall/InstallNET.sh' && chmod a+x InstallNET.sh
```

### 运行
```
bash InstallNET.sh -debian 11
```

### 运行结尾传递参数

选择越新的系统越需要较高的配置

`-debian 7-12` Debian 7 及更高版本


`-kali Rolling/dev/experimental` Kali Rolling，开发和实验，推荐Kali Rolling

`-centos 7-9` CentOS 7 及更高版本

`-alpine 3.16-3.18/edge` Alpine Linux 3.16 及更高版本，轻量级系统，为了保持更新到最新版本，推荐edge

`-almalinux/alma 8/9`  AlmaLinux 8 及更高版本


`-ubuntu 20.04/22.04/24.04` 不稳定，可能失败


`-windows 10/11/2012/2016/2019/2022` 需4H4G以上，且不支持回退

`-pwd "密码"`   指定密码

### 默认信息

默认用户名

对于 Linux：`root`

对于 Windows：`Administrator`

默认密码

对于 Linux：`LeitboGi0ro`

对于 Windows：`Teddysun.com`

默认端口

对于Linux：`与之前的系统相同`

对于 Windows：`3389`


---



---
