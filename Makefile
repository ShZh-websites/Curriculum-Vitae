LATEXMK_OPT = -quiet -file-line-error -halt-on-error -interaction=nonstopmode
LATEXMK_OPT_PVC = $(LATEXMK_OPT) -pvc

.PHONY: all clean cleanall

all: en-US.tex zh-CN.pdf

en-US.pdf: en-US.tex common.cls
	latexmk $(LATEXMK_OPT) $<

zh-CN.pdf: zh-CN.tex common.cls
	latexmk $(LATEXMK_OPT) $<

clean:
	latexmk -c -silent en-US.tex 2> /dev/null

cleanall:
	latexmk -C -silent en-US.tex 2> /dev/null
