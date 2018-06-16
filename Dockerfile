# Version 2.0.0
FROM ubuntu:xenial

MAINTAINER gounthar gounthar@gmail.com

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get --yes --assume-yes --force-yes install git corkscrew asciinema wget psmisc alsa-utils apt-transport-https aptitude \ 
 atril automake avahi-autoipd bash-completion bc bison blueman bluez bluez-tools bridge-utils btrfs-tools build-essential \
 ca-certificates chromium-bsu chromium-browser command-not-found console-setup cpufrequtils crda cups cups-pk-helper curl \
 dbus-x11 device-tree-compiler dialog dirmngr dnsutils dosfstools eject ethtool evtest expect f2fs-tools f3 fake-hwclock fbi \
 fbset figlet flex fping galculator gcj-jre-headless gcr geany git gnome-keyring gnome-orca gnupg2 gtk2-engines \
 gtk2-engines-murrine gtk2-engines-pixbuf gvfs-backends gvfs-fuse haveged hdparm hexchat hostapd htop iceweasel ifenslave \
 initramfs-tools iotop iozone3 iperf3 iptables iputils-arping iw language-selector-gnome leafpad less libdigest-sha-perl \
 libfuse2 libgck-1-0 libgcr-3-common libgl1-mesa-dri libgnome2-perl libgtk2.0-bin libnl-3-dev libnl-genl-3-dev libnss-myhostname \
 libpam-gnome-keyring libpam-systemd libproc-processtable-perl libssl-dev libwrap0-dev linux-base lsof lxtask man-db mirage mpv \
 nano ncurses-term net-tools netcat-openbsd network-manager network-manager-gnome network-manager-openvpn-gnome ntfs-3g \
 ntp numix-gtk-theme openssh-server p11-kit paman paprefs parted pasystray pavucontrol pavumeter pciutils \
 pluma policykit-1 policykit-1-gnome psmisc pulseaudio pulseaudio-module-bluetooth pulseaudio-module-gconf \
 pv python3-apt qrencode resolvconf rfkill rsync screen software-properties-common stress sudo sysbench sysfsutils sysstat \
 system-config-printer-common system-config-printer-gnome thunar-volman toilet u-boot-tools \
 unattended-upgrades unicode-data unzip usbutils vim vlan wget wireless-regdb wireless-tools wpasupplicant x11-xserver-utils \
 xarchiver xfce4 xfce4-notifyd xfce4-screenshooter xfce4-terminal xfonts-base xinit xserver-xorg xserver-xorg-input-all \
 xserver-xorg-video-fbdev zram-config && git config --global user.email "gounthar@gmail.com" && \
 git config --global user.name "Bruno Verachten" && \
 git clone https://github.com/armbian/build
#RUN cd build && ./compile.sh BOARD=orangepizero BRANCH=next KERNEL_ONLY=yes RELEASE=xenial KERNEL_CONFIGURE=no
