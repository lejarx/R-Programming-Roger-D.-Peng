pollutantmean <- function(directory = "/Users/chejoharia/Documents/R/R Programming Roger D. Peng/week2/specdata", 
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
  setwd("/Users/chejoharia/Documents/R/R Programming Roger D. Peng/week2/specdata")  
  
  # initialise accumulator vector X
  X <- c()
  # set pollutant variable
  var <- pollutant
  # loop over all csv files with the corresponding id
  for(i in id){
          x <- read.csv(file=list.files()[i])
          # get non na values of pollutant and add to X
          X <- c(X,x[[var]][!is.na(x[[var]])])
  }
  mean(X)
}
pollutantmean(pollutant="sulfate", id=1:10)
pollutantmean(pollutant="nitrate", id=70:72)
pollutantmean(pollutant="nitrate", id=23)
