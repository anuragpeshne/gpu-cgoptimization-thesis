set term epslatex color colortext
set output 'results/block_size/avg_wait_time.eps'
set datafile separator ","
set title  'Block Size v/s Mean Iteration Wait Time'
set xlabel 'Block Size'
set ylabel 'Seconds'

plot 'results/block_size/prefetch.csv' using 1:2 smooth csplines title "Prefetch",\
     'results/block_size/no_prefetch.csv' using 1:2 smooth csplines title "Non Prefetch"
