##to quit simulation
quit -sim 
## here to compile MUST BE THE SAME AS FILE NAME 
vcom J_K_FF.vhd 
## START SIMULATION THE NAME MUST BE AS NAME OF THE ENTITY
vsim J_K_FF 
## HERE TO add waves and deviders 
add wave -divider {input}  
add wave J
add wave K
add wave clk 
add wave rstN 
add wave -divider {output}
add wave Q 
add wave Qn

###################TO RUN THE PROGRAMME ####################


run 
force rstN 0
run
##force clk 1 -repeat 20
##force clk 0 -repeat 25
 ## CLK PERIOD

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
