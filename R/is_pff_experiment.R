#' Determine if an experiment has Peregrine friendly filenames
#' @inheritParams default_params_doc
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
