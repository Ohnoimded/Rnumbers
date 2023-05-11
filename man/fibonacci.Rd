\name{Fibonacci}
\alias{Fibonacci}

\title{
Fibonacci
}
\description{
Prints Fibonacci
}
\usage{
fibonacci(x)
}

\author{
Ohnoimded}
\note{
Performance depends on the hardware. Will update with better code}


\examples{n <- 42069
write.table(as.character(fibonacci(n)), "fibonacci.csv", col.names = "Fibonacci Numbers", row.names = FALSE)
}
