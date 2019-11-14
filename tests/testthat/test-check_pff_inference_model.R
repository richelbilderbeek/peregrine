test_that("use", {
  inference_model <- beautier::create_test_inference_model()
  expect_silent(check_pff_inference_model(inference_model))
})

test_that("tipdates_filename", {
  inference_model <- beautier::create_test_inference_model()
  inference_model$tipdates_filename <- "/peregrine_unfriendly"
  expect_error(check_pff_inference_model(inference_model))
})

test_that("mcmc tracelog", {
  inference_model <- beautier::create_test_inference_model()
  inference_model$mcmc$tracelog$filename <- "/peregrine_unfriendly"
  expect_error(check_pff_inference_model(inference_model))
})

test_that("mcmc screenlog", {
  inference_model <- beautier::create_test_inference_model()
  inference_model$mcmc$screenlog$filename <- "/peregrine_unfriendly"
  expect_error(check_pff_inference_model(inference_model))
})

test_that("mcmc treelog", {
  inference_model <- beautier::create_test_inference_model()
  inference_model$mcmc$treelog$filename <- "/peregrine_unfriendly"
  expect_error(check_pff_inference_model(inference_model))
})
