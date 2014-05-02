best <- function(state,outcome){
  
  #read in data and change data back
  
  outcome1 <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  outcome1[, 11] <- as.numeric(outcome1[, 11])
  outcome1[, 17] <- as.numeric(outcome1[, 17])
  outcome1[, 23] <- as.numeric(outcome1[, 23])
  
  #validation variables 
  
  states <- c("AL","AK","AZ","AR","CA","CO","CT","DE","DC","FL","GA","HI","ID","IL","IN","IA","KS","KY","LA","ME","MD","MA","MI","MN","MS","MO","MT","NE","NV","NH","NJ","NM","NY","NC","ND","OH","OK","OR","PA","RI","SC","SD","TN","TX","UT","VT","VA","WA","WV","WI","WY")
  outcomes <- c("heart attack", "heart failure", "pneumonia")
  
  #validation
  
  if(!state %in% states){stop("invalid state")}
  else if(!outcome %in% outcomes){stop("invalid outcome")}
  else{ data <- data.frame(Hospital.Name = outcome1$Hospital.Name,State = outcome1$State, Heart.Attack = outcome1[,11],Heart.Failure = outcome1[,17],Pneumonia = outcome1[,23],stringsAsFactors = F)
        
        #data split into state data 	
        
        datasplit <- split(data, data$State)
        statedata <- datasplit[[state]]
        
        
        #selecting hospital based on outcome
        
        output <- if(outcome == "heart attack"){
          
          statedata <- subset(statedata,complete.cases(statedata$Heart.Attack))
          statedata$Hospital.Name[statedata$Heart.Attack == min(statedata$Heart.Attack)]
        }
        else if(outcome == "heart failure"){
          
          statedata <- subset(statedata,complete.cases(statedata$Heart.Failure))
          statedata$Hospital.Name[statedata$Heart.Failure == min(statedata$Heart.Failure)]
        }
        else if(outcome == "pneumonia"){
          
          statedata <- subset(statedata,complete.cases(statedata$Pneumonia))
          statedata$Hospital.Name[statedata$Pneumonia == min(statedata$Pneumonia)]
        }}
  return(output)
}

outcome1 <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
outcome1[, 11] <- as.numeric(outcome1[, 11])
outcome1[, 17] <- as.numeric(outcome1[, 17])
outcome1[, 23] <- as.numeric(outcome1[, 23])

airquality <- airquality
state.abb <- state.abb
rankall <- function(outcome,num){
  
  dataframe <- data.frame(hospital = character(0),state = character(0))
  states <- c("AL","AK","AZ","AR","CA","CO","CT","DE","DC","FL","GA","HI","ID","IL","IN","IA","KS","KY","LA","ME","MD","MA","MI","MN","MS","MO","MT","NE","NV","NH","NJ","NM","NY","NC","ND","OH","OK","OR","PA","RI","SC","SD","TN","TX","UT","VT","VA","WA","WV","WI","WY")

  for(i in state.abb){
    output <- rankhospital(i,outcome,num)
    sta <- outcome1$State[outcome1$Hospital.Name == output]
    newrow <- data.frame(hospital = output,state = sta)
    dataframe <- rbind(dataframe,newrow)
  }
  dataframe <- dataframe[!duplicated(dataframe),]
  return(dataframe)
}

outcome1 <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
outcome1[, 11] <- as.numeric(outcome1[, 11])
outcome1[, 17] <- as.numeric(outcome1[, 17])
outcome1[, 23] <- as.numeric(outcome1[, 23])

rankhospital <- function(state,outcome, num){
  
  states <- c("AL","AK","AZ","AR","CA","CO","CT","DE","DC","FL","GA","HI","ID","IL","IN","IA","KS","KY","LA","ME","MD","MA","MI","MN","MS","MO","MT","NE","NV","NH","NJ","NM","NY","NC","ND","OH","OK","OR","PA","RI","SC","SD","TN","TX","UT","VT","VA","WA","WV","WI","WY")
  outcomes <- c("heart attack", "heart failure", "pneumonia")
  
  if(!state %in% states){stop("invalid state")}
  else if(!outcome %in% outcomes){stop("invalid outcome")}
  else{ data <- data.frame(Hospital.Name = outcome1$Hospital.Name,State = outcome1$State, Heart.Attack = outcome1[,11],Heart.Failure = outcome1[,17],Pneumonia = outcome1[,23],stringsAsFactors = F)
        
        datasplit <- split(data, data$State)
        statedata <- datasplit[[state]]
        
        
        
        output <- if(outcome == "heart attack"){
          
          
          statedata <- subset(statedata,complete.cases(statedata$Heart.Attack))
          statedata <- statedata[order(statedata$Heart.Attack,statedata$Hospital.Name),]
          statedata$Rank <- 1:nrow(statedata)
          if(num == "best"){statedata$Hospital.Name[statedata$Rank == 1]}
          else if(num == "worst") {statedata$Hospital.Name[statedata$Rank == nrow(statedata)]}
          else if(num > nrow(statedata)) {NA}
          else {statedata$Hospital.Name[statedata$Rank == num]}
          
        }
        else if(outcome == "heart failure"){
          
          statedata <- subset(statedata,complete.cases(statedata$Heart.Failure))
          statedata <- statedata[order(statedata$Heart.Failure,statedata$Hospital.Name),]
          statedata$Rank <- 1:nrow(statedata)
          if(num == "best"){statedata$Hospital.Name[statedata$Rank == 1]}
          else if(num == "worst") {statedata$Hospital.Name[statedata$Rank == nrow(statedata)]}
          else if(num > nrow(statedata)) {NA}
          else {statedata$Hospital.Name[statedata$Rank == num]}
          
          
          
        }
        else if(outcome == "pneumonia"){
          
          statedata <- subset(statedata,complete.cases(statedata$Pneumonia))
          statedata <- statedata[order(statedata$Pneumonia,statedata$Hospital.Name),]
          statedata$Rank <- 1:nrow(statedata)
          if(num == "best"){statedata$Hospital.Name[statedata$Rank == 1]}
          else if(num == "worst") {statedata$Hospital.Name[statedata$Rank == nrow(statedata)]}
          else if(num > nrow(statedata)) {NA}
          else {statedata$Hospital.Name[statedata$Rank == num]}
          
          
          
        }}
  return(output)
}