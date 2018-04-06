TEXINPUTS := ./sty:./tex
EPS = results/block_size/avg_first.eps \
			results/block_size/avg_wait_time.eps \
			results/block_size/first_wait_time.eps \
			results/look_ahead/hit_ratio.eps \
			results/index_length/p_first_mean.eps \
			results/index_length/p_np_mean.eps \
			results/index_length/hitratio.eps

all: main.pdf

%.eps: %.gnuplot
	gnuplot $<

main.pdf: main.tex $(EPS)
	pdflatex --output-format=pdf main.tex
	pdflatex --output-format=pdf main.tex
	pdflatex --output-format=pdf main.tex

clean:
	rm -f main.pdf
	rm -f main.bib.info main.bib
	rm -f main.log main.lot main.dvi main.aux main.out main.toc main.lof
	rm -f *~ tex/*~ tex/*.aux
