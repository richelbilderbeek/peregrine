test_that("use", {
  expect_equal(time_str_to_n_sec("00:00:11"), 11)
  expect_equal(time_str_to_n_sec("00:33:22"), (33 * 60) + 22)
  expect_equal(time_str_to_n_sec("12:55:44"), (12 * 60 * 60) + (55 * 60) + 44)
  expect_equal(
    time_str_to_n_sec(str = "4-33:22:11"),
    (4 * 24 * 60 * 60) + (33 * 60 * 60) + (22 * 60) + 11
  )
})
