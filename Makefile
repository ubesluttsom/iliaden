.PHONY: default epub html open clean check

EBOK   = Iliaden.epub
HTML   = Iliaden.html
CSS    = css/style.css
FONT   = fonter/*.ttf
META   = meta.pandoc
TEKST  = tekst/*.pandoc
BILDER = bilder/*.png
ASPELL = --encoding=utf-8 --home-dir=./ordliste --personal=./ordliste/ordliste.utf-8.add \
         --lang=no-nb --mode=markdown # --run-together --run-together-limit=3
CHECK  = $(TEKST)

default: epub

epub: $(EBOK)
html: $(HTML)

$(EBOK): $(TEKST) $(BILDER)
	pandoc --from markdown --to epub --css $(CSS) --epub-embed-font=$(FONT) \
	       -o $(EBOK) $(META) $(TEKST)

$(HTML): $(TEKST) $(BILDER)
	pandoc --from markdown --to html --css $(CSS) --table-of-contents \
	       -o $(HTML) $(META) $(TEKST) --standalone

check: $(CHECK)
	sed -i '/^#/d' ordliste/ordliste.utf-8.add # slett skigaardslinjer
	for fil in $(CHECK); do aspell $(ASPELL) check $$fil; done

open: $(EBOK)
	open $(EBOK)

clean:
	rm Iliaden.epub
	rm Iliaden.html
