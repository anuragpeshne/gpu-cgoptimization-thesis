set term epslatex color colortext dl 3 lw 3
set output 'results/mempin/overhead/alloc.eps'
set datafile separator ","
set xlabel 'Block Size'
set ylabel 'Seconds'
set key outside top center

plot 'results/mempin/overhead/data.csv' using 1:2 smooth csplines title "Pinned Blocks Alloc" dashtype 1,\
     'results/mempin/overhead/data.csv' using 1:3 smooth csplines title "Non Pinned Blocks Alloc" dashtype 2
