test_that("use", {
  experiments <- pirouette::create_all_experiments()
  expect_false(are_pff_experiments(experiments))
  experiments <- to_pff_experiments(experiments)
  expect_true(are_pff_experiments(experiments))
})
