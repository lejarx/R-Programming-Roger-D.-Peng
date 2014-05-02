x <- 2
f <- function(x) {x*x}
f(x)
x
# list of objects
search() # the global env is the first in the search list
         # the base is the last
# in fact the order of the packages of the search list matters

f <- function(x, y) {
  x^2 + y / z
}
z <- 1
f(2,3)

make.power <- function(n) {
  pow <- function(x) {
    x ^ n
  }
  pow
}

cube <- make.power(3)
cube(2)
square <- make.power(2)
square(2)
hundred <- make.power(100)


## what's in a function's environment?
ls(environment(cube))

# Imperative style vs functional style
# get even numbers
# imperative
x <- c()
for(i in 1:200000){
     if(i %% 2 == 0){
         x <- c(x, i)
     }
 }
# functional
a <- 1:200000
x.vectorised <- a[a %% 2 == 0]
length(x)
identical(x, x.vectorised)
# lexical vs dynamic scoping
y <- NULL
f <- function(x) {
  y <- 2
  y^2 + g(x)
}
f(2)
g <- function(x) {
  x*y
}
g(2)


