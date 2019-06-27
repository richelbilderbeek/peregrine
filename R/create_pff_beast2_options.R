#' Create BEAST2 options that has Peregrine friendly filenames
#' @inheritParams default_params_doc
#' @author Richel J.C. Bilderbeek
#' @export
create_pff_beast2_options <- function(
  input_filename = get_pff_tempfile(),
  output_log_filename = get_pff_tempfile(),
  output_trees_filenames = get_pff_tempfile(),
  output_state_filename = get_pff_tempfile(),
  beast2_working_dir = get_pff_tempdir()
) {
  beast2_options <- beastier::create_beast2_options(
    input_filename = input_filename,
    output_log_filename = output_log_filename,
    output_trees_filenames = output_trees_filenames,
    output_state_filename = output_state_filename,
    beast2_working_dir = beast2_working_dir
  )
  testit::assert(is_pff(beast2_options$input_filename)) # nolint peregrine function
  testit::assert(is_pff(beast2_options$output_log_filename)) # nolint peregrine function
  testit::assert(is_pff(beast2_options$output_trees_filenames)) # nolint peregrine function
  testit::assert(is_pff(beast2_options$output_state_filename)) # nolint peregrine function
  testit::assert(is_pff(beast2_options$beast2_working_dir)) # nolint peregrine function
  beast2_options
}
