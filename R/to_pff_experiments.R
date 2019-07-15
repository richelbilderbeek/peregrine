#' Convert all the experiments with Peregrine-unfriendly
#' filenames to ones that do
#' @inheritParams default_params_doc
#' @export
to_pff_experiments <- function(experiments) {

  pirouette::check_experiments(experiments) # nolint peregrine function

  for (i in seq_along(experiments)) {
    experiments[[i]] <- to_pff_experiment(experiments[[i]]) # nolint peregrine function
  }

  check_pff_experiments(experiments) # nolint peregrine function
  experiments
}
