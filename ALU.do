quit -sim
vcom ALU.vhd
vsim ALU



add wave -divider {internal:}
add wave A  B op
add wave -divider {Output:}
add wave  z c Qout


force clk 0, 1 25 ps -r 50ps

force J 0
force k 0
run
force J 0
force k 1
run
force J 1
force k 0
run
force J 1
force k 1
run
force J 0
force k 0
run

force J 0
force k 1
run
force J 1
force k 0
run
force J 1
force k 1
-------------------------------
run 
force rstN 1
--------------------------------
run
force J 0
force k 0
run
force J 0
force k 1
run
force J 1
force k 0
run
force J 1
force k 1
run
force J 0
force k 0
run

force J 0
force k 1
run
force J 1
force k 0
run
force J 1
force k 1
-------------------------------
 
