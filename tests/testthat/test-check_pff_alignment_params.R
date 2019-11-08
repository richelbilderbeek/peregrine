test_that("use", {
  testthat::expect_silent(
    peregrine::check_pff_alignment_params(
      peregrine::create_pff_alignment_params()
    )
  )

  # Due to a change in pirouette, this test started to pass
  testthat::expect_silent(
    peregrine::check_pff_alignment_params(pirouette::create_alignment_params())
  )

  testthat::expect_error(
    peregrine::check_pff_alignment_params(
      pirouette::create_alignment_params(
        fasta_filename = "/no_pff"
      )
    )
  )
})
