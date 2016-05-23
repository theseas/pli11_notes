# Author: Theseas Maroulis

all: notes check_folders
	mv notes.pdf bin/notes.pdf
	mv *.log logs/
	mv *.out logs/

notes: notes.tex
	xelatex -halt-on-error -interaction nonstopmode notes.tex | tail -n 20

check_folders:
	mkdir -p bin
	mkdir -p logs
