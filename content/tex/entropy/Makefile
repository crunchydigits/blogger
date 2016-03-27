SHELL:=/bin/bash
latex_file:=entropy

.PHONY : clean

clean:
	-@rm $(latex_file).aux 2>/dev/null || true
	-@rm $(latex_file).log 2>/dev/null || true

cleanAll: clean
	-@rm $(latex_file).pdf 2>/dev/null || true

$(latex_file).pdf : $(latex_file).tex
	pdflatex $< && cp $(latex_file).pdf ../../pdf/
	

all : $(latex_file).pdf
