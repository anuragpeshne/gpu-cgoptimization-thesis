set term epslatex color colortext lw 3 dl 3
set output 'results/block_size/avg_wait_time.eps'
set datafile separator ","
set xlabel 'Block Size'
set ylabel 'Seconds'
set key outside top center

plot 'results/block_size/prefetch.csv' using 1:2 smooth csplines title "Prefetch" dashtype 1,\
     'results/block_size/no_prefetch.csv' using 1:2 smooth csplines title "Non Prefetch" dashtype 2
