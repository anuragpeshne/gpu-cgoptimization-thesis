TEXINPUTS := ./sty:./tex
BLOCK_SIZE_EPS = results/block_size/avg_all.eps \
								 results/block_size/avg_wait_time.eps \
								 results/block_size/first_wait_time.eps

LOOK_AHEAD_EPS = results/look_ahead/hit_ratio.eps \
								 results/look_ahead/avg_wait_time.eps \
								 results/look_ahead/first_wait_time.eps

INDEX_LENGTH_EPS = results/index_length/p_first_mean.eps \
									 results/index_length/p_np_mean.eps \
									 results/index_length/hitratio.eps

all: main.pdf

$(BLOCK_SIZE_EPS): results/block_size/no_prefetch.csv results/block_size/prefetch.csv
$(LOOK_AHEAD_EPS): results/look_ahead/prefetch.csv
$(INDEX_LENGTH_EPS): results/index_length/index_length_p.csv results/index_length/index_length_np.csv

%.eps: %.gnuplot
	gnuplot $<

main.pdf: main.tex $(BLOCK_SIZE_EPS) $(LOOK_AHEAD_EPS) $(INDEX_LENGTH_EPS)
	pdflatex --output-format=pdf main.tex
	bibtex main
	pdflatex --output-format=pdf main.tex
	pdflatex --output-format=pdf main.tex

clean:
	rm -f main.pdf
	rm -f main.bib.info main.bib
	rm -f main.log main.lot main.dvi main.aux main.out main.toc main.lof
	rm -f *~ tex/*~ tex/*.aux
	find ./results/ -name *.eps -exec rm {} \;
	find ./retults/ -name *.tex -exec rm {} \;
