library( R6 )
library( R6P )

Parameters <- R6::R6Class("Parameters", inherit = R6P::Singleton, public = list(
  input = NA,
  value = ifelse( exists("self$value"), self$value, NA ),
  assign = function(input) {self$value = input}
))
