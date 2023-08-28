MSFILES =               \
    0.main.tex          \
	1.abstract.tex 		\
	2.introduction.tex	\
	3.methods.tex       \
	4.results.tex       \
	5.discussion.tex    \
	6.thanks.tex        \
	7.refs.bib

.PHONY: all clean

all: manuscript.pdf

manuscript.pdf: $(MSFILES)
	pdflatex 0.main.tex
	bibtex 0.main.aux
	pdflatex 0.main.tex
	pdflatex 0.main.tex

clean:
	rm *.aux *.log *.bbl *.blg

deepclean:
	rm *.pdf