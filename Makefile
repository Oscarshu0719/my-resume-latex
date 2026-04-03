RESUME_EN=my-resume-en
RESUME_TW=my-resume-zh_tw
RESUME_ASPEED=my-resume-aspeed
RESUME_SLIDES=slides
RESUME_INTRO=self-intro

DIR_SRC=./src
DIR_DST=./docs
DIR_STYLES=./src/styles

LATEX_ENGINE = pdflatex

.PHONY: default en zh slides intro clean

LATEX_BUILD_CMD = TEXINPUTS=$(DIR_STYLES): $(LATEX_ENGINE) -synctex=1 -shell-escape -interaction=nonstopmode -output-directory $(DIR_DST)

default: en

zh: LATEX_ENGINE = xelatex
intro: LATEX_ENGINE = xelatex
aspeed: LATEX_ENGINE = xelatex

en:
	$(LATEX_BUILD_CMD) $(DIR_SRC)/$(RESUME_EN).tex 
zh:
	$(LATEX_BUILD_CMD) $(DIR_SRC)/$(RESUME_TW).tex
aspeed:
	$(LATEX_BUILD_CMD) $(DIR_SRC)/$(RESUME_ASPEED).tex
slides:
	$(LATEX_BUILD_CMD) $(DIR_SRC)/$(RESUME_SLIDES).tex
intro:
	$(LATEX_BUILD_CMD) $(DIR_SRC)/$(RESUME_INTRO).tex
clean:
	find $(DIR_DST) -type f ! -name "*.pdf" -delete