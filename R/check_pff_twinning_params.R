#' Check if the twinning parameters have PFF
#' @inheritParams default_params_doc
#' @export
check_pff_twinning_params <- function(twinning_params) {
  if (!peregrine::is_pff(twinning_params$twin_tree_filename)) {
    stop("Peregrine-unfriendly filename for 'twinning_params$twin_tree_filename'")
  }
  if (!peregrine::is_pff(twinning_params$twin_alignment_filename)) {
    stop("Peregrine-unfriendly filename for 'twinning_params$twin_alignment_filename'")
  }
  if (!peregrine::is_pff(twinning_params$twin_evidence_filename)) {
    stop("Peregrine-unfriendly filename for 'twinning_params$twin_evidence_filename'")
  }
}
