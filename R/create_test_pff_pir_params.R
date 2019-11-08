#' Create a \code{pir_params} with PFFs
#' @inheritParams default_params_doc
#' @usage
#' create_test_pff_pir_params(
#'   alignment_params = pirouette::create_alignment_params(
#'     fasta_filename = get_pff_tempfile()
#'   ),
#'   twinning_params = NA,
#'   experiments = list(create_test_pff_gen_experiment()),
#'   error_measure_params = pirouette::create_error_measure_params(),
#'   evidence_filename = get_pff_tempfile(
#'     pattern = "evidence_",
#'     fileext = ".csv"
#'   ),
#'   verbose = FALSE
#' )
#' @seealso Use \link{create_pff_pir_params} to create a
#'   PFF \code{pir_params} without testing defaults
#' @author Richel J.C. Bilderbeek
#' @export
create_test_pff_pir_params <- function(
  alignment_params = pirouette::create_alignment_params(
    fasta_filename = peregrine::get_pff_tempfile()
  ),
  twinning_params = NA,
  experiments = list(peregrine::create_test_pff_gen_experiment()),
  error_measure_params = pirouette::create_error_measure_params(),
  evidence_filename = peregrine::get_pff_tempfile(
    pattern = "evidence_",
    fileext = ".csv"
  ),
  verbose = FALSE
) {
  pir_params <- peregrine::create_pff_pir_params( # nolint peregrine function
    alignment_params = alignment_params,
    twinning_params = twinning_params,
    experiments = experiments,
    error_measure_params = error_measure_params,
    evidence_filename = evidence_filename,
    verbose = verbose
  )
  pir_params
}
