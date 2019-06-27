#' Check if the \code{pir_params} are valid and Peregrine-friendly.
#'
#' Will \link{stop} if the \code{pir_params} are invalid
#' or Peregrine-unfriendly, else will do nothing
#' @param pir_params \code{pirouette} parameters,
#'   as created by \link[pirouette]{create_pir_params}
#' @author Richel J.C. Bilderbeek
#' @export
check_pff_pir_params <- function(
  pir_params
) {
  pirouette::check_pir_params(pir_params)

  if (!peregrine::is_pff(pir_params$evidence_filename)) {
    stop("Peregrine-unfriendly filename for 'pir_params$evidence_filename'")
  }
  if (!peregrine::is_pff(pir_params$twinning_params$twin_tree_filename)) {
    stop("Peregrine-unfriendly filename for 'pir_params$twinning_params$twin_tree_filename'")
  }
  if (!peregrine::is_pff(pir_params$twinning_params$twin_alignment_filename)) {
    stop("Peregrine-unfriendly filename for 'pir_params$twinning_params$twin_alignment_filename'")
  }
  if (!peregrine::is_pff(pir_params$twinning_params$twin_evidence_filename)) {
    stop("Peregrine-unfriendly filename for 'pir_params$twinning_params$twin_evidence_filename'")
  }
  if (!peregrine::is_pff(pir_params$alignment_params$fasta_filename)) {
    stop("Peregrine-unfriendly filename for 'pir_params$alignment_params$fasta_filename'")
  }
  check_pff_experiments(pir_params$experiments)
}
