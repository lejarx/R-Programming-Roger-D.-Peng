pollutantmean <- function(directory, 
                          pollutant, 
                          id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files

  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".

  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  
  # set working directory, pointing to csv files
  
  
  # initialise accumulator vector X
  X <- c()
  # set pollutant variable
  var <- pollutant
  # loop over all csv files with the corresponding id
  for(i in id){
          # read ith file
          x <- read.csv(paste(getwd(),"/", directory,"/", list.files(paste(getwd(),"/",directory,sep=""))[i], sep=""))
          # get non na values of pollutant and add to X
          X <- c(X,x[[var]][!is.na(x[[var]])])
  }
  mean(X)
}

## coursera checker

#read.csv(paste(getwd(),"/", directory,"/", list.files(paste(getwd(),"/",directory,sep=""))[1], sep=""))
#source("pollutantmean.R")
#pollutantmean("specdata", "sulfate", 1:10)
## [1] 4.064
#pollutantmean("specdata", "nitrate", 70:72)
## [1] 1.706
#pollutantmean("specdata", "nitrate", 23)
## [1] 1.281
# Submit to coursera
#source("http://d396qusza40orc.cloudfront.net/rprog%2Fscripts%2Fsubmitscript1.R")
#submit(TRUE)
#4
#rm(list=ls(all=TRUE))
#10
