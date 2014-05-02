# All things in R are objects

# R has 5 basic or atomic classes of objects;
  # character
  # numeric (real numbers)
  # integer
  # complex
  # logical (True/False)

# The most basic object is a vector
# a vector can only contain objects of the same class
# BUT: The one exception is a list, which is
# represented as a vector but allow elements
# of different classes

# Objects can have attributes

# Printing
x<-1
print(x)
x
msg <- "hello"
msg
print(msg)
x <- 1:20
x

# Creating Vectors
x <- c(0.5, 0.6)
x <- c(TRUE, FALSE)
x <- c(T,F)
x <- c("a", "b", "c")
x <- 9:29
x <- c(1+0i, 2+4i)

# Mixing objects
y <- c(1.7, "a") ## transform to vector char


# Matrices
# vectors with a dimension attribute

m <- matrix(nrow = 2, ncol = 3)
m
dim(m)
attributes(m)
m <- matrix(1,1)
dim(m)
attributes(m)

# transform a vector into a matrix
m <- 1:10 # create a vector
m
dim(m) <- c(2,5) # add dimension: transform to matrix
m

x <- 1:3
y <- 10:12
cbind(x,y)
rbind(x,y)



# list
# special type of vector that stores
# different objects
l <- list(1, "a", 1:3, TRUE, 1 + 4i, cbind(x,y))
l

# factor
# special vector to store categorical data
# a factor is an integer vector where
# each integer has a label


x <- factor(c("yes","no","yes"))
x
attributes(x)

# explicityly define baseline level
x <- factor(c("yes","no","yes")
            , levels = c("yes","no"))
x


# Data Frames
# a special type of list
# where every element of the list 
# have the same length

x <- data.frame(foo = 1:4, bar = c(T,T,F,F))
x
rownames(x)
colnames(x)


# subsetting lists
x <- list(foo = 1:4, bar = 0.6)
x[1] # get a list 
x[2]
x[[1]] # get a sequence of 1:4
is.list(x["foo"])
is.list(x[["foo"]])
x <- list(foo = 1:4, bar = 0.6, baz = "hello")
x[c(1,3)]

x <- list(a = list(10, 12, 14), b = c(3.14, 2.81))
x[[c(1,3)]]
x[[1]][[3]]
x[[c(2,1)]] # first element of the second list

# Partial Matching
x <- list(aardvark = 1:5)
x$a # ==  x$aardvark



airquality[1:10,]
good <- complete.cases(airquality)
airquality[good, ][1:6,]
