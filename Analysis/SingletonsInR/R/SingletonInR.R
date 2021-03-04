library( R6 )
library( R6P )

#' @export
SingletonInR <- R6::R6Class("Singleton", inherit = R6P::Singleton, public = list(
  input = NA,
  value = ifelse( exists("self$value"), self$value, NA ),
  assign = function(input) {self$value = input}
))
