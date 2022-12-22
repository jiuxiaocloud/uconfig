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


##wakeonlan
# sudo apt-get install ethtool
# sudo ethtool eth0 |grep Wake-on
# sudo apt-get install wakeonlan
# sudo lshw -c network | grep serial

##挂载硬盘
#sudo fdisk -l
#read -p "输入要挂载的磁盘全名，eg：/dev/..,完成按Enter" disk
#read -p "硬盘挂载目录，eg：/Files" dev
#mkdir $dev 
#sudo blkid $disk
#sudo gedit /etc/fstab
#read -p "echo "UUID=output of blkid $dev ntfs defaults,utf8,uid=1000,gid=1000  0  2" in it, 完成按Enter "
#source /etc/fstab

##注释code和edge的ppa源
# cd /etc/apt/sources.list.d
# ls -l
# sudo awk '{print "#" $0 > "microsoft-edge.list"}' microsoft-edge.list     #awk是对每行都添加字符,参照https://blog.csdn.net/laobai1015/article/details/98628860
# sudo awk '{print "#" $0 > "vscode.list"}' vscode.list                                       # >./vscode.list表示对文件保存修改
# cat  /etc/apt/sources.list.d/microsoft-edge.list
# cat  /etc/apt/sources.list.d/vscode.list
# sudo apt-get update
# sudo apt-get upgrade

#shutdown -r now


