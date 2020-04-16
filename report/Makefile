AUXDIR=build
FLAGS=-bibtex -cd -auxdir=$(AUXDIR) -outdir=$(AUXDIR)
MAINFILE=src/report.tex

.PHONY: all report clean cleanall

all: report
report: $(MAINFILE)
	latexmk $(FLAGS) -pdf $(MAINFILE) \
	  && mv src/build/report.pdf .

clean:
	latexmk $(FLAGS) -c $(MAINFILE)

cleanall:
	latexmk $(FLAGS) -C $(MAINFILE)
