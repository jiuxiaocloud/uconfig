##Cuda安装准备
#shutdown -r now
    ##先禁用核显驱动
wget https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/rtl_nic/rtl8125a-3.fw
sudo mv -f rtl8125a-3.fw /lib/firmware/rtl_nic/
wget https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/rtl_nic/rtl8168fp-3.fw
sudo mv -f rtl8168fp-3.fw /lib/firmware/rtl_nic/
sudo update-initramfs -u
ubuntu-drivers devices
sudo ubuntu-drivers autoinstall
sudo apt autoremove
shutdown -r now
read -p "先禁用核显，完成后按"Enter""
lsmod|grep nouveau
read -p "确认无返回，完成后按"Enter""
nvidia-smi
shutdown -r now
