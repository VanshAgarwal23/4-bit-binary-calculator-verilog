# Inputs: A vector mapped to Switches 0 to 3
set_property PACKAGE_PIN V17 [get_ports {A[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A[0]}]
set_property PACKAGE_PIN V16 [get_ports {A[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A[1]}]
set_property PACKAGE_PIN W16 [get_ports {A[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A[2]}]
set_property PACKAGE_PIN W17 [get_ports {A[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A[3]}]

# Inputs: B vector mapped to Switches 4 to 7
set_property PACKAGE_PIN W15 [get_ports {B[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[0]}]
set_property PACKAGE_PIN V15 [get_ports {B[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[1]}]
set_property PACKAGE_PIN W14 [get_ports {B[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[2]}]
set_property PACKAGE_PIN W13 [get_ports {B[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[3]}]

# Input: SEL mapped to Switch 15 (far left)
set_property PACKAGE_PIN R2 [get_ports {SEL}]
set_property IOSTANDARD LVCMOS33 [get_ports {SEL}]

# Outputs: RESULT vector mapped to LEDs 0 to 3
set_property PACKAGE_PIN U16 [get_ports {RESULT[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RESULT[0]}]
set_property PACKAGE_PIN E19 [get_ports {RESULT[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RESULT[1]}]
set_property PACKAGE_PIN U19 [get_ports {RESULT[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RESULT[2]}]
set_property PACKAGE_PIN V19 [get_ports {RESULT[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RESULT[3]}]

# Output: CARRY_BORROW mapped to LED 15 (far left)
set_property PACKAGE_PIN L1 [get_ports {CARRY_BORROW}]
set_property IOSTANDARD LVCMOS33 [get_ports {CARRY_BORROW}]