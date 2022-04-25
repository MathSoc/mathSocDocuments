LATEX:=pdflatex
LATEXOPT:=--shell-escape
NONSTOP:=--interaction=nonstopmode

LATEXMK:=latexmk
LATEXMKOPT:=-pdf
CONTINUOUS:=-pvc

ANNOTATED:=annotated.tex
PUBLIC:=public
FINANCE:=./finance.tex
GETTING_INVOLVED:=./getting-involved.tex
HR:=./hr.tex
MEETINGS:=./meetings.tex
OPERATING:=./operating.tex
PLANNING:=./planning.tex

mkfile_path:=$(abspath $(lastword $(MAKEFILE_LIST)))

MAIN:=$(notdir $(patsubst %/,%,$(dir $(mkfile_path))))
ANNOTATED_OUT:=$(MAIN)-annotated
PUBLIC_OUT:=$(MAIN)-public
FINANCE_OUT:=$(MAIN)-finance
GETTING_INVOLVED_OUT:=$(MAIN)-getting-involved
HR_OUT:=$(MAIN)-hr
MEETINGS_OUT:=$(MAIN)-meetings
OPERATING_OUT:=$(MAIN)-operating
PLANNING_OUT:=$(MAIN)-planning
COMPILATION_FOLDER:=bin
DIST_FOLDER:=dist

SOURCES:=$(DIST_FOLDER) $(COMPILATION_FOLDER)
SOURCES_C:=$(SOURCES) $(ANNOTATED) Makefile
SOURCES_P:=$(SOURCES) $(PUBLIC) Makefile


all: public finance getting-involved  hr meetings operating planning 

.refresh:
	touch .refresh

$(DIST_FOLDER):
	mkdir ./dist

$(COMPILATION_FOLDER):
	mkdir ./bin

watch: .refresh $(SOURCES_C) 
	$(LATEXMK) $(LATEXMKOPT) $(CONTINUOUS) \
		-pdflatex="$(LATEX) $(LATEXOPT) $(NONSTOP) %O %S" $(ANNOTATED) \
		-jobname=$(COMPILATION_FOLDER)/$(ANNOTATED_OUT)

public: $(SOURCES_P)
	$(LATEXMK) $(LATEXMKOPT) \
		-pdflatex="$(LATEX) $(LATEXOPT) $(NONSTOP) %O %S" $(PUBLIC) \
		-jobname=./$(COMPILATION_FOLDER)/$(PUBLIC_OUT)

finance: $(SOURCES_P)
	$(LATEXMK) $(LATEXMKOPT) \
		-pdflatex="$(LATEX) $(LATEXOPT) $(NONSTOP) %O %S" $(FINANCE) \
		-jobname=./$(COMPILATION_FOLDER)/$(FINANCE_OUT)
	mv ./$(COMPILATION_FOLDER)/$(FINANCE_OUT).pdf ./$(DIST_FOLDER)/$(FINANCE_OUT).pdf

getting-involved: $(SOURCES_P)
	$(LATEXMK) $(LATEXMKOPT) \
		-pdflatex="$(LATEX) $(LATEXOPT) $(NONSTOP) %O %S" $(GETTING_INVOLVED) \
		-jobname=./$(COMPILATION_FOLDER)/$(GETTING_INVOLVED_OUT)
	mv ./$(COMPILATION_FOLDER)/$(GETTING_INVOLVED_OUT).pdf ./$(DIST_FOLDER)/$(GETTING_INVOLVED_OUT).pdf

hr: $(SOURCES_P)
	$(LATEXMK) $(LATEXMKOPT) \
		-pdflatex="$(LATEX) $(LATEXOPT) $(NONSTOP) %O %S" $(HR) \
		-jobname=./$(COMPILATION_FOLDER)/$(HR_OUT)
	mv ./$(COMPILATION_FOLDER)/$(HR_OUT).pdf ./$(DIST_FOLDER)/$(HR_OUT).pdf

meetings: $(SOURCES_P)
	$(LATEXMK) $(LATEXMKOPT) \
		-pdflatex="$(LATEX) $(LATEXOPT) $(NONSTOP) %O %S" $(MEETINGS) \
		-jobname=./$(COMPILATION_FOLDER)/$(MEETINGS_OUT)
	mv ./$(COMPILATION_FOLDER)/$(MEETINGS_OUT).pdf ./$(DIST_FOLDER)/$(MEETINGS_OUT).pdf

operating: $(SOURCES_P)
	$(LATEXMK) $(LATEXMKOPT) \
		-pdflatex="$(LATEX) $(LATEXOPT) $(NONSTOP) %O %S" $(OPERATING) \
		-jobname=./$(COMPILATION_FOLDER)/$(OPERATING_OUT)
	mv ./$(COMPILATION_FOLDER)/$(OPERATING_OUT).pdf ./$(DIST_FOLDER)/$(OPERATING_OUT).pdf

planning: $(SOURCES_P)
	$(LATEXMK) $(LATEXMKOPT) \
		-pdflatex="$(LATEX) $(LATEXOPT) $(NONSTOP) %O %S" $(PLANNING) \
		-jobname=./$(COMPILATION_FOLDER)/$(PLANNING_OUT)
	mv ./$(COMPILATION_FOLDER)/$(PLANNING_OUT).pdf ./$(DIST_FOLDER)/$(PLANNING_OUT).pdf

clean:
	rm -rf *~ *.tmp
	rm -f *.bbl *.blg *.aux *.end *.fls *.log *.out *.fdb_latexmk
	rm -rf $(COMPILATION_FOLDER)

debug:
	$(LATEX) $(LATEXOPT) $(MAIN)

.PHONY: clean force public annotated watch