#' Check if the mcmc is PFF
#' @inheritParams default_params_doc
#' @export
check_pff_mcmc <- function(mcmc) {

  beastier::check_mcmc(mcmc)

  if (!peregrine::is_pff(mcmc$tracelog$filename)) {
    stop("Peregrine-unfriendly filename for 'mcmc$tracelog$filename'")
  }
  if (!peregrine::is_pff(mcmc$treelog$filenames)) {
    stop(
      "Peregrine-unfriendly filename for 'mcmc$treelog$filenames'"
    )
  }
}
