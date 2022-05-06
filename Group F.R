#Group F Team Script

#Installing Required Packages
# install.packages("tidyverse")
if(!require("tidyverse")) install.packages("tidyverse")
library(tidyverse)

# install.packages("ggplot2")
if(!require("ggplot2")) install.packages("ggplot2")
library(ggplot2)

# install.packages("ggrepel")
if(!require("ggrepel")) install.packages("ggrepel")
library(ggrepel)

#install.packages ("scales")
if(!require("scales")) install.packages("scales")
library(scales)

#Import Data Sets
library(readr)
footballyrds_wins <- read_csv("footballyrds_wins.csv")
str(footballyrds_wins)

#Creating and Labeling Scatter Plot
p <- ggplot(data = footballyrds_wins,
           mapping = aes(x = Yds, y = Wins)) 

p + geom_point()

p + geom_point() +
  geom_text_repel(data = subset(footballyrds_wins, Wins > 2,
                                max.overlaps = Inf),
                  mapping = aes(label = Tm)) +
  labs(x="Total Yards",
       y = "Total Wins",
       title = "Total Yards Compared to Total Wins NFL 2021") +
  scale_y_continuous(labels = scientific)
