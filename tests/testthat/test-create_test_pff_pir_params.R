test_that("use", {
  expect_silent(
    check_pff_pir_params(
      create_test_pff_pir_params()
    )
  )
})
