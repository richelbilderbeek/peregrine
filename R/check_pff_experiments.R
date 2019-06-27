#' Check if all experiments have PFF
#' @export
check_pff_experiments <- function(experiments) {
  for (i in seq_along(experiments)) {
    check_pff_experiment(experiments[[i]])
  }
}
