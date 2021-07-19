.PHONY: default epub html open clean check

EBOK     = Iliaden.epub
HTML     = Iliaden.html
CSS      = css/style.css
FONT     = fonter/*.ttf
META     = meta.pandoc
TEKST    = tekst/*.pandoc
BILDER   = bilder/*.png
ORDLISTE = ./ordliste/ordliste.utf-8.add
ASPELL   = --encoding=utf-8 --home-dir=./ordliste --personal=$(ORDLISTE) \
           --lang=no-nb --mode=markdown # --run-together --run-together-limit=3
CHECK    = $(TEKST)

default: epub

epub: $(EBOK)
html: $(HTML)

$(EBOK): $(TEKST) $(BILDER) $(CSS) $(META) $(FONT)
	pandoc --from markdown --to epub --css $(CSS) --epub-embed-font=$(FONT) \
	       -o $(EBOK) $(META) $(TEKST)

$(HTML): $(TEKST) $(BILDER) $(META)
	pandoc --from markdown --to html --css $(CSS) --table-of-contents \
	       -o $(HTML) $(META) $(TEKST) --standalone

check: $(CHECK)
	sed -i '/^#/d' $(ORDLISTE) # slett skigaardslinjer
	for fil in $(CHECK); do aspell $(ASPELL) check $$fil; done

open: $(EBOK)
	open $(EBOK)

clean:
	rm -f Iliaden.epub
	rm -f Iliaden.html
