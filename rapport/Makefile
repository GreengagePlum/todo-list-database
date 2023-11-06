.PHONY: all clean

all: rapport.pdf

rapport.pdf: rapport.tex mld.tex contraintes.tex modeleEA.png
	latexmk -pdf rapport.tex 

mld.tex: ../schema/modeleEA_mld_modified.md
	pandoc ../schema/modeleEA_mld_modified.md -t html | sed 's/ins/u/g' | pandoc -f html -t latex | sed 's/\\tightlist//g' | sed 's/uline/underline/g' > mld.tex

contraintes.tex: ../schema/contraintes.md
	pandoc ../schema/contraintes.md -t latex | sed 's/\\tightlist//g' > contraintes.tex

modeleEA.png: ../schema/modeleEA.svg
	inkscape --export-filename=modeleEA.png ../schema/modeleEA.svg -d 500

clean:
	rm -f mld.tex contraintes.tex modeleEA.png rapport.pdf
	latexmk -c rapport.tex
