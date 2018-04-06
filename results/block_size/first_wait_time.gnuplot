set term eps
set output 'first_hit_ratio.eps'
set datafile separator ","
set title  'Block Size v/s First Iteration Wait Time'
set xlabel 'Block Size'
set ylabel 'Seconds'

plot 'prefetch.csv' using 1:3 smooth csplines title "Prefetch",\
     'no_prefetch.csv' using 1:3 smooth csplines title "Non Prefetch"
