# Install Notes: Arch Linux

UEFI filesystem must be FAT32
mkfs.fat -F 32 /dev/sda1
mkfs.btrfs /dev/sda3
mkfs.btrfs /dev/sda4
mkswap /dev/sda2
swapon /dev/sda2

sda1 -> /efi
sda3 -> /
sda4 -> /home

pacstrap /mnt base base-devel linux linux-firmware vim
genfstab -U /mnt >> /mnt/etc/fstab

### Packstrap & chroot

pacman -S networkmanager grub reflector rsync curl

reflector --latest 200 --sort rate --save /etc/pacman.d/mirrorlist

This command should take about 20 mins

Edit pacman.conf:
1. Enable color
2. Enable ParallelDownloads
3. Enable Multilib

### Setup Grub
grub-install --target=x86_64-efi --efi-directory=/efi --bootloader-i=GRUB
grub-mkconfig -o /boot/grub/grub.cfg

### Add new user
useradd -m -g wheel user
passwd user

### no sudo password for wheel group
edit /etc/sudoers, uncommend wheel NOPASSWD

### connect to wifi
nmcli device wifi list
nmcli device wifi connect SSID password "password"
pacman -S xorg-server xorig-xinit xorg-xlsfonts git

### copy home git
su user
cd ~
git clone --nocheckout https://github.com/ConnorWorrell/ArchConfig.git ~/tmp
mv ~/tmp.git ~/
rmdir ~/tmp
git reset --hard HEAD

### Install desktop environment
sudo pacman -S xorg-server xorg-xinit xorg-xlsfonts libxinerama dmenu xorg ttf-inconsolata
clone and install dwmblocks, dwm, st


### Install yay
sudo git clone https://aur.archlinux.org/yay.git /opt/yay
sudo chown -R user:users /opt/yay
makepkg -si /opt/yay

# Fix st crash
yay -S libxft-bgra
recompile st

# microcode
amd-ucode
intel-ucode
grub-mkconfig

# That Line

yay -Syy --needed  7-zip acpi alacritty alsa-utils arandr atkinson-hyperlegible-fonts audacity autoconf autocutsel automake binutils bison blender blueman bluez-tools bluez-utils bmap-tools brave-bin bridge-utils calculix calcurse cdemu-client cdemu-daemon cdrtools chitubox-free-bin codecs64 cups cups-filters cups-pdf dash digimend-kernel-drivers-dkms-git dmenu dmidecode dnsmasq dosbox downgrade dunst ecryptfs-utils emacs epson-inkjet-printer-escpr2 fcitx fcitx-configtool fcitx-mozc fd feh ffmpeg ffmpegthumbnailer firefox firejail fish flameshot fluidsynth font-manager gamemode gimp gromit-mpx gstreamer-docs gtop gvim gzip hexchat htop hotdoc i3lock ifplugd imagescan innoextract joplin-appimage jupyter-notebook kdenlive kimageformats krita kseexpr lib32-dav1d lib32-ffmpeg lib32-fltk lib32-gamemode lib32-giflib lib32-glew lib32-gmp4 lib32-gnutls lib32-gst-plugins-bad lib32-gst-plugins-base lib32-gst-plugins-good lib32-gst-plugins-ugly lib32-imath lib32-libcups lib32-libomxil-bellagio lib32-libpng14 lib32-libpulse lib32-libwmf lib32-libxinerama lib32-lzo lib32-mjpegtools lib32-mpg123 lib32-nss-mdns lib32-ocl-icd lib32-openal lib32-vkd3d lib32-vulkan-mesa-layers lib32-wxgtk3 libilbc libmysofa libqalculate libreoffice-still libtool linux-lts linux-lts-headers linux-zen linux-zen-headers logseq-desktop-bin lutris m4 man-db man-pages mediainfo midori mkinitcpio-firmware mpv mupdf neofetch nethogs network-manager-applet newsboat nextcloud-client nnn noto-fonts noto-fonts-emoji nsxiv nuclear-player-bin obs-studio ocl-icd openfoam-org openresolv openscad opentabletdriver osu-lazer-bin otf-ipafont otf-takao patch pavucontrol picom pidgin pipewire pngcheck polkit-dumb-agent-git povray powertop proton-ge-custom-bin protonup-git pulseaudio pulseaudio-bluetooth pulsemixer python-playsound python-pyqt5 qemu qemu-arch-extra quartz ranger rsync rxvt-unicode samba sane sane-airscan screenkey scrot sed simple-scan soundfont-fluid srandrd steam system-config-printer texinfo thunar thunar-volman tlp ttf-baekmuk ttf-fira-mono ttf-font-awesome ttf-inconsolata ttf-material-design-icons-extended tumbler uclogic-tools ueberzug ufw unrar unzip usb_modeswitch usbutils uwufetch vhba-module vi vim-instant-markdown virt-manager vkd3d vlc vmaf vulkan-mesa-layers w3m wget which wine wine-gecko wine-mono winetricks wireguard-tools xautolock xbindkeys xclip xdotool-git xkeycaps xlayoutdisplay zip

# FCXIT
enable mozc keyboard

# Vulcan driver
vulkan-intel
amdvlk
