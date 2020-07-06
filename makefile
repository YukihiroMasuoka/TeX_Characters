#LaTeX用MakeFile
TARGET = characters.pdf
LATEX = latexmk -c -gg -pdflua
MAINFILE = characters

.DEFAULT_GOAL = all

.PHONY: all
all: $(TARGET)
$(TARGET): $(MAINFILE).ltx 
	$(LATEX) $<
	make clean

.PHONY: clean
clean:; rm -f *.aux *.nav *.out *.snm *.toc *~ *.dvi *.fls *.fdb_latexmk *.synctex.gz *.bbl *.blg
