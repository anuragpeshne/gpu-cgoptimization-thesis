set term epslatex color colortext
set output 'results/block_size/avg_all.eps'
set datafile separator ","
set xlabel 'Block Size'
set ylabel 'Seconds'
set key outside tmargin center

plot 'results/block_size/prefetch.csv' using 1:2 smooth csplines title "Prefetch Mean",\
     'results/block_size/no_prefetch.csv' using 1:2 smooth csplines title "Non Prefetch Mean",\
     'results/block_size/prefetch.csv' using 1:3 smooth csplines title "Prefetch First",\
     'results/block_size/no_prefetch.csv' using 1:3 smooth csplines title "Non Prefetch First"