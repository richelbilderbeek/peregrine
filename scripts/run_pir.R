# R script to test if pirouette runs on peregrine

# Experiments
gen_exp <- peregrine::create_test_pff_gen_experiment()
cand_exps <- peregrine::create_all_pff_experiments(
  mcmc = gen_exp$inference_model$mcmc,
  exclude_model = gen_exp$inference_model
)
experiments <- c(list(gen_exp), cand_exps)
peregrine::check_pff_experiments(experiments)

# pirouette parameters
pir_params <- pirouette::create_test_pir_params(
  experiments = experiments,
  twinning_params = peregrine::create_pff_twinning_params()
)
peregrine::check_pff_pir_params(pir_params)

# Run it
pirouette::pir_run(
  phylogeny = ape::rcoal(n = 6),
  pir_params = pir_params
)
