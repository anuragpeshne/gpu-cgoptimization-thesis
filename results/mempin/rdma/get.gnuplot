set term epslatex color colortext dl 3 lw 3 size 6.5,3.62
set output 'results/mempin/rdma/get.eps'
set datafile separator ","
set xlabel 'Block Size'
set ylabel 'Seconds'
set key outside top center

plot 'results/mempin/rdma/data.csv' using 1:2 smooth csplines title "Cuda Aware" dashtype 1,\
     'results/mempin/rdma/data.csv' using 1:3 smooth csplines title "Non Cuda Aware Pinned Blocks" dashtype 2, \
     'results/mempin/rdma/data.csv' using 1:4 smooth csplines title "Non Cuda Aware Unpinned Blocks" dashtype 3
