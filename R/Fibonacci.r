#' FIbonacci
#'
#' Generates large fibonacci sequences
#' @param fibonacci
#' @return nth fibonacci number
#' @examples
#' fib1 <- fibonacci(50);
#' @export

library(gmp)

fibonacci <- function(n = 5, save = TRUE, print = FALSE) {
  fib <- as.bigz(c(0, 1))

  for (i in 3:n) {
    fib[i] <- fib[i - 1] + fib[i - 2]
  }

  if (save) {
    con <- file("fibonacci.csv")
    cat("Fibonacci Numbers\n", file = con)
    cat(paste(fib, collapse = "\n"), file = con)
    close(con)
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
