##sudo bash 
##limit
sudo echo '###limit' >> /etc/bash.bashrc
sudo echo 'ulimit -s unlimited' >> /etc/bash.bashrc
sudo echo 'export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games' >> /etc/bash.bashrc
cd /etc
##cuda-environment-set
cd /etc
sudo echo 'export CPATH=/usr/local/cuda/include${CPATH:+:${CPATH}}' >> /etc/bash.bashrc
sudo echo 'export CUDA_PATH=/usr/local/cuda ' >> /etc/bash.bashrc
sudo echo 'export CUDA_BIN_PATH=/usr/local/cuda/bin' >> /etc/bash.bashrc
sudo echo 'export PATH=/usr/local/cuda/bin:$PATH${PATH:+:${PATH}}' >> /etc/bash.bashrc
sudo echo 'export LD_LIBRARY_PATH=/usr/local/cudab64:${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}' >> /etc/bash.bashrc
sudo echo 'echo "Cuda"' >> /etc/bash.bashrc
sudo echo 'nvcc --version' >> /etc/bash.bashrc

sudo echo '###Cuda' >>/etc/ld.so.conf
sudo echo '/usr/local/cuda/lib64' >>/etc/ld.so.conf
sudo ldconfig 
nvcc -V

##intel-environment-set
cd /etc/
sudo echo "###intelpsxe" >> /etc/bash.bashrc
sudo echo "source /opt/intel/parallel_studio_xe_2019/psxevars.sh intel64" >> /etc/bash.bashrc
sudo echo "source /opt/intel/compilers_and_libraries_2019/linux/bin/compilervars.sh intel64" >> /etc/bash.bashrc    #发现在compilers_and_libraries_2019以及compilers_and_libraries_2019.4.243下有mkl、mpi、tbb
sudo echo "source /opt/intel/mkl/bin/mklvars.sh intel64" >> /etc/bash.bashrc
sudo echo "source /opt/intel/impi/2019.4.243/intel64/bin/mpivars.sh" >> /etc/bash.bashrc
sudo echo "source /opt/intel/tbb/bin/tbbvars.sh intel64" >> /etc/bash.bashrc            
cat /etc/bash.bashrc
source /etc/bash.bashrc

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

##tecplot
cd /etc/
ls -l bash*
sudo echo '###tecplot' >>/etc/bash.bashrc
sudo echo 'echo "tecplot begin"' >>/etc/bash.bashrc
sudo echo 'export PATH=/usr/local/tecplot360ex/bin:$PATH' >>/etc/bash.bashrc
sudo echo 'export TECPHYFILE=$HOME/.tecplot.phy' >>/etc/bash.bashrc
sudo echo 'echo "texplot ok"' >>/etc/bash.bashrc
cat  /etc/bash.bashrc
source /etc/bash.bashrc
sudo cp -rf /home/ljl/Documents/uconfig/tecplot.png /usr/local/tecplot360ex
sudo echo '[Desktop Entry]' >>/usr/share/applications/tecplot.desktop
sudo echo 'Name=tecplot2015' >>/usr/share/applications/tecplot.desktop
sudo echo 'Type=Application' >>/usr/share/applications/tecplot.desktop
sudo echo 'Exec=/usr/local/tecplot360ex/bin/tec360' >>/usr/share/applications/tecplot.desktop
sudo echo 'Icon=/usr/local/tecplot360ex/tecplot.png' >>/usr/share/applications/tecplot.desktop
sudo echo 'Terminal=false' >>/usr/share/applications/tecplot.desktop

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

