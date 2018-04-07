set term epslatex color colortext
set output 'results/look_ahead/hit_ratio.eps'
set datafile separator ","
set xlabel 'Number of Prefetch'
set ylabel 'Ratio'
#set key outside tmargin center

plot 'results/look_ahead/prefetch.csv' using 1:4 smooth csplines title "Hit Ratio"
