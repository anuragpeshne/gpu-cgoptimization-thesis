set term epslatex color colortext
set output 'results/block_size/first_wait_time.eps'
set datafile separator ","
set xlabel 'Block Size'
set ylabel 'Seconds'
set key outside top center

plot 'results/block_size/prefetch.csv' using 1:3 smooth csplines title "Prefetch",\
     'results/block_size/no_prefetch.csv' using 1:3 smooth csplines title "Non Prefetch"
