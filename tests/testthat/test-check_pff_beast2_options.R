test_that("use", {
  expect_error(check_pff_beast2_options(beastier::create_beast2_options()))

  good_beast2_options <- create_pff_beast2_options()
  expect_silent(check_pff_beast2_options(good_beast2_options))

  beast2_options <- good_beast2_options
  beast2_options$input_filename <- "/tmp/puf" # nolint do use absolute path in test
  expect_error(
    check_pff_beast2_options(beast2_options),
    "Peregrine-unfriendly filename for '"
  )

  beast2_options <- good_beast2_options
  beast2_options$output_state_filename <- "/tmp/puf" # nolint do use absolute path in test
  expect_error(
    check_pff_beast2_options(beast2_options),
    "Peregrine-unfriendly filename for '"
  )

  beast2_options <- good_beast2_options
  beast2_options$beast2_path <- "/tmp/puf" # nolint do use absolute path in test
  expect_error(
    check_pff_beast2_options(beast2_options),
    "Peregrine-unfriendly filename for '"
  )
})
