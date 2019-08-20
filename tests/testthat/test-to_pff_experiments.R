test_that("use, all cand", {
  experiments <- pirouette::create_all_experiments()
  expect_false(are_pff_experiments(experiments))
  experiments <- to_pff_experiments(experiments)
  expect_true(are_pff_experiments(experiments))
})

test_that("use, gen", {
  experiments <- list(pirouette::create_gen_experiment())
  expect_false(are_pff_experiments(experiments))
  experiments <- to_pff_experiments(experiments)
  expect_true(are_pff_experiments(experiments))
})

test_that("use, gen + cand", {
  experiments <- list(
    pirouette::create_gen_experiment(),
    pirouette::create_cand_experiment()
  )
  experiments[[2]]$inference_model$site_model <- create_gtr_site_model()
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
  experiments[[2]]$inference_model$site_model <- create_gtr_site_model()
  experiments[[3]]$inference_model$site_model <- create_tn93_site_model()
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
  experiments[[2]]$inference_model$site_model <- create_gtr_site_model()
  expect_false(are_pff_experiments(experiments))
  experiments <- to_pff_experiments(experiments)
  expect_true(are_pff_experiments(experiments))
})
