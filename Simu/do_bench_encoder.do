puts "Simulation script for IrDA Encoder "

vlib work
vcom -93 ../Source/Burst_Generator.vhd
vcom -93 ../Source/Manchester_Generator.vhd
vcom -93 ../Source/Tick_generator.vhd
vcom -93 ../Source/MAE_emission.vhd
vcom -93 ../Source/Encoder.vhd
vcom -93 bench_Encoder.vhd

vsim bench_encoder

add wave CLK
add wave Address
add wave Cmd
add wave Go
add wave Tx

run 130 ms
