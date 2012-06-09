#
# Makefile for WangFonts
#

FONTNAME = wangfonts

all: main

main:
	mkdir -p $(FONTNAME)
	cp TrueType/*.ttf $(FONTNAME)/
	cp COPYING license.txt $(FONTNAME)/
	tar czvf wangfonts-1.3.0.tar.gz $(FONTNAME)/*.*
	zip $(FONTNAME)-1.3.0.zip $(FONTNAME)/*.*

clean:
	rm -rf ./$(FONTNAME)

distclean: clean
	rm $(FONTNAME)-*.tar.gz
	rm $(FONTNAME)-*.zip
