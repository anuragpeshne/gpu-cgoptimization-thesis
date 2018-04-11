set term epslatex size 6.5,3.62 color colortext
set output 'results/mempin/block_copy/pin_vs_nopin.eps'
set datafile separator ","
set xlabel 'Block Size'
set ylabel 'Seconds'
set key outside top center
set grid

plot 'results/mempin/block_copy/data.csv' using 1:2 smooth csplines title "Pinned Blocks",\
     'results/mempin/block_copy/data.csv' using 1:3 smooth csplines title "Non Pinned Blocks"
