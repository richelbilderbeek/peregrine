test_that("use", {
  expect_false(is_pff_beast2_options(beastier::create_beast2_options()))
  expect_true(is_pff_beast2_options(peregrine::create_pff_beast2_options()))
})
