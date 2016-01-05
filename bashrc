# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=100000
HISTFILESIZE=200000


#################setup the CALDB####################
source /usr/share/astrotools/CALDB/software/tools/caldbinit.sh


#################setup the heasoft####################
#HEADAS=/home/jl/tools/heasoft-6.12/x86_64-unknown-linux-gnu-libc2.19-0
HEADAS=/usr/share/astrotools/heasoft-6.16/x86_64-unknown-linux-gnu-libc2.21
export HEADAS
alias heainit=". $HEADAS/headas-init.sh"
heainit


###############pgplot#######################
PGPLOT_DIR=/usr/local/pgplot/
export PGPLOT_DIR
PGPLOT_DEV=/xwin	
export PGPLOT_DEV
export LD_LIBRARY_PATH=/usr/local/pgplot/:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/home/jl/tools/pgplot:$LD_LIBRARY_PATH




##############################Fermi#################################################
export FERMI_DIR=/usr/share/astrotools/fermi/ScienceTools-v10r0p5-fssc-20150518-x86_64-unknown-linux-gnu-libc2.20/x86_64-unknown-linux-gnu-libc2.20
alias fermi="source $FERMI_DIR/fermi-init.sh"
#fermi



export LMODDIR='/home/jl/tools/xspec_model/burstatmo_xspec'
export LD_LIBRARY_PATH=$LMODDIR:$LD_LIBRARY_PATH




##################set XMM-Newton######################################
export SAS_DIR=/usr/share/astrotools/sas/xmmsas_20141104_1833
export SAS_CCFPATH=/usr/share/astrotools/sas/xmmsas_20141104_1833/ccf
alias ss='. $SAS_DIR/setsas.sh'



########################chandra#######################
export ASCDS_INSTALL=/usr/share/astrotools/ciao/ciao-4.7
export CIAO_LD_LIBRARY_PATH=$ASCDS_INSTALL/ots/lib
alias ciao="source /usr/share/astrotools/ciao/ciao-4.7/bin/ciao.bash"
#ciao


#######ISDC_OMC_CAT###setup osa10.0#############################
export ISDC_ENV=/usr/share/astrotools/osa/osa10.1
export ISDC_REF_CAT=/usr/share/astrotools/osa/osa_cat-38.0/cat/hec/gnrl_refr_cat_0038.fits
export ISDC_OMC_CAT=/usr/share/astrotools/osa/osa_cat-38.0/cat/omc/omc_refr_cat_0005.fits
export REP_BASE_PROD=/home/jl/mywork/jinjing/integral/jinjing
alias osa='source $ISDC_ENV/bin/isdc_init_env.sh'
#osa



###################cfitsio######################################
export CFITSIO=/usr/share/astrotools/cfitsio
export PATH=$CFITSIO:$PATH
export LD_LIBRARY_PATH=$CFITSIO:$LD_LIBRARY_PATH


#######IDL########################################################

#export PATH=//usr/local/exelis/idl82/bin:$PATH
#export IDL_PATH=+/usr/local/exelis/idl82/lib:
#export PATH=/home/jl/tools/idl7.1/idl/bin:$PATH
#export IDL_PATH=+/home/jl/tools/idl7.1/idl71/lib:

#export IDL_PATH=+/home/jl/tools/idl7.1/library/astro:$IDL_PATH
#export IDL_PATH=+/home/jl/tools/idl7.1/library/retiredcoyotelibrary:$IDL_PATH
#export IDL_PATH=+/home/jl/tools/idl7.1/library/mpfit:$IDL_PATH



# Added by Canopy installer on 2015-11-17
# VIRTUAL_ENV_DISABLE_PROMPT can be set to '' to make bashprompt show that Canopy is active, otherwise 1
#VIRTUAL_ENV_DISABLE_PROMPT=1 source '/home/jl/Enthought/Canopy_64bit/User/bin/activate'



###################isis##########################
#export PATH=/home/jl/tools/isis/bin:$PATH
#export LD_LIBRARY_PATH=/home/jl/tools/isis/include:$LD_LIBRARY_PATH


alias ihepprint="lpr -P HP-LaserJet-3100 -o PageSize=A4 210x297mm -o sides=two-sided-long-edge -o Resolution=1200dpi"
alias rscp='rsync -v -P -e ssh'
alias cmdmarkdown='/home/jl/to/home/jl/tools/cmd_markdown_linux64/Cmd\ Markdown'
#export PS1="\e[33;1m\w> \e[0m "

##########ibus###########
export XMODIFIERS="@im=ibus"
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=xim
#export ibus 
export LC_CTYPE=zh_CN.utf8

#fermi

######pandafan#########
#export http_proxy=http://std.dig.name:30578
#export https_proxy=http://std.dig.name:30578
unset http_proxy
unset https_proxy

export vps="2001:19f0:7000:9c54:5400:00ff:fe1b:b228"
export vps4="45.32.53.226"

export mountwin10="sudo mount  /dev/sdb1  /home/jl/Windows10"
