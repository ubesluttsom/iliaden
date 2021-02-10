.PHONY: default epub open clean check

EBOK   = Iliaden.epub
CSS    = css/style.css
FONT   = fonter/*.ttf
META   = meta.md
TEKST  = tekst/*.md
BILDER = bilder/*.png
ASPELL = --encoding=utf-8 --home-dir=./ordliste --personal=ordliste.utf-8.add --lang=no-nb --mode=markdown --run-together --run-together-limit=3
CHECK  = tekst/00-forord.md tekst/01-sang.md tekst/02-sang.md

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
