set term epslatex color colortext
set output 'results/index_length/hitratio.eps'
set datafile separator ","
set title  'Index Length v/s Prefetch Hit Ratio'
set xlabel 'Index Length'
set ylabel 'Seconds'

plot 'results/index_length/index_length_p.csv' using 1:5 smooth csplines title "Prefetch",\
     'results/index_length/index_length_np.csv' using 1:5 smooth csplines title "Non Prefetch"
