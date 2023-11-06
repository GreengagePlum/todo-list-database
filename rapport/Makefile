.PHONY: all clean

all: rapport archive

rapport: rapport.pdf

rapport.pdf: rapport.tex mld.tex contraintes.tex modeleEA.png
	latexmk -pdf rapport.tex 

mld.tex: ../schema/modeleEA_mld_modified.md
	pandoc ../schema/modeleEA_mld_modified.md -t html | sed 's/ins/u/g' | pandoc -f html -t latex | sed 's/\\tightlist//g' | sed 's/uline/underline/g' > mld.tex

contraintes.tex: ../schema/contraintes.md
	pandoc ../schema/contraintes.md -t latex | sed 's/\\tightlist//g' > contraintes.tex

modeleEA.png: ../schema/modeleEA.svg
	inkscape --export-filename=modeleEA.png ../schema/modeleEA.svg -d 600

archive: ../ERKEN_Efe__Projet_Liste_de_Tâches.tar.gz

../ERKEN_Efe__Projet_Liste_de_Tâches.tar.gz: rapport.pdf ../schema/modeleEA.svg ../sql/
	tar -cvzf $@ -C .. rapport/rapport.pdf schema/modeleEA.svg sql/

clean:
	rm -f mld.tex contraintes.tex modeleEA.png rapport.pdf ../ERKEN_Efe__Projet_Liste_de_Tâches.tar.gz
	latexmk -c rapport.tex
