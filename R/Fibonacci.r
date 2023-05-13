#' fibonacci
#' @name fibonacci
#' @description Generates n Fibonacci numbers as a sequence
#' @param fibonacci Generates n Fibonacci numbers
#' @param n The number of Fibonacci numbers to generate.
#' @param save Logical. If TRUE, the generated numbers are saved in a file.
#' @param print Logical. If TRUE, the generated numbers are printed to the console.
#' @return A sequence of fibonacci numbers or a csv file
#' @examples
#' fib1 <- fibonacci(n=50,save=FALSE,print=FALSE)
#' fibonacci(n=50,save=FALSE,print=TRUE)
#' @export
fibonacci <- function(n = 5, save = FALSE, print = FALSE) {
  fib <- gmp::as.bigz(c(0, 1,1))
  if (n == 0){
    return(gmp::as.bigz(0))
  }

  if (n==1){
    return(gmp::as.bigz(c(0,1)))
  }
  if (n==2){
    return(gmp::as.bigz(c(0,1,1)))
  }
  for (i in 3:n) {
    fib[i] <- fib[i - 1] + fib[i - 2]
  }

  if (save) {
    data_dir <- file.path(getwd(), "data")
    dir.create(data_dir, showWarnings = FALSE)
    filename <- file.path(data_dir, "fibonacci.csv")
    cat("Fibonacci Numbers\n", file = filename)
    cat(paste(fib, collapse = "\n"), file = filename)
    message("Saved as data/fibonacci.csv")
    return(invisible())
  }

  if (print) {
    print(fib)
  } else {
    return(fib)
  }
}
