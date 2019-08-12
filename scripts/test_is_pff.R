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

library(peregrine)
library(testthat)


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

print("Can create file?")
print(" ")
print("filename | can_create_file")
print("---|---")
for (filename in filenames) {
  print(paste0(filename, " | ", can_create_file(filename)))
}

# Hardcoded results
if (is_on_peregrine_login_node()) {
  expect_false(can_create_file("/local/tmp.txt"))
  expect_true(can_create_file("/local/tmp/tmp.txt"))
  expect_false(can_create_file("/tmp.txt"))
  expect_true(can_create_file("/tmp/tmp.txt"))
  expect_false(can_create_file("/data/tmp.txt"))
  expect_true(can_create_file("/data/p230198/tmp.txt"))
  expect_true(can_create_file("/home/p230198/tmp.txt"))
  expect_false(can_create_file("/home/tmp.txt"))
}

if (is_on_peregrine_worker_node()) {
  expect_true(can_create_file("/local/tmp.txt"))
  expect_true(can_create_file("/local/tmp/tmp.txt"))
  expect_false(can_create_file("/tmp.txt"))
  expect_true(can_create_file("/tmp/tmp.txt"))
  expect_false(can_create_file("/data/tmp.txt"))
  expect_true(can_create_file("/data/p230198/tmp.txt"))
  expect_true(can_create_file("/home/p230198/tmp.txt"))
  expect_false(can_create_file("/home/tmp.txt"))
}

can_run_beast <- function(prefix) {
  input_filename <- beastier::get_beastier_paths("2_4.xml")
  output_log_filename <- file.path(prefix, "out.log")
  output_trees_filenames <- file.path(prefix, "out.trees")
  output_state_filename <- file.path(prefix, "out.xml.state")
  beast2_options <- beastier::create_beast2_options(
    input_filename = input_filename,
    output_log_filename = output_log_filename,
    output_trees_filenames = output_trees_filenames,
    output_state_filename = output_state_filename
  )
  suppressMessages(
    beastier::run_beast2_from_options(beast2_options)
  )
  all(
    file.exists(
      c(
        input_filename,
        output_log_filename,
        output_trees_filenames,
        output_state_filename
      )
    )
  )
}

prefixes <- c(
  "/local",
  "/local/tmp",
  "/tmp",
  "/",
  "/data",
  "/data/p230198",
  "/home",
  "/home/p230198"
)

print("Can create BEAST2?")
print(" ")
print("prefix | can_run_beast")
print("---|---")
for (prefix in prefixes) {
  print(paste0(filename, " | ", can_run_beast(filename)))
}
