#' Converts a BEAST2 options to have PFF.
#' If all filenames are Peregrine-friendly,
#' this function does not alter the input
#' @export
to_pff_beast2_options <- function(beast2_options) {

  beastier::check_beast2_options(beast2_options)

  if (!is_pff(beast2_options$input_filename)) {
    beast2_options$input_filename <- get_pff_tempfile()
  }
  if (!is_pff(beast2_options$output_log_filename)) {
    beast2_options$output_log_filename <- get_pff_tempfile()
  }
  if (!is_pff(beast2_options$output_trees_filenames)) {
    beast2_options$output_trees_filenames <- get_pff_tempfile()
  }
  if (!is_pff(beast2_options$output_state_filename)) {
    beast2_options$output_state_filename <- get_pff_tempfile()
  }
  if (!is_pff(beast2_options$beast2_working_dir)) {
    beast2_options$beast2_working_dir <- get_pff_tempdir()
  }
  if (!is_pff(beast2_options$beast2_path)) {
    stop(
      "Cannot convert Peregrine-unfriendly filename ",
      "for 'beast2_options$beast2_path' \n",
      "Please install BEAST2 in a Peregrine-friendly location. \n",
      "Tip: 'use beastier::install_beast2()'. \n"
    )
  }

  check_pff_beast2_options(beast2_options) # nolint peregrine functione
  beast2_options
}
