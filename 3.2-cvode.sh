##cmake command line
#/cvode-6.5.0/build$ 
#trash -rf ./* && cmake \
#-DCMAKE_INSTALL_PREFIX=/home/ljl/Apps/cvode \
#-DCMAKE_BUILD_TYPE=Debug \
#-DCMAKE_CXX_STANDARD=17 -DCMAKE_CXX_COMPILER=dpcpp \
#-DENABLE_ONEMKL=ON -DENABLE_SYCL=ON \
#-DONEMKL_DIR=/opt/intel/oneapi/mkl/2023.0.0 ..
#ccmake ..