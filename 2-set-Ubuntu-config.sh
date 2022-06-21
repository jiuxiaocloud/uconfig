##卸载自带不常用软件
sudo dpkg --list
sudo apt-get --purge remove libreoffice-common
sudo apt-get --purge remove firefox
sudo apt-get --purge remove thunderbird
sudo apt-get --purge remove aisleriot
sudo apt-get install fcitx-pinyin
sudo apt-get install deja-dup
sudo apt-get install vim
sudo apt-get install at
sudo apt-get install unrar
sudo apt-get install unzip
sudo apt-get install tree
sudo apt-get install wget
sudo apt-get install axel
sudo apt-get install cmake
sudo apt-get install virtualbox
sudo apt autoremove
sudo apt-get update
sudo apt-get upgrade

##SM Player
sudo add-apt-repository ppa:rvm/smplayer 
sudo apt-get update 
sudo apt-get install smplayer smplayer-themes smplayer-skins 

##同步系统时间
#sudo apt-get install ntpdate
#sudo ntpdate cn.pool.ntp.org
#sudo hwclock --systohc

##tweak
sudo apt-get install gnome-tweak-tool
sudo apt-get install gnome-shell-extensions
sudo apt-get install gnome-shell-extension-dashtodock

##ssh
sudo apt-get install openssh-client
sudo apt-get install openssh-server
sudo service ssh start
sudo ps -e|grep ssh
sudo apt install net-tools
ifconfig

##wakeonlan
sudo apt-get install ethtool
sudo ethtool eth0 |grep Wake-on
sudo apt-get install wakeonlan
sudo lshw -c network | grep serial

##挂载硬盘
#sudo fdisk -l
#read -p "输入要挂载的磁盘全名，eg：/dev/..,完成按Enter" disk
#read -p "硬盘挂载目录，eg：/Files" dev
#sudo mkdir $dev 
#sudo blkid $disk
#sudo gedit /etc/fstab
#read -p "echo "UUID=output of blkid $dev ntfs defaults  0  2" in it, 完成按Enter "
#source /etc/fstab
#ln -s /Files /home/ljl/Documents/Files
#ln -s /Files/CUDA-Programming-master/src /home/ljl/Documents/CUDA-programming
#ln -s /Files/ZzLinux-deb /home/ljl/Documents/ZzLinux-deb
#ln -s /Files/euler-cuda /home/ljl/Documents/euler-cuda
#ln -s /Files/euler-cuda/multiphase-2D /home/ljl/Documents/multiphase-2D
#ln -s /Files/Graduation-design /home/ljl/Documents/Graduation-design
#ln -s /Files/Graduation-design/1-s2.0-S0021999106001926-main.pdf  /home/ljl/Documents/2D.pdf
#ln -s /Files/Graduation-design/1-s2.0-S0021999109003192-main.pdf /home/ljl/Documents/3D.pdf
#ln -s /Files/JCOMP-template /home/ljl/Documents/JCOMP-template
#ln -s /Files/uconfig /home/ljl/Documents/uconfig


#ln -s /media/ljl/Files/ZzHelp-html/intel_cpp_compiler_v18_0/ /home/ljl/Documents/intel_cpp_compiler_v18_0
#ln -s /media/ljl/Files/ZzHelp-html/intel_fortran_compiler_v18_0/ /home/ljl/Documents/intel_fortran_compiler_v18_0

##wget http soft
    ##Baidunetdisk、wps
cd /home/ljl/Documents/ZzLinux-deb
#wget -O wps.deb https://wdl1.cache.wps.cn/wps/download/ep/Linux2019/10702/wps-office_11.1.0.10702_amd64.deb
#wget -O Baidunetdisk.deb  https://issuepcdn.baidupcs.com/issue/netdisk/LinuxGuanjia/4.3.0/baidunetdisk_4.3.0_amd64.deb  
sudo dpkg -i /home/ljl/Documents/ZzLinux-deb/wps.deb
sudo dpkg -i /home/ljl/Documents/ZzLinux-deb/Baidunetdisk.deb
sudo dpkg -i /home/ljl/Documents/ZzLinux-deb/wemeet.deb
sudo dpkg -i /home/ljl/Documents/ZzLinux-deb/utools.deb
    ##edge、code
sudo dpkg -i /home/ljl/Documents/ZzLinux-deb/edge.deb
sudo dpkg -i /home/ljl/Documents/ZzLinux-deb/vscode.deb
    ##注释code和edge的ppa源
cat /etc/apt/sources.list.d  #ppa源的目录
cd /etc/apt/sources.list.d
ls -l
sudo awk '{print "#" $0 > "microsoft-edge.list"}' microsoft-edge.list     #awk是对每行都添加字符,参照https://blog.csdn.net/laobai1015/article/details/98628860
sudo awk '{print "#" $0 > "vscode.list"}' vscode.list                                       # >./vscode.list表示对文件保存修改
cat  /etc/apt/sources.list.d/microsoft-edge.list
cat  /etc/apt/sources.list.d/vscode.list
sudo apt-get update
sudo apt-get upgrade

##git
sudo apt-get --purge remove git
sudo apt-get install git
#sudo chmod 777 /root/.ssh
git config --global user.name “Jiuxiaoyun”
git config --global user.email “3292913147@qq.com”
git config --global --list
ssh-keygen -t rsa -C "3292913147@qq.com"
cat /home/ljl/.ssh/id_rsa.pub
#粘贴公钥
read -p "gitee粘贴公钥，完成后按"Enter""
ssh -T git@gitee.com      #粘贴后运行本行

#shutdown -r now


