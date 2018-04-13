set term epslatex color colortext dl 3 lw 3
set output 'results/mempin/overhead/free.eps'
set datafile separator ","
set xlabel 'Block Size'
set ylabel 'Seconds'
set key outside top center

plot 'results/mempin/overhead/data.csv' using 1:4 smooth csplines title "Pinned Blocks Free" dashtype 1,\
     'results/mempin/overhead/data.csv' using 1:5 smooth csplines title "Non Pinned Blocks Free" dashtype 2
