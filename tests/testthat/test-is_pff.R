test_that("use", {
  expect_true(is_pff(get_pff_tempdir()))
  expect_true(is_pff(get_pff_tempfile()))
  expect_false(is_pff("/local/tmp/peregrine_unfriendly"))
  expect_false(is_pff("/tmp/peregrine_unfriendly"))
})
