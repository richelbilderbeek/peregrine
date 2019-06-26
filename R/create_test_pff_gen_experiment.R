#' Creates a Peregrine-friendly generative experiment for testing
#' @param mrca_prior an MRCA priors,
#' as created by \link[beautier]{create_mrca_prior}
#' @param mcmc an MCMC,
#' as created by \link[beautier]{create_mcmc}
#' @param beast2_options BEAST2 options,
#' as created by \link[beastier]{create_beast2_options}
#' @author Richel J.C. Bilderbeek
#' @export
create_test_pff_gen_experiment <- function(
  mrca_prior = beautier::create_mrca_prior(
    mrca_distr = beautier::create_normal_distr(
      mean = 15.0,
      sigma = 0.001
    ),
    is_monophyletic = TRUE
  ),
  mcmc = beautier::create_mcmc(chain_length = 2000, store_every = 1000),
  beast2_options = create_pff_beast2_options()
) {
  experiment <- pirouette::create_test_gen_experiment(
    inference_model = beautier::create_inference_model(
      mrca_prior = mrca_prior,
      mcmc = mcmc
    ),
    beast2_options = beast2_options
  )
  experiment$errors_filename <- get_pff_tempfile(
    pattern = "errors_", fileext = ".csv"
  )
  experiment
}
