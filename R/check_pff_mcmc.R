#' Check if the mcmc is PFF
#' @inheritParams default_params_doc
#' @export
check_pff_mcmc <- function(mcmc) {

  beautier::check_mcmc(mcmc)

  if (!peregrine::is_pff(mcmc$tracelog$filename)) {
    stop("Peregrine-unfriendly filename for 'mcmc$tracelog$filename'")
  }
  if (!peregrine::is_pff(mcmc$screenlog$filename)) {
    stop(
      "Peregrine-unfriendly filename for 'mcmc$screenlog$filename'"
    )
  }
  if (!peregrine::is_pff(mcmc$treelog$filename)) {
    stop(
      "Peregrine-unfriendly filename for 'mcmc$treelog$filename'"
    )
  }
}
