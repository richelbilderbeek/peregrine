test_that("use", {
  if (!beautier::is_on_ci()) return()
  testthat::expect_false(
    peregrine::are_pff_experiments(pirouette::create_all_experiments())
  )
  testthat::expect_true(
    peregrine::are_pff_experiments(peregrine::create_all_pff_experiments())
  )
})
