LATEXMK_OPT = -quiet -file-line-error -halt-on-error -interaction=nonstopmode
LATEXMK_OPT_PVC = $(LATEXMK_OPT) -pvc
TRAGET = en-US.tex zh-CN.tex

en-US.pdf: en-US.tex common.cls
	latexmk $(LATEXMK_OPT) $<

zh-CN.pdf: zh-CN.tex common.cls
	latexmk $(LATEXMK_OPT) $<

.PHONY: all clean cleanall

all: $(TRAGET)

clean:
	latexmk -c -silent $(TRAGET) 2> /dev/null

cleanall:
	latexmk -C -silent $(TRAGET) 2> /dev/null
