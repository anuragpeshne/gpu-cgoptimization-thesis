set term epslatex color colortext dl 3 lw 3
set output 'results/mempin/rdma/pin_vs_nopin.eps'
set datafile separator ","
set xlabel 'Block Size'
set ylabel 'Seconds'
set key outside top center

plot 'results/mempin/rdma/data.csv' using 1:2 smooth csplines title "Pinned Blocks" dashtype 1,\
     'results/mempin/rdma/data.csv' using 1:3 smooth csplines title "Non Pinned Blocks" dashtype 2
