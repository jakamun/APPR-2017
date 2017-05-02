# 2. faza: Uvoz podatkov

library(rvest)
library(gsubfn)
library(readr)
library(dplyr)

uvozi.alfa <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/alfa-romeo/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "Št.prodanih.Alfa.Romeov","Delež.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1 <- tabela1[order(tabela1$Leto),]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "Št.prodanih.Alfa.Romeov","Delež.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}


uvozi.aston <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/aston-martin/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "Št.prodanih.Aston.Martinov","Delež.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1 <- tabela1[order(tabela1$Leto),]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "Št.prodanih.Aston.Martinov","Delež.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}


uvozi.audi <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/audi/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "Št.prodanih.Audijev","Delež.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1 <- tabela1[order(tabela1$Leto),]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "Št.prodanih.Audijev","Delež.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.bmw <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/bmw/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "Št.prodanih.Bmw","Delež.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1 <- tabela1[order(tabela1$Leto),]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "Št.prodanih.Bmw","Delež.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.citroen <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/citroen/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "Št.prodanih.Citroenov","Delež.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1 <- tabela1[order(tabela1$Leto),]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "Št.prodanih.Citroenov","Delež.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.dacia <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/dacia/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "Št.prodanih.Dacij","Delež.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1 <- tabela1[order(tabela1$Leto),]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "Št.prodanih.Dacij","Delež.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.ferrari <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/ferrari/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "Št.prodanih.Ferrarijev","Delež.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1 <- tabela1[order(tabela1$Leto),]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "Št.prodanih.Ferrarijev","Delež.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.fiat <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/fiat/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "Št.prodanih.Fiatov","Delež.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1 <- tabela1[order(tabela1$Leto),]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "Št.prodanih.Fiatov","Delež.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.ford <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/ford/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "Št.prodanih.Fordov","Delež.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1 <- tabela1[order(tabela1$Leto),]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "Št.prodanih.Fordov","Delež.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.honda <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/honda/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "Št.prodanih.Hond","Delež.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1 <- tabela1[order(tabela1$Leto),]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "Št.prodanih.Hond","Delež.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.hyundai <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/hyundai/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "Št.prodanih.Hyundajev","Delež.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1 <- tabela1[order(tabela1$Leto),]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "Št.prodanih.Hyundajev","Delež.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.jaguar <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/jaguar/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "Št.prodanih.Jaguarjev","Delež.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1 <- tabela1[order(tabela1$Leto),]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "Št.prodanih.Jaguarjev","Delež.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.jeep <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/jeep/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "Št.prodanih.Jeepov","Delež.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1 <- tabela1[order(tabela1$Leto),]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "Št.prodanih.Jeepov","Delež.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.kia <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/kia/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "Št.prodanih.Kii","Delež.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1 <- tabela1[order(tabela1$Leto),]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "Št.prodanih.Kii","Delež.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.lancia <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/lancia/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "Št.prodanih","Delež.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1 <- tabela1[order(tabela1$Leto),]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "Št.prodanih","Delež.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.rover <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/land-rover/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "Št.prodanih","Delež.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1 <- tabela1[order(tabela1$Leto),]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "Št.prodanih","Delež.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.lexus <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/lexus/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "Št.prodanih.Leksusov","Delež.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1 <- tabela1[order(tabela1$Leto),]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "Št.prodanih.Leksusov","Delež.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.mazda <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/mazda/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "Št.prodanih.Mazd","Delež.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1 <- tabela1[order(tabela1$Leto),]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "Št.prodanih.Mazd","Delež.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.mercedes <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/mercedes-benz/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "Št.prodanih.Mercedesov","Delež.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1 <- tabela1[order(tabela1$Leto),]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "Št.prodanih.Mercedesov","Delež.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.mini <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/mini/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "Št.prodanih.Minijev","Delež.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1 <- tabela1[order(tabela1$Leto),]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "Št.prodanih.Minijev","Delež.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.nissan <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/nissan/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "Št.prodanih.Nissanov","Delež.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1 <- tabela1[order(tabela1$Leto),]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "Št.prodanih.Nissanov","Delež.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.opel <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/opel-vauxhall/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "Št.prodanih.Oplov","Delež.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1 <- tabela1[order(tabela1$Leto),]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "Št.prodanih.Oplov","Delež.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.peugeot <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/peugeot/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "Št.prodanih.Peugeojev","Delež.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1 <- tabela1[order(tabela1$Leto),]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "Št.prodanih.Peugeojev","Delež.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.porsche <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/porsche/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "Št.prodanih.Porschejev","Delež.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1 <- tabela1[order(tabela1$Leto),]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "Št.prodanih.Porschejev","Delež.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.renault <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/renault/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "Št.prodanih","Delež.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1 <- tabela1[order(tabela1$Leto),]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "Št.prodanih","Delež.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.seat <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/seat/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "Št.prodanih.Seatov","Delež.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1 <- tabela1[order(tabela1$Leto),]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "Št.prodanih.Seatov","Delež.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.skoda <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/skoda/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "Št.prodanih.Škod","Delež.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1 <- tabela1[order(tabela1$Leto),]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "Št.prodanih.Škod","Delež.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.subaru <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/subaru/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "Št.prodanih.Subarujev","Delež.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1 <- tabela1[order(tabela1$Leto),]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "Št.prodanih.Subarujev","Delež.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.suzuki <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/suzuki/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "Št.prodanih.Suzukijev","Delež.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1 <- tabela1[order(tabela1$Leto),]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "Št.prodanih.Suzukijev","Delež.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.toyota <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/toyota/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "Št.prodanih.Toyot","Delež.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1 <- tabela1[order(tabela1$Leto),]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "Št.prodanih.Toyot","Delež.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.volkswagen <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/volkswagen/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "Št.prodanih.Volkswagnov","Delež.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1 <- tabela1[order(tabela1$Leto),]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "Št.prodanih.Volkswagnov","Delež.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.volvo <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/volvo/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "Št.prodanih.Volvov","Delež.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1 <- tabela1[order(tabela1$Leto),]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "Št.prodanih.Volvov","Delež.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

