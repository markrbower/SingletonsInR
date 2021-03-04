library( pryr )
library( R6 )
library( R6P )

TemporaryFile <- R6Class("TemporaryFile", list(
  path = NULL,
  initialize = function(...) {
    self$path <- list(...)
  },
  finalize = function() {
    message("Cleaning up ", self$path)
    unlink(self$path)
  }
))


Parameters <- R6::R6Class("Parameters", inherit = R6P::Singleton, public = list(
  name = NULL,
  elements = TemporaryFile$new(),
  initialize = function(name) { self$name = name },
  retrieve = function(){ address(elements) }
))

