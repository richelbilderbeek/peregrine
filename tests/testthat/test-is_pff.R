test_that("use", {
  expect_true(is_pff(get_pff_tempdir()))
  expect_true(is_pff(get_pff_tempfile()))
  expect_false(is_pff("/peregrine_unfriendly"))
  expect_false(is_pff("/tmp/peregrine_unfriendly"))
  expect_false(is_pff("/local/peregrine_unfriendly"))
  expect_false(is_pff("/data/peregrine_unfriendly"))
  expect_false(is_pff("/data/p230198/peregrine_unfriendly"))

  # Thanks Giappo for this test case
  expect_true(
    is_pff(
      filename = "C:\\Users\\P274829\\AppData\\Local\\Cache/filedebc2e217ad1"
    )
  )
})
