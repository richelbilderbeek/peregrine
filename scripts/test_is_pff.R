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
#   Rscript test_is_pff.R
#
if (!peregrine::is_on_peregrine()) {
  stop("It has no use this run this script in a non-Peregrine environment")
}
if (peregrine::is_on_peregrine_login_node()) {
  print("Run on login node")
}
if (peregrine::is_on_peregrine_worker_node()) {
  print("Run on worker node using sbatch")
}


can_create_file <- function(filename) {
  file.create(filename, showWarnings = FALSE)
  file.exists(filename)
}

cat("Can create file?")
cat(" ")
cat("filename | can_create_file")
cat("---|---")
filenames <- c(
  "/local/tmp.txt",
  "/local/tmp/tmp.txt",
  "/tmp.txt",
  "/tmp/tmp.txt",
  "/data/tmp.txt",
  "/data/p230198/tmp.txt",
  "/home/p230198/tmp.txt",
  "/home/tmp.txt"
)
for (filename in filenames) {
  cat(paste0(filename, " | ", can_create_file(filename)))
}

non_pff_prefixes <- NULL
if (peregrine::is_on_peregrine_worker_node()) {
  non_pff_prefixes <- c(
    # "/tmp/"
    "/",
    "/data/",
    "/data/p230198"
  )
}
if (peregrine::is_on_peregrine_login_node()) {
  non_pff_prefixes <- c(
    "/tmp/",
    "/",
    "/data/",
    "/data/p230198"
  )
}

# Can create file there?
for (non_pff_prefix in non_pff_prefixes) {
  print(paste0("Testing prefix '", non_pff_prefix, "'"))
  filename <- file.path(non_pff_prefix, "tmp.txt")
  file.create(filename, showWarnings = FALSE)
  print(paste0("File '", filename, "' exists: ", file.exists(filename)))
  # testthat::expect_false(file.exists(filename))
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
