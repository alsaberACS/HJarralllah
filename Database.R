#---------------Libraries-------------- (Step 1)
library(finalfit)
library(Hmisc)
library(dplyr)
library(ggplot2)
library(tibble)
library(readxl)
library(data.table)
library(lubridate)
library(eeptools) 
library(zoo)
library(magrittr)
library(tibble)
library(compareGroups)
library(data.table)
library(qwraps2)
library(readxl)
library(plyr)
library(xlsxjars)
library(rJava)
library(psych)
library(gdata)
library(expss)
library(Hmisc)
library(foreign)
#---------------Loading Data---------- (Step 2)
DAP <- read_excel("Demographics-Apnoea.xlsx")
DCO <- read_excel("Demographics-Control.xlsx")
QU <- read_excel("Questionnaire.xlsx")
Temp <- read_excel("Temp.xlsx")

DAPS <- read.spss("DAP.sav", use.value.label=TRUE, to.data.frame=TRUE)
DCOS <- read.spss("DCO.sav", use.value.label=TRUE, to.data.frame=TRUE)
QUS <- read.spss("Questionnaire.sav", use.value.label=TRUE, to.data.frame=TRUE)
#---------------Rename variables---------- (Step 3)
explanatory = c("BMI1", "BMI2", "AHI", "Sex")
dependent = "Meno"
DAPS %>%
  summary_factorlist(dependent, explanatory, p=TRUE)

glm(depdendent ~ explanatory, family="binomial")

explanatory = c("BMI1", "BMI2")
dependent = "Sex"
DAPS %>%
  finalfit(dependent, explanatory, p=TRUE)


