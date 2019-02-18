pacman -Syyu --noconfirm

for i in reflector; do
  pacman -S --noconfirm $i
done

reflector --verbose --protocol https --sort rate --save /etc/pacman.d/mirrorlist

pacman -Syyu --noconfirm

#install base
for i in base base-devel grub-bios linux-headers linux-lts linux-lts-headers sudo ntp; do
  pacman -S --noconfirm $i
done
for i in ntpd; do
  systemctl enable $i
done

#install open source drivers
for i in xf86-video-vesa xf86-video-nouveau lib32-mesa-libgl libgl mesa; do
  pacman -S --noconfirm $i
done

#install intel gpu drivers
#for i in xf86-video-intel; do
#  pacman -S --noconfirm $i
#done

#uninstall intel gpu drivers
#for i in xf86-video-intel; do
#  pacman -Rns --noconfirm $i
#done

#install nvidia gpu drivers
#for i in nvidia nvidia-lts nvidia-libgl lib32-nvidia-libgl; do
#  pacman -S --noconfirm $i
#done

#uninstall nvidia gpu drivers
#for i in nvidia nvidia-lts nvidia-libgl lib32-nvidia-libgl; do
#  pacman -Rns --noconfirm $i
#done

#install amd gpu drivers
#for i in xf86-video-amdgpu xf86-video-ati; do
#  pacman -S --noconfirm $i
#done

#uninstall amd gpu drivers
#for i in xf86-video-amdgpu xf86-video-ati; do
#  pacman -Rns --noconfirm $i
#done

#install virtualbox drivers
#for i in virtualbox-guest-utils virtualbox-guest-modules-arch; do
#  pacman -S --noconfirm $i
#done

#uninstall virtualbox drivers
#for i in virtualbox-guest-utils virtualbox-guest-modules-arch; do
#  pacman -Rns --noconfirm $i
#done

#install xorg display manager
for i in xorg-server xorg-xinit xterm; do
  pacman -S --noconfirm $i
done

#uninstall xorg display manager
#for i in xorg-server xorg-xinit xterm; do
#  pacman -Rns --noconfirm $i
#done

#install i3 window manager
#for i in xorg-xdm xdm-archlinux i3; do
#  pacman -S --noconfirm $i
#done
#for i in xdm-archlinux.service; do
#  systemctl enable $i
#done

#uninstall i3 window manager
#for i in xdm-archlinux.service; do
#  systemctl disable $i
#done
#for i in xorg-xdm xdm-archlinux i3; do
#  pacman -Rns --noconfirm $i
#done

#install kde desktop enviroment
#for i in sddm plasma-meta plasma plasma-desktop plasma-wayland-session kde-applications kde-applications-meta; do
#  pacman -S --noconfirm $i
#done
#for i in sddm; do
#  systemctl enable $i
#done

#uninstall kde desktop enviroment
#for i in sddm; do
#  systemctl disable $i
#done
#for i in sddm plasma-meta plasma plasma-desktop plasma-wayland-session kde-applications kde-applications-meta; do
#  pacman -Rns --noconfirm $i
#done

#install mate desktop enviroment
#for i in lightdm lightdm-gtk-greeter deepin-session-ui mate mate-extra mate-applet-dock mate-applet-streamer mate-menu; do
#  pacman -S --noconfirm $i
#done
#for i in lightdm; do
#  systemctl enable $i
#done

#uninstall mate desktop enviroment
#for i in lightdm; do
#  systemctl disable $i
#done
#for i in lightdm lightdm-gtk-greeter deepin-session-ui mate mate-extra mate-applet-dock mate-applet-streamer mate-menu; do
#  pacman -Rns --noconfirm $i
#done

#install open source fonts
#for i in ttf-liberation font-bh-ttf ttf-bitstream-vera ttf-croscore ttf-dejavu ttf-droid ttf-roboto noto-fonts ttf-ubuntu-font-family; do
#  pacman -S --noconfirm $i
#done

#uninstall open source fonts
#for i in ttf-liberation font-bh-ttf ttf-bitstream-vera ttf-croscore ttf-dejavu ttf-droid ttf-roboto noto-fonts ttf-ubuntu-font-family; do
#  pacman -Rns --noconfirm $i
#done

#install network drivers
#for i in broadcom-wl broadcom-wl-dkms; do
#  pacman -S --noconfirm $i
#done

#uninstall network drivers
#for i in broadcom-wl broadcom-wl-dkms; do
#  pacman -Rns --noconfirm $i
#done

