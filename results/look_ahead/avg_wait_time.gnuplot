set term eps
set output 'results/look_ahead/avg_wait_time.eps'
set datafile separator ","
set xlabel 'Number of Prefetch'
set ylabel 'Seconds'
#set key outside tmargin center

plot 'results/look_ahead/prefetch.csv' using 1:2 smooth csplines title "Mean"