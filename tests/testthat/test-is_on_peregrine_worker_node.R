test_that("use", {
  # Cannot check if this is TRUE or FALSE: it depends
  # where the test if run
  expect_true(assertive::is_if_condition(is_on_peregrine_worker_node()))

  # Travis is not Peregrine
  if (beastier::is_on_travis()) {
    expect_false(is_on_peregrine_worker_node())
  }
  # AppVeyor is not Peregrine
  if (beastier::is_on_appveyor()) {
    expect_false(is_on_peregrine_worker_node())
  }
})
