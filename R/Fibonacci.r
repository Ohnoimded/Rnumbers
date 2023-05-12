#' fibonacci
#' @name fibonacci
#' @param fibonacci Generates fibonacci
#' @param n The number of Fibonacci numbers to generate.
#' @param save Logical. If TRUE, the generated numbers are saved in a file.
#' @param print Logical. If TRUE, the generated numbers are printed to the console.
#' @return A sequence of fibonacci numbers or a csv file
#' @examples
#' fib1 <- fibonacci(n=50,save=TRUE,print=FALSE)
#' fibonacci(n=50,save=TRUE,print=TRUE)
#' @export

fibonacci <- function(n = 5, save = TRUE, print = FALSE) {
  fib <- gmp::as.bigz(c(0, 1))

  for (i in 3:n) {
    fib[i] <- fib[i - 1] + fib[i - 2]
  }

  if (save) {
    filename <- file("fibonacci.csv")
    cat("Fibonacci Numbers\n", file = filename)
    cat(paste(fib, collapse = "\n"), file = filename)
    close(filename)
    message("Saved as fibonacci.csv")
    return(invisible())
  }

  if (print) {
    print(fib)
  } else {
    return(fib)
  }
}



#The function `as.bigz` is used for big numbers and to avoid conversion error while calculating big numbers.<br/>
 # Do `install.packages("gmp")` to use `as.bigz`
