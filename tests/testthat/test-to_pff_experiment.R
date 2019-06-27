test_that("use", {
  experiment <- pirouette::create_test_experiment()
  expect_false(is_pff_experiment(experiment))
  experiment <- to_pff_experiment(experiment)
  expect_true(is_pff_experiment(experiment))

  # Individual elements
  experiment$errors_filename <- "/tmp/puf.csv"
  expect_false(is_pff_experiment(experiment))
  experiment <- to_pff_experiment(experiment)
  expect_true(is_pff_experiment(experiment))

  # BEAST2 options are converted by to_pff_beast2_options
})
