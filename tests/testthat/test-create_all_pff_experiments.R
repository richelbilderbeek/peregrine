test_that("use", {
  # Takes too long
  if (!beautier::is_on_ci()) return()

  expect_false(are_pff_experiments(pirouette::create_all_experiments()))

  expect_true(are_pff_experiments(create_all_pff_experiments()))
})
