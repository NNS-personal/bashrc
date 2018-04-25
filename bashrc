# Sample .bashrc for SuSE Linux
# Copyright (c) SuSE GmbH Nuernberg

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

# Some applications read the EDITOR variable to determine your favourite text
# editor. So uncomment the line below and enter the editor of your choice :-)
#export EDITOR=/usr/bin/vim
#export EDITOR=/usr/bin/mcedit

# For some news readers it makes sense to specify the NEWSSERVER variable here
#export NEWSSERVER=your.news.server

# If you want to use a Palm device with Linux, uncomment the two lines below.
# For some (older) Palm Pilots, you might need to set a lower baud rate
# e.g. 57600 or 38400; lowest is 9600 (very slow!)
#
#export PILOTPORT=/dev/pilot
#export PILOTRATE=115200

#export TERM=xterm-256color
#case "$TERM" in
#    xterm-color) color_prompt=yes;;
#esac
#
#force_color_prompt=yes

test -s ~/.alias && . ~/.alias || true

OCLINT_HOME=/opt/oclint/oclint-release

HDF5_VERSION="1.8.18"

PATH=${OCLINT_HOME}/bin:\
/opt/intel/compilers_and_libraries/linux/bin/intel64:\
/usr/local/cuda/bin:\
/opt/intel/bin:\
/usr/local/bin:\
/usr/lib/jvm/default-java/bin:\
/usr/local/HDF_Group/HDF5/${HDF5_VERSION}/bin:\
/opt/HPE_Security/Fortify_SCA_and_Apps_17.10/bin:\
$PATH
export PATH

WINEPREFIX=/home/[me]/.wine32
export WINEPREFIX

WINEARCH=win32
export WINEARCH

C_INCLUDE_PATH=/usr/include/luabind:\
/usr/include/lua53:\
/usr/local/HDF_Group/HDF5/${HDF5_VERSION}/include/:\
/usr/local/include:\
/usr/local/cuda/include:\
$C_INCLUDE_PATH
export C_INCLUDE_PATH

CPLUS_INCLUDE_PATH=/usr/include/luabind:\
/usr/include/lua53:\
/usr/local/HDF_Group/HDF5/${HDF5_VERSION}/include/:\
/usr/local/include:\
/usr/local/cuda/include:\
$CPLUS_INCLUDE_PATH
export CPLUS_INCLUDE_PATH

LD_LIBRARY_PATH=/usr/local/HDF_Group/HDF5/${HDF5_VERSION}/lib:\
/opt/intel/mkl/lib/intel64:\
/opt/intel/ipp/lib/intel64:\
/usr/local/lib:\
/opt/intel/compilers_and_libraries/linux/lib/intel64:\
/usr/local/lib64:\
/usr/local/cuda/lib64:\
/usr/lib64/gcc/x86_64-suse-linux/6:\
/usr/local/cuda/lib64:\
$LD_LIBRARY_PATH

export LD_LIBRARY_PATH

JAVA_HOME=/usr/lib/jvm/default-java
export JAVA_HOME

#MANPAGER=/usr/bin/most
#export MANPAGER

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.tmux_completion ]; then
    . ~/.tmux_completion
fi


