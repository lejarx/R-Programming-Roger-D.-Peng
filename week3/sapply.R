# sapply : simplify the result of lapply IF possible
x <- list(a = 1:5, b = rnorm(10))
lapply(x, mean)
sapply(x, mean) 
lapply(x, seq)
sapply(x, seq)

x <- list(a = 1:5, b = rnorm(10), c = rnorm(20, 1), d = rnorm(100, 5))
lapply(x, mean)
sapply(x, mean)
x <- 1:4
lapply(x, runif)
sapply(x, runif)
lapply(x, runif, min = 10, max = 100)
sapply(x, runif, min = 10, max = 100)

x <- list( a = matrix(1:4, 2, 2), b = matrix(1:6, 3, 2))
x
# define our own function: extract the first column
lapply(x, function(elt) elt[,1])
sapply(x, function(elt) elt[,1])

