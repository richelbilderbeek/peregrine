#' Determine if an experiment has Peregrine friendly filenames
#' @param experiment a \code{pirouette} experiment,
#' as created by \link[pirouette]{create_experiment}
#' @export
is_pff_experiment <- function(experiment) {
  result <- FALSE
  tryCatch({
    check_pff_experiment(experiment) # nolint peregrine function
    result <- TRUE
  }, error = function(e) {} # nolint ignore e
  )
  result
}
