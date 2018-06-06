set term epslatex lw 3 dl 3
set output 'results/prefetch_real/rccsd_rhf256.eps'
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

set xlabel ' '
plot newhistogram "256 Server", 'results/prefetch_real/data256.csv' every ::3::3 using 10 linecolor rgb "#2F6005",\
                                'results/prefetch_real/data256.csv' every ::3::3 using 11 linecolor rgb "#FE4236",\
                                'results/prefetch_real/data256.csv' every ::3::3 using  8 linecolor rgb "#8BB911",\
                                'results/prefetch_real/data256.csv' every ::3::3 using  9 linecolor rgb "#FF7D65"
