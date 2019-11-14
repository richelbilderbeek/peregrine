test_that("minimal use", {
  mcmc <- beautier::create_test_mcmc()
  expect_silent(check_pff_mcmc(mcmc))
})

test_that("mcmc tracelog", {
  mcmc <- beautier::create_test_mcmc()
  mcmc$tracelog$filename <- "/peregrine_unfriendly"
  expect_error(check_pff_mcmc(mcmc))
})

test_that("mcmc screenlog", {
  mcmc <- beautier::create_test_mcmc()
  mcmc$screenlog$filename <- "/peregrine_unfriendly"
  expect_error(check_pff_mcmc(mcmc))
})

test_that("mcmc treelog", {
  mcmc <- beautier::create_test_mcmc()
  mcmc$treelog$filename <- "/peregrine_unfriendly"
  expect_error(check_pff_mcmc(mcmc))
})
