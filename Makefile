#
# Makefile for WangFonts
#

FONTNAME = wangfonts

all: main clean

main:
	mkdir -p $(FONTNAME)
	cp TrueType/*.ttf $(FONTNAME)/
	cp COPYING $(FONTNAME)/
	tar czvf wangfonts-1.3.0.tar.gz $(FONTNAME)/*.*

clean:
	rm -rf ./$(FONTNAME)

distclean: clean
	rm wangfonts-*.tar.gz
