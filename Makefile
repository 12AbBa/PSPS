all: set01.pdf set02.pdf

%.pdf: %.tex preamble.tex homework.cls
	pdflatex $<
	rm -f sets.aux
	cat *.aux > sets.aux
	cat sets.aux > $(patsubst %.tex,%.aux,$<)
	pdflatex $<
	rm -f sets.aux

clean:
	rm -f set01.pdf set02.pdf
