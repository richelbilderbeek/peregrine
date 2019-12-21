#' Create BEAST2 options that has Peregrine friendly filenames
#' @inheritParams default_params_doc
#' @author Richel J.C. Bilderbeek
#' @export
create_pff_beast2_options <- function(
  input_filename = peregrine::get_pff_tempfile(),
  output_state_filename = peregrine::get_pff_tempfile()
) {
  beast2_options <- beastier::create_beast2_options(
    input_filename = input_filename,
    output_state_filename = output_state_filename
  )
  testit::assert(peregrine::is_pff(beast2_options$input_filename))
  testit::assert(peregrine::is_pff(beast2_options$output_state_filename))
  beast2_options
}
