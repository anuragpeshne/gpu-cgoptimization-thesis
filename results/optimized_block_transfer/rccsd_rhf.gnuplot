set term epslatex
set output 'results/optimized_block_transfer/rccsd_rhf.eps'
set datafile separator ","
set boxwidth 0.4
set style fill solid
set key off

plot 'results/optimized_block_transfer/data.csv' using 1:3:xtic(2) with boxes ls 1,\
     'results/optimized_block_transfer/data.csv' using 1:4:xtic(2)