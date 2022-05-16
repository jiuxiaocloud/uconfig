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
    ##cuda安装
#wget https://developer.download.nvidia.com/compute/cuda/11.4.0/local_installers/cuda_11.4.0_470.42.01_linux.run
#sh cuda_11.4.0_470.42.01_linux.run
##11.6 online
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-ubuntu1804.pin
sudo mv cuda-ubuntu1804.pin /etc/apt/preferences.d/cuda-repository-pin-600
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub
sudo add-apt-repository "deb https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/ /"
sudo apt-get update
sudo apt-get -y install cuda
