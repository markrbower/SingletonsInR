
library( R6 )
library( R6P )

source('~/Dropbox/Documents/Concepts/2021_02_21_Singletons/Analysis/SingletonsInR/R/Counter.R')

counter_A <- Counter$new()

f <- function() {
  counter_B <- Counter$new()
  counter_B$add_1()
}

f()

print( counter_A$count )
