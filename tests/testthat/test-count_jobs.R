test_that("use", {
  if (!is_on_peregrine()) return()
  expect_silent(count_jobs())
})
