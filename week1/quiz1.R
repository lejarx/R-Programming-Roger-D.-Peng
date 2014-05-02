
setwd(dir="/Users/chejoharia/Documents/R/R Programming Roger D. Peng/week1")
data <- read.csv("hw1_data.csv")

sum(is.na(data[,1]))
mean(data[,1],na.rm=TRUE)
data[,1]
m31 <- data[,1] > 31
m31
t0 <- data[, 4] > 90
r <- m31 & t0
data[r]
data[,1][r]
mean(data[,2][r], na.rm=TRUE)
mean(data[,4][data[,5] == 6], na.rm=TRUE)
data[1,]

max(data[,1][data[,5] == 5], na.rm=TRUE)

