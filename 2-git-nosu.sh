##git installed
#sudo chmod 777 /root/.ssh
git config --global user.name “Jiuxiaoyun”
git config --global user.email “3292913147@qq.com”
git config --global --list
ssh-keygen -t rsa -C "3292913147@qq.com"
cat /home/ljl/.ssh/id_rsa.pub
#粘贴公钥
read -p "gitee粘贴公钥，完成后按"Enter""
ssh -T git@gitee.com      #粘贴后运行本行