library(datasets)
data(iris)
?iris
s <- split(airquality, airquality$Month)
s
s <- split(iris, iris$Species)

lapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")], na.rm=T))
sapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")]))
sapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")], na.rm=T))

mean(s$virginica$Sepal.Length)
sapply()

apply(iris[,1:4], 2, mean)
colMeans(iris)

library(datasets)
data(mtcars)
head(mtcars)
mtcars$cyl
tapply(mtcars$cyl, mtcars$mpg, mean)
with(mtcars, tapply(mpg, cyl, mean))
split(mtcars, mtcars$cyl)
lapply(mtcars, mean)
mtcars$hp
s <- split(mtcars, mtcars$cyl)
mean(s[["4"]]$hp) - mean(s[["8"]]$hp)
debug(ls)
ls
ls
sapply(split(mtcars$mpg, mtcars$cyl), mean)
