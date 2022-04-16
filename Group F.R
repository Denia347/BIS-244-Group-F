#Group F Team Script

#Import Data Sets
library(readxl)
# You hardwired all your file references. Not only can I not run these
# but no one else on your team will be able to, either.   -10
Team_Offense <- read_excel("Team Offense.xlsx")
View(Team_Offense)

library(readxl)
NFC_Standings <- read_excel("NFC Standings.xlsx")
View(NFC_Standings)

library(readxl)
AFC_Standings <- read_excel("AFC Standings.xlsx")
View(AFC_Standings)

#Cleaning Data to Remove Unwanted Columns
Team_Offense <- subset(Team_Offense, select = -c(-1:-5))

NFC_Standings <- subset(NFC_Standings, select = -c(-1:-5))

AFC_Standings <- subset(AFC_Standings, select = -c(-1:-5))
