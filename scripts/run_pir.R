# R script to test if pirouette runs on peregrine
pirouette::pir_run(
  phylogeny = ape::read.tree(text = "((A:2, B:2):1, C:3);"),
  pir_params = peregrine::create_test_pff_pir_params()
)
