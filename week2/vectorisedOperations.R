x <- 1:4;y <- 6:9
x + y
x > 2
x >= 2
y == 8
x * y
x / y
x[x > 2]

x <- matrix(1:4, 2, 2); y <- matrix(rep(10, 4), 2, 2)
x
y
x * y
x / y
x %*% y ## matrix multiplication is not commutative
y %*% x
