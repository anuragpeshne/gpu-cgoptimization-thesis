set term eps
set output 'avg_first.eps'
set datafile separator ","
set title  'Block Size v/s Mean And First Iteration Wait Time'
set xlabel 'Block Size'
set ylabel 'Seconds'

plot 'prefetch.csv' using 1:2 smooth csplines title "Prefetch Mean",\
     'no_prefetch.csv' using 1:2 smooth csplines title "Non Prefetch Mean",\
     'prefetch.csv' using 1:3 smooth csplines title "Prefetch First",\
     'no_prefetch.csv' using 1:3 smooth csplines title "Non Prefetch First"
