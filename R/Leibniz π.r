# Using a variable input would be faster to find the decimals of pi for small number of digits
pi <- function() { 
    sum <- 0
    for (i in 0:10e10) {
        sum <- sum + ((-1)^(i)) / ((2 * i)+1) #Leibniz pi/4 formula
    }
    return(4*sum)
}
print(formatC(pi(), format = "f", digits = 50))
