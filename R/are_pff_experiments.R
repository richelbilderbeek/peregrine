#' Determine if all experiments have Peregrine friendly filenames
#' @param experiments a list of \code{pirouette} experiments,
#' as created by \link[pirouette]{create_experiment}
#' @export
are_pff_experiments <- function(experiments) {
  result <- FALSE
  tryCatch({
    peregrine::check_pff_experiments(experiments) # nolint peregrine function
    result <- TRUE
  }, error = function(e) {} # nolint ignore e
  )
  result
}
