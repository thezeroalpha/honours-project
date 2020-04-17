LMK_AUXDIR=build
MAINFILE=src/report.tex

LMK_FLAGS=-bibtex -cd -auxdir=$(LMK_AUXDIR) -outdir=$(LMK_AUXDIR)
SRCFILES=$(wildcard $(dir $(MAINFILE))*.tex)
PDFNAME:=$(basename $(notdir $(MAINFILE))).pdf

.PHONY: all clean cleanall

all: $(PDFNAME)

$(PDFNAME): $(dir $(MAINFILE))$(LMK_AUXDIR)/report.pdf
	mv $(dir $(MAINFILE))$(LMK_AUXDIR)/report.pdf ./$(PDFNAME)

$(dir $(MAINFILE))$(LMK_AUXDIR)/report.pdf: $(SRCFILES)
	latexmk $(LMK_FLAGS) -pdf $(MAINFILE)

clean:
	latexmk $(LMK_FLAGS) -c $(MAINFILE)

cleanall:
	latexmk $(LMK_FLAGS) -C $(MAINFILE)
	rm ./$(PDFNAME)
