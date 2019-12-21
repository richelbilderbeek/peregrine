#' Convert an experiment to one with PFF.
#' @inheritParams default_params_doc
#' @export
to_pff_experiment <- function(experiment) {
  pirouette::check_experiment(experiment)

  experiment$beast2_options <-
    peregrine::to_pff_beast2_options(experiment$beast2_options)
  experiment$inference_model$mcmc <-
    peregrine::to_pff_mcmc(experiment$inference_model$mcmc)

  if (!peregrine::is_pff(experiment$errors_filename)) {
    experiment$errors_filename <- peregrine::to_pff(experiment$errors_filename)
  }

  peregrine::check_pff_experiment(experiment)
  experiment
}
