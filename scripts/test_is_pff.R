# Test if certain filenames are Peregrine-unfriendy,
# by using these on Peregrine. Each of these test should fail.
# Running them on a non-Peregrine computer has no use and
# the tests probably pass
#
# Works with:
#
#   sbatch run_r_script test_is_pff.R
#

non_pff_prefixes <- c(
  "/local/tmp/",
  "/tmp/",
  "/",
  "/data/",
  "/data/p230198"
)
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

