#' Convert an experiment to one with PFF.
#' @inheritParams default_params_doc
#' @export
to_pff_experiment <- function(experiment) {
  pirouette::check_experiment(experiment)

  experiment$beast2_options <- to_pff_beast2_options(experiment$beast2_options)

  if (!is_pff(experiment$errors_filename)) {
    experiment$errors_filename <- get_pff_tempfile(fileext = ".csv")
  }

  check_pff_experiment(experiment)
  experiment
}
