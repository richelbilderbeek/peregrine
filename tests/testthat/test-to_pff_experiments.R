test_that("use", {
  experiments <- pirouette::create_all_experiments()
  expect_false(are_pff_experiments(experiments))
  experiments <- to_pff_experiments(experiments)
  expect_true(are_pff_experiments(experiments))

  # Individual elements
  experiments[[2]] <- pirouette::create_test_cand_experiment()
  experiments[[2]]$inference_model$mcmc <- beautier::create_mcmc(
    chain_length = 1e+07, store_every = 1000
  )
  pirouette::check_experiments(experiments)
  expect_false(are_pff_experiments(experiments))
  experiments <- to_pff_experiments(experiments)
  expect_true(are_pff_experiments(experiments))
})
