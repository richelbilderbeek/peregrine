#' Convert all the experiments with Peregrine-unfriendly
#' filenames to ones that do
#' @inheritParams default_params_doc
#' @export
to_pff_experiments <- function(experiments) {

  pirouette::check_experiments(experiments) # nolint peregrine function

  first_pff_cand_experiment <- NA
  for (experiment in experiments) {
    if (experiment$inference_conditions$model_type == "candidate") {
      first_pff_cand_experiment <- to_pff_experiment(experiment) # nolint peregrine function
      check_pff_experiment(first_pff_cand_experiment) # nolint peregrine function
      break
    }
  }


  for (i in seq_along(experiments)) {
    experiment <- experiments[[i]]
    if (experiment$inference_conditions$model_type == "generative") {
      experiments[[i]] <- to_pff_experiment(experiment) # nolint peregrine function
    } else {
      testit::assert(experiment$inference_conditions$model_type == "candidate")
      experiments[[i]]$errors_filename <- first_pff_cand_experiment$errors_filename # nolint yup it's long
      experiments[[i]]$beast2_options$input_filename <- first_pff_cand_experiment$beast2_options$input_filename # nolint yup it's long
      experiments[[i]]$inference_model$mcmc$tracelog$filename <- first_pff_cand_experiment$inference_model$mcmc$tracelog$filename # nolint yup it's long
      experiments[[i]]$inference_model$mcmc$treelog$filename <- first_pff_cand_experiment$inference_model$mcmc$treelog$filename # nolint yup it's long
      experiments[[i]]$beast2_options$output_state_filename <- first_pff_cand_experiment$beast2_options$output_state_filename # nolint yup it's long
      experiments[[i]]$beast2_options$beast2_working_dir <- first_pff_cand_experiment$beast2_options$beast2_working_dir # nolint yup it's long
    }
    check_pff_experiment(experiments[[i]]) # nolint peregrine function
  }

  check_pff_experiments(experiments) # nolint peregrine function
  experiments
}
