.PHONY: default epub open clean

EBOK   = Iliaden.epub
CSS    = css/style.css
FONT   = fonter/*.ttf
META   = meta.md
TEKST  = tekst/*.md
BILDER = bilder/*.png

default: epub

epub: $(EBOK)

$(EBOK): $(TEKST) $(BILDER)
	pandoc --css $(CSS) --epub-embed-font=$(FONT) -o $(EBOK) $(META) $(TEKST)

open: $(EBOK)
	open $(EBOK)

clean:
	rm Iliaden.epub
