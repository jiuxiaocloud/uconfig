export LANG="en_US.utf-8"
export LANGUAGE="en_US"
export PATH=/usr/local/bin:/usr/local/sbin:/usr/sbin:/usr/bin
export CAPTH=/usr/local/include:/usr/include
export LD_LIBRARY_PATH=/usr/local/lib:/usr/lib64:/usr/lib32:/usr/libx32:/usr/lib

echo "PATH="            $PATH
echo " "
echo "CPATH="           $CPATH
echo " "
echo "LD_LIBRARY_PATH=" $LD_LIBRARY_PATH
echo " "

sleep 1s
clear

###NVHPC
export NVHPC_PATH=/opt/Nvhpc
export MANPATH=$NVHPC_PATH/compilers/man:$MANPATH
export NVHPC_INC=$NVHPC_PATH/compilers/lib
export PATH=$NVHPC_PATH/compilers/bin:$PATH
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$NVHPC_INC
export CUDA_PATH=$NVHPC_PATH/cuda
#export NHCUDA_INC_PATH=$NVHPC_PATH/cuda/include
#export NHCUDA_LD_PATH=$NVHPC_PATH/cuda/lib64
##NVMPI
export MPI_PATH=$NVHPC_PATH/comm_libs/mpi
export PATH=$MPI_PATH/bin:$PATH
export MANPATH=$NVHPC_PATH/comm_libs/mpi/man:$MANPATH
### add NVHPCConfig.cmake to /usr/lib/ to find_package()








