quit -sim

vcom counter2.vhd
vsim counter2

add wave                                   clk rstN
add wave  -color orange                    Shift
add wave  -color magenta                   Din
add wave  -color cyan                      Qout
add wave  -color cyan  -radix hexadecimal  Qout

force clk 0, 1 50 ps -r 100 ps
force rstN 0
force Shift 0
force Din 1
run 125 ps

force rstN 1
run 2 ns

force Shift 1
run				;# '1'
force Din 0
run				;# '0'
force Din 1
run				;# '1'
force Din 0
run				;# '0'
run				;# '0'
run				;# '0'
force Din 1
run				;# '1'
run				;# '1'
#                  --> "1010 0011"

force Shift 0
run 2 ns

force rstN 0
run

force rstN 1
run 500 ps

force Din 1
force Shift 1
run				;# '1'
run				;# '1'
run				;# '1'
run				;# '1'
run				;# '1'
run				;# '1'
force Din 0
run				;# '0'
run				;# '0'
#                  --> "1111 1100"

force Shift 0
run 1 ns
