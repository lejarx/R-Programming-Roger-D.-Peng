x <- sample(letters,20, replace=T)
x[x == "a"]

x <- matrix(sample(1:10,6), 2, 3)
x[1,2]
x[1,2, drop = FALSE]
x[1,]
x[1, , drop = FALSE]

x <- list(foo = 1:4, bar = 0.6)
x
x[1]
x[2]
x[[1]]
x[[2]]
x["bar"]
x[["bar"]]
names(airquality)
head(airquality)
airquality$Ozone
airquality[c(1,2)]
