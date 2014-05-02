rankhospital <- function(state, outcome, num = "best") {
  ## read outcome data
  data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  names(data)
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
  #state <- "MD"
  #outcome <- "heart attack"
  # split data by states
  s <- split(data, data$state)
  segmentData <- s[[state]]
  #segmentData <- as.numeric(s[[state]][[outcome]])
  #sort(segmentData, decreasing=FALSE)
  #lowest <- min(as.numeric(segmentData), na.rm=TRUE)
  #hospitalsID <- which(as.numeric(segmentData) == lowest)
  #hospitalName <- s[[state]][c(hospitalsID),][[1]]
  ## return hospital name in that sate with lowest 30-day death rate
  if(num == "best"){
    result <- segmentData[ order(as.numeric(segmentData[,outcome]), segmentData[,"hospital name"]), ][1,1]
  }else if(num == "worst"){
    result <- segmentData[ order(as.numeric(segmentData[,outcome]), segmentData[,"hospital name"], decreasing=T), ][1,1]
  }else if(num < nrow(segmentData)){
    result <- segmentData[ order(as.numeric(segmentData[,outcome]), segmentData[,"hospital name"]), ][num,1]
  }else if(num > nrow(segmentData)){
    result <- NA
  }
  result
}
