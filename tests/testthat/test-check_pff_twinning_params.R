test_that("use", {
  expect_error(check_pff_twinning_params(pirouette::create_twinning_params()))

  expect_silent(check_pff_twinning_params(create_pff_twinning_params()))

  # NA is a valid twinning parameter
  expect_silent(check_pff_twinning_params(NA))
})
