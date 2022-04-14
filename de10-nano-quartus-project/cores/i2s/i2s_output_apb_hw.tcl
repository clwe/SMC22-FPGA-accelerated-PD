# TCL File Generated by Component Editor 19.1
# Tue Apr 07 19:53:09 CEST 2020
# DO NOT MODIFY


# 
# i2s_output_apb "i2s_output_apb" v1.4
# Bjarne Steinsb� 2020.04.07.19:53:09
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module i2s_output_apb
# 
set_module_property DESCRIPTION ""
set_module_property NAME i2s_output_apb
set_module_property VERSION 1.4
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP "Interface Protocols/Audio & Video"
set_module_property AUTHOR "Bjarne Steinsb�"
set_module_property DISPLAY_NAME i2s_output_apb
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL i2s_output_apb
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file i2s_output_apb.v VERILOG PATH i2s_output_apb.v TOP_LEVEL_FILE
add_fileset_file capture_fifo.qip OTHER PATH capture_fifo.qip
add_fileset_file playback_fifo.qip OTHER PATH playback_fifo.qip


# 
# parameters
# 


# 
# display items
# 


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clk
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset reset_n reset_n Input 1


# 
# connection point apb_slave
# 
add_interface apb_slave apb end
set_interface_property apb_slave associatedClock clk
set_interface_property apb_slave associatedReset reset
set_interface_property apb_slave ENABLED true
set_interface_property apb_slave EXPORT_OF ""
set_interface_property apb_slave PORT_NAME_MAP ""
set_interface_property apb_slave CMSIS_SVD_VARIABLES ""
set_interface_property apb_slave SVD_ADDRESS_GROUP ""

add_interface_port apb_slave paddr paddr Input 5
add_interface_port apb_slave penable penable Input 1
add_interface_port apb_slave pwrite pwrite Input 1
add_interface_port apb_slave pwdata pwdata Input 32
add_interface_port apb_slave psel psel Input 1
add_interface_port apb_slave prdata prdata Output 32
add_interface_port apb_slave pready pready Output 1


# 
# connection point clk
# 
add_interface clk clock end
set_interface_property clk clockRate 0
set_interface_property clk ENABLED true
set_interface_property clk EXPORT_OF ""
set_interface_property clk PORT_NAME_MAP ""
set_interface_property clk CMSIS_SVD_VARIABLES ""
set_interface_property clk SVD_ADDRESS_GROUP ""

add_interface_port clk clk clk Input 1


# 
# connection point playback_fifo
# 
add_interface playback_fifo conduit end
set_interface_property playback_fifo associatedClock ""
set_interface_property playback_fifo associatedReset ""
set_interface_property playback_fifo ENABLED true
set_interface_property playback_fifo EXPORT_OF ""
set_interface_property playback_fifo PORT_NAME_MAP ""
set_interface_property playback_fifo CMSIS_SVD_VARIABLES ""
set_interface_property playback_fifo SVD_ADDRESS_GROUP ""

add_interface_port playback_fifo playback_fifo_read read Input 1
add_interface_port playback_fifo playback_fifo_empty empty Output 1
add_interface_port playback_fifo playback_fifo_full full Output 1
add_interface_port playback_fifo playback_fifo_clk clk Input 1
add_interface_port playback_fifo playback_fifo_data data Output 64


# 
# connection point playback_dma
# 
add_interface playback_dma conduit end
set_interface_property playback_dma associatedClock ""
set_interface_property playback_dma associatedReset ""
set_interface_property playback_dma ENABLED true
set_interface_property playback_dma EXPORT_OF ""
set_interface_property playback_dma PORT_NAME_MAP ""
set_interface_property playback_dma CMSIS_SVD_VARIABLES ""
set_interface_property playback_dma SVD_ADDRESS_GROUP ""

add_interface_port playback_dma playback_dma_req req Output 1
add_interface_port playback_dma playback_dma_ack ack Input 1
add_interface_port playback_dma playback_dma_enable enable Output 1


# 
# connection point capture_fifo
# 
add_interface capture_fifo conduit end
set_interface_property capture_fifo associatedClock clk
set_interface_property capture_fifo associatedReset ""
set_interface_property capture_fifo ENABLED true
set_interface_property capture_fifo EXPORT_OF ""
set_interface_property capture_fifo PORT_NAME_MAP ""
set_interface_property capture_fifo CMSIS_SVD_VARIABLES ""
set_interface_property capture_fifo SVD_ADDRESS_GROUP ""

add_interface_port capture_fifo capture_fifo_data data Input 64
add_interface_port capture_fifo capture_fifo_write write Input 1
add_interface_port capture_fifo capture_fifo_full full Output 1
add_interface_port capture_fifo capture_fifo_clk clk Input 1
add_interface_port capture_fifo capture_fifo_empty empty Output 1


# 
# connection point capture_dma
# 
add_interface capture_dma conduit end
set_interface_property capture_dma associatedClock ""
set_interface_property capture_dma associatedReset ""
set_interface_property capture_dma ENABLED true
set_interface_property capture_dma EXPORT_OF ""
set_interface_property capture_dma PORT_NAME_MAP ""
set_interface_property capture_dma CMSIS_SVD_VARIABLES ""
set_interface_property capture_dma SVD_ADDRESS_GROUP ""

add_interface_port capture_dma capture_dma_req req Output 1
add_interface_port capture_dma capture_dma_ack ack Input 1
add_interface_port capture_dma capture_dma_enable enable Output 1

