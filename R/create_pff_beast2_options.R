#' Create BEAST2 options that has Peregrine friendly filenames
#' @inheritParams default_params_doc
#' @author Richel J.C. Bilderbeek
#' @export
create_pff_beast2_options <- function(
  input_filename = peregrine::get_pff_tempfile(), # nolint peregrine function
  output_log_filename = peregrine::get_pff_tempfile(), # nolint peregrine function
  output_trees_filenames = peregrine::get_pff_tempfile(), # nolint peregrine function
  output_state_filename = peregrine::get_pff_tempfile(), # nolint peregrine function
  beast2_working_dir = peregrine::get_pff_tempdir() # nolint peregrine function
) {
  beast2_options <- beastier::create_beast2_options(
    input_filename = input_filename,
    output_log_filename = output_log_filename,
    output_trees_filenames = output_trees_filenames,
    output_state_filename = output_state_filename,
    beast2_working_dir = beast2_working_dir
  )
  testit::assert(peregrine::is_pff(beast2_options$input_filename)) # nolint peregrine function
  testit::assert(peregrine::is_pff(beast2_options$output_log_filename)) # nolint peregrine function
  testit::assert(peregrine::is_pff(beast2_options$output_trees_filenames)) # nolint peregrine function
  testit::assert(peregrine::is_pff(beast2_options$output_state_filename)) # nolint peregrine function
  testit::assert(peregrine::is_pff(beast2_options$beast2_working_dir)) # nolint peregrine function
  beast2_options
}
