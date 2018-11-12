
set_property PACKAGE_PIN R3 [get_ports SYS_CLK_P]
set_property PACKAGE_PIN P3 [get_ports SYS_CLK_N]
create_clock -period 5.000 -name SYS_CLK_P -waveform {0.000 2.500} [get_ports SYS_CLK_P]

set_property PACKAGE_PIN AA13 [get_ports SGMII_CLK_P]
set_property PACKAGE_PIN AB13 [get_ports SGMII_CLK_N]
create_clock -period 8.000 -name SGMII_CLK_P -waveform {0.000 4.000} [get_ports SGMII_CLK_P]

set_property PACKAGE_PIN N18 [get_ports SCL_OUT]
set_property PACKAGE_PIN K25 [get_ports SDA_IO]
set_property PACKAGE_PIN AC10 [get_ports SFP_TX_P]
set_property PACKAGE_PIN AD10 [get_ports SFP_TX_N]
set_property PACKAGE_PIN AC12 [get_ports SFP_RX_P]
set_property PACKAGE_PIN AD12 [get_ports SFP_RX_N]
set_property PACKAGE_PIN R18  [get_ports SFP_TX_DISABLE]
set_property PACKAGE_PIN R6 [get_ports {DIP[3]}]
set_property PACKAGE_PIN R7 [get_ports {DIP[2]}]
set_property PACKAGE_PIN P8 [get_ports {DIP[1]}]
set_property PACKAGE_PIN R8 [get_ports {DIP[0]}]
set_property PACKAGE_PIN R26 [get_ports {LED[3]}]
set_property PACKAGE_PIN T25 [get_ports {LED[2]}]
set_property PACKAGE_PIN T24 [get_ports {LED[1]}]
set_property PACKAGE_PIN M26 [get_ports {LED[0]}]
set_property PACKAGE_PIN P6  [get_ports SW_N]

set_property IOSTANDARD SSTL15 [get_ports {DIP[3]}]
set_property IOSTANDARD SSTL15 [get_ports {DIP[2]}]
set_property IOSTANDARD SSTL15 [get_ports {DIP[1]}]
set_property IOSTANDARD SSTL15 [get_ports {DIP[0]}]
set_property IOSTANDARD LVDS_25  [get_ports SYS_CLK_P]
set_property IOSTANDARD LVDS_25  [get_ports SYS_CLK_N]
set_property IOSTANDARD LVCMOS33 [get_ports SCL_OUT]
set_property IOSTANDARD LVCMOS33 [get_ports SDA_IO]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports SFP_TX_DISABLE]
set_property IOSTANDARD SSTL15 [get_ports SW_N]

set_max_delay 5.000 -datapath_only -from [get_pins {SEL_SGMII*/C}]
set_false_path -to [get_pins {IB_SIG_DET*/D}]

#set_max_delay -datapath_only -from [get_clocks CLK_200M_PLL] -to [get_port PHY_RSTn] 10
#set_min_delay                -from [get_clocks CLK_200M_PLL] -to [get_port PHY_RSTn] 0

set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

set_property BITSTREAM.CONFIG.CONFIGRATE 12 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]



