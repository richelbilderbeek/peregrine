#' Convert an experiment to one with PFF.
#' @inheritParams default_params_doc
#' @export
to_pff_experiment <- function(experiment) {
  pirouette::check_experiment(experiment)

  experiment$beast2_options <- to_pff_beast2_options(experiment$beast2_options) # nolint peregrine function

  if (!is_pff(experiment$errors_filename)) { # nolint peregrine function
    experiment$errors_filename <- get_pff_tempfile(fileext = ".csv") # nolint peregrine function
  }

  check_pff_experiment(experiment) # nolint peregrine function
  experiment
}
