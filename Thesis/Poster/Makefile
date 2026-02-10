# Pour les LINUX et Mac/Apple !
# RM=rm

# Pour les WINDOWS !  (pauvre de vous, merci d'enlever les dieses ci-dessous et de mettre des dièses au dessus
RM=del

poster: all

all:
	pdflatex poster.tex
	pdflatex poster.tex
	biber poster
    #bibtex poster
	pdflatex poster.tex
	pdflatex poster.tex

fast:
	pdflatex poster.tex

clean:
	$(RM) -f *.aux *.bbl *.blg *.log *.lpr *.maf *.mtc* *.out *.xml *.bcf poster.pdf poster-blx.bib

allClean: clean
	$(RM) -f *.pdf

