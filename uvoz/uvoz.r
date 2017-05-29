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
  colnames(tabela1) <- c("Leto", "St.prodanih","Delez.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1$Znamka <- rep(c("Alfa Romeo"),length(tabela1$Leto))
  tabela1 <- tabela1[order(tabela1$Leto),]
  tabela1 <- tabela1[c(4,1,2,3)]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "St.prodanih","Delez.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}


uvozi.aston <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/aston-martin/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "St.prodanih","Delez.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1$Znamka <- rep(c("Aston Martin"),length(tabela1$Leto))
  tabela1 <- tabela1[order(tabela1$Leto),]
  tabela1 <- tabela1[c(4,1,2,3)]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "St.prodanih","Delez.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}


uvozi.audi <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/audi/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "St.prodanih","Delez.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1$Znamka <- rep(c("Audi"),length(tabela1$Leto))
  tabela1 <- tabela1[order(tabela1$Leto),]
  tabela1 <- tabela1[c(4,1,2,3)]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "St.prodanih","Delez.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.bmw <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/bmw/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "St.prodanih","Delez.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1$Znamka <- rep(c("BMW"),length(tabela1$Leto))
  tabela1 <- tabela1[order(tabela1$Leto),]
  tabela1 <- tabela1[c(4,1,2,3)]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "St.prodanih","Delez.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.citroen <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/citroen/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "St.prodanih","Delez.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1$Znamka <- rep(c("Citroen"),length(tabela1$Leto))
  tabela1 <- tabela1[order(tabela1$Leto),]
  tabela1 <- tabela1[c(4,1,2,3)]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "St.prodanih","Delez.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.dacia <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/dacia/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "St.prodanih","Delez.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1$Znamka <- rep(c("Dacia"),length(tabela1$Leto))
  tabela1 <- tabela1[order(tabela1$Leto),]
  tabela1 <- tabela1[c(4,1,2,3)]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "St.prodanih","Delez.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.ferrari <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/ferrari/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "St.prodanih","Delez.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1$Znamka <- rep(c("Ferrari"),length(tabela1$Leto))
  tabela1 <- tabela1[order(tabela1$Leto),]
  tabela1 <- tabela1[c(4,1,2,3)]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "St.prodanih","Delez.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.fiat <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/fiat/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "St.prodanih","Delez.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1$Znamka <- rep(c("Fiat"),length(tabela1$Leto))
  tabela1 <- tabela1[order(tabela1$Leto),]
  tabela1 <- tabela1[c(4,1,2,3)]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "St.prodanih","Delez.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.ford <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/ford/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "St.prodanih","Delez.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1$Znamka <- rep(c("Ford"),length(tabela1$Leto))
  tabela1 <- tabela1[order(tabela1$Leto),]
  tabela1 <- tabela1[c(4,1,2,3)]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "St.prodanih","Delez.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.honda <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/honda/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "St.prodanih","Delez.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1$Znamka <- rep(c("Honda"),length(tabela1$Leto))
  tabela1 <- tabela1[order(tabela1$Leto),]
  tabela1 <- tabela1[c(4,1,2,3)]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "St.prodanih","Delez.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.hyundai <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/hyundai/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "St.prodanih","Delez.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1$Znamka <- rep(c("Hyundai"),length(tabela1$Leto))
  tabela1 <- tabela1[order(tabela1$Leto),]
  tabela1 <- tabela1[c(4,1,2,3)]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "St.prodanih","Delez.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.jaguar <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/jaguar/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "St.prodanih","Delez.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1$Znamka <- rep(c("Jaguar"),length(tabela1$Leto))
  tabela1 <- tabela1[order(tabela1$Leto),]
  tabela1 <- tabela1[c(4,1,2,3)]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "St.prodanih","Delez.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.jeep <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/jeep/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "St.prodanih","Delez.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1$Znamka <- rep(c("Jeep"),length(tabela1$Leto))
  tabela1 <- tabela1[order(tabela1$Leto),]
  tabela1 <- tabela1[c(4,1,2,3)]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "St.prodanih","Delez.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.kia <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/kia/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "St.prodanih","Delez.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1$Znamka <- rep(c("Kia"),length(tabela1$Leto))
  tabela1 <- tabela1[order(tabela1$Leto),]
  tabela1 <- tabela1[c(4,1,2,3)]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "St.prodanih","Delez.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.lancia <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/lancia/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "St.prodanih","Delez.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1$Znamka <- rep(c("Lancia"),length(tabela1$Leto))
  tabela1 <- tabela1[order(tabela1$Leto),]
  tabela1 <- tabela1[c(4,1,2,3)]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "St.prodanih","Delez.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.rover <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/land-rover/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "St.prodanih","Delez.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1$Znamka <- rep(c("Land Rover"),length(tabela1$Leto))
  tabela1 <- tabela1[order(tabela1$Leto),]
  tabela1 <- tabela1[c(4,1,2,3)]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "St.prodanih","Delez.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.lexus <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/lexus/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "St.prodanih","Delez.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1$Znamka <- rep(c("Lexus"),length(tabela1$Leto))
  tabela1 <- tabela1[order(tabela1$Leto),]
  tabela1 <- tabela1[c(4,1,2,3)]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "St.prodanih","Delez.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.mazda <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/mazda/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "St.prodanih","Delez.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1$Znamka <- rep(c("Mazda"),length(tabela1$Leto))
  tabela1 <- tabela1[order(tabela1$Leto),]
  tabela1 <- tabela1[c(4,1,2,3)]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "St.prodanih","Delez.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.mercedes <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/mercedes-benz/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "St.prodanih","Delez.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1$Znamka <- rep(c("Mercedes Benz"),length(tabela1$Leto))
  tabela1 <- tabela1[order(tabela1$Leto),]
  tabela1 <- tabela1[c(4,1,2,3)]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "St.prodanih","Delez.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.mini <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/mini/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "St.prodanih","Delez.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1$Znamka <- rep(c("Mini"),length(tabela1$Leto))
  tabela1 <- tabela1[order(tabela1$Leto),]
  tabela1 <- tabela1[c(4,1,2,3)]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "St.prodanih","Delez.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.nissan <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/nissan/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "St.prodanih","Delez.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1$Znamka <- rep(c("Nissan"),length(tabela1$Leto))
  tabela1 <- tabela1[order(tabela1$Leto),]
  tabela1 <- tabela1[c(4,1,2,3)]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "St.prodanih","Delez.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.opel <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/opel-vauxhall/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "St.prodanih","Delez.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1$Znamka <- rep(c("Opel"),length(tabela1$Leto))
  tabela1 <- tabela1[order(tabela1$Leto),]
  tabela1 <- tabela1[c(4,1,2,3)]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "St.prodanih","Delez.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.peugeot <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/peugeot/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "St.prodanih","Delez.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1$Znamka <- rep(c("Peugeot"),length(tabela1$Leto))
  tabela1 <- tabela1[order(tabela1$Leto),]
  tabela1 <- tabela1[c(4,1,2,3)]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "St.prodanih","Delez.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.porsche <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/porsche/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "St.prodanih","Delez.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1$Znamka <- rep(c("Porsche"),length(tabela1$Leto))
  tabela1 <- tabela1[order(tabela1$Leto),]
  tabela1 <- tabela1[c(4,1,2,3)]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "St.prodanih","Delez.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.renault <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/renault/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "St.prodanih","Delez.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1$Znamka <- rep(c("Renault"),length(tabela1$Leto))
  tabela1 <- tabela1[order(tabela1$Leto),]
  tabela1 <- tabela1[c(4,1,2,3)]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "St.prodanih","Delez.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.seat <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/seat/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "St.prodanih","Delez.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1$Znamka <- rep(c("Seat"),length(tabela1$Leto))
  tabela1 <- tabela1[order(tabela1$Leto),]
  tabela1 <- tabela1[c(4,1,2,3)]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "St.prodanih","Delez.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.skoda <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/skoda/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "St.prodanih","Delez.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1$Znamka <- rep(c("Skoda"),length(tabela1$Leto))
  tabela1 <- tabela1[order(tabela1$Leto),]
  tabela1 <- tabela1[c(4,1,2,3)]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "St.prodanih","Delez.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.subaru <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/subaru/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "St.prodanih","Delez.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1$Znamka <- rep(c("Subaru"),length(tabela1$Leto))
  tabela1 <- tabela1[order(tabela1$Leto),]
  tabela1 <- tabela1[c(4,1,2,3)]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "St.prodanih","Delez.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.suzuki <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/suzuki/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "St.prodanih","Delez.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1$Znamka <- rep(c("Suzuki"),length(tabela1$Leto))
  tabela1 <- tabela1[order(tabela1$Leto),]
  tabela1 <- tabela1[c(4,1,2,3)]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "St.prodanih","Delez.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.toyota <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/toyota/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "St.prodanih","Delez.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1$Znamka <- rep(c("Toyota"),length(tabela1$Leto))
  tabela1 <- tabela1[order(tabela1$Leto),]
  tabela1 <- tabela1[c(4,1,2,3)]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "St.prodanih","Delez.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.volkswagen <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/volkswagen/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "St.prodanih","Delez.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1$Znamka <- rep(c("Volkswagen"),length(tabela1$Leto))
  tabela1 <- tabela1[order(tabela1$Leto),]
  tabela1 <- tabela1[c(4,1,2,3)]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "St.prodanih","Delez.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.volvo <- function() {
  link <- "http://carsalesbase.com/european-car-sales-data/volvo/"
  stran <- html_session(link) %>% read_html()
  tabela1 <- stran %>% html_nodes(xpath="//table[@class='model-table']") %>%
    .[[2]] %>% html_table(dec = ",")
  colnames(tabela1) <- c("Leto", "St.prodanih","Delez.na.trgu(%)")
  tabela1 <- tabela1[-c(1),]
  tabela1$Znamka <- rep(c("Volvo"),length(tabela1$Leto))
  tabela1 <- tabela1[order(tabela1$Leto),]
  tabela1 <- tabela1[c(4,1,2,3)]
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "St.prodanih","Delez.na.trgu(%)")) {
    tabela1[[col]] <- parse_number(tabela1[[col]], na = "-", locale = sl)
  }
  return(tabela1)
}

