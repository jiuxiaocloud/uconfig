# If you use the Environment Modules package, that is, the module load
# command, the NVIDIA HPC SDK includes a script to set up the
# appropriate module files.

# % module load /opt/nvidia/hpc_sdk/modulefiles/nvhpc/22.5
# % module load nvhpc/22.5

# Alternatively, the shell environment may be initialized to use the HPC SDK.

# In csh, use these commands:

# % setenv MANPATH "$MANPATH":/opt/nvidia/hpc_sdk/Linux_x86_64/22.5/compilers/man
# % set path = (/opt/nvidia/hpc_sdk/Linux_x86_64/22.5/compilers/bin $path)

# In bash, sh, or ksh, use these commands:

# $ MANPATH=$MANPATH:/opt/nvidia/hpc_sdk/Linux_x86_64/22.5/compilers/man; export MANPATH
# $ PATH=/opt/nvidia/hpc_sdk/Linux_x86_64/22.5/compilers/bin:$PATH; export PATH

# Once the 64-bit compilers are available, you can make the OpenMPI
# commands and man pages accessible using these commands.

# % set path = (/opt/nvidia/hpc_sdk/Linux_x86_64/22.5/comm_libs/mpi/bin $path)
# % setenv MANPATH "$MANPATH":/opt/nvidia/hpc_sdk/Linux_x86_64/22.5/comm_libs/mpi/man

# And the equivalent in bash, sh, and ksh:

# $ export PATH=/opt/nvidia/hpc_sdk/Linux_x86_64/22.5/comm_libs/mpi/bin:$PATH
# $ export MANPATH=$MANPATH:/opt/nvidia/hpc_sdk/Linux_x86_64/22.5/comm_libs/mpi/man
