context("test-check_pff_pir_params")

test_that("use", {

  good_pir_params <- pirouette::create_test_pir_params(
    twinning_params = create_pff_twinning_params()
  )

  # Mostly done by check_pir_params

  # Check for Peregrine-unfriendly filenames (hence 'puf')
  pir_params <- good_pir_params
  pir_params$twinning_params$twin_tree_filename <- "/tmp/puf" # nolint do use absolute path in tests
  expect_error(
    check_pff_pir_params(pir_params),
    "Peregrine-unfriendly filename for '"
  )

  pir_params <- good_pir_params
  pir_params$twinning_params$twin_alignment_filename <- "/tmp/puf" # nolint do use absolute path in tests
  expect_error(
    check_pff_pir_params(pir_params),
    "Peregrine-unfriendly filename for '"
  )

  pir_params <- good_pir_params
  pir_params$twinning_params$twin_evidence_filename <- "/tmp/puf" # nolint do use absolute path in tests
  expect_error(
    check_pff_pir_params(pir_params),
    "Peregrine-unfriendly filename for '"
  )

  pir_params <- good_pir_params
  pir_params$alignment_params$fasta_filename <- "/tmp/puf" # nolint do use absolute path in tests
  expect_error(
    check_pff_pir_params(pir_params),
    "Peregrine-unfriendly filename for '"
  )

  pir_params <- good_pir_params
  pir_params$evidence_filename <- "/tmp/puf.csv" # nolint do use absolute path in tests
  expect_error(
    check_pff_pir_params(pir_params),
    "Peregrine-unfriendly filename for '"
  )

  check_pff_experiments(pir_params$experiments)

  for (i in seq_along(pir_params$experiments)) {
    pir_params <- good_pir_params
    pir_params$experiments[[i]]$errors_filename <- "/tmp/puf.csv" # nolint do use absolute path in tests
    expect_error(
      check_pff_pir_params(pir_params),
      "Peregrine-unfriendly filename for '"
    )
  }
})
