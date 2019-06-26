context("test-check_pff_pir_params")

test_that("use", {

  good_pir_params <- create_test_pff_pir_params()

  # Mostly done by check_pir_params

  # Check for Peregrine-unfriendly filenames (hence 'puf')
  pir_params <- good_pir_params
  pir_params$twinning_params$twin_tree_filename <- "/tmp/puf"
  expect_error(
    check_pff_pir_params(pir_params),
    "Peregrine-unfriendly filename for '"
  )

  pir_params <- good_pir_params
  pir_params$twinning_params$twin_alignment_filename <- "/tmp/puf"
  expect_error(
    check_pff_pir_params(pir_params),
    "Peregrine-unfriendly filename for '"
  )

  pir_params <- good_pir_params
  pir_params$twinning_params$twin_evidence_filename <- "/tmp/puf"
  expect_error(
    check_pff_pir_params(pir_params),
    "Peregrine-unfriendly filename for '"
  )

  pir_params <- good_pir_params
  pir_params$alignment_params$fasta_filename <- "/tmp/puf"
  expect_error(
    check_pff_pir_params(pir_params),
    "Peregrine-unfriendly filename for '"
  )

  pir_params <- good_pir_params
  pir_params$evidence_filename <- "/tmp/puf.csv"
  expect_error(
    check_pff_pir_params(pir_params),
    "Peregrine-unfriendly filename for '"
  )

  for (i in seq_along(pir_params$experiments)) {
    pir_params <- good_pir_params
    pir_params$experiments[[i]]$beast2_options$input_filename <- "/tmp/puf"
    expect_error(
      check_pff_pir_params(pir_params),
      "Peregrine-unfriendly filename for '"
    )

    pir_params <- good_pir_params
    pir_params$experiments[[i]]$beast2_options$output_log_filename <- "/tmp/puf"
    expect_error(
      check_pff_pir_params(pir_params),
      "Peregrine-unfriendly filename for '"
    )

    pir_params <- good_pir_params
    pir_params$experiments[[i]]$beast2_options$output_trees_filenames <- "/tmp/puf"
    expect_error(
      check_pff_pir_params(pir_params),
      "Peregrine-unfriendly filename for '"
    )

    pir_params <- good_pir_params
    pir_params$experiments[[i]]$beast2_options$output_state_filename <- "/tmp/puf"
    expect_error(
      check_pff_pir_params(pir_params),
      "Peregrine-unfriendly filename for '"
    )

    pir_params <- good_pir_params
    pir_params$experiments[[i]]$beast2_options$beast2_working_dir <- "/tmp/puf"
    expect_error(
      check_pff_pir_params(pir_params),
      "Peregrine-unfriendly filename for '"
    )

    pir_params <- good_pir_params
    pir_params$experiments[[i]]$beast2_options$beast2_path <- "/tmp/puf"
    expect_error(
      check_pff_pir_params(pir_params),
      "Peregrine-unfriendly filename for '"
    )

    pir_params <- good_pir_params
    pir_params$experiments[[i]]$errors_filename <- "/tmp/puf.csv"
    expect_error(
      check_pff_pir_params(pir_params),
      "Peregrine-unfriendly filename for '"
    )
  }
})
