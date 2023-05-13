library(testthat)
library(Rnumbers)
library(gmp)

# Test pi()
test_that("pi() returns the correct value", {
  expect_equal(round(as.numeric(pi()),2),3.14)
})

# Test zero()
test_that("zero() returns 0", {
  expect_equal(zero(), 0)
})

# Test fibonacci()
test_that("fibonacci() returns the correct sequence", {
  # Test with save = FALSE
  expect_equal(fibonacci(n=0), as.bigz(0))
  expect_equal(fibonacci(n=1), as.bigz(c(0, 1)))
  expect_equal(fibonacci(n=2), as.bigz(c(0, 1, 1)))
  expect_equal(fibonacci(n=10), as.bigz(c(0, 1, 1, 2, 3, 5, 8, 13, 21, 34)))

})

