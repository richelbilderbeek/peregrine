test_that("use, all cand", {

  # Takes too long
  if (!beautier::is_on_ci()) return()

  pir_params <- pirouette::create_test_pir_params()
  pir_params$experiments <- pirouette::create_all_experiments()
  pir_params <- pirouette::init_pir_params(pir_params)
  expect_true(are_pff_experiments(pir_params$experiments))
  pir_params$experiments <- to_pff_experiments(pir_params$experiments)
  expect_true(are_pff_experiments(pir_params$experiments))
})

test_that("use, gen", {
  experiments <- list(pirouette::create_test_gen_experiment())
  experiments[[1]]$inference_model$mcmc$tracelog$filename <- "/pff_unfriendly"
  expect_false(are_pff_experiments(experiments))
  experiments <- to_pff_experiments(experiments)
  expect_true(are_pff_experiments(experiments))
})

test_that("use, gen + cand", {
  experiments <- list(
    pirouette::create_gen_experiment(),
    pirouette::create_cand_experiment()
  )
  experiments[[1]]$inference_model$mcmc$tracelog$filename <- "/unfriendly"
  experiments[[2]]$inference_model$mcmc$tracelog$filename <- "/unfriendly"
  experiments[[2]]$inference_model$site_model <-
    beautier::create_gtr_site_model()
  expect_false(are_pff_experiments(experiments))

  experiments <- to_pff_experiments(experiments)
  expect_true(are_pff_experiments(experiments))
})

test_that("use, gen + cand + cand", {
  cand_experiment <- pirouette::create_cand_experiment()
  experiments <- list(
    pirouette::create_gen_experiment(),
    cand_experiment,
    cand_experiment
  )
  experiments[[2]]$inference_model$site_model <-
    beautier::create_gtr_site_model()
  experiments[[3]]$inference_model$site_model <-
    beautier::create_tn93_site_model()
  experiments[[1]]$inference_model$mcmc$tracelog$filename <- "/unfriendly"
  experiments[[2]]$inference_model$mcmc$tracelog$filename <- "/unfriendly"
  experiments[[3]]$inference_model$mcmc$tracelog$filename <- "/unfriendly"
  expect_false(are_pff_experiments(experiments))
  experiments <- to_pff_experiments(experiments)
  expect_true(are_pff_experiments(experiments))
})

test_that("use, cand + cand", {
  cand_experiment <- pirouette::create_cand_experiment()
  experiments <- list(
    cand_experiment,
    cand_experiment
  )
  experiments[[2]]$inference_model$site_model <-
    beautier::create_gtr_site_model()
  experiments[[1]]$inference_model$mcmc$tracelog$filename <- "/unfriendly"
  experiments[[2]]$inference_model$mcmc$tracelog$filename <- "/unfriendly"
  expect_false(are_pff_experiments(experiments))
  experiments <- to_pff_experiments(experiments)
  expect_true(are_pff_experiments(experiments))
})
