set term epslatex lw 3 dl 3
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

set xlabel 'rccsd-rhf'
plot newhistogram "CUDA un-aware Unpinned", 'results/gpu_real/data.csv' every ::0::1 using 2 linecolor rgb "#2F6005",\
                                            'results/gpu_real/data.csv' every ::0::1 using 3 linecolor rgb "#FE4236",\
                                            'results/gpu_real/data.csv' every ::0::1 using 4 linecolor rgb "#8BB911",\
     newhistogram "CUDA un-aware Pinned",   'results/gpu_real/data.csv' every ::2::2 using 2 linecolor rgb "#2F6005",\
                                            'results/gpu_real/data.csv' every ::2::2 using 3 linecolor rgb "#FE4236",\
                                            'results/gpu_real/data.csv' every ::2::2 using 4 linecolor rgb "#8BB911",\
     newhistogram "CUDA aware Pinned",      'results/gpu_real/data.csv' every ::3::3 using 2 linecolor rgb "#2F6005",\
                                            'results/gpu_real/data.csv' every ::3::3 using 3 linecolor rgb "#FE4236",\
                                            'results/gpu_real/data.csv' every ::3::3 using 4 linecolor rgb "#8BB911",\
     newhistogram "CUDA aware Cached",      'results/gpu_real/data.csv' every ::4::4 using 2 linecolor rgb "#2F6005" fillstyle pattern 2,\
                                            'results/gpu_real/data.csv' every ::4::4 using 3 linecolor rgb "#FE4236" fillstyle pattern 2,\
                                            'results/gpu_real/data.csv' every ::4::4 using 4 linecolor rgb "#8BB911" fillstyle pattern 2
