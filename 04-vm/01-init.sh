#!/bin/bash

sudo echo 'Server = https://mirrors.tuna.tsinghua.edu.cn/archlinuxarm/$arch/$repo' > /etc/pacman.d/mirrorlist
sudo echo 'Server = https://mirrors.ustc.edu.cn/archlinuxarm/$arch/$repo' >> /etc/pacman.d/mirrorlist

sudo pacman -Sy vim openssh jdk8-opendjk rsync



sudo systemctl enable --now sshd

ssh-kengen -t rsa

ssh-copy-id
