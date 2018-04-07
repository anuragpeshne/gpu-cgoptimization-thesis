set term epslatex color colortext
set output 'results/index_length/hitratio.eps'
set datafile separator ","
set xlabel 'Index Length'
set ylabel 'Ratio'
set key outside tmargin center
set grid

plot 'results/index_length/index_length_p.csv' using 1:5 with lp title "Prefetch",\
     'results/index_length/index_length_np.csv' using 1:5 with lp title "No Prefetch"
