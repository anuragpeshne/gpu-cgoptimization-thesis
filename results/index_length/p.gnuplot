set term eps
set output 'p_first_mean.eps'
set datafile separator ","
set title  'Index Length v/s wait_time_'
set xlabel 'Index Length'
set ylabel 'Seconds'

plot 'index_length_p.csv' using 1:4 smooth csplines title "First Iteration",\
     'index_length_p.csv' using 1:3 smooth csplines title "Mean"
