test_that("use, no twinning", {

  pir_params <- pirouette::create_test_pir_params(
    experiments = list(pirouette::create_test_cand_experiment()),
    evidence_filename = "/unfriendly.csv"
  )
  expect_error(check_pff_pir_params(pir_params))
  expect_silent(check_pff_pir_params(to_pff_pir_params(pir_params)))
})

test_that("use", {

  pir_params <- pirouette::create_test_pir_params(
    experiments = list(pirouette::create_test_cand_experiment()),
    twinning_params = pirouette::create_twinning_params(
      twin_evidence_filename = "/puf_twin.csv"
    ),
    evidence_filename = "/puf.csv"
  )
  expect_error(check_pff_pir_params(pir_params))
  expect_silent(check_pff_pir_params(to_pff_pir_params(pir_params)))
})
