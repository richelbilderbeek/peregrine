#' Determine if an experiment has Peregrine friendly filenames
#' @inheritParams default_params_doc
#' @export
is_pff_experiment <- function(experiment) {
  result <- FALSE
  tryCatch({
    peregrine::check_pff_experiment(experiment)
    result <- TRUE
  }, error = function(e) {} # nolint ignore e
  )
  result
}
