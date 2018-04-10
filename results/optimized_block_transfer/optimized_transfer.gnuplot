set term epslatex
set output 'results/optimized_block_transfer/optimized_transfer.eps'
set datafile separator ","
set xtics ("contraction_small_test" 0.25, "rccsd_rhf" 1.75)
set boxwidth 0.5
set style filled solid

plot 'results/optimized_block_transfer/data.csv' using 3:5 with boxes ls 1,\
     'results/optimized_block_transfer/data.csv' using 3:5