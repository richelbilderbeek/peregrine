#' Create a \code{pir_params} with PFFs
#' @inheritParams default_params_doc
#' @usage
#' create_test_pff_pir_params(
#'   alignment_params = pirouette::create_alignment_params(
#'     fasta_filename = get_pff_tempfile()
#'   ),
#'   experiments = list(create_test_pff_gen_experiment())
#' )
#' @author Richel J.C. Bilderbeek
#' @export
create_test_pff_pir_params <- function(
  alignment_params = pirouette::create_alignment_params(
    fasta_filename = get_pff_tempfile()
  ),
  experiments = list(create_test_pff_gen_experiment())
) {
  pir_params <- pirouette::create_test_pir_params(
    alignment_params = alignment_params,
    experiments = experiments,
    twinning_params = pirouette::create_twinning_params(
      twin_tree_filename = get_pff_tempfile(),
      twin_alignment_filename = get_pff_tempfile(),
      twin_evidence_filename = get_pff_tempfile(
        pattern = "evidence_",
        fileext = ".csv"
      )
    ),
    evidence_filename = get_pff_tempfile(
      pattern = "evidence_",
      fileext = ".csv"
    )
  )
  pir_params
}
