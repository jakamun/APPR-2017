# Analiza podatkov s programom R, 2016/17

Avtor: Jaka Munda

Repozitorij z gradivi pri predmetu APPR v študijskem letu 2016/17

## Tematika

Pri projektu bom obravnaval značilnosti avtomobilov v Evropi in kako so se te spreminjale skozi čas. Prav tako bom pogledal kako se je spreminjala razširjenost avtomobilov in katere so bile ter katere so najbol razširjene znamke v Evropi. 

Vire sem črpal z eurostata:

- http://ec.europa.eu/eurostat
- http://carsalesbase.com/european-car-sales-data/

Podatke pa imam v obliki CSV in HTML. 

Podatke bom predstavil v tabelah, za vsako značilnost avtomobilov bom pripravil svojo tabelo. Tabele bodo takšne da bodo v vrsticah države in v stolpcih leta. Naredil bom še tabele v katerih bodo predstavljeni podatki kako se je spreminjala razširjenost avtomobilov. To bom pogledal glede na nove registracije, za kar bom pipravil tabelo v kateri bodo v vrsticah države in stolpcih leta, in glede na število prodanih avtomobilov posameznih znamk, za to pa bom pripravil svojo tabelo v kateri bodo v stolpcih leta in v vrsticah znamke.

V projektu želim ugotoviti, v katerem obdobju se je zgodila največja rast avtomobilizma v Evropi ter probati napovedati kakšna bo ta rast v prihodnjih letih. Prav tako bom probal ugotoviti kakšne značilnosti na avtomobilih so najbol razširjene, in kakšne značilnosti bodo v prihodnosti najbol razširjene.

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
