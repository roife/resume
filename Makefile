all: clean zh
zh: resume-cn.tex
	xelatex -synctex=1 -interaction=nonstopmode -file-line-error -pdf resume-cn.tex

ifeq ($(OS),Windows_NT)
  # on Windows
  RM = cmd //C del
else
  # on Unix/Linux
  RM = rm -f
endif

clean:
	$(RM) *.log *.aux *.bbl *.blg *.synctex.gz *.out *.toc *.lof *.idx *.ilg *.ind *.pdf *.cut *.fdb_latexmk *.fls

clean-tex:
	$(RM) resume-cn.tex
