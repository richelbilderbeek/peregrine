#' Converts a mcmc to have PFF.
#' If all filenames are Peregrine-friendly,
#' this function does not alter the input
#' @inheritParams default_params_doc
#' @export
to_pff_mcmc <- function(mcmc) {

  beautier::check_mcmc(mcmc)

  if (!peregrine::is_pff(mcmc$treelog$filenames)) { # nolint peregrine function
    mcmc$treelog$filenames <- peregrine::to_pff(mcmc$treelog$filenames) # nolint peregrine function
  }
  if (!peregrine::is_pff(mcmc$tracelog$filename)) { # nolint peregrine function
    mcmc$tracelog$filename <- peregrine::to_pff(mcmc$tracelog$filename) # nolint peregrine function
  }

  peregrine::check_pff_mcmc(mcmc) # nolint peregrine functione
  mcmc
}
