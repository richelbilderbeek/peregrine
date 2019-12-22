test_that("use", {
  expect_silent(
    check_pff_experiment(peregrine::create_test_pff_gen_experiment())
  )
  # Used to give an error, thanks to rappdirs for fixing this
  expect_silent(
    check_pff_experiment(pirouette::create_test_experiment())
  )

  good_experiment <- create_test_pff_gen_experiment()
  expect_silent(check_pff_experiment(good_experiment))

  # experiment$beast2_options is checked by check_is_pff_beast2_options

  experiment <- good_experiment
  experiment$errors_filename <- "/tmp/puf.csv" # nolint do use absolute path in tests
  expect_error(
    check_pff_experiment(experiment),
    "Peregrine-unfriendly filename for '"
  )

})
