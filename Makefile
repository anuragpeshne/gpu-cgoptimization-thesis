TEXINPUTS := ./sty:./tex
TEX_FILES = main.tex \
						tex/chapter1.tex tex/chapter2.tex tex/chapter3.tex tex/chapter4.tex \
						tex/chapter5.tex tex/chapter6.tex tex/chapter7.tex

BLOCK_SIZE_EPS = results/block_size/avg_all.eps \
								 results/block_size/avg_wait_time.eps \
								 results/block_size/first_wait_time.eps

LOOK_AHEAD_EPS = results/look_ahead/hit_ratio.eps \
								 results/look_ahead/avg_wait_time.eps \
								 results/look_ahead/first_wait_time.eps

INDEX_LENGTH_EPS = results/index_length/p_first_mean.eps \
									 results/index_length/p_np_mean.eps \
									 results/index_length/hitratio.eps

MEM_PIN_EPS = results/mempin/block_copy/pin_vs_nopin.eps \
							results/optimized_block_transfer/rccsd_rhf.eps \
							results/mempin/overhead/alloc.eps \
							results/mempin/overhead/free.eps \
							results/mempin/rdma/get.eps \
							results/mempin/rdma/put.eps \
							results/mempin/rdma/total.eps \
							results/mempin/caching/caching.eps

PREFETCH_REAL = results/prefetch_real/server.eps \
								results/prefetch_real/barrier_wait_time.eps

all: main.pdf

$(BLOCK_SIZE_EPS): results/block_size/no_prefetch.csv \
									 results/block_size/prefetch.csv
$(LOOK_AHEAD_EPS): results/look_ahead/prefetch.csv
$(INDEX_LENGTH_EPS): results/index_length/index_length_p.csv \
										 results/index_length/index_length_np.csv
$(MEM_PIN_EPS): results/mempin/block_copy/data.csv \
								results/optimized_block_transfer/data.csv \
								results/mempin/overhead/data.csv results/mempin/rdma/data.csv \
								results/mempin/caching/data.csv
$(PREFETCH_REAL): results/prefetch_real/data.csv

%.eps: %.gnuplot
	gnuplot $<

main.bbl: bib/References.bib
	bibtex main

main.pdf: $(TEX_FILES) main.bbl $(BLOCK_SIZE_EPS) $(LOOK_AHEAD_EPS) $(INDEX_LENGTH_EPS) $(MEM_PIN_EPS) $(PREFETCH_REAL)
	pdflatex --output-format=pdf main.tex
	pdflatex --output-format=pdf main.tex
	pdflatex --output-format=pdf main.tex

clean:
	rm -f main.pdf
	rm -f main.bib.info main.bib
	rm -f main.log main.lot main.dvi main.aux main.out main.toc main.lof
	rm -f *~ tex/*~ tex/*.aux
	find ./results/ -name *.eps -exec rm {} \;
	find ./retults/ -name *.tex -exec rm {} \;
