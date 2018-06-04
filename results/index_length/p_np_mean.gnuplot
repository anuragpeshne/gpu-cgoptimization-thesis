set term epslatex color colortext dl 3 lw 3
set output 'results/index_length/p_np_mean.eps'
set datafile separator ","
set xlabel 'Index Range'
set ylabel 'Seconds'
set key outside top center
set grid

plot 'results/index_length/index_length_p.csv' using 1:3 with lp title "Prefetch Mean" dashtype 1,\
     'results/index_length/index_length_np.csv' using 1:3 with lp title "Non Prefetch Mean" dashtype 2
