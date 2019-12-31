# ******* tools installation paths *******
# https://github.com/ldoolitt/vhd2vl
VHDL2VL ?= /mt/scratch/tmp/openfpga/vhd2vl/src/vhd2vl
# https://github.com/YosysHQ/yosys
YOSYS ?= /mt/scratch/tmp/openfpga/yosys/yosys
# https://github.com/YosysHQ/nextpnr
NEXTPNR-ECP5 ?= /mt/scratch/tmp/openfpga/nextpnr/nextpnr-ecp5
# https://github.com/SymbiFlow/prjtrellis
TRELLIS ?= /mt/scratch/tmp/openfpga/prjtrellis

# open source synthesis tools
ECPPLL ?= $(TRELLIS)/libtrellis/ecppll
TRELLISDB ?= $(TRELLIS)/database
LIBTRELLIS ?= $(TRELLIS)/libtrellis
ECPPACK ?= LANG=C LD_LIBRARY_PATH=$(LIBTRELLIS) $(TRELLIS)/libtrellis/ecppack --db $(TRELLISDB)
BIT2SVF ?= $(TRELLIS)/tools/bit_to_svf.py
#BASECFG ?= $(TRELLIS)/misc/basecfgs/empty_$(FPGA_CHIP_EQUIVALENT).config
# yosys options, sometimes those can be used: -noccu2 -nomux -nodram
YOSYS_OPTIONS ?= 
# nextpnr options
NEXTPNR_OPTIONS ?=
