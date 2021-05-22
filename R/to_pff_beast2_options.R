#' Converts a BEAST2 options to have PFF.
#' If all filenames are Peregrine-friendly,
#' this function does not alter the input
#' @inheritParams default_params_doc
#' @export
to_pff_beast2_options <- function(beast2_options) {

  beastier::check_beast2_options(beast2_options)

  if (!peregrine::is_pff(beast2_options$input_filename)) {
    beast2_options$input_filename <-
      peregrine::to_pff(beast2_options$input_filename)
  }
  if (!peregrine::is_pff(beast2_options$output_state_filename)) {
    beast2_options$output_state_filename <-
      peregrine::to_pff(beast2_options$output_state_filename)
  }
  if (!peregrine::is_pff(beast2_options$beast2_path)) {
    stop(
      "Cannot convert Peregrine-unfriendly filename ",
      "for 'beast2_options$beast2_path' \n",
      "Please install BEAST2 in a Peregrine-friendly location. \n",
      "Tip: 'use beastierinstall::install_beast2()'. \n"
    )
  }

  peregrine::check_pff_beast2_options(beast2_options)
  beast2_options
}
