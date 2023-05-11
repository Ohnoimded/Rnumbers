library(gmp)
fibonacci <- function(nth) {
    fib <- as.bigz(c(0, 1))
    for (i in 3:nth) {
        fib[i] <- fib[i - 1] + fib[i - 2]
    }
    fib
}
n <- 42069
write.table(as.character(fibonacci(n)), "fibonacci.csv",


                col.names = "Fibonacci Numbers", row.names = FALSE)
# Fibonacci sequence
### Generate large fibonacci numbers


#The function `as.bigz` is used for big numbers and to avoid conversion error while calculating big numbers.<br/>
 # Do `install.packages("gmp")` to use `as.bigz`
