test_that("use", {
  # Takes too long
  if (!beastier::is_on_travis()) return()

  expect_false(are_pff_experiments(pirouette::create_all_experiments()))

  expect_true(are_pff_experiments(create_all_pff_experiments()))
})
