test_that("use", {
  expect_false(
    is_pff_beast2_options(
      beastier::create_beast2_options(
        input_filename = "/pff_unfriendly"
      )
    )
  )
  expect_false(
    is_pff_beast2_options(
      beastier::create_beast2_options(
        output_state_filename = "/pff_unfriendly"
      )
    )
  )
  expect_true(
    is_pff_beast2_options(create_pff_beast2_options())
  )
})
