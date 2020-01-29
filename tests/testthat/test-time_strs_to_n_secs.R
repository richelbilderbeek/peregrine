test_that("use", {
  expect_silent(time_strs_to_n_secs(c("00:00:01", "01:02:03", "1-02:03:04")))
})