#install networking
for i in openssh dialog network-manager-applet networkmanager networkmanager-openvpn wireless_tools wpa_supplicant wpa_actiond; do
  pacman -S --noconfirm $i
done
for i in NetworkManager; do
  systemctl enable $i
done

#uninstall networking
#for i in NetworkManager; do
#  systemctl disable $i
#done
#for i in openssh dialog network-manager-applet networkmanager networkmanager-openvpn wireless_tools wpa_supplicant wpa_actiond; do
#  pacman -Rns --noconfirm $i
#done

#install cmake
for i in cmake extra-cmake-modules; do
  pacman -S --noconfirm $i
done

#uninstall cmake
#for i in cmake extra-cmake-modules; do
#  pacman -Rns --noconfirm $i
#done

#install git
for i in git; do
  pacman -S --noconfirm $i
done

#uninstall git
#for i in git; do
#  pacman -Rns --noconfirm $i
#done

#install python
for i in python2 python pypy pypy3; do
  pacman -S --noconfirm $i
done

#uninstall python
#for i in python2 python pypy pypy3; do
#  pacman -Rns --noconfirm $i
#done

#install swig
#for i in swig; do
#  pacman -S --noconfirm $i
#done

#uninstall swig
#for i in swig; do
#  pacman -Rns --noconfirm $i
#done

#install ide
for i in qtcreator qt5-base qt4 codeblocks doxygen doxygen-docs; do
  pacman -S --noconfirm $i
done

#uninstall ide
#for i in qtcreator qt5-base qt4 codeblocks doxygen doxygen-docs; do
#  pacman -Rns --noconfirm $i
#done

#install pycharm
for i in pycharm-community-edition; do
  pacman -S --noconfirm $i
done

#uninstall pycharm
#for i in pycharm-community-edition; do
#  pacman -Rns --noconfirm $i
#done

#install w3m browser
for i in w3m; do
  pacman -S --noconfirm $i
done

#uninstall w3m browser
#for i in w3m; do
#  pacman -Rns --noconfirm $i
#done

#install firefox browser
#for i in firefox firefox-developer-edition arch-firefox-search; do
#  pacman -S --noconfirm $i
#done

#uninstall firefox browser
#for i in firefox firefox-developer-edition arch-firefox-search; do
#  pacman -Rns --noconfirm $i
#done

#install chromium browser
for i in chromium; do
  pacman -S --noconfirm $i
done

#uninstall chromium browser
#for i in chromium; do
#  pacman -Rns --noconfirm $i
#done

#install pdf viewer
for i in zathura zathura-cb zathura-djvu zathura-pdf-mupdf zathura-pdf-poppler zathura-ps; do
  pacman -S --noconfirm $i
done

#uninstall pdf viewer
#for i in zathura zathura-cb zathura-djvu zathura-pdf-mupdf zathura-pdf-poppler zathura-ps; do
#  pacman -Rns --noconfirm $i
#done

#install libreoffice
for i in libreoffice-fresh libreoffice-still libreoffice-fresh-en-gb; do
  pacman -S --noconfirm $i
done

#uninstall libreoffice
#for i in libreoffice-fresh libreoffice-still libreoffice-fresh-en-gb; do
#  pacman -Rns --noconfirm $i
#done

#install vlc
#for i in vlc; do
#  pacman -S --noconfirm $i
#done

#uninstall vlc
#for i in vlc; do
#  pacman -Rns --noconfirm $i
#done

#install media editors
#for i in gimp audacity blender; do
#  pacman -S --noconfirm $i
#done

#uninstall media editors
#for i in gimp audacity blender; do
#  pacman -Rns --noconfirm $i
#done

#install steam
for i in steam steam-native-runtime; do
  pacman -S --noconfirm $i
done

#uninstall steam
#for i in steam steam-native-runtime; do
#  pacman -Rns --noconfirm $i
#done

#install spotify
for i in clementine; do
  pacman -S --noconfirm $i
done

#uninstall spotify
#for i in clementine; do
#  pacman -Rns --noconfirm $i
#done

#install emulation
#for i in virtualbox virtualbox-host-modules-arch virtualbox-host-dkms wine wine-staging wine_gecko wine-mono; do
#  pacman -S --noconfirm $i
#done

#uninstall emulation
#for i in virtualbox virtualbox-host-modules-arch virtualbox-host-dkms wine wine-staging wine_gecko wine-mono; do
#  pacman -Rns --noconfirm $i
#done

pacman -Syyu --noconfirm

exit 0
