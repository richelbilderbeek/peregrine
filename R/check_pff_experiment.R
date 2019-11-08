#' Check if an experiment has PFF
#' @inheritParams default_params_doc
#' @export
check_pff_experiment <- function(experiment) {
  peregrine::check_pff_beast2_options(experiment$beast2_options) # nolint peregrine function
  if (!peregrine::is_pff(experiment$errors_filename)) { # nolint peregrine function
    stop("Peregrine-unfriendly filename for 'experiment$errors_filename'")
  }

}
