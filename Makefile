VERSION := $(shell git rev-parse --short=7 HEAD)
OUTNAME := resume_$(VERSION)

all:
	pdflatex -jobname=$(OUTNAME) resume.tex && open $(OUTNAME).pdf

clean:
	rm -f *.pdf
	rm -f *.aux
	rm -f *.log
	rm -f *.out
