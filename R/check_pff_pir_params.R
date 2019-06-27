#' Check if the \code{pir_params} are valid and Peregrine-friendly.
#'
#' Will \link{stop} if the \code{pir_params} are invalid
#' or Peregrine-unfriendly, else will do nothing
#' @inheritParams default_params_doc
#' @author Richel J.C. Bilderbeek
#' @export
check_pff_pir_params <- function(
  pir_params
) {
  pirouette::check_pir_params(pir_params)

  if (!peregrine::is_pff(pir_params$evidence_filename)) {
    stop("Peregrine-unfriendly filename for 'pir_params$evidence_filename'")
  }
  check_pff_twinning_params(pir_params$twinning_params)
  check_pff_alignment_params(pir_params$alignment_params)
  check_pff_experiments(pir_params$experiments)
}