uvozi.znamke <- function() {
  znamke <- rbind(uvozi.alfa(), uvozi.aston(), uvozi.audi(), uvozi.bmw(), uvozi.citroen(), uvozi.dacia(),
                  uvozi.ferrari(), uvozi.fiat(), uvozi.ford(), uvozi.honda(), uvozi.hyundai(), uvozi.jaguar(),
                  uvozi.jeep(), uvozi.kia(), uvozi.lancia(), uvozi.lexus(), uvozi.mazda(), uvozi.mercedes(), 
                  uvozi.mini(), uvozi.nissan(), uvozi.opel(), uvozi.peugeot(), uvozi.porsche(), uvozi.renault(),
                  uvozi.rover(), uvozi.seat(), uvozi.skoda(), uvozi.subaru(), uvozi.suzuki(), uvozi.toyota(),
                  uvozi.volkswagen(), uvozi.volvo())
  znamke <- znamke %>% arrange(Leto)
  return(znamke)
  
}

# znamke sem uvozil z interneta in jih shranil v znamke.csv

podatki.znamke <- function() {
  znamke <- read_csv("podatki/znamke.csv", locale = locale(encoding = "Windows-1250"))
  return(znamke)
}
znamke <- podatki.znamke()




##CSV datoteke sem uredil, še preden sem ugotovil da bi bilo koristno narediti funkcije

