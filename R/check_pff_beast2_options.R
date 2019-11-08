#' Check if the BEAST2 options are PFF
#' @inheritParams default_params_doc
#' @export
check_pff_beast2_options <- function(beast2_options) {

  beastier::check_beast2_options(beast2_options)

  if (!peregrine::is_pff(beast2_options$input_filename)) {
    stop("Peregrine-unfriendly filename for 'beast2_options$input_filename'")
  }
  if (!peregrine::is_pff(beast2_options$output_log_filename)) {
    stop(
      "Peregrine-unfriendly filename for 'beast2_options$output_log_filename'"
    )
  }
  if (!peregrine::is_pff(beast2_options$output_trees_filenames)) {
    stop(
      "Peregrine-unfriendly filename for ",
      "'beast2_options$output_trees_filenames'"
    )
  }
  if (!peregrine::is_pff(beast2_options$output_state_filename)) {
    stop(
      "Peregrine-unfriendly filename for 'beast2_options$output_state_filename'"
    )
  }
  if (!peregrine::is_pff(beast2_options$beast2_working_dir)) {
    stop(
      "Peregrine-unfriendly filename for 'beast2_options$beast2_working_dir'"
    )
  }
  if (!peregrine::is_pff(beast2_options$beast2_path)) {
    stop("Peregrine-unfriendly filename for 'beast2_options$beast2_path'")
  }
}
