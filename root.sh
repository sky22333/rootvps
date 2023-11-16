#!/bin/bash

RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
NC="\033[0m"
Info="${GREEN}[信息]${NC}"
Error="${RED}[错误]${NC}"
Tip="${YELLOW}[注意]${NC}"

if [[ $(whoami) == "root" ]]; then
    read -p "请设置ssh端口号（默认为 22）：" sshport
    sshport=${sshport:-22} # 如果用户没有输入，则使用默认值22

    read -p "请设置root密码：" passwd
    if [ -z "$passwd" ]; then
        echo -e "${Error}未输入密码，无法执行操作！"
        exit 1
    else
        password=$passwd
    fi
    echo root:$password | chpasswd root
    sed -i "s/^#\?Port.*/Port $sshport/g" /etc/ssh/sshd_config
    sed -i 's/^#\?PermitRootLogin.*/PermitRootLogin yes/g' /etc/ssh/sshd_config
    sed -i 's/^#\?PasswordAuthentication.*/PasswordAuthentication yes/g' /etc/ssh/sshd_config
    sed -i 's/^#\?RSAAuthentication.*/RSAAuthentication yes/g' /etc/ssh/sshd_config
    sed -i 's/^#\?PubkeyAuthentication.*/PubkeyAuthentication yes/g' /etc/ssh/sshd_config
    rm -rf /etc/ssh/sshd_config.d/* && rm -rf /etc/ssh/ssh_config.d/*

    # 重启SSH服务
    systemctl restart ssh ssh >/dev/null 2>&1

    # 终止除当前终端会话之外的所有会话
    current_tty=$(tty)
    pts_list=$(who | awk '{print $2}')
    for pts in $pts_list; do
        if [ "$current_tty" != "/dev/$pts" ]; then
            pkill -9 -t $pts
        fi
    done

    # 输出结果
    echo -e "${Info}root密码设置 ${GREEN}成功${NC}"
    echo -e "${Info}VPS当前ssh端口：${GREEN}$sshport ${NC}"
    echo -e "${Info}VPS用户名：${GREEN}root${NC}"
    echo -e "${Info}vps当前root密码：${GREEN}$password ${NC}"
else
    echo -e "${Error}请执行 ${GREEN}sudo -i${NC} 后以${GREEN}root${NC}权限执行此脚本！"
    exit 1
fi
