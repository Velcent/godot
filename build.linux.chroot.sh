sudo apt-get install debootstrap
sudo mkdir -p /srv/chroot/debian32
sudo debootstrap --arch=i386 stable /srv/chroot/debian32 http://deb.debian.org/debian/
sudo mount -o bind /dev /srv/chroot/debian32/dev
sudo mount -o bind /proc /srv/chroot/debian32/proc
sudo mount -o bind /sys /srv/chroot/debian32/sys
sudo mount -o bind /home /srv/chroot/debian32/home
sudo chroot /srv/chroot/debian32
apt-get update
apt-get install build-essential scons pkg-config libx11-dev libxcursor-dev libxinerama-dev libgl1-mesa-dev libglu1-mesa-dev libasound2-dev libpulse-dev libudev-dev libxi-dev libxrandr-dev libopenxr-dev yasm llvm clang gcc-multilib g++-multilib

