set term epslatex lw 3 dl 3 size 6.5,3.62
set output 'results/gpu_real/overall.eps'
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
plot newhistogram "unaware Unpin",'results/gpu_real/C12H10.csv' every ::0::1 using 2 linecolor rgb "#2F6005",\
                                  'results/gpu_real/C12H10.csv' every ::0::1 using 3 linecolor rgb "#FE4236",\
                                  'results/gpu_real/C12H10.csv' every ::0::1 using 4 linecolor rgb "#8BB911",\
     newhistogram "unaware Pin",  'results/gpu_real/C12H10.csv' every ::2::2 using 2 linecolor rgb "#2F6005",\
                                  'results/gpu_real/C12H10.csv' every ::2::2 using 3 linecolor rgb "#FE4236",\
                                  'results/gpu_real/C12H10.csv' every ::2::2 using 4 linecolor rgb "#8BB911",\
     newhistogram "aware Unpin",  'results/gpu_real/C12H10.csv' every ::3::3 using 2 linecolor rgb "#2F6005",\
                                  'results/gpu_real/C12H10.csv' every ::3::3 using 3 linecolor rgb "#FE4236",\
                                  'results/gpu_real/C12H10.csv' every ::3::3 using 4 linecolor rgb "#8BB911",\
     newhistogram "aware Pin",    'results/gpu_real/C12H10.csv' every ::4::4 using 2 linecolor rgb "#2F6005",\
                                  'results/gpu_real/C12H10.csv' every ::4::4 using 3 linecolor rgb "#FE4236",\
                                  'results/gpu_real/C12H10.csv' every ::4::4 using 4 linecolor rgb "#8BB911",\
     newhistogram "aware Cached", 'results/gpu_real/C12H10.csv' every ::5::5 using 2 linecolor rgb "#2F6005",\
                                  'results/gpu_real/C12H10.csv' every ::5::5 using 3 linecolor rgb "#FE4236",\
                                  'results/gpu_real/C12H10.csv' every ::5::5 using 4 linecolor rgb "#8BB911"