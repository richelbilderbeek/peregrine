# R script to test if pirouette runs on peregrine

# Experiments
gen_exp <- peregrine::create_test_pff_gen_experiment()
cand_exps <- peregrine::create_all_pff_experiments(
  exclude_model = gen_exp$inference_model
)
experiments <- c(list(gen_exp), cand_exps)


# pirouette parameters
pir_params <- peregrine::create_test_pff_pir_params(
  experiments = experiments,
  twinning_params = peregrine::create_pff_twinning_params()
)

# Run it
pirouette::pir_run(
  phylogeny = ape::read.tree(text = "((A:2, B:2):1, C:3);"),
  pir_params = pir_params
)
