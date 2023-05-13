#' pi
#' @name pi
#' @description Prints the value of pi
#' @param pi A Leibniz approximation of pi. Generates Pi to varying precision. Default iterations is 10e3.
#' @param precision Number of iterations to get precise value
#' @param digits Number of digits after the decimal point
#' @return Value of pi at varying number of digits
#' @examples
#' pi <- pi(digits=50,precision = 10e3);
#' @export

# Using a variable input would be faster to find the decimals of pi for small number of digits


pi <- function(precision=10e3, digits=2000) {
  precision_bits <- ceiling(precision / log2(10))

  sum <- Rmpfr::mpfr(0, precision_bits)
  for (i in 0:precision) {
    sum <- sum + Rmpfr::mpfr((-1)^i, precision_bits) / Rmpfr::mpfr((2*i+1), precision_bits)
  }
  return(Rmpfr::mpfr(4*sum, digits))
}
