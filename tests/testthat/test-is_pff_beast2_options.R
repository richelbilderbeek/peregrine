test_that("use", {
  testthat::expect_false(
    peregrine::is_pff_beast2_options(beastier::create_beast2_options())
  )
  testthat::expect_true(
    peregrine::is_pff_beast2_options(peregrine::create_pff_beast2_options())
  )
})
