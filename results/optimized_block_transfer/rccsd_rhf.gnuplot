set term epslatex lw 3 dl 3
set output 'results/optimized_block_transfer/rccsd_rhf.eps'
set datafile separator ","
set boxwidth 0.4
set ylabel 'Number of transfers'
set style fill solid
set key off

plot 'results/optimized_block_transfer/data.csv' using 1:3:xtic(2) with boxes dashtype 1,\
     'results/optimized_block_transfer/data.csv' using 1:4:xtic(2) with boxes dashtype 2