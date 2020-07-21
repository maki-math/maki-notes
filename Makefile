.PHONY: all
all: analysis-course-note

.PHONY: ci
ci: analysis-course-note-ci

.PHONY: analysis-course-note
analysis-course-note:
	cd 'analysis-course-note' && $(MAKE)

.PHONY: analysis-course-note-ci
analysis-course-note-ci:
	cd 'analysis-course-note' && $(MAKE) ci
