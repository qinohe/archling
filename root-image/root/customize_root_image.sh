#!/bin/bash

set -e -u

sed -i 's/#\(en_US\.UTF-8\)/\1/' /etc/locale.gen
locale-gen

ln -sf /usr/share/zoneinfo/UTC /etc/localtime

usermod -s /usr/bin/zsh root
cp -aT /etc/skel/ /root/

useradd -m -g users -G "adm,audio,floppy,log,lp,network,rfkill,scanner,storage,systemd-journal,optical,power,wheel" -s /usr/bin/zsh ali
usermod -p '' ali

mkdir -p /build-tmp
git clone https://github.com/falconindy/cower /build-tmp
cd /build-tmp
make 
make install
make clean
cd /
rm -r /build-tmp


chmod 750 /etc/sudoers.d
chmod 440 /etc/sudoers.d/g_wheel

sed -i "s/#Server/Server/g" /etc/pacman.d/mirrorlist

systemctl enable multi-user.target pacman-init.service choose-mirror.service

rm -r /etc/skel
