SLIDES_TEX = slides.tex
SLIDES_PDF = slides.pdf
PDFS = SLIDES_PDF
LATEX = pdflatex -shell-escape
LATEX_SLIDES = $(LATEX) $(SLIDES_TEX)
LATEX_EXTRA = $(LATEX) $(EXTRA_TEX)
SPELL = aspell check -len_GB

.PHONY: all slides

slides: slides.pdf

slides.pdf: $(SLIDES_TEX) diagrams/*.svg
	$(LATEX_SLIDES)
	$(LATEX_SLIDES)
	$(LATEX_SLIDES)

