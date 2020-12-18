test_that("use", {
  mcmc <- beautier::create_mcmc()
  mcmc$treelog$filename <- "/unfriendly.txt"
  mcmc$tracelog$filename <- "/unfriendly.txt"
  mcmc$treelog$filename <- "/unfriendly.txt"
  expect_false(is_pff(mcmc$treelog$filename))
  mcmc <- to_pff_mcmc(mcmc)
  expect_true(is_pff(mcmc$treelog$filename))
})
