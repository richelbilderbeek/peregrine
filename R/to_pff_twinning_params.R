#' Convert a \code{twinning_params} to one with
#' Peregrine-friendly filenames
#' @inheritParams default_params_doc
#' @export
to_pff_twinning_params <- function(twinning_params) {
  pirouette::check_twinning_params(twinning_params)

  twinning_params$twin_tree_filename <- peregrine::to_pff(
    twinning_params$twin_tree_filename
  )
  twinning_params$twin_alignment_filename <- peregrine::to_pff(
    twinning_params$twin_alignment_filename
  )
  twinning_params$twin_evidence_filename <- peregrine::to_pff(
    twinning_params$twin_evidence_filename
  )
  twinning_params
}
