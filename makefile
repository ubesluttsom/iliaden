.PHONY: default epub open clean check

EBOK   = Iliaden.epub
CSS    = css/style.css
FONT   = fonter/*.ttf
META   = meta.md
TEKST  = tekst/*.md
BILDER = bilder/*.png
ASPELL = --home-dir=. --personal=ordbok.txt --lang=no-nb --mode=markdown
CHECK  = tekst/00-forord.md tekst/01-sang.md tekst/16-sang.md

default: epub

epub: $(EBOK)

$(EBOK): $(TEKST) $(BILDER)
	pandoc --css $(CSS) --epub-embed-font=$(FONT) -o $(EBOK) $(META) $(TEKST)

check: $(CHECK)
	for fil in $(CHECK); do aspell $(ASPELL) check $$fil; done

open: $(EBOK)
	open $(EBOK)

clean:
	rm Iliaden.epub
