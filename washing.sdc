create_clock -name clk -period 10 -waveform {0 5} [get_ports clk]
set_clock_uncertainty -hold 0.5 [get_ports clk]

set_clock_uncertainty -setup 0.7 [get_ports clk]
set_clock_transition 0.1 [get_clocks clk]


