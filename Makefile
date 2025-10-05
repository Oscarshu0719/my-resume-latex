RESUME_EN=my-resume-en
RESUME_TW=my-resume-zh_tw
RESUME_SLIDES=slides
RESUME_INTRO=self-intro

DIR_SRC=./src
DIR_DST=./docs
DIR_STYLES=./src/styles

LATEX_BUILD_CMD=TEXINPUTS=$(DIR_STYLES): xelatex -synctex=1 -shell-escape -interaction=nonstopmode -output-directory $(DIR_DST)

default: en

en:
	$(LATEX_BUILD_CMD) $(DIR_SRC)/$(RESUME_EN).tex 
zh:
	$(LATEX_BUILD_CMD) $(DIR_SRC)/$(RESUME_TW).tex
slides:
	$(LATEX_BUILD_CMD) $(DIR_SRC)/$(RESUME_SLIDES).tex
intro:
	$(LATEX_BUILD_CMD) $(DIR_SRC)/$(RESUME_INTRO).tex
clean:
	find $(DIR_DST) -type f ! -name "*.pdf" -delete