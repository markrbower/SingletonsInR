library( pryr )
library( R6 )
library( R6P )

Counter <- R6::R6Class("Counter", inherit = R6P::Singleton, public = list(
  count = 0,
  add_1 = function(){self$count = self$count + 1; invisible(self)}
))
