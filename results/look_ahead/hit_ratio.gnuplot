set term eps
set output 'hit_ratio.eps'
set datafile separator ","
set title  'Number of Prefetch v/s Hit Ratio'
set xlabel 'Number of Prefetch'
set ylabel 'Ratio'

plot 'prefetch.csv' using 1:4 smooth csplines title "Hit Ratio"
