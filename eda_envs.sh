# EDA environment setting functions

# Set Xilinx ISE environment
xilinx(){
    if [ -d /opt/Xilinx/14.6/ISE_DS ]; then
        # breaks other things, including apt auto-complete...
        #export LD_LIBRARY_PATH=/opt/Xilinx/14.6/ISE_DS/ISE/lib/lin64:/opt/Xilinx/14.6/ISE_DS/ISE/smartmodel/lin64/installed_lin64/lib:/opt/Xilinx/14.6/ISE_DS/ISE/sysgen/lib:/opt/Xilinx/14.6/ISE_DS/EDK/lib/lin64:/opt/Xilinx/14.6/ISE_DS/common/lib/lin64
        export XILINX_DSP=/opt/Xilinx/14.6/ISE_DS/ISE
        export XILINX_EDK=/opt/Xilinx/14.6/ISE_DS/EDK
        export PATH=$PATH:/opt/Xilinx/14.6/ISE_DS/ISE/bin/lin64:/opt/Xilinx/14.6/ISE_DS/ISE/sysgen/util:/opt/Xilinx/14.6/ISE_DS/ISE/sysgen/bin:/opt/Xilinx/14.6/ISE_DS/ISE/../../../DocNav:/opt/Xilinx/14.6/ISE_DS/PlanAhead/bin:/opt/Xilinx/14.6/ISE_DS/EDK/bin/lin64:/opt/Xilinx/14.6/ISE_DS/EDK/gnu/microblaze/lin/bin:/opt/Xilinx/14.6/ISE_DS/EDK/gnu/powerpc-eabi/lin/bin:/opt/Xilinx/14.6/ISE_DS/EDK/gnu/arm/lin/bin:/opt/Xilinx/14.6/ISE_DS/EDK/gnu/microblaze/linux_toolchain/lin64_be/bin:/opt/Xilinx/14.6/ISE_DS/EDK/gnu/microblaze/linux_toolchain/lin64_le/bin:/opt/Xilinx/14.6/ISE_DS/common/bin/lin64
        export XILINX_PLANAHEAD=/opt/Xilinx/14.6/ISE_DS/PlanAhead
        export XILINX=/opt/Xilinx/14.6/ISE_DS/ISE
    fi
}

# Set Altera Quartus environment
altera(){
    if [ -d /usr/local/altera/quartus/bin ]; then
      PATH=$PATH:/usr/local/altera/quartus/bin # Add QuartusII to path
      export QUARTUS_ROOTDIR="/usr/local/altera/quartus"
      export QUARTUS_ROOTDIR_OVERRIDE="$QUARTUS_ROOTDIR"
    fi

    if [ -d /usr/local/altera/nios2eds/bin ]; then
      PATH=$PATH:/usr/local/altera/nios2eds/bin # Add NiosII to path
    fi

    if [ -d /home/diego/.intelFPGA/18.1/modelsim_ase/bin ]; then
      PATH=$PATH:/home/diego/.intelFPGA/18.1/modelsim_ase/bin # Add ModelSim to path
    fi
}


# Set Mentor Questa
questa(){
    if [ -d /usr/local/questasim/ ]; then
        export LM_LICENSE_FILE=/usr/local/questasim/license.dat
        PATH=$PATH:/usr/local/questasim/linux_x86_64/
    fi
}
