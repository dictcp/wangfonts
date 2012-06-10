#
# Makefile for WangFonts
#

FONTNAME = wangfonts
VER = 1.3.0
ARCDIR = $(FONTNAME)-$(VER)

all: main

main:
	mkdir -p $(ARCDIR)
	cp TrueType/*.ttf $(ARCDIR)/
	cp COPYING license.txt $(ARCDIR)/
	tar czvf $(ARCDIR).tar.gz $(ARCDIR)/*.*
	zip $(ARCDIR).zip $(ARCDIR)/*.*

clean:
	rm -rf ./$(ARCDIR)

distclean: clean
	rm $(ARCDIR).tar.gz
	rm $(ARCDIR).zip
