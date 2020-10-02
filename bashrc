. /etc/bashrc

test -s ~/.alias && . ~/.alias || true

export ASAN_OPTIONS="detect_leaks=1:abort_on_error=1"
export UBSAN_OPTIONS="print_stacktrace=1:halt_on_error=1"

HDF5_VERSION="1.8.18"

export CCACHE_DIR=~/.ccache
export CCACHE_TEMPDIR=~/.ccache

#/opt/clion/bin:

PATH=\
/usr/lib64/ccache:\
/snap/bin:\
/home/_ME_/homeroot/bin:\
/opt/intel/compilers_and_libraries/linux/bin/intel64:\
/opt/intel/bin:\
/usr/local/bin:\
/usr/lib/jvm/default-java/bin:\
/usr/local/HDF_Group/HDF5/${HDF5_VERSION}/bin:\
$PATH
export PATH

WINEPREFIX=/home/nsexton/.wine32
export WINEPREFIX

WINEARCH=win32
export WINEARCH

C_INCLUDE_PATH=\
/usr/local/HDF_Group/HDF5/${HDF5_VERSION}/include/:\
/opt/hdf5/include:\
/usr/local/include/opencv:\
/usr/local/include/opencv2:\
/usr/local/include:\
/usr/lib/gcc/x86_64-redhat-linux/10/include/:\
$C_INCLUDE_PATH
export C_INCLUDE_PATH

CPLUS_INCLUDE_PATH=\
/usr/local/HDF_Group/HDF5/${HDF5_VERSION}/include/:\
/opt/hdf5/include:\
/usr/local/include/opencv:\
/usr/local/include/opencv2:\
/usr/local/include:\
/usr/lib/gcc/x86_64-redhat-linux/10/include/:\
$CPLUS_INCLUDE_PATH
export CPLUS_INCLUDE_PATH

LD_LIBRARY_PATH=\
/usr/local/HDF_Group/HDF5/${HDF5_VERSION}/lib:\
/opt/intel/compilers_and_libraries/linux/lib/intel64:\
/opt/intel/mkl/lib/intel64:\
/opt/intel/ipp/lib/intel64:\
/usr/local/lib:\
/usr/local/lib64:\
/usr/local/cuda/lib64:\
/usr/lib64/gcc/x86_64-suse-linux/6:\
/usr/lib64:\
/usr/lib:\
$LD_LIBRARY_PATH

export LD_LIBRARY_PATH

JAVA_HOME=/usr/lib/jvm/default-java
export JAVA_HOME

#MANPAGER=/usr/bin/most
#export MANPAGER

#source /opt/intel/vtune_profiler_2020.0.0.605129/vtune-vars.sh

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.tmux_completion ]; then
    . ~/.tmux_completion
fi


