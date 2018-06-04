set term epslatex lw 3 dl 3
set output 'results/block_size_lookahead/16.eps'
set datafile separator ","
set xlabel 'Number of Prefetched Blocks'
set ylabel 'Seconds'
#set key outside top center

plot 'results/block_size_lookahead/result16.csv' using 2:3 smooth csplines title "Mean" dashtype 1
