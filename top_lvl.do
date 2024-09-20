quit -sim
vcom Top_LEVEL_COUNTER.vhd
vsim Top_LEVEL;

add wave *

force rstN 1 
force clk 0, 1 25 ps -r 50ps ;
run 50 ns

##force rstN 0 
###force clk 0, 1 25 ps -r 50ps ;
###run 1 ns