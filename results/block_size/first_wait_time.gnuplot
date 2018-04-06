set term epslatex color colortext
set output 'results/block_size/first_hit_ratio.eps'
set datafile separator ","
set title  'Block Size v/s First Iteration Wait Time'
set xlabel 'Block Size'
set ylabel 'Seconds'

plot 'results/block_size/prefetch.csv' using 1:3 smooth csplines title "Prefetch",\
     'results/block_size/no_prefetch.csv' using 1:3 smooth csplines title "Non Prefetch"
