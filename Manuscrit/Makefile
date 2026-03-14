# Pour les LINUX et Mac/Apple !
RM=rm

# Pour les WINDOWS !  (pauvre de vous, merci d'enlever les dieses ci-dessous et de mettre des dièses au dessus
# RM=del


fast:
	pdflatex manuscrit.tex

manuscrit: all

memoire: manuscrit

all:
	pdflatex manuscrit.tex
	pdflatex manuscrit.tex
	#a priori inutile
	#makeglossaries manuscrit
	#makeindex -s "manuscrit.ist" -t "manuscrit.glg" -o "manuscrit.gls" "manuscrit.glo"
    #bibtex manuscrit
	biber manuscrit   
	pdflatex manuscrit.tex
	pdflatex manuscrit.tex

clean:
	$(RM) -f manuscrit.pdf manuscrit.aux  manuscrit-blx.bib manuscrit.lot manuscrit.mtc0 manuscrit.glo manuscrit.gls manuscrit.ilg manuscrit.ind manuscrit.bcf manuscrit.glg manuscrit.ist  manuscrit.run.xml manuscrit.bbl manuscrit.lof manuscrit.maf manuscrit.out manuscrit.blg manuscrit.lo manuscrit.mtc manuscrit.ptc manuscrit.toc manuscrit.log manuscrit.alg manuscrit.acn manuscrit.acr manuscrit.mtc* manuscrit.xdy *.log manuscrit.auxlock *.md5
	
allClean: clean
	$(RM) -f *.pdf


	#cp manuscrit.pdf manuscrit_$(shell date +'%y.%m.%d_%H:%M:%S').pdf
