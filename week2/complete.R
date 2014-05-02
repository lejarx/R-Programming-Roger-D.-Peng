complete <- function(directory, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
  
  # initialise accumulator vector X
  X <- c()
  # Use absolute path to csv files
  # 1) current working directory
  currentWD <- getwd()
  # 2) directory name
  csvDir <- directory
  # loop over all csv files with the corresponding id
  nobs <- c()
  fileids <- id
  for(i in id){
    # 3) ith file name
    ithFile <- list.files(csvDir)[i]
    # construct path to file i
    fpath <- paste(currentWD,"/", csvDir,"/", ithFile, sep="")
    x <- read.csv(fpath)
    nobs <- c(nobs,sum(complete.cases(x)))
  }
  # rename fileids to id (for Coursera checker)
  id <- fileids
  X <- data.frame(id, nobs)
  X
}

## coursera checker
#source("complete.R")
#complete("specdata", 1)
##   id nobs
## 1  1  117
#complete("specdata", c(2, 4, 8, 10, 12))
##   id nobs
## 1  2 1041
## 2  4  474
## 3  8  192
## 4 10  148
## 5 12   96
#complete("specdata", 30:25)
##   id nobs
## 1 30  932
## 2 29  711
## 3 28  475
## 4 27  338
## 5 26  586
## 6 25  463
#complete("specdata", 3)
##   id nobs
## 1  3  243
#getwd()
#setwd("/Users/chejoharia/Documents/R/R Programming Roger D. Peng/week2")
# Submit to coursera
#source("http://d396qusza40orc.cloudfront.net/rprog%2Fscripts%2Fsubmitscript1.R")
#submit(TRUE)

