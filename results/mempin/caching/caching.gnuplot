set term epslatex size 6.5,8.62 color colortext dl 3 lw 3
set output 'results/mempin/caching/caching.eps'
set datafile separator ","
unset xlabel
set ylabel 'Seconds'
set style histogram cluster gap 2
set style data histograms
set style fill pattern 1.00 border

set multiplot layout 3,2

set key outside top center
plot 'results/mempin/caching/data.csv' using 2:xtic(1) every ::::0 ti col, \
     'results/mempin/caching/data.csv' using 3:xtic(1) every ::::0 ti col, \
     'results/mempin/caching/data.csv' using 4:xtic(1) every ::::0 ti col

set key outside top center
plot 'results/mempin/caching/data.csv' using 2:xtic(1) every ::1::1 ti col, \
     'results/mempin/caching/data.csv' using 3:xtic(1) every ::1::1 ti col, \
     'results/mempin/caching/data.csv' using 4:xtic(1) every ::1::1 ti col

unset key
plot 'results/mempin/caching/data.csv' using 2:xtic(1) every ::2::2 ti col, \
     'results/mempin/caching/data.csv' using 3:xtic(1) every ::2::2 ti col, \
     'results/mempin/caching/data.csv' using 4:xtic(1) every ::2::2 ti col

plot 'results/mempin/caching/data.csv' using 2:xtic(1) every ::3::3 ti col, \
     'results/mempin/caching/data.csv' using 3:xtic(1) every ::3::3 ti col, \
     'results/mempin/caching/data.csv' using 4:xtic(1) every ::3::3 ti col

plot 'results/mempin/caching/data.csv' using 2:xtic(1) every ::4::4 ti col, \
     'results/mempin/caching/data.csv' using 3:xtic(1) every ::4::4 ti col, \
     'results/mempin/caching/data.csv' using 4:xtic(1) every ::4::4 ti col
