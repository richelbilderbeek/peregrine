test_that("use", {

  # Takes too long
  if (!beastier::is_on_travis()) return()

  expect_error(check_pff_experiments(pirouette::create_all_experiments()))
  expect_silent(check_pff_experiments(list(create_test_pff_gen_experiment())))
})
