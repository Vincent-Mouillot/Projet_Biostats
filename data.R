library(readxl)
library(tidyverse)
Intoxications <- read_excel("Intoxications.xls")
View(Intoxications)
Intoxications <- read_excel("Intoxications.xls")
Intoxications <- read_excel("Intoxications.xls") %>%
  rename("Nausee"=`Nausée ?`,
         "Vomi" = `Vomissements ?`,
         "Diarrhee" = Diarrée,
         "Eclair" = eclair,
         "Sexe" = sex) %>%
  mutate(Sexe = as.factor(Sexe),
         Nausee = as.factor(Nausee),
         Vomi = as.factor(Vomi),
         Douleur = as.factor(Douleur),
         Diarrhee = as.factor(Diarrhee),
         Eclair = as.numeric(Eclair),
         Boeuf = as.factor(Boeuf),
         Oeuf = as.factor(Oeuf),
         Eau = as.factor(Eau),
         fcEclair = as.factor(Eclair))

summary(Intoxications)

levels(Intoxications$fcEclair)
