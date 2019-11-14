#' Create mcmc that has Peregrine friendly filenames
#' @inheritParams default_params_doc
#' @author Giovanni Laudanno, Richel J.C. Bilderbeek
#' @export
create_pff_mcmc <- function(
  chain_length = beautier::create_mcmc()$chain_length,
  store_every = beautier::create_mcmc()$store_every,
  pre_burnin = beautier::create_mcmc()$pre_burnin,
  n_init_attempts = beautier::create_mcmc()$n_init_attempts,
  sample_from_prior = beautier::create_mcmc()$sample_from_prior,
  tracelog = beautier::create_tracelog(
    filename = peregrine::get_pff_tempfile()
  ),
  screenlog = beautier::create_screenlog(
    filename = ""
  ),
  treelog = beautier::create_treelog(
    filename = peregrine::get_pff_tempfile()
  )
) {
  mcmc <- beautier::create_mcmc(
    chain_length = chain_length,
    store_every = store_every,
    pre_burnin = pre_burnin,
    n_init_attempts = n_init_attempts,
    sample_from_prior = sample_from_prior,
    tracelog = tracelog,
    screenlog = screenlog,
    treelog = treelog
  )
  testit::assert(peregrine::is_pff(mcmc$tracelog$filename))
  testit::assert(peregrine::is_pff(mcmc$treelog$filename))
  mcmc
}
