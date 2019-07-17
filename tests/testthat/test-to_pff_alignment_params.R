test_that("use", {

  alignment_params <- pirouette::create_alignment_params()
  expect_error(check_pff_alignment_params(alignment_params))
  alignment_params <- to_pff_alignment_params(alignment_params)
  expect_silent(check_pff_alignment_params(alignment_params))
})
