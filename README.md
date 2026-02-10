Revision info
=============
* $LastChangedDate: 2024-11-27 18:43:34 $
* $LastChangedRevision: 1 $
* $LastChangedBy: gava $
* $Id: README.md 1 2024-10-28 08:59:34Z gava $

General Notes
=============
The directory contains templates for posters, slides and reports for EPISEN's students (ITS, IS, ISBS). [LaTeX Poster Template][].

The sources are a bit commented. 


Software Installation
=====================
1. LaTeX
	* ** You must have  http://www.miktex.org on Windows **
	* ** OR http://www.tug.org/mactex/ on MacOS(Apple) **
	* ** OR TeXlive (see "apt-get install texlive") on Linux.** 
2. Make, a simple tool to compile files
	* https://gnuwin32.sourceforge.net/downlinks/make.php
	* Be sure to add the following directory to your system PATH:
		C:\Program Files (x86)\GnuWin32\bin
	For this, go to the "variables d'environement" and update the PATH if needed 
3. For writting your LaTeX files, I recommand:
	* https://www.xm1math.net/texmaker/index_fr.html
	* OR plugin Visual Studio Code (https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)
	* OR Sublime Text https://www.sublimetext.com/
	
(IMPORTANT) Template configuration
=====================
1. First, in the file "departementEPISE.tex", choose your departement and the language of the manuscrit with "language.tex" (french or english, WARNING: if you change of language, please execute "make clean" after the change)
2. Update the file image/logos/entrepriseLogo.png with the one of your firm where you bellow (or laboratory); 
3. Update the files "auteur.tex", "titre.tex", "keywords.tex" accordingly with their right informations 
4. Update the file "sujet.tex", it is a small text which will be embedded in all the PDF files
5. ** Modying the 4 "Makefile" files (one Makefile inside each subdirectory) to adapt them to Windows if necessary (for Macs/Linux, nothing needs to be done) **

--------------------------------------------------
The current files contain many some usefull exemples such as graph, code sources, mathematical notations/theorem etc. You can also find
many LaTeX on internet (and videos on YouTube). https://tex.stackexchange.com/ is also a good help where looking for some informations.

--------------------------------------------------
You can now work on the 3 subdirectories:
1. Manuscrit for you "memoire"
2. Poster for the ... poster
3. Diaporama for the slides (oral presentation)


Manuscrit
=====================
1. In the subdirectory Manuscrit, you must update the files ^^ and so complete your manuscrit with your own text (no chatGPT please ^^) and images and data !
2. Do not forget to update:
	* the bibtex file "bibliographie.bib"  (see the exemples)
	* the glossary file "Manuscrit/glossaire.tex" (see the exemples)
3. You can compile the sources by writing:
	* "make all"   (or "make manuscrit")
	* That will generate all the needed files and a new PDF (which stay in the subdirectory)
4. After a change (update the manuscrit.pdf file), please write:
	* "make fast"
5. After a major change (update the main.pdf file and tempory files)
	* "make all"
6. You can also:
 * clean (destroy tempory files) with: "make clean"
 * Clean and erase all generated pdf files: "make allClean"
	

Poster
=====================
1. In the file "poster.tex" of the subdirectory "Poster", according to your need, change the document class options as follows:
	* \documentclass[a0paper,landscape]{baposter}
	* (`a4paper` also worked for me, ain't sure about the others).
2. Resize the entrepriseLogo.png in the "poster.tex" file if needed
3. In the same way, in the subdirectories "Poster" and "Diaporama", you can compile with "make poster" (or "make diaporama", in the accordingly subdirectories), clean with "make clean" (or "make allClean") after having updating your files ^^. You can also compile with "make fast" after a small change, or "make all" after many changes.
4. Complete the poster with your own text (it can take 2-3 hours if the manuscrit is right written)


Diaporama
=====================
1. Resize the entrepriseLogo.png in the "diaporama.tex" file if needed
2. Complete the slides with your own text (it can take 4-5 hours if the manuscrit is right written).


Subdirectories ShareText and images
=====================
1. It contains some texts and data that must be shared by all your documents (the manuscrit, the poster and the diaporama). The idea is that when you modified a file in this subdirectory then all your documents will be affected (after a compile time).
2. In the same way, you must share your images in the subdirectory "images" (which also contains the EPISEN/UPEC's logos)


To finish
=====================
1. In the parent directory, write
	* "make allClean"
	* "make diplome"  (compile all you files, that can be long)
    * You will obtain 3 files in the subdirectory "PDF" : manuscrit.pdf, poster.pdf, diaporama.pdf
    * good luck !



[LaTeX Poster Template]: http://www.brian-amberg.de/uni/poster/
                         "Brian's Template"
