test_that("use", {
  expect_silent(
    check_pff_pir_params(
      create_pff_pir_params(
        alignment_params = pirouette::create_test_alignment_params()
      )
    )
  )
})

test_that("use", {
  expect_silent(
    check_pff_pir_params(
      create_pff_pir_params(
        alignment_params = pirouette::create_test_alignment_params(),
        twinning_params = pirouette::create_twinning_params()
      )
    )
  )
})
