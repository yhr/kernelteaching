OUT_DIR = out
VIEWER ?= evince $(VIEWER_OPTS)
LATEX_OPTS = --shell-escape
#LAYEX_OPTS += --interaction=nonstopmode
LATEX_OPTS += --interaction=batchmode
VPATH = .:./$(OUT_DIR)

all: pdf

# Specific view targets goes here

view-intro: pdf
	$(VIEWER) $(wildcard $(OUT_DIR)/intro/*.pdf)

view-sample: pdf
	$(VIEWER) $(wildcard $(OUT_DIR)/sample/*.pdf)

# ---

view: pdf
	$(VIEWER) $(wildcard $(OUT_DIR)/*/*.pdf)

pdf: $(addsuffix .pdf, $(basename $(wildcard */*.tex)))

%.pdf: %.tex
	$(eval DIR=$(dir $?))
	$(eval FILE=$(patsubst $(DIR)%,%, $?))
	@echo "* Processing $?"
	@mkdir -p $(OUT_DIR)/$(DIR)
	@cd $(DIR) && pdflatex $(LATEX_OPTS) --output-directory=../$(OUT_DIR)/$(DIR) $(FILE) 

clean_files: $(wildcard */*.pdf) $(wildcard */*.pdf_tex)
	rm $?

clean: clean_files
	rm -r $(OUT_DIR)

