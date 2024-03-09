set_property IOSTANDARD LVCMOS33 [get_ports {o_seg8[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_seg8[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_seg8[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_seg8[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_seg8[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_seg8[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_seg8[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_seg8[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_sel4[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_sel4[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_sel4[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_sel4[0]}]
set_property PACKAGE_PIN V7 [get_ports {o_seg8[7]}]
set_property PACKAGE_PIN U7 [get_ports {o_seg8[6]}]
set_property PACKAGE_PIN V5 [get_ports {o_seg8[5]}]
set_property PACKAGE_PIN U5 [get_ports {o_seg8[4]}]
set_property PACKAGE_PIN V8 [get_ports {o_seg8[3]}]
set_property PACKAGE_PIN U8 [get_ports {o_seg8[2]}]
set_property PACKAGE_PIN W6 [get_ports {o_seg8[1]}]
set_property PACKAGE_PIN W7 [get_ports {o_seg8[0]}]
set_property PACKAGE_PIN W4 [get_ports {o_sel4[3]}]
set_property PACKAGE_PIN V4 [get_ports {o_sel4[2]}]
set_property PACKAGE_PIN U4 [get_ports {o_sel4[1]}]
set_property PACKAGE_PIN U2 [get_ports {o_sel4[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports cp]
set_property IOSTANDARD LVCMOS33 [get_ports areset]
set_property IOSTANDARD LVCMOS33 [get_ports i_btn_1yuan]
set_property IOSTANDARD LVCMOS33 [get_ports i_btn_5mao]
set_property IOSTANDARD LVCMOS33 [get_ports o_refund]
set_property IOSTANDARD LVCMOS33 [get_ports o_sell]
set_property PACKAGE_PIN W5 [get_ports cp]
set_property PACKAGE_PIN V17 [get_ports areset]
set_property PACKAGE_PIN T17 [get_ports i_btn_1yuan]
set_property PACKAGE_PIN W19 [get_ports i_btn_5mao]
set_property PACKAGE_PIN P1 [get_ports o_refund]
set_property PACKAGE_PIN L1 [get_ports o_sell]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets i_btn_1yuan_IBUF]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets i_btn_5mao_IBUF]

set_property MARK_DEBUG true [get_nets {core/money_bin[0]}]
set_property MARK_DEBUG true [get_nets {core/money_bin[1]}]
set_property MARK_DEBUG true [get_nets {core/money_bin[2]}]

create_clock -period 10.000 -name cp -waveform {0.000 5.000} [get_ports cp]
