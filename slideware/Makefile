OUT_DIR = out

VIEWER ?= evince $(VIEWER_OPTS)

LATEX_OPTS = --shell-escape
LATEX_OPTS += --interaction=batchmode

SVGTOLATEX ?= inkscape
SVGTOLATEX_OPTS ?= -z -T --export-area-drawing
SVGTOLATEX_IN ?= --file=
SVGTOLATEX_OUT ?= --export-pdf=

VPATH = .:./$(OUT_DIR)

all: pdf

# Specific view targets goes here

view-overview: pdf
	$(VIEWER) $(OUT_DIR)/overview/overview.pdf

view-intro: pdf
	$(VIEWER) $(OUT_DIR)/intro/intro.pdf

view-boot: pdf
	$(VIEWER) $(OUT_DIR)/boot/machinedescriptions_n_boot.pdf

view-sample: pdf
	$(VIEWER) $(OUT_DIR)/sample/presentation_1.pdf

view-interrupts: pdf
	$(VIEWER) $(OUT_DIR)/interrupts/memory_interrupts_scheduling.pdf

view-debug: pdf
	$(VIEWER) $(OUT_DIR)/debug/debug.pdf

# ---

view: pdf
	$(VIEWER) $(wildcard $(OUT_DIR)/*/*.pdf)

svg: $(addsuffix .pdf, $(basename $(shell find ./ -type f -name *.svg)))
pdf: svg $(addsuffix .pdf, $(basename $(shell find ./ -type f -name *.tex)))


%.pdf: %.svg
	$(eval DIR=$(dir $?))
	$(eval TARGET=$(addsuffix .pdf, $(basename $@)))
	@echo "* Processing $?"
	@mkdir -p $(OUT_DIR)/$(DIR)
	@$(SVGTOLATEX) $(SVGTOLATEX_OPTS) $(SVGTOLATEX_IN)$< $(SVGTOLATEX_OUT)$(OUT_DIR)/$(TARGET) >/dev/null 2>&1

%.pdf: %.tex
	$(eval DIR=$(dir $?))
	$(eval FILE=$(patsubst $(DIR)%,%, $?))
	@echo "* Processing $?"
	@mkdir -p $(OUT_DIR)/$(DIR)
	@rubber --pdf --into $(OUT_DIR)/$(DIR) $?

clean:
	@test -d $(OUT_DIR) && rm -r $(OUT_DIR) || echo "Nothing to do"
