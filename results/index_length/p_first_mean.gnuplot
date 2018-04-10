set term epslatex color colortext
set output 'results/index_length/p_first_mean.eps'
set datafile separator ","
set xlabel 'Index Length'
set ylabel 'Seconds'
set yrange [0:0.04]
set key outside top center

plot 'results/index_length/index_length_p.csv' using 1:4 smooth csplines title "First Iteration",\
     'results/index_length/index_length_p.csv' using 1:3 smooth csplines title "Mean"
