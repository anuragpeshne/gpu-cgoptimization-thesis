set term epslatex color colortext
set output 'results/index_length/p_first_mean.eps'
set datafile separator ","
set title  'Index Length v/s wait\_time\_'
set xlabel 'Index Length'
set ylabel 'Seconds'

plot 'results/index_length/index_length_p.csv' using 1:4 with lp title "First Iteration",\
     'results/index_length/index_length_p.csv' using 1:3 with lines title "Mean"
