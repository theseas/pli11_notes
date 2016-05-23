# Author: Theseas Maroulis

all: ergasia check_folders
	mv notes.pdf bin/notes.pdf
	mv *.log logs/
	mv *.out logs/

ergasia: apantiseis.tex
	xelatex -halt-on-error -interaction nonstopmode notes.tex | tail -n 20

check_folders:
	mkdir -p bin
	mkdir -p logs
