# Iliaden

Denne digitale utgaven er lagd etter [Nasjonalbibliotekets
skann](https://www.nb.no/items/URN:NBN:no-nb_digibok_2009102100002) av
førsteutgaven av P. Østbyes oversettelse fra 1920. Teksten er etter beste evne
transkribert tegn for tegn fra originalen. Oversettelsen, og denne eboken,
tilfaller allmannseie, og kan deles og endres fritt.

> Iliaden er et gresk epos i 24 sanger, tillagt Homer. Iliaden skildrer 51
> dager i det 10. år av grekernes krig mot Troja, som ble forårsaket av at den
> trojanske kongesønn Paris røvet Helena, spartanerkongen Menelaos' hustru. Et
> hovedmotiv som gir den mangfoldige handlingen en fast struktur, er striden
> mellom grekernes tapreste helt Akhillevs og grekernes hærfører Agamemnon.
> I krenket stolthet trekker Akhillevs seg for en stund tilbake fra kampene og
> skaper dermed en krise i grekernes beleiring av Troja.
> —[*Store norske leksikon*](https://snl.no/Iliaden)

Så vidt meg kjent finnes det ingen andre frie, digitale, utgaver av denne
oversettelsen tilgjengelig på nettet, foruten NBs pdf-skann. Dette på tross av
oversettelsen nå har falt i det fri. NB har vært snille og gjort en [**grov**
OCR](original/iliaden-tekst.txt) på skannen sin, og det er den teksten jeg har
tatt utgangspunkt i. I noen av de senere sangene (21–24) har jeg også brukt
[`tesseract`](https://github.com/tesseract-ocr/tesseract) til OCR i tillegg.

Eboken kan leses på nett her:
[mihle.no/iliaden](https://www.mihle.no/iliaden). Eller lastes ned i
[releases](https://github.com/ubesluttsom/iliaden/releases) som epub eller HTML.

## Kompilering

Ebok og HTML kompileres med `pandoc`. I mappa kan man kjøre

    $ make Iliaden.epub

for å lage eboken fra markdown-filene. Se [`makefile`](Makefile) for detaljer.

## Lenker

* [Nasjonalbibliotekets
  skann](https://www.nb.no/items/URN:NBN:no-nb_digibok_2009102100002) av boken.
  Kan lastes ned i høyere oppløsning enn hva GitHub tillater (>100MB filstørrelse).
* Eboken bruker [*Junicode*](https://junicode.sourceforge.io/) fonter. Disse er
  lisensiert under [*OFL*](http://scripts.sil.org/OFL).
* [*Pandoc*](https://pandoc.org/), konvertering mellom tekstformater. I dette
  prosjektet fra `.md` til `.epub`/`.html`.
* [*GNU Aspell*](http://aspell.net/) brukes til stavekontroll, med egen ordliste:
  [`ordliste/ordliste.utf-8.add`](ordliste/ordliste.utf-8.add). Man kan kjøre sjekk
  med `$ make check`.
* [Tesseract](https://github.com/tesseract-ocr/tesseract) er et åpen-kildekode
  program for tekstgjenkjenning fra bilder, som jeg i de senere sangene har brukt
  i tillegg til NBs bearbeiding. Jeg vet ikke hvilket OCR-program NB har brukt,
  men de har begge sine styrker og svakheter; å bruke begge og flette de
  resulterende tekstene sammen manuelt er en ganske effektiv strategi.
