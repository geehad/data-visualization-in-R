rm(list = ls())
dir.create("bigData_lab2")
setwd("/home/gehad/bigData_lab2")

library("ggplot2")
dfm <- read.csv("datasets/EconomistData.csv")
View(dfm)

p1 <- ggplot(dfm,aes(x = CPI , y = HDI )) 
p1+ geom_point()

p2 <- p1 + geom_point(color="blue")
p2

p3 <- p1 + geom_point(aes(color = Region))
p3

p4 <- p3+geom_smooth()
p4

p5 <- p1 + geom_text(aes(label=Country))
p5

p6 <- p1 + geom_point(aes(color = Region),size=2)
p6

p7 <- p1 + geom_point(aes(color = Region , size = HDI.Rank))
p7

MiddleEasterncountries <- subset(dfm, Region == "MENA")
View(MiddleEasterncountries)

MiddleEasterncountries_p1 <- ggplot(MiddleEasterncountries,aes(x = CPI , y = HDI )) 
MiddleEasterncountries_p1+ geom_point()

MiddleEasterncountries_p2 <- MiddleEasterncountries_p1 + geom_point(aes(color = Region))
MiddleEasterncountries_p2

MiddleEasterncountries_p3 <- MiddleEasterncountries_p2+geom_smooth()
MiddleEasterncountries_p3

MiddleEasterncountries_p4 <- MiddleEasterncountries_p1 + geom_text(aes(label=Country))
MiddleEasterncountries_p4

MiddleEasterncountries_p5 <- MiddleEasterncountries_p1 + geom_point(aes(color = Region , size = HDI.Rank))
MiddleEasterncountries_p5

####################################################################################
Europeancountries <- subset(dfm, Region == "EU W. Europe")
View(Europeancountries)

Europeancountries_p1 <- ggplot(Europeancountries,aes(x = CPI , y = HDI )) 
Europeancountries_p1+ geom_point()

Europeancountries_p2 <- Europeancountries_p1 + geom_point(aes(color = Region))
Europeancountries_p2

Europeancountries_p3 <- Europeancountries_p2+geom_smooth()
Europeancountries_p3

Europeancountries_p4 <- Europeancountries_p1 + geom_text(aes(label=Country))
Europeancountries_p4

Europeancountries_p5 <- Europeancountries_p1 + geom_point(aes(color = Region , size = HDI.Rank))
Europeancountries_p5
#######################################################################################

Europeancountries_with_Egypt <- subset(dfm, Region == "EU W. Europe" | Country == "Egypt")
View(Europeancountries_with_Egypt)

Europeancountries_with_Egypt_p1 <- ggplot(Europeancountries_with_Egypt,aes(x = CPI , y = HDI )) 
Europeancountries_with_Egypt_p1+ geom_point()

Europeancountries_with_Egypt_p2 <- Europeancountries_with_Egypt_p1 + geom_point(aes(color = Region))
Europeancountries_with_Egypt_p2

Europeancountries_with_Egypt_p3 <- Europeancountries_with_Egypt_p2+geom_smooth()
Europeancountries_with_Egypt_p3

Europeancountries_with_Egypt_p4 <- Europeancountries_with_Egypt_p1 + geom_text(aes(label=Country))
Europeancountries_with_Egypt_p4

Europeancountries_with_Egypt_p5 <- Europeancountries_with_Egypt_p1 + geom_point(aes(color = Region , size = HDI.Rank))
Europeancountries_with_Egypt_p5

