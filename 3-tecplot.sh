#error "symbol lookup error: /lib64/libfontconfig.so.1: undefined symbol: FT_Done_MM_Var"
#tecplot安装目录中的tecplot360ex/bin/libfreetype.so.6动态库版本低于系统中的libfreetype.so.6动态库版本，
#导致系统启动tecplot时找不到低版本动态库中定义的变量FT_Done_MM_Var
#系统中的libGL.so动态库的版本过高，与tecplot2016/2017运行所需的libGL.so版本不匹配。

#首先，删除tecplot安装目录中的tecplot360ex/bin/libfreetype.so.6动态库
#其次，由于tecplot安装目录里有自带的与tecplot相匹配的libGL.so，该库位于tecplotex360/bin/mesa中，
#因此只需将tecplot安装目录下的tecplotex360/bin/mesa路径加入到Linux系统的动态库路径LD_LIBRARY_PATH中，
#即在~/.bashrc配置文件中加入如下代码（我的tecplot目录是放在家目录下的）
rm ./360ex_2017r3/bin/libfreetype.so.6