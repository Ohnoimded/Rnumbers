
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Rnumbers
<!-- badges: start -->
[![Project Status: Work in Progress](https://www.repostatus.org/badges/latest/wip.svg)](https://www.repostatus.org/#wip)
[![codecov](https://codecov.io/github/Ohnoimded/Rnumbers/branch/main/graph/badge.svg?token=TM794IEP5E)](https://codecov.io/github/Ohnoimded/Rnumbers)
[![License: AGPL v3](https://img.shields.io/badge/License-AGPL_v3-blue.svg)](https://www.gnu.org/licenses/agpl-3.0)
  <!-- badges: end -->
<h1> R functions to calculate numbers </h1>

It is an unorganised repo of historically important numbers and methods to calculate them. The goal of Rnumbers is to generate mathematical numbers without needing to code much

### Tools used: 
* Mathemathical equations using latex: [codecogs.com](https://www.codecogs.com/latex/eqneditor.php)
* Language : R
* Editor: VScode, RStudio

## Installation

You can install the development version of Rnumbers from
[GitHub](https://github.com/Ohnoimded/Rnumbers) with:

``` r
# install.packages("devtools")
devtools::install_github("Ohnoimded/Rnumbers")
```

## Example

This is a basic example which shows you how to get a number with this
package:

``` r
library(Rnumbers)
pi <- pi() # Generates an approximation of PI
print(pi)
#> 1 'mpfr' number of precision  2000   bits 
#> [1] 3.14169264359054321346076832087794022254482575213871073399980548919020987997956437409447175124636253586144173064336097114785957817473165281087892409042389278915803530577994555653032710086199233863941829054011186823260233665568322307421614039989539733616403706958275491366201399621396698887674722311635357960997022294132683033489418761096321014873045236105688483742235983660598807122110881152006162167101585245375548275337762404697162678157505388441424578305582378162142033761717666218774527056164493129698537169693075175005960135266739617623876622004525497453330118080588386239593930182426901199487449842

fib1 <- fibonacci(n=6,print=FALSE,save=FALSE) # Get a sequence of fibonacci numbers
print(fib1)
#> Big Integer ('bigz') object of length 6:
#> [1] 0 1 1 2 3 5
fibonacci(n=600,print=FALSE,save=TRUE) # saves to a csv file
#> Saved as fibonacci.csv

zero() # Prints zero
#> [1] 0
```
