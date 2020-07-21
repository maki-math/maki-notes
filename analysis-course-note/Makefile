CC = latexmk
SRC_DIR = .
OUT_DIR = ../output/
JOB_NAME = analysis-course-note
# SRC = $(shell find $(SRC_DIR) -name '*.tex')
MAIN = "main.tex"

.PHONY: build
build: $(SRC)
	# Builds the main.tex file to current dir
	$(CC) -r .latexmkrc -synctex=1 -jobname=$(JOB_NAME) -g $(MAIN)

.PHONY: clean
clean:
	# Clean the auxillary files
	$(CC) -r .latexmkrc -c -jobname=$(JOB_NAME) $(MAIN)

.PHONY: ci
ci: build clean
	test -d $(OUT_DIR) || mkdir $(OUT_DIR)
	mv $(JOB_NAME).pdf $(OUT_DIR)
