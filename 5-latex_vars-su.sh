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

##clear
sudo echo '#sleep 5s' >>/etc/bash.bashrc
sudo echo 'clear' >>/etc/bash.bashrc

