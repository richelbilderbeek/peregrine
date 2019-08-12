# Test if certain filenames are Peregrine-unfriendy or Peregrine-friendy,
# by using these on Peregrine.
#
# For the Peregrine-unfriendy filename, each of these test should fail
# by a BEAST2 error.
# For the Peregrine-friendy filenames, each of these test should pass.
#
# Running them on a non-Peregrine computer has no use: the tests
# for Peregrine-unfriendly paths will probably pass, the tests for Peregrine
# friendly files will probably fail.
#
# Works with:
#
#   sbatch run_r_script test_is_pff.R
#
non_pff_prefixes <- c(
  "/tmp/",
  "/",
  "/data/",
  "/data/p230198"
)

# Can create file there?
for (non_pff_prefix in non_pff_prefixes) {
  print(paste0("Testing prefix '", non_pff_prefix, "'"))
  filename <- file.path(non_pff_prefix, "tmp.txt")
  testthat::expect_error(file.create(filename))
}

for (non_pff_prefix in non_pff_prefixes) {
  # testit::assert(!peregrine::is_pff(non_pff_prefix))
  print(paste0("Testing prefix '", non_pff_prefix, "'"))
  testthat::expect_error(
    suppressMessages(
      beastier::run_beast2_from_options(
        beastier::create_beast2_options(
          input_filename = beastier::get_beastier_paths("2_4.xml"),
          output_log_filename = file.path(non_pff_prefix, "out.log"),
          output_trees_filenames = file.path(non_pff_prefix, "out.trees"),
          output_state_filename = file.path(non_pff_prefix, "out.xml.state")
        )
      )
    ),
    "File 'output_log_filename' not found"
  )
}

pff_prefixes <- c(
  "/home/p230198",
  "/local/tmp/"
)

for (pff_prefixes in pff_prefixes) {
  # testit::assert(peregrine::is_pff(pff_prefix))
  print(paste0("Testing prefix '", pff_prefix, "'"))
  testthat::expect_silent(
    beastier::run_beast2_from_options(
      beastier::create_beast2_options(
        input_filename = beastier::get_beastier_paths("2_4.xml"),
        output_log_filename = file.path(pff_prefix, "tmp_out.log"),
        output_trees_filenames = file.path(pff_prefix, "tmp_out.trees"),
        output_state_filename = file.path(pff_prefix, "tmp_out.xml.state")
      )
    )
  )
}
