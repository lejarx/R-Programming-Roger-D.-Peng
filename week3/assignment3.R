data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
names(data)
# get only certain columns
data <- data[c(2,7,11,17,23)]
names(data)
# rename columns
colnames(data) <- c("hospital name","state", "heart attack", "heart failure", "pneumonia")
# show first 3 rows
head(data,n=3)
# give number of columns
ncol(data)
# see the names of each column
names(data)
# split data by states
s <- split(data, data$state)
s$AR
as.numeric(s$AK$"heart attack")
head(s[[2]][2])
as.numeric((s[[2]][2]))






data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
data <- data[c(2,7,11,17,23)]
# rename columns
colnames(data) <- c("hospital name","state", "heart attack", "heart failure", "pneumonia")
## check that state and outcome are valid
# check state name
state <- "MD"
outcome <- "pneumonia"
stateVerif <- state %in% data$state
# check outcome
outcomeVerif <- outcome %in% c("heart failure","heart attack","pneumonia")
if(stateVerif && outcomeVerif){
  # split data by states
  s <- split(data, data$state)
  segmentData <- s[[state]][[outcome]]
  lowest <- min(as.numeric(segmentData), na.rm=TRUE)
  hospitalsID <- which(as.numeric(segmentData) == lowest)
  s[[state]][c(hospitalsID),][1]
