test_that("use, filename", {

  filename <- "/local/tmp/peregrine_unfriendly.csv"
  expect_false(is_pff(filename))
  pff <- to_pff(filename)
  expect_true(is_pff(pff))
  expect_equal(basename(filename), basename(pff))

  filename <- "/tmp/peregrine_unfriendly.csv"
  expect_false(is_pff(filename))
  pff <- to_pff(filename)
  expect_true(is_pff(pff))
  expect_equal(basename(filename), basename(pff))
})

test_that("use, foldername", {
  foldername <- "/local/tmp/peregrine_unfriendly"
  expect_false(is_pff(foldername))
  pff <- to_pff(foldername)
  expect_true(is_pff(pff))
  expect_equal(basename(foldername), basename(pff))

  foldername <- "/tmp/peregrine_unfriendly"
  expect_false(is_pff(foldername))
  pff <- to_pff(foldername)
  expect_true(is_pff(pff))
  expect_equal(basename(foldername), basename(pff))
})