uvozi.teza <- function() {
  teza <- read_csv("podatki/teza.csv",locale = locale(encoding = "Windows-1250"))
  stolpci <- c("Drzava", "Leto","Teza","Vrednost")
  colnames(teza) <- stolpci
  teza <- teza %>% filter(Vrednost != ":")
  teza <- teza %>% filter(Leto >= "2000")
  return(teza)
}
teza <- uvozi.teza()



uvozi.starost <- function() {
  starost <- read_csv("podatki/starost.csv",locale = locale(encoding = "Windows-1250"))
  stolpci <- c("Drzava", "Leto","Starost","Vrednost")
  colnames(starost) <- stolpci
  starost <- starost %>% filter(Vrednost != ":")
  return(starost)
}
starost <- uvozi.starost()


uvozi.goriva <- function() {
  gorivo <- read_csv("podatki/vrste_goriva.csv",locale = locale(encoding = "Windows-1250"))
  stolpci <- c("Drzava", "Leto","Vrsta.goriva","Vrednost")
  colnames(gorivo) <- stolpci
  gorivo <- gorivo %>% filter(Vrednost != ":")
  return(gorivo)
}
goriva <- uvozi.goriva()

uvozi.emisije <- function() {
  emisija <- read_csv("podatki/emisije_novih_avtomobilov.csv",locale = locale(encoding = "Windows-1250"))
  stolpci <- c("Drzava", "Leto","Gram.CO2.na.km")
  colnames(emisija) <- stolpci
  emisija <- emisija %>% filter(Gram.CO2.na.km != ":")
  return(emisija)
}
emisije <- uvozi.emisije()

uvozi.registracije <- function() {
  registracije <- read_csv("podatki/registracije.csv",locale = locale(encoding = "Windows-1250"))
  registracije <- registracije %>% select(Drzava, Leto, Stevilo)
  registracije <- registracije %>% filter(Stevilo != ":")
  sl <- locale("sl", decimal_mark = ",", grouping_mark = ".")
  for (col in c("Leto", "Stevilo")) {
    registracije[[col]] <- parse_number(registracije[[col]], na = "-", locale = sl)
  }
  return(registracije)
}
registracije <- uvozi.registracije()

uvozi.koliko.ga.ne.more.imet <- function() {
  tabela <- read_csv("podatki/koliko_ljudi_si_ne_more_privoscit_avta.csv",locale = locale(encoding = "Windows-1250"))
  stolpci <- c("Drzava","Leto","Druzina","Procenti")
  colnames(tabela) <- stolpci
  tabela <- tabela %>% filter(Procenti != ":")
  tabela <- tabela %>% filter(Druzina != "One adult 65 years or over" , Druzina != "One adult younger than 65 years"
                              , Druzina != "Two adults younger than 65 years", Druzina != "Two adults, at least one aged 65 years or over"
                              , Druzina != "Single person with dependent children", Druzina != "Two adults with one dependent child",
                              Druzina != "Two adults with two dependent children", Druzina != "Two adults with three or more dependent children",
                              Druzina != "Three or more adults with dependent children")
  return(tabela)
}
koliko.ljudi.si.ne.more.privoscit.avta <- uvozi.koliko.ga.ne.more.imet()

uvozi.st.na.1000 <- function() {
  tabela <- read_csv("podatki/st_avtov_na_1000_prebivalcev.csv",locale = locale(encoding = "Windows-1250"))
  tabela <- tabela %>% select(Država,Leto,St.avtov.na.1000.ljudi)
  tabela <- tabela %>% filter(St.avtov.na.1000.ljudi != ":")
  return(tabela)
}
st.na.1000 <- uvozi.st.na.1000()
