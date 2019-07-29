test_that("use, no twinning", {

  pir_params <- pirouette::create_test_pir_params()
  expect_error(check_pff_pir_params(pir_params))
  expect_silent(check_pff_pir_params(to_pff_pir_params(pir_params)))
})

test_that("use", {

  pir_params <- pirouette::create_test_pir_params(
    twinning_params = pirouette::create_twinning_params()
  )
  expect_error(check_pff_pir_params(pir_params))
  expect_silent(check_pff_pir_params(to_pff_pir_params(pir_params)))
})
