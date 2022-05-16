##安装intelpsxe
cd /home/ljl/Documents/ZzLinux-deb
#unzip  ./intelpsxe.zip
cd ./parallel
echo "license path:/home/ljl/Documents/ZzLinux-deb/parallel/crack/parallel_studio_xe.lic"
sudo bash ./install.sh
ln -s /opt/intel/parallel_studio_xe_2019/documentation_2019/en /home/ljl/Documents/intelpsxe-doc

##latex
sudo apt-get install perl-tk
cd /home/ljl/Documents/ZzLinux-deb/texlive
#unzip ./texlive.zip
sudo perl /home/ljl/Documents/ZzLinux-deb/texlive/install-tl

##tecplot
cd /home/ljl/Documents/ZzLinux-deb/tecplot
sudo bash ./tecplot360ex_2015_R1_linux64.sh
sudo cp -rf ./bin/tec360-bin /usr/local/tecplot360ex/bin
echo "tec360-bin successful"
sudo cp -rf ./tecplotlm.lic /usr/local/tecplot360ex
echo "tec360plotlm.lic successful"

##ROCm
sud apt update 
cd /home/ljl/Documents/ZzLinux-deb&&sudo apt install ./rocm-5.00.deb
sudo apt update
