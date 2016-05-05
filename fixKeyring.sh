# Warning: The above command clears the pacman cache completely, and one will not be able to downgrade to a previous version of a package if required. Instead packages that are causing signing errors can be removed individually when upgrading.

sudo rm -r /etc/pacman.d/gnupg 
sudo pacman-key --init
sudo pacman-key --populate archlinux manjaro 
sudo pacman-key --refresh-keys 
sudo pacman -Sc

