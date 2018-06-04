set term epslatex lw 3 dl 3
set output 'results/look_ahead/avg_wait_time.eps'
set datafile separator ","
set xlabel 'Number of Prefetched Blocks'
set ylabel 'Seconds'
#set key outside top center

plot 'results/look_ahead/prefetch.csv' using 1:2 smooth csplines title "Mean" dashtype 1
