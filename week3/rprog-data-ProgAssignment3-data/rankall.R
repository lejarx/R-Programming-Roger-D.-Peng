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