# Pour les LINUX et Mac/Apple !
# RM=rm

# Pour les WINDOWS !  (pauvre de vous, merci d'enlever les dieses ci-dessous et de mettre des dièses au dessus
RM=del


diaporama: all

all:
	pdflatex diaporama.tex
	pdflatex diaporama.tex
	pdflatex diaporama.tex

fast:
	pdflatex diaporama.tex

clean:
	$(RM) -f *.aux *.bbl *.blg *.log *.lpr *.maf *.mtc* *.out *.xml *.bcf *.toc *.nav *.snm
	
allClean: clean
	$(RM) -f *.pdf
