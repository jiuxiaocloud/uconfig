sudo apt-get update
wget https://repo.radeon.com/amdgpu-install/21.50.1/ubuntu/bionic/amdgpu-install_21.50.1.50001-1_all.deb
sudo apt-get install ./amdgpu-install_21.50.1.50001-1_all.deb 
amdgpu-install -y --usecase=rocm
sudo apt update
sudo echo '##ROCm'
sudo echo 'export PATH=$PATH:/opt/rocm/bin:/opt/rocm/opencl/bin' >>/etc/profile
sudo echo 'export CPATH=/opt/rocm/include' >>/etc/profile
sudo echo 'export LD_LIBRARY_PAT=/opt/rocm/lib' >>/etc/profile
