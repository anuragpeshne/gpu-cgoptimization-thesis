set term epslatex color colortext lw 3 dl 3
set output 'results/look_ahead/hit_ratio.eps'
set datafile separator ","
set xlabel 'Number of Prefetch'
set ylabel 'Ratio'
#set key outside top center

plot 'results/look_ahead/prefetch.csv' using 1:4 smooth csplines title "Hit Ratio" dashtype 1
