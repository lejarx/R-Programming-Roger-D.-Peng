# tapply: a function over subsets of a vector
str(tapply)

x <- c(rnorm(10), runif(10), rnorm(10,1))
f <- gl(3, 10) # 3 levels with each level repeated 10 times
f
tapply(x, f, mean)
tapply(x, f, mean, simplify=F) # receive a list

tapply(x, f, range)
split(x,f) # split x into levels defined by f
split(x,f, drop=T)
lapply(split(x,f), mean)
sapply(split(x,f), mean)
tapply(x,f,mean)

## splitting a data frame
library(datasets)
head(airquality)
split(airquality)

s <- split(airquality, airquality$Month)
s
lapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")], na.rm=T))
sapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")]))
sapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")], na.rm=T))

x <- rnorm(10)
x
f1 <- gl(2,5)
f2 <- gl(5,2)
f1
f2
interaction(f1, f2)
split(x, list(f1,f2))
split(x, list(f1,f2), drop= TRUE)





