#' Create all experiments as done by
#' \link[pirouette]{create_all_experiments}
#' with PFF
#' @inheritParams default_params_doc
#' @export
create_all_pff_experiments <- function(
  site_models = beautier::create_site_models(),
  clock_models = beautier::create_clock_models(),
  tree_priors = beautier::create_tree_priors(),
  mcmc = beautier::create_mcmc(store_every = 1000),
  exclude_model = NA
) {
  experiments <- pirouette::create_all_experiments(
    site_models = site_models,
    clock_models = clock_models,
    tree_priors = tree_priors,
    mcmc = mcmc,
    exclude_model = exclude_model
  )
  to_pff_experiments(experiments)
}
