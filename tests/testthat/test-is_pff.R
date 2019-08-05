test_that("use", {
  expect_true(is_pff(get_pff_tempdir()))
  expect_true(is_pff(get_pff_tempfile()))
  expect_false(is_pff("/peregrine_unfriendly"))
  expect_false(is_pff("/tmp/peregrine_unfriendly"))
  expect_false(is_pff("/data/peregrine_unfriendly"))
  expect_false(is_pff("/data/p230198/peregrine_unfriendly"))
})
