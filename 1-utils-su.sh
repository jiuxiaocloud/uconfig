##卸载自带不常用软件
#sudo dpkg --list
sudo apt-get -y --purge remove libreoffice-common
sudo apt-get -y --purge remove firefox
sudo apt-get -y --purge remove thunderbird
sudo apt-get -y --purge remove aisleriot
sudo apt-get -y install fcitx-pinyin
sudo apt-get -y install perl-tk
sudo apt-get -y install vim
sudo apt-get -y install unzip
sudo apt-get -y install tree
sudo apt-get -y install wget
sudo apt-get -y install make
sudo apt-get -y install virtualbox
sudo apt-get -y install vlc
sudo apt-get -y install gnome-tweaks #for 20.04 && 22.04 
sudo apt-get -y install git
##同步系统时间
sudo apt-get -y install ntpdate
sudo ntpdate cn.pool.ntp.org
sudo hwclock --systohc
##tweak
#sudo apt-get install gnome-shell-extensions-manager #for 22.04
#sudo apt-get install gnome-shell-extension-dashtodock #for only 18.04
##ssh
sudo apt-get -y install openssh-client
sudo apt-get -y install openssh-server
sudo apt-get -y install net-tools
sudo service ssh start
sudo ps -e|grep ssh
ifconfig

sudo apt autoremove
sudo apt-get update
sudo apt-get upgrade

##挂载硬盘
#sudo fdisk -l
#sudo blkid $disk
#sudo gedit /etc/fstab
#/dev/sda1 ntfs defaults,utf8,uid=1000,gid=1000  0  2
#source /etc/fstab


