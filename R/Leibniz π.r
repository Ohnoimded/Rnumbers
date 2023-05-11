#' Pi
#'
#' Generates Pi to varying precision. Default iterations is 10e6.
#' @param fibonacci
#' @return Pi
#' @examples
#' fib1 <- Pi(digits=50);
#' @export

# Using a variable input would be faster to find the decimals of pi for small number of digits
pi <- function(precision=10e6,digits=50) {
    sum <- 0
    for (i in 0:precision) {
        sum <- sum + ((-1)^(i)) / ((2 * i)+1) #Leibniz pi/4 formula
    }
    return(formatC(4*sum, format = "f", digits = digits))
}
