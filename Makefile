RESUME_EN=my-resume-en
RESUME_TW=my-resume-zh_tw
RESUME_SLIDES=slides
RESUME_INTRO=self-intro
LATEX_BUILD_CMD=xelatex -synctex=1 -shell-escape -interaction=nonstopmode

default: en

en:
	$(LATEX_BUILD_CMD) $(RESUME_EN).tex
zh:
	$(LATEX_BUILD_CMD) $(RESUME_TW).tex
slides:
	$(LATEX_BUILD_CMD) $(RESUME_SLIDES).tex
intro:
	$(LATEX_BUILD_CMD) $(RESUME_INTRO).tex
clean:
	rm -rf *.aux *.log *.gz *.bbl *.blg *.lof *.lot *.toc *.out