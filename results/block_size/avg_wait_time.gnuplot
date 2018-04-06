set term eps
set output 'avg_wait_time.eps'
set datafile separator ","
set title  'Block Size v/s Mean Iteration Wait Time'
set xlabel 'Block Size'
set ylabel 'Seconds'

plot 'prefetch.csv' using 1:2 smooth csplines title "Prefetch",\
     'no_prefetch.csv' using 1:2 smooth csplines title "Non Prefetch"
