set term epslatex color colortext
set output 'results/index_length/p_np_mean.eps'
set datafile separator ","
set xlabel 'Index Length'
set ylabel 'Seconds'
set key outside tmargin center
set grid

plot 'results/index_length/index_length_p.csv' using 1:3 with lp title "Prefetch Mean",\
     'results/index_length/index_length_np.csv' using 1:3 with lp title "Non Prefetch Mean"
