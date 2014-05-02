s <- split(airquality, airquality$Month)

lapply(s, 
       function(x) 
         colMeans(x[,c("Ozone", "Solar.R", "Wind")], 
                  na.rm=TRUE))
sapply(s, 
       function(x) 
         colMeans(x[,c("Ozone", "Solar.R", "Wind")], 
                  na.rm=TRUE))

x <- rnorm(6)
f1 <- gl(3,2)
f2 <- gl(2,3)
f1
f2
interaction(f1,f2)
split(x, interaction(f1,f2))
split(x, interaction(f2,f1))
x
split(x, f1)
split(x, f2)







gender <- factor(sample(c("Woman", "Man"), size=20, replace=TRUE))  ## random factor of genders
gender     ## just to see what it is
education <- factor(sample(c("College", "No College"), size=20, replace=TRUE)) ## random factor of education levels
education   ## check how it looks

# we can now create a factor that includes all interaction terms from these two factors
# it should have 4 levels (2x2)
interaction(gender, education, lex.order=TRUE)
