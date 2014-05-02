best <- function(state, outcome){
  ## read outcome data
  data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  data <- data[c(2,7,11,17,23)]
  # rename columns
  colnames(data) <- c("hospital name","state", "heart attack", "heart failure", "pneumonia")
  ## check that state and outcome are valid
  # check state name
  stateVerif <- state %in% data$state
  # check outcome
  outcomeVerif <- outcome %in% c("heart failure","heart attack","pneumonia")
  if(!stateVerif) stop("invalid state")
  if(!outcomeVerif) stop("invalid outcome")

  # split data by states
    s <- split(data, data$state)
    segmentData <- as.numeric(s[[state]][[outcome]])
    lowest <- min(segmentData, na.rm=TRUE)
    hospitalsID <- which(segmentData == lowest)
    hospitalName <- s[[state]][c(hospitalsID),][[1]]
    ## return hospital name in that sate with lowest 30-day death rate
    hospitalName
}