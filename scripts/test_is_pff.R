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
if (peregrine::is_on_peregrine_login_node()) {
  testthat::expect_false(can_create_file("/local/tmp.txt"))
  testthat::expect_true(can_create_file("/local/tmp/tmp.txt"))
  testthat::expect_false(can_create_file("/tmp.txt"))
  testthat::expect_true(can_create_file("/tmp/tmp.txt"))
  testthat::expect_false(can_create_file("/data/tmp.txt"))
  testthat::expect_true(can_create_file("/data/p230198/tmp.txt"))
  testthat::expect_true(can_create_file("/home/p230198/tmp.txt"))
  testthat::expect_false(can_create_file("/home/tmp.txt"))
}

if (is_on_peregrine_worker_node()) {
  testthat::expect_true(can_create_file("/local/tmp.txt"))
  testthat::expect_true(can_create_file("/local/tmp/tmp.txt"))
  testthat::expect_false(can_create_file("/tmp.txt"))
  testthat::expect_true(can_create_file("/tmp/tmp.txt"))
  testthat::expect_false(can_create_file("/data/tmp.txt"))
  testthat::expect_true(can_create_file("/data/p230198/tmp.txt"))
  testthat::expect_true(can_create_file("/home/p230198/tmp.txt"))
  testthat::expect_false(can_create_file("/home/tmp.txt"))
}

can_run_beast <- function(prefix) {
  input_filename <- beastier::get_beastier_paths("2_4.xml")
  output_state_filename <- file.path(prefix, "out.xml.state")
  beast2_options <- beastier::create_beast2_options(
    input_filename = input_filename,
    output_state_filename = output_state_filename
  )
  tryCatch({
    suppressMessages(
      beastier::run_beast2_from_options(beast2_options)
    )
  }, error = function(e) { # nolint do not use e
    return(FALSE)
  }
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

if (1 == 2) {
  print("Can create BEAST2?")
  print(" ")
  print("prefix | can_run_beast")
  print("---|---")
  for (prefix in prefixes) {
    print(paste0(prefix, " | ", can_run_beast(prefix)))
  }
}

can_start_beast <- function() {
  input_filename <- "my_file.xml"
  file.copy(from = beastier::get_beastier_paths("2_4.xml"),
    to = input_filename
  )
  output_log_filename <- "out.log"
  output_trees_filenames <- "out.trees"
  output_state_filename <- "out.xml.state"
  beast2_options <- beastier::create_beast2_options(
    input_filename = input_filename,
    output_log_filename = output_log_filename,
    output_trees_filenames = output_trees_filenames,
    output_state_filename = output_state_filename
  )
  tryCatch({
    suppressMessages(
      beastier::run_beast2_from_options(beast2_options)
    )
  }, error = function(e) { # nolint do not use e
    return(FALSE)
  }
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

print("Can start BEAST2?")
print(" ")
print("prefix | can_start_beast")
print("---|---")
for (prefix in prefixes) {
  setwd(prefix)
  print(paste0(prefix, " | ", can_start_beast()))
}



################################################################################
# Can a certain folder be used to store BEAST2 output files?
################################################################################
can_use_beast <- function(folder_name) {
  input_filename <- beastier::get_beastier_paths("2_4.xml")
  output_log_filename <- file.path(folder_name, "out.log")
  output_trees_filenames <- file.path(folder_name, "out.trees")
  output_state_filename <- file.path(folder_name, "out.xml.state")
  beast2_options <- beastier::create_beast2_options(
    input_filename = input_filename,
    output_state_filename = output_state_filename
  )
  tryCatch({
    suppressMessages(
      beastier::run_beast2_from_options(beast2_options)
    )
  }, error = function(e) { # nolint do not use e
    return(FALSE)
  }
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

folder_names <- c(
  "/tmp",
  "/local/tmp",
  "/data/p230198",
  "/home/p230198"
)

print("Can use BEAST2?")
print(paste("getwd():", getwd()))
print(" ")
print("folder_name | can_use_beast")
print("---|---")
for (folder_name in folder_names) {
  print(paste0(folder_name, " | ", can_use_beast(folder_name)))
}



################################################################################
# Can a certain folder be used as a BEAST2 working directory?
################################################################################
can_use_working_dir <- function(folder_name) {
  input_filename <- beastier::get_beastier_paths("2_4.xml")
  output_log_filename <-
    file.path(peregrine::get_pff_tempdir(), "out.log")
  output_tree_filename <-
    file.path(peregrine::get_pff_tempdir(), "out.trees")
  output_state_filename <-
    file.path(peregrine::get_pff_tempdir(), "out.xml.state")
  inference_model <- beautier::create_test_inference_model(
    mcmc = beautier::create_test_mcmc(
      tracelog = beautier::create_test_tracelog(
        output_log_filename
      ),
      treelog = beautier::create_test_treelog(
        output_tree_filename
      )
    )
  )
  beast2_options <- beastier::create_beast2_options(
    input_filename = input_filename,
    output_state_filename = output_state_filename
  )
  tryCatch({
    suppressMessages(
      babette::bbt_run_from_model(
        fasta_filename = beautier::get_fasta_filename(),
        inference_model = inference_model,
        beast2_options = beast2_options
      )
    )
  }, error = function(e) { # nolint do not use e
    return(FALSE)
  }
  )
  all(
    file.exists(
      c(
        input_filename,
        output_log_filename,
        output_tree_filename,
        output_state_filename
      )
    )
  )
}

folder_names <- c(
  "/tmp",
  "/local/tmp",
  "/data/p230198",
  "/home/p230198"
)

print("Can use working dir?")
print(paste("getwd():", getwd()))
print(" ")
print("folder_name | can_use_working_dir")
print("---|---")
for (folder_name in folder_names) {
  print(paste0(folder_name, " | ", can_use_working_dir(folder_name)))
}
