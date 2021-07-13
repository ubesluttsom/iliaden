# Iliaden

Denne digitale utgaven er lagd etter [Nasjonalbibliotekets
skann](https://www.nb.no/items/URN:NBN:no-nb_digibok_2009102100002) av
førsteutgaven av P. Østbyes oversettelse fra 1920. Teksten er etter beste evne
transkribert tegn for tegn fra orginalen. Oversettelsen, og denne eboken,
tilfaller allmannseie, og kan deles og endres fritt.

> Iliaden er et gresk epos i 24 sanger, tillagt Homer. Iliaden skildrer 51
> dager i det 10. år av grekernes krig mot Troja, som ble forårsaket av at den
> trojanske kongesønn Paris røvet Helena, spartanerkongen Menelaos' hustru. Et
> hovedmotiv som gir den mangfoldige handlingen en fast struktur, er striden
> mellom grekernes tapreste helt Akhillevs og grekernes hærfører Agamemnon.
> I krenket stolthet trekker Akhillevs seg for en stund tilbake fra kampene og
> skaper dermed en krise i grekernes beleiring av Troja.
> —[*Store norske leksikon*](https://snl.no/Iliaden)

## Kompilering

Ebok og HTML kompileres med `pandoc`. I mappa kan man kjøre

    $ make Iliaden.epub

for å lage eboken fra markdown-filene. Se [`makefile`](makefile) for detaljer.

## Lenker

* [Nasjonalbibliotekets
  skann](https://www.nb.no/items/URN:NBN:no-nb_digibok_2009102100002) av boken.
  Kan lastes ned i høyere oppløsning enn hva GitHub tillater (>100MB filstørrelse).
* Eboken bruker [Junicode](https://junicode.sourceforge.io/) fonter.
* [*Pandoc*](https://pandoc.org/), konvertering mellom tekstformater. Her:
  `.md` til `.epub`/`.html`.
* [GNU Aspell](http://aspell.net/) brukes til stavekontroll, med egen ordliste:
  [`ordliste/ordliste.utf-8.add`](ordliste/ordliste.utf-8.add). Kan kjøre sjekk
  med `$ make check`.
