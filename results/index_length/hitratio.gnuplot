set term epslatex color colortext lw 3 dl 3
set output 'results/index_length/hitratio.eps'
set datafile separator ","
set xlabel 'Index Range'
set ylabel 'Hit Ratio'
set key outside top center
set grid

plot 'results/index_length/index_length_p.csv' using 1:5 with lp title "Prefetch" dashtype 1,\
     'results/index_length/index_length_np.csv' using 1:5 with lp title "No Prefetch" dashtype 2
