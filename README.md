# Analiza podatkov s programom R, 2016/17

Avtor: Jaka MUnda

Repozitorij z gradivi pri predmetu APPR v študijskem letu 2016/17

## Tematika

Pri projektu bom obraval značilnosti avtomobilov in motorjev v Evropi in kako so se te spreminjale skozi čas. Prav tako bom pogledal kako se je spreminjala razširjenost avtomobilov in motorjev v Evropi.

Vire sem črpal s eurostata:

- http://ec.europa.eu/eurostat

Podatke pa imam v obliki CSV in HTML. 

Podatke bom predstavil v tabelah, za vsako značilnost avtomobilov oziroma motorjev bom pripravil svojo tabelo. Prav tako bom ločil tabele v katerih bodo podatki o avtomobilih in motorjih. Naredil bom še tabele v katerih bodo predstavljeni podatki o novih registracijah. Tabele bodo takšne da bodo v vrsticah države in v stolpcih leta.

V projektu želim ugotoviti, v katerem obdobju se je zgodila največja rast avtomobilizma in moto rizma v Evropi ter probati napovedati kakšna bo ta rast v prihodnjih letih. Prav tako bom ugotovil katere so najpomembnejše vrste goriva, in katere bodo v prihodnosti.

## Program

Glavni program in poročilo se nahajata v datoteki `projekt.Rmd`. Ko ga prevedemo,
se izvedejo programi, ki ustrezajo drugi, tretji in četrti fazi projekta:

* obdelava, uvoz in čiščenje podatkov: `uvoz/uvoz.r`
* analiza in vizualizacija podatkov: `vizualizacija/vizualizacija.r`
* napredna analiza podatkov: `analiza/analiza.r`

Vnaprej pripravljene funkcije se nahajajo v datotekah v mapi `lib/`. Podatkovni
viri so v mapi `podatki/`. Zemljevidi v obliki SHP, ki jih program pobere, se
shranijo v mapo `../zemljevidi/` (torej izven mape projekta).

## Potrebni paketi za R

Za zagon tega vzorca je potrebno namestiti sledeče pakete za R:

* `knitr` - za izdelovanje poročila
* `rmarkdown` - za prevajanje poročila v obliki RMarkdown
* `shiny` - za prikaz spletnega vmesnika
* `DT` - za prikaz interaktivne tabele
* `maptools` - za uvoz zemljevidov
* `sp` - za delo z zemljevidi
* `digest` - za zgoščevalne funkcije (uporabljajo se za shranjevanje zemljevidov)
* `readr` - za branje podatkov
* `rvest` - za pobiranje spletnih strani
* `reshape2` - za preoblikovanje podatkov v obliko *tidy data*
* `dplyr` - za delo s podatki
* `gsubfn` - za delo z nizi (čiščenje podatkov)
* `ggplot2` - za izrisovanje grafov
* `extrafont` - za pravilen prikaz šumnikov (neobvezno)
