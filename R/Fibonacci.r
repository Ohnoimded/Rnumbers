#' FIbonacci
#'
#' Generates large fibonacci sequences
#' @param fibonacci
#' @return nth fibonacci number
#' @examples
#' fib1 <- fibonacci(50);
#' @export


library(gmp)
fibonacci <- function(n,save=F,print=T) {
    fib <- as.bigz(c(0, 1))
    for (i in 3:n) {
        fib[i] <- fib[i - 1] + fib[i - 2]
    }
    if(save=T){write.table(as.character(fibonacci(n)), "fibonacci.csv", col.names = "Fibonacci Numbers", row.names = FALSE)}
    if(print=T){fib}
}


#The function `as.bigz` is used for big numbers and to avoid conversion error while calculating big numbers.<br/>
 # Do `install.packages("gmp")` to use `as.bigz`
