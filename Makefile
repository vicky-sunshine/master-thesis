TEX = /Library/TeX/texbin/pdflatex
BIBTEX = /Library/TeX/texbin/bibtex
TEXSRC = template.tex
BIBSRC = template
RM = rm -f

pdf:
	$(TEX) $(TEXSRC)
	$(BIBTEX) $(BIBSRC)
	$(TEX) $(TEXSRC)
	$(TEX) $(TEXSRC)

clean:
	$(RM) *.log *.aux *.dvi *.lof *.lot *.toc *.bbl *.blg *.pdf *.loa
