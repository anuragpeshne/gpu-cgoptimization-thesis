set term epslatex color colortext
set output 'results/index_length/p_np_mean.eps'
set datafile separator ","
set title  'Index Length v/s wait_time_'
set xlabel 'Index Length'
set ylabel 'Seconds'

plot 'results/index_length/index_length_p.csv' using 1:3 smooth csplines title "Prefetch Mean",\
     'results/index_length/index_length_np.csv' using 1:3 smooth csplines title "Non Prefetch Mean"
