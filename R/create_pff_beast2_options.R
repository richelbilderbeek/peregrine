#' Create BEAST2 options that has Peregrine friendly filenames
#' @param input_filename BEAST2 input file name,
#' as used in \link[beastier]{create_beast2_options}
#' @param output_log_filename BEAST2 ouput \code{.log} file name,
#' as used in \link[beastier]{create_beast2_options}
#' @param output_trees_filenames BEAST2 ouput \code{.trees} file name,
#' as used in \link[beastier]{create_beast2_options}
#' @param output_state_filename BEAST2 ouput \code{.xml.state} file name,
#' as used in \link[beastier]{create_beast2_options}
#' @param beast2_working_dir BEAST2 temporary working directory,
#' as used in \link[beastier]{create_beast2_options}
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
  testit::assert(is_pff(beast2_options$input_filename))
  testit::assert(is_pff(beast2_options$output_log_filename))
  testit::assert(is_pff(beast2_options$output_trees_filenames))
  testit::assert(is_pff(beast2_options$output_state_filename))
  testit::assert(is_pff(beast2_options$beast2_working_dir))
  beast2_options
}
