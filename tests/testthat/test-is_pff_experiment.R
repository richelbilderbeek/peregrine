test_that("use", {
  # Thanks to rappdirs
  expect_true(is_pff_experiment(pirouette::create_test_experiment()))

  expect_true(is_pff_experiment(peregrine::create_test_pff_gen_experiment()))
})
