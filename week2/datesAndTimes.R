# In fact there're dates and times classes to represent
# dates and times in R

x <- as.Date("1970-01-01")
x
unclass(x)
x
d1 <- as.Date("2014-04-21")
d2 <- as.Date("1990-02-19")
d1 - d2
d1 <- as.POSIXct("2014-04-21 01:00:00")
d2 <- as.POSIXct("2014-04-21 02:21:34")
d2 - d1
?unclass

x <- Sys.time()
x
## as positxlt
p <- as.POSIXlt(x)
p$sec

dump(x)
