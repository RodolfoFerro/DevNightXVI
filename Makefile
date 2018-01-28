TEX_FILE		 = hubot.tex
PDF_FILE		 = hubot.pdf
CACHE_DIR   := $(shell pwd)/.latex-cache
COMPILE_TEX := latexmk -xelatex -output-directory=$(CACHE_DIR)

run:
	$(COMPILE_TEX)
	@cp $(CACHE_DIR)/$(notdir $(PDF_FILE)) $(PDF_FILE)
	@rm -rf "$(CACHE_DIR)"
