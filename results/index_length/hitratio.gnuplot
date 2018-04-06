set term eps
set output 'hitratio.eps'
set datafile separator ","
set title  'Index Length v/s Prefetch Hit Ratio'
set xlabel 'Index Length'
set ylabel 'Seconds'

plot 'index_length_p.csv' using 1:5 smooth csplines title "Prefetch",\
     'index_length_np.csv' using 1:5 smooth csplines title "Non Prefetch"
