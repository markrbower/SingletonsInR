test_that("singleton assignment works", {
  library( SingletonsInR )
  s <- SingletonInR$new()
  s$assign( 5 )
  v <- s$value
  expect_equal(v, 5)
})

test_that("singleton universality works", {
  q <- SingletonInR$new()
  v <- q$value
  expect_equal(v, 5)
})

test_that("universality within functions works", {
  f <- function() {
    r <- SingletonInR$new()
    v <- r$value
    expect_equal(v, 5)
  }
  f()
})



