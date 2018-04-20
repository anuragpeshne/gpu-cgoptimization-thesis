set term epslatex color colortext dl 3 lw 3
set output 'results/mempin/rdma/put.eps'
set datafile separator ","
set xlabel 'Block Size'
set ylabel 'Seconds'
set key outside top center

plot 'results/mempin/rdma/data.csv' using 1:5 smooth csplines title "Cuda Aware" dashtype 1,\
     'results/mempin/rdma/data.csv' using 1:6 smooth csplines title "Non Cuda Aware Pinned Blocks" dashtype 3, \
     'results/mempin/rdma/data.csv' using 1:7 smooth csplines title "Non Cuda Aware Unpinned Blocks" dashtype 5
