test_that("use", {
  # Cannot check if this is TRUE or FALSE: it depends
  # where the test if run
  expect_true(beautier::is_one_bool(is_on_peregrine()))

  # Travis is not Peregrine
  if (beautier::is_on_travis()) {
    expect_false(is_on_peregrine())
  }
  # AppVeyor is not Peregrine
  if (beautier::is_on_appveyor()) {
    expect_false(is_on_peregrine())
  }
})
