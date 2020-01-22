test_that("use", {
  # Already works
  expect_silent(
    check_pff_pir_params(
      pirouette::create_test_pir_params()
    )
  )
  # Irrelevant
  expect_silent(
    check_pff_pir_params(
      create_test_pff_pir_params()
    )
  )
})
