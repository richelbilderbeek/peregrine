test_that("use", {
  # Used to give an error, thanks to rappdirs for fixing this
  testthat::expect_silent(
    peregrine::check_pff_beast2_options(beastier::create_beast2_options())
  )

  good_beast2_options <- peregrine::create_pff_beast2_options()
  testthat::expect_silent(
    peregrine::check_pff_beast2_options(good_beast2_options)
  )

  beast2_options <- good_beast2_options
  beast2_options$input_filename <- "/tmp/puf" # nolint do use absolute path in test
  testthat::expect_error(
    peregrine::check_pff_beast2_options(beast2_options),
    "Peregrine-unfriendly filename for '"
  )

  beast2_options <- good_beast2_options
  beast2_options$output_state_filename <- "/tmp/puf" # nolint do use absolute path in test
  testthat::expect_error(
    peregrine::check_pff_beast2_options(beast2_options),
    "Peregrine-unfriendly filename for '"
  )

  beast2_options <- good_beast2_options
  beast2_options$beast2_path <- "/tmp/puf" # nolint do use absolute path in test
  testthat::expect_error(
    peregrine::check_pff_beast2_options(beast2_options),
    "Peregrine-unfriendly filename for '"
  )
})
