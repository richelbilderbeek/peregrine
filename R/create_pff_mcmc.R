#' Create mcmc that has Peregrine friendly filenames
#' @inheritParams default_params_doc
#' @author Giovanni Laudanno, Richel J.C. Bilderbeek
#' @export
create_pff_mcmc <- function(
  chain_length,
  store_every,
  tracelog = beautier::create_tracelog(
    filename = peregrine::get_pff_tempfile()
  ),
  treelog = beautier::create_treelog(
    filename = peregrine::get_pff_tempfile()
  )
) {
  mcmc <- beautier::create_mcmc(
    chain_length = chain_length,
    store_every = store_every,
    tracelog = tracelog,
    treelog = treelog
  )
  testit::assert(peregrine::is_pff(mcmc$tracelog$filename)) # nolint peregrine function
  testit::assert(peregrine::is_pff(mcmc$treelog$filename)) # nolint peregrine function
  mcmc
}
