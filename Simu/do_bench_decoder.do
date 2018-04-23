puts "Simulation script for IrDA Decoder "

vlib work
vcom -93 ../Source/Burst_Generator.vhd
vcom -93 ../Source/Manchester_Generator.vhd
vcom -93 ../Source/Tick_generator.vhd
vcom -93 ../Source/MAE_emission.vhd
vcom -93 ../Source/Encoder.vhd
vcom -93 ../Source/MAE_deburst.vhd
vcom -93 ../Source/MAE_Demanchester.vhd
vcom -93 ../Source/MAE_decoder.vhd
vcom -93 ../Source/Decoder.vhd
vcom -93 bench_decoder.vhd

vsim bench_decoder

add wave CLK
add wave Tx
add wave Address_in
add wave Cmd_in
add wave Go
add wave enable
add wave Address_out
add wave Cmd_out
add wave toggle
add wave error_sig

run 35ms
