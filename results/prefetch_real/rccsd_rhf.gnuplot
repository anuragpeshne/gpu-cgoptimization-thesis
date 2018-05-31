set term epslatex lw 3 dl 3
set output 'results/prefetch_real/rccsd_rhf.eps'
set datafile separator ","
set ylabel 'Time (seconds)'
set grid noxtics nomxtics ytics nomytics noztics nomztics nortics nomrtics \
 nox2tics nomx2tics noy2tics nomy2tics nocbtics nomcbtics
set nokey # outside top center
set style fill solid 1.00 noborder
set style histogram clustered gap 1 title offset 2,-0.25
set style data histograms
set boxwidth 0.95
set yrange [0:*]
unset xtics

set xlabel 'rccsd-rhf'
plot newhistogram "1 Server", 'results/prefetch_real/data3.csv' every ::0::1 using 12 linecolor rgb "#2F6005",\
                              'results/prefetch_real/data3.csv' every ::0::1 using 13 linecolor rgb "#FE4236",\
                              'results/prefetch_real/data3.csv' every ::0::1 using 10 linecolor rgb "#8BB911",\
                              'results/prefetch_real/data3.csv' every ::0::1 using 11 linecolor rgb "#FF7D65",\
     newhistogram "2 Server", 'results/prefetch_real/data3.csv' every ::2::2 using 12 linecolor rgb "#2F6005",\
                              'results/prefetch_real/data3.csv' every ::2::2 using 13 linecolor rgb "#FE4236",\
                              'results/prefetch_real/data3.csv' every ::2::2 using 10 linecolor rgb "#8BB911",\
                              'results/prefetch_real/data3.csv' every ::2::2 using 11 linecolor rgb "#FF7D65",\
     newhistogram "3 Server", 'results/prefetch_real/data3.csv' every ::3::3 using 12 linecolor rgb "#2F6005",\
                              'results/prefetch_real/data3.csv' every ::3::3 using 13 linecolor rgb "#FE4236",\
                              'results/prefetch_real/data3.csv' every ::3::3 using 10 linecolor rgb "#8BB911",\
                              'results/prefetch_real/data3.csv' every ::3::3 using 11 linecolor rgb "#FF7D65"