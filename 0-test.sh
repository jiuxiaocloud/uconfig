##github
sudo -s cp /etc/hosts /etc/apt/hosts.backup 
read -p "本计算机全名，输入后按Enter，eg：LJL-MSI:" NAME
read -p "访问：http://tool.chinaz.com/dns?type=1&host=github.com&ip= ，得到github的ip并输入，完成按Enter，eg：20.205.243.166:" GIP
read -p "访问：http://seo.chinaz.com/github.global.ssl.fastly.net ，得到github.global.ssl.fastly.net的ip并输入，完成按Enter，eg：20.205.243.166:" GNIP
read -p "ipconfig 得到本机ip：" NIP
read -p "输入该地ip标识：" NLAO
cd /etc && sudo echo "
127.0.0.1	localhos.
127.0.1.1	$NAME

$NIP github.com git #$NLAO
$GIP github.com

# github.com
192.30.253.112 github.com
192.30.253.119 gist.github.com
151.101.100.133 assets-cdn.github.com
151.101.100.133 raw.githubusercontent.com
151.101.100.133 gist.githubusercontent.com
151.101.100.133 cloud.githubusercontent.com
151.101.100.133 camo.githubusercontent.com
151.101.100.133 avatars0.githubusercontent.com
151.101.100.133 avatars1.githubusercontent.com
151.101.100.133 avatars2.githubusercontent.com
151.101.100.133 avatars3.githubusercontent.com
151.101.100.133 avatars4.githubusercontent.com
151.101.100.133 avatars5.githubusercontent.com
151.101.100.133 avatars6.githubusercontent.com
151.101.100.133 avatars7.githubusercontent.com
151.101.100.133 avatars8.githubusercontent.com
185.199.108.153 assets-cdn.github.com
185.199.109.153 assets-cdn.github.com
185.199.110.153 assets-cdn.github.com
185.199.111.153 assets-cdn.github.com
151.101.113.194 github.global.ssl.fastly.net
#-----------------------------------
#【终极方法，绝对有用】ubuntu 无法访问github.com的解决方法
#https://blog.51cto.com/u_15242250/2856080

# The following lines are desirable for IPv6 capable hosts
::1     ip6-localhost ip6-loopback
fe00::0 ip6-localnet
ff00::0 ip6-mcastprefix
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters

$GIP github.com
$GNIP github.global.ssl.fastly.net
"  >/etc/hosts
sudo /etc/init.d/networking restart
sudo gedit  /etc/hosts
