
#  VPS开启root用户登录

###  修改SSH端口和root密码

###  一键修改：

```
wget -N --no-check-certificate https://github.com/taotao1058/rootvps/raw/main/rootvps && bash rootvps
```

---

###  简洁版：

```
wget -N --no-check-certificate https://github.com/taotao1058/rootvps/raw/main/root && bash root
```

### 新系统优化脚本：

```
sudo wget -N --no-check-certificate https://github.com/taotao1058/rootvps/raw/main/xin && sudo bash xin
```


---

##  一键DD系统：

[DD脚本来自萌咖大佬](https://github.com/MoeClub/Note)

```
wget -N --no-check-certificate https://github.com/taotao1058/rootvps/raw/main/install.sh && chmod +x install.sh && sudo ./install.sh -u
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
| `-p`  | 设置root用户的密码                                     | `-p yourpassword`                |
| `-i`  | 选择网络接口                                           | `-i eth0`                        |
| `--ip-addr`         | 设置静态IP地址                                         | `--ip-addr 192.168.0.100`        |
| `--ip-mask`         | 设置网络掩码                                          | `--ip-mask 255.255.255.0`        |
| `--ip-gate`         | 设置默认网关                                          | `--ip-gate 192.168.0.1`          |
| `--ip-dns`          | 设置DNS服务器地址                                      | `--ip-dns 8.8.8.8`               |
| `-apt` `-yum`  | 指定软件源镜像地址                               | `--apt http://mirror.example.com` |
| `-rdp`              | 设置Windows远程桌面端口（仅在使用Windows镜像时有效）       | `-rdp 3389`                      |
| `-port`             | 设置SSH端口                                           | `-port 22`                       |
| `--noipv6`          | 禁用IPv6                                               | `--noipv6`                       |
| `-firmware`         | 包含固件支持（仅Debian有效）                             | `-firmware`                      |
| `-cmd`              | 设置在安装后执行的命令或脚本                              | `-cmd 'echo hello'`              |





---


---
