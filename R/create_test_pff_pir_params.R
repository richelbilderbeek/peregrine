#' Create a \code{pir_params} with PFFs
#'
#' Has become irrelevant.
#' @inheritParams default_params_doc
#' @seealso Use \link{create_pff_pir_params} to create a
#'   PFF \code{pir_params} without testing defaults
#' @author Richel J.C. Bilderbeek
#' @export
create_test_pff_pir_params <- function(
  alignment_params = pirouette::create_test_alignment_params(),
  twinning_params = NA,
  experiments = list(peregrine::create_test_pff_gen_experiment()),
  error_measure_params = pirouette::create_error_measure_params(),
  evidence_filename = pirouette::get_temp_evidence_filename(),
  verbose = FALSE
) {
  pir_params <- peregrine::create_pff_pir_params(
    alignment_params = alignment_params,
    twinning_params = twinning_params,
    experiments = experiments,
    error_measure_params = error_measure_params,
    evidence_filename = evidence_filename,
    verbose = verbose
  )
  pir_params
}
