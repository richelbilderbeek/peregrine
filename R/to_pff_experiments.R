#' Convert all the experiments with Peregrine-unfriendly
#' filenames to ones that do
#' @inheritParams default_params_doc
#' @export
to_pff_experiments <- function(experiments) {

  pirouette::check_experiments(experiments)

  for (i in seq_along(experiments)) {
    experiments[[i]] <- to_pff_experiment(experiments[[i]])
  }

  check_pff_experiments(experiments)
  experiments
}