##CSV datoteke sem uredil, še preden sem ugotovil da bi bilo koristno narediti funkcije

uvozi.teza <- function() {
  teza <- read.csv("teza.csv",locale = locale(encoding = "cp1250"))
  teza <- teza %>% filter(Vrednost != ":")
  return(teza)
}

uvozi.starost <- function() {
  starost <- read.csv("starost.csv",locale = locale(encoding = "cp1250"))
  starost <- starost %>% filter(Število != ":")
  return(starost)
}

uvozi.goriva <- function() {
  gorivo <- read.csv("vrste_goriva.csv",locale = locale(encoding = "cp1250"))
  gorivo <- gorivo %>% filter(Število != ":")
  return(gorivo)
}

uvozi.emisije <- function() {
  emisija <- read.csv("emisije_novih_avtomobilov.csv",locale = locale(encoding = "cp1250"))
  emisija <- emisija %>% filter(Gram.CO2.na.km != ":")
  return(emisija)
}

uvozi.registracije <- function() {
  registracije <- read.csv("nove_registracije_glede_na_tezo.csv",locale = locale(encoding = "cp1250"))
  registracije <- registracije %>% filter(Vrednost != ":")
  return(registracije)
}

uvozi.koliko.ga.ne.more.imet <- function() {
  tabela <- read.csv("koliko_ljudi_si_ne_more_privoscit_avta.csv",locale = locale(encoding = "cp1250"))
  tabela <- tabela %>% filter(Procenti != ":")
  tabela <- tabela %>% filter(Družine != "One adult 65 years or over" , Družine != "One adult younger than 65 years"
                              , Družine != "Two adults younger than 65 years", Družine != "Two adults, at least one aged 65 years or over"
                              , Družine != "Single person with dependent children", Družine != "Two adults with one dependent child",
                              Družine != "Two adults with two dependent children", Družine != "Two adults with three or more dependent children",
                              Družine != "Three or more adults with dependent children")
  return(tabela)
}

uvozi.st.na.1000 <- function() {
  tabela <- read.csv("st_avtov_na_1000_prebivalcev.csv",locale = locale(encoding = "cp1250"))
  tabela <- tabela %>% select(Država = GEO,Leto = TIME, Vrednost = Value)
  tabela <- tabela %>% filter(Vrednost != ":")
  return(tabela)
}