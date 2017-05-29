# 3. faza: Vizualizacija podatkov
library(dplyr)
library(gsubfn)
library(ggplot2)
#library(ggvis)

# Grafi

registracije <- read_csv("podatki/registracije.csv",locale = locale(encoding = "Windows-1250"))
a <- ggplot(filter(registracije, Drzava == c("Germany", "Slovenia"))) + aes(x=Leto, y=Stevilo, color = Drzava) + geom_line()
print(a)




# Uvozimo zemljevid.
#zemljevid <- uvozi.zemljevid("http://baza.fmf.uni-lj.si/OB.zip",
 #                            "OB/OB", encoding = "Windows-1250")
#levels(zemljevid$OB_UIME) <- levels(zemljevid$OB_UIME) %>%
 # { gsub("Slovenskih", "Slov.", .) } %>% { gsub("-", " - ", .) }
#zemljevid$OB_UIME <- factor(zemljevid$OB_UIME, levels = levels(obcine$obcina))
#zemljevid <- pretvori.zemljevid(zemljevid)

# Izračunamo povprečno velikost družine
#povprecja <- druzine %>% group_by(obcina) %>%
 # summarise(povprecje = sum(velikost.druzine * stevilo.druzin) / sum(stevilo.druzin))
