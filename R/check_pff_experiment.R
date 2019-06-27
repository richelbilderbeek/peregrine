#' Check if an experiment has PFF
#' @export
check_pff_experiment <- function(experiment) {
  check_pff_beast2_options(experiment$beast2_options)
  if (!is_pff(experiment$errors_filename)) {
    stop("Peregrine-unfriendly filename for 'experiment$errors_filename'")
  }

}
