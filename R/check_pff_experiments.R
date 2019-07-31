#' Check if all experiments have PFF
#' @inheritParams default_params_doc
#' @export
check_pff_experiments <- function(experiments) {
  pirouette::check_experiments(experiments)
  for (i in seq_along(experiments)) {
    check_pff_experiment(experiments[[i]]) # nolint peregrine function
  }
}
