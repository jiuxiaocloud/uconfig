##sudo bash 
##limit
sudo echo '###limit' >> /etc/bash.bashrc
sudo echo 'ulimit -s unlimited' >> /etc/bash.bashrc
sudo echo 'export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin' >> /etc/bash.bashrc

##tex-environment
#sudo echo '##Texlive' >>/etc/profile
#sudo echo 'export MANPATH=${MANPATH}:/usr/local/texlive/2021/texmf-dist/doc/man' >>/etc/profile
#sudo echo 'export INFOPATH=${INFOPATH}:/usr/local/texlive/2021/texmf-dist/doc/info' >>/etc/profile
#sudo echo 'export PATH=${PATH}:/usr/local/texlive/2021/bin/x86_64-linux' >>/etc/profile
#source /etc/profile
#sudo echo '##Texlive' >>/etc/bash.bashrc
#sudo echo 'export MANPATH=${MANPATH}:/usr/local/texlive/2021/texmf-dist/doc/man' >>/etc/bash.bashrc
#sudo echo 'export INFOPATH=${INFOPATH}:/usr/local/texlive/2021/texmf-dist/doc/info' >>/etc/bash.bashrc
#sudo echo 'export PATH=${PATH}:/usr/local/texlive/2021/bin/x86_64-linux' >>/etc/bash.bashrc
#source /etc/bash.bashrc
#sudo echo '##Texlive' >>/etc/bash.bashrc
#sudo echo 'MANPATH_MAP /usr/local/texlive/2021/bin/x86_64-linux /usr/local/texlive/2021/texmf-dist/doc/man' >>/etc/manpath.config
#source /etc/manpath.config
#tex --version

##ROCm
sudo echo '###ROCM' >>/etc/bash.bashrc
sudo echo 'export PATH=$PATH:/opt/rocm-5.0.0/bin:/opt/rocm-5.0.0/opencl/bin' >>/etc/bash.bashrc
sudo echo 'export LIBRARY_PATH=/opt/rocm-5.0.0b:$LIBRARY_PATH' >>/etc/bash.bashrc
sudo echo 'export CPATH=$CPATH:/opt/rocm-5.0.0/include' >>/etc/bash.bashrc
sudo echo 'export HIP_PATH=/home/ljl/Downloads/hipify-clang/bin #depends' >>/etc/bash.bashrc
sudo echo 'export HIP_PLATFORM=nvidia 	#amd' >>/etc/bash.bashrc
sudo echo 'echo "ROCm"' >>/etc/bash.bashrc
sudo echo 'hipcc --version' >>/etc/bash.bashrc

##clear
sudo echo '#sleep 5s' >>/etc/bash.bashrc
sudo echo 'clear' >>/etc/bash.bashrc

