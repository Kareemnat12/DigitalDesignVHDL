quit -sim 
vcom counter.vhd 
vsim counter 


add wave *

force rstN 1 
force clk 0, 1 25 ps -r 50ps ;
run 1 ns

force rstN 0 
force clk 0, 1 25 ps -r 50ps ;
run 1 ns