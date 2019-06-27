test_that("use", {
  beast2_options <- beastier::create_beast2_options()
  expect_false(is_pff_beast2_options(beast2_options))
  beast2_options <- to_pff_beast2_options(beast2_options)
  expect_true(is_pff_beast2_options(beast2_options))

  # Make every element Peregrine-unfriendly, one by one
  beast2_options$input_filename <- "/tmp/puf"
  expect_false(is_pff_beast2_options(beast2_options))
  beast2_options <- to_pff_beast2_options(beast2_options)
  expect_true(is_pff_beast2_options(beast2_options))

  beast2_options$output_log_filename <- "/tmp/puf"
  expect_false(is_pff_beast2_options(beast2_options))
  beast2_options <- to_pff_beast2_options(beast2_options)
  expect_true(is_pff_beast2_options(beast2_options))

  beast2_options$output_trees_filenames <- "/tmp/puf"
  expect_false(is_pff_beast2_options(beast2_options))
  beast2_options <- to_pff_beast2_options(beast2_options)
  expect_true(is_pff_beast2_options(beast2_options))

  beast2_options$output_state_filename <- "/tmp/puf"
  expect_false(is_pff_beast2_options(beast2_options))
  beast2_options <- to_pff_beast2_options(beast2_options)
  expect_true(is_pff_beast2_options(beast2_options))

  beast2_options$beast2_working_dir <- "/tmp/puf"
  expect_false(is_pff_beast2_options(beast2_options))
  beast2_options <- to_pff_beast2_options(beast2_options)
  expect_true(is_pff_beast2_options(beast2_options))

  beast2_options$beast2_path <- "/tmp/puf"
  expect_false(is_pff_beast2_options(beast2_options))
  expect_error(
    to_pff_beast2_options(beast2_options),
    "Cannot convert Peregrine-unfriendly filename for 'beast2_options"
  )
})
