# Version 2.0.0
FROM ubuntu:xenial

MAINTAINER gounthar gounthar@gmail.com

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get --yes --assume-yes install alsa-utils apt-transport-https aptitude aptly asciinema atril automake \
avahi-autoipd bash-completion bc binfmt-support binutils-arm-linux-gnueabihf bison blueman bluez bluez-tools bridge-utils \
btrfs-tools build-essential ca-certificates ccache chromium-browser chromium-bsu command-not-found console-setup corkscrew \
cpp-5-arm-linux-gnueabihf cpp-arm-linux-gnueabihf cpufrequtils crda cups cups-pk-helper curl dbus-x11 debian-archive-keyring \
debian-keyring debootstrap device-tree-compiler dialog dirmngr dnsutils dosfstools eject ethtool evtest expect f2fs-tools f3 \
fake-hwclock fbi fbset figlet flex fping galculator gawk gcc-5-arm-linux-gnueabihf gcc-5-arm-linux-gnueabihf-base \
gcc-5-cross-base gcc-arm-linux-gnueabihf gcj-jre-headless gcr geany git gnome-keyring gnome-orca gnupg gnupg2 gpgv gtk2-engines \
gtk2-engines-murrine gtk2-engines-pixbuf gvfs-backends gvfs-fuse haveged hdparm hexchat hostapd htop iceweasel ifenslave \
initramfs-tools iotop iozone3 iperf3 iptables iputils-arping iw keyutils language-selector-gnome leafpad less lib32gcc1 \
lib32ncurses5 lib32stdc++6 lib32tinfo5 libasan2-armhf-cross libatomic1-armhf-cross libc6-armhf-cross libc6-dev-armhf-cross \
libc6-i386 libdigest-sha-perl libevent-2.0-5 libexpat1-dev libfuse2 libgcc-5-dev-armhf-cross libgcc1-armhf-cross libgck-1-0 \
libgcr-3-common libgl1-mesa-dri libgnome2-perl libgomp1-armhf-cross libgtk2.0-bin liblz4-tool libncurses5-dev libnfsidmap2 \
libnl-3-dev libnl-genl-3-dev libnss-myhostname libpam-gnome-keyring libpam-systemd libproc-processtable-perl libpython-dev \
libpython2.7-dev libssl-dev libstdc++6-armhf-cross libtinfo-dev libtirpc1 libubsan0-armhf-cross libusb-1.0-0-dev libwrap0-dev \
linux-base linux-libc-dev-armhf-cross locales lsof lxtask lzop man-db mirage mpv nano ncurses-term net-tools netcat-openbsd \
network-manager network-manager-gnome network-manager-openvpn-gnome nfs-common nfs-kernel-server ntfs-3g ntp ntpdate \
numix-gtk-theme openssh-server p11-kit paman paprefs parted pasystray pavucontrol pavumeter pciutils pixz pkg-config pluma \
policykit-1 policykit-1-gnome psmisc pulseaudio pulseaudio-module-bluetooth pulseaudio-module-gconf pv python3-apt \
qemu-user-static qrencode rfkill rpcbind rsync screen software-properties-common stress sudo swig swig3.0 sysbench \
sysfsutils sysstat system-config-printer-common system-config-printer-gnome systemd-container thunar-volman toilet u-boot-tools \
unattended-upgrades unicode-data unzip usbutils uuid-dev vim vlan wget wireless-regdb wireless-tools wpasupplicant \
x11-xserver-utils xarchiver xfce4 xfce4-notifyd xfce4-screenshooter xfce4-terminal xfonts-base xinit xserver-xorg \
xserver-xorg-input-all xserver-xorg-video-fbdev zip zram-config && git config --global user.email "gounthar@gmail.com" && \
 git config --global user.name "Bruno Verachten" && \
 git clone https://github.com/armbian/build
#RUN cd build && ./compile.sh BOARD=orangepizero BRANCH=next KERNEL_ONLY=yes RELEASE=xenial KERNEL_CONFIGURE=no
