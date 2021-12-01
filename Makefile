LATEXMK_OPT = -quiet -file-line-error -halt-on-error -interaction=nonstopmode
# LATEXMK_OPT_PVC = $(LATEXMK_OPT) -pvc # No need to enable realtime preview
SRC = $(wildcard *.tex)
DST = $(SRC:.tex=.pdf)

en-US.pdf: en-US.tex
	-@latexmk $(LATEXMK_OPT) $<

zh-CN.pdf: zh-CN.tex
	-@latexmk $(LATEXMK_OPT) $<

.PHONY: all view clean cleanall

ifeq ($(OS),Windows_NT)
  # on Windows
  OPEN = start
else
  # on Unix/Linux
  OPEN = open
endif

all: $(DST)

view-cn: zh-CN.pdf
	$(OPEN) $<

view-en: en-US.pdf
	$(OPEN) $<

clean:
	-@latexmk -c -silent $(SRC) 2> /dev/null

cleanall:
	-@latexmk -C -silent $(SRC) 2> /dev/null
