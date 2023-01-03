## 基于cuda local deb install 可以避免基于cuda依赖的包版本问题，不需要事先安装cuda驱动
##cuda-11.6
# wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-ubuntu2004.pin
# sudo mv cuda-ubuntu2004.pin /etc/apt/preferences.d/cuda-repository-pin-600
# wget https://developer.download.nvidia.com/compute/cuda/11.6.0/local_installers/cuda-repo-ubuntu2004-11-6-local_11.6.0-510.39.01-1_amd64.deb
# sudo dpkg -i cuda-repo-ubuntu2004-11-6-local_11.6.0-510.39.01-1_amd64.deb
# sudo apt-key add /var/cuda-repo-ubuntu2004-11-6-local/7fa2af80.pub
# sudo apt-get update
# sudo apt-get -y install cuda
##安装完成后不可禁用安装源
# nvidia-smi
# shutdown -r now

