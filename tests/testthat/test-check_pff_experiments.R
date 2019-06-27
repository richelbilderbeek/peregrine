test_that("use", {

  expect_error(check_pff_experiments(pirouette::create_all_experiments()))
  expect_silent(check_pff_experiments(list(create_test_pff_gen_experiment())))
})
