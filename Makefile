# To run this file, just type:   make
LATEX = pdflatex
BIBTEX = bibtex

TARGET = thesis 
BIBFILE = $(TARGET)

all: *.tex 
	$(LATEX) $(TARGET).tex
	$(BIBTEX) $(BIBFILE)
	$(LATEX) $(TARGET).tex
	$(LATEX) $(TARGET).tex

clean:
	rm -f *.aux *.log *.blg *.bbl *.snm *.out *.toc *.log *.nav
