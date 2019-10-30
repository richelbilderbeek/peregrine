test_that("use", {
  expect_silent(check_pff_alignment_params(create_pff_alignment_params()))

  # Due to a change in pirouette, this test started to pass
  expect_silent(check_pff_alignment_params(pirouette::create_alignment_params()))

  expect_error(
    check_pff_alignment_params(
      pirouette::create_alignment_params(
        fasta_filename = "/no_pff"
      )
    )
  )
})
