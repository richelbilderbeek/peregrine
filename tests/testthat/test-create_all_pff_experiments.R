test_that("use", {
  expect_false(are_pff_experiments(pirouette::create_all_experiments()))
  expect_true(are_pff_experiments(create_all_pff_experiments()))
})
