#' Convert an experiment to one with PFF.
#' @inheritParams default_params_doc
#' @export
to_pff_experiment <- function(experiment) {
  pirouette::check_experiment(experiment)

  experiment$beast2_options <-
    peregrine::to_pff_beast2_options(experiment$beast2_options) # nolint peregrine function
  experiment$inference_model$mcmc <-
    peregrine::to_pff_mcmc(experiment$inference_model$mcmc) # nolint peregrine function

  if (!peregrine::is_pff(experiment$errors_filename)) { # nolint peregrine function
    experiment$errors_filename <- peregrine::to_pff(experiment$errors_filename) # nolint peregrine function
  }

  peregrine::check_pff_experiment(experiment) # nolint peregrine function
  experiment
}
