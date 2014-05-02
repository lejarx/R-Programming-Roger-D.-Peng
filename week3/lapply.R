# lapply : loop over a list and evaluate a function on each element
# it takes 3 arguments: a list, a function , and other arguments
lapply
x <- list(a = 1:5, b = rnorm(10))
x
lapply(x, mean)
lapply(x, seq)

x <- list(a = 1:5, b = rnorm(10), c = rnorm(20, 1), d = rnorm(100, 5))
lapply(x, mean)
x <- 1:4
lapply(x, runif)
lapply(x, runif, min = 10, max = 100)

x <- list( a = matrix(1:4, 2, 2), b = matrix(1:6, 3, 2))
x
# define our own function: extract the first column
lapply(x, function(elt) elt[,1])


