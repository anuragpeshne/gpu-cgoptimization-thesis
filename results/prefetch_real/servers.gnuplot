set term epslatex lw 3 dl 3
set output 'results/prefetch_real/servers.eps'
set datafile separator ","
set ylabel 'Time Difference(seconds)'
set key outside top center
set xtics 1

plot 'results/prefetch_real/data.csv' every 3::1::9 using 2:9 smooth csplines title "scf-rhf" dashtype 1,\
     'results/prefetch_real/data.csv' every 3::2::9 using 2:9 smooth csplines title "tran-rhf" dashtype 2,\
     'results/prefetch_real/data.csv' every 3::3::9 using 2:9 smooth csplines title "rccsd-rhf" dashtype 3
