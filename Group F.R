#Group F Team Script

#Import Data Sets
library(readxl)
Team_Offense <- read_excel("Desktop/Team Offense.xlsx")
View(Team_Offense)

library(readxl)
NFC_Standings <- read_excel("Desktop/NFC Standings.xlsx")
View(NFC_Standings)

library(readxl)
AFC_Standings <- read_excel("Desktop/AFC Standings.xlsx")
View(AFC_Standings)

#Cleaning Data to Remove Unwanted Columns
Team_Offense <- subset(Team_Offense, select = -c(-1:-5))

NFC_Standings <- subset(NFC_Standings, select = -c(-1:-5))

AFC_Standings <- subset(AFC_Standings, select = -c(-1:-5))
