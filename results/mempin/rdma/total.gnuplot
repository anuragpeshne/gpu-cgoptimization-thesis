set term epslatex color colortext dl 3 lw 3
set output 'results/mempin/rdma/total_transfer.eps'
set datafile separator ","
set xlabel 'Block Size'
set ylabel 'Seconds'
set key outside top center

plot 'results/mempin/rdma/data.csv' using 1:($2 + $5) smooth csplines title "Cuda Aware" dashtype 1,\
     'results/mempin/rdma/data.csv' using 1:($3 + $6 + $9) smooth csplines title "Non Cuda Aware Pinned Blocks" dashtype 3, \
     'results/mempin/rdma/data.csv' using 1:($4 + $7 + $8) smooth csplines title "Non Cuda Aware Unpinned Blocks" dashtype 5
