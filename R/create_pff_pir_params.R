#' Create a \code{pir_params} with PFFs
#' @inheritParams default_params_doc
#' @usage
#' create_pff_pir_params(
#'   alignment_params = pirouette::create_alignment_params(
#'     fasta_filename = get_pff_tempfile()
#'   ),
#'   experiments = list(create_test_pff_gen_experiment())
#' )
#' @seealso Use \link{create_test_pff_pir_params} to create a testing
#'   PFF \code{pir_params}
#' @author Richel J.C. Bilderbeek
#' @export
create_pff_pir_params <- function(
  alignment_params,
  twinning_params = NA,
  experiments = list(pirouette::create_experiment()),
  error_measure_params = pirouette::create_error_measure_params(),
  evidence_filename = get_pff_tempfile(
    pattern = "evidence_",
    fileext = ".csv"
  ),
  verbose = FALSE
) {
  pirouette::check_alignment_params(alignment_params)
  if (!beautier::is_one_na(twinning_params)) {
    pirouette::check_twinning_params(twinning_params)
  }
  pirouette::check_experiments(experiments)
  pirouette::check_error_measure_params(error_measure_params)

  pff_pir_params <- pirouette::create_pir_params(
    alignment_params = to_pff_alignment_params(alignment_params),
    twinning_params = twinning_params,
    experiments = to_pff_experiments(experiments),
    error_measure_params = error_measure_params,
    evidence_filename = evidence_filename,
    verbose = verbose
  )
  check_pff_pir_params(pff_pir_params) # nolint peregrine function
  pff_pir_params
}
