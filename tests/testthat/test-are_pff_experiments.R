test_that("use", {
  if (!beastier::is_on_travis()) return()
  testthat::expect_false(
    peregrine::are_pff_experiments(pirouette::create_all_experiments())
  )
  testthat::expect_true(
    peregrine::are_pff_experiments(peregrine::create_all_pff_experiments())
  )
})
