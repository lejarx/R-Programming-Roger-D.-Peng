## functions

myData <- rnorm(100)
sd(myData)
sd(x = myData)
sd(x = myData, na.rm=T)
sd(na.rm = F, x = myData)
sd(na.rm = F, myData)
#show arguments of a function
args(sd)
args(f)

# defining a function
f <- function(a, b = 1, c = 2, d= NULL){
  
}
args(f)

f <- function(a, b = 2){
  a ^ b
}
args(f)
f(2)
f(2,3)

f <- function(a, b) {
  print(a)
  print(b)
}
f(1,1) # error occured only after the second line is evaluated
# this is lazy evaluation

## the ... argument
myplot <- function(x , y, type = "l", ...) {
  plot(x, y, type = type, ...)
}
myplot(1:10,1:10)
args(cat)
paste(x,y)
cat(x,y, sep=";") 

add2 <- function(x, y) {
  x + y ## the last expression is return automatically
}
add2(1,1:10)


above10 <- function(x) {
  condition <- x > 10
  x[condition]
}

# set default to 10
above <- function(x, N = 10) {
  condition <- x > N
  x[condition]
}

x <- 1:30
above10(x)
above(x)
above(x,20)

columnmean <- function(x, removeNA= TRUE) {
  nc <- ncol(x)
  means <- numeric(nc) # col length vector with 0
  for(i in 1:nc) {
    means[i] <- mean(x[, i], na.rm = removeNA)
  }
  
  means
}
columnmean(airquality)


