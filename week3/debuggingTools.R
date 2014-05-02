printMessage <- function(x) {
  if(is.na(x))
    print("x is a missing value!")
  else if (x > 0)
    print("x is greater than zero")
  else 
    print("x is less than or equal to zero")
  invisible(x)
}
printMessage(1)
printMessage(NA)
printMessage(p)
