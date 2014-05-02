# apply: evaluate a function over the margins of an array(matrice)
# often used to apply a function to the rows of columsn of a matrix
apply
str(apply)
x <- matrix(rnorm(200), 1, 5)
x
# mean by columns
apply(x , 2 , mean)
# mean by rows
apply(x , 1 , mean)
# optimised version for calculating the sum/mean of rows/cols of a matrix
rowMeans(x)
colMeans(x)
rowSums(x)
colSums(x)

x <- matrix(rnorm(200), 2,5)
x
apply(x, 1, quantile, probs = c(0.25, 0.75))

a <- array(rnorm(2 * 2 * 10), c(1 ,2 ,2))
a
apply(x, 2, mean)
apply(x, c(1,2), mean)
